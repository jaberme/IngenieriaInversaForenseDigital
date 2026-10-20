funcion_bucle:
  11c2:  endbr64
  11c6:  push   rbp
  11c7:  mov    rbp,rsp
  11ca:  mov    DWORD PTR [rbp-0x14],edi
  11cd:  mov    DWORD PTR [rbp-0x8],0x0
  11d4:  mov    DWORD PTR [rbp-0x4],0x0
  11db:  jmp    11e7 <funcion_bucle+0x25>
  11dd:  mov    eax,DWORD PTR [rbp-0x4]
  11e0:  add    DWORD PTR [rbp-0x8],eax
  11e3:  add    DWORD PTR [rbp-0x4],0x1
  11e7:  mov    eax,DWORD PTR [rbp-0x4]
  11ea:  cmp    eax,DWORD PTR [rbp-0x14]
  11ed:  jl     11dd <funcion_bucle+0x1b>
  11ef:  mov    eax,DWORD PTR [rbp-0x8]
  11f2:  pop    rbp
  11f3:  ret
