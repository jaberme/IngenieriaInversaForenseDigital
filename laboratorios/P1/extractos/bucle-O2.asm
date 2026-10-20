funcion_bucle:
  1270:  endbr64
  1274:  test   edi,edi
  1276:  jle    12a0 <funcion_bucle+0x30>
  1278:  xor    eax,eax
  127a:  xor    edx,edx
  127c:  test   dil,0x1
  1280:  je     1290 <funcion_bucle+0x20>
  1282:  mov    eax,0x1
  1287:  cmp    edi,0x1
  128a:  je     129b <funcion_bucle+0x2b>
  128c:  nop    DWORD PTR [rax+0x0]
  1290:  lea    edx,[rdx+rax*2+0x1]
  1294:  add    eax,0x2
  1297:  cmp    edi,eax
  1299:  jne    1290 <funcion_bucle+0x20>
  129b:  mov    eax,edx
  129d:  ret
  129e:  xchg   ax,ax
  12a0:  xor    edx,edx
  12a2:  mov    eax,edx
  12a4:  ret
