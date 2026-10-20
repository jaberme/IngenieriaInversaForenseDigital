#!/usr/bin/env python3
"""Inspección estática acotada de PE32+ propios; no carga ni ejecuta el PE."""
import argparse
import hashlib
import json
from pathlib import Path
import struct


def inspect(path):
    data = Path(path).read_bytes()

    def unpack(fmt, off):
        if off < 0 or off + struct.calcsize(fmt) > len(data):
            raise ValueError('Campo fuera del fichero')
        return struct.unpack_from(fmt, data, off)

    if data[:2] != b'MZ':
        raise ValueError('Falta MZ')
    pe, = unpack('<I', 0x3c)
    if data[pe:pe+4] != b'PE\0\0':
        raise ValueError('Falta firma PE')
    machine, count, stamp, symptr, symbols, optsize, flags = unpack('<HHIIIHH', pe+4)
    opt = pe+24
    magic, = unpack('<H', opt)
    if magic != 0x20b or optsize < 240:
        raise ValueError('Este inspector requiere PE32+ con 16 directorios')
    entry, = unpack('<I', opt+16)
    base, = unpack('<Q', opt+24)
    salign, falign = unpack('<II', opt+32)
    size_image, size_headers = unpack('<II', opt+56)
    subsystem, dllflags = unpack('<HH', opt+68)
    ndirs, = unpack('<I', opt+108)
    if ndirs < 16:
        raise ValueError('Directorios incompletos')
    dirs = [unpack('<II', opt+112+8*i) for i in range(16)]
    sections = []
    for i in range(count):
        off = opt+optsize+40*i
        name, vs, va, rawsize, rawptr, _, _, _, _, chars = unpack('<8sIIIIIIHHI', off)
        name = name.rstrip(b'\0').decode('ascii')
        if rawsize and (rawptr < size_headers or rawptr+rawsize > len(data)):
            raise ValueError('Sección fuera del fichero')
        sections.append(dict(nombre=name, virtual_size=vs, rva=va,
                             raw_size=rawsize, raw_offset=rawptr, characteristics=chars))

    def offset(rva, size=1):
        if rva >= 0 and rva+size <= size_headers and rva+size <= len(data):
            return rva
        for s in sections:
            delta = rva-s['rva']
            if 0 <= delta and delta+size <= s['virtual_size']:
                if delta+size > s['raw_size']:
                    raise ValueError('RVA en región virtual sin bytes de fichero')
                return s['raw_offset']+delta
        raise ValueError('RVA sin correspondencia en esta imagen')

    def string(rva):
        chars = bytearray()
        for i in range(1024):
            byte = data[offset(rva+i)]
            if byte == 0:
                return chars.decode('ascii')
            chars.append(byte)
        raise ValueError('Cadena excesiva')

    imports = []
    irva, isize = dirs[1]
    terminated = False
    for i in range(isize//20):
        original, timestamp, chain, name, first = unpack('<IIIII', offset(irva+i*20, 20))
        if not any((original, timestamp, chain, name, first)):
            terminated = True
            break
        names = []
        for j in range(len(data)//8):
            thunk, = unpack('<Q', offset((original or first)+8*j, 8))
            if not thunk:
                break
            names.append({'ordinal': thunk & 0xffff} if thunk >> 63 else {'nombre': string(thunk+2)})
        else:
            raise ValueError('Tabla de imports sin terminador')
        imports.append({'dll': string(name), 'simbolos': names})
    if not terminated:
        raise ValueError('Descriptores de imports sin terminador')
    ep_off = offset(entry, 16)
    ep_sec = next(s for s in sections if s['rva'] <= entry < s['rva']+s['virtual_size'])
    virtual_only = []
    for s in sections:
        if s['virtual_size'] > s['raw_size']:
            rva = s['rva']+s['raw_size']
            try:
                offset(rva)
            except ValueError:
                virtual_only.append({'seccion': s['nombre'], 'rva': rva, 'va_preferida': base+rva})
            else:
                raise AssertionError('Conversión indebida de bytes virtuales')
    return dict(sha256=hashlib.sha256(data).hexdigest(), tamano=len(data), machine=machine,
        magic=magic, pe_offset=pe, timestamp=stamp, coff_symbol_pointer=symptr,
        coff_symbols=symbols, characteristics=flags, image_base=base, entry_rva=entry,
        subsystem=subsystem, dll_characteristics=dllflags, section_alignment=salign,
        file_alignment=falign, size_image=size_image, size_headers=size_headers,
        secciones=sections, imports=imports, directorios=dirs,
        entrada=dict(seccion=ep_sec['nombre'], rva=entry, va_preferida=base+entry,
                     offset=ep_off, bytes=data[ep_off:ep_off+16].hex(' ')),
        sin_bytes=virtual_only)


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('pe', type=Path)
    args = parser.parse_args()
    print(json.dumps(inspect(args.pe), indent=2, ensure_ascii=False))
