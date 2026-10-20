
/home/hunter/projects/ingenieriaInversa/muestras/re01/paquete/docente/RE-01.simbolos:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64
    1004:	48 83 ec 08          	sub    rsp,0x8
    1008:	48 8b 05 d9 2f 00 00 	mov    rax,QWORD PTR [rip+0x2fd9]        # 3fe8 <__gmon_start__@Base>
    100f:	48 85 c0             	test   rax,rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   rax
    1016:	48 83 c4 08          	add    rsp,0x8
    101a:	c3                   	ret

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 2a 2f 00 00    	push   QWORD PTR [rip+0x2f2a]        # 3f50 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 2c 2f 00 00    	jmp    QWORD PTR [rip+0x2f2c]        # 3f58 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    1030:	f3 0f 1e fa          	endbr64
    1034:	68 00 00 00 00       	push   0x0
    1039:	e9 e2 ff ff ff       	jmp    1020 <_init+0x20>
    103e:	66 90                	xchg   ax,ax
    1040:	f3 0f 1e fa          	endbr64
    1044:	68 01 00 00 00       	push   0x1
    1049:	e9 d2 ff ff ff       	jmp    1020 <_init+0x20>
    104e:	66 90                	xchg   ax,ax
    1050:	f3 0f 1e fa          	endbr64
    1054:	68 02 00 00 00       	push   0x2
    1059:	e9 c2 ff ff ff       	jmp    1020 <_init+0x20>
    105e:	66 90                	xchg   ax,ax
    1060:	f3 0f 1e fa          	endbr64
    1064:	68 03 00 00 00       	push   0x3
    1069:	e9 b2 ff ff ff       	jmp    1020 <_init+0x20>
    106e:	66 90                	xchg   ax,ax
    1070:	f3 0f 1e fa          	endbr64
    1074:	68 04 00 00 00       	push   0x4
    1079:	e9 a2 ff ff ff       	jmp    1020 <_init+0x20>
    107e:	66 90                	xchg   ax,ax
    1080:	f3 0f 1e fa          	endbr64
    1084:	68 05 00 00 00       	push   0x5
    1089:	e9 92 ff ff ff       	jmp    1020 <_init+0x20>
    108e:	66 90                	xchg   ax,ax
    1090:	f3 0f 1e fa          	endbr64
    1094:	68 06 00 00 00       	push   0x6
    1099:	e9 82 ff ff ff       	jmp    1020 <_init+0x20>
    109e:	66 90                	xchg   ax,ax
    10a0:	f3 0f 1e fa          	endbr64
    10a4:	68 07 00 00 00       	push   0x7
    10a9:	e9 72 ff ff ff       	jmp    1020 <_init+0x20>
    10ae:	66 90                	xchg   ax,ax
    10b0:	f3 0f 1e fa          	endbr64
    10b4:	68 08 00 00 00       	push   0x8
    10b9:	e9 62 ff ff ff       	jmp    1020 <_init+0x20>
    10be:	66 90                	xchg   ax,ax
    10c0:	f3 0f 1e fa          	endbr64
    10c4:	68 09 00 00 00       	push   0x9
    10c9:	e9 52 ff ff ff       	jmp    1020 <_init+0x20>
    10ce:	66 90                	xchg   ax,ax
    10d0:	f3 0f 1e fa          	endbr64
    10d4:	68 0a 00 00 00       	push   0xa
    10d9:	e9 42 ff ff ff       	jmp    1020 <_init+0x20>
    10de:	66 90                	xchg   ax,ax
    10e0:	f3 0f 1e fa          	endbr64
    10e4:	68 0b 00 00 00       	push   0xb
    10e9:	e9 32 ff ff ff       	jmp    1020 <_init+0x20>
    10ee:	66 90                	xchg   ax,ax
    10f0:	f3 0f 1e fa          	endbr64
    10f4:	68 0c 00 00 00       	push   0xc
    10f9:	e9 22 ff ff ff       	jmp    1020 <_init+0x20>
    10fe:	66 90                	xchg   ax,ax
    1100:	f3 0f 1e fa          	endbr64
    1104:	68 0d 00 00 00       	push   0xd
    1109:	e9 12 ff ff ff       	jmp    1020 <_init+0x20>
    110e:	66 90                	xchg   ax,ax
    1110:	f3 0f 1e fa          	endbr64
    1114:	68 0e 00 00 00       	push   0xe
    1119:	e9 02 ff ff ff       	jmp    1020 <_init+0x20>
    111e:	66 90                	xchg   ax,ax

Disassembly of section .plt.got:

0000000000001120 <__cxa_finalize@plt>:
    1120:	f3 0f 1e fa          	endbr64
    1124:	ff 25 ce 2e 00 00    	jmp    QWORD PTR [rip+0x2ece]        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    112a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

Disassembly of section .plt.sec:

0000000000001130 <__errno_location@plt>:
    1130:	f3 0f 1e fa          	endbr64
    1134:	ff 25 26 2e 00 00    	jmp    QWORD PTR [rip+0x2e26]        # 3f60 <__errno_location@GLIBC_2.2.5>
    113a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000001140 <ferror@plt>:
    1140:	f3 0f 1e fa          	endbr64
    1144:	ff 25 1e 2e 00 00    	jmp    QWORD PTR [rip+0x2e1e]        # 3f68 <ferror@GLIBC_2.2.5>
    114a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000001150 <fread@plt>:
    1150:	f3 0f 1e fa          	endbr64
    1154:	ff 25 16 2e 00 00    	jmp    QWORD PTR [rip+0x2e16]        # 3f70 <fread@GLIBC_2.2.5>
    115a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000001160 <fclose@plt>:
    1160:	f3 0f 1e fa          	endbr64
    1164:	ff 25 0e 2e 00 00    	jmp    QWORD PTR [rip+0x2e0e]        # 3f78 <fclose@GLIBC_2.2.5>
    116a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000001170 <strlen@plt>:
    1170:	f3 0f 1e fa          	endbr64
    1174:	ff 25 06 2e 00 00    	jmp    QWORD PTR [rip+0x2e06]        # 3f80 <strlen@GLIBC_2.2.5>
    117a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000001180 <__stack_chk_fail@plt>:
    1180:	f3 0f 1e fa          	endbr64
    1184:	ff 25 fe 2d 00 00    	jmp    QWORD PTR [rip+0x2dfe]        # 3f88 <__stack_chk_fail@GLIBC_2.4>
    118a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000001190 <memchr@plt>:
    1190:	f3 0f 1e fa          	endbr64
    1194:	ff 25 f6 2d 00 00    	jmp    QWORD PTR [rip+0x2df6]        # 3f90 <memchr@GLIBC_2.2.5>
    119a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

00000000000011a0 <strcmp@plt>:
    11a0:	f3 0f 1e fa          	endbr64
    11a4:	ff 25 ee 2d 00 00    	jmp    QWORD PTR [rip+0x2dee]        # 3f98 <strcmp@GLIBC_2.2.5>
    11aa:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

00000000000011b0 <fileno@plt>:
    11b0:	f3 0f 1e fa          	endbr64
    11b4:	ff 25 e6 2d 00 00    	jmp    QWORD PTR [rip+0x2de6]        # 3fa0 <fileno@GLIBC_2.2.5>
    11ba:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

00000000000011c0 <__isoc99_sscanf@plt>:
    11c0:	f3 0f 1e fa          	endbr64
    11c4:	ff 25 de 2d 00 00    	jmp    QWORD PTR [rip+0x2dde]        # 3fa8 <__isoc99_sscanf@GLIBC_2.7>
    11ca:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

00000000000011d0 <__printf_chk@plt>:
    11d0:	f3 0f 1e fa          	endbr64
    11d4:	ff 25 d6 2d 00 00    	jmp    QWORD PTR [rip+0x2dd6]        # 3fb0 <__printf_chk@GLIBC_2.3.4>
    11da:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

00000000000011e0 <fopen@plt>:
    11e0:	f3 0f 1e fa          	endbr64
    11e4:	ff 25 ce 2d 00 00    	jmp    QWORD PTR [rip+0x2dce]        # 3fb8 <fopen@GLIBC_2.2.5>
    11ea:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

00000000000011f0 <strtoul@plt>:
    11f0:	f3 0f 1e fa          	endbr64
    11f4:	ff 25 c6 2d 00 00    	jmp    QWORD PTR [rip+0x2dc6]        # 3fc0 <strtoul@GLIBC_2.2.5>
    11fa:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000001200 <__fprintf_chk@plt>:
    1200:	f3 0f 1e fa          	endbr64
    1204:	ff 25 be 2d 00 00    	jmp    QWORD PTR [rip+0x2dbe]        # 3fc8 <__fprintf_chk@GLIBC_2.3.4>
    120a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000001210 <fstat@plt>:
    1210:	f3 0f 1e fa          	endbr64
    1214:	ff 25 b6 2d 00 00    	jmp    QWORD PTR [rip+0x2db6]        # 3fd0 <fstat@GLIBC_2.33>
    121a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

Disassembly of section .text:

0000000000001220 <_start>:
    1220:	f3 0f 1e fa          	endbr64
    1224:	31 ed                	xor    ebp,ebp
    1226:	49 89 d1             	mov    r9,rdx
    1229:	5e                   	pop    rsi
    122a:	48 89 e2             	mov    rdx,rsp
    122d:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
    1231:	50                   	push   rax
    1232:	54                   	push   rsp
    1233:	45 31 c0             	xor    r8d,r8d
    1236:	31 c9                	xor    ecx,ecx
    1238:	48 8d 3d 31 08 00 00 	lea    rdi,[rip+0x831]        # 1a70 <main>
    123f:	ff 15 93 2d 00 00    	call   QWORD PTR [rip+0x2d93]        # 3fd8 <__libc_start_main@GLIBC_2.34>
    1245:	f4                   	hlt
    1246:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    124d:	00 00 00 

0000000000001250 <deregister_tm_clones>:
    1250:	48 8d 3d b9 2d 00 00 	lea    rdi,[rip+0x2db9]        # 4010 <__TMC_END__>
    1257:	48 8d 05 b2 2d 00 00 	lea    rax,[rip+0x2db2]        # 4010 <__TMC_END__>
    125e:	48 39 f8             	cmp    rax,rdi
    1261:	74 15                	je     1278 <deregister_tm_clones+0x28>
    1263:	48 8b 05 76 2d 00 00 	mov    rax,QWORD PTR [rip+0x2d76]        # 3fe0 <_ITM_deregisterTMCloneTable@Base>
    126a:	48 85 c0             	test   rax,rax
    126d:	74 09                	je     1278 <deregister_tm_clones+0x28>
    126f:	ff e0                	jmp    rax
    1271:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    1278:	c3                   	ret
    1279:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001280 <register_tm_clones>:
    1280:	48 8d 3d 89 2d 00 00 	lea    rdi,[rip+0x2d89]        # 4010 <__TMC_END__>
    1287:	48 8d 35 82 2d 00 00 	lea    rsi,[rip+0x2d82]        # 4010 <__TMC_END__>
    128e:	48 29 fe             	sub    rsi,rdi
    1291:	48 89 f0             	mov    rax,rsi
    1294:	48 c1 ee 3f          	shr    rsi,0x3f
    1298:	48 c1 f8 03          	sar    rax,0x3
    129c:	48 01 c6             	add    rsi,rax
    129f:	48 d1 fe             	sar    rsi,1
    12a2:	74 14                	je     12b8 <register_tm_clones+0x38>
    12a4:	48 8b 05 45 2d 00 00 	mov    rax,QWORD PTR [rip+0x2d45]        # 3ff0 <_ITM_registerTMCloneTable@Base>
    12ab:	48 85 c0             	test   rax,rax
    12ae:	74 08                	je     12b8 <register_tm_clones+0x38>
    12b0:	ff e0                	jmp    rax
    12b2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    12b8:	c3                   	ret
    12b9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000000000012c0 <__do_global_dtors_aux>:
    12c0:	f3 0f 1e fa          	endbr64
    12c4:	80 3d 5d 2d 00 00 00 	cmp    BYTE PTR [rip+0x2d5d],0x0        # 4028 <completed.0>
    12cb:	75 2b                	jne    12f8 <__do_global_dtors_aux+0x38>
    12cd:	55                   	push   rbp
    12ce:	48 83 3d 22 2d 00 00 	cmp    QWORD PTR [rip+0x2d22],0x0        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    12d5:	00 
    12d6:	48 89 e5             	mov    rbp,rsp
    12d9:	74 0c                	je     12e7 <__do_global_dtors_aux+0x27>
    12db:	48 8b 3d 26 2d 00 00 	mov    rdi,QWORD PTR [rip+0x2d26]        # 4008 <__dso_handle>
    12e2:	e8 39 fe ff ff       	call   1120 <__cxa_finalize@plt>
    12e7:	e8 64 ff ff ff       	call   1250 <deregister_tm_clones>
    12ec:	c6 05 35 2d 00 00 01 	mov    BYTE PTR [rip+0x2d35],0x1        # 4028 <completed.0>
    12f3:	5d                   	pop    rbp
    12f4:	c3                   	ret
    12f5:	0f 1f 00             	nop    DWORD PTR [rax]
    12f8:	c3                   	ret
    12f9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001300 <frame_dummy>:
    1300:	f3 0f 1e fa          	endbr64
    1304:	e9 77 ff ff ff       	jmp    1280 <register_tm_clones>

0000000000001309 <load_config>:
    1309:	f3 0f 1e fa          	endbr64
    130d:	55                   	push   rbp
    130e:	48 89 e5             	mov    rbp,rsp
    1311:	41 56                	push   r14
    1313:	41 55                	push   r13
    1315:	41 54                	push   r12
    1317:	53                   	push   rbx
    1318:	48 81 ec f0 01 00 00 	sub    rsp,0x1f0
    131f:	49 89 f4             	mov    r12,rsi
    1322:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    1329:	00 00 
    132b:	48 89 45 d8          	mov    QWORD PTR [rbp-0x28],rax
    132f:	31 c0                	xor    eax,eax
    1331:	c7 85 fc fd ff ff ff 	mov    DWORD PTR [rbp-0x204],0xffffffff
    1338:	ff ff ff 
    133b:	48 8d 35 c2 0c 00 00 	lea    rsi,[rip+0xcc2]        # 2004 <_IO_stdin_used+0x4>
    1342:	e8 99 fe ff ff       	call   11e0 <fopen@plt>
    1347:	48 85 c0             	test   rax,rax
    134a:	0f 84 8d 02 00 00    	je     15dd <load_config+0x2d4>
    1350:	48 89 c3             	mov    rbx,rax
    1353:	48 89 c7             	mov    rdi,rax
    1356:	e8 55 fe ff ff       	call   11b0 <fileno@plt>
    135b:	89 c7                	mov    edi,eax
    135d:	48 8d b5 00 fe ff ff 	lea    rsi,[rbp-0x200]
    1364:	e8 a7 fe ff ff       	call   1210 <fstat@plt>
    1369:	85 c0                	test   eax,eax
    136b:	0f 85 a4 02 00 00    	jne    1615 <load_config+0x30c>
    1371:	8b 85 18 fe ff ff    	mov    eax,DWORD PTR [rbp-0x1e8]
    1377:	25 00 f0 00 00       	and    eax,0xf000
    137c:	3d 00 80 00 00       	cmp    eax,0x8000
    1381:	74 23                	je     13a6 <load_config+0x9d>
    1383:	48 89 df             	mov    rdi,rbx
    1386:	e8 b5 fd ff ff       	call   1140 <ferror@plt>
    138b:	48 89 df             	mov    rdi,rbx
    138e:	e8 cd fd ff ff       	call   1160 <fclose@plt>
    1393:	85 c0                	test   eax,eax
    1395:	0f 85 8e 02 00 00    	jne    1629 <load_config+0x320>
    139b:	41 bd 03 00 00 00    	mov    r13d,0x3
    13a1:	e9 89 02 00 00       	jmp    162f <load_config+0x326>
    13a6:	48 8d bd d0 fe ff ff 	lea    rdi,[rbp-0x130]
    13ad:	48 89 d9             	mov    rcx,rbx
    13b0:	ba 00 01 00 00       	mov    edx,0x100
    13b5:	be 01 00 00 00       	mov    esi,0x1
    13ba:	e8 91 fd ff ff       	call   1150 <fread@plt>
    13bf:	49 89 c6             	mov    r14,rax
    13c2:	48 89 df             	mov    rdi,rbx
    13c5:	e8 76 fd ff ff       	call   1140 <ferror@plt>
    13ca:	41 89 c5             	mov    r13d,eax
    13cd:	48 89 df             	mov    rdi,rbx
    13d0:	e8 8b fd ff ff       	call   1160 <fclose@plt>
    13d5:	85 c0                	test   eax,eax
    13d7:	0f 85 4c 02 00 00    	jne    1629 <load_config+0x320>
    13dd:	45 85 ed             	test   r13d,r13d
    13e0:	0f 85 ff 01 00 00    	jne    15e5 <load_config+0x2dc>
    13e6:	49 f7 c6 ff fe ff ff 	test   r14,0xfffffffffffffeff
    13ed:	0f 84 fa 01 00 00    	je     15ed <load_config+0x2e4>
    13f3:	48 8d bd d0 fe ff ff 	lea    rdi,[rbp-0x130]
    13fa:	4c 89 f2             	mov    rdx,r14
    13fd:	be 00 00 00 00       	mov    esi,0x0
    1402:	e8 89 fd ff ff       	call   1190 <memchr@plt>
    1407:	48 85 c0             	test   rax,rax
    140a:	74 0b                	je     1417 <load_config+0x10e>
    140c:	41 bd 04 00 00 00    	mov    r13d,0x4
    1412:	e9 18 02 00 00       	jmp    162f <load_config+0x326>
    1417:	42 c6 84 35 d0 fe ff 	mov    BYTE PTR [rbp+r14*1-0x130],0x0
    141e:	ff 00 
    1420:	48 8d 8d 9b fe ff ff 	lea    rcx,[rbp-0x165]
    1427:	48 8d 95 aa fe ff ff 	lea    rdx,[rbp-0x156]
    142e:	48 8d bd d0 fe ff ff 	lea    rdi,[rbp-0x130]
    1435:	48 83 ec 08          	sub    rsp,0x8
    1439:	48 8d 85 fc fd ff ff 	lea    rax,[rbp-0x204]
    1440:	50                   	push   rax
    1441:	48 8d 85 a1 fe ff ff 	lea    rax,[rbp-0x15f]
    1448:	50                   	push   rax
    1449:	48 8d 85 b0 fe ff ff 	lea    rax,[rbp-0x150]
    1450:	50                   	push   rax
    1451:	48 8d 85 9f fe ff ff 	lea    rax,[rbp-0x161]
    1458:	50                   	push   rax
    1459:	48 8d 85 a6 fe ff ff 	lea    rax,[rbp-0x15a]
    1460:	50                   	push   rax
    1461:	4c 8d 8d 9d fe ff ff 	lea    r9,[rbp-0x163]
    1468:	4c 8d 85 a3 fe ff ff 	lea    r8,[rbp-0x15d]
    146f:	48 8d 35 e2 0b 00 00 	lea    rsi,[rip+0xbe2]        # 2058 <_IO_stdin_used+0x58>
    1476:	b8 00 00 00 00       	mov    eax,0x0
    147b:	e8 40 fd ff ff       	call   11c0 <__isoc99_sscanf@plt>
    1480:	48 83 c4 30          	add    rsp,0x30
    1484:	83 f8 08             	cmp    eax,0x8
    1487:	0f 85 68 01 00 00    	jne    15f5 <load_config+0x2ec>
    148d:	44 39 b5 fc fd ff ff 	cmp    DWORD PTR [rbp-0x204],r14d
    1494:	0f 85 63 01 00 00    	jne    15fd <load_config+0x2f4>
    149a:	48 8d bd aa fe ff ff 	lea    rdi,[rbp-0x156]
    14a1:	48 8d 35 5f 0b 00 00 	lea    rsi,[rip+0xb5f]        # 2007 <_IO_stdin_used+0x7>
    14a8:	e8 f3 fc ff ff       	call   11a0 <strcmp@plt>
    14ad:	85 c0                	test   eax,eax
    14af:	74 22                	je     14d3 <load_config+0x1ca>
    14b1:	48 8d bd aa fe ff ff 	lea    rdi,[rbp-0x156]
    14b8:	48 8d 35 4e 0b 00 00 	lea    rsi,[rip+0xb4e]        # 200d <_IO_stdin_used+0xd>
    14bf:	e8 dc fc ff ff       	call   11a0 <strcmp@plt>
    14c4:	85 c0                	test   eax,eax
    14c6:	0f 85 39 01 00 00    	jne    1605 <load_config+0x2fc>
    14cc:	b8 01 00 00 00       	mov    eax,0x1
    14d1:	eb 05                	jmp    14d8 <load_config+0x1cf>
    14d3:	b8 00 00 00 00       	mov    eax,0x0
    14d8:	41 89 04 24          	mov    DWORD PTR [r12],eax
    14dc:	48 8d bd a3 fe ff ff 	lea    rdi,[rbp-0x15d]
    14e3:	ba 0a 00 00 00       	mov    edx,0xa
    14e8:	be 00 00 00 00       	mov    esi,0x0
    14ed:	e8 fe fc ff ff       	call   11f0 <strtoul@plt>
    14f2:	41 89 44 24 04       	mov    DWORD PTR [r12+0x4],eax
    14f7:	48 8d bd a6 fe ff ff 	lea    rdi,[rbp-0x15a]
    14fe:	ba 0a 00 00 00       	mov    edx,0xa
    1503:	be 00 00 00 00       	mov    esi,0x0
    1508:	e8 e3 fc ff ff       	call   11f0 <strtoul@plt>
    150d:	41 89 44 24 08       	mov    DWORD PTR [r12+0x8],eax
    1512:	41 83 7c 24 04 19    	cmp    DWORD PTR [r12+0x4],0x19
    1518:	0f 87 ef 00 00 00    	ja     160d <load_config+0x304>
    151e:	83 e8 01             	sub    eax,0x1
    1521:	83 f8 7f             	cmp    eax,0x7f
    1524:	0f 87 e3 00 00 00    	ja     160d <load_config+0x304>
    152a:	48 8d 9d b0 fe ff ff 	lea    rbx,[rbp-0x150]
    1531:	48 89 df             	mov    rdi,rbx
    1534:	e8 37 fc ff ff       	call   1170 <strlen@plt>
    1539:	49 8d 54 24 0c       	lea    rdx,[r12+0xc]
    153e:	48 83 c0 01          	add    rax,0x1
    1542:	83 f8 08             	cmp    eax,0x8
    1545:	73 4b                	jae    1592 <load_config+0x289>
    1547:	a8 04                	test   al,0x4
    1549:	75 2d                	jne    1578 <load_config+0x26f>
    154b:	85 c0                	test   eax,eax
    154d:	0f 84 dc 00 00 00    	je     162f <load_config+0x326>
    1553:	0f b6 8d b0 fe ff ff 	movzx  ecx,BYTE PTR [rbp-0x150]
    155a:	41 88 4c 24 0c       	mov    BYTE PTR [r12+0xc],cl
    155f:	a8 02                	test   al,0x2
    1561:	0f 84 c8 00 00 00    	je     162f <load_config+0x326>
    1567:	89 c0                	mov    eax,eax
    1569:	0f b7 4c 03 fe       	movzx  ecx,WORD PTR [rbx+rax*1-0x2]
    156e:	66 89 4c 02 fe       	mov    WORD PTR [rdx+rax*1-0x2],cx
    1573:	e9 b7 00 00 00       	jmp    162f <load_config+0x326>
    1578:	8b 8d b0 fe ff ff    	mov    ecx,DWORD PTR [rbp-0x150]
    157e:	41 89 4c 24 0c       	mov    DWORD PTR [r12+0xc],ecx
    1583:	89 c0                	mov    eax,eax
    1585:	8b 4c 03 fc          	mov    ecx,DWORD PTR [rbx+rax*1-0x4]
    1589:	89 4c 02 fc          	mov    DWORD PTR [rdx+rax*1-0x4],ecx
    158d:	e9 9d 00 00 00       	jmp    162f <load_config+0x326>
    1592:	48 8b 8d b0 fe ff ff 	mov    rcx,QWORD PTR [rbp-0x150]
    1599:	49 89 4c 24 0c       	mov    QWORD PTR [r12+0xc],rcx
    159e:	89 c1                	mov    ecx,eax
    15a0:	48 8b 74 0b f8       	mov    rsi,QWORD PTR [rbx+rcx*1-0x8]
    15a5:	48 89 74 0a f8       	mov    QWORD PTR [rdx+rcx*1-0x8],rsi
    15aa:	48 8d 72 08          	lea    rsi,[rdx+0x8]
    15ae:	48 83 e6 f8          	and    rsi,0xfffffffffffffff8
    15b2:	48 29 f2             	sub    rdx,rsi
    15b5:	48 29 d3             	sub    rbx,rdx
    15b8:	01 d0                	add    eax,edx
    15ba:	83 e0 f8             	and    eax,0xfffffff8
    15bd:	83 f8 08             	cmp    eax,0x8
    15c0:	72 6d                	jb     162f <load_config+0x326>
    15c2:	83 e0 f8             	and    eax,0xfffffff8
    15c5:	ba 00 00 00 00       	mov    edx,0x0
    15ca:	89 d1                	mov    ecx,edx
    15cc:	48 8b 3c 0b          	mov    rdi,QWORD PTR [rbx+rcx*1]
    15d0:	48 89 3c 0e          	mov    QWORD PTR [rsi+rcx*1],rdi
    15d4:	83 c2 08             	add    edx,0x8
    15d7:	39 c2                	cmp    edx,eax
    15d9:	72 ef                	jb     15ca <load_config+0x2c1>
    15db:	eb 52                	jmp    162f <load_config+0x326>
    15dd:	41 bd 03 00 00 00    	mov    r13d,0x3
    15e3:	eb 4a                	jmp    162f <load_config+0x326>
    15e5:	41 bd 03 00 00 00    	mov    r13d,0x3
    15eb:	eb 42                	jmp    162f <load_config+0x326>
    15ed:	41 bd 04 00 00 00    	mov    r13d,0x4
    15f3:	eb 3a                	jmp    162f <load_config+0x326>
    15f5:	41 bd 04 00 00 00    	mov    r13d,0x4
    15fb:	eb 32                	jmp    162f <load_config+0x326>
    15fd:	41 bd 04 00 00 00    	mov    r13d,0x4
    1603:	eb 2a                	jmp    162f <load_config+0x326>
    1605:	41 bd 04 00 00 00    	mov    r13d,0x4
    160b:	eb 22                	jmp    162f <load_config+0x326>
    160d:	41 bd 04 00 00 00    	mov    r13d,0x4
    1613:	eb 1a                	jmp    162f <load_config+0x326>
    1615:	48 89 df             	mov    rdi,rbx
    1618:	e8 23 fb ff ff       	call   1140 <ferror@plt>
    161d:	48 89 df             	mov    rdi,rbx
    1620:	e8 3b fb ff ff       	call   1160 <fclose@plt>
    1625:	85 c0                	test   eax,eax
    1627:	74 25                	je     164e <load_config+0x345>
    1629:	41 bd 03 00 00 00    	mov    r13d,0x3
    162f:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
    1633:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    163a:	00 00 
    163c:	75 18                	jne    1656 <load_config+0x34d>
    163e:	44 89 e8             	mov    eax,r13d
    1641:	48 8d 65 e0          	lea    rsp,[rbp-0x20]
    1645:	5b                   	pop    rbx
    1646:	41 5c                	pop    r12
    1648:	41 5d                	pop    r13
    164a:	41 5e                	pop    r14
    164c:	5d                   	pop    rbp
    164d:	c3                   	ret
    164e:	41 bd 03 00 00 00    	mov    r13d,0x3
    1654:	eb d9                	jmp    162f <load_config+0x326>
    1656:	e8 25 fb ff ff       	call   1180 <__stack_chk_fail@plt>

000000000000165b <load_record>:
    165b:	f3 0f 1e fa          	endbr64
    165f:	55                   	push   rbp
    1660:	48 89 e5             	mov    rbp,rsp
    1663:	41 56                	push   r14
    1665:	41 55                	push   r13
    1667:	41 54                	push   r12
    1669:	53                   	push   rbx
    166a:	48 81 ec 50 02 00 00 	sub    rsp,0x250
    1671:	49 89 f4             	mov    r12,rsi
    1674:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    167b:	00 00 
    167d:	48 89 45 d8          	mov    QWORD PTR [rbp-0x28],rax
    1681:	31 c0                	xor    eax,eax
    1683:	c7 85 9c fd ff ff ff 	mov    DWORD PTR [rbp-0x264],0xffffffff
    168a:	ff ff ff 
    168d:	48 8d 35 70 09 00 00 	lea    rsi,[rip+0x970]        # 2004 <_IO_stdin_used+0x4>
    1694:	e8 47 fb ff ff       	call   11e0 <fopen@plt>
    1699:	48 85 c0             	test   rax,rax
    169c:	0f 84 2a 02 00 00    	je     18cc <load_record+0x271>
    16a2:	48 89 c3             	mov    rbx,rax
    16a5:	48 89 c7             	mov    rdi,rax
    16a8:	e8 03 fb ff ff       	call   11b0 <fileno@plt>
    16ad:	89 c7                	mov    edi,eax
    16af:	48 8d b5 a0 fd ff ff 	lea    rsi,[rbp-0x260]
    16b6:	e8 55 fb ff ff       	call   1210 <fstat@plt>
    16bb:	85 c0                	test   eax,eax
    16bd:	0f 85 39 02 00 00    	jne    18fc <load_record+0x2a1>
    16c3:	8b 85 b8 fd ff ff    	mov    eax,DWORD PTR [rbp-0x248]
    16c9:	25 00 f0 00 00       	and    eax,0xf000
    16ce:	3d 00 80 00 00       	cmp    eax,0x8000
    16d3:	74 23                	je     16f8 <load_record+0x9d>
    16d5:	48 89 df             	mov    rdi,rbx
    16d8:	e8 63 fa ff ff       	call   1140 <ferror@plt>
    16dd:	48 89 df             	mov    rdi,rbx
    16e0:	e8 7b fa ff ff       	call   1160 <fclose@plt>
    16e5:	85 c0                	test   eax,eax
    16e7:	0f 85 23 02 00 00    	jne    1910 <load_record+0x2b5>
    16ed:	41 bd 03 00 00 00    	mov    r13d,0x3
    16f3:	e9 1e 02 00 00       	jmp    1916 <load_record+0x2bb>
    16f8:	48 8d bd d0 fe ff ff 	lea    rdi,[rbp-0x130]
    16ff:	48 89 d9             	mov    rcx,rbx
    1702:	ba 00 01 00 00       	mov    edx,0x100
    1707:	be 01 00 00 00       	mov    esi,0x1
    170c:	e8 3f fa ff ff       	call   1150 <fread@plt>
    1711:	49 89 c6             	mov    r14,rax
    1714:	48 89 df             	mov    rdi,rbx
    1717:	e8 24 fa ff ff       	call   1140 <ferror@plt>
    171c:	41 89 c5             	mov    r13d,eax
    171f:	48 89 df             	mov    rdi,rbx
    1722:	e8 39 fa ff ff       	call   1160 <fclose@plt>
    1727:	85 c0                	test   eax,eax
    1729:	0f 85 e1 01 00 00    	jne    1910 <load_record+0x2b5>
    172f:	45 85 ed             	test   r13d,r13d
    1732:	0f 85 9c 01 00 00    	jne    18d4 <load_record+0x279>
    1738:	49 f7 c6 ff fe ff ff 	test   r14,0xfffffffffffffeff
    173f:	0f 84 97 01 00 00    	je     18dc <load_record+0x281>
    1745:	48 8d bd d0 fe ff ff 	lea    rdi,[rbp-0x130]
    174c:	4c 89 f2             	mov    rdx,r14
    174f:	be 00 00 00 00       	mov    esi,0x0
    1754:	e8 37 fa ff ff       	call   1190 <memchr@plt>
    1759:	48 85 c0             	test   rax,rax
    175c:	74 0b                	je     1769 <load_record+0x10e>
    175e:	41 bd 05 00 00 00    	mov    r13d,0x5
    1764:	e9 ad 01 00 00       	jmp    1916 <load_record+0x2bb>
    1769:	42 c6 84 35 d0 fe ff 	mov    BYTE PTR [rbp+r14*1-0x130],0x0
    1770:	ff 00 
    1772:	48 8d 8d 35 fe ff ff 	lea    rcx,[rbp-0x1cb]
    1779:	48 8d 95 39 fe ff ff 	lea    rdx,[rbp-0x1c7]
    1780:	48 8d bd d0 fe ff ff 	lea    rdi,[rbp-0x130]
    1787:	48 83 ec 08          	sub    rsp,0x8
    178b:	48 8d 85 9c fd ff ff 	lea    rax,[rbp-0x264]
    1792:	50                   	push   rax
    1793:	4c 8d 8d 37 fe ff ff 	lea    r9,[rbp-0x1c9]
    179a:	4c 8d 85 40 fe ff ff 	lea    r8,[rbp-0x1c0]
    17a1:	48 8d 35 08 09 00 00 	lea    rsi,[rip+0x908]        # 20b0 <_IO_stdin_used+0xb0>
    17a8:	b8 00 00 00 00       	mov    eax,0x0
    17ad:	e8 0e fa ff ff       	call   11c0 <__isoc99_sscanf@plt>
    17b2:	48 83 c4 10          	add    rsp,0x10
    17b6:	83 f8 04             	cmp    eax,0x4
    17b9:	0f 85 25 01 00 00    	jne    18e4 <load_record+0x289>
    17bf:	44 39 b5 9c fd ff ff 	cmp    DWORD PTR [rbp-0x264],r14d
    17c6:	74 0b                	je     17d3 <load_record+0x178>
    17c8:	41 bd 05 00 00 00    	mov    r13d,0x5
    17ce:	e9 43 01 00 00       	jmp    1916 <load_record+0x2bb>
    17d3:	48 8d bd 39 fe ff ff 	lea    rdi,[rbp-0x1c7]
    17da:	ba 0a 00 00 00       	mov    edx,0xa
    17df:	be 00 00 00 00       	mov    esi,0x0
    17e4:	e8 07 fa ff ff       	call   11f0 <strtoul@plt>
    17e9:	48 89 c3             	mov    rbx,rax
    17ec:	41 89 04 24          	mov    DWORD PTR [r12],eax
    17f0:	48 8d bd 40 fe ff ff 	lea    rdi,[rbp-0x1c0]
    17f7:	e8 74 f9 ff ff       	call   1170 <strlen@plt>
    17fc:	41 89 44 24 04       	mov    DWORD PTR [r12+0x4],eax
    1801:	83 eb 01             	sub    ebx,0x1
    1804:	81 fb 3e 42 0f 00    	cmp    ebx,0xf423e
    180a:	0f 87 dc 00 00 00    	ja     18ec <load_record+0x291>
    1810:	85 c0                	test   eax,eax
    1812:	74 2a                	je     183e <load_record+0x1e3>
    1814:	48 8d 8d 40 fe ff ff 	lea    rcx,[rbp-0x1c0]
    181b:	8d 50 ff             	lea    edx,[rax-0x1]
    181e:	48 8d b4 15 41 fe ff 	lea    rsi,[rbp+rdx*1-0x1bf]
    1825:	ff 
    1826:	0f b6 11             	movzx  edx,BYTE PTR [rcx]
    1829:	83 ea 20             	sub    edx,0x20
    182c:	80 fa 5e             	cmp    dl,0x5e
    182f:	0f 87 bf 00 00 00    	ja     18f4 <load_record+0x299>
    1835:	48 83 c1 01          	add    rcx,0x1
    1839:	48 39 ce             	cmp    rsi,rcx
    183c:	75 e8                	jne    1826 <load_record+0x1cb>
    183e:	49 8d 54 24 08       	lea    rdx,[r12+0x8]
    1843:	83 c0 01             	add    eax,0x1
    1846:	48 8d b5 40 fe ff ff 	lea    rsi,[rbp-0x1c0]
    184d:	83 f8 08             	cmp    eax,0x8
    1850:	73 48                	jae    189a <load_record+0x23f>
    1852:	a8 04                	test   al,0x4
    1854:	75 2d                	jne    1883 <load_record+0x228>
    1856:	85 c0                	test   eax,eax
    1858:	0f 84 b8 00 00 00    	je     1916 <load_record+0x2bb>
    185e:	0f b6 8d 40 fe ff ff 	movzx  ecx,BYTE PTR [rbp-0x1c0]
    1865:	41 88 4c 24 08       	mov    BYTE PTR [r12+0x8],cl
    186a:	a8 02                	test   al,0x2
    186c:	0f 84 a4 00 00 00    	je     1916 <load_record+0x2bb>
    1872:	89 c0                	mov    eax,eax
    1874:	0f b7 4c 06 fe       	movzx  ecx,WORD PTR [rsi+rax*1-0x2]
    1879:	66 89 4c 02 fe       	mov    WORD PTR [rdx+rax*1-0x2],cx
    187e:	e9 93 00 00 00       	jmp    1916 <load_record+0x2bb>
    1883:	8b 8d 40 fe ff ff    	mov    ecx,DWORD PTR [rbp-0x1c0]
    1889:	41 89 4c 24 08       	mov    DWORD PTR [r12+0x8],ecx
    188e:	89 c0                	mov    eax,eax
    1890:	8b 4c 06 fc          	mov    ecx,DWORD PTR [rsi+rax*1-0x4]
    1894:	89 4c 02 fc          	mov    DWORD PTR [rdx+rax*1-0x4],ecx
    1898:	eb 7c                	jmp    1916 <load_record+0x2bb>
    189a:	48 8b 8d 40 fe ff ff 	mov    rcx,QWORD PTR [rbp-0x1c0]
    18a1:	49 89 4c 24 08       	mov    QWORD PTR [r12+0x8],rcx
    18a6:	89 c1                	mov    ecx,eax
    18a8:	48 8b 7c 0e f8       	mov    rdi,QWORD PTR [rsi+rcx*1-0x8]
    18ad:	48 89 7c 0a f8       	mov    QWORD PTR [rdx+rcx*1-0x8],rdi
    18b2:	48 8d 7a 08          	lea    rdi,[rdx+0x8]
    18b6:	48 83 e7 f8          	and    rdi,0xfffffffffffffff8
    18ba:	48 29 fa             	sub    rdx,rdi
    18bd:	48 29 d6             	sub    rsi,rdx
    18c0:	01 d0                	add    eax,edx
    18c2:	c1 e8 03             	shr    eax,0x3
    18c5:	89 c1                	mov    ecx,eax
    18c7:	f3 48 a5             	rep movs QWORD PTR es:[rdi],QWORD PTR ds:[rsi]
    18ca:	eb 4a                	jmp    1916 <load_record+0x2bb>
    18cc:	41 bd 03 00 00 00    	mov    r13d,0x3
    18d2:	eb 42                	jmp    1916 <load_record+0x2bb>
    18d4:	41 bd 03 00 00 00    	mov    r13d,0x3
    18da:	eb 3a                	jmp    1916 <load_record+0x2bb>
    18dc:	41 bd 05 00 00 00    	mov    r13d,0x5
    18e2:	eb 32                	jmp    1916 <load_record+0x2bb>
    18e4:	41 bd 05 00 00 00    	mov    r13d,0x5
    18ea:	eb 2a                	jmp    1916 <load_record+0x2bb>
    18ec:	41 bd 05 00 00 00    	mov    r13d,0x5
    18f2:	eb 22                	jmp    1916 <load_record+0x2bb>
    18f4:	41 bd 05 00 00 00    	mov    r13d,0x5
    18fa:	eb 1a                	jmp    1916 <load_record+0x2bb>
    18fc:	48 89 df             	mov    rdi,rbx
    18ff:	e8 3c f8 ff ff       	call   1140 <ferror@plt>
    1904:	48 89 df             	mov    rdi,rbx
    1907:	e8 54 f8 ff ff       	call   1160 <fclose@plt>
    190c:	85 c0                	test   eax,eax
    190e:	74 25                	je     1935 <load_record+0x2da>
    1910:	41 bd 03 00 00 00    	mov    r13d,0x3
    1916:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
    191a:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    1921:	00 00 
    1923:	75 18                	jne    193d <load_record+0x2e2>
    1925:	44 89 e8             	mov    eax,r13d
    1928:	48 8d 65 e0          	lea    rsp,[rbp-0x20]
    192c:	5b                   	pop    rbx
    192d:	41 5c                	pop    r12
    192f:	41 5d                	pop    r13
    1931:	41 5e                	pop    r14
    1933:	5d                   	pop    rbp
    1934:	c3                   	ret
    1935:	41 bd 03 00 00 00    	mov    r13d,0x3
    193b:	eb d9                	jmp    1916 <load_record+0x2bb>
    193d:	e8 3e f8 ff ff       	call   1180 <__stack_chk_fail@plt>

0000000000001942 <transform_record>:
    1942:	f3 0f 1e fa          	endbr64
    1946:	49 89 d0             	mov    r8,rdx
    1949:	8b 46 04             	mov    eax,DWORD PTR [rsi+0x4]
    194c:	85 c0                	test   eax,eax
    194e:	74 6c                	je     19bc <transform_record+0x7a>
    1950:	ba 00 00 00 00       	mov    edx,0x0
    1955:	41 b9 c5 9d 1c 81    	mov    r9d,0x811c9dc5
    195b:	eb 24                	jmp    1981 <transform_record+0x3f>
    195d:	8d 48 bf             	lea    ecx,[rax-0x41]
    1960:	80 f9 19             	cmp    cl,0x19
    1963:	76 2e                	jbe    1993 <transform_record+0x51>
    1965:	41 88 04 10          	mov    BYTE PTR [r8+rdx*1],al
    1969:	0f b6 c0             	movzx  eax,al
    196c:	44 31 c8             	xor    eax,r9d
    196f:	44 69 c8 93 01 00 01 	imul   r9d,eax,0x1000193
    1976:	8b 46 04             	mov    eax,DWORD PTR [rsi+0x4]
    1979:	48 83 c2 01          	add    rdx,0x1
    197d:	39 c2                	cmp    edx,eax
    197f:	73 41                	jae    19c2 <transform_record+0x80>
    1981:	89 d0                	mov    eax,edx
    1983:	0f b6 44 06 08       	movzx  eax,BYTE PTR [rsi+rax*1+0x8]
    1988:	8d 48 9f             	lea    ecx,[rax-0x61]
    198b:	80 f9 19             	cmp    cl,0x19
    198e:	77 cd                	ja     195d <transform_record+0x1b>
    1990:	83 e8 20             	sub    eax,0x20
    1993:	8b 4f 04             	mov    ecx,DWORD PTR [rdi+0x4]
    1996:	0f b6 c0             	movzx  eax,al
    1999:	8d 4c 01 bf          	lea    ecx,[rcx+rax*1-0x41]
    199d:	89 c8                	mov    eax,ecx
    199f:	48 69 c0 4f ec c4 4e 	imul   rax,rax,0x4ec4ec4f
    19a6:	48 c1 e8 23          	shr    rax,0x23
    19aa:	6b c0 1a             	imul   eax,eax,0x1a
    19ad:	29 c1                	sub    ecx,eax
    19af:	8d 41 61             	lea    eax,[rcx+0x61]
    19b2:	83 3f 01             	cmp    DWORD PTR [rdi],0x1
    19b5:	74 ae                	je     1965 <transform_record+0x23>
    19b7:	8d 41 41             	lea    eax,[rcx+0x41]
    19ba:	eb a9                	jmp    1965 <transform_record+0x23>
    19bc:	41 b9 c5 9d 1c 81    	mov    r9d,0x811c9dc5
    19c2:	89 c0                	mov    eax,eax
    19c4:	41 c6 04 00 00       	mov    BYTE PTR [r8+rax*1],0x0
    19c9:	44 89 c8             	mov    eax,r9d
    19cc:	c3                   	ret

00000000000019cd <write_result>:
    19cd:	f3 0f 1e fa          	endbr64
    19d1:	55                   	push   rbp
    19d2:	48 89 e5             	mov    rbp,rsp
    19d5:	41 57                	push   r15
    19d7:	41 56                	push   r14
    19d9:	41 55                	push   r13
    19db:	41 54                	push   r12
    19dd:	53                   	push   rbx
    19de:	48 83 ec 08          	sub    rsp,0x8
    19e2:	49 89 f4             	mov    r12,rsi
    19e5:	49 89 d5             	mov    r13,rdx
    19e8:	49 89 ce             	mov    r14,rcx
    19eb:	45 89 c7             	mov    r15d,r8d
    19ee:	48 8d 35 1e 06 00 00 	lea    rsi,[rip+0x61e]        # 2013 <_IO_stdin_used+0x13>
    19f5:	e8 e6 f7 ff ff       	call   11e0 <fopen@plt>
    19fa:	48 85 c0             	test   rax,rax
    19fd:	74 5e                	je     1a5d <write_result+0x90>
    19ff:	48 89 c3             	mov    rbx,rax
    1a02:	49 8d 4c 24 0c       	lea    rcx,[r12+0xc]
    1a07:	48 83 ec 08          	sub    rsp,0x8
    1a0b:	41 57                	push   r15
    1a0d:	4d 89 f1             	mov    r9,r14
    1a10:	45 8b 45 00          	mov    r8d,DWORD PTR [r13+0x0]
    1a14:	48 8d 15 bd 06 00 00 	lea    rdx,[rip+0x6bd]        # 20d8 <_IO_stdin_used+0xd8>
    1a1b:	be 02 00 00 00       	mov    esi,0x2
    1a20:	48 89 c7             	mov    rdi,rax
    1a23:	b8 00 00 00 00       	mov    eax,0x0
    1a28:	e8 d3 f7 ff ff       	call   1200 <__fprintf_chk@plt>
    1a2d:	41 89 c4             	mov    r12d,eax
    1a30:	48 89 df             	mov    rdi,rbx
    1a33:	e8 28 f7 ff ff       	call   1160 <fclose@plt>
    1a38:	41 c1 ec 1f          	shr    r12d,0x1f
    1a3c:	48 83 c4 10          	add    rsp,0x10
    1a40:	85 c0                	test   eax,eax
    1a42:	0f 95 c0             	setne  al
    1a45:	0f b6 c0             	movzx  eax,al
    1a48:	44 09 e0             	or     eax,r12d
    1a4b:	c1 e0 03             	shl    eax,0x3
    1a4e:	48 8d 65 d8          	lea    rsp,[rbp-0x28]
    1a52:	5b                   	pop    rbx
    1a53:	41 5c                	pop    r12
    1a55:	41 5d                	pop    r13
    1a57:	41 5e                	pop    r14
    1a59:	41 5f                	pop    r15
    1a5b:	5d                   	pop    rbp
    1a5c:	c3                   	ret
    1a5d:	e8 ce f6 ff ff       	call   1130 <__errno_location@plt>
    1a62:	83 38 11             	cmp    DWORD PTR [rax],0x11
    1a65:	0f 95 c0             	setne  al
    1a68:	0f b6 c0             	movzx  eax,al
    1a6b:	83 c0 07             	add    eax,0x7
    1a6e:	eb de                	jmp    1a4e <write_result+0x81>

0000000000001a70 <main>:
    1a70:	f3 0f 1e fa          	endbr64
    1a74:	55                   	push   rbp
    1a75:	48 89 e5             	mov    rbp,rsp
    1a78:	41 57                	push   r15
    1a7a:	41 56                	push   r14
    1a7c:	41 55                	push   r13
    1a7e:	41 54                	push   r12
    1a80:	53                   	push   rbx
    1a81:	48 81 ec 48 01 00 00 	sub    rsp,0x148
    1a88:	89 fa                	mov    edx,edi
    1a8a:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    1a91:	00 00 
    1a93:	48 89 45 c8          	mov    QWORD PTR [rbp-0x38],rax
    1a97:	31 c0                	xor    eax,eax
    1a99:	66 0f ef c0          	pxor   xmm0,xmm0
    1a9d:	0f 29 85 90 fe ff ff 	movaps XMMWORD PTR [rbp-0x170],xmm0
    1aa4:	0f 29 85 a0 fe ff ff 	movaps XMMWORD PTR [rbp-0x160],xmm0
    1aab:	48 8d bd b0 fe ff ff 	lea    rdi,[rbp-0x150]
    1ab2:	b9 11 00 00 00       	mov    ecx,0x11
    1ab7:	f3 48 ab             	rep stos QWORD PTR es:[rdi],rax
    1aba:	c7 07 00 00 00 00    	mov    DWORD PTR [rdi],0x0
    1ac0:	83 fa 04             	cmp    edx,0x4
    1ac3:	0f 85 ce 00 00 00    	jne    1b97 <main+0x127>
    1ac9:	48 89 f3             	mov    rbx,rsi
    1acc:	48 8d b5 90 fe ff ff 	lea    rsi,[rbp-0x170]
    1ad3:	48 8b 7b 08          	mov    rdi,QWORD PTR [rbx+0x8]
    1ad7:	e8 2d f8 ff ff       	call   1309 <load_config>
    1adc:	41 89 c5             	mov    r13d,eax
    1adf:	4c 8d 05 36 05 00 00 	lea    r8,[rip+0x536]        # 201c <_IO_stdin_used+0x1c>
    1ae6:	85 c0                	test   eax,eax
    1ae8:	0f 85 ce 00 00 00    	jne    1bbc <main+0x14c>
    1aee:	48 8d b5 b0 fe ff ff 	lea    rsi,[rbp-0x150]
    1af5:	48 8b 7b 10          	mov    rdi,QWORD PTR [rbx+0x10]
    1af9:	e8 5d fb ff ff       	call   165b <load_record>
    1afe:	41 89 c5             	mov    r13d,eax
    1b01:	4c 8d 05 1b 05 00 00 	lea    r8,[rip+0x51b]        # 2023 <_IO_stdin_used+0x23>
    1b08:	85 c0                	test   eax,eax
    1b0a:	0f 85 ac 00 00 00    	jne    1bbc <main+0x14c>
    1b10:	44 8b a5 b4 fe ff ff 	mov    r12d,DWORD PTR [rbp-0x14c]
    1b17:	44 39 a5 98 fe ff ff 	cmp    DWORD PTR [rbp-0x168],r12d
    1b1e:	0f 82 dc 00 00 00    	jb     1c00 <main+0x190>
    1b24:	4c 8d bd 40 ff ff ff 	lea    r15,[rbp-0xc0]
    1b2b:	4c 8d b5 b0 fe ff ff 	lea    r14,[rbp-0x150]
    1b32:	4c 8d ad 90 fe ff ff 	lea    r13,[rbp-0x170]
    1b39:	4c 89 fa             	mov    rdx,r15
    1b3c:	4c 89 f6             	mov    rsi,r14
    1b3f:	4c 89 ef             	mov    rdi,r13
    1b42:	e8 fb fd ff ff       	call   1942 <transform_record>
    1b47:	48 8b 7b 18          	mov    rdi,QWORD PTR [rbx+0x18]
    1b4b:	89 c3                	mov    ebx,eax
    1b4d:	41 89 c0             	mov    r8d,eax
    1b50:	4c 89 f9             	mov    rcx,r15
    1b53:	4c 89 f2             	mov    rdx,r14
    1b56:	4c 89 ee             	mov    rsi,r13
    1b59:	e8 6f fe ff ff       	call   19cd <write_result>
    1b5e:	41 89 c5             	mov    r13d,eax
    1b61:	4c 8d 05 ca 04 00 00 	lea    r8,[rip+0x4ca]        # 2032 <_IO_stdin_used+0x32>
    1b68:	85 c0                	test   eax,eax
    1b6a:	75 50                	jne    1bbc <main+0x14c>
    1b6c:	41 89 d8             	mov    r8d,ebx
    1b6f:	44 89 e1             	mov    ecx,r12d
    1b72:	8b 95 b0 fe ff ff    	mov    edx,DWORD PTR [rbp-0x150]
    1b78:	48 8d 35 b1 05 00 00 	lea    rsi,[rip+0x5b1]        # 2130 <_IO_stdin_used+0x130>
    1b7f:	bf 02 00 00 00       	mov    edi,0x2
    1b84:	b8 00 00 00 00       	mov    eax,0x0
    1b89:	e8 42 f6 ff ff       	call   11d0 <__printf_chk@plt>
    1b8e:	4c 8d 05 a3 04 00 00 	lea    r8,[rip+0x4a3]        # 2038 <_IO_stdin_used+0x38>
    1b95:	eb 25                	jmp    1bbc <main+0x14c>
    1b97:	48 8d 15 62 05 00 00 	lea    rdx,[rip+0x562]        # 2100 <_IO_stdin_used+0x100>
    1b9e:	be 02 00 00 00       	mov    esi,0x2
    1ba3:	48 8b 3d 76 24 00 00 	mov    rdi,QWORD PTR [rip+0x2476]        # 4020 <stderr@GLIBC_2.2.5>
    1baa:	e8 51 f6 ff ff       	call   1200 <__fprintf_chk@plt>
    1baf:	4c 8d 05 60 04 00 00 	lea    r8,[rip+0x460]        # 2016 <_IO_stdin_used+0x16>
    1bb6:	41 bd 02 00 00 00    	mov    r13d,0x2
    1bbc:	44 89 e9             	mov    ecx,r13d
    1bbf:	48 8d 15 77 04 00 00 	lea    rdx,[rip+0x477]        # 203d <_IO_stdin_used+0x3d>
    1bc6:	be 02 00 00 00       	mov    esi,0x2
    1bcb:	48 8b 3d 4e 24 00 00 	mov    rdi,QWORD PTR [rip+0x244e]        # 4020 <stderr@GLIBC_2.2.5>
    1bd2:	b8 00 00 00 00       	mov    eax,0x0
    1bd7:	e8 24 f6 ff ff       	call   1200 <__fprintf_chk@plt>
    1bdc:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
    1be0:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    1be7:	00 00 
    1be9:	75 24                	jne    1c0f <main+0x19f>
    1beb:	44 89 e8             	mov    eax,r13d
    1bee:	48 81 c4 48 01 00 00 	add    rsp,0x148
    1bf5:	5b                   	pop    rbx
    1bf6:	41 5c                	pop    r12
    1bf8:	41 5d                	pop    r13
    1bfa:	41 5e                	pop    r14
    1bfc:	41 5f                	pop    r15
    1bfe:	5d                   	pop    rbp
    1bff:	c3                   	ret
    1c00:	4c 8d 05 25 04 00 00 	lea    r8,[rip+0x425]        # 202c <_IO_stdin_used+0x2c>
    1c07:	41 bd 06 00 00 00    	mov    r13d,0x6
    1c0d:	eb ad                	jmp    1bbc <main+0x14c>
    1c0f:	e8 6c f5 ff ff       	call   1180 <__stack_chk_fail@plt>

Disassembly of section .fini:

0000000000001c14 <_fini>:
    1c14:	f3 0f 1e fa          	endbr64
    1c18:	48 83 ec 08          	sub    rsp,0x8
    1c1c:	48 83 c4 08          	add    rsp,0x8
    1c20:	c3                   	ret
