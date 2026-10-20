
/home/hunter/projects/ingenieriaInversa/muestras/pe01/paquete/docente/ejemplos-pe.simbolos.exe:     file format pei-x86-64


Disassembly of section .text:

0000000140001000 <__mingw_invalidParameterHandler>:
   140001000:	c3                   	ret
   140001001:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
   140001008:	00 00 00 00 
   14000100c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000140001010 <pre_c_init>:
   140001010:	55                   	push   rbp
   140001011:	48 89 e5             	mov    rbp,rsp
   140001014:	48 83 ec 20          	sub    rsp,0x20
   140001018:	48 8b 05 d1 87 00 00 	mov    rax,QWORD PTR [rip+0x87d1]        # 1400097f0 <.refptr.__mingw_initltsdrot_force>
   14000101f:	31 c9                	xor    ecx,ecx
   140001021:	c7 00 01 00 00 00    	mov    DWORD PTR [rax],0x1
   140001027:	48 8b 05 d2 87 00 00 	mov    rax,QWORD PTR [rip+0x87d2]        # 140009800 <.refptr.__mingw_initltsdyn_force>
   14000102e:	c7 00 01 00 00 00    	mov    DWORD PTR [rax],0x1
   140001034:	48 8b 05 d5 87 00 00 	mov    rax,QWORD PTR [rip+0x87d5]        # 140009810 <.refptr.__mingw_initltssuo_force>
   14000103b:	c7 00 01 00 00 00    	mov    DWORD PTR [rax],0x1
   140001041:	48 8b 05 58 87 00 00 	mov    rax,QWORD PTR [rip+0x8758]        # 1400097a0 <.refptr.__image_base__>
   140001048:	66 81 38 4d 5a       	cmp    WORD PTR [rax],0x5a4d
   14000104d:	75 0f                	jne    14000105e <pre_c_init+0x4e>
   14000104f:	48 63 50 3c          	movsxd rdx,DWORD PTR [rax+0x3c]
   140001053:	48 01 d0             	add    rax,rdx
   140001056:	81 38 50 45 00 00    	cmp    DWORD PTR [rax],0x4550
   14000105c:	74 6a                	je     1400010c8 <pre_c_init+0xb8>
   14000105e:	48 8b 05 7b 87 00 00 	mov    rax,QWORD PTR [rip+0x877b]        # 1400097e0 <.refptr.__mingw_app_type>
   140001065:	89 0d a1 af 00 00    	mov    DWORD PTR [rip+0xafa1],ecx        # 14000c00c <managedapp>
   14000106b:	8b 00                	mov    eax,DWORD PTR [rax]
   14000106d:	85 c0                	test   eax,eax
   14000106f:	74 47                	je     1400010b8 <pre_c_init+0xa8>
   140001071:	b9 02 00 00 00       	mov    ecx,0x2
   140001076:	e8 dd 69 00 00       	call   140007a58 <__set_app_type>
   14000107b:	e8 20 63 00 00       	call   1400073a0 <__p__fmode>
   140001080:	48 8b 15 39 88 00 00 	mov    rdx,QWORD PTR [rip+0x8839]        # 1400098c0 <.refptr._fmode>
   140001087:	8b 12                	mov    edx,DWORD PTR [rdx]
   140001089:	89 10                	mov    DWORD PTR [rax],edx
   14000108b:	e8 20 63 00 00       	call   1400073b0 <__p__commode>
   140001090:	48 8b 15 09 88 00 00 	mov    rdx,QWORD PTR [rip+0x8809]        # 1400098a0 <.refptr._commode>
   140001097:	8b 12                	mov    edx,DWORD PTR [rdx]
   140001099:	89 10                	mov    DWORD PTR [rax],edx
   14000109b:	e8 b0 05 00 00       	call   140001650 <_setargv>
   1400010a0:	48 8b 05 a9 86 00 00 	mov    rax,QWORD PTR [rip+0x86a9]        # 140009750 <.refptr._MINGW_INSTALL_DEBUG_MATHERR>
   1400010a7:	83 38 01             	cmp    DWORD PTR [rax],0x1
   1400010aa:	74 54                	je     140001100 <pre_c_init+0xf0>
   1400010ac:	31 c0                	xor    eax,eax
   1400010ae:	48 83 c4 20          	add    rsp,0x20
   1400010b2:	5d                   	pop    rbp
   1400010b3:	c3                   	ret
   1400010b4:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   1400010b8:	b9 01 00 00 00       	mov    ecx,0x1
   1400010bd:	e8 96 69 00 00       	call   140007a58 <__set_app_type>
   1400010c2:	eb b7                	jmp    14000107b <pre_c_init+0x6b>
   1400010c4:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   1400010c8:	0f b7 50 18          	movzx  edx,WORD PTR [rax+0x18]
   1400010cc:	66 81 fa 0b 01       	cmp    dx,0x10b
   1400010d1:	74 45                	je     140001118 <pre_c_init+0x108>
   1400010d3:	66 81 fa 0b 02       	cmp    dx,0x20b
   1400010d8:	75 84                	jne    14000105e <pre_c_init+0x4e>
   1400010da:	83 b8 84 00 00 00 0e 	cmp    DWORD PTR [rax+0x84],0xe
   1400010e1:	0f 86 77 ff ff ff    	jbe    14000105e <pre_c_init+0x4e>
   1400010e7:	8b 90 f8 00 00 00    	mov    edx,DWORD PTR [rax+0xf8]
   1400010ed:	31 c9                	xor    ecx,ecx
   1400010ef:	85 d2                	test   edx,edx
   1400010f1:	0f 95 c1             	setne  cl
   1400010f4:	e9 65 ff ff ff       	jmp    14000105e <pre_c_init+0x4e>
   1400010f9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140001100:	48 8b 0d d9 87 00 00 	mov    rcx,QWORD PTR [rip+0x87d9]        # 1400098e0 <.refptr._matherr>
   140001107:	e8 b4 0c 00 00       	call   140001dc0 <__mingw_setusermatherr>
   14000110c:	31 c0                	xor    eax,eax
   14000110e:	48 83 c4 20          	add    rsp,0x20
   140001112:	5d                   	pop    rbp
   140001113:	c3                   	ret
   140001114:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140001118:	83 78 74 0e          	cmp    DWORD PTR [rax+0x74],0xe
   14000111c:	0f 86 3c ff ff ff    	jbe    14000105e <pre_c_init+0x4e>
   140001122:	44 8b 80 e8 00 00 00 	mov    r8d,DWORD PTR [rax+0xe8]
   140001129:	31 c9                	xor    ecx,ecx
   14000112b:	45 85 c0             	test   r8d,r8d
   14000112e:	0f 95 c1             	setne  cl
   140001131:	e9 28 ff ff ff       	jmp    14000105e <pre_c_init+0x4e>
   140001136:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   14000113d:	00 00 00 

0000000140001140 <pre_cpp_init>:
   140001140:	55                   	push   rbp
   140001141:	48 89 e5             	mov    rbp,rsp
   140001144:	48 83 ec 30          	sub    rsp,0x30
   140001148:	48 8b 05 a1 87 00 00 	mov    rax,QWORD PTR [rip+0x87a1]        # 1400098f0 <.refptr._newmode>
   14000114f:	4c 8d 05 c2 ae 00 00 	lea    r8,[rip+0xaec2]        # 14000c018 <envp>
   140001156:	48 8d 15 c3 ae 00 00 	lea    rdx,[rip+0xaec3]        # 14000c020 <argv>
   14000115d:	48 8d 0d c4 ae 00 00 	lea    rcx,[rip+0xaec4]        # 14000c028 <argc>
   140001164:	8b 00                	mov    eax,DWORD PTR [rax]
   140001166:	89 05 98 ae 00 00    	mov    DWORD PTR [rip+0xae98],eax        # 14000c004 <startinfo>
   14000116c:	48 8b 05 3d 87 00 00 	mov    rax,QWORD PTR [rip+0x873d]        # 1400098b0 <.refptr._dowildcard>
   140001173:	44 8b 08             	mov    r9d,DWORD PTR [rax]
   140001176:	48 8d 05 87 ae 00 00 	lea    rax,[rip+0xae87]        # 14000c004 <startinfo>
   14000117d:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
   140001182:	e8 c1 68 00 00       	call   140007a48 <__getmainargs>
   140001187:	90                   	nop
   140001188:	48 83 c4 30          	add    rsp,0x30
   14000118c:	5d                   	pop    rbp
   14000118d:	c3                   	ret
   14000118e:	66 90                	xchg   ax,ax

0000000140001190 <__tmainCRTStartup>:
   140001190:	55                   	push   rbp
   140001191:	41 55                	push   r13
   140001193:	41 54                	push   r12
   140001195:	57                   	push   rdi
   140001196:	56                   	push   rsi
   140001197:	53                   	push   rbx
   140001198:	48 83 ec 28          	sub    rsp,0x28
   14000119c:	48 8d 6c 24 20       	lea    rbp,[rsp+0x20]
   1400011a1:	48 8b 1d 88 86 00 00 	mov    rbx,QWORD PTR [rip+0x8688]        # 140009830 <.refptr.__native_startup_lock>
   1400011a8:	4c 8b 25 59 c0 00 00 	mov    r12,QWORD PTR [rip+0xc059]        # 14000d208 <__imp_Sleep>
   1400011af:	31 ff                	xor    edi,edi
   1400011b1:	65 48 8b 04 25 30 00 	mov    rax,QWORD PTR gs:0x30
   1400011b8:	00 00 
   1400011ba:	48 8b 70 08          	mov    rsi,QWORD PTR [rax+0x8]
   1400011be:	eb 11                	jmp    1400011d1 <__tmainCRTStartup+0x41>
   1400011c0:	48 39 c6             	cmp    rsi,rax
   1400011c3:	0f 84 6f 01 00 00    	je     140001338 <__tmainCRTStartup+0x1a8>
   1400011c9:	b9 e8 03 00 00       	mov    ecx,0x3e8
   1400011ce:	41 ff d4             	call   r12
   1400011d1:	48 89 f8             	mov    rax,rdi
   1400011d4:	f0 48 0f b1 33       	lock cmpxchg QWORD PTR [rbx],rsi
   1400011d9:	48 85 c0             	test   rax,rax
   1400011dc:	75 e2                	jne    1400011c0 <__tmainCRTStartup+0x30>
   1400011de:	48 8b 35 5b 86 00 00 	mov    rsi,QWORD PTR [rip+0x865b]        # 140009840 <.refptr.__native_startup_state>
   1400011e5:	31 ff                	xor    edi,edi
   1400011e7:	8b 06                	mov    eax,DWORD PTR [rsi]
   1400011e9:	83 f8 01             	cmp    eax,0x1
   1400011ec:	0f 84 5d 01 00 00    	je     14000134f <__tmainCRTStartup+0x1bf>
   1400011f2:	8b 06                	mov    eax,DWORD PTR [rsi]
   1400011f4:	85 c0                	test   eax,eax
   1400011f6:	0f 84 b4 01 00 00    	je     1400013b0 <__tmainCRTStartup+0x220>
   1400011fc:	c7 05 02 ae 00 00 01 	mov    DWORD PTR [rip+0xae02],0x1        # 14000c008 <has_cctor>
   140001203:	00 00 00 
   140001206:	8b 06                	mov    eax,DWORD PTR [rsi]
   140001208:	83 f8 01             	cmp    eax,0x1
   14000120b:	0f 84 53 01 00 00    	je     140001364 <__tmainCRTStartup+0x1d4>
   140001211:	85 ff                	test   edi,edi
   140001213:	0f 84 6c 01 00 00    	je     140001385 <__tmainCRTStartup+0x1f5>
   140001219:	48 8b 05 70 85 00 00 	mov    rax,QWORD PTR [rip+0x8570]        # 140009790 <.refptr.__dyn_tls_init_callback>
   140001220:	48 8b 00             	mov    rax,QWORD PTR [rax]
   140001223:	48 85 c0             	test   rax,rax
   140001226:	74 0c                	je     140001234 <__tmainCRTStartup+0xa4>
   140001228:	45 31 c0             	xor    r8d,r8d
   14000122b:	ba 02 00 00 00       	mov    edx,0x2
   140001230:	31 c9                	xor    ecx,ecx
   140001232:	ff d0                	call   rax
   140001234:	e8 e7 07 00 00       	call   140001a20 <_pei386_runtime_relocator>
   140001239:	48 8b 0d 90 86 00 00 	mov    rcx,QWORD PTR [rip+0x8690]        # 1400098d0 <.refptr._gnu_exception_handler>
   140001240:	ff 15 ba bf 00 00    	call   QWORD PTR [rip+0xbfba]        # 14000d200 <__imp_SetUnhandledExceptionFilter>
   140001246:	48 8b 15 d3 85 00 00 	mov    rdx,QWORD PTR [rip+0x85d3]        # 140009820 <.refptr.__mingw_oldexcpt_handler>
   14000124d:	48 8d 0d ac fd ff ff 	lea    rcx,[rip+0xfffffffffffffdac]        # 140001000 <__mingw_invalidParameterHandler>
   140001254:	48 89 02             	mov    QWORD PTR [rdx],rax
   140001257:	e8 54 62 00 00       	call   1400074b0 <_set_invalid_parameter_handler>
   14000125c:	e8 cf 05 00 00       	call   140001830 <_fpreset>
   140001261:	8b 1d c1 ad 00 00    	mov    ebx,DWORD PTR [rip+0xadc1]        # 14000c028 <argc>
   140001267:	8d 7b 01             	lea    edi,[rbx+0x1]
   14000126a:	48 63 ff             	movsxd rdi,edi
   14000126d:	48 c1 e7 03          	shl    rdi,0x3
   140001271:	48 89 f9             	mov    rcx,rdi
   140001274:	e8 67 68 00 00       	call   140007ae0 <malloc>
   140001279:	4c 8b 2d a0 ad 00 00 	mov    r13,QWORD PTR [rip+0xada0]        # 14000c020 <argv>
   140001280:	49 89 c4             	mov    r12,rax
   140001283:	85 db                	test   ebx,ebx
   140001285:	0f 8e 45 01 00 00    	jle    1400013d0 <__tmainCRTStartup+0x240>
   14000128b:	48 83 ef 08          	sub    rdi,0x8
   14000128f:	31 db                	xor    ebx,ebx
   140001291:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140001298:	49 8b 4c 1d 00       	mov    rcx,QWORD PTR [r13+rbx*1+0x0]
   14000129d:	e8 66 68 00 00       	call   140007b08 <strlen>
   1400012a2:	48 8d 70 01          	lea    rsi,[rax+0x1]
   1400012a6:	48 89 f1             	mov    rcx,rsi
   1400012a9:	e8 32 68 00 00       	call   140007ae0 <malloc>
   1400012ae:	49 89 f0             	mov    r8,rsi
   1400012b1:	49 89 04 1c          	mov    QWORD PTR [r12+rbx*1],rax
   1400012b5:	49 8b 54 1d 00       	mov    rdx,QWORD PTR [r13+rbx*1+0x0]
   1400012ba:	48 89 c1             	mov    rcx,rax
   1400012bd:	48 83 c3 08          	add    rbx,0x8
   1400012c1:	e8 22 68 00 00       	call   140007ae8 <memcpy>
   1400012c6:	48 39 df             	cmp    rdi,rbx
   1400012c9:	75 cd                	jne    140001298 <__tmainCRTStartup+0x108>
   1400012cb:	4c 01 e7             	add    rdi,r12
   1400012ce:	48 c7 07 00 00 00 00 	mov    QWORD PTR [rdi],0x0
   1400012d5:	4c 89 25 44 ad 00 00 	mov    QWORD PTR [rip+0xad44],r12        # 14000c020 <argv>
   1400012dc:	e8 4f 03 00 00       	call   140001630 <__main>
   1400012e1:	48 8b 05 c8 84 00 00 	mov    rax,QWORD PTR [rip+0x84c8]        # 1400097b0 <.refptr.__imp___initenv>
   1400012e8:	4c 8b 05 29 ad 00 00 	mov    r8,QWORD PTR [rip+0xad29]        # 14000c018 <envp>
   1400012ef:	8b 0d 33 ad 00 00    	mov    ecx,DWORD PTR [rip+0xad33]        # 14000c028 <argc>
   1400012f5:	48 8b 00             	mov    rax,QWORD PTR [rax]
   1400012f8:	4c 89 00             	mov    QWORD PTR [rax],r8
   1400012fb:	48 8b 15 1e ad 00 00 	mov    rdx,QWORD PTR [rip+0xad1e]        # 14000c020 <argv>
   140001302:	e8 99 68 00 00       	call   140007ba0 <main>
   140001307:	8b 0d ff ac 00 00    	mov    ecx,DWORD PTR [rip+0xacff]        # 14000c00c <managedapp>
   14000130d:	89 05 fd ac 00 00    	mov    DWORD PTR [rip+0xacfd],eax        # 14000c010 <mainret>
   140001313:	85 c9                	test   ecx,ecx
   140001315:	0f 84 bd 00 00 00    	je     1400013d8 <__tmainCRTStartup+0x248>
   14000131b:	8b 15 e7 ac 00 00    	mov    edx,DWORD PTR [rip+0xace7]        # 14000c008 <has_cctor>
   140001321:	85 d2                	test   edx,edx
   140001323:	74 6b                	je     140001390 <__tmainCRTStartup+0x200>
   140001325:	48 83 c4 28          	add    rsp,0x28
   140001329:	5b                   	pop    rbx
   14000132a:	5e                   	pop    rsi
   14000132b:	5f                   	pop    rdi
   14000132c:	41 5c                	pop    r12
   14000132e:	41 5d                	pop    r13
   140001330:	5d                   	pop    rbp
   140001331:	c3                   	ret
   140001332:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140001338:	48 8b 35 01 85 00 00 	mov    rsi,QWORD PTR [rip+0x8501]        # 140009840 <.refptr.__native_startup_state>
   14000133f:	bf 01 00 00 00       	mov    edi,0x1
   140001344:	8b 06                	mov    eax,DWORD PTR [rsi]
   140001346:	83 f8 01             	cmp    eax,0x1
   140001349:	0f 85 a3 fe ff ff    	jne    1400011f2 <__tmainCRTStartup+0x62>
   14000134f:	b9 1f 00 00 00       	mov    ecx,0x1f
   140001354:	e8 0f 67 00 00       	call   140007a68 <_amsg_exit>
   140001359:	8b 06                	mov    eax,DWORD PTR [rsi]
   14000135b:	83 f8 01             	cmp    eax,0x1
   14000135e:	0f 85 ad fe ff ff    	jne    140001211 <__tmainCRTStartup+0x81>
   140001364:	48 8b 15 05 85 00 00 	mov    rdx,QWORD PTR [rip+0x8505]        # 140009870 <.refptr.__xc_z>
   14000136b:	48 8b 0d ee 84 00 00 	mov    rcx,QWORD PTR [rip+0x84ee]        # 140009860 <.refptr.__xc_a>
   140001372:	e8 09 67 00 00       	call   140007a80 <_initterm>
   140001377:	c7 06 02 00 00 00    	mov    DWORD PTR [rsi],0x2
   14000137d:	85 ff                	test   edi,edi
   14000137f:	0f 85 94 fe ff ff    	jne    140001219 <__tmainCRTStartup+0x89>
   140001385:	31 c0                	xor    eax,eax
   140001387:	48 87 03             	xchg   QWORD PTR [rbx],rax
   14000138a:	e9 8a fe ff ff       	jmp    140001219 <__tmainCRTStartup+0x89>
   14000138f:	90                   	nop
   140001390:	e8 db 66 00 00       	call   140007a70 <_cexit>
   140001395:	8b 05 75 ac 00 00    	mov    eax,DWORD PTR [rip+0xac75]        # 14000c010 <mainret>
   14000139b:	48 83 c4 28          	add    rsp,0x28
   14000139f:	5b                   	pop    rbx
   1400013a0:	5e                   	pop    rsi
   1400013a1:	5f                   	pop    rdi
   1400013a2:	41 5c                	pop    r12
   1400013a4:	41 5d                	pop    r13
   1400013a6:	5d                   	pop    rbp
   1400013a7:	c3                   	ret
   1400013a8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   1400013af:	00 
   1400013b0:	48 8b 15 d9 84 00 00 	mov    rdx,QWORD PTR [rip+0x84d9]        # 140009890 <.refptr.__xi_z>
   1400013b7:	48 8b 0d c2 84 00 00 	mov    rcx,QWORD PTR [rip+0x84c2]        # 140009880 <.refptr.__xi_a>
   1400013be:	c7 06 01 00 00 00    	mov    DWORD PTR [rsi],0x1
   1400013c4:	e8 b7 66 00 00       	call   140007a80 <_initterm>
   1400013c9:	e9 38 fe ff ff       	jmp    140001206 <__tmainCRTStartup+0x76>
   1400013ce:	66 90                	xchg   ax,ax
   1400013d0:	48 89 c7             	mov    rdi,rax
   1400013d3:	e9 f6 fe ff ff       	jmp    1400012ce <__tmainCRTStartup+0x13e>
   1400013d8:	89 c1                	mov    ecx,eax
   1400013da:	e8 d1 66 00 00       	call   140007ab0 <exit>
   1400013df:	90                   	nop

00000001400013e0 <WinMainCRTStartup>:
   1400013e0:	55                   	push   rbp
   1400013e1:	48 89 e5             	mov    rbp,rsp
   1400013e4:	48 83 ec 20          	sub    rsp,0x20

00000001400013e8 <.l_startw>:
   1400013e8:	48 8b 05 f1 83 00 00 	mov    rax,QWORD PTR [rip+0x83f1]        # 1400097e0 <.refptr.__mingw_app_type>
   1400013ef:	c7 00 01 00 00 00    	mov    DWORD PTR [rax],0x1
   1400013f5:	e8 96 fd ff ff       	call   140001190 <__tmainCRTStartup>
   1400013fa:	90                   	nop

00000001400013fb <.l_endw>:
   1400013fb:	90                   	nop
   1400013fc:	48 83 c4 20          	add    rsp,0x20
   140001400:	5d                   	pop    rbp
   140001401:	c3                   	ret
   140001402:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
   140001409:	00 00 00 00 
   14000140d:	0f 1f 00             	nop    DWORD PTR [rax]

0000000140001410 <mainCRTStartup>:
   140001410:	55                   	push   rbp
   140001411:	48 89 e5             	mov    rbp,rsp
   140001414:	48 83 ec 20          	sub    rsp,0x20

0000000140001418 <.l_start>:
   140001418:	48 8b 05 c1 83 00 00 	mov    rax,QWORD PTR [rip+0x83c1]        # 1400097e0 <.refptr.__mingw_app_type>
   14000141f:	c7 00 00 00 00 00    	mov    DWORD PTR [rax],0x0
   140001425:	e8 66 fd ff ff       	call   140001190 <__tmainCRTStartup>
   14000142a:	90                   	nop

000000014000142b <.l_end>:
   14000142b:	90                   	nop
   14000142c:	48 83 c4 20          	add    rsp,0x20
   140001430:	5d                   	pop    rbp
   140001431:	c3                   	ret
   140001432:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
   140001439:	00 00 00 00 
   14000143d:	0f 1f 00             	nop    DWORD PTR [rax]

0000000140001440 <atexit>:
   140001440:	55                   	push   rbp
   140001441:	48 89 e5             	mov    rbp,rsp
   140001444:	48 83 ec 20          	sub    rsp,0x20
   140001448:	e8 43 66 00 00       	call   140007a90 <_onexit>
   14000144d:	48 83 f8 01          	cmp    rax,0x1
   140001451:	19 c0                	sbb    eax,eax
   140001453:	48 83 c4 20          	add    rsp,0x20
   140001457:	5d                   	pop    rbp
   140001458:	c3                   	ret
   140001459:	90                   	nop
   14000145a:	90                   	nop
   14000145b:	90                   	nop
   14000145c:	90                   	nop
   14000145d:	90                   	nop
   14000145e:	90                   	nop
   14000145f:	90                   	nop

0000000140001460 <__gcc_register_frame>:
   140001460:	48 8d 0d 09 00 00 00 	lea    rcx,[rip+0x9]        # 140001470 <__gcc_deregister_frame>
   140001467:	e9 d4 ff ff ff       	jmp    140001440 <atexit>
   14000146c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000140001470 <__gcc_deregister_frame>:
   140001470:	c3                   	ret
   140001471:	90                   	nop
   140001472:	90                   	nop
   140001473:	90                   	nop
   140001474:	90                   	nop
   140001475:	90                   	nop
   140001476:	90                   	nop
   140001477:	90                   	nop
   140001478:	90                   	nop
   140001479:	90                   	nop
   14000147a:	90                   	nop
   14000147b:	90                   	nop
   14000147c:	90                   	nop
   14000147d:	90                   	nop
   14000147e:	90                   	nop
   14000147f:	90                   	nop

0000000140001480 <printf>:
   140001480:	56                   	push   rsi
   140001481:	53                   	push   rbx
   140001482:	48 83 ec 38          	sub    rsp,0x38
   140001486:	48 8d 74 24 58       	lea    rsi,[rsp+0x58]
   14000148b:	48 89 54 24 58       	mov    QWORD PTR [rsp+0x58],rdx
   140001490:	48 89 cb             	mov    rbx,rcx
   140001493:	b9 01 00 00 00       	mov    ecx,0x1
   140001498:	4c 89 44 24 60       	mov    QWORD PTR [rsp+0x60],r8
   14000149d:	4c 89 4c 24 68       	mov    QWORD PTR [rsp+0x68],r9
   1400014a2:	48 89 74 24 28       	mov    QWORD PTR [rsp+0x28],rsi
   1400014a7:	ff 15 03 6c 00 00    	call   QWORD PTR [rip+0x6c03]        # 1400080b0 <__imp___acrt_iob_func>
   1400014ad:	49 89 f0             	mov    r8,rsi
   1400014b0:	48 89 da             	mov    rdx,rbx
   1400014b3:	48 89 c1             	mov    rcx,rax
   1400014b6:	e8 b5 11 00 00       	call   140002670 <__mingw_vfprintf>
   1400014bb:	48 83 c4 38          	add    rsp,0x38
   1400014bf:	5b                   	pop    rbx
   1400014c0:	5e                   	pop    rsi
   1400014c1:	c3                   	ret
   1400014c2:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
   1400014c9:	00 00 00 00 
   1400014cd:	0f 1f 00             	nop    DWORD PTR [rax]

00000001400014d0 <funcion_vacia>:
   1400014d0:	c3                   	ret
   1400014d1:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
   1400014d8:	00 00 00 00 
   1400014dc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

00000001400014e0 <funcion_retorno>:
   1400014e0:	b8 2a 00 00 00       	mov    eax,0x2a
   1400014e5:	c3                   	ret
   1400014e6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   1400014ed:	00 00 00 

00000001400014f0 <funcion_if>:
   1400014f0:	31 c0                	xor    eax,eax
   1400014f2:	85 c9                	test   ecx,ecx
   1400014f4:	0f 9f c0             	setg   al
   1400014f7:	c3                   	ret
   1400014f8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   1400014ff:	00 

0000000140001500 <funcion_bucle>:
   140001500:	85 c9                	test   ecx,ecx
   140001502:	7e 2c                	jle    140001530 <funcion_bucle+0x30>
   140001504:	31 c0                	xor    eax,eax
   140001506:	31 d2                	xor    edx,edx
   140001508:	f6 c1 01             	test   cl,0x1
   14000150b:	74 13                	je     140001520 <funcion_bucle+0x20>
   14000150d:	b8 01 00 00 00       	mov    eax,0x1
   140001512:	83 f9 01             	cmp    ecx,0x1
   140001515:	74 14                	je     14000152b <funcion_bucle+0x2b>
   140001517:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
   14000151e:	00 00 
   140001520:	8d 54 42 01          	lea    edx,[rdx+rax*2+0x1]
   140001524:	83 c0 02             	add    eax,0x2
   140001527:	39 c1                	cmp    ecx,eax
   140001529:	75 f5                	jne    140001520 <funcion_bucle+0x20>
   14000152b:	89 d0                	mov    eax,edx
   14000152d:	c3                   	ret
   14000152e:	66 90                	xchg   ax,ax
   140001530:	31 d2                	xor    edx,edx
   140001532:	89 d0                	mov    eax,edx
   140001534:	c3                   	ret
   140001535:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
   14000153c:	00 00 00 00 

0000000140001540 <funcion_suma>:
   140001540:	8d 04 11             	lea    eax,[rcx+rdx*1]
   140001543:	c3                   	ret
   140001544:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
   14000154b:	00 00 00 00 
   14000154f:	90                   	nop

0000000140001550 <funcion_llamada_con_argumentos>:
   140001550:	01 d1                	add    ecx,edx
   140001552:	42 8d 04 01          	lea    eax,[rcx+r8*1]
   140001556:	c3                   	ret
   140001557:	90                   	nop
   140001558:	90                   	nop
   140001559:	90                   	nop
   14000155a:	90                   	nop
   14000155b:	90                   	nop
   14000155c:	90                   	nop
   14000155d:	90                   	nop
   14000155e:	90                   	nop
   14000155f:	90                   	nop

0000000140001560 <__do_global_dtors>:
   140001560:	55                   	push   rbp
   140001561:	48 89 e5             	mov    rbp,rsp
   140001564:	48 83 ec 20          	sub    rsp,0x20
   140001568:	48 8b 05 91 6a 00 00 	mov    rax,QWORD PTR [rip+0x6a91]        # 140008000 <__data_start__>
   14000156f:	48 8b 00             	mov    rax,QWORD PTR [rax]
   140001572:	48 85 c0             	test   rax,rax
   140001575:	74 26                	je     14000159d <__do_global_dtors+0x3d>
   140001577:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
   14000157e:	00 00 
   140001580:	ff d0                	call   rax
   140001582:	48 8b 05 77 6a 00 00 	mov    rax,QWORD PTR [rip+0x6a77]        # 140008000 <__data_start__>
   140001589:	48 8d 50 08          	lea    rdx,[rax+0x8]
   14000158d:	48 8b 40 08          	mov    rax,QWORD PTR [rax+0x8]
   140001591:	48 89 15 68 6a 00 00 	mov    QWORD PTR [rip+0x6a68],rdx        # 140008000 <__data_start__>
   140001598:	48 85 c0             	test   rax,rax
   14000159b:	75 e3                	jne    140001580 <__do_global_dtors+0x20>
   14000159d:	48 83 c4 20          	add    rsp,0x20
   1400015a1:	5d                   	pop    rbp
   1400015a2:	c3                   	ret
   1400015a3:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
   1400015aa:	00 00 00 00 
   1400015ae:	66 90                	xchg   ax,ax

00000001400015b0 <__do_global_ctors>:
   1400015b0:	55                   	push   rbp
   1400015b1:	56                   	push   rsi
   1400015b2:	53                   	push   rbx
   1400015b3:	48 83 ec 20          	sub    rsp,0x20
   1400015b7:	48 8d 6c 24 20       	lea    rbp,[rsp+0x20]
   1400015bc:	48 8b 15 9d 81 00 00 	mov    rdx,QWORD PTR [rip+0x819d]        # 140009760 <.refptr.__CTOR_LIST__>
   1400015c3:	48 8b 02             	mov    rax,QWORD PTR [rdx]
   1400015c6:	89 c1                	mov    ecx,eax
   1400015c8:	83 f8 ff             	cmp    eax,0xffffffff
   1400015cb:	74 43                	je     140001610 <__do_global_ctors+0x60>
   1400015cd:	85 c9                	test   ecx,ecx
   1400015cf:	74 22                	je     1400015f3 <__do_global_ctors+0x43>
   1400015d1:	89 c8                	mov    eax,ecx
   1400015d3:	83 e9 01             	sub    ecx,0x1
   1400015d6:	48 8d 1c c2          	lea    rbx,[rdx+rax*8]
   1400015da:	48 29 c8             	sub    rax,rcx
   1400015dd:	48 8d 74 c2 f8       	lea    rsi,[rdx+rax*8-0x8]
   1400015e2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   1400015e8:	ff 13                	call   QWORD PTR [rbx]
   1400015ea:	48 83 eb 08          	sub    rbx,0x8
   1400015ee:	48 39 f3             	cmp    rbx,rsi
   1400015f1:	75 f5                	jne    1400015e8 <__do_global_ctors+0x38>
   1400015f3:	48 8d 0d 66 ff ff ff 	lea    rcx,[rip+0xffffffffffffff66]        # 140001560 <__do_global_dtors>
   1400015fa:	48 83 c4 20          	add    rsp,0x20
   1400015fe:	5b                   	pop    rbx
   1400015ff:	5e                   	pop    rsi
   140001600:	5d                   	pop    rbp
   140001601:	e9 3a fe ff ff       	jmp    140001440 <atexit>
   140001606:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   14000160d:	00 00 00 
   140001610:	31 c0                	xor    eax,eax
   140001612:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140001618:	44 8d 40 01          	lea    r8d,[rax+0x1]
   14000161c:	89 c1                	mov    ecx,eax
   14000161e:	4a 83 3c c2 00       	cmp    QWORD PTR [rdx+r8*8],0x0
   140001623:	4c 89 c0             	mov    rax,r8
   140001626:	75 f0                	jne    140001618 <__do_global_ctors+0x68>
   140001628:	eb a3                	jmp    1400015cd <__do_global_ctors+0x1d>
   14000162a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000140001630 <__main>:
   140001630:	8b 05 fa a9 00 00    	mov    eax,DWORD PTR [rip+0xa9fa]        # 14000c030 <initialized>
   140001636:	85 c0                	test   eax,eax
   140001638:	74 06                	je     140001640 <__main+0x10>
   14000163a:	c3                   	ret
   14000163b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140001640:	c7 05 e6 a9 00 00 01 	mov    DWORD PTR [rip+0xa9e6],0x1        # 14000c030 <initialized>
   140001647:	00 00 00 
   14000164a:	e9 61 ff ff ff       	jmp    1400015b0 <__do_global_ctors>
   14000164f:	90                   	nop

0000000140001650 <_setargv>:
   140001650:	31 c0                	xor    eax,eax
   140001652:	c3                   	ret
   140001653:	90                   	nop
   140001654:	90                   	nop
   140001655:	90                   	nop
   140001656:	90                   	nop
   140001657:	90                   	nop
   140001658:	90                   	nop
   140001659:	90                   	nop
   14000165a:	90                   	nop
   14000165b:	90                   	nop
   14000165c:	90                   	nop
   14000165d:	90                   	nop
   14000165e:	90                   	nop
   14000165f:	90                   	nop

0000000140001660 <__dyn_tls_dtor>:
   140001660:	55                   	push   rbp
   140001661:	48 89 e5             	mov    rbp,rsp
   140001664:	48 83 ec 20          	sub    rsp,0x20
   140001668:	83 fa 03             	cmp    edx,0x3
   14000166b:	74 13                	je     140001680 <__dyn_tls_dtor+0x20>
   14000166d:	85 d2                	test   edx,edx
   14000166f:	74 0f                	je     140001680 <__dyn_tls_dtor+0x20>
   140001671:	b8 01 00 00 00       	mov    eax,0x1
   140001676:	48 83 c4 20          	add    rsp,0x20
   14000167a:	5d                   	pop    rbp
   14000167b:	c3                   	ret
   14000167c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140001680:	e8 ab 0a 00 00       	call   140002130 <__mingw_TLScallback>
   140001685:	b8 01 00 00 00       	mov    eax,0x1
   14000168a:	48 83 c4 20          	add    rsp,0x20
   14000168e:	5d                   	pop    rbp
   14000168f:	c3                   	ret

0000000140001690 <__dyn_tls_init>:
   140001690:	55                   	push   rbp
   140001691:	56                   	push   rsi
   140001692:	53                   	push   rbx
   140001693:	48 83 ec 20          	sub    rsp,0x20
   140001697:	48 8d 6c 24 20       	lea    rbp,[rsp+0x20]
   14000169c:	48 8b 05 9d 80 00 00 	mov    rax,QWORD PTR [rip+0x809d]        # 140009740 <.refptr._CRT_MT>
   1400016a3:	83 38 02             	cmp    DWORD PTR [rax],0x2
   1400016a6:	74 06                	je     1400016ae <__dyn_tls_init+0x1e>
   1400016a8:	c7 00 02 00 00 00    	mov    DWORD PTR [rax],0x2
   1400016ae:	83 fa 02             	cmp    edx,0x2
   1400016b1:	74 15                	je     1400016c8 <__dyn_tls_init+0x38>
   1400016b3:	83 fa 01             	cmp    edx,0x1
   1400016b6:	74 48                	je     140001700 <__dyn_tls_init+0x70>
   1400016b8:	b8 01 00 00 00       	mov    eax,0x1
   1400016bd:	48 83 c4 20          	add    rsp,0x20
   1400016c1:	5b                   	pop    rbx
   1400016c2:	5e                   	pop    rsi
   1400016c3:	5d                   	pop    rbp
   1400016c4:	c3                   	ret
   1400016c5:	0f 1f 00             	nop    DWORD PTR [rax]
   1400016c8:	48 8d 1d 89 c9 00 00 	lea    rbx,[rip+0xc989]        # 14000e058 <__xd_z>
   1400016cf:	48 8d 35 82 c9 00 00 	lea    rsi,[rip+0xc982]        # 14000e058 <__xd_z>
   1400016d6:	48 39 f3             	cmp    rbx,rsi
   1400016d9:	74 dd                	je     1400016b8 <__dyn_tls_init+0x28>
   1400016db:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   1400016e0:	48 8b 03             	mov    rax,QWORD PTR [rbx]
   1400016e3:	48 85 c0             	test   rax,rax
   1400016e6:	74 02                	je     1400016ea <__dyn_tls_init+0x5a>
   1400016e8:	ff d0                	call   rax
   1400016ea:	48 83 c3 08          	add    rbx,0x8
   1400016ee:	48 39 f3             	cmp    rbx,rsi
   1400016f1:	75 ed                	jne    1400016e0 <__dyn_tls_init+0x50>
   1400016f3:	b8 01 00 00 00       	mov    eax,0x1
   1400016f8:	48 83 c4 20          	add    rsp,0x20
   1400016fc:	5b                   	pop    rbx
   1400016fd:	5e                   	pop    rsi
   1400016fe:	5d                   	pop    rbp
   1400016ff:	c3                   	ret
   140001700:	e8 2b 0a 00 00       	call   140002130 <__mingw_TLScallback>
   140001705:	b8 01 00 00 00       	mov    eax,0x1
   14000170a:	48 83 c4 20          	add    rsp,0x20
   14000170e:	5b                   	pop    rbx
   14000170f:	5e                   	pop    rsi
   140001710:	5d                   	pop    rbp
   140001711:	c3                   	ret
   140001712:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
   140001719:	00 00 00 00 
   14000171d:	0f 1f 00             	nop    DWORD PTR [rax]

0000000140001720 <__tlregdtor>:
   140001720:	31 c0                	xor    eax,eax
   140001722:	c3                   	ret
   140001723:	90                   	nop
   140001724:	90                   	nop
   140001725:	90                   	nop
   140001726:	90                   	nop
   140001727:	90                   	nop
   140001728:	90                   	nop
   140001729:	90                   	nop
   14000172a:	90                   	nop
   14000172b:	90                   	nop
   14000172c:	90                   	nop
   14000172d:	90                   	nop
   14000172e:	90                   	nop
   14000172f:	90                   	nop

0000000140001730 <_matherr>:
   140001730:	55                   	push   rbp
   140001731:	56                   	push   rsi
   140001732:	53                   	push   rbx
   140001733:	48 83 ec 70          	sub    rsp,0x70
   140001737:	48 8d 6c 24 40       	lea    rbp,[rsp+0x40]
   14000173c:	0f 11 75 00          	movups XMMWORD PTR [rbp+0x0],xmm6
   140001740:	0f 11 7d 10          	movups XMMWORD PTR [rbp+0x10],xmm7
   140001744:	44 0f 11 45 20       	movups XMMWORD PTR [rbp+0x20],xmm8
   140001749:	83 39 06             	cmp    DWORD PTR [rcx],0x6
   14000174c:	0f 87 ca 00 00 00    	ja     14000181c <_matherr+0xec>
   140001752:	8b 01                	mov    eax,DWORD PTR [rcx]
   140001754:	48 8d 15 a9 7a 00 00 	lea    rdx,[rip+0x7aa9]        # 140009204 <.rdata+0x124>
   14000175b:	48 63 04 82          	movsxd rax,DWORD PTR [rdx+rax*4]
   14000175f:	48 01 d0             	add    rax,rdx
   140001762:	ff e0                	jmp    rax
   140001764:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140001768:	48 8d 1d 90 79 00 00 	lea    rbx,[rip+0x7990]        # 1400090ff <.rdata+0x1f>
   14000176f:	f2 44 0f 10 41 20    	movsd  xmm8,QWORD PTR [rcx+0x20]
   140001775:	f2 0f 10 79 18       	movsd  xmm7,QWORD PTR [rcx+0x18]
   14000177a:	f2 0f 10 71 10       	movsd  xmm6,QWORD PTR [rcx+0x10]
   14000177f:	48 8b 71 08          	mov    rsi,QWORD PTR [rcx+0x8]
   140001783:	b9 02 00 00 00       	mov    ecx,0x2
   140001788:	e8 33 5d 00 00       	call   1400074c0 <__acrt_iob_func>
   14000178d:	f2 44 0f 11 44 24 30 	movsd  QWORD PTR [rsp+0x30],xmm8
   140001794:	49 89 d8             	mov    r8,rbx
   140001797:	48 8d 15 3a 7a 00 00 	lea    rdx,[rip+0x7a3a]        # 1400091d8 <.rdata+0xf8>
   14000179e:	f2 0f 11 7c 24 28    	movsd  QWORD PTR [rsp+0x28],xmm7
   1400017a4:	48 89 c1             	mov    rcx,rax
   1400017a7:	49 89 f1             	mov    r9,rsi
   1400017aa:	f2 0f 11 74 24 20    	movsd  QWORD PTR [rsp+0x20],xmm6
   1400017b0:	e8 03 63 00 00       	call   140007ab8 <fprintf>
   1400017b5:	90                   	nop
   1400017b6:	0f 10 75 00          	movups xmm6,XMMWORD PTR [rbp+0x0]
   1400017ba:	0f 10 7d 10          	movups xmm7,XMMWORD PTR [rbp+0x10]
   1400017be:	31 c0                	xor    eax,eax
   1400017c0:	44 0f 10 45 20       	movups xmm8,XMMWORD PTR [rbp+0x20]
   1400017c5:	48 83 c4 70          	add    rsp,0x70
   1400017c9:	5b                   	pop    rbx
   1400017ca:	5e                   	pop    rsi
   1400017cb:	5d                   	pop    rbp
   1400017cc:	c3                   	ret
   1400017cd:	0f 1f 00             	nop    DWORD PTR [rax]
   1400017d0:	48 8d 1d 09 79 00 00 	lea    rbx,[rip+0x7909]        # 1400090e0 <.rdata>
   1400017d7:	eb 96                	jmp    14000176f <_matherr+0x3f>
   1400017d9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   1400017e0:	48 8d 1d 59 79 00 00 	lea    rbx,[rip+0x7959]        # 140009140 <.rdata+0x60>
   1400017e7:	eb 86                	jmp    14000176f <_matherr+0x3f>
   1400017e9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   1400017f0:	48 8d 1d 29 79 00 00 	lea    rbx,[rip+0x7929]        # 140009120 <.rdata+0x40>
   1400017f7:	e9 73 ff ff ff       	jmp    14000176f <_matherr+0x3f>
   1400017fc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140001800:	48 8d 1d 89 79 00 00 	lea    rbx,[rip+0x7989]        # 140009190 <.rdata+0xb0>
   140001807:	e9 63 ff ff ff       	jmp    14000176f <_matherr+0x3f>
   14000180c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140001810:	48 8d 1d 51 79 00 00 	lea    rbx,[rip+0x7951]        # 140009168 <.rdata+0x88>
   140001817:	e9 53 ff ff ff       	jmp    14000176f <_matherr+0x3f>
   14000181c:	48 8d 1d a3 79 00 00 	lea    rbx,[rip+0x79a3]        # 1400091c6 <.rdata+0xe6>
   140001823:	e9 47 ff ff ff       	jmp    14000176f <_matherr+0x3f>
   140001828:	90                   	nop
   140001829:	90                   	nop
   14000182a:	90                   	nop
   14000182b:	90                   	nop
   14000182c:	90                   	nop
   14000182d:	90                   	nop
   14000182e:	90                   	nop
   14000182f:	90                   	nop

0000000140001830 <_fpreset>:
   140001830:	db e3                	fninit
   140001832:	c3                   	ret
   140001833:	90                   	nop
   140001834:	90                   	nop
   140001835:	90                   	nop
   140001836:	90                   	nop
   140001837:	90                   	nop
   140001838:	90                   	nop
   140001839:	90                   	nop
   14000183a:	90                   	nop
   14000183b:	90                   	nop
   14000183c:	90                   	nop
   14000183d:	90                   	nop
   14000183e:	90                   	nop
   14000183f:	90                   	nop

0000000140001840 <__report_error>:
   140001840:	55                   	push   rbp
   140001841:	56                   	push   rsi
   140001842:	53                   	push   rbx
   140001843:	48 83 ec 30          	sub    rsp,0x30
   140001847:	48 8d 6c 24 30       	lea    rbp,[rsp+0x30]
   14000184c:	48 89 cb             	mov    rbx,rcx
   14000184f:	48 8d 45 28          	lea    rax,[rbp+0x28]
   140001853:	b9 02 00 00 00       	mov    ecx,0x2
   140001858:	48 89 55 28          	mov    QWORD PTR [rbp+0x28],rdx
   14000185c:	4c 89 45 30          	mov    QWORD PTR [rbp+0x30],r8
   140001860:	4c 89 4d 38          	mov    QWORD PTR [rbp+0x38],r9
   140001864:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   140001868:	e8 53 5c 00 00       	call   1400074c0 <__acrt_iob_func>
   14000186d:	41 b8 1b 00 00 00    	mov    r8d,0x1b
   140001873:	ba 01 00 00 00       	mov    edx,0x1
   140001878:	48 8d 0d a1 79 00 00 	lea    rcx,[rip+0x79a1]        # 140009220 <.rdata>
   14000187f:	49 89 c1             	mov    r9,rax
   140001882:	e8 49 62 00 00       	call   140007ad0 <fwrite>
   140001887:	48 8b 75 f8          	mov    rsi,QWORD PTR [rbp-0x8]
   14000188b:	b9 02 00 00 00       	mov    ecx,0x2
   140001890:	e8 2b 5c 00 00       	call   1400074c0 <__acrt_iob_func>
   140001895:	48 89 da             	mov    rdx,rbx
   140001898:	48 89 c1             	mov    rcx,rax
   14000189b:	49 89 f0             	mov    r8,rsi
   14000189e:	e8 75 62 00 00       	call   140007b18 <vfprintf>
   1400018a3:	e8 f8 61 00 00       	call   140007aa0 <abort>
   1400018a8:	90                   	nop
   1400018a9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000001400018b0 <mark_section_writable>:
   1400018b0:	55                   	push   rbp
   1400018b1:	57                   	push   rdi
   1400018b2:	56                   	push   rsi
   1400018b3:	53                   	push   rbx
   1400018b4:	48 83 ec 58          	sub    rsp,0x58
   1400018b8:	48 8d 6c 24 50       	lea    rbp,[rsp+0x50]
   1400018bd:	48 63 35 e0 a7 00 00 	movsxd rsi,DWORD PTR [rip+0xa7e0]        # 14000c0a4 <maxSections>
   1400018c4:	48 89 cb             	mov    rbx,rcx
   1400018c7:	85 f6                	test   esi,esi
   1400018c9:	0f 8e 11 01 00 00    	jle    1400019e0 <mark_section_writable+0x130>
   1400018cf:	48 8b 05 d2 a7 00 00 	mov    rax,QWORD PTR [rip+0xa7d2]        # 14000c0a8 <the_secs>
   1400018d6:	45 31 c9             	xor    r9d,r9d
   1400018d9:	48 83 c0 18          	add    rax,0x18
   1400018dd:	0f 1f 00             	nop    DWORD PTR [rax]
   1400018e0:	4c 8b 00             	mov    r8,QWORD PTR [rax]
   1400018e3:	4c 39 c3             	cmp    rbx,r8
   1400018e6:	72 13                	jb     1400018fb <mark_section_writable+0x4b>
   1400018e8:	48 8b 50 08          	mov    rdx,QWORD PTR [rax+0x8]
   1400018ec:	8b 52 08             	mov    edx,DWORD PTR [rdx+0x8]
   1400018ef:	49 01 d0             	add    r8,rdx
   1400018f2:	4c 39 c3             	cmp    rbx,r8
   1400018f5:	0f 82 88 00 00 00    	jb     140001983 <mark_section_writable+0xd3>
   1400018fb:	41 83 c1 01          	add    r9d,0x1
   1400018ff:	48 83 c0 28          	add    rax,0x28
   140001903:	41 39 f1             	cmp    r9d,esi
   140001906:	75 d8                	jne    1400018e0 <mark_section_writable+0x30>
   140001908:	48 89 d9             	mov    rcx,rbx
   14000190b:	e8 50 0a 00 00       	call   140002360 <__mingw_GetSectionForAddress>
   140001910:	48 89 c7             	mov    rdi,rax
   140001913:	48 85 c0             	test   rax,rax
   140001916:	0f 84 e6 00 00 00    	je     140001a02 <mark_section_writable+0x152>
   14000191c:	48 8b 05 85 a7 00 00 	mov    rax,QWORD PTR [rip+0xa785]        # 14000c0a8 <the_secs>
   140001923:	48 8d 1c b6          	lea    rbx,[rsi+rsi*4]
   140001927:	48 c1 e3 03          	shl    rbx,0x3
   14000192b:	48 01 d8             	add    rax,rbx
   14000192e:	48 89 78 20          	mov    QWORD PTR [rax+0x20],rdi
   140001932:	c7 00 00 00 00 00    	mov    DWORD PTR [rax],0x0
   140001938:	e8 63 0b 00 00       	call   1400024a0 <_GetPEImageBase>
   14000193d:	8b 57 0c             	mov    edx,DWORD PTR [rdi+0xc]
   140001940:	41 b8 30 00 00 00    	mov    r8d,0x30
   140001946:	48 8d 0c 10          	lea    rcx,[rax+rdx*1]
   14000194a:	48 8b 05 57 a7 00 00 	mov    rax,QWORD PTR [rip+0xa757]        # 14000c0a8 <the_secs>
   140001951:	48 8d 55 d0          	lea    rdx,[rbp-0x30]
   140001955:	48 89 4c 18 18       	mov    QWORD PTR [rax+rbx*1+0x18],rcx
   14000195a:	ff 15 c0 b8 00 00    	call   QWORD PTR [rip+0xb8c0]        # 14000d220 <__imp_VirtualQuery>
   140001960:	48 85 c0             	test   rax,rax
   140001963:	0f 84 7e 00 00 00    	je     1400019e7 <mark_section_writable+0x137>
   140001969:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
   14000196c:	8d 50 fc             	lea    edx,[rax-0x4]
   14000196f:	83 e2 fb             	and    edx,0xfffffffb
   140001972:	74 08                	je     14000197c <mark_section_writable+0xcc>
   140001974:	8d 50 c0             	lea    edx,[rax-0x40]
   140001977:	83 e2 bf             	and    edx,0xffffffbf
   14000197a:	75 14                	jne    140001990 <mark_section_writable+0xe0>
   14000197c:	83 05 21 a7 00 00 01 	add    DWORD PTR [rip+0xa721],0x1        # 14000c0a4 <maxSections>
   140001983:	48 83 c4 58          	add    rsp,0x58
   140001987:	5b                   	pop    rbx
   140001988:	5e                   	pop    rsi
   140001989:	5f                   	pop    rdi
   14000198a:	5d                   	pop    rbp
   14000198b:	c3                   	ret
   14000198c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140001990:	83 f8 02             	cmp    eax,0x2
   140001993:	48 8b 4d d0          	mov    rcx,QWORD PTR [rbp-0x30]
   140001997:	48 8b 55 e8          	mov    rdx,QWORD PTR [rbp-0x18]
   14000199b:	41 b8 40 00 00 00    	mov    r8d,0x40
   1400019a1:	b8 04 00 00 00       	mov    eax,0x4
   1400019a6:	44 0f 44 c0          	cmove  r8d,eax
   1400019aa:	48 03 1d f7 a6 00 00 	add    rbx,QWORD PTR [rip+0xa6f7]        # 14000c0a8 <the_secs>
   1400019b1:	48 89 4b 08          	mov    QWORD PTR [rbx+0x8],rcx
   1400019b5:	49 89 d9             	mov    r9,rbx
   1400019b8:	48 89 53 10          	mov    QWORD PTR [rbx+0x10],rdx
   1400019bc:	ff 15 56 b8 00 00    	call   QWORD PTR [rip+0xb856]        # 14000d218 <__imp_VirtualProtect>
   1400019c2:	85 c0                	test   eax,eax
   1400019c4:	75 b6                	jne    14000197c <mark_section_writable+0xcc>
   1400019c6:	ff 15 0c b8 00 00    	call   QWORD PTR [rip+0xb80c]        # 14000d1d8 <__imp_GetLastError>
   1400019cc:	48 8d 0d c5 78 00 00 	lea    rcx,[rip+0x78c5]        # 140009298 <.rdata+0x78>
   1400019d3:	89 c2                	mov    edx,eax
   1400019d5:	e8 66 fe ff ff       	call   140001840 <__report_error>
   1400019da:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   1400019e0:	31 f6                	xor    esi,esi
   1400019e2:	e9 21 ff ff ff       	jmp    140001908 <mark_section_writable+0x58>
   1400019e7:	48 8b 05 ba a6 00 00 	mov    rax,QWORD PTR [rip+0xa6ba]        # 14000c0a8 <the_secs>
   1400019ee:	8b 57 08             	mov    edx,DWORD PTR [rdi+0x8]
   1400019f1:	48 8d 0d 68 78 00 00 	lea    rcx,[rip+0x7868]        # 140009260 <.rdata+0x40>
   1400019f8:	4c 8b 44 18 18       	mov    r8,QWORD PTR [rax+rbx*1+0x18]
   1400019fd:	e8 3e fe ff ff       	call   140001840 <__report_error>
   140001a02:	48 89 da             	mov    rdx,rbx
   140001a05:	48 8d 0d 34 78 00 00 	lea    rcx,[rip+0x7834]        # 140009240 <.rdata+0x20>
   140001a0c:	e8 2f fe ff ff       	call   140001840 <__report_error>
   140001a11:	90                   	nop
   140001a12:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
   140001a19:	00 00 00 00 
   140001a1d:	0f 1f 00             	nop    DWORD PTR [rax]

0000000140001a20 <_pei386_runtime_relocator>:
   140001a20:	55                   	push   rbp
   140001a21:	41 57                	push   r15
   140001a23:	41 56                	push   r14
   140001a25:	41 55                	push   r13
   140001a27:	41 54                	push   r12
   140001a29:	57                   	push   rdi
   140001a2a:	56                   	push   rsi
   140001a2b:	53                   	push   rbx
   140001a2c:	48 83 ec 48          	sub    rsp,0x48
   140001a30:	48 8d 6c 24 40       	lea    rbp,[rsp+0x40]
   140001a35:	44 8b 25 64 a6 00 00 	mov    r12d,DWORD PTR [rip+0xa664]        # 14000c0a0 <was_init.0>
   140001a3c:	45 85 e4             	test   r12d,r12d
   140001a3f:	74 17                	je     140001a58 <_pei386_runtime_relocator+0x38>
   140001a41:	48 8d 65 08          	lea    rsp,[rbp+0x8]
   140001a45:	5b                   	pop    rbx
   140001a46:	5e                   	pop    rsi
   140001a47:	5f                   	pop    rdi
   140001a48:	41 5c                	pop    r12
   140001a4a:	41 5d                	pop    r13
   140001a4c:	41 5e                	pop    r14
   140001a4e:	41 5f                	pop    r15
   140001a50:	5d                   	pop    rbp
   140001a51:	c3                   	ret
   140001a52:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140001a58:	c7 05 3e a6 00 00 01 	mov    DWORD PTR [rip+0xa63e],0x1        # 14000c0a0 <was_init.0>
   140001a5f:	00 00 00 
   140001a62:	e8 79 09 00 00       	call   1400023e0 <__mingw_GetSectionCount>
   140001a67:	48 98                	cdqe
   140001a69:	48 8d 04 80          	lea    rax,[rax+rax*4]
   140001a6d:	48 8d 04 c5 0f 00 00 	lea    rax,[rax*8+0xf]
   140001a74:	00 
   140001a75:	48 83 e0 f0          	and    rax,0xfffffffffffffff0
   140001a79:	e8 b2 0b 00 00       	call   140002630 <___chkstk_ms>
   140001a7e:	4c 8b 2d eb 7c 00 00 	mov    r13,QWORD PTR [rip+0x7ceb]        # 140009770 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST_END__>
   140001a85:	48 8b 1d f4 7c 00 00 	mov    rbx,QWORD PTR [rip+0x7cf4]        # 140009780 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST__>
   140001a8c:	c7 05 0e a6 00 00 00 	mov    DWORD PTR [rip+0xa60e],0x0        # 14000c0a4 <maxSections>
   140001a93:	00 00 00 
   140001a96:	48 29 c4             	sub    rsp,rax
   140001a99:	48 8d 44 24 30       	lea    rax,[rsp+0x30]
   140001a9e:	48 89 05 03 a6 00 00 	mov    QWORD PTR [rip+0xa603],rax        # 14000c0a8 <the_secs>
   140001aa5:	4c 89 e8             	mov    rax,r13
   140001aa8:	48 29 d8             	sub    rax,rbx
   140001aab:	48 83 f8 07          	cmp    rax,0x7
   140001aaf:	7e 90                	jle    140001a41 <_pei386_runtime_relocator+0x21>
   140001ab1:	8b 13                	mov    edx,DWORD PTR [rbx]
   140001ab3:	48 83 f8 0b          	cmp    rax,0xb
   140001ab7:	0f 8f 03 01 00 00    	jg     140001bc0 <_pei386_runtime_relocator+0x1a0>
   140001abd:	8b 03                	mov    eax,DWORD PTR [rbx]
   140001abf:	85 c0                	test   eax,eax
   140001ac1:	0f 85 69 02 00 00    	jne    140001d30 <_pei386_runtime_relocator+0x310>
   140001ac7:	8b 43 04             	mov    eax,DWORD PTR [rbx+0x4]
   140001aca:	85 c0                	test   eax,eax
   140001acc:	0f 85 5e 02 00 00    	jne    140001d30 <_pei386_runtime_relocator+0x310>
   140001ad2:	8b 53 08             	mov    edx,DWORD PTR [rbx+0x8]
   140001ad5:	83 fa 01             	cmp    edx,0x1
   140001ad8:	0f 85 92 02 00 00    	jne    140001d70 <_pei386_runtime_relocator+0x350>
   140001ade:	48 83 c3 0c          	add    rbx,0xc
   140001ae2:	4c 39 eb             	cmp    rbx,r13
   140001ae5:	0f 83 56 ff ff ff    	jae    140001a41 <_pei386_runtime_relocator+0x21>
   140001aeb:	4c 8b 35 ae 7c 00 00 	mov    r14,QWORD PTR [rip+0x7cae]        # 1400097a0 <.refptr.__image_base__>
   140001af2:	41 bf ff ff ff ff    	mov    r15d,0xffffffff
   140001af8:	eb 65                	jmp    140001b5f <_pei386_runtime_relocator+0x13f>
   140001afa:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140001b00:	83 f9 08             	cmp    ecx,0x8
   140001b03:	0f 84 d7 00 00 00    	je     140001be0 <_pei386_runtime_relocator+0x1c0>
   140001b09:	83 f9 10             	cmp    ecx,0x10
   140001b0c:	0f 85 50 02 00 00    	jne    140001d62 <_pei386_runtime_relocator+0x342>
   140001b12:	0f b7 37             	movzx  esi,WORD PTR [rdi]
   140001b15:	81 e2 c0 00 00 00    	and    edx,0xc0
   140001b1b:	66 85 f6             	test   si,si
   140001b1e:	0f 89 cc 01 00 00    	jns    140001cf0 <_pei386_runtime_relocator+0x2d0>
   140001b24:	48 81 ce 00 00 ff ff 	or     rsi,0xffffffffffff0000
   140001b2b:	48 29 c6             	sub    rsi,rax
   140001b2e:	4c 01 ce             	add    rsi,r9
   140001b31:	85 d2                	test   edx,edx
   140001b33:	75 12                	jne    140001b47 <_pei386_runtime_relocator+0x127>
   140001b35:	48 81 fe 00 80 ff ff 	cmp    rsi,0xffffffffffff8000
   140001b3c:	7c 65                	jl     140001ba3 <_pei386_runtime_relocator+0x183>
   140001b3e:	48 81 fe ff ff 00 00 	cmp    rsi,0xffff
   140001b45:	7f 5c                	jg     140001ba3 <_pei386_runtime_relocator+0x183>
   140001b47:	48 89 f9             	mov    rcx,rdi
   140001b4a:	e8 61 fd ff ff       	call   1400018b0 <mark_section_writable>
   140001b4f:	66 89 37             	mov    WORD PTR [rdi],si
   140001b52:	48 83 c3 0c          	add    rbx,0xc
   140001b56:	4c 39 eb             	cmp    rbx,r13
   140001b59:	0f 83 d1 00 00 00    	jae    140001c30 <_pei386_runtime_relocator+0x210>
   140001b5f:	8b 03                	mov    eax,DWORD PTR [rbx]
   140001b61:	8b 53 08             	mov    edx,DWORD PTR [rbx+0x8]
   140001b64:	8b 7b 04             	mov    edi,DWORD PTR [rbx+0x4]
   140001b67:	4c 01 f0             	add    rax,r14
   140001b6a:	0f b6 ca             	movzx  ecx,dl
   140001b6d:	4c 8b 08             	mov    r9,QWORD PTR [rax]
   140001b70:	4c 01 f7             	add    rdi,r14
   140001b73:	83 f9 20             	cmp    ecx,0x20
   140001b76:	0f 84 0c 01 00 00    	je     140001c88 <_pei386_runtime_relocator+0x268>
   140001b7c:	76 82                	jbe    140001b00 <_pei386_runtime_relocator+0xe0>
   140001b7e:	83 f9 40             	cmp    ecx,0x40
   140001b81:	0f 85 db 01 00 00    	jne    140001d62 <_pei386_runtime_relocator+0x342>
   140001b87:	48 8b 37             	mov    rsi,QWORD PTR [rdi]
   140001b8a:	89 d1                	mov    ecx,edx
   140001b8c:	48 29 c6             	sub    rsi,rax
   140001b8f:	4c 01 ce             	add    rsi,r9
   140001b92:	81 e1 c0 00 00 00    	and    ecx,0xc0
   140001b98:	0f 85 42 01 00 00    	jne    140001ce0 <_pei386_runtime_relocator+0x2c0>
   140001b9e:	48 85 f6             	test   rsi,rsi
   140001ba1:	78 af                	js     140001b52 <_pei386_runtime_relocator+0x132>
   140001ba3:	48 89 74 24 20       	mov    QWORD PTR [rsp+0x20],rsi
   140001ba8:	89 ca                	mov    edx,ecx
   140001baa:	49 89 f8             	mov    r8,rdi
   140001bad:	48 8d 0d 74 77 00 00 	lea    rcx,[rip+0x7774]        # 140009328 <.rdata+0x108>
   140001bb4:	e8 87 fc ff ff       	call   140001840 <__report_error>
   140001bb9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140001bc0:	85 d2                	test   edx,edx
   140001bc2:	0f 85 68 01 00 00    	jne    140001d30 <_pei386_runtime_relocator+0x310>
   140001bc8:	8b 43 04             	mov    eax,DWORD PTR [rbx+0x4]
   140001bcb:	89 c2                	mov    edx,eax
   140001bcd:	0b 53 08             	or     edx,DWORD PTR [rbx+0x8]
   140001bd0:	0f 85 f4 fe ff ff    	jne    140001aca <_pei386_runtime_relocator+0xaa>
   140001bd6:	48 83 c3 0c          	add    rbx,0xc
   140001bda:	e9 de fe ff ff       	jmp    140001abd <_pei386_runtime_relocator+0x9d>
   140001bdf:	90                   	nop
   140001be0:	0f b6 37             	movzx  esi,BYTE PTR [rdi]
   140001be3:	81 e2 c0 00 00 00    	and    edx,0xc0
   140001be9:	40 84 f6             	test   sil,sil
   140001bec:	0f 89 26 01 00 00    	jns    140001d18 <_pei386_runtime_relocator+0x2f8>
   140001bf2:	48 81 ce 00 ff ff ff 	or     rsi,0xffffffffffffff00
   140001bf9:	48 29 c6             	sub    rsi,rax
   140001bfc:	4c 01 ce             	add    rsi,r9
   140001bff:	85 d2                	test   edx,edx
   140001c01:	75 0f                	jne    140001c12 <_pei386_runtime_relocator+0x1f2>
   140001c03:	48 81 fe ff 00 00 00 	cmp    rsi,0xff
   140001c0a:	7f 97                	jg     140001ba3 <_pei386_runtime_relocator+0x183>
   140001c0c:	48 83 fe 80          	cmp    rsi,0xffffffffffffff80
   140001c10:	7c 91                	jl     140001ba3 <_pei386_runtime_relocator+0x183>
   140001c12:	48 89 f9             	mov    rcx,rdi
   140001c15:	48 83 c3 0c          	add    rbx,0xc
   140001c19:	e8 92 fc ff ff       	call   1400018b0 <mark_section_writable>
   140001c1e:	40 88 37             	mov    BYTE PTR [rdi],sil
   140001c21:	4c 39 eb             	cmp    rbx,r13
   140001c24:	0f 82 35 ff ff ff    	jb     140001b5f <_pei386_runtime_relocator+0x13f>
   140001c2a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140001c30:	8b 15 6e a4 00 00    	mov    edx,DWORD PTR [rip+0xa46e]        # 14000c0a4 <maxSections>
   140001c36:	85 d2                	test   edx,edx
   140001c38:	0f 8e 03 fe ff ff    	jle    140001a41 <_pei386_runtime_relocator+0x21>
   140001c3e:	48 8b 35 d3 b5 00 00 	mov    rsi,QWORD PTR [rip+0xb5d3]        # 14000d218 <__imp_VirtualProtect>
   140001c45:	31 db                	xor    ebx,ebx
   140001c47:	48 8d 7d fc          	lea    rdi,[rbp-0x4]
   140001c4b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140001c50:	48 8b 05 51 a4 00 00 	mov    rax,QWORD PTR [rip+0xa451]        # 14000c0a8 <the_secs>
   140001c57:	48 01 d8             	add    rax,rbx
   140001c5a:	44 8b 00             	mov    r8d,DWORD PTR [rax]
   140001c5d:	45 85 c0             	test   r8d,r8d
   140001c60:	74 0d                	je     140001c6f <_pei386_runtime_relocator+0x24f>
   140001c62:	48 8b 50 10          	mov    rdx,QWORD PTR [rax+0x10]
   140001c66:	48 8b 48 08          	mov    rcx,QWORD PTR [rax+0x8]
   140001c6a:	49 89 f9             	mov    r9,rdi
   140001c6d:	ff d6                	call   rsi
   140001c6f:	41 83 c4 01          	add    r12d,0x1
   140001c73:	48 83 c3 28          	add    rbx,0x28
   140001c77:	44 3b 25 26 a4 00 00 	cmp    r12d,DWORD PTR [rip+0xa426]        # 14000c0a4 <maxSections>
   140001c7e:	7c d0                	jl     140001c50 <_pei386_runtime_relocator+0x230>
   140001c80:	e9 bc fd ff ff       	jmp    140001a41 <_pei386_runtime_relocator+0x21>
   140001c85:	0f 1f 00             	nop    DWORD PTR [rax]
   140001c88:	8b 37                	mov    esi,DWORD PTR [rdi]
   140001c8a:	81 e2 c0 00 00 00    	and    edx,0xc0
   140001c90:	85 f6                	test   esi,esi
   140001c92:	79 74                	jns    140001d08 <_pei386_runtime_relocator+0x2e8>
   140001c94:	49 bb 00 00 00 00 ff 	movabs r11,0xffffffff00000000
   140001c9b:	ff ff ff 
   140001c9e:	4c 09 de             	or     rsi,r11
   140001ca1:	48 29 c6             	sub    rsi,rax
   140001ca4:	4c 01 ce             	add    rsi,r9
   140001ca7:	85 d2                	test   edx,edx
   140001ca9:	75 1c                	jne    140001cc7 <_pei386_runtime_relocator+0x2a7>
   140001cab:	4c 39 fe             	cmp    rsi,r15
   140001cae:	0f 8f ef fe ff ff    	jg     140001ba3 <_pei386_runtime_relocator+0x183>
   140001cb4:	48 b8 ff ff ff 7f ff 	movabs rax,0xffffffff7fffffff
   140001cbb:	ff ff ff 
   140001cbe:	48 39 c6             	cmp    rsi,rax
   140001cc1:	0f 8e dc fe ff ff    	jle    140001ba3 <_pei386_runtime_relocator+0x183>
   140001cc7:	48 89 f9             	mov    rcx,rdi
   140001cca:	e8 e1 fb ff ff       	call   1400018b0 <mark_section_writable>
   140001ccf:	89 37                	mov    DWORD PTR [rdi],esi
   140001cd1:	e9 7c fe ff ff       	jmp    140001b52 <_pei386_runtime_relocator+0x132>
   140001cd6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   140001cdd:	00 00 00 
   140001ce0:	48 89 f9             	mov    rcx,rdi
   140001ce3:	e8 c8 fb ff ff       	call   1400018b0 <mark_section_writable>
   140001ce8:	48 89 37             	mov    QWORD PTR [rdi],rsi
   140001ceb:	e9 62 fe ff ff       	jmp    140001b52 <_pei386_runtime_relocator+0x132>
   140001cf0:	48 29 c6             	sub    rsi,rax
   140001cf3:	4c 01 ce             	add    rsi,r9
   140001cf6:	85 d2                	test   edx,edx
   140001cf8:	0f 84 37 fe ff ff    	je     140001b35 <_pei386_runtime_relocator+0x115>
   140001cfe:	e9 44 fe ff ff       	jmp    140001b47 <_pei386_runtime_relocator+0x127>
   140001d03:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140001d08:	48 29 c6             	sub    rsi,rax
   140001d0b:	4c 01 ce             	add    rsi,r9
   140001d0e:	85 d2                	test   edx,edx
   140001d10:	74 99                	je     140001cab <_pei386_runtime_relocator+0x28b>
   140001d12:	eb b3                	jmp    140001cc7 <_pei386_runtime_relocator+0x2a7>
   140001d14:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140001d18:	48 29 c6             	sub    rsi,rax
   140001d1b:	4c 01 ce             	add    rsi,r9
   140001d1e:	85 d2                	test   edx,edx
   140001d20:	0f 84 dd fe ff ff    	je     140001c03 <_pei386_runtime_relocator+0x1e3>
   140001d26:	e9 e7 fe ff ff       	jmp    140001c12 <_pei386_runtime_relocator+0x1f2>
   140001d2b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140001d30:	4c 39 eb             	cmp    rbx,r13
   140001d33:	0f 83 08 fd ff ff    	jae    140001a41 <_pei386_runtime_relocator+0x21>
   140001d39:	4c 8b 35 60 7a 00 00 	mov    r14,QWORD PTR [rip+0x7a60]        # 1400097a0 <.refptr.__image_base__>
   140001d40:	8b 73 04             	mov    esi,DWORD PTR [rbx+0x4]
   140001d43:	8b 3b                	mov    edi,DWORD PTR [rbx]
   140001d45:	48 83 c3 08          	add    rbx,0x8
   140001d49:	4c 01 f6             	add    rsi,r14
   140001d4c:	03 3e                	add    edi,DWORD PTR [rsi]
   140001d4e:	48 89 f1             	mov    rcx,rsi
   140001d51:	e8 5a fb ff ff       	call   1400018b0 <mark_section_writable>
   140001d56:	89 3e                	mov    DWORD PTR [rsi],edi
   140001d58:	4c 39 eb             	cmp    rbx,r13
   140001d5b:	72 e3                	jb     140001d40 <_pei386_runtime_relocator+0x320>
   140001d5d:	e9 ce fe ff ff       	jmp    140001c30 <_pei386_runtime_relocator+0x210>
   140001d62:	89 ca                	mov    edx,ecx
   140001d64:	48 8d 0d 8d 75 00 00 	lea    rcx,[rip+0x758d]        # 1400092f8 <.rdata+0xd8>
   140001d6b:	e8 d0 fa ff ff       	call   140001840 <__report_error>
   140001d70:	48 8d 0d 49 75 00 00 	lea    rcx,[rip+0x7549]        # 1400092c0 <.rdata+0xa0>
   140001d77:	e8 c4 fa ff ff       	call   140001840 <__report_error>
   140001d7c:	90                   	nop
   140001d7d:	90                   	nop
   140001d7e:	90                   	nop
   140001d7f:	90                   	nop

0000000140001d80 <__mingw_raise_matherr>:
   140001d80:	55                   	push   rbp
   140001d81:	48 89 e5             	mov    rbp,rsp
   140001d84:	48 83 ec 50          	sub    rsp,0x50
   140001d88:	48 8b 05 21 a3 00 00 	mov    rax,QWORD PTR [rip+0xa321]        # 14000c0b0 <stUserMathErr>
   140001d8f:	66 0f 14 d3          	unpcklpd xmm2,xmm3
   140001d93:	48 85 c0             	test   rax,rax
   140001d96:	74 1c                	je     140001db4 <__mingw_raise_matherr+0x34>
   140001d98:	f2 0f 10 45 30       	movsd  xmm0,QWORD PTR [rbp+0x30]
   140001d9d:	89 4d d0             	mov    DWORD PTR [rbp-0x30],ecx
   140001da0:	48 8d 4d d0          	lea    rcx,[rbp-0x30]
   140001da4:	48 89 55 d8          	mov    QWORD PTR [rbp-0x28],rdx
   140001da8:	0f 11 55 e0          	movups XMMWORD PTR [rbp-0x20],xmm2
   140001dac:	f2 0f 11 45 f0       	movsd  QWORD PTR [rbp-0x10],xmm0
   140001db1:	ff d0                	call   rax
   140001db3:	90                   	nop
   140001db4:	48 83 c4 50          	add    rsp,0x50
   140001db8:	5d                   	pop    rbp
   140001db9:	c3                   	ret
   140001dba:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000140001dc0 <__mingw_setusermatherr>:
   140001dc0:	48 89 0d e9 a2 00 00 	mov    QWORD PTR [rip+0xa2e9],rcx        # 14000c0b0 <stUserMathErr>
   140001dc7:	e9 94 5c 00 00       	jmp    140007a60 <__setusermatherr>
   140001dcc:	90                   	nop
   140001dcd:	90                   	nop
   140001dce:	90                   	nop
   140001dcf:	90                   	nop

0000000140001dd0 <_gnu_exception_handler>:
   140001dd0:	55                   	push   rbp
   140001dd1:	53                   	push   rbx
   140001dd2:	48 83 ec 28          	sub    rsp,0x28
   140001dd6:	48 8d 6c 24 20       	lea    rbp,[rsp+0x20]
   140001ddb:	48 8b 11             	mov    rdx,QWORD PTR [rcx]
   140001dde:	8b 02                	mov    eax,DWORD PTR [rdx]
   140001de0:	48 89 cb             	mov    rbx,rcx
   140001de3:	89 c1                	mov    ecx,eax
   140001de5:	81 e1 ff ff ff 20    	and    ecx,0x20ffffff
   140001deb:	81 f9 43 43 47 20    	cmp    ecx,0x20474343
   140001df1:	0f 84 b9 00 00 00    	je     140001eb0 <_gnu_exception_handler+0xe0>
   140001df7:	3d 96 00 00 c0       	cmp    eax,0xc0000096
   140001dfc:	77 49                	ja     140001e47 <_gnu_exception_handler+0x77>
   140001dfe:	3d 8b 00 00 c0       	cmp    eax,0xc000008b
   140001e03:	76 5b                	jbe    140001e60 <_gnu_exception_handler+0x90>
   140001e05:	05 73 ff ff 3f       	add    eax,0x3fffff73
   140001e0a:	83 f8 09             	cmp    eax,0x9
   140001e0d:	0f 87 8d 00 00 00    	ja     140001ea0 <_gnu_exception_handler+0xd0>
   140001e13:	48 8d 15 66 75 00 00 	lea    rdx,[rip+0x7566]        # 140009380 <.rdata>
   140001e1a:	48 63 04 82          	movsxd rax,DWORD PTR [rdx+rax*4]
   140001e1e:	48 01 d0             	add    rax,rdx
   140001e21:	ff e0                	jmp    rax
   140001e23:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140001e28:	31 d2                	xor    edx,edx
   140001e2a:	b9 08 00 00 00       	mov    ecx,0x8
   140001e2f:	e8 c4 5c 00 00       	call   140007af8 <signal>
   140001e34:	48 83 f8 01          	cmp    rax,0x1
   140001e38:	0f 84 36 01 00 00    	je     140001f74 <_gnu_exception_handler+0x1a4>
   140001e3e:	48 85 c0             	test   rax,rax
   140001e41:	0f 85 f9 00 00 00    	jne    140001f40 <_gnu_exception_handler+0x170>
   140001e47:	48 8b 05 82 a2 00 00 	mov    rax,QWORD PTR [rip+0xa282]        # 14000c0d0 <__mingw_oldexcpt_handler>
   140001e4e:	48 85 c0             	test   rax,rax
   140001e51:	74 6d                	je     140001ec0 <_gnu_exception_handler+0xf0>
   140001e53:	48 89 d9             	mov    rcx,rbx
   140001e56:	48 83 c4 28          	add    rsp,0x28
   140001e5a:	5b                   	pop    rbx
   140001e5b:	5d                   	pop    rbp
   140001e5c:	48 ff e0             	rex.W jmp rax
   140001e5f:	90                   	nop
   140001e60:	3d 05 00 00 c0       	cmp    eax,0xc0000005
   140001e65:	0f 84 a5 00 00 00    	je     140001f10 <_gnu_exception_handler+0x140>
   140001e6b:	76 63                	jbe    140001ed0 <_gnu_exception_handler+0x100>
   140001e6d:	3d 08 00 00 c0       	cmp    eax,0xc0000008
   140001e72:	74 2c                	je     140001ea0 <_gnu_exception_handler+0xd0>
   140001e74:	3d 1d 00 00 c0       	cmp    eax,0xc000001d
   140001e79:	75 cc                	jne    140001e47 <_gnu_exception_handler+0x77>
   140001e7b:	31 d2                	xor    edx,edx
   140001e7d:	b9 04 00 00 00       	mov    ecx,0x4
   140001e82:	e8 71 5c 00 00       	call   140007af8 <signal>
   140001e87:	48 83 f8 01          	cmp    rax,0x1
   140001e8b:	0f 84 cf 00 00 00    	je     140001f60 <_gnu_exception_handler+0x190>
   140001e91:	48 85 c0             	test   rax,rax
   140001e94:	74 b1                	je     140001e47 <_gnu_exception_handler+0x77>
   140001e96:	b9 04 00 00 00       	mov    ecx,0x4
   140001e9b:	ff d0                	call   rax
   140001e9d:	0f 1f 00             	nop    DWORD PTR [rax]
   140001ea0:	b8 ff ff ff ff       	mov    eax,0xffffffff
   140001ea5:	eb 1b                	jmp    140001ec2 <_gnu_exception_handler+0xf2>
   140001ea7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
   140001eae:	00 00 
   140001eb0:	f6 42 04 01          	test   BYTE PTR [rdx+0x4],0x1
   140001eb4:	0f 85 3d ff ff ff    	jne    140001df7 <_gnu_exception_handler+0x27>
   140001eba:	eb e4                	jmp    140001ea0 <_gnu_exception_handler+0xd0>
   140001ebc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140001ec0:	31 c0                	xor    eax,eax
   140001ec2:	48 83 c4 28          	add    rsp,0x28
   140001ec6:	5b                   	pop    rbx
   140001ec7:	5d                   	pop    rbp
   140001ec8:	c3                   	ret
   140001ec9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140001ed0:	3d 02 00 00 80       	cmp    eax,0x80000002
   140001ed5:	0f 85 6c ff ff ff    	jne    140001e47 <_gnu_exception_handler+0x77>
   140001edb:	eb c3                	jmp    140001ea0 <_gnu_exception_handler+0xd0>
   140001edd:	0f 1f 00             	nop    DWORD PTR [rax]
   140001ee0:	31 d2                	xor    edx,edx
   140001ee2:	b9 08 00 00 00       	mov    ecx,0x8
   140001ee7:	e8 0c 5c 00 00       	call   140007af8 <signal>
   140001eec:	48 83 f8 01          	cmp    rax,0x1
   140001ef0:	0f 85 48 ff ff ff    	jne    140001e3e <_gnu_exception_handler+0x6e>
   140001ef6:	ba 01 00 00 00       	mov    edx,0x1
   140001efb:	b9 08 00 00 00       	mov    ecx,0x8
   140001f00:	e8 f3 5b 00 00       	call   140007af8 <signal>
   140001f05:	eb 99                	jmp    140001ea0 <_gnu_exception_handler+0xd0>
   140001f07:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
   140001f0e:	00 00 
   140001f10:	31 d2                	xor    edx,edx
   140001f12:	b9 0b 00 00 00       	mov    ecx,0xb
   140001f17:	e8 dc 5b 00 00       	call   140007af8 <signal>
   140001f1c:	48 83 f8 01          	cmp    rax,0x1
   140001f20:	74 2a                	je     140001f4c <_gnu_exception_handler+0x17c>
   140001f22:	48 85 c0             	test   rax,rax
   140001f25:	0f 84 1c ff ff ff    	je     140001e47 <_gnu_exception_handler+0x77>
   140001f2b:	b9 0b 00 00 00       	mov    ecx,0xb
   140001f30:	ff d0                	call   rax
   140001f32:	e9 69 ff ff ff       	jmp    140001ea0 <_gnu_exception_handler+0xd0>
   140001f37:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
   140001f3e:	00 00 
   140001f40:	b9 08 00 00 00       	mov    ecx,0x8
   140001f45:	ff d0                	call   rax
   140001f47:	e9 54 ff ff ff       	jmp    140001ea0 <_gnu_exception_handler+0xd0>
   140001f4c:	ba 01 00 00 00       	mov    edx,0x1
   140001f51:	b9 0b 00 00 00       	mov    ecx,0xb
   140001f56:	e8 9d 5b 00 00       	call   140007af8 <signal>
   140001f5b:	e9 40 ff ff ff       	jmp    140001ea0 <_gnu_exception_handler+0xd0>
   140001f60:	ba 01 00 00 00       	mov    edx,0x1
   140001f65:	b9 04 00 00 00       	mov    ecx,0x4
   140001f6a:	e8 89 5b 00 00       	call   140007af8 <signal>
   140001f6f:	e9 2c ff ff ff       	jmp    140001ea0 <_gnu_exception_handler+0xd0>
   140001f74:	ba 01 00 00 00       	mov    edx,0x1
   140001f79:	b9 08 00 00 00       	mov    ecx,0x8
   140001f7e:	e8 75 5b 00 00       	call   140007af8 <signal>
   140001f83:	e8 a8 f8 ff ff       	call   140001830 <_fpreset>
   140001f88:	e9 13 ff ff ff       	jmp    140001ea0 <_gnu_exception_handler+0xd0>
   140001f8d:	90                   	nop
   140001f8e:	90                   	nop
   140001f8f:	90                   	nop

0000000140001f90 <__mingwthr_run_key_dtors.part.0>:
   140001f90:	55                   	push   rbp
   140001f91:	41 55                	push   r13
   140001f93:	41 54                	push   r12
   140001f95:	57                   	push   rdi
   140001f96:	56                   	push   rsi
   140001f97:	53                   	push   rbx
   140001f98:	48 83 ec 28          	sub    rsp,0x28
   140001f9c:	48 8d 6c 24 20       	lea    rbp,[rsp+0x20]
   140001fa1:	4c 8d 2d 58 a1 00 00 	lea    r13,[rip+0xa158]        # 14000c100 <__mingwthr_cs>
   140001fa8:	4c 89 e9             	mov    rcx,r13
   140001fab:	ff 15 1f b2 00 00    	call   QWORD PTR [rip+0xb21f]        # 14000d1d0 <__imp_EnterCriticalSection>
   140001fb1:	48 8b 1d 28 a1 00 00 	mov    rbx,QWORD PTR [rip+0xa128]        # 14000c0e0 <key_dtor_list>
   140001fb8:	48 85 db             	test   rbx,rbx
   140001fbb:	74 38                	je     140001ff5 <__mingwthr_run_key_dtors.part.0+0x65>
   140001fbd:	4c 8b 25 4c b2 00 00 	mov    r12,QWORD PTR [rip+0xb24c]        # 14000d210 <__imp_TlsGetValue>
   140001fc4:	48 8b 3d 0d b2 00 00 	mov    rdi,QWORD PTR [rip+0xb20d]        # 14000d1d8 <__imp_GetLastError>
   140001fcb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140001fd0:	8b 0b                	mov    ecx,DWORD PTR [rbx]
   140001fd2:	41 ff d4             	call   r12
   140001fd5:	48 89 c6             	mov    rsi,rax
   140001fd8:	ff d7                	call   rdi
   140001fda:	48 85 f6             	test   rsi,rsi
   140001fdd:	74 0d                	je     140001fec <__mingwthr_run_key_dtors.part.0+0x5c>
   140001fdf:	85 c0                	test   eax,eax
   140001fe1:	75 09                	jne    140001fec <__mingwthr_run_key_dtors.part.0+0x5c>
   140001fe3:	48 8b 43 08          	mov    rax,QWORD PTR [rbx+0x8]
   140001fe7:	48 89 f1             	mov    rcx,rsi
   140001fea:	ff d0                	call   rax
   140001fec:	48 8b 5b 10          	mov    rbx,QWORD PTR [rbx+0x10]
   140001ff0:	48 85 db             	test   rbx,rbx
   140001ff3:	75 db                	jne    140001fd0 <__mingwthr_run_key_dtors.part.0+0x40>
   140001ff5:	4c 89 e9             	mov    rcx,r13
   140001ff8:	48 83 c4 28          	add    rsp,0x28
   140001ffc:	5b                   	pop    rbx
   140001ffd:	5e                   	pop    rsi
   140001ffe:	5f                   	pop    rdi
   140001fff:	41 5c                	pop    r12
   140002001:	41 5d                	pop    r13
   140002003:	5d                   	pop    rbp
   140002004:	48 ff 25 e5 b1 00 00 	rex.W jmp QWORD PTR [rip+0xb1e5]        # 14000d1f0 <__imp_LeaveCriticalSection>
   14000200b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000140002010 <___w64_mingwthr_add_key_dtor>:
   140002010:	55                   	push   rbp
   140002011:	57                   	push   rdi
   140002012:	56                   	push   rsi
   140002013:	53                   	push   rbx
   140002014:	48 83 ec 28          	sub    rsp,0x28
   140002018:	48 8d 6c 24 20       	lea    rbp,[rsp+0x20]
   14000201d:	8b 05 c5 a0 00 00    	mov    eax,DWORD PTR [rip+0xa0c5]        # 14000c0e8 <__mingwthr_cs_init>
   140002023:	89 cf                	mov    edi,ecx
   140002025:	48 89 d6             	mov    rsi,rdx
   140002028:	85 c0                	test   eax,eax
   14000202a:	75 14                	jne    140002040 <___w64_mingwthr_add_key_dtor+0x30>
   14000202c:	31 c0                	xor    eax,eax
   14000202e:	48 83 c4 28          	add    rsp,0x28
   140002032:	5b                   	pop    rbx
   140002033:	5e                   	pop    rsi
   140002034:	5f                   	pop    rdi
   140002035:	5d                   	pop    rbp
   140002036:	c3                   	ret
   140002037:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
   14000203e:	00 00 
   140002040:	ba 18 00 00 00       	mov    edx,0x18
   140002045:	b9 01 00 00 00       	mov    ecx,0x1
   14000204a:	e8 59 5a 00 00       	call   140007aa8 <calloc>
   14000204f:	48 89 c3             	mov    rbx,rax
   140002052:	48 85 c0             	test   rax,rax
   140002055:	74 33                	je     14000208a <___w64_mingwthr_add_key_dtor+0x7a>
   140002057:	48 89 70 08          	mov    QWORD PTR [rax+0x8],rsi
   14000205b:	48 8d 35 9e a0 00 00 	lea    rsi,[rip+0xa09e]        # 14000c100 <__mingwthr_cs>
   140002062:	89 38                	mov    DWORD PTR [rax],edi
   140002064:	48 89 f1             	mov    rcx,rsi
   140002067:	ff 15 63 b1 00 00    	call   QWORD PTR [rip+0xb163]        # 14000d1d0 <__imp_EnterCriticalSection>
   14000206d:	48 8b 05 6c a0 00 00 	mov    rax,QWORD PTR [rip+0xa06c]        # 14000c0e0 <key_dtor_list>
   140002074:	48 89 f1             	mov    rcx,rsi
   140002077:	48 89 1d 62 a0 00 00 	mov    QWORD PTR [rip+0xa062],rbx        # 14000c0e0 <key_dtor_list>
   14000207e:	48 89 43 10          	mov    QWORD PTR [rbx+0x10],rax
   140002082:	ff 15 68 b1 00 00    	call   QWORD PTR [rip+0xb168]        # 14000d1f0 <__imp_LeaveCriticalSection>
   140002088:	eb a2                	jmp    14000202c <___w64_mingwthr_add_key_dtor+0x1c>
   14000208a:	83 c8 ff             	or     eax,0xffffffff
   14000208d:	eb 9f                	jmp    14000202e <___w64_mingwthr_add_key_dtor+0x1e>
   14000208f:	90                   	nop

0000000140002090 <___w64_mingwthr_remove_key_dtor>:
   140002090:	55                   	push   rbp
   140002091:	56                   	push   rsi
   140002092:	53                   	push   rbx
   140002093:	48 83 ec 20          	sub    rsp,0x20
   140002097:	48 8d 6c 24 20       	lea    rbp,[rsp+0x20]
   14000209c:	8b 05 46 a0 00 00    	mov    eax,DWORD PTR [rip+0xa046]        # 14000c0e8 <__mingwthr_cs_init>
   1400020a2:	89 cb                	mov    ebx,ecx
   1400020a4:	85 c0                	test   eax,eax
   1400020a6:	75 10                	jne    1400020b8 <___w64_mingwthr_remove_key_dtor+0x28>
   1400020a8:	31 c0                	xor    eax,eax
   1400020aa:	48 83 c4 20          	add    rsp,0x20
   1400020ae:	5b                   	pop    rbx
   1400020af:	5e                   	pop    rsi
   1400020b0:	5d                   	pop    rbp
   1400020b1:	c3                   	ret
   1400020b2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   1400020b8:	48 8d 35 41 a0 00 00 	lea    rsi,[rip+0xa041]        # 14000c100 <__mingwthr_cs>
   1400020bf:	48 89 f1             	mov    rcx,rsi
   1400020c2:	ff 15 08 b1 00 00    	call   QWORD PTR [rip+0xb108]        # 14000d1d0 <__imp_EnterCriticalSection>
   1400020c8:	48 8b 0d 11 a0 00 00 	mov    rcx,QWORD PTR [rip+0xa011]        # 14000c0e0 <key_dtor_list>
   1400020cf:	48 85 c9             	test   rcx,rcx
   1400020d2:	74 2f                	je     140002103 <___w64_mingwthr_remove_key_dtor+0x73>
   1400020d4:	31 d2                	xor    edx,edx
   1400020d6:	eb 13                	jmp    1400020eb <___w64_mingwthr_remove_key_dtor+0x5b>
   1400020d8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   1400020df:	00 
   1400020e0:	48 89 ca             	mov    rdx,rcx
   1400020e3:	48 85 c0             	test   rax,rax
   1400020e6:	74 1b                	je     140002103 <___w64_mingwthr_remove_key_dtor+0x73>
   1400020e8:	48 89 c1             	mov    rcx,rax
   1400020eb:	8b 01                	mov    eax,DWORD PTR [rcx]
   1400020ed:	39 d8                	cmp    eax,ebx
   1400020ef:	48 8b 41 10          	mov    rax,QWORD PTR [rcx+0x10]
   1400020f3:	75 eb                	jne    1400020e0 <___w64_mingwthr_remove_key_dtor+0x50>
   1400020f5:	48 85 d2             	test   rdx,rdx
   1400020f8:	74 26                	je     140002120 <___w64_mingwthr_remove_key_dtor+0x90>
   1400020fa:	48 89 42 10          	mov    QWORD PTR [rdx+0x10],rax
   1400020fe:	e8 c5 59 00 00       	call   140007ac8 <free>
   140002103:	48 89 f1             	mov    rcx,rsi
   140002106:	ff 15 e4 b0 00 00    	call   QWORD PTR [rip+0xb0e4]        # 14000d1f0 <__imp_LeaveCriticalSection>
   14000210c:	31 c0                	xor    eax,eax
   14000210e:	48 83 c4 20          	add    rsp,0x20
   140002112:	5b                   	pop    rbx
   140002113:	5e                   	pop    rsi
   140002114:	5d                   	pop    rbp
   140002115:	c3                   	ret
   140002116:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   14000211d:	00 00 00 
   140002120:	48 89 05 b9 9f 00 00 	mov    QWORD PTR [rip+0x9fb9],rax        # 14000c0e0 <key_dtor_list>
   140002127:	eb d5                	jmp    1400020fe <___w64_mingwthr_remove_key_dtor+0x6e>
   140002129:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000140002130 <__mingw_TLScallback>:
   140002130:	55                   	push   rbp
   140002131:	53                   	push   rbx
   140002132:	48 83 ec 28          	sub    rsp,0x28
   140002136:	48 8d 6c 24 20       	lea    rbp,[rsp+0x20]
   14000213b:	83 fa 02             	cmp    edx,0x2
   14000213e:	0f 84 ac 00 00 00    	je     1400021f0 <__mingw_TLScallback+0xc0>
   140002144:	77 2a                	ja     140002170 <__mingw_TLScallback+0x40>
   140002146:	85 d2                	test   edx,edx
   140002148:	74 46                	je     140002190 <__mingw_TLScallback+0x60>
   14000214a:	8b 05 98 9f 00 00    	mov    eax,DWORD PTR [rip+0x9f98]        # 14000c0e8 <__mingwthr_cs_init>
   140002150:	85 c0                	test   eax,eax
   140002152:	0f 84 b8 00 00 00    	je     140002210 <__mingw_TLScallback+0xe0>
   140002158:	c7 05 86 9f 00 00 01 	mov    DWORD PTR [rip+0x9f86],0x1        # 14000c0e8 <__mingwthr_cs_init>
   14000215f:	00 00 00 
   140002162:	b8 01 00 00 00       	mov    eax,0x1
   140002167:	48 83 c4 28          	add    rsp,0x28
   14000216b:	5b                   	pop    rbx
   14000216c:	5d                   	pop    rbp
   14000216d:	c3                   	ret
   14000216e:	66 90                	xchg   ax,ax
   140002170:	83 fa 03             	cmp    edx,0x3
   140002173:	75 ed                	jne    140002162 <__mingw_TLScallback+0x32>
   140002175:	8b 05 6d 9f 00 00    	mov    eax,DWORD PTR [rip+0x9f6d]        # 14000c0e8 <__mingwthr_cs_init>
   14000217b:	85 c0                	test   eax,eax
   14000217d:	74 e3                	je     140002162 <__mingw_TLScallback+0x32>
   14000217f:	e8 0c fe ff ff       	call   140001f90 <__mingwthr_run_key_dtors.part.0>
   140002184:	eb dc                	jmp    140002162 <__mingw_TLScallback+0x32>
   140002186:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   14000218d:	00 00 00 
   140002190:	8b 05 52 9f 00 00    	mov    eax,DWORD PTR [rip+0x9f52]        # 14000c0e8 <__mingwthr_cs_init>
   140002196:	85 c0                	test   eax,eax
   140002198:	75 6e                	jne    140002208 <__mingw_TLScallback+0xd8>
   14000219a:	8b 05 48 9f 00 00    	mov    eax,DWORD PTR [rip+0x9f48]        # 14000c0e8 <__mingwthr_cs_init>
   1400021a0:	83 f8 01             	cmp    eax,0x1
   1400021a3:	75 bd                	jne    140002162 <__mingw_TLScallback+0x32>
   1400021a5:	48 8b 1d 34 9f 00 00 	mov    rbx,QWORD PTR [rip+0x9f34]        # 14000c0e0 <key_dtor_list>
   1400021ac:	48 85 db             	test   rbx,rbx
   1400021af:	74 18                	je     1400021c9 <__mingw_TLScallback+0x99>
   1400021b1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   1400021b8:	48 89 d9             	mov    rcx,rbx
   1400021bb:	48 8b 5b 10          	mov    rbx,QWORD PTR [rbx+0x10]
   1400021bf:	e8 04 59 00 00       	call   140007ac8 <free>
   1400021c4:	48 85 db             	test   rbx,rbx
   1400021c7:	75 ef                	jne    1400021b8 <__mingw_TLScallback+0x88>
   1400021c9:	48 8d 0d 30 9f 00 00 	lea    rcx,[rip+0x9f30]        # 14000c100 <__mingwthr_cs>
   1400021d0:	48 c7 05 05 9f 00 00 	mov    QWORD PTR [rip+0x9f05],0x0        # 14000c0e0 <key_dtor_list>
   1400021d7:	00 00 00 00 
   1400021db:	c7 05 03 9f 00 00 00 	mov    DWORD PTR [rip+0x9f03],0x0        # 14000c0e8 <__mingwthr_cs_init>
   1400021e2:	00 00 00 
   1400021e5:	ff 15 dd af 00 00    	call   QWORD PTR [rip+0xafdd]        # 14000d1c8 <__IAT_start__>
   1400021eb:	e9 72 ff ff ff       	jmp    140002162 <__mingw_TLScallback+0x32>
   1400021f0:	e8 3b f6 ff ff       	call   140001830 <_fpreset>
   1400021f5:	b8 01 00 00 00       	mov    eax,0x1
   1400021fa:	48 83 c4 28          	add    rsp,0x28
   1400021fe:	5b                   	pop    rbx
   1400021ff:	5d                   	pop    rbp
   140002200:	c3                   	ret
   140002201:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140002208:	e8 83 fd ff ff       	call   140001f90 <__mingwthr_run_key_dtors.part.0>
   14000220d:	eb 8b                	jmp    14000219a <__mingw_TLScallback+0x6a>
   14000220f:	90                   	nop
   140002210:	48 8d 0d e9 9e 00 00 	lea    rcx,[rip+0x9ee9]        # 14000c100 <__mingwthr_cs>
   140002217:	ff 15 c3 af 00 00    	call   QWORD PTR [rip+0xafc3]        # 14000d1e0 <__imp_InitializeCriticalSection>
   14000221d:	e9 36 ff ff ff       	jmp    140002158 <__mingw_TLScallback+0x28>
   140002222:	90                   	nop
   140002223:	90                   	nop
   140002224:	90                   	nop
   140002225:	90                   	nop
   140002226:	90                   	nop
   140002227:	90                   	nop
   140002228:	90                   	nop
   140002229:	90                   	nop
   14000222a:	90                   	nop
   14000222b:	90                   	nop
   14000222c:	90                   	nop
   14000222d:	90                   	nop
   14000222e:	90                   	nop
   14000222f:	90                   	nop

0000000140002230 <_ValidateImageBase>:
   140002230:	31 c0                	xor    eax,eax
   140002232:	66 81 39 4d 5a       	cmp    WORD PTR [rcx],0x5a4d
   140002237:	75 0f                	jne    140002248 <_ValidateImageBase+0x18>
   140002239:	48 63 51 3c          	movsxd rdx,DWORD PTR [rcx+0x3c]
   14000223d:	48 01 d1             	add    rcx,rdx
   140002240:	81 39 50 45 00 00    	cmp    DWORD PTR [rcx],0x4550
   140002246:	74 08                	je     140002250 <_ValidateImageBase+0x20>
   140002248:	c3                   	ret
   140002249:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140002250:	31 c0                	xor    eax,eax
   140002252:	66 81 79 18 0b 02    	cmp    WORD PTR [rcx+0x18],0x20b
   140002258:	0f 94 c0             	sete   al
   14000225b:	c3                   	ret
   14000225c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000140002260 <_FindPESection>:
   140002260:	48 63 41 3c          	movsxd rax,DWORD PTR [rcx+0x3c]
   140002264:	48 01 c1             	add    rcx,rax
   140002267:	0f b7 41 14          	movzx  eax,WORD PTR [rcx+0x14]
   14000226b:	44 0f b7 41 06       	movzx  r8d,WORD PTR [rcx+0x6]
   140002270:	48 8d 44 01 18       	lea    rax,[rcx+rax*1+0x18]
   140002275:	66 45 85 c0          	test   r8w,r8w
   140002279:	74 32                	je     1400022ad <_FindPESection+0x4d>
   14000227b:	41 8d 48 ff          	lea    ecx,[r8-0x1]
   14000227f:	48 8d 0c 89          	lea    rcx,[rcx+rcx*4]
   140002283:	4c 8d 4c c8 28       	lea    r9,[rax+rcx*8+0x28]
   140002288:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   14000228f:	00 
   140002290:	44 8b 40 0c          	mov    r8d,DWORD PTR [rax+0xc]
   140002294:	4c 89 c1             	mov    rcx,r8
   140002297:	4c 39 c2             	cmp    rdx,r8
   14000229a:	72 08                	jb     1400022a4 <_FindPESection+0x44>
   14000229c:	03 48 08             	add    ecx,DWORD PTR [rax+0x8]
   14000229f:	48 39 ca             	cmp    rdx,rcx
   1400022a2:	72 0b                	jb     1400022af <_FindPESection+0x4f>
   1400022a4:	48 83 c0 28          	add    rax,0x28
   1400022a8:	4c 39 c8             	cmp    rax,r9
   1400022ab:	75 e3                	jne    140002290 <_FindPESection+0x30>
   1400022ad:	31 c0                	xor    eax,eax
   1400022af:	c3                   	ret

00000001400022b0 <_FindPESectionByName>:
   1400022b0:	55                   	push   rbp
   1400022b1:	57                   	push   rdi
   1400022b2:	56                   	push   rsi
   1400022b3:	53                   	push   rbx
   1400022b4:	48 83 ec 28          	sub    rsp,0x28
   1400022b8:	48 8d 6c 24 20       	lea    rbp,[rsp+0x20]
   1400022bd:	48 89 ce             	mov    rsi,rcx
   1400022c0:	e8 43 58 00 00       	call   140007b08 <strlen>
   1400022c5:	48 83 f8 08          	cmp    rax,0x8
   1400022c9:	77 7d                	ja     140002348 <_FindPESectionByName+0x98>
   1400022cb:	48 8b 15 ce 74 00 00 	mov    rdx,QWORD PTR [rip+0x74ce]        # 1400097a0 <.refptr.__image_base__>
   1400022d2:	31 db                	xor    ebx,ebx
   1400022d4:	66 81 3a 4d 5a       	cmp    WORD PTR [rdx],0x5a4d
   1400022d9:	75 5b                	jne    140002336 <_FindPESectionByName+0x86>
   1400022db:	48 63 42 3c          	movsxd rax,DWORD PTR [rdx+0x3c]
   1400022df:	48 01 d0             	add    rax,rdx
   1400022e2:	81 38 50 45 00 00    	cmp    DWORD PTR [rax],0x4550
   1400022e8:	75 4c                	jne    140002336 <_FindPESectionByName+0x86>
   1400022ea:	66 81 78 18 0b 02    	cmp    WORD PTR [rax+0x18],0x20b
   1400022f0:	75 44                	jne    140002336 <_FindPESectionByName+0x86>
   1400022f2:	0f b7 50 14          	movzx  edx,WORD PTR [rax+0x14]
   1400022f6:	48 8d 5c 10 18       	lea    rbx,[rax+rdx*1+0x18]
   1400022fb:	0f b7 50 06          	movzx  edx,WORD PTR [rax+0x6]
   1400022ff:	66 85 d2             	test   dx,dx
   140002302:	74 44                	je     140002348 <_FindPESectionByName+0x98>
   140002304:	8d 42 ff             	lea    eax,[rdx-0x1]
   140002307:	48 8d 04 80          	lea    rax,[rax+rax*4]
   14000230b:	48 8d 7c c3 28       	lea    rdi,[rbx+rax*8+0x28]
   140002310:	eb 0f                	jmp    140002321 <_FindPESectionByName+0x71>
   140002312:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140002318:	48 83 c3 28          	add    rbx,0x28
   14000231c:	48 39 fb             	cmp    rbx,rdi
   14000231f:	74 27                	je     140002348 <_FindPESectionByName+0x98>
   140002321:	41 b8 08 00 00 00    	mov    r8d,0x8
   140002327:	48 89 f2             	mov    rdx,rsi
   14000232a:	48 89 d9             	mov    rcx,rbx
   14000232d:	e8 de 57 00 00       	call   140007b10 <strncmp>
   140002332:	85 c0                	test   eax,eax
   140002334:	75 e2                	jne    140002318 <_FindPESectionByName+0x68>
   140002336:	48 89 d8             	mov    rax,rbx
   140002339:	48 83 c4 28          	add    rsp,0x28
   14000233d:	5b                   	pop    rbx
   14000233e:	5e                   	pop    rsi
   14000233f:	5f                   	pop    rdi
   140002340:	5d                   	pop    rbp
   140002341:	c3                   	ret
   140002342:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140002348:	31 db                	xor    ebx,ebx
   14000234a:	48 89 d8             	mov    rax,rbx
   14000234d:	48 83 c4 28          	add    rsp,0x28
   140002351:	5b                   	pop    rbx
   140002352:	5e                   	pop    rsi
   140002353:	5f                   	pop    rdi
   140002354:	5d                   	pop    rbp
   140002355:	c3                   	ret
   140002356:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   14000235d:	00 00 00 

0000000140002360 <__mingw_GetSectionForAddress>:
   140002360:	48 8b 15 39 74 00 00 	mov    rdx,QWORD PTR [rip+0x7439]        # 1400097a0 <.refptr.__image_base__>
   140002367:	31 c0                	xor    eax,eax
   140002369:	66 81 3a 4d 5a       	cmp    WORD PTR [rdx],0x5a4d
   14000236e:	75 10                	jne    140002380 <__mingw_GetSectionForAddress+0x20>
   140002370:	4c 63 42 3c          	movsxd r8,DWORD PTR [rdx+0x3c]
   140002374:	49 01 d0             	add    r8,rdx
   140002377:	41 81 38 50 45 00 00 	cmp    DWORD PTR [r8],0x4550
   14000237e:	74 08                	je     140002388 <__mingw_GetSectionForAddress+0x28>
   140002380:	c3                   	ret
   140002381:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140002388:	66 41 81 78 18 0b 02 	cmp    WORD PTR [r8+0x18],0x20b
   14000238f:	75 ef                	jne    140002380 <__mingw_GetSectionForAddress+0x20>
   140002391:	41 0f b7 40 14       	movzx  eax,WORD PTR [r8+0x14]
   140002396:	48 29 d1             	sub    rcx,rdx
   140002399:	49 8d 44 00 18       	lea    rax,[r8+rax*1+0x18]
   14000239e:	45 0f b7 40 06       	movzx  r8d,WORD PTR [r8+0x6]
   1400023a3:	66 45 85 c0          	test   r8w,r8w
   1400023a7:	74 34                	je     1400023dd <__mingw_GetSectionForAddress+0x7d>
   1400023a9:	41 8d 50 ff          	lea    edx,[r8-0x1]
   1400023ad:	48 8d 14 92          	lea    rdx,[rdx+rdx*4]
   1400023b1:	4c 8d 4c d0 28       	lea    r9,[rax+rdx*8+0x28]
   1400023b6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   1400023bd:	00 00 00 
   1400023c0:	44 8b 40 0c          	mov    r8d,DWORD PTR [rax+0xc]
   1400023c4:	4c 89 c2             	mov    rdx,r8
   1400023c7:	4c 39 c1             	cmp    rcx,r8
   1400023ca:	72 08                	jb     1400023d4 <__mingw_GetSectionForAddress+0x74>
   1400023cc:	03 50 08             	add    edx,DWORD PTR [rax+0x8]
   1400023cf:	48 39 d1             	cmp    rcx,rdx
   1400023d2:	72 ac                	jb     140002380 <__mingw_GetSectionForAddress+0x20>
   1400023d4:	48 83 c0 28          	add    rax,0x28
   1400023d8:	4c 39 c8             	cmp    rax,r9
   1400023db:	75 e3                	jne    1400023c0 <__mingw_GetSectionForAddress+0x60>
   1400023dd:	31 c0                	xor    eax,eax
   1400023df:	c3                   	ret

00000001400023e0 <__mingw_GetSectionCount>:
   1400023e0:	48 8b 05 b9 73 00 00 	mov    rax,QWORD PTR [rip+0x73b9]        # 1400097a0 <.refptr.__image_base__>
   1400023e7:	31 c9                	xor    ecx,ecx
   1400023e9:	66 81 38 4d 5a       	cmp    WORD PTR [rax],0x5a4d
   1400023ee:	75 0f                	jne    1400023ff <__mingw_GetSectionCount+0x1f>
   1400023f0:	48 63 50 3c          	movsxd rdx,DWORD PTR [rax+0x3c]
   1400023f4:	48 01 d0             	add    rax,rdx
   1400023f7:	81 38 50 45 00 00    	cmp    DWORD PTR [rax],0x4550
   1400023fd:	74 09                	je     140002408 <__mingw_GetSectionCount+0x28>
   1400023ff:	89 c8                	mov    eax,ecx
   140002401:	c3                   	ret
   140002402:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140002408:	66 81 78 18 0b 02    	cmp    WORD PTR [rax+0x18],0x20b
   14000240e:	75 ef                	jne    1400023ff <__mingw_GetSectionCount+0x1f>
   140002410:	0f b7 48 06          	movzx  ecx,WORD PTR [rax+0x6]
   140002414:	89 c8                	mov    eax,ecx
   140002416:	c3                   	ret
   140002417:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
   14000241e:	00 00 

0000000140002420 <_FindPESectionExec>:
   140002420:	4c 8b 05 79 73 00 00 	mov    r8,QWORD PTR [rip+0x7379]        # 1400097a0 <.refptr.__image_base__>
   140002427:	31 c0                	xor    eax,eax
   140002429:	66 41 81 38 4d 5a    	cmp    WORD PTR [r8],0x5a4d
   14000242f:	75 0f                	jne    140002440 <_FindPESectionExec+0x20>
   140002431:	49 63 50 3c          	movsxd rdx,DWORD PTR [r8+0x3c]
   140002435:	4c 01 c2             	add    rdx,r8
   140002438:	81 3a 50 45 00 00    	cmp    DWORD PTR [rdx],0x4550
   14000243e:	74 08                	je     140002448 <_FindPESectionExec+0x28>
   140002440:	c3                   	ret
   140002441:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140002448:	66 81 7a 18 0b 02    	cmp    WORD PTR [rdx+0x18],0x20b
   14000244e:	75 f0                	jne    140002440 <_FindPESectionExec+0x20>
   140002450:	0f b7 42 14          	movzx  eax,WORD PTR [rdx+0x14]
   140002454:	44 0f b7 42 06       	movzx  r8d,WORD PTR [rdx+0x6]
   140002459:	48 8d 44 02 18       	lea    rax,[rdx+rax*1+0x18]
   14000245e:	66 45 85 c0          	test   r8w,r8w
   140002462:	74 2c                	je     140002490 <_FindPESectionExec+0x70>
   140002464:	41 8d 50 ff          	lea    edx,[r8-0x1]
   140002468:	48 8d 14 92          	lea    rdx,[rdx+rdx*4]
   14000246c:	48 8d 54 d0 28       	lea    rdx,[rax+rdx*8+0x28]
   140002471:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140002478:	f6 40 27 20          	test   BYTE PTR [rax+0x27],0x20
   14000247c:	74 09                	je     140002487 <_FindPESectionExec+0x67>
   14000247e:	48 85 c9             	test   rcx,rcx
   140002481:	74 bd                	je     140002440 <_FindPESectionExec+0x20>
   140002483:	48 83 e9 01          	sub    rcx,0x1
   140002487:	48 83 c0 28          	add    rax,0x28
   14000248b:	48 39 c2             	cmp    rdx,rax
   14000248e:	75 e8                	jne    140002478 <_FindPESectionExec+0x58>
   140002490:	31 c0                	xor    eax,eax
   140002492:	c3                   	ret
   140002493:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
   14000249a:	00 00 00 00 
   14000249e:	66 90                	xchg   ax,ax

00000001400024a0 <_GetPEImageBase>:
   1400024a0:	48 8b 05 f9 72 00 00 	mov    rax,QWORD PTR [rip+0x72f9]        # 1400097a0 <.refptr.__image_base__>
   1400024a7:	31 d2                	xor    edx,edx
   1400024a9:	66 81 38 4d 5a       	cmp    WORD PTR [rax],0x5a4d
   1400024ae:	75 0f                	jne    1400024bf <_GetPEImageBase+0x1f>
   1400024b0:	48 63 48 3c          	movsxd rcx,DWORD PTR [rax+0x3c]
   1400024b4:	48 01 c1             	add    rcx,rax
   1400024b7:	81 39 50 45 00 00    	cmp    DWORD PTR [rcx],0x4550
   1400024bd:	74 09                	je     1400024c8 <_GetPEImageBase+0x28>
   1400024bf:	48 89 d0             	mov    rax,rdx
   1400024c2:	c3                   	ret
   1400024c3:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   1400024c8:	66 81 79 18 0b 02    	cmp    WORD PTR [rcx+0x18],0x20b
   1400024ce:	48 0f 44 d0          	cmove  rdx,rax
   1400024d2:	48 89 d0             	mov    rax,rdx
   1400024d5:	c3                   	ret
   1400024d6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   1400024dd:	00 00 00 

00000001400024e0 <_IsNonwritableInCurrentImage>:
   1400024e0:	48 8b 15 b9 72 00 00 	mov    rdx,QWORD PTR [rip+0x72b9]        # 1400097a0 <.refptr.__image_base__>
   1400024e7:	31 c0                	xor    eax,eax
   1400024e9:	66 81 3a 4d 5a       	cmp    WORD PTR [rdx],0x5a4d
   1400024ee:	75 10                	jne    140002500 <_IsNonwritableInCurrentImage+0x20>
   1400024f0:	4c 63 42 3c          	movsxd r8,DWORD PTR [rdx+0x3c]
   1400024f4:	49 01 d0             	add    r8,rdx
   1400024f7:	41 81 38 50 45 00 00 	cmp    DWORD PTR [r8],0x4550
   1400024fe:	74 08                	je     140002508 <_IsNonwritableInCurrentImage+0x28>
   140002500:	c3                   	ret
   140002501:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140002508:	66 41 81 78 18 0b 02 	cmp    WORD PTR [r8+0x18],0x20b
   14000250f:	75 ef                	jne    140002500 <_IsNonwritableInCurrentImage+0x20>
   140002511:	48 29 d1             	sub    rcx,rdx
   140002514:	45 0f b7 48 06       	movzx  r9d,WORD PTR [r8+0x6]
   140002519:	41 0f b7 50 14       	movzx  edx,WORD PTR [r8+0x14]
   14000251e:	49 8d 54 10 18       	lea    rdx,[r8+rdx*1+0x18]
   140002523:	66 45 85 c9          	test   r9w,r9w
   140002527:	74 d7                	je     140002500 <_IsNonwritableInCurrentImage+0x20>
   140002529:	41 8d 41 ff          	lea    eax,[r9-0x1]
   14000252d:	48 8d 04 80          	lea    rax,[rax+rax*4]
   140002531:	4c 8d 4c c2 28       	lea    r9,[rdx+rax*8+0x28]
   140002536:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   14000253d:	00 00 00 
   140002540:	44 8b 42 0c          	mov    r8d,DWORD PTR [rdx+0xc]
   140002544:	4c 89 c0             	mov    rax,r8
   140002547:	4c 39 c1             	cmp    rcx,r8
   14000254a:	72 08                	jb     140002554 <_IsNonwritableInCurrentImage+0x74>
   14000254c:	03 42 08             	add    eax,DWORD PTR [rdx+0x8]
   14000254f:	48 39 c1             	cmp    rcx,rax
   140002552:	72 0c                	jb     140002560 <_IsNonwritableInCurrentImage+0x80>
   140002554:	48 83 c2 28          	add    rdx,0x28
   140002558:	4c 39 ca             	cmp    rdx,r9
   14000255b:	75 e3                	jne    140002540 <_IsNonwritableInCurrentImage+0x60>
   14000255d:	31 c0                	xor    eax,eax
   14000255f:	c3                   	ret
   140002560:	8b 42 24             	mov    eax,DWORD PTR [rdx+0x24]
   140002563:	f7 d0                	not    eax
   140002565:	c1 e8 1f             	shr    eax,0x1f
   140002568:	c3                   	ret
   140002569:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000140002570 <__mingw_enum_import_library_names>:
   140002570:	4c 8b 1d 29 72 00 00 	mov    r11,QWORD PTR [rip+0x7229]        # 1400097a0 <.refptr.__image_base__>
   140002577:	45 31 c0             	xor    r8d,r8d
   14000257a:	66 41 81 3b 4d 5a    	cmp    WORD PTR [r11],0x5a4d
   140002580:	41 89 ca             	mov    r10d,ecx
   140002583:	75 0f                	jne    140002594 <__mingw_enum_import_library_names+0x24>
   140002585:	49 63 4b 3c          	movsxd rcx,DWORD PTR [r11+0x3c]
   140002589:	4c 01 d9             	add    rcx,r11
   14000258c:	81 39 50 45 00 00    	cmp    DWORD PTR [rcx],0x4550
   140002592:	74 0c                	je     1400025a0 <__mingw_enum_import_library_names+0x30>
   140002594:	4c 89 c0             	mov    rax,r8
   140002597:	c3                   	ret
   140002598:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   14000259f:	00 
   1400025a0:	66 81 79 18 0b 02    	cmp    WORD PTR [rcx+0x18],0x20b
   1400025a6:	75 ec                	jne    140002594 <__mingw_enum_import_library_names+0x24>
   1400025a8:	8b 81 90 00 00 00    	mov    eax,DWORD PTR [rcx+0x90]
   1400025ae:	85 c0                	test   eax,eax
   1400025b0:	74 e2                	je     140002594 <__mingw_enum_import_library_names+0x24>
   1400025b2:	0f b7 51 14          	movzx  edx,WORD PTR [rcx+0x14]
   1400025b6:	44 0f b7 49 06       	movzx  r9d,WORD PTR [rcx+0x6]
   1400025bb:	48 8d 54 11 18       	lea    rdx,[rcx+rdx*1+0x18]
   1400025c0:	66 45 85 c9          	test   r9w,r9w
   1400025c4:	74 ce                	je     140002594 <__mingw_enum_import_library_names+0x24>
   1400025c6:	41 8d 49 ff          	lea    ecx,[r9-0x1]
   1400025ca:	48 8d 0c 89          	lea    rcx,[rcx+rcx*4]
   1400025ce:	4c 8d 4c ca 28       	lea    r9,[rdx+rcx*8+0x28]
   1400025d3:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   1400025d8:	44 8b 42 0c          	mov    r8d,DWORD PTR [rdx+0xc]
   1400025dc:	4c 89 c1             	mov    rcx,r8
   1400025df:	4c 39 c0             	cmp    rax,r8
   1400025e2:	72 08                	jb     1400025ec <__mingw_enum_import_library_names+0x7c>
   1400025e4:	03 4a 08             	add    ecx,DWORD PTR [rdx+0x8]
   1400025e7:	48 39 c8             	cmp    rax,rcx
   1400025ea:	72 14                	jb     140002600 <__mingw_enum_import_library_names+0x90>
   1400025ec:	48 83 c2 28          	add    rdx,0x28
   1400025f0:	49 39 d1             	cmp    r9,rdx
   1400025f3:	75 e3                	jne    1400025d8 <__mingw_enum_import_library_names+0x68>
   1400025f5:	45 31 c0             	xor    r8d,r8d
   1400025f8:	4c 89 c0             	mov    rax,r8
   1400025fb:	c3                   	ret
   1400025fc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140002600:	4c 01 d8             	add    rax,r11
   140002603:	eb 0b                	jmp    140002610 <__mingw_enum_import_library_names+0xa0>
   140002605:	0f 1f 00             	nop    DWORD PTR [rax]
   140002608:	41 83 ea 01          	sub    r10d,0x1
   14000260c:	48 83 c0 14          	add    rax,0x14
   140002610:	8b 48 04             	mov    ecx,DWORD PTR [rax+0x4]
   140002613:	85 c9                	test   ecx,ecx
   140002615:	75 07                	jne    14000261e <__mingw_enum_import_library_names+0xae>
   140002617:	8b 50 0c             	mov    edx,DWORD PTR [rax+0xc]
   14000261a:	85 d2                	test   edx,edx
   14000261c:	74 d7                	je     1400025f5 <__mingw_enum_import_library_names+0x85>
   14000261e:	45 85 d2             	test   r10d,r10d
   140002621:	7f e5                	jg     140002608 <__mingw_enum_import_library_names+0x98>
   140002623:	44 8b 40 0c          	mov    r8d,DWORD PTR [rax+0xc]
   140002627:	4d 01 d8             	add    r8,r11
   14000262a:	4c 89 c0             	mov    rax,r8
   14000262d:	c3                   	ret
   14000262e:	90                   	nop
   14000262f:	90                   	nop

0000000140002630 <___chkstk_ms>:
   140002630:	51                   	push   rcx
   140002631:	50                   	push   rax
   140002632:	48 3d 00 10 00 00    	cmp    rax,0x1000
   140002638:	48 8d 4c 24 18       	lea    rcx,[rsp+0x18]
   14000263d:	72 19                	jb     140002658 <___chkstk_ms+0x28>
   14000263f:	48 81 e9 00 10 00 00 	sub    rcx,0x1000
   140002646:	48 83 09 00          	or     QWORD PTR [rcx],0x0
   14000264a:	48 2d 00 10 00 00    	sub    rax,0x1000
   140002650:	48 3d 00 10 00 00    	cmp    rax,0x1000
   140002656:	77 e7                	ja     14000263f <___chkstk_ms+0xf>
   140002658:	48 29 c1             	sub    rcx,rax
   14000265b:	48 83 09 00          	or     QWORD PTR [rcx],0x0
   14000265f:	58                   	pop    rax
   140002660:	59                   	pop    rcx
   140002661:	c3                   	ret
   140002662:	90                   	nop
   140002663:	90                   	nop
   140002664:	90                   	nop
   140002665:	90                   	nop
   140002666:	90                   	nop
   140002667:	90                   	nop
   140002668:	90                   	nop
   140002669:	90                   	nop
   14000266a:	90                   	nop
   14000266b:	90                   	nop
   14000266c:	90                   	nop
   14000266d:	90                   	nop
   14000266e:	90                   	nop
   14000266f:	90                   	nop

0000000140002670 <__mingw_vfprintf>:
   140002670:	55                   	push   rbp
   140002671:	57                   	push   rdi
   140002672:	56                   	push   rsi
   140002673:	53                   	push   rbx
   140002674:	48 83 ec 38          	sub    rsp,0x38
   140002678:	48 8d 6c 24 30       	lea    rbp,[rsp+0x30]
   14000267d:	4c 89 c7             	mov    rdi,r8
   140002680:	48 89 cb             	mov    rbx,rcx
   140002683:	48 89 d6             	mov    rsi,rdx
   140002686:	e8 35 4d 00 00       	call   1400073c0 <_lock_file>
   14000268b:	48 89 7c 24 20       	mov    QWORD PTR [rsp+0x20],rdi
   140002690:	49 89 f1             	mov    r9,rsi
   140002693:	45 31 c0             	xor    r8d,r8d
   140002696:	48 89 da             	mov    rdx,rbx
   140002699:	b9 00 60 00 00       	mov    ecx,0x6000
   14000269e:	e8 cd 1b 00 00       	call   140004270 <__mingw_pformat>
   1400026a3:	48 89 d9             	mov    rcx,rbx
   1400026a6:	89 c6                	mov    esi,eax
   1400026a8:	e8 83 4d 00 00       	call   140007430 <_unlock_file>
   1400026ad:	89 f0                	mov    eax,esi
   1400026af:	48 83 c4 38          	add    rsp,0x38
   1400026b3:	5b                   	pop    rbx
   1400026b4:	5e                   	pop    rsi
   1400026b5:	5f                   	pop    rdi
   1400026b6:	5d                   	pop    rbp
   1400026b7:	c3                   	ret
   1400026b8:	90                   	nop
   1400026b9:	90                   	nop
   1400026ba:	90                   	nop
   1400026bb:	90                   	nop
   1400026bc:	90                   	nop
   1400026bd:	90                   	nop
   1400026be:	90                   	nop
   1400026bf:	90                   	nop

00000001400026c0 <__pformat_cvt>:
   1400026c0:	55                   	push   rbp
   1400026c1:	48 89 e5             	mov    rbp,rsp
   1400026c4:	48 83 ec 60          	sub    rsp,0x60
   1400026c8:	48 8b 02             	mov    rax,QWORD PTR [rdx]
   1400026cb:	8b 52 08             	mov    edx,DWORD PTR [rdx+0x8]
   1400026ce:	41 89 d3             	mov    r11d,edx
   1400026d1:	41 89 ca             	mov    r10d,ecx
   1400026d4:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
   1400026d8:	48 89 d1             	mov    rcx,rdx
   1400026db:	89 55 f8             	mov    DWORD PTR [rbp-0x8],edx
   1400026de:	66 41 81 e3 ff 7f    	and    r11w,0x7fff
   1400026e4:	75 6a                	jne    140002750 <__pformat_cvt+0x90>
   1400026e6:	48 89 c2             	mov    rdx,rax
   1400026e9:	48 c1 ea 20          	shr    rdx,0x20
   1400026ed:	09 d0                	or     eax,edx
   1400026ef:	0f 84 8b 00 00 00    	je     140002780 <__pformat_cvt+0xc0>
   1400026f5:	85 d2                	test   edx,edx
   1400026f7:	0f 89 93 00 00 00    	jns    140002790 <__pformat_cvt+0xd0>
   1400026fd:	41 8d 93 c2 bf ff ff 	lea    edx,[r11-0x403e]
   140002704:	b8 01 00 00 00       	mov    eax,0x1
   140002709:	0f bf d2             	movsx  edx,dx
   14000270c:	89 45 e4             	mov    DWORD PTR [rbp-0x1c],eax
   14000270f:	81 e1 00 80 00 00    	and    ecx,0x8000
   140002715:	48 8b 45 30          	mov    rax,QWORD PTR [rbp+0x30]
   140002719:	89 08                	mov    DWORD PTR [rax],ecx
   14000271b:	48 8d 45 e8          	lea    rax,[rbp-0x18]
   14000271f:	48 8d 0d 1a 59 00 00 	lea    rcx,[rip+0x591a]        # 140008040 <fpi.0>
   140002726:	4c 89 4c 24 30       	mov    QWORD PTR [rsp+0x30],r9
   14000272b:	4c 8d 4d e4          	lea    r9,[rbp-0x1c]
   14000272f:	44 89 44 24 28       	mov    DWORD PTR [rsp+0x28],r8d
   140002734:	4c 8d 45 f0          	lea    r8,[rbp-0x10]
   140002738:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
   14000273d:	44 89 54 24 20       	mov    DWORD PTR [rsp+0x20],r10d
   140002742:	e8 a9 27 00 00       	call   140004ef0 <__gdtoa>
   140002747:	48 83 c4 60          	add    rsp,0x60
   14000274b:	5d                   	pop    rbp
   14000274c:	c3                   	ret
   14000274d:	0f 1f 00             	nop    DWORD PTR [rax]
   140002750:	66 41 81 fb ff 7f    	cmp    r11w,0x7fff
   140002756:	75 a5                	jne    1400026fd <__pformat_cvt+0x3d>
   140002758:	48 89 c2             	mov    rdx,rax
   14000275b:	48 c1 ea 20          	shr    rdx,0x20
   14000275f:	81 e2 ff ff ff 7f    	and    edx,0x7fffffff
   140002765:	09 c2                	or     edx,eax
   140002767:	74 37                	je     1400027a0 <__pformat_cvt+0xe0>
   140002769:	c7 45 e4 04 00 00 00 	mov    DWORD PTR [rbp-0x1c],0x4
   140002770:	31 d2                	xor    edx,edx
   140002772:	31 c9                	xor    ecx,ecx
   140002774:	eb 9f                	jmp    140002715 <__pformat_cvt+0x55>
   140002776:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   14000277d:	00 00 00 
   140002780:	31 c0                	xor    eax,eax
   140002782:	31 d2                	xor    edx,edx
   140002784:	eb 86                	jmp    14000270c <__pformat_cvt+0x4c>
   140002786:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   14000278d:	00 00 00 
   140002790:	b8 02 00 00 00       	mov    eax,0x2
   140002795:	ba c3 bf ff ff       	mov    edx,0xffffbfc3
   14000279a:	e9 6d ff ff ff       	jmp    14000270c <__pformat_cvt+0x4c>
   14000279f:	90                   	nop
   1400027a0:	b8 03 00 00 00       	mov    eax,0x3
   1400027a5:	31 d2                	xor    edx,edx
   1400027a7:	e9 60 ff ff ff       	jmp    14000270c <__pformat_cvt+0x4c>
   1400027ac:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

00000001400027b0 <__pformat_putc>:
   1400027b0:	55                   	push   rbp
   1400027b1:	53                   	push   rbx
   1400027b2:	48 83 ec 28          	sub    rsp,0x28
   1400027b6:	48 8d 6c 24 20       	lea    rbp,[rsp+0x20]
   1400027bb:	48 89 d3             	mov    rbx,rdx
   1400027be:	8b 52 08             	mov    edx,DWORD PTR [rdx+0x8]
   1400027c1:	f6 c6 40             	test   dh,0x40
   1400027c4:	75 08                	jne    1400027ce <__pformat_putc+0x1e>
   1400027c6:	8b 43 24             	mov    eax,DWORD PTR [rbx+0x24]
   1400027c9:	39 43 28             	cmp    DWORD PTR [rbx+0x28],eax
   1400027cc:	7e 12                	jle    1400027e0 <__pformat_putc+0x30>
   1400027ce:	48 8b 03             	mov    rax,QWORD PTR [rbx]
   1400027d1:	80 e6 20             	and    dh,0x20
   1400027d4:	75 1a                	jne    1400027f0 <__pformat_putc+0x40>
   1400027d6:	48 63 53 24          	movsxd rdx,DWORD PTR [rbx+0x24]
   1400027da:	88 0c 10             	mov    BYTE PTR [rax+rdx*1],cl
   1400027dd:	8b 43 24             	mov    eax,DWORD PTR [rbx+0x24]
   1400027e0:	83 c0 01             	add    eax,0x1
   1400027e3:	89 43 24             	mov    DWORD PTR [rbx+0x24],eax
   1400027e6:	48 83 c4 28          	add    rsp,0x28
   1400027ea:	5b                   	pop    rbx
   1400027eb:	5d                   	pop    rbp
   1400027ec:	c3                   	ret
   1400027ed:	0f 1f 00             	nop    DWORD PTR [rax]
   1400027f0:	48 89 c2             	mov    rdx,rax
   1400027f3:	e8 c8 52 00 00       	call   140007ac0 <fputc>
   1400027f8:	8b 43 24             	mov    eax,DWORD PTR [rbx+0x24]
   1400027fb:	83 c0 01             	add    eax,0x1
   1400027fe:	89 43 24             	mov    DWORD PTR [rbx+0x24],eax
   140002801:	48 83 c4 28          	add    rsp,0x28
   140002805:	5b                   	pop    rbx
   140002806:	5d                   	pop    rbp
   140002807:	c3                   	ret
   140002808:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   14000280f:	00 

0000000140002810 <__pformat_wputchars>:
   140002810:	55                   	push   rbp
   140002811:	41 57                	push   r15
   140002813:	41 56                	push   r14
   140002815:	41 55                	push   r13
   140002817:	41 54                	push   r12
   140002819:	57                   	push   rdi
   14000281a:	56                   	push   rsi
   14000281b:	53                   	push   rbx
   14000281c:	48 83 ec 58          	sub    rsp,0x58
   140002820:	48 8d 6c 24 50       	lea    rbp,[rsp+0x50]
   140002825:	48 8d 45 e8          	lea    rax,[rbp-0x18]
   140002829:	48 8d 7d f0          	lea    rdi,[rbp-0x10]
   14000282d:	89 d6                	mov    esi,edx
   14000282f:	4c 89 c3             	mov    rbx,r8
   140002832:	31 d2                	xor    edx,edx
   140002834:	49 89 cc             	mov    r12,rcx
   140002837:	49 89 c0             	mov    r8,rax
   14000283a:	48 89 f9             	mov    rcx,rdi
   14000283d:	48 89 45 d8          	mov    QWORD PTR [rbp-0x28],rax
   140002841:	e8 3a 4d 00 00       	call   140007580 <wcrtomb>
   140002846:	8b 43 10             	mov    eax,DWORD PTR [rbx+0x10]
   140002849:	39 c6                	cmp    esi,eax
   14000284b:	89 c2                	mov    edx,eax
   14000284d:	0f 4e d6             	cmovle edx,esi
   140002850:	85 c0                	test   eax,eax
   140002852:	8b 43 0c             	mov    eax,DWORD PTR [rbx+0xc]
   140002855:	0f 49 f2             	cmovns esi,edx
   140002858:	39 f0                	cmp    eax,esi
   14000285a:	0f 8f eb 00 00 00    	jg     14000294b <__pformat_wputchars+0x13b>
   140002860:	c7 43 0c ff ff ff ff 	mov    DWORD PTR [rbx+0xc],0xffffffff
   140002867:	44 8d 6e ff          	lea    r13d,[rsi-0x1]
   14000286b:	85 f6                	test   esi,esi
   14000286d:	0f 8e 32 01 00 00    	jle    1400029a5 <__pformat_wputchars+0x195>
   140002873:	31 f6                	xor    esi,esi
   140002875:	41 83 c5 01          	add    r13d,0x1
   140002879:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140002880:	41 0f b7 14 74       	movzx  edx,WORD PTR [r12+rsi*2]
   140002885:	4c 8b 45 d8          	mov    r8,QWORD PTR [rbp-0x28]
   140002889:	48 89 f9             	mov    rcx,rdi
   14000288c:	e8 ef 4c 00 00       	call   140007580 <wcrtomb>
   140002891:	85 c0                	test   eax,eax
   140002893:	0f 8e 94 00 00 00    	jle    14000292d <__pformat_wputchars+0x11d>
   140002899:	83 e8 01             	sub    eax,0x1
   14000289c:	49 89 ff             	mov    r15,rdi
   14000289f:	4c 8d 74 07 01       	lea    r14,[rdi+rax*1+0x1]
   1400028a4:	eb 1f                	jmp    1400028c5 <__pformat_wputchars+0xb5>
   1400028a6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   1400028ad:	00 00 00 
   1400028b0:	48 63 53 24          	movsxd rdx,DWORD PTR [rbx+0x24]
   1400028b4:	88 0c 10             	mov    BYTE PTR [rax+rdx*1],cl
   1400028b7:	8b 43 24             	mov    eax,DWORD PTR [rbx+0x24]
   1400028ba:	83 c0 01             	add    eax,0x1
   1400028bd:	89 43 24             	mov    DWORD PTR [rbx+0x24],eax
   1400028c0:	4d 39 f7             	cmp    r15,r14
   1400028c3:	74 37                	je     1400028fc <__pformat_wputchars+0xec>
   1400028c5:	8b 53 08             	mov    edx,DWORD PTR [rbx+0x8]
   1400028c8:	49 83 c7 01          	add    r15,0x1
   1400028cc:	f6 c6 40             	test   dh,0x40
   1400028cf:	75 08                	jne    1400028d9 <__pformat_wputchars+0xc9>
   1400028d1:	8b 43 24             	mov    eax,DWORD PTR [rbx+0x24]
   1400028d4:	39 43 28             	cmp    DWORD PTR [rbx+0x28],eax
   1400028d7:	7e e1                	jle    1400028ba <__pformat_wputchars+0xaa>
   1400028d9:	41 0f be 4f ff       	movsx  ecx,BYTE PTR [r15-0x1]
   1400028de:	48 8b 03             	mov    rax,QWORD PTR [rbx]
   1400028e1:	80 e6 20             	and    dh,0x20
   1400028e4:	74 ca                	je     1400028b0 <__pformat_wputchars+0xa0>
   1400028e6:	48 89 c2             	mov    rdx,rax
   1400028e9:	e8 d2 51 00 00       	call   140007ac0 <fputc>
   1400028ee:	8b 43 24             	mov    eax,DWORD PTR [rbx+0x24]
   1400028f1:	83 c0 01             	add    eax,0x1
   1400028f4:	89 43 24             	mov    DWORD PTR [rbx+0x24],eax
   1400028f7:	4d 39 f7             	cmp    r15,r14
   1400028fa:	75 c9                	jne    1400028c5 <__pformat_wputchars+0xb5>
   1400028fc:	48 83 c6 01          	add    rsi,0x1
   140002900:	44 89 e8             	mov    eax,r13d
   140002903:	29 f0                	sub    eax,esi
   140002905:	85 c0                	test   eax,eax
   140002907:	0f 8f 73 ff ff ff    	jg     140002880 <__pformat_wputchars+0x70>
   14000290d:	8b 43 0c             	mov    eax,DWORD PTR [rbx+0xc]
   140002910:	8d 50 ff             	lea    edx,[rax-0x1]
   140002913:	89 53 0c             	mov    DWORD PTR [rbx+0xc],edx
   140002916:	85 c0                	test   eax,eax
   140002918:	7e 20                	jle    14000293a <__pformat_wputchars+0x12a>
   14000291a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140002920:	48 89 da             	mov    rdx,rbx
   140002923:	b9 20 00 00 00       	mov    ecx,0x20
   140002928:	e8 83 fe ff ff       	call   1400027b0 <__pformat_putc>
   14000292d:	8b 43 0c             	mov    eax,DWORD PTR [rbx+0xc]
   140002930:	8d 50 ff             	lea    edx,[rax-0x1]
   140002933:	89 53 0c             	mov    DWORD PTR [rbx+0xc],edx
   140002936:	85 c0                	test   eax,eax
   140002938:	7f e6                	jg     140002920 <__pformat_wputchars+0x110>
   14000293a:	48 83 c4 58          	add    rsp,0x58
   14000293e:	5b                   	pop    rbx
   14000293f:	5e                   	pop    rsi
   140002940:	5f                   	pop    rdi
   140002941:	41 5c                	pop    r12
   140002943:	41 5d                	pop    r13
   140002945:	41 5e                	pop    r14
   140002947:	41 5f                	pop    r15
   140002949:	5d                   	pop    rbp
   14000294a:	c3                   	ret
   14000294b:	29 f0                	sub    eax,esi
   14000294d:	89 43 0c             	mov    DWORD PTR [rbx+0xc],eax
   140002950:	f6 43 09 04          	test   BYTE PTR [rbx+0x9],0x4
   140002954:	75 3a                	jne    140002990 <__pformat_wputchars+0x180>
   140002956:	83 e8 01             	sub    eax,0x1
   140002959:	89 43 0c             	mov    DWORD PTR [rbx+0xc],eax
   14000295c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140002960:	48 89 da             	mov    rdx,rbx
   140002963:	b9 20 00 00 00       	mov    ecx,0x20
   140002968:	e8 43 fe ff ff       	call   1400027b0 <__pformat_putc>
   14000296d:	8b 43 0c             	mov    eax,DWORD PTR [rbx+0xc]
   140002970:	8d 50 ff             	lea    edx,[rax-0x1]
   140002973:	89 53 0c             	mov    DWORD PTR [rbx+0xc],edx
   140002976:	85 c0                	test   eax,eax
   140002978:	75 e6                	jne    140002960 <__pformat_wputchars+0x150>
   14000297a:	44 8d 6e ff          	lea    r13d,[rsi-0x1]
   14000297e:	85 f6                	test   esi,esi
   140002980:	0f 8f ed fe ff ff    	jg     140002873 <__pformat_wputchars+0x63>
   140002986:	eb a5                	jmp    14000292d <__pformat_wputchars+0x11d>
   140002988:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   14000298f:	00 
   140002990:	44 8d 6e ff          	lea    r13d,[rsi-0x1]
   140002994:	85 f6                	test   esi,esi
   140002996:	0f 8f d7 fe ff ff    	jg     140002873 <__pformat_wputchars+0x63>
   14000299c:	83 6b 0c 01          	sub    DWORD PTR [rbx+0xc],0x1
   1400029a0:	e9 7b ff ff ff       	jmp    140002920 <__pformat_wputchars+0x110>
   1400029a5:	c7 43 0c fe ff ff ff 	mov    DWORD PTR [rbx+0xc],0xfffffffe
   1400029ac:	eb 8c                	jmp    14000293a <__pformat_wputchars+0x12a>
   1400029ae:	66 90                	xchg   ax,ax

00000001400029b0 <__pformat_putchars>:
   1400029b0:	55                   	push   rbp
   1400029b1:	57                   	push   rdi
   1400029b2:	56                   	push   rsi
   1400029b3:	53                   	push   rbx
   1400029b4:	48 83 ec 28          	sub    rsp,0x28
   1400029b8:	48 8d 6c 24 20       	lea    rbp,[rsp+0x20]
   1400029bd:	41 8b 40 10          	mov    eax,DWORD PTR [r8+0x10]
   1400029c1:	89 d7                	mov    edi,edx
   1400029c3:	39 c2                	cmp    edx,eax
   1400029c5:	89 c2                	mov    edx,eax
   1400029c7:	48 89 ce             	mov    rsi,rcx
   1400029ca:	0f 4e d7             	cmovle edx,edi
   1400029cd:	85 c0                	test   eax,eax
   1400029cf:	41 8b 40 0c          	mov    eax,DWORD PTR [r8+0xc]
   1400029d3:	4c 89 c3             	mov    rbx,r8
   1400029d6:	0f 49 fa             	cmovns edi,edx
   1400029d9:	39 f8                	cmp    eax,edi
   1400029db:	0f 8f b7 00 00 00    	jg     140002a98 <__pformat_putchars+0xe8>
   1400029e1:	41 c7 40 0c ff ff ff 	mov    DWORD PTR [r8+0xc],0xffffffff
   1400029e8:	ff 
   1400029e9:	8d 57 ff             	lea    edx,[rdi-0x1]
   1400029ec:	85 ff                	test   edi,edi
   1400029ee:	0f 84 91 00 00 00    	je     140002a85 <__pformat_putchars+0xd5>
   1400029f4:	8b 43 08             	mov    eax,DWORD PTR [rbx+0x8]
   1400029f7:	8d 7a 01             	lea    edi,[rdx+0x1]
   1400029fa:	48 01 f7             	add    rdi,rsi
   1400029fd:	eb 19                	jmp    140002a18 <__pformat_putchars+0x68>
   1400029ff:	90                   	nop
   140002a00:	48 63 43 24          	movsxd rax,DWORD PTR [rbx+0x24]
   140002a04:	88 0c 02             	mov    BYTE PTR [rdx+rax*1],cl
   140002a07:	8b 53 24             	mov    edx,DWORD PTR [rbx+0x24]
   140002a0a:	83 c2 01             	add    edx,0x1
   140002a0d:	89 53 24             	mov    DWORD PTR [rbx+0x24],edx
   140002a10:	48 39 fe             	cmp    rsi,rdi
   140002a13:	74 3c                	je     140002a51 <__pformat_putchars+0xa1>
   140002a15:	8b 43 08             	mov    eax,DWORD PTR [rbx+0x8]
   140002a18:	48 83 c6 01          	add    rsi,0x1
   140002a1c:	f6 c4 40             	test   ah,0x40
   140002a1f:	75 08                	jne    140002a29 <__pformat_putchars+0x79>
   140002a21:	8b 53 24             	mov    edx,DWORD PTR [rbx+0x24]
   140002a24:	39 53 28             	cmp    DWORD PTR [rbx+0x28],edx
   140002a27:	7e e1                	jle    140002a0a <__pformat_putchars+0x5a>
   140002a29:	0f be 4e ff          	movsx  ecx,BYTE PTR [rsi-0x1]
   140002a2d:	48 8b 13             	mov    rdx,QWORD PTR [rbx]
   140002a30:	f6 c4 20             	test   ah,0x20
   140002a33:	74 cb                	je     140002a00 <__pformat_putchars+0x50>
   140002a35:	e8 86 50 00 00       	call   140007ac0 <fputc>
   140002a3a:	8b 53 24             	mov    edx,DWORD PTR [rbx+0x24]
   140002a3d:	eb cb                	jmp    140002a0a <__pformat_putchars+0x5a>
   140002a3f:	90                   	nop
   140002a40:	48 63 43 24          	movsxd rax,DWORD PTR [rbx+0x24]
   140002a44:	c6 04 02 20          	mov    BYTE PTR [rdx+rax*1],0x20
   140002a48:	8b 53 24             	mov    edx,DWORD PTR [rbx+0x24]
   140002a4b:	83 c2 01             	add    edx,0x1
   140002a4e:	89 53 24             	mov    DWORD PTR [rbx+0x24],edx
   140002a51:	8b 43 0c             	mov    eax,DWORD PTR [rbx+0xc]
   140002a54:	8d 50 ff             	lea    edx,[rax-0x1]
   140002a57:	89 53 0c             	mov    DWORD PTR [rbx+0xc],edx
   140002a5a:	85 c0                	test   eax,eax
   140002a5c:	7e 2e                	jle    140002a8c <__pformat_putchars+0xdc>
   140002a5e:	8b 43 08             	mov    eax,DWORD PTR [rbx+0x8]
   140002a61:	f6 c4 40             	test   ah,0x40
   140002a64:	75 08                	jne    140002a6e <__pformat_putchars+0xbe>
   140002a66:	8b 53 24             	mov    edx,DWORD PTR [rbx+0x24]
   140002a69:	39 53 28             	cmp    DWORD PTR [rbx+0x28],edx
   140002a6c:	7e dd                	jle    140002a4b <__pformat_putchars+0x9b>
   140002a6e:	48 8b 13             	mov    rdx,QWORD PTR [rbx]
   140002a71:	f6 c4 20             	test   ah,0x20
   140002a74:	74 ca                	je     140002a40 <__pformat_putchars+0x90>
   140002a76:	b9 20 00 00 00       	mov    ecx,0x20
   140002a7b:	e8 40 50 00 00       	call   140007ac0 <fputc>
   140002a80:	8b 53 24             	mov    edx,DWORD PTR [rbx+0x24]
   140002a83:	eb c6                	jmp    140002a4b <__pformat_putchars+0x9b>
   140002a85:	c7 43 0c fe ff ff ff 	mov    DWORD PTR [rbx+0xc],0xfffffffe
   140002a8c:	48 83 c4 28          	add    rsp,0x28
   140002a90:	5b                   	pop    rbx
   140002a91:	5e                   	pop    rsi
   140002a92:	5f                   	pop    rdi
   140002a93:	5d                   	pop    rbp
   140002a94:	c3                   	ret
   140002a95:	0f 1f 00             	nop    DWORD PTR [rax]
   140002a98:	29 f8                	sub    eax,edi
   140002a9a:	41 89 40 0c          	mov    DWORD PTR [r8+0xc],eax
   140002a9e:	89 c2                	mov    edx,eax
   140002aa0:	41 8b 40 08          	mov    eax,DWORD PTR [r8+0x8]
   140002aa4:	f6 c4 04             	test   ah,0x4
   140002aa7:	75 37                	jne    140002ae0 <__pformat_putchars+0x130>
   140002aa9:	8d 42 ff             	lea    eax,[rdx-0x1]
   140002aac:	41 89 40 0c          	mov    DWORD PTR [r8+0xc],eax
   140002ab0:	48 89 da             	mov    rdx,rbx
   140002ab3:	b9 20 00 00 00       	mov    ecx,0x20
   140002ab8:	e8 f3 fc ff ff       	call   1400027b0 <__pformat_putc>
   140002abd:	8b 43 0c             	mov    eax,DWORD PTR [rbx+0xc]
   140002ac0:	8d 50 ff             	lea    edx,[rax-0x1]
   140002ac3:	89 53 0c             	mov    DWORD PTR [rbx+0xc],edx
   140002ac6:	85 c0                	test   eax,eax
   140002ac8:	75 e6                	jne    140002ab0 <__pformat_putchars+0x100>
   140002aca:	8d 57 ff             	lea    edx,[rdi-0x1]
   140002acd:	85 ff                	test   edi,edi
   140002acf:	0f 85 1f ff ff ff    	jne    1400029f4 <__pformat_putchars+0x44>
   140002ad5:	e9 77 ff ff ff       	jmp    140002a51 <__pformat_putchars+0xa1>
   140002ada:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140002ae0:	8d 57 ff             	lea    edx,[rdi-0x1]
   140002ae3:	85 ff                	test   edi,edi
   140002ae5:	0f 85 0c ff ff ff    	jne    1400029f7 <__pformat_putchars+0x47>
   140002aeb:	83 6b 0c 01          	sub    DWORD PTR [rbx+0xc],0x1
   140002aef:	e9 6d ff ff ff       	jmp    140002a61 <__pformat_putchars+0xb1>
   140002af4:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
   140002afb:	00 00 00 00 
   140002aff:	90                   	nop

0000000140002b00 <__pformat_puts>:
   140002b00:	55                   	push   rbp
   140002b01:	56                   	push   rsi
   140002b02:	53                   	push   rbx
   140002b03:	48 83 ec 20          	sub    rsp,0x20
   140002b07:	48 8d 6c 24 20       	lea    rbp,[rsp+0x20]
   140002b0c:	48 8d 05 9d 68 00 00 	lea    rax,[rip+0x689d]        # 1400093b0 <.rdata>
   140002b13:	48 89 cb             	mov    rbx,rcx
   140002b16:	48 85 c9             	test   rcx,rcx
   140002b19:	48 89 d6             	mov    rsi,rdx
   140002b1c:	48 63 52 10          	movsxd rdx,DWORD PTR [rdx+0x10]
   140002b20:	48 0f 44 d8          	cmove  rbx,rax
   140002b24:	48 89 d9             	mov    rcx,rbx
   140002b27:	85 d2                	test   edx,edx
   140002b29:	78 1d                	js     140002b48 <__pformat_puts+0x48>
   140002b2b:	e8 10 48 00 00       	call   140007340 <strnlen>
   140002b30:	49 89 f0             	mov    r8,rsi
   140002b33:	89 c2                	mov    edx,eax
   140002b35:	48 89 d9             	mov    rcx,rbx
   140002b38:	48 83 c4 20          	add    rsp,0x20
   140002b3c:	5b                   	pop    rbx
   140002b3d:	5e                   	pop    rsi
   140002b3e:	5d                   	pop    rbp
   140002b3f:	e9 6c fe ff ff       	jmp    1400029b0 <__pformat_putchars>
   140002b44:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140002b48:	e8 bb 4f 00 00       	call   140007b08 <strlen>
   140002b4d:	eb e1                	jmp    140002b30 <__pformat_puts+0x30>
   140002b4f:	90                   	nop

0000000140002b50 <__pformat_emit_inf_or_nan>:
   140002b50:	55                   	push   rbp
   140002b51:	48 89 e5             	mov    rbp,rsp
   140002b54:	48 83 ec 30          	sub    rsp,0x30
   140002b58:	45 8b 50 08          	mov    r10d,DWORD PTR [r8+0x8]
   140002b5c:	41 c7 40 10 ff ff ff 	mov    DWORD PTR [r8+0x10],0xffffffff
   140002b63:	ff 
   140002b64:	85 c9                	test   ecx,ecx
   140002b66:	75 58                	jne    140002bc0 <__pformat_emit_inf_or_nan+0x70>
   140002b68:	b8 2b 00 00 00       	mov    eax,0x2b
   140002b6d:	41 f7 c2 00 01 00 00 	test   r10d,0x100
   140002b74:	75 4f                	jne    140002bc5 <__pformat_emit_inf_or_nan+0x75>
   140002b76:	41 f6 c2 40          	test   r10b,0x40
   140002b7a:	74 5c                	je     140002bd8 <__pformat_emit_inf_or_nan+0x88>
   140002b7c:	b8 20 00 00 00       	mov    eax,0x20
   140002b81:	4c 8d 4d fd          	lea    r9,[rbp-0x3]
   140002b85:	4c 8d 5d fc          	lea    r11,[rbp-0x4]
   140002b89:	88 45 fc             	mov    BYTE PTR [rbp-0x4],al
   140002b8c:	41 83 e2 20          	and    r10d,0x20
   140002b90:	31 c9                	xor    ecx,ecx
   140002b92:	0f b6 04 0a          	movzx  eax,BYTE PTR [rdx+rcx*1]
   140002b96:	83 e0 df             	and    eax,0xffffffdf
   140002b99:	44 09 d0             	or     eax,r10d
   140002b9c:	41 88 04 09          	mov    BYTE PTR [r9+rcx*1],al
   140002ba0:	48 83 c1 01          	add    rcx,0x1
   140002ba4:	48 83 f9 03          	cmp    rcx,0x3
   140002ba8:	75 e8                	jne    140002b92 <__pformat_emit_inf_or_nan+0x42>
   140002baa:	49 8d 51 03          	lea    rdx,[r9+0x3]
   140002bae:	4c 89 d9             	mov    rcx,r11
   140002bb1:	44 29 da             	sub    edx,r11d
   140002bb4:	e8 f7 fd ff ff       	call   1400029b0 <__pformat_putchars>
   140002bb9:	90                   	nop
   140002bba:	48 83 c4 30          	add    rsp,0x30
   140002bbe:	5d                   	pop    rbp
   140002bbf:	c3                   	ret
   140002bc0:	b8 2d 00 00 00       	mov    eax,0x2d
   140002bc5:	88 45 fc             	mov    BYTE PTR [rbp-0x4],al
   140002bc8:	4c 8d 4d fd          	lea    r9,[rbp-0x3]
   140002bcc:	4c 8d 5d fc          	lea    r11,[rbp-0x4]
   140002bd0:	eb ba                	jmp    140002b8c <__pformat_emit_inf_or_nan+0x3c>
   140002bd2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140002bd8:	4c 8d 5d fc          	lea    r11,[rbp-0x4]
   140002bdc:	4d 89 d9             	mov    r9,r11
   140002bdf:	eb ab                	jmp    140002b8c <__pformat_emit_inf_or_nan+0x3c>
   140002be1:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
   140002be8:	00 00 00 00 
   140002bec:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000140002bf0 <__pformat_xint.isra.0>:
   140002bf0:	55                   	push   rbp
   140002bf1:	41 57                	push   r15
   140002bf3:	41 56                	push   r14
   140002bf5:	41 55                	push   r13
   140002bf7:	41 54                	push   r12
   140002bf9:	57                   	push   rdi
   140002bfa:	56                   	push   rsi
   140002bfb:	53                   	push   rbx
   140002bfc:	48 83 ec 38          	sub    rsp,0x38
   140002c00:	48 8d 6c 24 30       	lea    rbp,[rsp+0x30]
   140002c05:	41 89 cd             	mov    r13d,ecx
   140002c08:	4c 89 c3             	mov    rbx,r8
   140002c0b:	83 f9 6f             	cmp    ecx,0x6f
   140002c0e:	0f 84 cc 02 00 00    	je     140002ee0 <__pformat_xint.isra.0+0x2f0>
   140002c14:	45 8b 70 10          	mov    r14d,DWORD PTR [r8+0x10]
   140002c18:	31 c0                	xor    eax,eax
   140002c1a:	41 8b 78 08          	mov    edi,DWORD PTR [r8+0x8]
   140002c1e:	45 85 f6             	test   r14d,r14d
   140002c21:	41 0f 49 c6          	cmovns eax,r14d
   140002c25:	83 c0 12             	add    eax,0x12
   140002c28:	f7 c7 00 10 00 00    	test   edi,0x1000
   140002c2e:	0f 84 e4 00 00 00    	je     140002d18 <__pformat_xint.isra.0+0x128>
   140002c34:	b9 04 00 00 00       	mov    ecx,0x4
   140002c39:	66 83 7b 20 00       	cmp    WORD PTR [rbx+0x20],0x0
   140002c3e:	74 14                	je     140002c54 <__pformat_xint.isra.0+0x64>
   140002c40:	41 89 c0             	mov    r8d,eax
   140002c43:	41 b9 ab aa aa aa    	mov    r9d,0xaaaaaaab
   140002c49:	4d 0f af c1          	imul   r8,r9
   140002c4d:	49 c1 e8 21          	shr    r8,0x21
   140002c51:	44 01 c0             	add    eax,r8d
   140002c54:	44 8b 7b 0c          	mov    r15d,DWORD PTR [rbx+0xc]
   140002c58:	41 39 c7             	cmp    r15d,eax
   140002c5b:	41 0f 4d c7          	cmovge eax,r15d
   140002c5f:	48 98                	cdqe
   140002c61:	48 83 c0 0f          	add    rax,0xf
   140002c65:	48 83 e0 f0          	and    rax,0xfffffffffffffff0
   140002c69:	e8 c2 f9 ff ff       	call   140002630 <___chkstk_ms>
   140002c6e:	45 31 c9             	xor    r9d,r9d
   140002c71:	48 29 c4             	sub    rsp,rax
   140002c74:	41 83 fd 6f          	cmp    r13d,0x6f
   140002c78:	41 0f 95 c1          	setne  r9b
   140002c7c:	4c 8d 64 24 20       	lea    r12,[rsp+0x20]
   140002c81:	46 8d 0c cd 07 00 00 	lea    r9d,[r9*8+0x7]
   140002c88:	00 
   140002c89:	48 85 d2             	test   rdx,rdx
   140002c8c:	0f 85 bc 00 00 00    	jne    140002d4e <__pformat_xint.isra.0+0x15e>
   140002c92:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140002c98:	81 e7 ff f7 ff ff    	and    edi,0xfffff7ff
   140002c9e:	89 7b 08             	mov    DWORD PTR [rbx+0x8],edi
   140002ca1:	45 85 f6             	test   r14d,r14d
   140002ca4:	0f 8e c6 02 00 00    	jle    140002f70 <__pformat_xint.isra.0+0x380>
   140002caa:	41 8d 7e ff          	lea    edi,[r14-0x1]
   140002cae:	4c 89 e6             	mov    rsi,r12
   140002cb1:	83 c7 01             	add    edi,0x1
   140002cb4:	48 89 f1             	mov    rcx,rsi
   140002cb7:	ba 30 00 00 00       	mov    edx,0x30
   140002cbc:	48 63 ff             	movsxd rdi,edi
   140002cbf:	49 89 f8             	mov    r8,rdi
   140002cc2:	48 01 fe             	add    rsi,rdi
   140002cc5:	e8 26 4e 00 00       	call   140007af0 <memset>
   140002cca:	4c 39 e6             	cmp    rsi,r12
   140002ccd:	0f 84 a0 02 00 00    	je     140002f73 <__pformat_xint.isra.0+0x383>
   140002cd3:	48 89 f0             	mov    rax,rsi
   140002cd6:	4c 29 e0             	sub    rax,r12
   140002cd9:	89 c2                	mov    edx,eax
   140002cdb:	44 39 f8             	cmp    eax,r15d
   140002cde:	0f 8c b3 02 00 00    	jl     140002f97 <__pformat_xint.isra.0+0x3a7>
   140002ce4:	c7 43 0c ff ff ff ff 	mov    DWORD PTR [rbx+0xc],0xffffffff
   140002ceb:	41 83 fd 6f          	cmp    r13d,0x6f
   140002cef:	0f 85 9f 03 00 00    	jne    140003094 <__pformat_xint.isra.0+0x4a4>
   140002cf5:	49 39 f4             	cmp    r12,rsi
   140002cf8:	0f 83 d0 01 00 00    	jae    140002ece <__pformat_xint.isra.0+0x2de>
   140002cfe:	8b 7b 08             	mov    edi,DWORD PTR [rbx+0x8]
   140002d01:	41 bd fe ff ff ff    	mov    r13d,0xfffffffe
   140002d07:	41 bf ff ff ff ff    	mov    r15d,0xffffffff
   140002d0d:	e9 2e 01 00 00       	jmp    140002e40 <__pformat_xint.isra.0+0x250>
   140002d12:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140002d18:	44 8b 7b 0c          	mov    r15d,DWORD PTR [rbx+0xc]
   140002d1c:	41 39 c7             	cmp    r15d,eax
   140002d1f:	41 0f 4d c7          	cmovge eax,r15d
   140002d23:	48 98                	cdqe
   140002d25:	48 83 c0 0f          	add    rax,0xf
   140002d29:	48 83 e0 f0          	and    rax,0xfffffffffffffff0
   140002d2d:	e8 fe f8 ff ff       	call   140002630 <___chkstk_ms>
   140002d32:	b9 04 00 00 00       	mov    ecx,0x4
   140002d37:	41 b9 0f 00 00 00    	mov    r9d,0xf
   140002d3d:	48 29 c4             	sub    rsp,rax
   140002d40:	4c 8d 64 24 20       	lea    r12,[rsp+0x20]
   140002d45:	48 85 d2             	test   rdx,rdx
   140002d48:	0f 84 4a ff ff ff    	je     140002c98 <__pformat_xint.isra.0+0xa8>
   140002d4e:	4c 89 65 f8          	mov    QWORD PTR [rbp-0x8],r12
   140002d52:	45 89 ea             	mov    r10d,r13d
   140002d55:	4c 89 e6             	mov    rsi,r12
   140002d58:	41 83 e2 20          	and    r10d,0x20
   140002d5c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140002d60:	44 89 c8             	mov    eax,r9d
   140002d63:	49 89 f3             	mov    r11,rsi
   140002d66:	48 83 c6 01          	add    rsi,0x1
   140002d6a:	21 d0                	and    eax,edx
   140002d6c:	44 8d 40 30          	lea    r8d,[rax+0x30]
   140002d70:	83 c0 37             	add    eax,0x37
   140002d73:	44 09 d0             	or     eax,r10d
   140002d76:	45 89 c4             	mov    r12d,r8d
   140002d79:	41 80 f8 39          	cmp    r8b,0x39
   140002d7d:	41 0f 46 c4          	cmovbe eax,r12d
   140002d81:	48 d3 ea             	shr    rdx,cl
   140002d84:	88 46 ff             	mov    BYTE PTR [rsi-0x1],al
   140002d87:	48 85 d2             	test   rdx,rdx
   140002d8a:	75 d4                	jne    140002d60 <__pformat_xint.isra.0+0x170>
   140002d8c:	4c 8b 65 f8          	mov    r12,QWORD PTR [rbp-0x8]
   140002d90:	4c 39 e6             	cmp    rsi,r12
   140002d93:	0f 84 ff fe ff ff    	je     140002c98 <__pformat_xint.isra.0+0xa8>
   140002d99:	45 85 f6             	test   r14d,r14d
   140002d9c:	0f 8e 6e 01 00 00    	jle    140002f10 <__pformat_xint.isra.0+0x320>
   140002da2:	48 89 f2             	mov    rdx,rsi
   140002da5:	44 89 f0             	mov    eax,r14d
   140002da8:	4c 29 e2             	sub    rdx,r12
   140002dab:	29 d0                	sub    eax,edx
   140002dad:	85 c0                	test   eax,eax
   140002daf:	0f 8f cb 02 00 00    	jg     140003080 <__pformat_xint.isra.0+0x490>
   140002db5:	41 83 fd 6f          	cmp    r13d,0x6f
   140002db9:	0f 84 29 02 00 00    	je     140002fe8 <__pformat_xint.isra.0+0x3f8>
   140002dbf:	44 39 fa             	cmp    edx,r15d
   140002dc2:	0f 8d 88 02 00 00    	jge    140003050 <__pformat_xint.isra.0+0x460>
   140002dc8:	41 29 d7             	sub    r15d,edx
   140002dcb:	44 89 7b 0c          	mov    DWORD PTR [rbx+0xc],r15d
   140002dcf:	f7 c7 00 08 00 00    	test   edi,0x800
   140002dd5:	0f 85 45 02 00 00    	jne    140003020 <__pformat_xint.isra.0+0x430>
   140002ddb:	45 85 f6             	test   r14d,r14d
   140002dde:	0f 88 b5 02 00 00    	js     140003099 <__pformat_xint.isra.0+0x4a9>
   140002de4:	45 8d 6f ff          	lea    r13d,[r15-0x1]
   140002de8:	f7 c7 00 04 00 00    	test   edi,0x400
   140002dee:	0f 85 1c 02 00 00    	jne    140003010 <__pformat_xint.isra.0+0x420>
   140002df4:	45 89 ef             	mov    r15d,r13d
   140002df7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
   140002dfe:	00 00 
   140002e00:	48 89 da             	mov    rdx,rbx
   140002e03:	b9 20 00 00 00       	mov    ecx,0x20
   140002e08:	e8 a3 f9 ff ff       	call   1400027b0 <__pformat_putc>
   140002e0d:	41 83 ef 01          	sub    r15d,0x1
   140002e11:	73 ed                	jae    140002e00 <__pformat_xint.isra.0+0x210>
   140002e13:	41 bd fe ff ff ff    	mov    r13d,0xfffffffe
   140002e19:	49 39 f4             	cmp    r12,rsi
   140002e1c:	72 1f                	jb     140002e3d <__pformat_xint.isra.0+0x24d>
   140002e1e:	e9 ab 00 00 00       	jmp    140002ece <__pformat_xint.isra.0+0x2de>
   140002e23:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140002e28:	48 63 43 24          	movsxd rax,DWORD PTR [rbx+0x24]
   140002e2c:	88 0c 02             	mov    BYTE PTR [rdx+rax*1],cl
   140002e2f:	8b 43 24             	mov    eax,DWORD PTR [rbx+0x24]
   140002e32:	83 c0 01             	add    eax,0x1
   140002e35:	89 43 24             	mov    DWORD PTR [rbx+0x24],eax
   140002e38:	49 39 f4             	cmp    r12,rsi
   140002e3b:	73 38                	jae    140002e75 <__pformat_xint.isra.0+0x285>
   140002e3d:	8b 7b 08             	mov    edi,DWORD PTR [rbx+0x8]
   140002e40:	48 83 ee 01          	sub    rsi,0x1
   140002e44:	f7 c7 00 40 00 00    	test   edi,0x4000
   140002e4a:	75 08                	jne    140002e54 <__pformat_xint.isra.0+0x264>
   140002e4c:	8b 43 24             	mov    eax,DWORD PTR [rbx+0x24]
   140002e4f:	39 43 28             	cmp    DWORD PTR [rbx+0x28],eax
   140002e52:	7e de                	jle    140002e32 <__pformat_xint.isra.0+0x242>
   140002e54:	81 e7 00 20 00 00    	and    edi,0x2000
   140002e5a:	0f be 0e             	movsx  ecx,BYTE PTR [rsi]
   140002e5d:	48 8b 13             	mov    rdx,QWORD PTR [rbx]
   140002e60:	74 c6                	je     140002e28 <__pformat_xint.isra.0+0x238>
   140002e62:	e8 59 4c 00 00       	call   140007ac0 <fputc>
   140002e67:	8b 43 24             	mov    eax,DWORD PTR [rbx+0x24]
   140002e6a:	83 c0 01             	add    eax,0x1
   140002e6d:	89 43 24             	mov    DWORD PTR [rbx+0x24],eax
   140002e70:	49 39 f4             	cmp    r12,rsi
   140002e73:	72 c8                	jb     140002e3d <__pformat_xint.isra.0+0x24d>
   140002e75:	45 85 ff             	test   r15d,r15d
   140002e78:	7f 1d                	jg     140002e97 <__pformat_xint.isra.0+0x2a7>
   140002e7a:	eb 52                	jmp    140002ece <__pformat_xint.isra.0+0x2de>
   140002e7c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140002e80:	48 63 43 24          	movsxd rax,DWORD PTR [rbx+0x24]
   140002e84:	c6 04 02 20          	mov    BYTE PTR [rdx+rax*1],0x20
   140002e88:	8b 43 24             	mov    eax,DWORD PTR [rbx+0x24]
   140002e8b:	83 c0 01             	add    eax,0x1
   140002e8e:	89 43 24             	mov    DWORD PTR [rbx+0x24],eax
   140002e91:	41 83 ed 01          	sub    r13d,0x1
   140002e95:	72 37                	jb     140002ece <__pformat_xint.isra.0+0x2de>
   140002e97:	8b 7b 08             	mov    edi,DWORD PTR [rbx+0x8]
   140002e9a:	f7 c7 00 40 00 00    	test   edi,0x4000
   140002ea0:	75 08                	jne    140002eaa <__pformat_xint.isra.0+0x2ba>
   140002ea2:	8b 43 24             	mov    eax,DWORD PTR [rbx+0x24]
   140002ea5:	39 43 28             	cmp    DWORD PTR [rbx+0x28],eax
   140002ea8:	7e e1                	jle    140002e8b <__pformat_xint.isra.0+0x29b>
   140002eaa:	81 e7 00 20 00 00    	and    edi,0x2000
   140002eb0:	48 8b 13             	mov    rdx,QWORD PTR [rbx]
   140002eb3:	74 cb                	je     140002e80 <__pformat_xint.isra.0+0x290>
   140002eb5:	b9 20 00 00 00       	mov    ecx,0x20
   140002eba:	e8 01 4c 00 00       	call   140007ac0 <fputc>
   140002ebf:	8b 43 24             	mov    eax,DWORD PTR [rbx+0x24]
   140002ec2:	83 c0 01             	add    eax,0x1
   140002ec5:	89 43 24             	mov    DWORD PTR [rbx+0x24],eax
   140002ec8:	41 83 ed 01          	sub    r13d,0x1
   140002ecc:	73 c9                	jae    140002e97 <__pformat_xint.isra.0+0x2a7>
   140002ece:	48 8d 65 08          	lea    rsp,[rbp+0x8]
   140002ed2:	5b                   	pop    rbx
   140002ed3:	5e                   	pop    rsi
   140002ed4:	5f                   	pop    rdi
   140002ed5:	41 5c                	pop    r12
   140002ed7:	41 5d                	pop    r13
   140002ed9:	41 5e                	pop    r14
   140002edb:	41 5f                	pop    r15
   140002edd:	5d                   	pop    rbp
   140002ede:	c3                   	ret
   140002edf:	90                   	nop
   140002ee0:	45 8b 70 10          	mov    r14d,DWORD PTR [r8+0x10]
   140002ee4:	31 c0                	xor    eax,eax
   140002ee6:	41 8b 78 08          	mov    edi,DWORD PTR [r8+0x8]
   140002eea:	45 85 f6             	test   r14d,r14d
   140002eed:	41 0f 49 c6          	cmovns eax,r14d
   140002ef1:	83 c0 18             	add    eax,0x18
   140002ef4:	f7 c7 00 10 00 00    	test   edi,0x1000
   140002efa:	74 3c                	je     140002f38 <__pformat_xint.isra.0+0x348>
   140002efc:	b9 03 00 00 00       	mov    ecx,0x3
   140002f01:	e9 33 fd ff ff       	jmp    140002c39 <__pformat_xint.isra.0+0x49>
   140002f06:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   140002f0d:	00 00 00 
   140002f10:	41 83 fd 6f          	cmp    r13d,0x6f
   140002f14:	0f 84 ce 00 00 00    	je     140002fe8 <__pformat_xint.isra.0+0x3f8>
   140002f1a:	48 89 f0             	mov    rax,rsi
   140002f1d:	4c 29 e0             	sub    rax,r12
   140002f20:	44 39 f8             	cmp    eax,r15d
   140002f23:	0f 8d 27 01 00 00    	jge    140003050 <__pformat_xint.isra.0+0x460>
   140002f29:	41 29 c7             	sub    r15d,eax
   140002f2c:	44 89 7b 0c          	mov    DWORD PTR [rbx+0xc],r15d
   140002f30:	e9 9a fe ff ff       	jmp    140002dcf <__pformat_xint.isra.0+0x1df>
   140002f35:	0f 1f 00             	nop    DWORD PTR [rax]
   140002f38:	44 8b 7b 0c          	mov    r15d,DWORD PTR [rbx+0xc]
   140002f3c:	41 39 c7             	cmp    r15d,eax
   140002f3f:	41 0f 4d c7          	cmovge eax,r15d
   140002f43:	48 98                	cdqe
   140002f45:	48 83 c0 0f          	add    rax,0xf
   140002f49:	48 83 e0 f0          	and    rax,0xfffffffffffffff0
   140002f4d:	e8 de f6 ff ff       	call   140002630 <___chkstk_ms>
   140002f52:	b9 03 00 00 00       	mov    ecx,0x3
   140002f57:	41 b9 07 00 00 00    	mov    r9d,0x7
   140002f5d:	48 29 c4             	sub    rsp,rax
   140002f60:	4c 8d 64 24 20       	lea    r12,[rsp+0x20]
   140002f65:	e9 db fd ff ff       	jmp    140002d45 <__pformat_xint.isra.0+0x155>
   140002f6a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140002f70:	4c 89 e6             	mov    rsi,r12
   140002f73:	45 85 f6             	test   r14d,r14d
   140002f76:	0f 84 57 fd ff ff    	je     140002cd3 <__pformat_xint.isra.0+0xe3>
   140002f7c:	48 8d 56 01          	lea    rdx,[rsi+0x1]
   140002f80:	c6 06 30             	mov    BYTE PTR [rsi],0x30
   140002f83:	48 89 d0             	mov    rax,rdx
   140002f86:	48 89 d6             	mov    rsi,rdx
   140002f89:	4c 29 e0             	sub    rax,r12
   140002f8c:	89 c2                	mov    edx,eax
   140002f8e:	44 39 f8             	cmp    eax,r15d
   140002f91:	0f 8d 4d fd ff ff    	jge    140002ce4 <__pformat_xint.isra.0+0xf4>
   140002f97:	8b 7b 08             	mov    edi,DWORD PTR [rbx+0x8]
   140002f9a:	41 29 d7             	sub    r15d,edx
   140002f9d:	44 89 7b 0c          	mov    DWORD PTR [rbx+0xc],r15d
   140002fa1:	41 83 fd 6f          	cmp    r13d,0x6f
   140002fa5:	0f 85 24 fe ff ff    	jne    140002dcf <__pformat_xint.isra.0+0x1df>
   140002fab:	45 85 f6             	test   r14d,r14d
   140002fae:	0f 89 30 fe ff ff    	jns    140002de4 <__pformat_xint.isra.0+0x1f4>
   140002fb4:	89 f8                	mov    eax,edi
   140002fb6:	25 00 06 00 00       	and    eax,0x600
   140002fbb:	3d 00 02 00 00       	cmp    eax,0x200
   140002fc0:	0f 85 1e fe ff ff    	jne    140002de4 <__pformat_xint.isra.0+0x1f4>
   140002fc6:	4d 63 ff             	movsxd r15,r15d
   140002fc9:	ba 30 00 00 00       	mov    edx,0x30
   140002fce:	48 89 f1             	mov    rcx,rsi
   140002fd1:	4d 89 f8             	mov    r8,r15
   140002fd4:	e8 17 4b 00 00       	call   140007af0 <memset>
   140002fd9:	4a 8d 04 3e          	lea    rax,[rsi+r15*1]
   140002fdd:	41 bf ff ff ff ff    	mov    r15d,0xffffffff
   140002fe3:	eb 53                	jmp    140003038 <__pformat_xint.isra.0+0x448>
   140002fe5:	0f 1f 00             	nop    DWORD PTR [rax]
   140002fe8:	f7 c7 00 08 00 00    	test   edi,0x800
   140002fee:	0f 85 94 00 00 00    	jne    140003088 <__pformat_xint.isra.0+0x498>
   140002ff4:	48 89 f0             	mov    rax,rsi
   140002ff7:	4c 29 e0             	sub    rax,r12
   140002ffa:	89 c2                	mov    edx,eax
   140002ffc:	41 39 c7             	cmp    r15d,eax
   140002fff:	7f 99                	jg     140002f9a <__pformat_xint.isra.0+0x3aa>
   140003001:	c7 43 0c ff ff ff ff 	mov    DWORD PTR [rbx+0xc],0xffffffff
   140003008:	e9 e8 fc ff ff       	jmp    140002cf5 <__pformat_xint.isra.0+0x105>
   14000300d:	0f 1f 00             	nop    DWORD PTR [rax]
   140003010:	49 39 f4             	cmp    r12,rsi
   140003013:	0f 82 27 fe ff ff    	jb     140002e40 <__pformat_xint.isra.0+0x250>
   140003019:	e9 7c fe ff ff       	jmp    140002e9a <__pformat_xint.isra.0+0x2aa>
   14000301e:	66 90                	xchg   ax,ax
   140003020:	41 83 ef 02          	sub    r15d,0x2
   140003024:	45 85 ff             	test   r15d,r15d
   140003027:	0f 8f b7 00 00 00    	jg     1400030e4 <__pformat_xint.isra.0+0x4f4>
   14000302d:	44 88 2e             	mov    BYTE PTR [rsi],r13b
   140003030:	48 8d 46 02          	lea    rax,[rsi+0x2]
   140003034:	c6 46 01 30          	mov    BYTE PTR [rsi+0x1],0x30
   140003038:	49 39 c4             	cmp    r12,rax
   14000303b:	0f 83 8d fe ff ff    	jae    140002ece <__pformat_xint.isra.0+0x2de>
   140003041:	8b 7b 08             	mov    edi,DWORD PTR [rbx+0x8]
   140003044:	45 8d 6f ff          	lea    r13d,[r15-0x1]
   140003048:	48 89 c6             	mov    rsi,rax
   14000304b:	e9 f0 fd ff ff       	jmp    140002e40 <__pformat_xint.isra.0+0x250>
   140003050:	c7 43 0c ff ff ff ff 	mov    DWORD PTR [rbx+0xc],0xffffffff
   140003057:	81 e7 00 08 00 00    	and    edi,0x800
   14000305d:	48 89 f0             	mov    rax,rsi
   140003060:	41 bf ff ff ff ff    	mov    r15d,0xffffffff
   140003066:	74 d0                	je     140003038 <__pformat_xint.isra.0+0x448>
   140003068:	44 88 2e             	mov    BYTE PTR [rsi],r13b
   14000306b:	48 8d 46 02          	lea    rax,[rsi+0x2]
   14000306f:	41 bf ff ff ff ff    	mov    r15d,0xffffffff
   140003075:	c6 46 01 30          	mov    BYTE PTR [rsi+0x1],0x30
   140003079:	eb bd                	jmp    140003038 <__pformat_xint.isra.0+0x448>
   14000307b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140003080:	8d 78 ff             	lea    edi,[rax-0x1]
   140003083:	e9 29 fc ff ff       	jmp    140002cb1 <__pformat_xint.isra.0+0xc1>
   140003088:	c6 06 30             	mov    BYTE PTR [rsi],0x30
   14000308b:	49 8d 73 02          	lea    rsi,[r11+0x2]
   14000308f:	e9 36 fc ff ff       	jmp    140002cca <__pformat_xint.isra.0+0xda>
   140003094:	8b 7b 08             	mov    edi,DWORD PTR [rbx+0x8]
   140003097:	eb be                	jmp    140003057 <__pformat_xint.isra.0+0x467>
   140003099:	89 f8                	mov    eax,edi
   14000309b:	25 00 06 00 00       	and    eax,0x600
   1400030a0:	3d 00 02 00 00       	cmp    eax,0x200
   1400030a5:	0f 85 39 fd ff ff    	jne    140002de4 <__pformat_xint.isra.0+0x1f4>
   1400030ab:	4d 63 ff             	movsxd r15,r15d
   1400030ae:	ba 30 00 00 00       	mov    edx,0x30
   1400030b3:	48 89 f1             	mov    rcx,rsi
   1400030b6:	4d 89 f8             	mov    r8,r15
   1400030b9:	e8 32 4a 00 00       	call   140007af0 <memset>
   1400030be:	81 e7 00 08 00 00    	and    edi,0x800
   1400030c4:	4a 8d 04 3e          	lea    rax,[rsi+r15*1]
   1400030c8:	0f 84 0f ff ff ff    	je     140002fdd <__pformat_xint.isra.0+0x3ed>
   1400030ce:	44 88 28             	mov    BYTE PTR [rax],r13b
   1400030d1:	41 bf ff ff ff ff    	mov    r15d,0xffffffff
   1400030d7:	48 83 c0 02          	add    rax,0x2
   1400030db:	c6 40 ff 30          	mov    BYTE PTR [rax-0x1],0x30
   1400030df:	e9 54 ff ff ff       	jmp    140003038 <__pformat_xint.isra.0+0x448>
   1400030e4:	45 85 f6             	test   r14d,r14d
   1400030e7:	78 10                	js     1400030f9 <__pformat_xint.isra.0+0x509>
   1400030e9:	44 88 2e             	mov    BYTE PTR [rsi],r13b
   1400030ec:	48 83 c6 02          	add    rsi,0x2
   1400030f0:	c6 46 ff 30          	mov    BYTE PTR [rsi-0x1],0x30
   1400030f4:	e9 eb fc ff ff       	jmp    140002de4 <__pformat_xint.isra.0+0x1f4>
   1400030f9:	89 f8                	mov    eax,edi
   1400030fb:	25 00 06 00 00       	and    eax,0x600
   140003100:	3d 00 02 00 00       	cmp    eax,0x200
   140003105:	75 e2                	jne    1400030e9 <__pformat_xint.isra.0+0x4f9>
   140003107:	eb a2                	jmp    1400030ab <__pformat_xint.isra.0+0x4bb>
   140003109:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000140003110 <__pformat_int.isra.0>:
   140003110:	55                   	push   rbp
   140003111:	41 57                	push   r15
   140003113:	41 56                	push   r14
   140003115:	41 55                	push   r13
   140003117:	41 54                	push   r12
   140003119:	57                   	push   rdi
   14000311a:	56                   	push   rsi
   14000311b:	53                   	push   rbx
   14000311c:	48 83 ec 28          	sub    rsp,0x28
   140003120:	48 8d 6c 24 20       	lea    rbp,[rsp+0x20]
   140003125:	31 c0                	xor    eax,eax
   140003127:	44 8b 72 10          	mov    r14d,DWORD PTR [rdx+0x10]
   14000312b:	8b 7a 08             	mov    edi,DWORD PTR [rdx+0x8]
   14000312e:	45 85 f6             	test   r14d,r14d
   140003131:	41 0f 49 c6          	cmovns eax,r14d
   140003135:	48 89 d3             	mov    rbx,rdx
   140003138:	83 c0 17             	add    eax,0x17
   14000313b:	f7 c7 00 10 00 00    	test   edi,0x1000
   140003141:	74 0b                	je     14000314e <__pformat_int.isra.0+0x3e>
   140003143:	66 83 7a 20 00       	cmp    WORD PTR [rdx+0x20],0x0
   140003148:	0f 85 62 02 00 00    	jne    1400033b0 <__pformat_int.isra.0+0x2a0>
   14000314e:	8b 73 0c             	mov    esi,DWORD PTR [rbx+0xc]
   140003151:	39 c6                	cmp    esi,eax
   140003153:	0f 4d c6             	cmovge eax,esi
   140003156:	48 98                	cdqe
   140003158:	48 83 c0 0f          	add    rax,0xf
   14000315c:	48 83 e0 f0          	and    rax,0xfffffffffffffff0
   140003160:	e8 cb f4 ff ff       	call   140002630 <___chkstk_ms>
   140003165:	48 29 c4             	sub    rsp,rax
   140003168:	4c 8d 64 24 20       	lea    r12,[rsp+0x20]
   14000316d:	40 f6 c7 80          	test   dil,0x80
   140003171:	74 10                	je     140003183 <__pformat_int.isra.0+0x73>
   140003173:	48 85 c9             	test   rcx,rcx
   140003176:	0f 88 74 02 00 00    	js     1400033f0 <__pformat_int.isra.0+0x2e0>
   14000317c:	40 80 e7 7f          	and    dil,0x7f
   140003180:	89 7b 08             	mov    DWORD PTR [rbx+0x8],edi
   140003183:	48 85 c9             	test   rcx,rcx
   140003186:	0f 84 14 03 00 00    	je     1400034a0 <__pformat_int.isra.0+0x390>
   14000318c:	49 bb 03 00 00 00 00 	movabs r11,0x8000000000000003
   140003193:	00 00 80 
   140003196:	41 89 fa             	mov    r10d,edi
   140003199:	4d 89 e0             	mov    r8,r12
   14000319c:	49 b9 cd cc cc cc cc 	movabs r9,0xcccccccccccccccd
   1400031a3:	cc cc cc 
   1400031a6:	41 81 e2 00 10 00 00 	and    r10d,0x1000
   1400031ad:	0f 1f 00             	nop    DWORD PTR [rax]
   1400031b0:	4d 39 c4             	cmp    r12,r8
   1400031b3:	74 2b                	je     1400031e0 <__pformat_int.isra.0+0xd0>
   1400031b5:	45 85 d2             	test   r10d,r10d
   1400031b8:	74 26                	je     1400031e0 <__pformat_int.isra.0+0xd0>
   1400031ba:	66 83 7b 20 00       	cmp    WORD PTR [rbx+0x20],0x0
   1400031bf:	74 1f                	je     1400031e0 <__pformat_int.isra.0+0xd0>
   1400031c1:	4c 89 c0             	mov    rax,r8
   1400031c4:	4c 29 e0             	sub    rax,r12
   1400031c7:	4c 21 d8             	and    rax,r11
   1400031ca:	48 83 f8 03          	cmp    rax,0x3
   1400031ce:	75 10                	jne    1400031e0 <__pformat_int.isra.0+0xd0>
   1400031d0:	41 c6 00 2c          	mov    BYTE PTR [r8],0x2c
   1400031d4:	49 83 c0 01          	add    r8,0x1
   1400031d8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   1400031df:	00 
   1400031e0:	48 89 c8             	mov    rax,rcx
   1400031e3:	4d 8d 68 01          	lea    r13,[r8+0x1]
   1400031e7:	49 f7 e1             	mul    r9
   1400031ea:	48 89 c8             	mov    rax,rcx
   1400031ed:	48 c1 ea 03          	shr    rdx,0x3
   1400031f1:	4c 8d 3c 92          	lea    r15,[rdx+rdx*4]
   1400031f5:	4d 01 ff             	add    r15,r15
   1400031f8:	4c 29 f8             	sub    rax,r15
   1400031fb:	83 c0 30             	add    eax,0x30
   1400031fe:	41 88 00             	mov    BYTE PTR [r8],al
   140003201:	48 83 f9 09          	cmp    rcx,0x9
   140003205:	76 09                	jbe    140003210 <__pformat_int.isra.0+0x100>
   140003207:	48 89 d1             	mov    rcx,rdx
   14000320a:	4d 89 e8             	mov    r8,r13
   14000320d:	eb a1                	jmp    1400031b0 <__pformat_int.isra.0+0xa0>
   14000320f:	90                   	nop
   140003210:	45 85 f6             	test   r14d,r14d
   140003213:	7e 2b                	jle    140003240 <__pformat_int.isra.0+0x130>
   140003215:	4c 89 e8             	mov    rax,r13
   140003218:	45 89 f0             	mov    r8d,r14d
   14000321b:	4c 29 e0             	sub    rax,r12
   14000321e:	41 29 c0             	sub    r8d,eax
   140003221:	45 85 c0             	test   r8d,r8d
   140003224:	0f 8e a6 01 00 00    	jle    1400033d0 <__pformat_int.isra.0+0x2c0>
   14000322a:	4d 63 f8             	movsxd r15,r8d
   14000322d:	4c 89 e9             	mov    rcx,r13
   140003230:	ba 30 00 00 00       	mov    edx,0x30
   140003235:	4d 89 f8             	mov    r8,r15
   140003238:	4d 01 fd             	add    r13,r15
   14000323b:	e8 b0 48 00 00       	call   140007af0 <memset>
   140003240:	4d 39 ec             	cmp    r12,r13
   140003243:	0f 94 c0             	sete   al
   140003246:	45 85 f6             	test   r14d,r14d
   140003249:	74 08                	je     140003253 <__pformat_int.isra.0+0x143>
   14000324b:	84 c0                	test   al,al
   14000324d:	0f 85 3f 02 00 00    	jne    140003492 <__pformat_int.isra.0+0x382>
   140003253:	85 f6                	test   esi,esi
   140003255:	7e 39                	jle    140003290 <__pformat_int.isra.0+0x180>
   140003257:	4c 89 e8             	mov    rax,r13
   14000325a:	4c 29 e0             	sub    rax,r12
   14000325d:	29 c6                	sub    esi,eax
   14000325f:	89 73 0c             	mov    DWORD PTR [rbx+0xc],esi
   140003262:	85 f6                	test   esi,esi
   140003264:	7e 2a                	jle    140003290 <__pformat_int.isra.0+0x180>
   140003266:	f7 c7 c0 01 00 00    	test   edi,0x1c0
   14000326c:	0f 85 8e 01 00 00    	jne    140003400 <__pformat_int.isra.0+0x2f0>
   140003272:	45 85 f6             	test   r14d,r14d
   140003275:	0f 88 94 01 00 00    	js     14000340f <__pformat_int.isra.0+0x2ff>
   14000327b:	f7 c7 00 04 00 00    	test   edi,0x400
   140003281:	0f 84 d1 01 00 00    	je     140003458 <__pformat_int.isra.0+0x348>
   140003287:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
   14000328e:	00 00 
   140003290:	40 f6 c7 80          	test   dil,0x80
   140003294:	0f 84 d6 00 00 00    	je     140003370 <__pformat_int.isra.0+0x260>
   14000329a:	41 c6 45 00 2d       	mov    BYTE PTR [r13+0x0],0x2d
   14000329f:	49 8d 75 01          	lea    rsi,[r13+0x1]
   1400032a3:	49 39 f4             	cmp    r12,rsi
   1400032a6:	72 20                	jb     1400032c8 <__pformat_int.isra.0+0x1b8>
   1400032a8:	eb 53                	jmp    1400032fd <__pformat_int.isra.0+0x1ed>
   1400032aa:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   1400032b0:	48 63 43 24          	movsxd rax,DWORD PTR [rbx+0x24]
   1400032b4:	88 0c 02             	mov    BYTE PTR [rdx+rax*1],cl
   1400032b7:	8b 43 24             	mov    eax,DWORD PTR [rbx+0x24]
   1400032ba:	83 c0 01             	add    eax,0x1
   1400032bd:	89 43 24             	mov    DWORD PTR [rbx+0x24],eax
   1400032c0:	49 39 f4             	cmp    r12,rsi
   1400032c3:	74 38                	je     1400032fd <__pformat_int.isra.0+0x1ed>
   1400032c5:	8b 7b 08             	mov    edi,DWORD PTR [rbx+0x8]
   1400032c8:	48 83 ee 01          	sub    rsi,0x1
   1400032cc:	f7 c7 00 40 00 00    	test   edi,0x4000
   1400032d2:	75 08                	jne    1400032dc <__pformat_int.isra.0+0x1cc>
   1400032d4:	8b 43 24             	mov    eax,DWORD PTR [rbx+0x24]
   1400032d7:	39 43 28             	cmp    DWORD PTR [rbx+0x28],eax
   1400032da:	7e de                	jle    1400032ba <__pformat_int.isra.0+0x1aa>
   1400032dc:	81 e7 00 20 00 00    	and    edi,0x2000
   1400032e2:	0f be 0e             	movsx  ecx,BYTE PTR [rsi]
   1400032e5:	48 8b 13             	mov    rdx,QWORD PTR [rbx]
   1400032e8:	74 c6                	je     1400032b0 <__pformat_int.isra.0+0x1a0>
   1400032ea:	e8 d1 47 00 00       	call   140007ac0 <fputc>
   1400032ef:	8b 43 24             	mov    eax,DWORD PTR [rbx+0x24]
   1400032f2:	83 c0 01             	add    eax,0x1
   1400032f5:	89 43 24             	mov    DWORD PTR [rbx+0x24],eax
   1400032f8:	49 39 f4             	cmp    r12,rsi
   1400032fb:	75 c8                	jne    1400032c5 <__pformat_int.isra.0+0x1b5>
   1400032fd:	8b 43 0c             	mov    eax,DWORD PTR [rbx+0xc]
   140003300:	eb 1a                	jmp    14000331c <__pformat_int.isra.0+0x20c>
   140003302:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140003308:	48 63 43 24          	movsxd rax,DWORD PTR [rbx+0x24]
   14000330c:	c6 04 02 20          	mov    BYTE PTR [rdx+rax*1],0x20
   140003310:	8b 53 24             	mov    edx,DWORD PTR [rbx+0x24]
   140003313:	8b 43 0c             	mov    eax,DWORD PTR [rbx+0xc]
   140003316:	83 c2 01             	add    edx,0x1
   140003319:	89 53 24             	mov    DWORD PTR [rbx+0x24],edx
   14000331c:	89 c2                	mov    edx,eax
   14000331e:	83 e8 01             	sub    eax,0x1
   140003321:	89 43 0c             	mov    DWORD PTR [rbx+0xc],eax
   140003324:	85 d2                	test   edx,edx
   140003326:	7e 30                	jle    140003358 <__pformat_int.isra.0+0x248>
   140003328:	8b 4b 08             	mov    ecx,DWORD PTR [rbx+0x8]
   14000332b:	f6 c5 40             	test   ch,0x40
   14000332e:	75 08                	jne    140003338 <__pformat_int.isra.0+0x228>
   140003330:	8b 53 24             	mov    edx,DWORD PTR [rbx+0x24]
   140003333:	39 53 28             	cmp    DWORD PTR [rbx+0x28],edx
   140003336:	7e de                	jle    140003316 <__pformat_int.isra.0+0x206>
   140003338:	48 8b 13             	mov    rdx,QWORD PTR [rbx]
   14000333b:	80 e5 20             	and    ch,0x20
   14000333e:	74 c8                	je     140003308 <__pformat_int.isra.0+0x1f8>
   140003340:	b9 20 00 00 00       	mov    ecx,0x20
   140003345:	e8 76 47 00 00       	call   140007ac0 <fputc>
   14000334a:	8b 53 24             	mov    edx,DWORD PTR [rbx+0x24]
   14000334d:	8b 43 0c             	mov    eax,DWORD PTR [rbx+0xc]
   140003350:	eb c4                	jmp    140003316 <__pformat_int.isra.0+0x206>
   140003352:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140003358:	48 8d 65 08          	lea    rsp,[rbp+0x8]
   14000335c:	5b                   	pop    rbx
   14000335d:	5e                   	pop    rsi
   14000335e:	5f                   	pop    rdi
   14000335f:	41 5c                	pop    r12
   140003361:	41 5d                	pop    r13
   140003363:	41 5e                	pop    r14
   140003365:	41 5f                	pop    r15
   140003367:	5d                   	pop    rbp
   140003368:	c3                   	ret
   140003369:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140003370:	f7 c7 00 01 00 00    	test   edi,0x100
   140003376:	74 18                	je     140003390 <__pformat_int.isra.0+0x280>
   140003378:	41 c6 45 00 2b       	mov    BYTE PTR [r13+0x0],0x2b
   14000337d:	49 8d 75 01          	lea    rsi,[r13+0x1]
   140003381:	e9 1d ff ff ff       	jmp    1400032a3 <__pformat_int.isra.0+0x193>
   140003386:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   14000338d:	00 00 00 
   140003390:	4c 89 ee             	mov    rsi,r13
   140003393:	40 f6 c7 40          	test   dil,0x40
   140003397:	0f 84 06 ff ff ff    	je     1400032a3 <__pformat_int.isra.0+0x193>
   14000339d:	41 c6 45 00 20       	mov    BYTE PTR [r13+0x0],0x20
   1400033a2:	48 83 c6 01          	add    rsi,0x1
   1400033a6:	e9 f8 fe ff ff       	jmp    1400032a3 <__pformat_int.isra.0+0x193>
   1400033ab:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   1400033b0:	89 c2                	mov    edx,eax
   1400033b2:	41 b8 ab aa aa aa    	mov    r8d,0xaaaaaaab
   1400033b8:	49 0f af d0          	imul   rdx,r8
   1400033bc:	48 c1 ea 21          	shr    rdx,0x21
   1400033c0:	01 d0                	add    eax,edx
   1400033c2:	e9 87 fd ff ff       	jmp    14000314e <__pformat_int.isra.0+0x3e>
   1400033c7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
   1400033ce:	00 00 
   1400033d0:	4d 39 ec             	cmp    r12,r13
   1400033d3:	0f 85 7a fe ff ff    	jne    140003253 <__pformat_int.isra.0+0x143>
   1400033d9:	4c 89 e0             	mov    rax,r12
   1400033dc:	c6 00 30             	mov    BYTE PTR [rax],0x30
   1400033df:	4c 8d 68 01          	lea    r13,[rax+0x1]
   1400033e3:	e9 6b fe ff ff       	jmp    140003253 <__pformat_int.isra.0+0x143>
   1400033e8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   1400033ef:	00 
   1400033f0:	48 f7 d9             	neg    rcx
   1400033f3:	e9 94 fd ff ff       	jmp    14000318c <__pformat_int.isra.0+0x7c>
   1400033f8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   1400033ff:	00 
   140003400:	83 ee 01             	sub    esi,0x1
   140003403:	89 73 0c             	mov    DWORD PTR [rbx+0xc],esi
   140003406:	45 85 f6             	test   r14d,r14d
   140003409:	0f 89 6c fe ff ff    	jns    14000327b <__pformat_int.isra.0+0x16b>
   14000340f:	89 f8                	mov    eax,edi
   140003411:	25 00 06 00 00       	and    eax,0x600
   140003416:	3d 00 02 00 00       	cmp    eax,0x200
   14000341b:	0f 85 5a fe ff ff    	jne    14000327b <__pformat_int.isra.0+0x16b>
   140003421:	8b 43 0c             	mov    eax,DWORD PTR [rbx+0xc]
   140003424:	8d 50 ff             	lea    edx,[rax-0x1]
   140003427:	89 53 0c             	mov    DWORD PTR [rbx+0xc],edx
   14000342a:	85 c0                	test   eax,eax
   14000342c:	0f 8e 5e fe ff ff    	jle    140003290 <__pformat_int.isra.0+0x180>
   140003432:	48 63 f0             	movsxd rsi,eax
   140003435:	4c 89 e9             	mov    rcx,r13
   140003438:	ba 30 00 00 00       	mov    edx,0x30
   14000343d:	49 89 f0             	mov    r8,rsi
   140003440:	49 01 f5             	add    r13,rsi
   140003443:	e8 a8 46 00 00       	call   140007af0 <memset>
   140003448:	c7 43 0c ff ff ff ff 	mov    DWORD PTR [rbx+0xc],0xffffffff
   14000344f:	e9 3c fe ff ff       	jmp    140003290 <__pformat_int.isra.0+0x180>
   140003454:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140003458:	8b 43 0c             	mov    eax,DWORD PTR [rbx+0xc]
   14000345b:	8d 50 ff             	lea    edx,[rax-0x1]
   14000345e:	89 53 0c             	mov    DWORD PTR [rbx+0xc],edx
   140003461:	85 c0                	test   eax,eax
   140003463:	0f 8e 27 fe ff ff    	jle    140003290 <__pformat_int.isra.0+0x180>
   140003469:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140003470:	48 89 da             	mov    rdx,rbx
   140003473:	b9 20 00 00 00       	mov    ecx,0x20
   140003478:	e8 33 f3 ff ff       	call   1400027b0 <__pformat_putc>
   14000347d:	8b 43 0c             	mov    eax,DWORD PTR [rbx+0xc]
   140003480:	8d 50 ff             	lea    edx,[rax-0x1]
   140003483:	89 53 0c             	mov    DWORD PTR [rbx+0xc],edx
   140003486:	85 c0                	test   eax,eax
   140003488:	7f e6                	jg     140003470 <__pformat_int.isra.0+0x360>
   14000348a:	8b 7b 08             	mov    edi,DWORD PTR [rbx+0x8]
   14000348d:	e9 fe fd ff ff       	jmp    140003290 <__pformat_int.isra.0+0x180>
   140003492:	4c 89 e8             	mov    rax,r13
   140003495:	e9 42 ff ff ff       	jmp    1400033dc <__pformat_int.isra.0+0x2cc>
   14000349a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   1400034a0:	4d 89 e5             	mov    r13,r12
   1400034a3:	45 89 f0             	mov    r8d,r14d
   1400034a6:	b8 01 00 00 00       	mov    eax,0x1
   1400034ab:	45 85 f6             	test   r14d,r14d
   1400034ae:	0f 8f 76 fd ff ff    	jg     14000322a <__pformat_int.isra.0+0x11a>
   1400034b4:	e9 8d fd ff ff       	jmp    140003246 <__pformat_int.isra.0+0x136>
   1400034b9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000001400034c0 <__pformat_emit_radix_point>:
   1400034c0:	55                   	push   rbp
   1400034c1:	41 54                	push   r12
   1400034c3:	57                   	push   rdi
   1400034c4:	56                   	push   rsi
   1400034c5:	53                   	push   rbx
   1400034c6:	48 83 ec 30          	sub    rsp,0x30
   1400034ca:	48 8d 6c 24 30       	lea    rbp,[rsp+0x30]
   1400034cf:	83 79 14 fd          	cmp    DWORD PTR [rcx+0x14],0xfffffffd
   1400034d3:	48 89 cb             	mov    rbx,rcx
   1400034d6:	0f 84 d4 00 00 00    	je     1400035b0 <__pformat_emit_radix_point+0xf0>
   1400034dc:	0f b7 51 18          	movzx  edx,WORD PTR [rcx+0x18]
   1400034e0:	66 85 d2             	test   dx,dx
   1400034e3:	0f 84 a7 00 00 00    	je     140003590 <__pformat_emit_radix_point+0xd0>
   1400034e9:	48 63 43 14          	movsxd rax,DWORD PTR [rbx+0x14]
   1400034ed:	48 89 e7             	mov    rdi,rsp
   1400034f0:	48 83 c0 0f          	add    rax,0xf
   1400034f4:	48 83 e0 f0          	and    rax,0xfffffffffffffff0
   1400034f8:	e8 33 f1 ff ff       	call   140002630 <___chkstk_ms>
   1400034fd:	48 29 c4             	sub    rsp,rax
   140003500:	4c 8d 45 f8          	lea    r8,[rbp-0x8]
   140003504:	48 c7 45 f8 00 00 00 	mov    QWORD PTR [rbp-0x8],0x0
   14000350b:	00 
   14000350c:	48 8d 74 24 20       	lea    rsi,[rsp+0x20]
   140003511:	48 89 f1             	mov    rcx,rsi
   140003514:	e8 67 40 00 00       	call   140007580 <wcrtomb>
   140003519:	85 c0                	test   eax,eax
   14000351b:	0f 8e cf 00 00 00    	jle    1400035f0 <__pformat_emit_radix_point+0x130>
   140003521:	83 e8 01             	sub    eax,0x1
   140003524:	4c 8d 64 06 01       	lea    r12,[rsi+rax*1+0x1]
   140003529:	eb 1a                	jmp    140003545 <__pformat_emit_radix_point+0x85>
   14000352b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140003530:	48 63 53 24          	movsxd rdx,DWORD PTR [rbx+0x24]
   140003534:	88 0c 10             	mov    BYTE PTR [rax+rdx*1],cl
   140003537:	8b 43 24             	mov    eax,DWORD PTR [rbx+0x24]
   14000353a:	83 c0 01             	add    eax,0x1
   14000353d:	89 43 24             	mov    DWORD PTR [rbx+0x24],eax
   140003540:	49 39 f4             	cmp    r12,rsi
   140003543:	74 36                	je     14000357b <__pformat_emit_radix_point+0xbb>
   140003545:	8b 53 08             	mov    edx,DWORD PTR [rbx+0x8]
   140003548:	48 83 c6 01          	add    rsi,0x1
   14000354c:	f6 c6 40             	test   dh,0x40
   14000354f:	75 08                	jne    140003559 <__pformat_emit_radix_point+0x99>
   140003551:	8b 43 24             	mov    eax,DWORD PTR [rbx+0x24]
   140003554:	39 43 28             	cmp    DWORD PTR [rbx+0x28],eax
   140003557:	7e e1                	jle    14000353a <__pformat_emit_radix_point+0x7a>
   140003559:	0f be 4e ff          	movsx  ecx,BYTE PTR [rsi-0x1]
   14000355d:	48 8b 03             	mov    rax,QWORD PTR [rbx]
   140003560:	80 e6 20             	and    dh,0x20
   140003563:	74 cb                	je     140003530 <__pformat_emit_radix_point+0x70>
   140003565:	48 89 c2             	mov    rdx,rax
   140003568:	e8 53 45 00 00       	call   140007ac0 <fputc>
   14000356d:	8b 43 24             	mov    eax,DWORD PTR [rbx+0x24]
   140003570:	83 c0 01             	add    eax,0x1
   140003573:	89 43 24             	mov    DWORD PTR [rbx+0x24],eax
   140003576:	49 39 f4             	cmp    r12,rsi
   140003579:	75 ca                	jne    140003545 <__pformat_emit_radix_point+0x85>
   14000357b:	48 89 fc             	mov    rsp,rdi
   14000357e:	48 89 ec             	mov    rsp,rbp
   140003581:	5b                   	pop    rbx
   140003582:	5e                   	pop    rsi
   140003583:	5f                   	pop    rdi
   140003584:	41 5c                	pop    r12
   140003586:	5d                   	pop    rbp
   140003587:	c3                   	ret
   140003588:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   14000358f:	00 
   140003590:	48 89 da             	mov    rdx,rbx
   140003593:	b9 2e 00 00 00       	mov    ecx,0x2e
   140003598:	e8 13 f2 ff ff       	call   1400027b0 <__pformat_putc>
   14000359d:	90                   	nop
   14000359e:	48 89 ec             	mov    rsp,rbp
   1400035a1:	5b                   	pop    rbx
   1400035a2:	5e                   	pop    rsi
   1400035a3:	5f                   	pop    rdi
   1400035a4:	41 5c                	pop    r12
   1400035a6:	5d                   	pop    rbp
   1400035a7:	c3                   	ret
   1400035a8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   1400035af:	00 
   1400035b0:	48 c7 45 f8 00 00 00 	mov    QWORD PTR [rbp-0x8],0x0
   1400035b7:	00 
   1400035b8:	48 8d 75 f8          	lea    rsi,[rbp-0x8]
   1400035bc:	e8 17 45 00 00       	call   140007ad8 <localeconv>
   1400035c1:	48 8d 4d f6          	lea    rcx,[rbp-0xa]
   1400035c5:	49 89 f1             	mov    r9,rsi
   1400035c8:	41 b8 10 00 00 00    	mov    r8d,0x10
   1400035ce:	48 8b 10             	mov    rdx,QWORD PTR [rax]
   1400035d1:	e8 5a 42 00 00       	call   140007830 <mbrtowc>
   1400035d6:	85 c0                	test   eax,eax
   1400035d8:	7e 2e                	jle    140003608 <__pformat_emit_radix_point+0x148>
   1400035da:	0f b7 55 f6          	movzx  edx,WORD PTR [rbp-0xa]
   1400035de:	66 89 53 18          	mov    WORD PTR [rbx+0x18],dx
   1400035e2:	89 43 14             	mov    DWORD PTR [rbx+0x14],eax
   1400035e5:	e9 f6 fe ff ff       	jmp    1400034e0 <__pformat_emit_radix_point+0x20>
   1400035ea:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   1400035f0:	48 89 da             	mov    rdx,rbx
   1400035f3:	b9 2e 00 00 00       	mov    ecx,0x2e
   1400035f8:	e8 b3 f1 ff ff       	call   1400027b0 <__pformat_putc>
   1400035fd:	48 89 fc             	mov    rsp,rdi
   140003600:	e9 79 ff ff ff       	jmp    14000357e <__pformat_emit_radix_point+0xbe>
   140003605:	0f 1f 00             	nop    DWORD PTR [rax]
   140003608:	0f b7 53 18          	movzx  edx,WORD PTR [rbx+0x18]
   14000360c:	eb d4                	jmp    1400035e2 <__pformat_emit_radix_point+0x122>
   14000360e:	66 90                	xchg   ax,ax

0000000140003610 <__pformat_emit_float>:
   140003610:	55                   	push   rbp
   140003611:	41 54                	push   r12
   140003613:	57                   	push   rdi
   140003614:	56                   	push   rsi
   140003615:	53                   	push   rbx
   140003616:	48 83 ec 20          	sub    rsp,0x20
   14000361a:	48 8d 6c 24 20       	lea    rbp,[rsp+0x20]
   14000361f:	41 8b 41 0c          	mov    eax,DWORD PTR [r9+0xc]
   140003623:	41 89 cc             	mov    r12d,ecx
   140003626:	48 89 d7             	mov    rdi,rdx
   140003629:	44 89 c6             	mov    esi,r8d
   14000362c:	4c 89 cb             	mov    rbx,r9
   14000362f:	45 85 c0             	test   r8d,r8d
   140003632:	0f 8e 48 01 00 00    	jle    140003780 <__pformat_emit_float+0x170>
   140003638:	41 39 c0             	cmp    r8d,eax
   14000363b:	7f 63                	jg     1400036a0 <__pformat_emit_float+0x90>
   14000363d:	41 8b 51 10          	mov    edx,DWORD PTR [r9+0x10]
   140003641:	44 29 c0             	sub    eax,r8d
   140003644:	39 d0                	cmp    eax,edx
   140003646:	0f 8e 04 03 00 00    	jle    140003950 <__pformat_emit_float+0x340>
   14000364c:	29 d0                	sub    eax,edx
   14000364e:	89 43 0c             	mov    DWORD PTR [rbx+0xc],eax
   140003651:	85 d2                	test   edx,edx
   140003653:	0f 8e 27 03 00 00    	jle    140003980 <__pformat_emit_float+0x370>
   140003659:	83 e8 01             	sub    eax,0x1
   14000365c:	89 43 0c             	mov    DWORD PTR [rbx+0xc],eax
   14000365f:	85 f6                	test   esi,esi
   140003661:	7e 0d                	jle    140003670 <__pformat_emit_float+0x60>
   140003663:	f6 43 09 10          	test   BYTE PTR [rbx+0x9],0x10
   140003667:	0f 85 fa 02 00 00    	jne    140003967 <__pformat_emit_float+0x357>
   14000366d:	0f 1f 00             	nop    DWORD PTR [rax]
   140003670:	85 c0                	test   eax,eax
   140003672:	7e 3f                	jle    1400036b3 <__pformat_emit_float+0xa3>
   140003674:	45 85 e4             	test   r12d,r12d
   140003677:	0f 85 db 01 00 00    	jne    140003858 <__pformat_emit_float+0x248>
   14000367d:	8b 53 08             	mov    edx,DWORD PTR [rbx+0x8]
   140003680:	f7 c2 c0 01 00 00    	test   edx,0x1c0
   140003686:	0f 84 ac 02 00 00    	je     140003938 <__pformat_emit_float+0x328>
   14000368c:	8d 48 ff             	lea    ecx,[rax-0x1]
   14000368f:	89 4b 0c             	mov    DWORD PTR [rbx+0xc],ecx
   140003692:	85 c9                	test   ecx,ecx
   140003694:	74 29                	je     1400036bf <__pformat_emit_float+0xaf>
   140003696:	f6 c6 06             	test   dh,0x6
   140003699:	75 24                	jne    1400036bf <__pformat_emit_float+0xaf>
   14000369b:	e9 d3 01 00 00       	jmp    140003873 <__pformat_emit_float+0x263>
   1400036a0:	41 c7 41 0c ff ff ff 	mov    DWORD PTR [r9+0xc],0xffffffff
   1400036a7:	ff 
   1400036a8:	41 f6 41 09 10       	test   BYTE PTR [r9+0x9],0x10
   1400036ad:	0f 85 2d 02 00 00    	jne    1400038e0 <__pformat_emit_float+0x2d0>
   1400036b3:	45 85 e4             	test   r12d,r12d
   1400036b6:	0f 85 f4 00 00 00    	jne    1400037b0 <__pformat_emit_float+0x1a0>
   1400036bc:	8b 53 08             	mov    edx,DWORD PTR [rbx+0x8]
   1400036bf:	f6 c6 01             	test   dh,0x1
   1400036c2:	0f 85 d8 01 00 00    	jne    1400038a0 <__pformat_emit_float+0x290>
   1400036c8:	83 e2 40             	and    edx,0x40
   1400036cb:	74 13                	je     1400036e0 <__pformat_emit_float+0xd0>
   1400036cd:	48 89 da             	mov    rdx,rbx
   1400036d0:	b9 20 00 00 00       	mov    ecx,0x20
   1400036d5:	e8 d6 f0 ff ff       	call   1400027b0 <__pformat_putc>
   1400036da:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   1400036e0:	8b 43 0c             	mov    eax,DWORD PTR [rbx+0xc]
   1400036e3:	85 c0                	test   eax,eax
   1400036e5:	7e 15                	jle    1400036fc <__pformat_emit_float+0xec>
   1400036e7:	8b 53 08             	mov    edx,DWORD PTR [rbx+0x8]
   1400036ea:	81 e2 00 06 00 00    	and    edx,0x600
   1400036f0:	81 fa 00 02 00 00    	cmp    edx,0x200
   1400036f6:	0f 84 bc 01 00 00    	je     1400038b8 <__pformat_emit_float+0x2a8>
   1400036fc:	85 f6                	test   esi,esi
   1400036fe:	0f 8e 0c 01 00 00    	jle    140003810 <__pformat_emit_float+0x200>
   140003704:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140003708:	0f b6 07             	movzx  eax,BYTE PTR [rdi]
   14000370b:	b9 30 00 00 00       	mov    ecx,0x30
   140003710:	84 c0                	test   al,al
   140003712:	74 07                	je     14000371b <__pformat_emit_float+0x10b>
   140003714:	48 83 c7 01          	add    rdi,0x1
   140003718:	0f be c8             	movsx  ecx,al
   14000371b:	48 89 da             	mov    rdx,rbx
   14000371e:	e8 8d f0 ff ff       	call   1400027b0 <__pformat_putc>
   140003723:	83 ee 01             	sub    esi,0x1
   140003726:	74 30                	je     140003758 <__pformat_emit_float+0x148>
   140003728:	f6 43 09 10          	test   BYTE PTR [rbx+0x9],0x10
   14000372c:	74 da                	je     140003708 <__pformat_emit_float+0xf8>
   14000372e:	66 83 7b 20 00       	cmp    WORD PTR [rbx+0x20],0x0
   140003733:	74 d3                	je     140003708 <__pformat_emit_float+0xf8>
   140003735:	69 c6 ab aa aa aa    	imul   eax,esi,0xaaaaaaab
   14000373b:	3d 55 55 55 55       	cmp    eax,0x55555555
   140003740:	77 c6                	ja     140003708 <__pformat_emit_float+0xf8>
   140003742:	48 8d 4b 20          	lea    rcx,[rbx+0x20]
   140003746:	49 89 d8             	mov    r8,rbx
   140003749:	ba 01 00 00 00       	mov    edx,0x1
   14000374e:	e8 bd f0 ff ff       	call   140002810 <__pformat_wputchars>
   140003753:	eb b3                	jmp    140003708 <__pformat_emit_float+0xf8>
   140003755:	0f 1f 00             	nop    DWORD PTR [rax]
   140003758:	8b 43 10             	mov    eax,DWORD PTR [rbx+0x10]
   14000375b:	85 c0                	test   eax,eax
   14000375d:	7f 69                	jg     1400037c8 <__pformat_emit_float+0x1b8>
   14000375f:	f6 43 09 08          	test   BYTE PTR [rbx+0x9],0x8
   140003763:	0f 85 bf 00 00 00    	jne    140003828 <__pformat_emit_float+0x218>
   140003769:	83 e8 01             	sub    eax,0x1
   14000376c:	89 43 10             	mov    DWORD PTR [rbx+0x10],eax
   14000376f:	48 83 c4 20          	add    rsp,0x20
   140003773:	5b                   	pop    rbx
   140003774:	5e                   	pop    rsi
   140003775:	5f                   	pop    rdi
   140003776:	41 5c                	pop    r12
   140003778:	5d                   	pop    rbp
   140003779:	c3                   	ret
   14000377a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140003780:	85 c0                	test   eax,eax
   140003782:	0f 8e 18 02 00 00    	jle    1400039a0 <__pformat_emit_float+0x390>
   140003788:	41 8b 51 10          	mov    edx,DWORD PTR [r9+0x10]
   14000378c:	83 e8 01             	sub    eax,0x1
   14000378f:	39 d0                	cmp    eax,edx
   140003791:	0f 8f b5 fe ff ff    	jg     14000364c <__pformat_emit_float+0x3c>
   140003797:	c7 43 0c ff ff ff ff 	mov    DWORD PTR [rbx+0xc],0xffffffff
   14000379e:	45 85 e4             	test   r12d,r12d
   1400037a1:	0f 84 15 ff ff ff    	je     1400036bc <__pformat_emit_float+0xac>
   1400037a7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
   1400037ae:	00 00 
   1400037b0:	48 89 da             	mov    rdx,rbx
   1400037b3:	b9 2d 00 00 00       	mov    ecx,0x2d
   1400037b8:	e8 f3 ef ff ff       	call   1400027b0 <__pformat_putc>
   1400037bd:	e9 1e ff ff ff       	jmp    1400036e0 <__pformat_emit_float+0xd0>
   1400037c2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   1400037c8:	48 89 d9             	mov    rcx,rbx
   1400037cb:	e8 f0 fc ff ff       	call   1400034c0 <__pformat_emit_radix_point>
   1400037d0:	eb 21                	jmp    1400037f3 <__pformat_emit_float+0x1e3>
   1400037d2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   1400037d8:	0f b6 07             	movzx  eax,BYTE PTR [rdi]
   1400037db:	b9 30 00 00 00       	mov    ecx,0x30
   1400037e0:	84 c0                	test   al,al
   1400037e2:	74 07                	je     1400037eb <__pformat_emit_float+0x1db>
   1400037e4:	48 83 c7 01          	add    rdi,0x1
   1400037e8:	0f be c8             	movsx  ecx,al
   1400037eb:	48 89 da             	mov    rdx,rbx
   1400037ee:	e8 bd ef ff ff       	call   1400027b0 <__pformat_putc>
   1400037f3:	8b 43 10             	mov    eax,DWORD PTR [rbx+0x10]
   1400037f6:	8d 50 ff             	lea    edx,[rax-0x1]
   1400037f9:	89 53 10             	mov    DWORD PTR [rbx+0x10],edx
   1400037fc:	85 c0                	test   eax,eax
   1400037fe:	7f d8                	jg     1400037d8 <__pformat_emit_float+0x1c8>
   140003800:	48 83 c4 20          	add    rsp,0x20
   140003804:	5b                   	pop    rbx
   140003805:	5e                   	pop    rsi
   140003806:	5f                   	pop    rdi
   140003807:	41 5c                	pop    r12
   140003809:	5d                   	pop    rbp
   14000380a:	c3                   	ret
   14000380b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140003810:	48 89 da             	mov    rdx,rbx
   140003813:	b9 30 00 00 00       	mov    ecx,0x30
   140003818:	e8 93 ef ff ff       	call   1400027b0 <__pformat_putc>
   14000381d:	8b 43 10             	mov    eax,DWORD PTR [rbx+0x10]
   140003820:	85 c0                	test   eax,eax
   140003822:	0f 8e a7 01 00 00    	jle    1400039cf <__pformat_emit_float+0x3bf>
   140003828:	48 89 d9             	mov    rcx,rbx
   14000382b:	e8 90 fc ff ff       	call   1400034c0 <__pformat_emit_radix_point>
   140003830:	85 f6                	test   esi,esi
   140003832:	74 bf                	je     1400037f3 <__pformat_emit_float+0x1e3>
   140003834:	8b 43 10             	mov    eax,DWORD PTR [rbx+0x10]
   140003837:	01 f0                	add    eax,esi
   140003839:	89 43 10             	mov    DWORD PTR [rbx+0x10],eax
   14000383c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140003840:	48 89 da             	mov    rdx,rbx
   140003843:	b9 30 00 00 00       	mov    ecx,0x30
   140003848:	e8 63 ef ff ff       	call   1400027b0 <__pformat_putc>
   14000384d:	83 c6 01             	add    esi,0x1
   140003850:	75 ee                	jne    140003840 <__pformat_emit_float+0x230>
   140003852:	eb 9f                	jmp    1400037f3 <__pformat_emit_float+0x1e3>
   140003854:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140003858:	8d 50 ff             	lea    edx,[rax-0x1]
   14000385b:	89 53 0c             	mov    DWORD PTR [rbx+0xc],edx
   14000385e:	85 d2                	test   edx,edx
   140003860:	0f 84 4a ff ff ff    	je     1400037b0 <__pformat_emit_float+0x1a0>
   140003866:	f7 43 08 00 06 00 00 	test   DWORD PTR [rbx+0x8],0x600
   14000386d:	0f 85 3d ff ff ff    	jne    1400037b0 <__pformat_emit_float+0x1a0>
   140003873:	83 e8 02             	sub    eax,0x2
   140003876:	89 43 0c             	mov    DWORD PTR [rbx+0xc],eax
   140003879:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140003880:	48 89 da             	mov    rdx,rbx
   140003883:	b9 20 00 00 00       	mov    ecx,0x20
   140003888:	e8 23 ef ff ff       	call   1400027b0 <__pformat_putc>
   14000388d:	8b 43 0c             	mov    eax,DWORD PTR [rbx+0xc]
   140003890:	8d 50 ff             	lea    edx,[rax-0x1]
   140003893:	89 53 0c             	mov    DWORD PTR [rbx+0xc],edx
   140003896:	85 c0                	test   eax,eax
   140003898:	7f e6                	jg     140003880 <__pformat_emit_float+0x270>
   14000389a:	e9 14 fe ff ff       	jmp    1400036b3 <__pformat_emit_float+0xa3>
   14000389f:	90                   	nop
   1400038a0:	48 89 da             	mov    rdx,rbx
   1400038a3:	b9 2b 00 00 00       	mov    ecx,0x2b
   1400038a8:	e8 03 ef ff ff       	call   1400027b0 <__pformat_putc>
   1400038ad:	e9 2e fe ff ff       	jmp    1400036e0 <__pformat_emit_float+0xd0>
   1400038b2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   1400038b8:	83 e8 01             	sub    eax,0x1
   1400038bb:	89 43 0c             	mov    DWORD PTR [rbx+0xc],eax
   1400038be:	66 90                	xchg   ax,ax
   1400038c0:	48 89 da             	mov    rdx,rbx
   1400038c3:	b9 30 00 00 00       	mov    ecx,0x30
   1400038c8:	e8 e3 ee ff ff       	call   1400027b0 <__pformat_putc>
   1400038cd:	8b 43 0c             	mov    eax,DWORD PTR [rbx+0xc]
   1400038d0:	8d 50 ff             	lea    edx,[rax-0x1]
   1400038d3:	89 53 0c             	mov    DWORD PTR [rbx+0xc],edx
   1400038d6:	85 c0                	test   eax,eax
   1400038d8:	7f e6                	jg     1400038c0 <__pformat_emit_float+0x2b0>
   1400038da:	e9 1d fe ff ff       	jmp    1400036fc <__pformat_emit_float+0xec>
   1400038df:	90                   	nop
   1400038e0:	66 41 83 79 20 00    	cmp    WORD PTR [r9+0x20],0x0
   1400038e6:	0f 84 c7 fd ff ff    	je     1400036b3 <__pformat_emit_float+0xa3>
   1400038ec:	b8 ff ff ff ff       	mov    eax,0xffffffff
   1400038f1:	ba ab aa aa aa       	mov    edx,0xaaaaaaab
   1400038f6:	44 8d 46 02          	lea    r8d,[rsi+0x2]
   1400038fa:	4c 0f af c2          	imul   r8,rdx
   1400038fe:	89 c2                	mov    edx,eax
   140003900:	49 c1 e8 21          	shr    r8,0x21
   140003904:	41 8d 48 ff          	lea    ecx,[r8-0x1]
   140003908:	29 c1                	sub    ecx,eax
   14000390a:	41 83 f8 01          	cmp    r8d,0x1
   14000390e:	75 18                	jne    140003928 <__pformat_emit_float+0x318>
   140003910:	e9 5b fd ff ff       	jmp    140003670 <__pformat_emit_float+0x60>
   140003915:	0f 1f 00             	nop    DWORD PTR [rax]
   140003918:	83 ea 01             	sub    edx,0x1
   14000391b:	89 c8                	mov    eax,ecx
   14000391d:	01 d0                	add    eax,edx
   14000391f:	89 53 0c             	mov    DWORD PTR [rbx+0xc],edx
   140003922:	0f 84 a0 00 00 00    	je     1400039c8 <__pformat_emit_float+0x3b8>
   140003928:	85 d2                	test   edx,edx
   14000392a:	7f ec                	jg     140003918 <__pformat_emit_float+0x308>
   14000392c:	e9 82 fd ff ff       	jmp    1400036b3 <__pformat_emit_float+0xa3>
   140003931:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140003938:	80 e6 06             	and    dh,0x6
   14000393b:	0f 85 9f fd ff ff    	jne    1400036e0 <__pformat_emit_float+0xd0>
   140003941:	83 e8 01             	sub    eax,0x1
   140003944:	e9 2d ff ff ff       	jmp    140003876 <__pformat_emit_float+0x266>
   140003949:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140003950:	41 c7 41 0c ff ff ff 	mov    DWORD PTR [r9+0xc],0xffffffff
   140003957:	ff 
   140003958:	b8 ff ff ff ff       	mov    eax,0xffffffff
   14000395d:	f6 43 09 10          	test   BYTE PTR [rbx+0x9],0x10
   140003961:	0f 84 09 fd ff ff    	je     140003670 <__pformat_emit_float+0x60>
   140003967:	66 83 7b 20 00       	cmp    WORD PTR [rbx+0x20],0x0
   14000396c:	0f 84 fe fc ff ff    	je     140003670 <__pformat_emit_float+0x60>
   140003972:	e9 7a ff ff ff       	jmp    1400038f1 <__pformat_emit_float+0x2e1>
   140003977:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
   14000397e:	00 00 
   140003980:	8b 53 08             	mov    edx,DWORD PTR [rbx+0x8]
   140003983:	f6 c6 08             	test   dh,0x8
   140003986:	0f 85 cd fc ff ff    	jne    140003659 <__pformat_emit_float+0x49>
   14000398c:	85 f6                	test   esi,esi
   14000398e:	0f 8e e0 fc ff ff    	jle    140003674 <__pformat_emit_float+0x64>
   140003994:	80 e6 10             	and    dh,0x10
   140003997:	75 ce                	jne    140003967 <__pformat_emit_float+0x357>
   140003999:	e9 d6 fc ff ff       	jmp    140003674 <__pformat_emit_float+0x64>
   14000399e:	66 90                	xchg   ax,ax
   1400039a0:	0f 85 f1 fd ff ff    	jne    140003797 <__pformat_emit_float+0x187>
   1400039a6:	41 8b 41 10          	mov    eax,DWORD PTR [r9+0x10]
   1400039aa:	85 c0                	test   eax,eax
   1400039ac:	0f 89 e5 fd ff ff    	jns    140003797 <__pformat_emit_float+0x187>
   1400039b2:	f7 d8                	neg    eax
   1400039b4:	41 89 41 0c          	mov    DWORD PTR [r9+0xc],eax
   1400039b8:	41 f6 41 09 08       	test   BYTE PTR [r9+0x9],0x8
   1400039bd:	0f 85 96 fc ff ff    	jne    140003659 <__pformat_emit_float+0x49>
   1400039c3:	e9 ac fc ff ff       	jmp    140003674 <__pformat_emit_float+0x64>
   1400039c8:	89 d0                	mov    eax,edx
   1400039ca:	e9 a1 fc ff ff       	jmp    140003670 <__pformat_emit_float+0x60>
   1400039cf:	f6 43 09 08          	test   BYTE PTR [rbx+0x9],0x8
   1400039d3:	0f 85 4f fe ff ff    	jne    140003828 <__pformat_emit_float+0x218>
   1400039d9:	85 f6                	test   esi,esi
   1400039db:	0f 85 56 fe ff ff    	jne    140003837 <__pformat_emit_float+0x227>
   1400039e1:	e9 83 fd ff ff       	jmp    140003769 <__pformat_emit_float+0x159>
   1400039e6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   1400039ed:	00 00 00 

00000001400039f0 <__pformat_emit_efloat>:
   1400039f0:	55                   	push   rbp
   1400039f1:	57                   	push   rdi
   1400039f2:	56                   	push   rsi
   1400039f3:	53                   	push   rbx
   1400039f4:	48 83 ec 28          	sub    rsp,0x28
   1400039f8:	48 8d 6c 24 20       	lea    rbp,[rsp+0x20]
   1400039fd:	41 ba 01 00 00 00    	mov    r10d,0x1
   140003a03:	41 83 e8 01          	sub    r8d,0x1
   140003a07:	41 89 cb             	mov    r11d,ecx
   140003a0a:	4c 89 cb             	mov    rbx,r9
   140003a0d:	49 63 f0             	movsxd rsi,r8d
   140003a10:	41 c1 f8 1f          	sar    r8d,0x1f
   140003a14:	48 69 ce 67 66 66 66 	imul   rcx,rsi,0x66666667
   140003a1b:	48 c1 f9 22          	sar    rcx,0x22
   140003a1f:	44 29 c1             	sub    ecx,r8d
   140003a22:	74 1f                	je     140003a43 <__pformat_emit_efloat+0x53>
   140003a24:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140003a28:	48 63 c1             	movsxd rax,ecx
   140003a2b:	c1 f9 1f             	sar    ecx,0x1f
   140003a2e:	41 83 c2 01          	add    r10d,0x1
   140003a32:	48 69 c0 67 66 66 66 	imul   rax,rax,0x66666667
   140003a39:	48 c1 f8 22          	sar    rax,0x22
   140003a3d:	29 c8                	sub    eax,ecx
   140003a3f:	89 c1                	mov    ecx,eax
   140003a41:	75 e5                	jne    140003a28 <__pformat_emit_efloat+0x38>
   140003a43:	8b 43 2c             	mov    eax,DWORD PTR [rbx+0x2c]
   140003a46:	83 f8 ff             	cmp    eax,0xffffffff
   140003a49:	75 0c                	jne    140003a57 <__pformat_emit_efloat+0x67>
   140003a4b:	c7 43 2c 02 00 00 00 	mov    DWORD PTR [rbx+0x2c],0x2
   140003a52:	b8 02 00 00 00       	mov    eax,0x2
   140003a57:	41 39 c2             	cmp    r10d,eax
   140003a5a:	44 8b 43 0c          	mov    r8d,DWORD PTR [rbx+0xc]
   140003a5e:	49 89 d9             	mov    r9,rbx
   140003a61:	41 0f 4d c2          	cmovge eax,r10d
   140003a65:	8d 48 02             	lea    ecx,[rax+0x2]
   140003a68:	89 c7                	mov    edi,eax
   140003a6a:	44 89 c0             	mov    eax,r8d
   140003a6d:	29 c8                	sub    eax,ecx
   140003a6f:	41 39 c8             	cmp    r8d,ecx
   140003a72:	b9 ff ff ff ff       	mov    ecx,0xffffffff
   140003a77:	41 b8 01 00 00 00    	mov    r8d,0x1
   140003a7d:	0f 4e c1             	cmovle eax,ecx
   140003a80:	44 89 d9             	mov    ecx,r11d
   140003a83:	89 43 0c             	mov    DWORD PTR [rbx+0xc],eax
   140003a86:	e8 85 fb ff ff       	call   140003610 <__pformat_emit_float>
   140003a8b:	8b 4b 08             	mov    ecx,DWORD PTR [rbx+0x8]
   140003a8e:	8b 43 2c             	mov    eax,DWORD PTR [rbx+0x2c]
   140003a91:	48 89 da             	mov    rdx,rbx
   140003a94:	89 43 10             	mov    DWORD PTR [rbx+0x10],eax
   140003a97:	89 c8                	mov    eax,ecx
   140003a99:	83 e1 20             	and    ecx,0x20
   140003a9c:	0d c0 01 00 00       	or     eax,0x1c0
   140003aa1:	83 c9 45             	or     ecx,0x45
   140003aa4:	89 43 08             	mov    DWORD PTR [rbx+0x8],eax
   140003aa7:	e8 04 ed ff ff       	call   1400027b0 <__pformat_putc>
   140003aac:	44 8d 57 01          	lea    r10d,[rdi+0x1]
   140003ab0:	44 01 53 0c          	add    DWORD PTR [rbx+0xc],r10d
   140003ab4:	48 89 da             	mov    rdx,rbx
   140003ab7:	48 89 f1             	mov    rcx,rsi
   140003aba:	48 83 c4 28          	add    rsp,0x28
   140003abe:	5b                   	pop    rbx
   140003abf:	5e                   	pop    rsi
   140003ac0:	5f                   	pop    rdi
   140003ac1:	5d                   	pop    rbp
   140003ac2:	e9 49 f6 ff ff       	jmp    140003110 <__pformat_int.isra.0>
   140003ac7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
   140003ace:	00 00 

0000000140003ad0 <__pformat_efloat>:
   140003ad0:	55                   	push   rbp
   140003ad1:	56                   	push   rsi
   140003ad2:	53                   	push   rbx
   140003ad3:	48 83 ec 50          	sub    rsp,0x50
   140003ad7:	48 8d 6c 24 50       	lea    rbp,[rsp+0x50]
   140003adc:	44 8b 42 10          	mov    r8d,DWORD PTR [rdx+0x10]
   140003ae0:	db 29                	fld    TBYTE PTR [rcx]
   140003ae2:	48 89 d3             	mov    rbx,rdx
   140003ae5:	45 85 c0             	test   r8d,r8d
   140003ae8:	78 56                	js     140003b40 <__pformat_efloat+0x70>
   140003aea:	41 83 c0 01          	add    r8d,0x1
   140003aee:	48 8d 45 f8          	lea    rax,[rbp-0x8]
   140003af2:	48 8d 55 e0          	lea    rdx,[rbp-0x20]
   140003af6:	b9 02 00 00 00       	mov    ecx,0x2
   140003afb:	db 7d e0             	fstp   TBYTE PTR [rbp-0x20]
   140003afe:	4c 8d 4d fc          	lea    r9,[rbp-0x4]
   140003b02:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
   140003b07:	e8 b4 eb ff ff       	call   1400026c0 <__pformat_cvt>
   140003b0c:	44 8b 45 fc          	mov    r8d,DWORD PTR [rbp-0x4]
   140003b10:	48 89 c6             	mov    rsi,rax
   140003b13:	41 81 f8 00 80 ff ff 	cmp    r8d,0xffff8000
   140003b1a:	74 34                	je     140003b50 <__pformat_efloat+0x80>
   140003b1c:	8b 4d f8             	mov    ecx,DWORD PTR [rbp-0x8]
   140003b1f:	49 89 d9             	mov    r9,rbx
   140003b22:	48 89 c2             	mov    rdx,rax
   140003b25:	e8 c6 fe ff ff       	call   1400039f0 <__pformat_emit_efloat>
   140003b2a:	48 89 f1             	mov    rcx,rsi
   140003b2d:	e8 0e 12 00 00       	call   140004d40 <__freedtoa>
   140003b32:	90                   	nop
   140003b33:	48 83 c4 50          	add    rsp,0x50
   140003b37:	5b                   	pop    rbx
   140003b38:	5e                   	pop    rsi
   140003b39:	5d                   	pop    rbp
   140003b3a:	c3                   	ret
   140003b3b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140003b40:	c7 42 10 06 00 00 00 	mov    DWORD PTR [rdx+0x10],0x6
   140003b47:	41 b8 07 00 00 00    	mov    r8d,0x7
   140003b4d:	eb 9f                	jmp    140003aee <__pformat_efloat+0x1e>
   140003b4f:	90                   	nop
   140003b50:	8b 4d f8             	mov    ecx,DWORD PTR [rbp-0x8]
   140003b53:	49 89 d8             	mov    r8,rbx
   140003b56:	48 89 c2             	mov    rdx,rax
   140003b59:	e8 f2 ef ff ff       	call   140002b50 <__pformat_emit_inf_or_nan>
   140003b5e:	48 89 f1             	mov    rcx,rsi
   140003b61:	e8 da 11 00 00       	call   140004d40 <__freedtoa>
   140003b66:	90                   	nop
   140003b67:	48 83 c4 50          	add    rsp,0x50
   140003b6b:	5b                   	pop    rbx
   140003b6c:	5e                   	pop    rsi
   140003b6d:	5d                   	pop    rbp
   140003b6e:	c3                   	ret
   140003b6f:	90                   	nop

0000000140003b70 <__pformat_float>:
   140003b70:	55                   	push   rbp
   140003b71:	56                   	push   rsi
   140003b72:	53                   	push   rbx
   140003b73:	48 83 ec 50          	sub    rsp,0x50
   140003b77:	48 8d 6c 24 50       	lea    rbp,[rsp+0x50]
   140003b7c:	44 8b 42 10          	mov    r8d,DWORD PTR [rdx+0x10]
   140003b80:	db 29                	fld    TBYTE PTR [rcx]
   140003b82:	48 89 d3             	mov    rbx,rdx
   140003b85:	45 85 c0             	test   r8d,r8d
   140003b88:	79 0d                	jns    140003b97 <__pformat_float+0x27>
   140003b8a:	c7 42 10 06 00 00 00 	mov    DWORD PTR [rdx+0x10],0x6
   140003b91:	41 b8 06 00 00 00    	mov    r8d,0x6
   140003b97:	48 8d 45 f8          	lea    rax,[rbp-0x8]
   140003b9b:	48 8d 55 e0          	lea    rdx,[rbp-0x20]
   140003b9f:	b9 03 00 00 00       	mov    ecx,0x3
   140003ba4:	db 7d e0             	fstp   TBYTE PTR [rbp-0x20]
   140003ba7:	4c 8d 4d fc          	lea    r9,[rbp-0x4]
   140003bab:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
   140003bb0:	e8 0b eb ff ff       	call   1400026c0 <__pformat_cvt>
   140003bb5:	44 8b 45 fc          	mov    r8d,DWORD PTR [rbp-0x4]
   140003bb9:	48 89 c6             	mov    rsi,rax
   140003bbc:	41 81 f8 00 80 ff ff 	cmp    r8d,0xffff8000
   140003bc3:	74 6b                	je     140003c30 <__pformat_float+0xc0>
   140003bc5:	8b 4d f8             	mov    ecx,DWORD PTR [rbp-0x8]
   140003bc8:	48 89 c2             	mov    rdx,rax
   140003bcb:	49 89 d9             	mov    r9,rbx
   140003bce:	e8 3d fa ff ff       	call   140003610 <__pformat_emit_float>
   140003bd3:	8b 43 0c             	mov    eax,DWORD PTR [rbx+0xc]
   140003bd6:	eb 1c                	jmp    140003bf4 <__pformat_float+0x84>
   140003bd8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   140003bdf:	00 
   140003be0:	48 63 43 24          	movsxd rax,DWORD PTR [rbx+0x24]
   140003be4:	c6 04 02 20          	mov    BYTE PTR [rdx+rax*1],0x20
   140003be8:	8b 53 24             	mov    edx,DWORD PTR [rbx+0x24]
   140003beb:	8b 43 0c             	mov    eax,DWORD PTR [rbx+0xc]
   140003bee:	83 c2 01             	add    edx,0x1
   140003bf1:	89 53 24             	mov    DWORD PTR [rbx+0x24],edx
   140003bf4:	89 c2                	mov    edx,eax
   140003bf6:	83 e8 01             	sub    eax,0x1
   140003bf9:	89 43 0c             	mov    DWORD PTR [rbx+0xc],eax
   140003bfc:	85 d2                	test   edx,edx
   140003bfe:	7e 3e                	jle    140003c3e <__pformat_float+0xce>
   140003c00:	8b 4b 08             	mov    ecx,DWORD PTR [rbx+0x8]
   140003c03:	f6 c5 40             	test   ch,0x40
   140003c06:	75 08                	jne    140003c10 <__pformat_float+0xa0>
   140003c08:	8b 53 24             	mov    edx,DWORD PTR [rbx+0x24]
   140003c0b:	39 53 28             	cmp    DWORD PTR [rbx+0x28],edx
   140003c0e:	7e de                	jle    140003bee <__pformat_float+0x7e>
   140003c10:	48 8b 13             	mov    rdx,QWORD PTR [rbx]
   140003c13:	80 e5 20             	and    ch,0x20
   140003c16:	74 c8                	je     140003be0 <__pformat_float+0x70>
   140003c18:	b9 20 00 00 00       	mov    ecx,0x20
   140003c1d:	e8 9e 3e 00 00       	call   140007ac0 <fputc>
   140003c22:	8b 53 24             	mov    edx,DWORD PTR [rbx+0x24]
   140003c25:	8b 43 0c             	mov    eax,DWORD PTR [rbx+0xc]
   140003c28:	eb c4                	jmp    140003bee <__pformat_float+0x7e>
   140003c2a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140003c30:	8b 4d f8             	mov    ecx,DWORD PTR [rbp-0x8]
   140003c33:	49 89 d8             	mov    r8,rbx
   140003c36:	48 89 c2             	mov    rdx,rax
   140003c39:	e8 12 ef ff ff       	call   140002b50 <__pformat_emit_inf_or_nan>
   140003c3e:	48 89 f1             	mov    rcx,rsi
   140003c41:	e8 fa 10 00 00       	call   140004d40 <__freedtoa>
   140003c46:	90                   	nop
   140003c47:	48 83 c4 50          	add    rsp,0x50
   140003c4b:	5b                   	pop    rbx
   140003c4c:	5e                   	pop    rsi
   140003c4d:	5d                   	pop    rbp
   140003c4e:	c3                   	ret
   140003c4f:	90                   	nop

0000000140003c50 <__pformat_gfloat>:
   140003c50:	55                   	push   rbp
   140003c51:	57                   	push   rdi
   140003c52:	56                   	push   rsi
   140003c53:	53                   	push   rbx
   140003c54:	48 83 ec 58          	sub    rsp,0x58
   140003c58:	48 8d 6c 24 50       	lea    rbp,[rsp+0x50]
   140003c5d:	44 8b 42 10          	mov    r8d,DWORD PTR [rdx+0x10]
   140003c61:	db 29                	fld    TBYTE PTR [rcx]
   140003c63:	48 89 d3             	mov    rbx,rdx
   140003c66:	45 85 c0             	test   r8d,r8d
   140003c69:	0f 88 e9 00 00 00    	js     140003d58 <__pformat_gfloat+0x108>
   140003c6f:	0f 84 cb 00 00 00    	je     140003d40 <__pformat_gfloat+0xf0>
   140003c75:	48 8d 45 f8          	lea    rax,[rbp-0x8]
   140003c79:	48 8d 55 e0          	lea    rdx,[rbp-0x20]
   140003c7d:	b9 02 00 00 00       	mov    ecx,0x2
   140003c82:	db 7d e0             	fstp   TBYTE PTR [rbp-0x20]
   140003c85:	4c 8d 4d fc          	lea    r9,[rbp-0x4]
   140003c89:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
   140003c8e:	e8 2d ea ff ff       	call   1400026c0 <__pformat_cvt>
   140003c93:	8b 7d fc             	mov    edi,DWORD PTR [rbp-0x4]
   140003c96:	48 89 c6             	mov    rsi,rax
   140003c99:	81 ff 00 80 ff ff    	cmp    edi,0xffff8000
   140003c9f:	0f 84 cb 00 00 00    	je     140003d70 <__pformat_gfloat+0x120>
   140003ca5:	8b 43 08             	mov    eax,DWORD PTR [rbx+0x8]
   140003ca8:	25 00 08 00 00       	and    eax,0x800
   140003cad:	83 ff fd             	cmp    edi,0xfffffffd
   140003cb0:	7c 4e                	jl     140003d00 <__pformat_gfloat+0xb0>
   140003cb2:	8b 53 10             	mov    edx,DWORD PTR [rbx+0x10]
   140003cb5:	39 d7                	cmp    edi,edx
   140003cb7:	7f 47                	jg     140003d00 <__pformat_gfloat+0xb0>
   140003cb9:	85 c0                	test   eax,eax
   140003cbb:	0f 84 bf 00 00 00    	je     140003d80 <__pformat_gfloat+0x130>
   140003cc1:	29 fa                	sub    edx,edi
   140003cc3:	89 53 10             	mov    DWORD PTR [rbx+0x10],edx
   140003cc6:	8b 4d f8             	mov    ecx,DWORD PTR [rbp-0x8]
   140003cc9:	49 89 d9             	mov    r9,rbx
   140003ccc:	41 89 f8             	mov    r8d,edi
   140003ccf:	48 89 f2             	mov    rdx,rsi
   140003cd2:	e8 39 f9 ff ff       	call   140003610 <__pformat_emit_float>
   140003cd7:	eb 14                	jmp    140003ced <__pformat_gfloat+0x9d>
   140003cd9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140003ce0:	48 89 da             	mov    rdx,rbx
   140003ce3:	b9 20 00 00 00       	mov    ecx,0x20
   140003ce8:	e8 c3 ea ff ff       	call   1400027b0 <__pformat_putc>
   140003ced:	8b 43 0c             	mov    eax,DWORD PTR [rbx+0xc]
   140003cf0:	8d 50 ff             	lea    edx,[rax-0x1]
   140003cf3:	89 53 0c             	mov    DWORD PTR [rbx+0xc],edx
   140003cf6:	85 c0                	test   eax,eax
   140003cf8:	7f e6                	jg     140003ce0 <__pformat_gfloat+0x90>
   140003cfa:	eb 27                	jmp    140003d23 <__pformat_gfloat+0xd3>
   140003cfc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140003d00:	85 c0                	test   eax,eax
   140003d02:	75 34                	jne    140003d38 <__pformat_gfloat+0xe8>
   140003d04:	48 89 f1             	mov    rcx,rsi
   140003d07:	e8 fc 3d 00 00       	call   140007b08 <strlen>
   140003d0c:	83 e8 01             	sub    eax,0x1
   140003d0f:	89 43 10             	mov    DWORD PTR [rbx+0x10],eax
   140003d12:	8b 4d f8             	mov    ecx,DWORD PTR [rbp-0x8]
   140003d15:	49 89 d9             	mov    r9,rbx
   140003d18:	41 89 f8             	mov    r8d,edi
   140003d1b:	48 89 f2             	mov    rdx,rsi
   140003d1e:	e8 cd fc ff ff       	call   1400039f0 <__pformat_emit_efloat>
   140003d23:	48 89 f1             	mov    rcx,rsi
   140003d26:	e8 15 10 00 00       	call   140004d40 <__freedtoa>
   140003d2b:	90                   	nop
   140003d2c:	48 83 c4 58          	add    rsp,0x58
   140003d30:	5b                   	pop    rbx
   140003d31:	5e                   	pop    rsi
   140003d32:	5f                   	pop    rdi
   140003d33:	5d                   	pop    rbp
   140003d34:	c3                   	ret
   140003d35:	0f 1f 00             	nop    DWORD PTR [rax]
   140003d38:	8b 43 10             	mov    eax,DWORD PTR [rbx+0x10]
   140003d3b:	83 e8 01             	sub    eax,0x1
   140003d3e:	eb cf                	jmp    140003d0f <__pformat_gfloat+0xbf>
   140003d40:	c7 42 10 01 00 00 00 	mov    DWORD PTR [rdx+0x10],0x1
   140003d47:	41 b8 01 00 00 00    	mov    r8d,0x1
   140003d4d:	e9 23 ff ff ff       	jmp    140003c75 <__pformat_gfloat+0x25>
   140003d52:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140003d58:	c7 42 10 06 00 00 00 	mov    DWORD PTR [rdx+0x10],0x6
   140003d5f:	41 b8 06 00 00 00    	mov    r8d,0x6
   140003d65:	e9 0b ff ff ff       	jmp    140003c75 <__pformat_gfloat+0x25>
   140003d6a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140003d70:	8b 4d f8             	mov    ecx,DWORD PTR [rbp-0x8]
   140003d73:	49 89 d8             	mov    r8,rbx
   140003d76:	48 89 c2             	mov    rdx,rax
   140003d79:	e8 d2 ed ff ff       	call   140002b50 <__pformat_emit_inf_or_nan>
   140003d7e:	eb a3                	jmp    140003d23 <__pformat_gfloat+0xd3>
   140003d80:	48 89 f1             	mov    rcx,rsi
   140003d83:	e8 80 3d 00 00       	call   140007b08 <strlen>
   140003d88:	29 f8                	sub    eax,edi
   140003d8a:	89 43 10             	mov    DWORD PTR [rbx+0x10],eax
   140003d8d:	0f 89 33 ff ff ff    	jns    140003cc6 <__pformat_gfloat+0x76>
   140003d93:	8b 53 0c             	mov    edx,DWORD PTR [rbx+0xc]
   140003d96:	85 d2                	test   edx,edx
   140003d98:	0f 8e 28 ff ff ff    	jle    140003cc6 <__pformat_gfloat+0x76>
   140003d9e:	01 d0                	add    eax,edx
   140003da0:	89 43 0c             	mov    DWORD PTR [rbx+0xc],eax
   140003da3:	e9 1e ff ff ff       	jmp    140003cc6 <__pformat_gfloat+0x76>
   140003da8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   140003daf:	00 

0000000140003db0 <__pformat_emit_xfloat.isra.0>:
   140003db0:	55                   	push   rbp
   140003db1:	41 56                	push   r14
   140003db3:	41 55                	push   r13
   140003db5:	41 54                	push   r12
   140003db7:	57                   	push   rdi
   140003db8:	56                   	push   rsi
   140003db9:	53                   	push   rbx
   140003dba:	48 83 ec 50          	sub    rsp,0x50
   140003dbe:	48 8d 6c 24 50       	lea    rbp,[rsp+0x50]
   140003dc3:	45 8b 50 10          	mov    r10d,DWORD PTR [r8+0x10]
   140003dc7:	49 89 c9             	mov    r9,rcx
   140003dca:	89 d0                	mov    eax,edx
   140003dcc:	4c 89 c3             	mov    rbx,r8
   140003dcf:	66 85 d2             	test   dx,dx
   140003dd2:	75 09                	jne    140003ddd <__pformat_emit_xfloat.isra.0+0x2d>
   140003dd4:	48 85 c9             	test   rcx,rcx
   140003dd7:	0f 84 eb 00 00 00    	je     140003ec8 <__pformat_emit_xfloat.isra.0+0x118>
   140003ddd:	44 8d 40 fd          	lea    r8d,[rax-0x3]
   140003de1:	41 83 fa 0e          	cmp    r10d,0xe
   140003de5:	0f 86 95 00 00 00    	jbe    140003e80 <__pformat_emit_xfloat.isra.0+0xd0>
   140003deb:	4d 0f bf e0          	movsx  r12,r8w
   140003def:	ba 10 00 00 00       	mov    edx,0x10
   140003df4:	4d 85 c9             	test   r9,r9
   140003df7:	0f 84 03 04 00 00    	je     140004200 <__pformat_emit_xfloat.isra.0+0x450>
   140003dfd:	44 8b 53 08          	mov    r10d,DWORD PTR [rbx+0x8]
   140003e01:	48 8d 7d e0          	lea    rdi,[rbp-0x20]
   140003e05:	48 89 fe             	mov    rsi,rdi
   140003e08:	45 89 d3             	mov    r11d,r10d
   140003e0b:	45 89 d5             	mov    r13d,r10d
   140003e0e:	41 83 e3 20          	and    r11d,0x20
   140003e12:	41 81 e5 00 08 00 00 	and    r13d,0x800
   140003e19:	eb 2b                	jmp    140003e46 <__pformat_emit_xfloat.isra.0+0x96>
   140003e1b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140003e20:	48 39 cf             	cmp    rdi,rcx
   140003e23:	72 0b                	jb     140003e30 <__pformat_emit_xfloat.isra.0+0x80>
   140003e25:	8b 73 10             	mov    esi,DWORD PTR [rbx+0x10]
   140003e28:	85 f6                	test   esi,esi
   140003e2a:	0f 88 78 03 00 00    	js     1400041a8 <__pformat_emit_xfloat.isra.0+0x3f8>
   140003e30:	83 c0 30             	add    eax,0x30
   140003e33:	88 01                	mov    BYTE PTR [rcx],al
   140003e35:	48 8d 71 01          	lea    rsi,[rcx+0x1]
   140003e39:	49 c1 e9 04          	shr    r9,0x4
   140003e3d:	83 ea 01             	sub    edx,0x1
   140003e40:	0f 84 ea 01 00 00    	je     140004030 <__pformat_emit_xfloat.isra.0+0x280>
   140003e46:	44 89 c8             	mov    eax,r9d
   140003e49:	83 e0 0f             	and    eax,0xf
   140003e4c:	83 fa 01             	cmp    edx,0x1
   140003e4f:	0f 84 ab 01 00 00    	je     140004000 <__pformat_emit_xfloat.isra.0+0x250>
   140003e55:	8b 4b 10             	mov    ecx,DWORD PTR [rbx+0x10]
   140003e58:	85 c9                	test   ecx,ecx
   140003e5a:	7e 06                	jle    140003e62 <__pformat_emit_xfloat.isra.0+0xb2>
   140003e5c:	83 e9 01             	sub    ecx,0x1
   140003e5f:	89 4b 10             	mov    DWORD PTR [rbx+0x10],ecx
   140003e62:	48 89 f1             	mov    rcx,rsi
   140003e65:	85 c0                	test   eax,eax
   140003e67:	74 b7                	je     140003e20 <__pformat_emit_xfloat.isra.0+0x70>
   140003e69:	83 f8 09             	cmp    eax,0x9
   140003e6c:	76 c2                	jbe    140003e30 <__pformat_emit_xfloat.isra.0+0x80>
   140003e6e:	83 c0 37             	add    eax,0x37
   140003e71:	44 09 d8             	or     eax,r11d
   140003e74:	eb bd                	jmp    140003e33 <__pformat_emit_xfloat.isra.0+0x83>
   140003e76:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   140003e7d:	00 00 00 
   140003e80:	b9 0e 00 00 00       	mov    ecx,0xe
   140003e85:	ba 04 00 00 00       	mov    edx,0x4
   140003e8a:	49 d1 e9             	shr    r9,1
   140003e8d:	44 29 d1             	sub    ecx,r10d
   140003e90:	c1 e1 02             	shl    ecx,0x2
   140003e93:	48 d3 e2             	shl    rdx,cl
   140003e96:	4c 01 ca             	add    rdx,r9
   140003e99:	0f 89 51 03 00 00    	jns    1400041f0 <__pformat_emit_xfloat.isra.0+0x440>
   140003e9f:	b9 0f 00 00 00       	mov    ecx,0xf
   140003ea4:	48 c1 ea 03          	shr    rdx,0x3
   140003ea8:	44 8d 40 01          	lea    r8d,[rax+0x1]
   140003eac:	44 29 d1             	sub    ecx,r10d
   140003eaf:	4d 0f bf e0          	movsx  r12,r8w
   140003eb3:	c1 e1 02             	shl    ecx,0x2
   140003eb6:	48 d3 ea             	shr    rdx,cl
   140003eb9:	49 89 d1             	mov    r9,rdx
   140003ebc:	41 8d 52 01          	lea    edx,[r10+0x1]
   140003ec0:	e9 38 ff ff ff       	jmp    140003dfd <__pformat_emit_xfloat.isra.0+0x4d>
   140003ec5:	0f 1f 00             	nop    DWORD PTR [rax]
   140003ec8:	41 83 fa 0e          	cmp    r10d,0xe
   140003ecc:	0f 87 06 03 00 00    	ja     1400041d8 <__pformat_emit_xfloat.isra.0+0x428>
   140003ed2:	b9 0e 00 00 00       	mov    ecx,0xe
   140003ed7:	ba 04 00 00 00       	mov    edx,0x4
   140003edc:	45 31 e4             	xor    r12d,r12d
   140003edf:	45 31 c0             	xor    r8d,r8d
   140003ee2:	44 29 d1             	sub    ecx,r10d
   140003ee5:	c1 e1 02             	shl    ecx,0x2
   140003ee8:	48 d3 e2             	shl    rdx,cl
   140003eeb:	b9 0f 00 00 00       	mov    ecx,0xf
   140003ef0:	48 01 d2             	add    rdx,rdx
   140003ef3:	44 29 d1             	sub    ecx,r10d
   140003ef6:	c1 e1 02             	shl    ecx,0x2
   140003ef9:	48 d3 ea             	shr    rdx,cl
   140003efc:	49 89 d1             	mov    r9,rdx
   140003eff:	48 85 d2             	test   rdx,rdx
   140003f02:	75 b8                	jne    140003ebc <__pformat_emit_xfloat.isra.0+0x10c>
   140003f04:	45 85 d2             	test   r10d,r10d
   140003f07:	75 b3                	jne    140003ebc <__pformat_emit_xfloat.isra.0+0x10c>
   140003f09:	44 8b 53 08          	mov    r10d,DWORD PTR [rbx+0x8]
   140003f0d:	48 8d 7d e0          	lea    rdi,[rbp-0x20]
   140003f11:	48 89 f8             	mov    rax,rdi
   140003f14:	41 f7 c2 00 08 00 00 	test   r10d,0x800
   140003f1b:	74 08                	je     140003f25 <__pformat_emit_xfloat.isra.0+0x175>
   140003f1d:	c6 45 e0 2e          	mov    BYTE PTR [rbp-0x20],0x2e
   140003f21:	48 8d 45 e1          	lea    rax,[rbp-0x1f]
   140003f25:	44 8b 4b 0c          	mov    r9d,DWORD PTR [rbx+0xc]
   140003f29:	c6 00 30             	mov    BYTE PTR [rax],0x30
   140003f2c:	48 8d 70 01          	lea    rsi,[rax+0x1]
   140003f30:	41 bd 02 00 00 00    	mov    r13d,0x2
   140003f36:	45 85 c9             	test   r9d,r9d
   140003f39:	0f 8f 0d 01 00 00    	jg     14000404c <__pformat_emit_xfloat.isra.0+0x29c>
   140003f3f:	41 f6 c2 80          	test   r10b,0x80
   140003f43:	0f 85 c7 01 00 00    	jne    140004110 <__pformat_emit_xfloat.isra.0+0x360>
   140003f49:	41 f7 c2 00 01 00 00 	test   r10d,0x100
   140003f50:	0f 85 6a 02 00 00    	jne    1400041c0 <__pformat_emit_xfloat.isra.0+0x410>
   140003f56:	41 83 e2 40          	and    r10d,0x40
   140003f5a:	0f 85 b0 02 00 00    	jne    140004210 <__pformat_emit_xfloat.isra.0+0x460>
   140003f60:	48 89 da             	mov    rdx,rbx
   140003f63:	b9 30 00 00 00       	mov    ecx,0x30
   140003f68:	e8 43 e8 ff ff       	call   1400027b0 <__pformat_putc>
   140003f6d:	8b 4b 08             	mov    ecx,DWORD PTR [rbx+0x8]
   140003f70:	48 89 da             	mov    rdx,rbx
   140003f73:	83 e1 20             	and    ecx,0x20
   140003f76:	83 c9 58             	or     ecx,0x58
   140003f79:	e8 32 e8 ff ff       	call   1400027b0 <__pformat_putc>
   140003f7e:	8b 43 0c             	mov    eax,DWORD PTR [rbx+0xc]
   140003f81:	85 c0                	test   eax,eax
   140003f83:	7e 2d                	jle    140003fb2 <__pformat_emit_xfloat.isra.0+0x202>
   140003f85:	f6 43 09 02          	test   BYTE PTR [rbx+0x9],0x2
   140003f89:	74 27                	je     140003fb2 <__pformat_emit_xfloat.isra.0+0x202>
   140003f8b:	83 e8 01             	sub    eax,0x1
   140003f8e:	89 43 0c             	mov    DWORD PTR [rbx+0xc],eax
   140003f91:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140003f98:	48 89 da             	mov    rdx,rbx
   140003f9b:	b9 30 00 00 00       	mov    ecx,0x30
   140003fa0:	e8 0b e8 ff ff       	call   1400027b0 <__pformat_putc>
   140003fa5:	8b 43 0c             	mov    eax,DWORD PTR [rbx+0xc]
   140003fa8:	8d 50 ff             	lea    edx,[rax-0x1]
   140003fab:	89 53 0c             	mov    DWORD PTR [rbx+0xc],edx
   140003fae:	85 c0                	test   eax,eax
   140003fb0:	7f e6                	jg     140003f98 <__pformat_emit_xfloat.isra.0+0x1e8>
   140003fb2:	4c 8d 75 de          	lea    r14,[rbp-0x22]
   140003fb6:	48 39 f7             	cmp    rdi,rsi
   140003fb9:	72 1f                	jb     140003fda <__pformat_emit_xfloat.isra.0+0x22a>
   140003fbb:	e9 75 01 00 00       	jmp    140004135 <__pformat_emit_xfloat.isra.0+0x385>
   140003fc0:	0f b7 43 20          	movzx  eax,WORD PTR [rbx+0x20]
   140003fc4:	66 89 45 de          	mov    WORD PTR [rbp-0x22],ax
   140003fc8:	66 85 c0             	test   ax,ax
   140003fcb:	0f 85 bf 01 00 00    	jne    140004190 <__pformat_emit_xfloat.isra.0+0x3e0>
   140003fd1:	48 39 fe             	cmp    rsi,rdi
   140003fd4:	0f 84 5b 01 00 00    	je     140004135 <__pformat_emit_xfloat.isra.0+0x385>
   140003fda:	0f be 4e ff          	movsx  ecx,BYTE PTR [rsi-0x1]
   140003fde:	48 83 ee 01          	sub    rsi,0x1
   140003fe2:	83 f9 2e             	cmp    ecx,0x2e
   140003fe5:	0f 84 95 01 00 00    	je     140004180 <__pformat_emit_xfloat.isra.0+0x3d0>
   140003feb:	83 f9 2c             	cmp    ecx,0x2c
   140003fee:	74 d0                	je     140003fc0 <__pformat_emit_xfloat.isra.0+0x210>
   140003ff0:	48 89 da             	mov    rdx,rbx
   140003ff3:	e8 b8 e7 ff ff       	call   1400027b0 <__pformat_putc>
   140003ff8:	eb d7                	jmp    140003fd1 <__pformat_emit_xfloat.isra.0+0x221>
   140003ffa:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140004000:	48 39 f7             	cmp    rdi,rsi
   140004003:	72 13                	jb     140004018 <__pformat_emit_xfloat.isra.0+0x268>
   140004005:	45 85 ed             	test   r13d,r13d
   140004008:	75 0e                	jne    140004018 <__pformat_emit_xfloat.isra.0+0x268>
   14000400a:	8b 4b 10             	mov    ecx,DWORD PTR [rbx+0x10]
   14000400d:	85 c9                	test   ecx,ecx
   14000400f:	0f 8e 13 02 00 00    	jle    140004228 <__pformat_emit_xfloat.isra.0+0x478>
   140004015:	0f 1f 00             	nop    DWORD PTR [rax]
   140004018:	c6 06 2e             	mov    BYTE PTR [rsi],0x2e
   14000401b:	48 8d 4e 01          	lea    rcx,[rsi+0x1]
   14000401f:	e9 41 fe ff ff       	jmp    140003e65 <__pformat_emit_xfloat.isra.0+0xb5>
   140004024:	85 c9                	test   ecx,ecx
   140004026:	75 08                	jne    140004030 <__pformat_emit_xfloat.isra.0+0x280>
   140004028:	c6 06 30             	mov    BYTE PTR [rsi],0x30
   14000402b:	48 83 c6 01          	add    rsi,0x1
   14000402f:	90                   	nop
   140004030:	48 39 fe             	cmp    rsi,rdi
   140004033:	0f 84 07 02 00 00    	je     140004240 <__pformat_emit_xfloat.isra.0+0x490>
   140004039:	44 8b 4b 0c          	mov    r9d,DWORD PTR [rbx+0xc]
   14000403d:	41 bd 02 00 00 00    	mov    r13d,0x2
   140004043:	45 85 c9             	test   r9d,r9d
   140004046:	0f 8e f3 fe ff ff    	jle    140003f3f <__pformat_emit_xfloat.isra.0+0x18f>
   14000404c:	8b 53 10             	mov    edx,DWORD PTR [rbx+0x10]
   14000404f:	48 89 f1             	mov    rcx,rsi
   140004052:	41 0f bf c0          	movsx  eax,r8w
   140004056:	4d 0f bf c0          	movsx  r8,r8w
   14000405a:	48 29 f9             	sub    rcx,rdi
   14000405d:	44 8d 1c 0a          	lea    r11d,[rdx+rcx*1]
   140004061:	85 d2                	test   edx,edx
   140004063:	44 89 d2             	mov    edx,r10d
   140004066:	41 0f 4f cb          	cmovg  ecx,r11d
   14000406a:	81 e2 c0 01 00 00    	and    edx,0x1c0
   140004070:	83 fa 01             	cmp    edx,0x1
   140004073:	83 d9 fa             	sbb    ecx,0xfffffffa
   140004076:	4d 69 c0 67 66 66 66 	imul   r8,r8,0x66666667
   14000407d:	c1 f8 1f             	sar    eax,0x1f
   140004080:	41 89 cb             	mov    r11d,ecx
   140004083:	49 c1 f8 22          	sar    r8,0x22
   140004087:	41 29 c0             	sub    r8d,eax
   14000408a:	74 31                	je     1400040bd <__pformat_emit_xfloat.isra.0+0x30d>
   14000408c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140004090:	49 63 c0             	movsxd rax,r8d
   140004093:	44 89 c2             	mov    edx,r8d
   140004096:	41 83 c3 01          	add    r11d,0x1
   14000409a:	48 69 c0 67 66 66 66 	imul   rax,rax,0x66666667
   1400040a1:	c1 fa 1f             	sar    edx,0x1f
   1400040a4:	48 c1 f8 22          	sar    rax,0x22
   1400040a8:	29 d0                	sub    eax,edx
   1400040aa:	41 89 c0             	mov    r8d,eax
   1400040ad:	75 e1                	jne    140004090 <__pformat_emit_xfloat.isra.0+0x2e0>
   1400040af:	45 89 dd             	mov    r13d,r11d
   1400040b2:	41 29 cd             	sub    r13d,ecx
   1400040b5:	41 83 c5 02          	add    r13d,0x2
   1400040b9:	45 0f bf ed          	movsx  r13d,r13w
   1400040bd:	45 39 d9             	cmp    r9d,r11d
   1400040c0:	0f 8e ea 00 00 00    	jle    1400041b0 <__pformat_emit_xfloat.isra.0+0x400>
   1400040c6:	45 29 d9             	sub    r9d,r11d
   1400040c9:	41 f7 c2 00 06 00 00 	test   r10d,0x600
   1400040d0:	0f 85 e0 00 00 00    	jne    1400041b6 <__pformat_emit_xfloat.isra.0+0x406>
   1400040d6:	41 83 e9 01          	sub    r9d,0x1
   1400040da:	44 89 4b 0c          	mov    DWORD PTR [rbx+0xc],r9d
   1400040de:	66 90                	xchg   ax,ax
   1400040e0:	48 89 da             	mov    rdx,rbx
   1400040e3:	b9 20 00 00 00       	mov    ecx,0x20
   1400040e8:	e8 c3 e6 ff ff       	call   1400027b0 <__pformat_putc>
   1400040ed:	8b 43 0c             	mov    eax,DWORD PTR [rbx+0xc]
   1400040f0:	8d 50 ff             	lea    edx,[rax-0x1]
   1400040f3:	89 53 0c             	mov    DWORD PTR [rbx+0xc],edx
   1400040f6:	85 c0                	test   eax,eax
   1400040f8:	7f e6                	jg     1400040e0 <__pformat_emit_xfloat.isra.0+0x330>
   1400040fa:	44 8b 53 08          	mov    r10d,DWORD PTR [rbx+0x8]
   1400040fe:	41 f6 c2 80          	test   r10b,0x80
   140004102:	0f 84 41 fe ff ff    	je     140003f49 <__pformat_emit_xfloat.isra.0+0x199>
   140004108:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   14000410f:	00 
   140004110:	48 89 da             	mov    rdx,rbx
   140004113:	b9 2d 00 00 00       	mov    ecx,0x2d
   140004118:	e8 93 e6 ff ff       	call   1400027b0 <__pformat_putc>
   14000411d:	e9 3e fe ff ff       	jmp    140003f60 <__pformat_emit_xfloat.isra.0+0x1b0>
   140004122:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140004128:	48 89 da             	mov    rdx,rbx
   14000412b:	b9 30 00 00 00       	mov    ecx,0x30
   140004130:	e8 7b e6 ff ff       	call   1400027b0 <__pformat_putc>
   140004135:	8b 43 10             	mov    eax,DWORD PTR [rbx+0x10]
   140004138:	8d 50 ff             	lea    edx,[rax-0x1]
   14000413b:	89 53 10             	mov    DWORD PTR [rbx+0x10],edx
   14000413e:	85 c0                	test   eax,eax
   140004140:	7f e6                	jg     140004128 <__pformat_emit_xfloat.isra.0+0x378>
   140004142:	8b 4b 08             	mov    ecx,DWORD PTR [rbx+0x8]
   140004145:	48 89 da             	mov    rdx,rbx
   140004148:	83 e1 20             	and    ecx,0x20
   14000414b:	83 c9 50             	or     ecx,0x50
   14000414e:	e8 5d e6 ff ff       	call   1400027b0 <__pformat_putc>
   140004153:	44 01 6b 0c          	add    DWORD PTR [rbx+0xc],r13d
   140004157:	48 89 da             	mov    rdx,rbx
   14000415a:	4c 89 e1             	mov    rcx,r12
   14000415d:	81 4b 08 c0 01 00 00 	or     DWORD PTR [rbx+0x8],0x1c0
   140004164:	48 83 c4 50          	add    rsp,0x50
   140004168:	5b                   	pop    rbx
   140004169:	5e                   	pop    rsi
   14000416a:	5f                   	pop    rdi
   14000416b:	41 5c                	pop    r12
   14000416d:	41 5d                	pop    r13
   14000416f:	41 5e                	pop    r14
   140004171:	5d                   	pop    rbp
   140004172:	e9 99 ef ff ff       	jmp    140003110 <__pformat_int.isra.0>
   140004177:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
   14000417e:	00 00 
   140004180:	48 89 d9             	mov    rcx,rbx
   140004183:	e8 38 f3 ff ff       	call   1400034c0 <__pformat_emit_radix_point>
   140004188:	e9 44 fe ff ff       	jmp    140003fd1 <__pformat_emit_xfloat.isra.0+0x221>
   14000418d:	0f 1f 00             	nop    DWORD PTR [rax]
   140004190:	49 89 d8             	mov    r8,rbx
   140004193:	ba 01 00 00 00       	mov    edx,0x1
   140004198:	4c 89 f1             	mov    rcx,r14
   14000419b:	e8 70 e6 ff ff       	call   140002810 <__pformat_wputchars>
   1400041a0:	e9 2c fe ff ff       	jmp    140003fd1 <__pformat_emit_xfloat.isra.0+0x221>
   1400041a5:	0f 1f 00             	nop    DWORD PTR [rax]
   1400041a8:	48 89 ce             	mov    rsi,rcx
   1400041ab:	e9 89 fc ff ff       	jmp    140003e39 <__pformat_emit_xfloat.isra.0+0x89>
   1400041b0:	41 b9 ff ff ff ff    	mov    r9d,0xffffffff
   1400041b6:	44 89 4b 0c          	mov    DWORD PTR [rbx+0xc],r9d
   1400041ba:	e9 80 fd ff ff       	jmp    140003f3f <__pformat_emit_xfloat.isra.0+0x18f>
   1400041bf:	90                   	nop
   1400041c0:	48 89 da             	mov    rdx,rbx
   1400041c3:	b9 2b 00 00 00       	mov    ecx,0x2b
   1400041c8:	e8 e3 e5 ff ff       	call   1400027b0 <__pformat_putc>
   1400041cd:	e9 8e fd ff ff       	jmp    140003f60 <__pformat_emit_xfloat.isra.0+0x1b0>
   1400041d2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   1400041d8:	45 85 d2             	test   r10d,r10d
   1400041db:	7e 73                	jle    140004250 <__pformat_emit_xfloat.isra.0+0x4a0>
   1400041dd:	45 31 e4             	xor    r12d,r12d
   1400041e0:	45 31 c0             	xor    r8d,r8d
   1400041e3:	45 31 c9             	xor    r9d,r9d
   1400041e6:	ba 10 00 00 00       	mov    edx,0x10
   1400041eb:	e9 0d fc ff ff       	jmp    140003dfd <__pformat_emit_xfloat.isra.0+0x4d>
   1400041f0:	4d 0f bf e0          	movsx  r12,r8w
   1400041f4:	e9 f2 fc ff ff       	jmp    140003eeb <__pformat_emit_xfloat.isra.0+0x13b>
   1400041f9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140004200:	45 85 d2             	test   r10d,r10d
   140004203:	0f 8f f4 fb ff ff    	jg     140003dfd <__pformat_emit_xfloat.isra.0+0x4d>
   140004209:	e9 fb fc ff ff       	jmp    140003f09 <__pformat_emit_xfloat.isra.0+0x159>
   14000420e:	66 90                	xchg   ax,ax
   140004210:	48 89 da             	mov    rdx,rbx
   140004213:	b9 20 00 00 00       	mov    ecx,0x20
   140004218:	e8 93 e5 ff ff       	call   1400027b0 <__pformat_putc>
   14000421d:	e9 3e fd ff ff       	jmp    140003f60 <__pformat_emit_xfloat.isra.0+0x1b0>
   140004222:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140004228:	85 c0                	test   eax,eax
   14000422a:	0f 84 f4 fd ff ff    	je     140004024 <__pformat_emit_xfloat.isra.0+0x274>
   140004230:	48 89 f1             	mov    rcx,rsi
   140004233:	e9 31 fc ff ff       	jmp    140003e69 <__pformat_emit_xfloat.isra.0+0xb9>
   140004238:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   14000423f:	00 
   140004240:	8b 43 10             	mov    eax,DWORD PTR [rbx+0x10]
   140004243:	85 c0                	test   eax,eax
   140004245:	0f 8f d2 fc ff ff    	jg     140003f1d <__pformat_emit_xfloat.isra.0+0x16d>
   14000424b:	e9 c1 fc ff ff       	jmp    140003f11 <__pformat_emit_xfloat.isra.0+0x161>
   140004250:	45 8b 50 08          	mov    r10d,DWORD PTR [r8+0x8]
   140004254:	45 31 e4             	xor    r12d,r12d
   140004257:	45 31 c0             	xor    r8d,r8d
   14000425a:	48 8d 7d e0          	lea    rdi,[rbp-0x20]
   14000425e:	e9 ae fc ff ff       	jmp    140003f11 <__pformat_emit_xfloat.isra.0+0x161>
   140004263:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
   14000426a:	00 00 00 00 
   14000426e:	66 90                	xchg   ax,ax

0000000140004270 <__mingw_pformat>:
   140004270:	55                   	push   rbp
   140004271:	41 57                	push   r15
   140004273:	41 56                	push   r14
   140004275:	41 55                	push   r13
   140004277:	41 54                	push   r12
   140004279:	57                   	push   rdi
   14000427a:	56                   	push   rsi
   14000427b:	53                   	push   rbx
   14000427c:	48 81 ec b8 00 00 00 	sub    rsp,0xb8
   140004283:	48 8d ac 24 b0 00 00 	lea    rbp,[rsp+0xb0]
   14000428a:	00 
   14000428b:	4c 8b 75 70          	mov    r14,QWORD PTR [rbp+0x70]
   14000428f:	89 cf                	mov    edi,ecx
   140004291:	49 89 d4             	mov    r12,rdx
   140004294:	44 89 c3             	mov    ebx,r8d
   140004297:	4c 89 ce             	mov    rsi,r9
   14000429a:	e8 d9 37 00 00       	call   140007a78 <_errno>
   14000429f:	81 e7 00 60 00 00    	and    edi,0x6000
   1400042a5:	31 d2                	xor    edx,edx
   1400042a7:	89 5d f8             	mov    DWORD PTR [rbp-0x8],ebx
   1400042aa:	48 b9 ff ff ff ff fd 	movabs rcx,0xfffffffdffffffff
   1400042b1:	ff ff ff 
   1400042b4:	66 89 55 e8          	mov    WORD PTR [rbp-0x18],dx
   1400042b8:	8b 00                	mov    eax,DWORD PTR [rax]
   1400042ba:	48 8d 5e 01          	lea    rbx,[rsi+0x1]
   1400042be:	48 89 4d e0          	mov    QWORD PTR [rbp-0x20],rcx
   1400042c2:	31 c9                	xor    ecx,ecx
   1400042c4:	66 89 4d f0          	mov    WORD PTR [rbp-0x10],cx
   1400042c8:	0f be 0e             	movsx  ecx,BYTE PTR [rsi]
   1400042cb:	4c 89 65 d0          	mov    QWORD PTR [rbp-0x30],r12
   1400042cf:	89 7d d8             	mov    DWORD PTR [rbp-0x28],edi
   1400042d2:	89 ca                	mov    edx,ecx
   1400042d4:	c7 45 dc ff ff ff ff 	mov    DWORD PTR [rbp-0x24],0xffffffff
   1400042db:	c7 45 ec 00 00 00 00 	mov    DWORD PTR [rbp-0x14],0x0
   1400042e2:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [rbp-0xc],0x0
   1400042e9:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [rbp-0x4],0xffffffff
   1400042f0:	85 c9                	test   ecx,ecx
   1400042f2:	0f 84 fb 00 00 00    	je     1400043f3 <__mingw_pformat+0x183>
   1400042f8:	48 8d 75 dc          	lea    rsi,[rbp-0x24]
   1400042fc:	89 45 94             	mov    DWORD PTR [rbp-0x6c],eax
   1400042ff:	4c 8d 2d ca 50 00 00 	lea    r13,[rip+0x50ca]        # 1400093d0 <.rdata+0x20>
   140004306:	49 89 df             	mov    r15,rbx
   140004309:	48 89 75 98          	mov    QWORD PTR [rbp-0x68],rsi
   14000430d:	eb 3a                	jmp    140004349 <__mingw_pformat+0xd9>
   14000430f:	90                   	nop
   140004310:	8b 45 d8             	mov    eax,DWORD PTR [rbp-0x28]
   140004313:	8b 75 f4             	mov    esi,DWORD PTR [rbp-0xc]
   140004316:	f6 c4 40             	test   ah,0x40
   140004319:	75 05                	jne    140004320 <__mingw_pformat+0xb0>
   14000431b:	39 75 f8             	cmp    DWORD PTR [rbp-0x8],esi
   14000431e:	7e 10                	jle    140004330 <__mingw_pformat+0xc0>
   140004320:	4c 8b 45 d0          	mov    r8,QWORD PTR [rbp-0x30]
   140004324:	f6 c4 20             	test   ah,0x20
   140004327:	75 67                	jne    140004390 <__mingw_pformat+0x120>
   140004329:	48 63 c6             	movsxd rax,esi
   14000432c:	41 88 14 00          	mov    BYTE PTR [r8+rax*1],dl
   140004330:	83 c6 01             	add    esi,0x1
   140004333:	89 75 f4             	mov    DWORD PTR [rbp-0xc],esi
   140004336:	41 0f b6 17          	movzx  edx,BYTE PTR [r15]
   14000433a:	49 83 c7 01          	add    r15,0x1
   14000433e:	0f be ca             	movsx  ecx,dl
   140004341:	85 c9                	test   ecx,ecx
   140004343:	0f 84 a7 00 00 00    	je     1400043f0 <__mingw_pformat+0x180>
   140004349:	83 f9 25             	cmp    ecx,0x25
   14000434c:	75 c2                	jne    140004310 <__mingw_pformat+0xa0>
   14000434e:	41 0f b6 17          	movzx  edx,BYTE PTR [r15]
   140004352:	89 7d d8             	mov    DWORD PTR [rbp-0x28],edi
   140004355:	48 c7 45 dc ff ff ff 	mov    QWORD PTR [rbp-0x24],0xffffffffffffffff
   14000435c:	ff 
   14000435d:	84 d2                	test   dl,dl
   14000435f:	0f 84 8b 00 00 00    	je     1400043f0 <__mingw_pformat+0x180>
   140004365:	4c 8b 55 98          	mov    r10,QWORD PTR [rbp-0x68]
   140004369:	4c 89 fe             	mov    rsi,r15
   14000436c:	45 31 db             	xor    r11d,r11d
   14000436f:	31 db                	xor    ebx,ebx
   140004371:	8d 42 e0             	lea    eax,[rdx-0x20]
   140004374:	4c 8d 66 01          	lea    r12,[rsi+0x1]
   140004378:	0f be ca             	movsx  ecx,dl
   14000437b:	3c 5a                	cmp    al,0x5a
   14000437d:	77 21                	ja     1400043a0 <__mingw_pformat+0x130>
   14000437f:	0f b6 c0             	movzx  eax,al
   140004382:	49 63 44 85 00       	movsxd rax,DWORD PTR [r13+rax*4+0x0]
   140004387:	4c 01 e8             	add    rax,r13
   14000438a:	ff e0                	jmp    rax
   14000438c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140004390:	4c 89 c2             	mov    rdx,r8
   140004393:	e8 28 37 00 00       	call   140007ac0 <fputc>
   140004398:	eb 96                	jmp    140004330 <__mingw_pformat+0xc0>
   14000439a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   1400043a0:	83 ea 30             	sub    edx,0x30
   1400043a3:	80 fa 09             	cmp    dl,0x9
   1400043a6:	0f 87 fe 01 00 00    	ja     1400045aa <__mingw_pformat+0x33a>
   1400043ac:	83 fb 03             	cmp    ebx,0x3
   1400043af:	0f 87 f5 01 00 00    	ja     1400045aa <__mingw_pformat+0x33a>
   1400043b5:	85 db                	test   ebx,ebx
   1400043b7:	0f 85 d2 06 00 00    	jne    140004a8f <__mingw_pformat+0x81f>
   1400043bd:	bb 01 00 00 00       	mov    ebx,0x1
   1400043c2:	4d 85 d2             	test   r10,r10
   1400043c5:	74 19                	je     1400043e0 <__mingw_pformat+0x170>
   1400043c7:	41 8b 02             	mov    eax,DWORD PTR [r10]
   1400043ca:	85 c0                	test   eax,eax
   1400043cc:	0f 88 5f 07 00 00    	js     140004b31 <__mingw_pformat+0x8c1>
   1400043d2:	8d 04 80             	lea    eax,[rax+rax*4]
   1400043d5:	8d 44 41 d0          	lea    eax,[rcx+rax*2-0x30]
   1400043d9:	41 89 02             	mov    DWORD PTR [r10],eax
   1400043dc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   1400043e0:	0f b6 56 01          	movzx  edx,BYTE PTR [rsi+0x1]
   1400043e4:	4c 89 e6             	mov    rsi,r12
   1400043e7:	84 d2                	test   dl,dl
   1400043e9:	75 86                	jne    140004371 <__mingw_pformat+0x101>
   1400043eb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   1400043f0:	8b 4d f4             	mov    ecx,DWORD PTR [rbp-0xc]
   1400043f3:	89 c8                	mov    eax,ecx
   1400043f5:	48 81 c4 b8 00 00 00 	add    rsp,0xb8
   1400043fc:	5b                   	pop    rbx
   1400043fd:	5e                   	pop    rsi
   1400043fe:	5f                   	pop    rdi
   1400043ff:	41 5c                	pop    r12
   140004401:	41 5d                	pop    r13
   140004403:	41 5e                	pop    r14
   140004405:	41 5f                	pop    r15
   140004407:	5d                   	pop    rbp
   140004408:	c3                   	ret
   140004409:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140004410:	81 65 d8 ff fe ff ff 	and    DWORD PTR [rbp-0x28],0xfffffeff
   140004417:	41 83 fb 03          	cmp    r11d,0x3
   14000441b:	0f 84 3e 07 00 00    	je     140004b5f <__mingw_pformat+0x8ef>
   140004421:	41 83 fb 02          	cmp    r11d,0x2
   140004425:	0f 84 e1 07 00 00    	je     140004c0c <__mingw_pformat+0x99c>
   14000442b:	41 8b 16             	mov    edx,DWORD PTR [r14]
   14000442e:	0f b7 c2             	movzx  eax,dx
   140004431:	41 83 fb 01          	cmp    r11d,0x1
   140004435:	74 11                	je     140004448 <__mingw_pformat+0x1d8>
   140004437:	41 89 d0             	mov    r8d,edx
   14000443a:	41 83 fb 05          	cmp    r11d,0x5
   14000443e:	0f b6 d2             	movzx  edx,dl
   140004441:	4c 89 c0             	mov    rax,r8
   140004444:	48 0f 44 c2          	cmove  rax,rdx
   140004448:	48 89 45 c0          	mov    QWORD PTR [rbp-0x40],rax
   14000444c:	83 f9 75             	cmp    ecx,0x75
   14000444f:	0f 84 4c 07 00 00    	je     140004ba1 <__mingw_pformat+0x931>
   140004455:	4c 8d 45 d0          	lea    r8,[rbp-0x30]
   140004459:	48 89 c2             	mov    rdx,rax
   14000445c:	e8 8f e7 ff ff       	call   140002bf0 <__pformat_xint.isra.0>
   140004461:	e9 8a 02 00 00       	jmp    1400046f0 <__mingw_pformat+0x480>
   140004466:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   14000446d:	00 00 00 
   140004470:	0f b6 56 01          	movzx  edx,BYTE PTR [rsi+0x1]
   140004474:	41 bb 03 00 00 00    	mov    r11d,0x3
   14000447a:	4c 89 e6             	mov    rsi,r12
   14000447d:	bb 04 00 00 00       	mov    ebx,0x4
   140004482:	e9 60 ff ff ff       	jmp    1400043e7 <__mingw_pformat+0x177>
   140004487:	81 4d d8 80 00 00 00 	or     DWORD PTR [rbp-0x28],0x80
   14000448e:	49 8d 76 08          	lea    rsi,[r14+0x8]
   140004492:	41 83 fb 03          	cmp    r11d,0x3
   140004496:	0f 84 16 07 00 00    	je     140004bb2 <__mingw_pformat+0x942>
   14000449c:	49 63 0e             	movsxd rcx,DWORD PTR [r14]
   14000449f:	41 83 fb 02          	cmp    r11d,0x2
   1400044a3:	74 16                	je     1400044bb <__mingw_pformat+0x24b>
   1400044a5:	41 83 fb 01          	cmp    r11d,0x1
   1400044a9:	0f 84 71 06 00 00    	je     140004b20 <__mingw_pformat+0x8b0>
   1400044af:	48 0f be d1          	movsx  rdx,cl
   1400044b3:	41 83 fb 05          	cmp    r11d,0x5
   1400044b7:	48 0f 44 ca          	cmove  rcx,rdx
   1400044bb:	48 8d 55 d0          	lea    rdx,[rbp-0x30]
   1400044bf:	49 89 f6             	mov    r14,rsi
   1400044c2:	4d 89 e7             	mov    r15,r12
   1400044c5:	e8 46 ec ff ff       	call   140003110 <__pformat_int.isra.0>
   1400044ca:	e9 67 fe ff ff       	jmp    140004336 <__mingw_pformat+0xc6>
   1400044cf:	85 db                	test   ebx,ebx
   1400044d1:	75 09                	jne    1400044dc <__mingw_pformat+0x26c>
   1400044d3:	39 7d d8             	cmp    DWORD PTR [rbp-0x28],edi
   1400044d6:	0f 84 1e 06 00 00    	je     140004afa <__mingw_pformat+0x88a>
   1400044dc:	49 8b 16             	mov    rdx,QWORD PTR [r14]
   1400044df:	49 8d 76 08          	lea    rsi,[r14+0x8]
   1400044e3:	4c 8d 45 d0          	lea    r8,[rbp-0x30]
   1400044e7:	b9 78 00 00 00       	mov    ecx,0x78
   1400044ec:	49 89 f6             	mov    r14,rsi
   1400044ef:	4d 89 e7             	mov    r15,r12
   1400044f2:	e8 f9 e6 ff ff       	call   140002bf0 <__pformat_xint.isra.0>
   1400044f7:	e9 3a fe ff ff       	jmp    140004336 <__mingw_pformat+0xc6>
   1400044fc:	0f b6 56 01          	movzx  edx,BYTE PTR [rsi+0x1]
   140004500:	80 fa 68             	cmp    dl,0x68
   140004503:	0f 84 5e 06 00 00    	je     140004b67 <__mingw_pformat+0x8f7>
   140004509:	4c 89 e6             	mov    rsi,r12
   14000450c:	41 bb 01 00 00 00    	mov    r11d,0x1
   140004512:	bb 04 00 00 00       	mov    ebx,0x4
   140004517:	e9 cb fe ff ff       	jmp    1400043e7 <__mingw_pformat+0x177>
   14000451c:	8b 4d 94             	mov    ecx,DWORD PTR [rbp-0x6c]
   14000451f:	4d 89 e7             	mov    r15,r12
   140004522:	e8 d9 35 00 00       	call   140007b00 <strerror>
   140004527:	48 8d 55 d0          	lea    rdx,[rbp-0x30]
   14000452b:	48 89 c1             	mov    rcx,rax
   14000452e:	e8 cd e5 ff ff       	call   140002b00 <__pformat_puts>
   140004533:	e9 fe fd ff ff       	jmp    140004336 <__mingw_pformat+0xc6>
   140004538:	49 8b 0e             	mov    rcx,QWORD PTR [r14]
   14000453b:	48 63 55 f4          	movsxd rdx,DWORD PTR [rbp-0xc]
   14000453f:	41 83 fb 05          	cmp    r11d,0x5
   140004543:	0f 84 36 06 00 00    	je     140004b7f <__mingw_pformat+0x90f>
   140004549:	41 83 fb 01          	cmp    r11d,0x1
   14000454d:	0f 84 b1 06 00 00    	je     140004c04 <__mingw_pformat+0x994>
   140004553:	41 83 fb 02          	cmp    r11d,0x2
   140004557:	74 0a                	je     140004563 <__mingw_pformat+0x2f3>
   140004559:	41 83 fb 03          	cmp    r11d,0x3
   14000455d:	0f 84 c6 05 00 00    	je     140004b29 <__mingw_pformat+0x8b9>
   140004563:	89 11                	mov    DWORD PTR [rcx],edx
   140004565:	e9 86 01 00 00       	jmp    1400046f0 <__mingw_pformat+0x480>
   14000456a:	0f b6 56 01          	movzx  edx,BYTE PTR [rsi+0x1]
   14000456e:	80 fa 6c             	cmp    dl,0x6c
   140004571:	0f 84 65 06 00 00    	je     140004bdc <__mingw_pformat+0x96c>
   140004577:	4c 89 e6             	mov    rsi,r12
   14000457a:	41 bb 02 00 00 00    	mov    r11d,0x2
   140004580:	bb 04 00 00 00       	mov    ebx,0x4
   140004585:	e9 5d fe ff ff       	jmp    1400043e7 <__mingw_pformat+0x177>
   14000458a:	0f b6 56 01          	movzx  edx,BYTE PTR [rsi+0x1]
   14000458e:	80 fa 36             	cmp    dl,0x36
   140004591:	0f 84 23 06 00 00    	je     140004bba <__mingw_pformat+0x94a>
   140004597:	80 fa 33             	cmp    dl,0x33
   14000459a:	0f 85 3d 05 00 00    	jne    140004add <__mingw_pformat+0x86d>
   1400045a0:	80 7e 02 32          	cmp    BYTE PTR [rsi+0x2],0x32
   1400045a4:	0f 84 7d 06 00 00    	je     140004c27 <__mingw_pformat+0x9b7>
   1400045aa:	48 8d 55 d0          	lea    rdx,[rbp-0x30]
   1400045ae:	b9 25 00 00 00       	mov    ecx,0x25
   1400045b3:	e8 f8 e1 ff ff       	call   1400027b0 <__pformat_putc>
   1400045b8:	e9 79 fd ff ff       	jmp    140004336 <__mingw_pformat+0xc6>
   1400045bd:	0f 1f 00             	nop    DWORD PTR [rax]
   1400045c0:	0f b6 56 01          	movzx  edx,BYTE PTR [rsi+0x1]
   1400045c4:	83 4d d8 04          	or     DWORD PTR [rbp-0x28],0x4
   1400045c8:	4c 89 e6             	mov    rsi,r12
   1400045cb:	bb 04 00 00 00       	mov    ebx,0x4
   1400045d0:	e9 12 fe ff ff       	jmp    1400043e7 <__mingw_pformat+0x177>
   1400045d5:	8b 45 d8             	mov    eax,DWORD PTR [rbp-0x28]
   1400045d8:	49 8b 16             	mov    rdx,QWORD PTR [r14]
   1400045db:	83 c8 20             	or     eax,0x20
   1400045de:	89 45 d8             	mov    DWORD PTR [rbp-0x28],eax
   1400045e1:	a8 04                	test   al,0x4
   1400045e3:	0f 84 d9 01 00 00    	je     1400047c2 <__mingw_pformat+0x552>
   1400045e9:	4c 8b 02             	mov    r8,QWORD PTR [rdx]
   1400045ec:	44 8b 4a 08          	mov    r9d,DWORD PTR [rdx+0x8]
   1400045f0:	4d 89 c2             	mov    r10,r8
   1400045f3:	45 0f bf d9          	movsx  r11d,r9w
   1400045f7:	4c 89 ca             	mov    rdx,r9
   1400045fa:	49 c1 ea 20          	shr    r10,0x20
   1400045fe:	43 8d 34 1b          	lea    esi,[r11+r11*1]
   140004602:	41 81 e2 ff ff ff 7f 	and    r10d,0x7fffffff
   140004609:	0f b7 f6             	movzx  esi,si
   14000460c:	45 09 c2             	or     r10d,r8d
   14000460f:	44 89 d1             	mov    ecx,r10d
   140004612:	f7 d9                	neg    ecx
   140004614:	44 09 d1             	or     ecx,r10d
   140004617:	c1 e9 1f             	shr    ecx,0x1f
   14000461a:	09 f1                	or     ecx,esi
   14000461c:	be fe ff 00 00       	mov    esi,0xfffe
   140004621:	29 ce                	sub    esi,ecx
   140004623:	c1 ee 10             	shr    esi,0x10
   140004626:	0f 85 73 04 00 00    	jne    140004a9f <__mingw_pformat+0x82f>
   14000462c:	66 45 85 c9          	test   r9w,r9w
   140004630:	0f 88 ba 04 00 00    	js     140004af0 <__mingw_pformat+0x880>
   140004636:	66 81 e2 ff 7f       	and    dx,0x7fff
   14000463b:	0f 84 89 04 00 00    	je     140004aca <__mingw_pformat+0x85a>
   140004641:	66 81 fa ff 7f       	cmp    dx,0x7fff
   140004646:	75 09                	jne    140004651 <__mingw_pformat+0x3e1>
   140004648:	45 85 d2             	test   r10d,r10d
   14000464b:	0f 84 0c 06 00 00    	je     140004c5d <__mingw_pformat+0x9ed>
   140004651:	66 81 ea ff 3f       	sub    dx,0x3fff
   140004656:	4c 89 c1             	mov    rcx,r8
   140004659:	e9 d1 03 00 00       	jmp    140004a2f <__mingw_pformat+0x7bf>
   14000465e:	41 8d 43 fe          	lea    eax,[r11-0x2]
   140004662:	c7 45 e0 ff ff ff ff 	mov    DWORD PTR [rbp-0x20],0xffffffff
   140004669:	41 8b 16             	mov    edx,DWORD PTR [r14]
   14000466c:	49 8d 76 08          	lea    rsi,[r14+0x8]
   140004670:	83 f8 01             	cmp    eax,0x1
   140004673:	0f 86 ea 01 00 00    	jbe    140004863 <__mingw_pformat+0x5f3>
   140004679:	88 55 c0             	mov    BYTE PTR [rbp-0x40],dl
   14000467c:	48 8d 4d c0          	lea    rcx,[rbp-0x40]
   140004680:	4c 8d 45 d0          	lea    r8,[rbp-0x30]
   140004684:	ba 01 00 00 00       	mov    edx,0x1
   140004689:	e8 22 e3 ff ff       	call   1400029b0 <__pformat_putchars>
   14000468e:	49 89 f6             	mov    r14,rsi
   140004691:	4d 89 e7             	mov    r15,r12
   140004694:	e9 9d fc ff ff       	jmp    140004336 <__mingw_pformat+0xc6>
   140004699:	41 8d 43 fe          	lea    eax,[r11-0x2]
   14000469d:	49 8b 0e             	mov    rcx,QWORD PTR [r14]
   1400046a0:	49 8d 76 08          	lea    rsi,[r14+0x8]
   1400046a4:	83 f8 01             	cmp    eax,0x1
   1400046a7:	0f 86 94 03 00 00    	jbe    140004a41 <__mingw_pformat+0x7d1>
   1400046ad:	48 8d 55 d0          	lea    rdx,[rbp-0x30]
   1400046b1:	49 89 f6             	mov    r14,rsi
   1400046b4:	4d 89 e7             	mov    r15,r12
   1400046b7:	e8 44 e4 ff ff       	call   140002b00 <__pformat_puts>
   1400046bc:	e9 75 fc ff ff       	jmp    140004336 <__mingw_pformat+0xc6>
   1400046c1:	8b 45 d8             	mov    eax,DWORD PTR [rbp-0x28]
   1400046c4:	49 8b 16             	mov    rdx,QWORD PTR [r14]
   1400046c7:	83 c8 20             	or     eax,0x20
   1400046ca:	89 45 d8             	mov    DWORD PTR [rbp-0x28],eax
   1400046cd:	a8 04                	test   al,0x4
   1400046cf:	0f 84 14 02 00 00    	je     1400048e9 <__mingw_pformat+0x679>
   1400046d5:	db 2a                	fld    TBYTE PTR [rdx]
   1400046d7:	48 8d 4d a0          	lea    rcx,[rbp-0x60]
   1400046db:	48 8d 55 d0          	lea    rdx,[rbp-0x30]
   1400046df:	db 7d a0             	fstp   TBYTE PTR [rbp-0x60]
   1400046e2:	e8 69 f5 ff ff       	call   140003c50 <__pformat_gfloat>
   1400046e7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
   1400046ee:	00 00 
   1400046f0:	49 83 c6 08          	add    r14,0x8
   1400046f4:	4d 89 e7             	mov    r15,r12
   1400046f7:	e9 3a fc ff ff       	jmp    140004336 <__mingw_pformat+0xc6>
   1400046fc:	8b 45 d8             	mov    eax,DWORD PTR [rbp-0x28]
   1400046ff:	49 8b 16             	mov    rdx,QWORD PTR [r14]
   140004702:	83 c8 20             	or     eax,0x20
   140004705:	89 45 d8             	mov    DWORD PTR [rbp-0x28],eax
   140004708:	a8 04                	test   al,0x4
   14000470a:	0f 84 af 01 00 00    	je     1400048bf <__mingw_pformat+0x64f>
   140004710:	db 2a                	fld    TBYTE PTR [rdx]
   140004712:	48 8d 4d a0          	lea    rcx,[rbp-0x60]
   140004716:	48 8d 55 d0          	lea    rdx,[rbp-0x30]
   14000471a:	db 7d a0             	fstp   TBYTE PTR [rbp-0x60]
   14000471d:	e8 4e f4 ff ff       	call   140003b70 <__pformat_float>
   140004722:	eb cc                	jmp    1400046f0 <__mingw_pformat+0x480>
   140004724:	8b 45 d8             	mov    eax,DWORD PTR [rbp-0x28]
   140004727:	49 8b 16             	mov    rdx,QWORD PTR [r14]
   14000472a:	83 c8 20             	or     eax,0x20
   14000472d:	89 45 d8             	mov    DWORD PTR [rbp-0x28],eax
   140004730:	a8 04                	test   al,0x4
   140004732:	0f 84 5d 01 00 00    	je     140004895 <__mingw_pformat+0x625>
   140004738:	db 2a                	fld    TBYTE PTR [rdx]
   14000473a:	48 8d 4d a0          	lea    rcx,[rbp-0x60]
   14000473e:	48 8d 55 d0          	lea    rdx,[rbp-0x30]
   140004742:	db 7d a0             	fstp   TBYTE PTR [rbp-0x60]
   140004745:	e8 86 f3 ff ff       	call   140003ad0 <__pformat_efloat>
   14000474a:	eb a4                	jmp    1400046f0 <__mingw_pformat+0x480>
   14000474c:	85 db                	test   ebx,ebx
   14000474e:	0f 85 8c fc ff ff    	jne    1400043e0 <__mingw_pformat+0x170>
   140004754:	0f b6 56 01          	movzx  edx,BYTE PTR [rsi+0x1]
   140004758:	83 4d d8 40          	or     DWORD PTR [rbp-0x28],0x40
   14000475c:	4c 89 e6             	mov    rsi,r12
   14000475f:	e9 83 fc ff ff       	jmp    1400043e7 <__mingw_pformat+0x177>
   140004764:	85 db                	test   ebx,ebx
   140004766:	0f 85 74 fc ff ff    	jne    1400043e0 <__mingw_pformat+0x170>
   14000476c:	0f b6 56 01          	movzx  edx,BYTE PTR [rsi+0x1]
   140004770:	81 4d d8 00 04 00 00 	or     DWORD PTR [rbp-0x28],0x400
   140004777:	4c 89 e6             	mov    rsi,r12
   14000477a:	e9 68 fc ff ff       	jmp    1400043e7 <__mingw_pformat+0x177>
   14000477f:	83 fb 01             	cmp    ebx,0x1
   140004782:	0f 86 bb 03 00 00    	jbe    140004b43 <__mingw_pformat+0x8d3>
   140004788:	0f b6 56 01          	movzx  edx,BYTE PTR [rsi+0x1]
   14000478c:	bb 04 00 00 00       	mov    ebx,0x4
   140004791:	4c 89 e6             	mov    rsi,r12
   140004794:	e9 4e fc ff ff       	jmp    1400043e7 <__mingw_pformat+0x177>
   140004799:	85 db                	test   ebx,ebx
   14000479b:	0f 85 e0 02 00 00    	jne    140004a81 <__mingw_pformat+0x811>
   1400047a1:	0f b6 56 01          	movzx  edx,BYTE PTR [rsi+0x1]
   1400047a5:	81 4d d8 00 02 00 00 	or     DWORD PTR [rbp-0x28],0x200
   1400047ac:	4c 89 e6             	mov    rsi,r12
   1400047af:	e9 33 fc ff ff       	jmp    1400043e7 <__mingw_pformat+0x177>
   1400047b4:	8b 45 d8             	mov    eax,DWORD PTR [rbp-0x28]
   1400047b7:	49 8b 16             	mov    rdx,QWORD PTR [r14]
   1400047ba:	a8 04                	test   al,0x4
   1400047bc:	0f 85 27 fe ff ff    	jne    1400045e9 <__mingw_pformat+0x379>
   1400047c2:	49 89 d0             	mov    r8,rdx
   1400047c5:	89 d1                	mov    ecx,edx
   1400047c7:	49 c1 e8 20          	shr    r8,0x20
   1400047cb:	f7 d9                	neg    ecx
   1400047cd:	45 89 c1             	mov    r9d,r8d
   1400047d0:	09 d1                	or     ecx,edx
   1400047d2:	41 81 e1 ff ff ff 7f 	and    r9d,0x7fffffff
   1400047d9:	c1 e9 1f             	shr    ecx,0x1f
   1400047dc:	44 09 c9             	or     ecx,r9d
   1400047df:	41 b9 00 00 f0 7f    	mov    r9d,0x7ff00000
   1400047e5:	41 39 c9             	cmp    r9d,ecx
   1400047e8:	0f 88 b1 02 00 00    	js     140004a9f <__mingw_pformat+0x82f>
   1400047ee:	48 89 55 80          	mov    QWORD PTR [rbp-0x80],rdx
   1400047f2:	dd 45 80             	fld    QWORD PTR [rbp-0x80]
   1400047f5:	db 7d 80             	fstp   TBYTE PTR [rbp-0x80]
   1400047f8:	48 8b 4d 88          	mov    rcx,QWORD PTR [rbp-0x78]
   1400047fc:	66 85 c9             	test   cx,cx
   1400047ff:	79 05                	jns    140004806 <__mingw_pformat+0x596>
   140004801:	0c 80                	or     al,0x80
   140004803:	89 45 d8             	mov    DWORD PTR [rbp-0x28],eax
   140004806:	44 89 c0             	mov    eax,r8d
   140004809:	41 81 e0 00 00 f0 7f 	and    r8d,0x7ff00000
   140004810:	25 ff ff 0f 00       	and    eax,0xfffff
   140004815:	41 81 f8 00 00 f0 7f 	cmp    r8d,0x7ff00000
   14000481c:	41 0f 95 c1          	setne  r9b
   140004820:	09 d0                	or     eax,edx
   140004822:	0f 95 c2             	setne  dl
   140004825:	41 08 d1             	or     r9b,dl
   140004828:	0f 85 c7 01 00 00    	jne    1400049f5 <__mingw_pformat+0x785>
   14000482e:	44 09 c0             	or     eax,r8d
   140004831:	0f 84 be 01 00 00    	je     1400049f5 <__mingw_pformat+0x785>
   140004837:	81 e1 00 80 00 00    	and    ecx,0x8000
   14000483d:	4c 8d 45 d0          	lea    r8,[rbp-0x30]
   140004841:	48 8d 15 82 4b 00 00 	lea    rdx,[rip+0x4b82]        # 1400093ca <.rdata+0x1a>
   140004848:	e8 03 e3 ff ff       	call   140002b50 <__pformat_emit_inf_or_nan>
   14000484d:	e9 9e fe ff ff       	jmp    1400046f0 <__mingw_pformat+0x480>
   140004852:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140004858:	c7 45 e0 ff ff ff ff 	mov    DWORD PTR [rbp-0x20],0xffffffff
   14000485f:	49 8d 76 08          	lea    rsi,[r14+0x8]
   140004863:	41 8b 06             	mov    eax,DWORD PTR [r14]
   140004866:	48 8d 4d c0          	lea    rcx,[rbp-0x40]
   14000486a:	4c 8d 45 d0          	lea    r8,[rbp-0x30]
   14000486e:	ba 01 00 00 00       	mov    edx,0x1
   140004873:	49 89 f6             	mov    r14,rsi
   140004876:	4d 89 e7             	mov    r15,r12
   140004879:	66 89 45 c0          	mov    WORD PTR [rbp-0x40],ax
   14000487d:	e8 8e df ff ff       	call   140002810 <__pformat_wputchars>
   140004882:	e9 af fa ff ff       	jmp    140004336 <__mingw_pformat+0xc6>
   140004887:	8b 45 d8             	mov    eax,DWORD PTR [rbp-0x28]
   14000488a:	49 8b 16             	mov    rdx,QWORD PTR [r14]
   14000488d:	a8 04                	test   al,0x4
   14000488f:	0f 85 a3 fe ff ff    	jne    140004738 <__mingw_pformat+0x4c8>
   140004895:	48 89 55 80          	mov    QWORD PTR [rbp-0x80],rdx
   140004899:	dd 45 80             	fld    QWORD PTR [rbp-0x80]
   14000489c:	48 8d 55 d0          	lea    rdx,[rbp-0x30]
   1400048a0:	48 8d 4d a0          	lea    rcx,[rbp-0x60]
   1400048a4:	db 7d a0             	fstp   TBYTE PTR [rbp-0x60]
   1400048a7:	e8 24 f2 ff ff       	call   140003ad0 <__pformat_efloat>
   1400048ac:	e9 3f fe ff ff       	jmp    1400046f0 <__mingw_pformat+0x480>
   1400048b1:	8b 45 d8             	mov    eax,DWORD PTR [rbp-0x28]
   1400048b4:	49 8b 16             	mov    rdx,QWORD PTR [r14]
   1400048b7:	a8 04                	test   al,0x4
   1400048b9:	0f 85 51 fe ff ff    	jne    140004710 <__mingw_pformat+0x4a0>
   1400048bf:	48 89 55 80          	mov    QWORD PTR [rbp-0x80],rdx
   1400048c3:	dd 45 80             	fld    QWORD PTR [rbp-0x80]
   1400048c6:	48 8d 55 d0          	lea    rdx,[rbp-0x30]
   1400048ca:	48 8d 4d a0          	lea    rcx,[rbp-0x60]
   1400048ce:	db 7d a0             	fstp   TBYTE PTR [rbp-0x60]
   1400048d1:	e8 9a f2 ff ff       	call   140003b70 <__pformat_float>
   1400048d6:	e9 15 fe ff ff       	jmp    1400046f0 <__mingw_pformat+0x480>
   1400048db:	8b 45 d8             	mov    eax,DWORD PTR [rbp-0x28]
   1400048de:	49 8b 16             	mov    rdx,QWORD PTR [r14]
   1400048e1:	a8 04                	test   al,0x4
   1400048e3:	0f 85 ec fd ff ff    	jne    1400046d5 <__mingw_pformat+0x465>
   1400048e9:	48 89 55 80          	mov    QWORD PTR [rbp-0x80],rdx
   1400048ed:	dd 45 80             	fld    QWORD PTR [rbp-0x80]
   1400048f0:	48 8d 55 d0          	lea    rdx,[rbp-0x30]
   1400048f4:	48 8d 4d a0          	lea    rcx,[rbp-0x60]
   1400048f8:	db 7d a0             	fstp   TBYTE PTR [rbp-0x60]
   1400048fb:	e8 50 f3 ff ff       	call   140003c50 <__pformat_gfloat>
   140004900:	e9 eb fd ff ff       	jmp    1400046f0 <__mingw_pformat+0x480>
   140004905:	48 8d 55 d0          	lea    rdx,[rbp-0x30]
   140004909:	b9 25 00 00 00       	mov    ecx,0x25
   14000490e:	4d 89 e7             	mov    r15,r12
   140004911:	e8 9a de ff ff       	call   1400027b0 <__pformat_putc>
   140004916:	e9 1b fa ff ff       	jmp    140004336 <__mingw_pformat+0xc6>
   14000491b:	85 db                	test   ebx,ebx
   14000491d:	0f 85 bd fa ff ff    	jne    1400043e0 <__mingw_pformat+0x170>
   140004923:	4c 8d 4d c0          	lea    r9,[rbp-0x40]
   140004927:	4c 89 95 78 ff ff ff 	mov    QWORD PTR [rbp-0x88],r10
   14000492e:	44 89 5d 90          	mov    DWORD PTR [rbp-0x70],r11d
   140004932:	81 4d d8 00 10 00 00 	or     DWORD PTR [rbp-0x28],0x1000
   140004939:	4c 89 4d 80          	mov    QWORD PTR [rbp-0x80],r9
   14000493d:	c7 45 c0 00 00 00 00 	mov    DWORD PTR [rbp-0x40],0x0
   140004944:	e8 8f 31 00 00       	call   140007ad8 <localeconv>
   140004949:	4c 8b 4d 80          	mov    r9,QWORD PTR [rbp-0x80]
   14000494d:	48 8d 4d be          	lea    rcx,[rbp-0x42]
   140004951:	41 b8 10 00 00 00    	mov    r8d,0x10
   140004957:	48 8b 50 08          	mov    rdx,QWORD PTR [rax+0x8]
   14000495b:	e8 d0 2e 00 00       	call   140007830 <mbrtowc>
   140004960:	44 8b 5d 90          	mov    r11d,DWORD PTR [rbp-0x70]
   140004964:	4c 8b 95 78 ff ff ff 	mov    r10,QWORD PTR [rbp-0x88]
   14000496b:	85 c0                	test   eax,eax
   14000496d:	7e 08                	jle    140004977 <__mingw_pformat+0x707>
   14000496f:	0f b7 55 be          	movzx  edx,WORD PTR [rbp-0x42]
   140004973:	66 89 55 f0          	mov    WORD PTR [rbp-0x10],dx
   140004977:	0f b6 56 01          	movzx  edx,BYTE PTR [rsi+0x1]
   14000497b:	89 45 ec             	mov    DWORD PTR [rbp-0x14],eax
   14000497e:	4c 89 e6             	mov    rsi,r12
   140004981:	e9 61 fa ff ff       	jmp    1400043e7 <__mingw_pformat+0x177>
   140004986:	4d 85 d2             	test   r10,r10
   140004989:	0f 84 f9 fd ff ff    	je     140004788 <__mingw_pformat+0x518>
   14000498f:	f7 c3 fd ff ff ff    	test   ebx,0xfffffffd
   140004995:	0f 85 1b 01 00 00    	jne    140004ab6 <__mingw_pformat+0x846>
   14000499b:	41 8b 06             	mov    eax,DWORD PTR [r14]
   14000499e:	49 8d 4e 08          	lea    rcx,[r14+0x8]
   1400049a2:	41 89 02             	mov    DWORD PTR [r10],eax
   1400049a5:	85 c0                	test   eax,eax
   1400049a7:	0f 88 67 02 00 00    	js     140004c14 <__mingw_pformat+0x9a4>
   1400049ad:	0f b6 56 01          	movzx  edx,BYTE PTR [rsi+0x1]
   1400049b1:	49 89 ce             	mov    r14,rcx
   1400049b4:	4c 89 e6             	mov    rsi,r12
   1400049b7:	45 31 d2             	xor    r10d,r10d
   1400049ba:	e9 28 fa ff ff       	jmp    1400043e7 <__mingw_pformat+0x177>
   1400049bf:	85 db                	test   ebx,ebx
   1400049c1:	0f 85 19 fa ff ff    	jne    1400043e0 <__mingw_pformat+0x170>
   1400049c7:	0f b6 56 01          	movzx  edx,BYTE PTR [rsi+0x1]
   1400049cb:	81 4d d8 00 01 00 00 	or     DWORD PTR [rbp-0x28],0x100
   1400049d2:	4c 89 e6             	mov    rsi,r12
   1400049d5:	e9 0d fa ff ff       	jmp    1400043e7 <__mingw_pformat+0x177>
   1400049da:	85 db                	test   ebx,ebx
   1400049dc:	0f 85 fe f9 ff ff    	jne    1400043e0 <__mingw_pformat+0x170>
   1400049e2:	0f b6 56 01          	movzx  edx,BYTE PTR [rsi+0x1]
   1400049e6:	81 4d d8 00 08 00 00 	or     DWORD PTR [rbp-0x28],0x800
   1400049ed:	4c 89 e6             	mov    rsi,r12
   1400049f0:	e9 f2 f9 ff ff       	jmp    1400043e7 <__mingw_pformat+0x177>
   1400049f5:	89 ca                	mov    edx,ecx
   1400049f7:	48 8b 45 80          	mov    rax,QWORD PTR [rbp-0x80]
   1400049fb:	66 81 e2 ff 7f       	and    dx,0x7fff
   140004a00:	0f 84 ee 01 00 00    	je     140004bf4 <__mingw_pformat+0x984>
   140004a06:	66 81 fa 00 3c       	cmp    dx,0x3c00
   140004a0b:	0f 8f fd 00 00 00    	jg     140004b0e <__mingw_pformat+0x89e>
   140004a11:	44 0f bf c2          	movsx  r8d,dx
   140004a15:	b9 01 3c 00 00       	mov    ecx,0x3c01
   140004a1a:	44 29 c1             	sub    ecx,r8d
   140004a1d:	48 d3 e8             	shr    rax,cl
   140004a20:	01 d1                	add    ecx,edx
   140004a22:	8d 91 04 c0 ff ff    	lea    edx,[rcx-0x3ffc]
   140004a28:	48 c1 e8 03          	shr    rax,0x3
   140004a2c:	48 89 c1             	mov    rcx,rax
   140004a2f:	4c 8d 45 d0          	lea    r8,[rbp-0x30]
   140004a33:	e8 78 f3 ff ff       	call   140003db0 <__pformat_emit_xfloat.isra.0>
   140004a38:	e9 b3 fc ff ff       	jmp    1400046f0 <__mingw_pformat+0x480>
   140004a3d:	49 8d 76 08          	lea    rsi,[r14+0x8]
   140004a41:	4d 8b 36             	mov    r14,QWORD PTR [r14]
   140004a44:	48 8d 05 6d 49 00 00 	lea    rax,[rip+0x496d]        # 1400093b8 <.rdata+0x8>
   140004a4b:	4d 85 f6             	test   r14,r14
   140004a4e:	4c 0f 44 f0          	cmove  r14,rax
   140004a52:	8b 45 e0             	mov    eax,DWORD PTR [rbp-0x20]
   140004a55:	85 c0                	test   eax,eax
   140004a57:	0f 88 29 01 00 00    	js     140004b86 <__mingw_pformat+0x916>
   140004a5d:	48 63 d0             	movsxd rdx,eax
   140004a60:	4c 89 f1             	mov    rcx,r14
   140004a63:	e8 08 29 00 00       	call   140007370 <wcsnlen>
   140004a68:	4c 8d 45 d0          	lea    r8,[rbp-0x30]
   140004a6c:	4c 89 f1             	mov    rcx,r14
   140004a6f:	89 c2                	mov    edx,eax
   140004a71:	e8 9a dd ff ff       	call   140002810 <__pformat_wputchars>
   140004a76:	49 89 f6             	mov    r14,rsi
   140004a79:	4d 89 e7             	mov    r15,r12
   140004a7c:	e9 b5 f8 ff ff       	jmp    140004336 <__mingw_pformat+0xc6>
   140004a81:	83 fb 03             	cmp    ebx,0x3
   140004a84:	0f 87 20 fb ff ff    	ja     1400045aa <__mingw_pformat+0x33a>
   140004a8a:	b9 30 00 00 00       	mov    ecx,0x30
   140004a8f:	83 fb 02             	cmp    ebx,0x2
   140004a92:	b8 03 00 00 00       	mov    eax,0x3
   140004a97:	0f 44 d8             	cmove  ebx,eax
   140004a9a:	e9 23 f9 ff ff       	jmp    1400043c2 <__mingw_pformat+0x152>
   140004a9f:	4c 8d 45 d0          	lea    r8,[rbp-0x30]
   140004aa3:	48 8d 15 1c 49 00 00 	lea    rdx,[rip+0x491c]        # 1400093c6 <.rdata+0x16>
   140004aaa:	31 c9                	xor    ecx,ecx
   140004aac:	e8 9f e0 ff ff       	call   140002b50 <__pformat_emit_inf_or_nan>
   140004ab1:	e9 3a fc ff ff       	jmp    1400046f0 <__mingw_pformat+0x480>
   140004ab6:	0f b6 56 01          	movzx  edx,BYTE PTR [rsi+0x1]
   140004aba:	45 31 d2             	xor    r10d,r10d
   140004abd:	4c 89 e6             	mov    rsi,r12
   140004ac0:	bb 04 00 00 00       	mov    ebx,0x4
   140004ac5:	e9 1d f9 ff ff       	jmp    1400043e7 <__mingw_pformat+0x177>
   140004aca:	4d 85 c0             	test   r8,r8
   140004acd:	b8 02 c0 ff ff       	mov    eax,0xffffc002
   140004ad2:	4c 89 c1             	mov    rcx,r8
   140004ad5:	0f 45 d0             	cmovne edx,eax
   140004ad8:	e9 52 ff ff ff       	jmp    140004a2f <__mingw_pformat+0x7bf>
   140004add:	4c 89 e6             	mov    rsi,r12
   140004ae0:	41 bb 03 00 00 00    	mov    r11d,0x3
   140004ae6:	bb 04 00 00 00       	mov    ebx,0x4
   140004aeb:	e9 f7 f8 ff ff       	jmp    1400043e7 <__mingw_pformat+0x177>
   140004af0:	0c 80                	or     al,0x80
   140004af2:	89 45 d8             	mov    DWORD PTR [rbp-0x28],eax
   140004af5:	e9 3c fb ff ff       	jmp    140004636 <__mingw_pformat+0x3c6>
   140004afa:	89 f8                	mov    eax,edi
   140004afc:	c7 45 e0 10 00 00 00 	mov    DWORD PTR [rbp-0x20],0x10
   140004b03:	80 cc 02             	or     ah,0x2
   140004b06:	89 45 d8             	mov    DWORD PTR [rbp-0x28],eax
   140004b09:	e9 ce f9 ff ff       	jmp    1400044dc <__mingw_pformat+0x26c>
   140004b0e:	66 85 d2             	test   dx,dx
   140004b11:	0f 84 dd 00 00 00    	je     140004bf4 <__mingw_pformat+0x984>
   140004b17:	89 d1                	mov    ecx,edx
   140004b19:	e9 04 ff ff ff       	jmp    140004a22 <__mingw_pformat+0x7b2>
   140004b1e:	66 90                	xchg   ax,ax
   140004b20:	48 0f bf c9          	movsx  rcx,cx
   140004b24:	e9 92 f9 ff ff       	jmp    1400044bb <__mingw_pformat+0x24b>
   140004b29:	48 89 11             	mov    QWORD PTR [rcx],rdx
   140004b2c:	e9 bf fb ff ff       	jmp    1400046f0 <__mingw_pformat+0x480>
   140004b31:	83 e9 30             	sub    ecx,0x30
   140004b34:	0f b6 56 01          	movzx  edx,BYTE PTR [rsi+0x1]
   140004b38:	4c 89 e6             	mov    rsi,r12
   140004b3b:	41 89 0a             	mov    DWORD PTR [r10],ecx
   140004b3e:	e9 a4 f8 ff ff       	jmp    1400043e7 <__mingw_pformat+0x177>
   140004b43:	0f b6 56 01          	movzx  edx,BYTE PTR [rsi+0x1]
   140004b47:	c7 45 e0 00 00 00 00 	mov    DWORD PTR [rbp-0x20],0x0
   140004b4e:	4c 89 e6             	mov    rsi,r12
   140004b51:	4c 8d 55 e0          	lea    r10,[rbp-0x20]
   140004b55:	bb 02 00 00 00       	mov    ebx,0x2
   140004b5a:	e9 88 f8 ff ff       	jmp    1400043e7 <__mingw_pformat+0x177>
   140004b5f:	49 8b 06             	mov    rax,QWORD PTR [r14]
   140004b62:	e9 e1 f8 ff ff       	jmp    140004448 <__mingw_pformat+0x1d8>
   140004b67:	0f b6 56 02          	movzx  edx,BYTE PTR [rsi+0x2]
   140004b6b:	41 bb 05 00 00 00    	mov    r11d,0x5
   140004b71:	48 83 c6 02          	add    rsi,0x2
   140004b75:	bb 04 00 00 00       	mov    ebx,0x4
   140004b7a:	e9 68 f8 ff ff       	jmp    1400043e7 <__mingw_pformat+0x177>
   140004b7f:	88 11                	mov    BYTE PTR [rcx],dl
   140004b81:	e9 6a fb ff ff       	jmp    1400046f0 <__mingw_pformat+0x480>
   140004b86:	4c 89 f1             	mov    rcx,r14
   140004b89:	e8 92 2f 00 00       	call   140007b20 <wcslen>
   140004b8e:	4c 8d 45 d0          	lea    r8,[rbp-0x30]
   140004b92:	4c 89 f1             	mov    rcx,r14
   140004b95:	89 c2                	mov    edx,eax
   140004b97:	e8 74 dc ff ff       	call   140002810 <__pformat_wputchars>
   140004b9c:	e9 d5 fe ff ff       	jmp    140004a76 <__mingw_pformat+0x806>
   140004ba1:	48 8d 55 d0          	lea    rdx,[rbp-0x30]
   140004ba5:	48 89 c1             	mov    rcx,rax
   140004ba8:	e8 63 e5 ff ff       	call   140003110 <__pformat_int.isra.0>
   140004bad:	e9 3e fb ff ff       	jmp    1400046f0 <__mingw_pformat+0x480>
   140004bb2:	49 8b 0e             	mov    rcx,QWORD PTR [r14]
   140004bb5:	e9 01 f9 ff ff       	jmp    1400044bb <__mingw_pformat+0x24b>
   140004bba:	80 7e 02 34          	cmp    BYTE PTR [rsi+0x2],0x34
   140004bbe:	0f 85 e6 f9 ff ff    	jne    1400045aa <__mingw_pformat+0x33a>
   140004bc4:	0f b6 56 03          	movzx  edx,BYTE PTR [rsi+0x3]
   140004bc8:	41 bb 03 00 00 00    	mov    r11d,0x3
   140004bce:	48 83 c6 03          	add    rsi,0x3
   140004bd2:	bb 04 00 00 00       	mov    ebx,0x4
   140004bd7:	e9 0b f8 ff ff       	jmp    1400043e7 <__mingw_pformat+0x177>
   140004bdc:	0f b6 56 02          	movzx  edx,BYTE PTR [rsi+0x2]
   140004be0:	41 bb 03 00 00 00    	mov    r11d,0x3
   140004be6:	48 83 c6 02          	add    rsi,0x2
   140004bea:	bb 04 00 00 00       	mov    ebx,0x4
   140004bef:	e9 f3 f7 ff ff       	jmp    1400043e7 <__mingw_pformat+0x177>
   140004bf4:	48 85 c0             	test   rax,rax
   140004bf7:	b9 05 fc ff ff       	mov    ecx,0xfffffc05
   140004bfc:	0f 45 d1             	cmovne edx,ecx
   140004bff:	e9 24 fe ff ff       	jmp    140004a28 <__mingw_pformat+0x7b8>
   140004c04:	66 89 11             	mov    WORD PTR [rcx],dx
   140004c07:	e9 e4 fa ff ff       	jmp    1400046f0 <__mingw_pformat+0x480>
   140004c0c:	41 8b 06             	mov    eax,DWORD PTR [r14]
   140004c0f:	e9 34 f8 ff ff       	jmp    140004448 <__mingw_pformat+0x1d8>
   140004c14:	85 db                	test   ebx,ebx
   140004c16:	75 27                	jne    140004c3f <__mingw_pformat+0x9cf>
   140004c18:	81 4d d8 00 04 00 00 	or     DWORD PTR [rbp-0x28],0x400
   140004c1f:	f7 5d dc             	neg    DWORD PTR [rbp-0x24]
   140004c22:	e9 86 fd ff ff       	jmp    1400049ad <__mingw_pformat+0x73d>
   140004c27:	0f b6 56 03          	movzx  edx,BYTE PTR [rsi+0x3]
   140004c2b:	41 bb 02 00 00 00    	mov    r11d,0x2
   140004c31:	48 83 c6 03          	add    rsi,0x3
   140004c35:	bb 04 00 00 00       	mov    ebx,0x4
   140004c3a:	e9 a8 f7 ff ff       	jmp    1400043e7 <__mingw_pformat+0x177>
   140004c3f:	0f b6 56 01          	movzx  edx,BYTE PTR [rsi+0x1]
   140004c43:	49 89 ce             	mov    r14,rcx
   140004c46:	4c 89 e6             	mov    rsi,r12
   140004c49:	45 31 d2             	xor    r10d,r10d
   140004c4c:	c7 45 e0 ff ff ff ff 	mov    DWORD PTR [rbp-0x20],0xffffffff
   140004c53:	bb 02 00 00 00       	mov    ebx,0x2
   140004c58:	e9 8a f7 ff ff       	jmp    1400043e7 <__mingw_pformat+0x177>
   140004c5d:	44 89 d9             	mov    ecx,r11d
   140004c60:	4c 8d 45 d0          	lea    r8,[rbp-0x30]
   140004c64:	48 8d 15 5f 47 00 00 	lea    rdx,[rip+0x475f]        # 1400093ca <.rdata+0x1a>
   140004c6b:	81 e1 00 80 00 00    	and    ecx,0x8000
   140004c71:	e8 da de ff ff       	call   140002b50 <__pformat_emit_inf_or_nan>
   140004c76:	e9 75 fa ff ff       	jmp    1400046f0 <__mingw_pformat+0x480>
   140004c7b:	90                   	nop
   140004c7c:	90                   	nop
   140004c7d:	90                   	nop
   140004c7e:	90                   	nop
   140004c7f:	90                   	nop

0000000140004c80 <__rv_alloc_D2A>:
   140004c80:	55                   	push   rbp
   140004c81:	53                   	push   rbx
   140004c82:	48 83 ec 28          	sub    rsp,0x28
   140004c86:	48 8d 6c 24 20       	lea    rbp,[rsp+0x20]
   140004c8b:	31 db                	xor    ebx,ebx
   140004c8d:	83 f9 1b             	cmp    ecx,0x1b
   140004c90:	7e 1a                	jle    140004cac <__rv_alloc_D2A+0x2c>
   140004c92:	b8 04 00 00 00       	mov    eax,0x4
   140004c97:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
   140004c9e:	00 00 
   140004ca0:	01 c0                	add    eax,eax
   140004ca2:	83 c3 01             	add    ebx,0x1
   140004ca5:	8d 50 17             	lea    edx,[rax+0x17]
   140004ca8:	39 ca                	cmp    edx,ecx
   140004caa:	7c f4                	jl     140004ca0 <__rv_alloc_D2A+0x20>
   140004cac:	89 d9                	mov    ecx,ebx
   140004cae:	e8 ed 1a 00 00       	call   1400067a0 <__Balloc_D2A>
   140004cb3:	89 18                	mov    DWORD PTR [rax],ebx
   140004cb5:	48 83 c0 04          	add    rax,0x4
   140004cb9:	48 83 c4 28          	add    rsp,0x28
   140004cbd:	5b                   	pop    rbx
   140004cbe:	5d                   	pop    rbp
   140004cbf:	c3                   	ret

0000000140004cc0 <__nrv_alloc_D2A>:
   140004cc0:	55                   	push   rbp
   140004cc1:	57                   	push   rdi
   140004cc2:	56                   	push   rsi
   140004cc3:	53                   	push   rbx
   140004cc4:	48 83 ec 28          	sub    rsp,0x28
   140004cc8:	48 8d 6c 24 20       	lea    rbp,[rsp+0x20]
   140004ccd:	48 89 cf             	mov    rdi,rcx
   140004cd0:	48 89 d6             	mov    rsi,rdx
   140004cd3:	41 83 f8 1b          	cmp    r8d,0x1b
   140004cd7:	7e 5f                	jle    140004d38 <__nrv_alloc_D2A+0x78>
   140004cd9:	b8 04 00 00 00       	mov    eax,0x4
   140004cde:	31 db                	xor    ebx,ebx
   140004ce0:	01 c0                	add    eax,eax
   140004ce2:	83 c3 01             	add    ebx,0x1
   140004ce5:	8d 50 17             	lea    edx,[rax+0x17]
   140004ce8:	41 39 d0             	cmp    r8d,edx
   140004ceb:	7f f3                	jg     140004ce0 <__nrv_alloc_D2A+0x20>
   140004ced:	89 d9                	mov    ecx,ebx
   140004cef:	e8 ac 1a 00 00       	call   1400067a0 <__Balloc_D2A>
   140004cf4:	48 8d 57 01          	lea    rdx,[rdi+0x1]
   140004cf8:	89 18                	mov    DWORD PTR [rax],ebx
   140004cfa:	0f b6 0f             	movzx  ecx,BYTE PTR [rdi]
   140004cfd:	4c 8d 40 04          	lea    r8,[rax+0x4]
   140004d01:	88 48 04             	mov    BYTE PTR [rax+0x4],cl
   140004d04:	4c 89 c0             	mov    rax,r8
   140004d07:	84 c9                	test   cl,cl
   140004d09:	74 16                	je     140004d21 <__nrv_alloc_D2A+0x61>
   140004d0b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140004d10:	0f b6 0a             	movzx  ecx,BYTE PTR [rdx]
   140004d13:	48 83 c0 01          	add    rax,0x1
   140004d17:	48 83 c2 01          	add    rdx,0x1
   140004d1b:	88 08                	mov    BYTE PTR [rax],cl
   140004d1d:	84 c9                	test   cl,cl
   140004d1f:	75 ef                	jne    140004d10 <__nrv_alloc_D2A+0x50>
   140004d21:	48 85 f6             	test   rsi,rsi
   140004d24:	74 03                	je     140004d29 <__nrv_alloc_D2A+0x69>
   140004d26:	48 89 06             	mov    QWORD PTR [rsi],rax
   140004d29:	4c 89 c0             	mov    rax,r8
   140004d2c:	48 83 c4 28          	add    rsp,0x28
   140004d30:	5b                   	pop    rbx
   140004d31:	5e                   	pop    rsi
   140004d32:	5f                   	pop    rdi
   140004d33:	5d                   	pop    rbp
   140004d34:	c3                   	ret
   140004d35:	0f 1f 00             	nop    DWORD PTR [rax]
   140004d38:	31 db                	xor    ebx,ebx
   140004d3a:	eb b1                	jmp    140004ced <__nrv_alloc_D2A+0x2d>
   140004d3c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000140004d40 <__freedtoa>:
   140004d40:	ba 01 00 00 00       	mov    edx,0x1
   140004d45:	48 89 c8             	mov    rax,rcx
   140004d48:	8b 49 fc             	mov    ecx,DWORD PTR [rcx-0x4]
   140004d4b:	d3 e2                	shl    edx,cl
   140004d4d:	66 0f 6e c1          	movd   xmm0,ecx
   140004d51:	48 8d 48 fc          	lea    rcx,[rax-0x4]
   140004d55:	66 0f 6e ca          	movd   xmm1,edx
   140004d59:	66 0f 62 c1          	punpckldq xmm0,xmm1
   140004d5d:	66 0f d6 40 04       	movq   QWORD PTR [rax+0x4],xmm0
   140004d62:	e9 39 1b 00 00       	jmp    1400068a0 <__Bfree_D2A>
   140004d67:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
   140004d6e:	00 00 

0000000140004d70 <__quorem_D2A>:
   140004d70:	55                   	push   rbp
   140004d71:	41 57                	push   r15
   140004d73:	41 56                	push   r14
   140004d75:	41 55                	push   r13
   140004d77:	41 54                	push   r12
   140004d79:	57                   	push   rdi
   140004d7a:	56                   	push   rsi
   140004d7b:	53                   	push   rbx
   140004d7c:	48 83 ec 38          	sub    rsp,0x38
   140004d80:	48 8d 6c 24 30       	lea    rbp,[rsp+0x30]
   140004d85:	31 c0                	xor    eax,eax
   140004d87:	8b 72 14             	mov    esi,DWORD PTR [rdx+0x14]
   140004d8a:	49 89 cd             	mov    r13,rcx
   140004d8d:	49 89 d3             	mov    r11,rdx
   140004d90:	39 71 14             	cmp    DWORD PTR [rcx+0x14],esi
   140004d93:	0f 8c ea 00 00 00    	jl     140004e83 <__quorem_D2A+0x113>
   140004d99:	83 ee 01             	sub    esi,0x1
   140004d9c:	48 8d 5a 18          	lea    rbx,[rdx+0x18]
   140004da0:	4c 8d 61 18          	lea    r12,[rcx+0x18]
   140004da4:	31 d2                	xor    edx,edx
   140004da6:	4c 63 d6             	movsxd r10,esi
   140004da9:	49 c1 e2 02          	shl    r10,0x2
   140004dad:	4a 8d 3c 13          	lea    rdi,[rbx+r10*1]
   140004db1:	4d 01 e2             	add    r10,r12
   140004db4:	8b 07                	mov    eax,DWORD PTR [rdi]
   140004db6:	45 8b 02             	mov    r8d,DWORD PTR [r10]
   140004db9:	8d 48 01             	lea    ecx,[rax+0x1]
   140004dbc:	44 89 c0             	mov    eax,r8d
   140004dbf:	f7 f1                	div    ecx
   140004dc1:	89 45 f8             	mov    DWORD PTR [rbp-0x8],eax
   140004dc4:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
   140004dc7:	41 39 c8             	cmp    r8d,ecx
   140004dca:	72 5a                	jb     140004e26 <__quorem_D2A+0xb6>
   140004dcc:	41 89 c7             	mov    r15d,eax
   140004dcf:	49 89 d9             	mov    r9,rbx
   140004dd2:	4d 89 e0             	mov    r8,r12
   140004dd5:	45 31 f6             	xor    r14d,r14d
   140004dd8:	31 c9                	xor    ecx,ecx
   140004dda:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140004de0:	41 8b 01             	mov    eax,DWORD PTR [r9]
   140004de3:	41 8b 10             	mov    edx,DWORD PTR [r8]
   140004de6:	49 83 c1 04          	add    r9,0x4
   140004dea:	49 83 c0 04          	add    r8,0x4
   140004dee:	49 0f af c7          	imul   rax,r15
   140004df2:	4c 01 f0             	add    rax,r14
   140004df5:	49 89 c6             	mov    r14,rax
   140004df8:	89 c0                	mov    eax,eax
   140004dfa:	48 29 c2             	sub    rdx,rax
   140004dfd:	49 c1 ee 20          	shr    r14,0x20
   140004e01:	48 89 d0             	mov    rax,rdx
   140004e04:	48 29 c8             	sub    rax,rcx
   140004e07:	48 89 c1             	mov    rcx,rax
   140004e0a:	41 89 40 fc          	mov    DWORD PTR [r8-0x4],eax
   140004e0e:	48 c1 e9 20          	shr    rcx,0x20
   140004e12:	83 e1 01             	and    ecx,0x1
   140004e15:	4c 39 cf             	cmp    rdi,r9
   140004e18:	73 c6                	jae    140004de0 <__quorem_D2A+0x70>
   140004e1a:	45 8b 0a             	mov    r9d,DWORD PTR [r10]
   140004e1d:	45 85 c9             	test   r9d,r9d
   140004e20:	0f 84 a5 00 00 00    	je     140004ecb <__quorem_D2A+0x15b>
   140004e26:	4c 89 da             	mov    rdx,r11
   140004e29:	4c 89 e9             	mov    rcx,r13
   140004e2c:	e8 8f 20 00 00       	call   140006ec0 <__cmp_D2A>
   140004e31:	85 c0                	test   eax,eax
   140004e33:	78 4b                	js     140004e80 <__quorem_D2A+0x110>
   140004e35:	4c 89 e1             	mov    rcx,r12
   140004e38:	31 d2                	xor    edx,edx
   140004e3a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140004e40:	8b 01                	mov    eax,DWORD PTR [rcx]
   140004e42:	44 8b 03             	mov    r8d,DWORD PTR [rbx]
   140004e45:	48 83 c3 04          	add    rbx,0x4
   140004e49:	48 83 c1 04          	add    rcx,0x4
   140004e4d:	4c 29 c0             	sub    rax,r8
   140004e50:	48 29 d0             	sub    rax,rdx
   140004e53:	48 89 c2             	mov    rdx,rax
   140004e56:	89 41 fc             	mov    DWORD PTR [rcx-0x4],eax
   140004e59:	48 c1 ea 20          	shr    rdx,0x20
   140004e5d:	83 e2 01             	and    edx,0x1
   140004e60:	48 39 df             	cmp    rdi,rbx
   140004e63:	73 db                	jae    140004e40 <__quorem_D2A+0xd0>
   140004e65:	48 63 c6             	movsxd rax,esi
   140004e68:	49 8d 04 84          	lea    rax,[r12+rax*4]
   140004e6c:	8b 08                	mov    ecx,DWORD PTR [rax]
   140004e6e:	85 c9                	test   ecx,ecx
   140004e70:	74 2f                	je     140004ea1 <__quorem_D2A+0x131>
   140004e72:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
   140004e75:	83 c0 01             	add    eax,0x1
   140004e78:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
   140004e7b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140004e80:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   140004e83:	48 83 c4 38          	add    rsp,0x38
   140004e87:	5b                   	pop    rbx
   140004e88:	5e                   	pop    rsi
   140004e89:	5f                   	pop    rdi
   140004e8a:	41 5c                	pop    r12
   140004e8c:	41 5d                	pop    r13
   140004e8e:	41 5e                	pop    r14
   140004e90:	41 5f                	pop    r15
   140004e92:	5d                   	pop    rbp
   140004e93:	c3                   	ret
   140004e94:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140004e98:	8b 10                	mov    edx,DWORD PTR [rax]
   140004e9a:	85 d2                	test   edx,edx
   140004e9c:	75 0c                	jne    140004eaa <__quorem_D2A+0x13a>
   140004e9e:	83 ee 01             	sub    esi,0x1
   140004ea1:	48 83 e8 04          	sub    rax,0x4
   140004ea5:	49 39 c4             	cmp    r12,rax
   140004ea8:	72 ee                	jb     140004e98 <__quorem_D2A+0x128>
   140004eaa:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
   140004ead:	41 89 75 14          	mov    DWORD PTR [r13+0x14],esi
   140004eb1:	83 c0 01             	add    eax,0x1
   140004eb4:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
   140004eb7:	eb c7                	jmp    140004e80 <__quorem_D2A+0x110>
   140004eb9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140004ec0:	45 8b 02             	mov    r8d,DWORD PTR [r10]
   140004ec3:	45 85 c0             	test   r8d,r8d
   140004ec6:	75 0c                	jne    140004ed4 <__quorem_D2A+0x164>
   140004ec8:	83 ee 01             	sub    esi,0x1
   140004ecb:	49 83 ea 04          	sub    r10,0x4
   140004ecf:	4d 39 d4             	cmp    r12,r10
   140004ed2:	72 ec                	jb     140004ec0 <__quorem_D2A+0x150>
   140004ed4:	41 89 75 14          	mov    DWORD PTR [r13+0x14],esi
   140004ed8:	4c 89 da             	mov    rdx,r11
   140004edb:	4c 89 e9             	mov    rcx,r13
   140004ede:	e8 dd 1f 00 00       	call   140006ec0 <__cmp_D2A>
   140004ee3:	85 c0                	test   eax,eax
   140004ee5:	0f 89 4a ff ff ff    	jns    140004e35 <__quorem_D2A+0xc5>
   140004eeb:	eb 93                	jmp    140004e80 <__quorem_D2A+0x110>
   140004eed:	90                   	nop
   140004eee:	90                   	nop
   140004eef:	90                   	nop

0000000140004ef0 <__gdtoa>:
   140004ef0:	55                   	push   rbp
   140004ef1:	41 57                	push   r15
   140004ef3:	41 56                	push   r14
   140004ef5:	41 55                	push   r13
   140004ef7:	41 54                	push   r12
   140004ef9:	57                   	push   rdi
   140004efa:	56                   	push   rsi
   140004efb:	53                   	push   rbx
   140004efc:	48 81 ec c8 00 00 00 	sub    rsp,0xc8
   140004f03:	48 8d ac 24 c0 00 00 	lea    rbp,[rsp+0xc0]
   140004f0a:	00 
   140004f0b:	8b 45 70             	mov    eax,DWORD PTR [rbp+0x70]
   140004f0e:	41 8b 39             	mov    edi,DWORD PTR [r9]
   140004f11:	89 45 d8             	mov    DWORD PTR [rbp-0x28],eax
   140004f14:	8b 45 78             	mov    eax,DWORD PTR [rbp+0x78]
   140004f17:	49 89 cc             	mov    r12,rcx
   140004f1a:	4c 89 c6             	mov    rsi,r8
   140004f1d:	89 55 d0             	mov    DWORD PTR [rbp-0x30],edx
   140004f20:	4d 89 cf             	mov    r15,r9
   140004f23:	89 45 cc             	mov    DWORD PTR [rbp-0x34],eax
   140004f26:	48 8b 85 80 00 00 00 	mov    rax,QWORD PTR [rbp+0x80]
   140004f2d:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
   140004f31:	48 8b 85 88 00 00 00 	mov    rax,QWORD PTR [rbp+0x88]
   140004f38:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
   140004f3c:	89 f8                	mov    eax,edi
   140004f3e:	83 e0 cf             	and    eax,0xffffffcf
   140004f41:	41 89 01             	mov    DWORD PTR [r9],eax
   140004f44:	89 f8                	mov    eax,edi
   140004f46:	83 e0 07             	and    eax,0x7
   140004f49:	83 f8 03             	cmp    eax,0x3
   140004f4c:	0f 84 c6 02 00 00    	je     140005218 <__gdtoa+0x328>
   140004f52:	89 fb                	mov    ebx,edi
   140004f54:	83 e3 04             	and    ebx,0x4
   140004f57:	89 5d c0             	mov    DWORD PTR [rbp-0x40],ebx
   140004f5a:	0f 85 30 02 00 00    	jne    140005190 <__gdtoa+0x2a0>
   140004f60:	85 c0                	test   eax,eax
   140004f62:	0f 84 70 02 00 00    	je     1400051d8 <__gdtoa+0x2e8>
   140004f68:	44 8b 29             	mov    r13d,DWORD PTR [rcx]
   140004f6b:	b8 20 00 00 00       	mov    eax,0x20
   140004f70:	31 c9                	xor    ecx,ecx
   140004f72:	41 83 fd 20          	cmp    r13d,0x20
   140004f76:	7e 12                	jle    140004f8a <__gdtoa+0x9a>
   140004f78:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   140004f7f:	00 
   140004f80:	01 c0                	add    eax,eax
   140004f82:	83 c1 01             	add    ecx,0x1
   140004f85:	41 39 c5             	cmp    r13d,eax
   140004f88:	7f f6                	jg     140004f80 <__gdtoa+0x90>
   140004f8a:	e8 11 18 00 00       	call   1400067a0 <__Balloc_D2A>
   140004f8f:	45 8d 45 ff          	lea    r8d,[r13-0x1]
   140004f93:	41 c1 f8 05          	sar    r8d,0x5
   140004f97:	48 89 c3             	mov    rbx,rax
   140004f9a:	48 8d 50 18          	lea    rdx,[rax+0x18]
   140004f9e:	48 89 f0             	mov    rax,rsi
   140004fa1:	4d 63 c0             	movsxd r8,r8d
   140004fa4:	4a 8d 0c 86          	lea    rcx,[rsi+r8*4]
   140004fa8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   140004faf:	00 
   140004fb0:	44 8b 08             	mov    r9d,DWORD PTR [rax]
   140004fb3:	48 83 c0 04          	add    rax,0x4
   140004fb7:	48 83 c2 04          	add    rdx,0x4
   140004fbb:	44 89 4a fc          	mov    DWORD PTR [rdx-0x4],r9d
   140004fbf:	48 39 c1             	cmp    rcx,rax
   140004fc2:	73 ec                	jae    140004fb0 <__gdtoa+0xc0>
   140004fc4:	48 8d 56 01          	lea    rdx,[rsi+0x1]
   140004fc8:	48 83 c1 01          	add    rcx,0x1
   140004fcc:	4a 8d 04 85 04 00 00 	lea    rax,[r8*4+0x4]
   140004fd3:	00 
   140004fd4:	48 39 d1             	cmp    rcx,rdx
   140004fd7:	ba 04 00 00 00       	mov    edx,0x4
   140004fdc:	48 0f 42 c2          	cmovb  rax,rdx
   140004fe0:	49 89 c6             	mov    r14,rax
   140004fe3:	48 01 d8             	add    rax,rbx
   140004fe6:	49 c1 fe 02          	sar    r14,0x2
   140004fea:	eb 11                	jmp    140004ffd <__gdtoa+0x10d>
   140004fec:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140004ff0:	48 83 e8 04          	sub    rax,0x4
   140004ff4:	45 85 f6             	test   r14d,r14d
   140004ff7:	0f 84 43 02 00 00    	je     140005240 <__gdtoa+0x350>
   140004ffd:	44 8b 58 14          	mov    r11d,DWORD PTR [rax+0x14]
   140005001:	44 89 f2             	mov    edx,r14d
   140005004:	41 83 ee 01          	sub    r14d,0x1
   140005008:	45 85 db             	test   r11d,r11d
   14000500b:	74 e3                	je     140004ff0 <__gdtoa+0x100>
   14000500d:	4d 63 f6             	movsxd r14,r14d
   140005010:	89 53 14             	mov    DWORD PTR [rbx+0x14],edx
   140005013:	c1 e2 05             	shl    edx,0x5
   140005016:	42 0f bd 44 b3 18    	bsr    eax,DWORD PTR [rbx+r14*4+0x18]
   14000501c:	83 f0 1f             	xor    eax,0x1f
   14000501f:	29 c2                	sub    edx,eax
   140005021:	41 89 d6             	mov    r14d,edx
   140005024:	48 89 d9             	mov    rcx,rbx
   140005027:	e8 f4 15 00 00       	call   140006620 <__trailz_D2A>
   14000502c:	8b 4d d0             	mov    ecx,DWORD PTR [rbp-0x30]
   14000502f:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
   140005032:	89 4d a8             	mov    DWORD PTR [rbp-0x58],ecx
   140005035:	85 c0                	test   eax,eax
   140005037:	0f 85 13 02 00 00    	jne    140005250 <__gdtoa+0x360>
   14000503d:	44 8b 53 14          	mov    r10d,DWORD PTR [rbx+0x14]
   140005041:	45 85 d2             	test   r10d,r10d
   140005044:	0f 84 86 01 00 00    	je     1400051d0 <__gdtoa+0x2e0>
   14000504a:	48 8d 55 fc          	lea    rdx,[rbp-0x4]
   14000504e:	48 89 d9             	mov    rcx,rbx
   140005051:	e8 8a 20 00 00       	call   1400070e0 <__b2d_D2A>
   140005056:	8b 45 a8             	mov    eax,DWORD PTR [rbp-0x58]
   140005059:	66 0f ef c9          	pxor   xmm1,xmm1
   14000505d:	66 49 0f 7e c2       	movq   r10,xmm0
   140005062:	4c 89 d2             	mov    rdx,r10
   140005065:	46 8d 04 30          	lea    r8d,[rax+r14*1]
   140005069:	44 89 d0             	mov    eax,r10d
   14000506c:	48 c1 ea 20          	shr    rdx,0x20
   140005070:	41 8d 48 ff          	lea    ecx,[r8-0x1]
   140005074:	81 e2 ff ff 0f 00    	and    edx,0xfffff
   14000507a:	f2 0f 2a c9          	cvtsi2sd xmm1,ecx
   14000507e:	f2 0f 59 0d e2 44 00 	mulsd  xmm1,QWORD PTR [rip+0x44e2]        # 140009568 <.rdata+0x28>
   140005085:	00 
   140005086:	81 ca 00 00 f0 3f    	or     edx,0x3ff00000
   14000508c:	49 89 d1             	mov    r9,rdx
   14000508f:	49 c1 e1 20          	shl    r9,0x20
   140005093:	4c 09 c8             	or     rax,r9
   140005096:	41 b9 01 00 00 00    	mov    r9d,0x1
   14000509c:	45 29 c1             	sub    r9d,r8d
   14000509f:	66 48 0f 6e c0       	movq   xmm0,rax
   1400050a4:	85 c9                	test   ecx,ecx
   1400050a6:	f2 0f 5c 05 a2 44 00 	subsd  xmm0,QWORD PTR [rip+0x44a2]        # 140009550 <.rdata+0x10>
   1400050ad:	00 
   1400050ae:	f2 0f 59 05 a2 44 00 	mulsd  xmm0,QWORD PTR [rip+0x44a2]        # 140009558 <.rdata+0x18>
   1400050b5:	00 
   1400050b6:	44 0f 49 c9          	cmovns r9d,ecx
   1400050ba:	f2 0f 58 05 9e 44 00 	addsd  xmm0,QWORD PTR [rip+0x449e]        # 140009560 <.rdata+0x20>
   1400050c1:	00 
   1400050c2:	41 81 e9 35 04 00 00 	sub    r9d,0x435
   1400050c9:	f2 0f 58 c1          	addsd  xmm0,xmm1
   1400050cd:	45 85 c9             	test   r9d,r9d
   1400050d0:	7e 15                	jle    1400050e7 <__gdtoa+0x1f7>
   1400050d2:	66 0f ef c9          	pxor   xmm1,xmm1
   1400050d6:	f2 41 0f 2a c9       	cvtsi2sd xmm1,r9d
   1400050db:	f2 0f 59 0d 8d 44 00 	mulsd  xmm1,QWORD PTR [rip+0x448d]        # 140009570 <.rdata+0x30>
   1400050e2:	00 
   1400050e3:	f2 0f 58 c1          	addsd  xmm0,xmm1
   1400050e7:	66 0f ef c9          	pxor   xmm1,xmm1
   1400050eb:	f2 44 0f 2c d8       	cvttsd2si r11d,xmm0
   1400050f0:	66 0f 2f c8          	comisd xmm1,xmm0
   1400050f4:	0f 87 a6 04 00 00    	ja     1400055a0 <__gdtoa+0x6b0>
   1400050fa:	41 89 c9             	mov    r9d,ecx
   1400050fd:	89 c0                	mov    eax,eax
   1400050ff:	41 c1 e1 14          	shl    r9d,0x14
   140005103:	44 01 ca             	add    edx,r9d
   140005106:	89 d2                	mov    edx,edx
   140005108:	48 c1 e2 20          	shl    rdx,0x20
   14000510c:	48 09 d0             	or     rax,rdx
   14000510f:	48 89 85 68 ff ff ff 	mov    QWORD PTR [rbp-0x98],rax
   140005116:	49 89 c1             	mov    r9,rax
   140005119:	49 89 c2             	mov    r10,rax
   14000511c:	44 89 f0             	mov    eax,r14d
   14000511f:	29 c8                	sub    eax,ecx
   140005121:	8d 50 ff             	lea    edx,[rax-0x1]
   140005124:	89 55 b0             	mov    DWORD PTR [rbp-0x50],edx
   140005127:	41 83 fb 16          	cmp    r11d,0x16
   14000512b:	0f 87 3f 01 00 00    	ja     140005270 <__gdtoa+0x380>
   140005131:	48 8b 0d 18 47 00 00 	mov    rcx,QWORD PTR [rip+0x4718]        # 140009850 <.refptr.__tens_D2A>
   140005138:	49 63 d3             	movsxd rdx,r11d
   14000513b:	66 49 0f 6e e9       	movq   xmm5,r9
   140005140:	f2 0f 10 04 d1       	movsd  xmm0,QWORD PTR [rcx+rdx*8]
   140005145:	66 0f 2f c5          	comisd xmm0,xmm5
   140005149:	0f 87 b1 04 00 00    	ja     140005600 <__gdtoa+0x710>
   14000514f:	c7 45 84 00 00 00 00 	mov    DWORD PTR [rbp-0x7c],0x0
   140005156:	c7 45 98 00 00 00 00 	mov    DWORD PTR [rbp-0x68],0x0
   14000515d:	85 c0                	test   eax,eax
   14000515f:	7f 17                	jg     140005178 <__gdtoa+0x288>
   140005161:	ba 01 00 00 00       	mov    edx,0x1
   140005166:	c7 45 b0 00 00 00 00 	mov    DWORD PTR [rbp-0x50],0x0
   14000516d:	29 c2                	sub    edx,eax
   14000516f:	89 55 98             	mov    DWORD PTR [rbp-0x68],edx
   140005172:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140005178:	44 01 5d b0          	add    DWORD PTR [rbp-0x50],r11d
   14000517c:	44 89 5d 90          	mov    DWORD PTR [rbp-0x70],r11d
   140005180:	c7 45 8c 00 00 00 00 	mov    DWORD PTR [rbp-0x74],0x0
   140005187:	e9 28 01 00 00       	jmp    1400052b4 <__gdtoa+0x3c4>
   14000518c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140005190:	31 f6                	xor    esi,esi
   140005192:	83 f8 04             	cmp    eax,0x4
   140005195:	75 64                	jne    1400051fb <__gdtoa+0x30b>
   140005197:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
   14000519b:	48 8b 55 e0          	mov    rdx,QWORD PTR [rbp-0x20]
   14000519f:	41 b8 03 00 00 00    	mov    r8d,0x3
   1400051a5:	48 8d 0d 9d 43 00 00 	lea    rcx,[rip+0x439d]        # 140009549 <.rdata+0x9>
   1400051ac:	c7 00 00 80 ff ff    	mov    DWORD PTR [rax],0xffff8000
   1400051b2:	48 81 c4 c8 00 00 00 	add    rsp,0xc8
   1400051b9:	5b                   	pop    rbx
   1400051ba:	5e                   	pop    rsi
   1400051bb:	5f                   	pop    rdi
   1400051bc:	41 5c                	pop    r12
   1400051be:	41 5d                	pop    r13
   1400051c0:	41 5e                	pop    r14
   1400051c2:	41 5f                	pop    r15
   1400051c4:	5d                   	pop    rbp
   1400051c5:	e9 f6 fa ff ff       	jmp    140004cc0 <__nrv_alloc_D2A>
   1400051ca:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   1400051d0:	48 89 d9             	mov    rcx,rbx
   1400051d3:	e8 c8 16 00 00       	call   1400068a0 <__Bfree_D2A>
   1400051d8:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
   1400051dc:	48 8b 55 e0          	mov    rdx,QWORD PTR [rbp-0x20]
   1400051e0:	41 b8 01 00 00 00    	mov    r8d,0x1
   1400051e6:	48 8d 0d 60 43 00 00 	lea    rcx,[rip+0x4360]        # 14000954d <.rdata+0xd>
   1400051ed:	c7 00 01 00 00 00    	mov    DWORD PTR [rax],0x1
   1400051f3:	e8 c8 fa ff ff       	call   140004cc0 <__nrv_alloc_D2A>
   1400051f8:	48 89 c6             	mov    rsi,rax
   1400051fb:	48 89 f0             	mov    rax,rsi
   1400051fe:	48 81 c4 c8 00 00 00 	add    rsp,0xc8
   140005205:	5b                   	pop    rbx
   140005206:	5e                   	pop    rsi
   140005207:	5f                   	pop    rdi
   140005208:	41 5c                	pop    r12
   14000520a:	41 5d                	pop    r13
   14000520c:	41 5e                	pop    r14
   14000520e:	41 5f                	pop    r15
   140005210:	5d                   	pop    rbp
   140005211:	c3                   	ret
   140005212:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140005218:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
   14000521c:	48 8b 55 e0          	mov    rdx,QWORD PTR [rbp-0x20]
   140005220:	41 b8 08 00 00 00    	mov    r8d,0x8
   140005226:	48 8d 0d 13 43 00 00 	lea    rcx,[rip+0x4313]        # 140009540 <.rdata>
   14000522d:	c7 00 00 80 ff ff    	mov    DWORD PTR [rax],0xffff8000
   140005233:	e9 7a ff ff ff       	jmp    1400051b2 <__gdtoa+0x2c2>
   140005238:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   14000523f:	00 
   140005240:	c7 43 14 00 00 00 00 	mov    DWORD PTR [rbx+0x14],0x0
   140005247:	e9 d8 fd ff ff       	jmp    140005024 <__gdtoa+0x134>
   14000524c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140005250:	89 c2                	mov    edx,eax
   140005252:	48 89 d9             	mov    rcx,rbx
   140005255:	e8 b6 12 00 00       	call   140006510 <__rshift_D2A>
   14000525a:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   14000525d:	8b 55 d0             	mov    edx,DWORD PTR [rbp-0x30]
   140005260:	01 c2                	add    edx,eax
   140005262:	41 29 c6             	sub    r14d,eax
   140005265:	89 55 a8             	mov    DWORD PTR [rbp-0x58],edx
   140005268:	e9 d0 fd ff ff       	jmp    14000503d <__gdtoa+0x14d>
   14000526d:	0f 1f 00             	nop    DWORD PTR [rax]
   140005270:	c7 45 84 01 00 00 00 	mov    DWORD PTR [rbp-0x7c],0x1
   140005277:	44 8b 4d b0          	mov    r9d,DWORD PTR [rbp-0x50]
   14000527b:	c7 45 98 00 00 00 00 	mov    DWORD PTR [rbp-0x68],0x0
   140005282:	45 85 c9             	test   r9d,r9d
   140005285:	79 11                	jns    140005298 <__gdtoa+0x3a8>
   140005287:	ba 01 00 00 00       	mov    edx,0x1
   14000528c:	c7 45 b0 00 00 00 00 	mov    DWORD PTR [rbp-0x50],0x0
   140005293:	29 c2                	sub    edx,eax
   140005295:	89 55 98             	mov    DWORD PTR [rbp-0x68],edx
   140005298:	45 85 db             	test   r11d,r11d
   14000529b:	0f 89 d7 fe ff ff    	jns    140005178 <__gdtoa+0x288>
   1400052a1:	44 89 d8             	mov    eax,r11d
   1400052a4:	44 29 5d 98          	sub    DWORD PTR [rbp-0x68],r11d
   1400052a8:	f7 d8                	neg    eax
   1400052aa:	44 89 5d 90          	mov    DWORD PTR [rbp-0x70],r11d
   1400052ae:	45 31 db             	xor    r11d,r11d
   1400052b1:	89 45 8c             	mov    DWORD PTR [rbp-0x74],eax
   1400052b4:	8b 45 d8             	mov    eax,DWORD PTR [rbp-0x28]
   1400052b7:	83 f8 09             	cmp    eax,0x9
   1400052ba:	0f 87 50 02 00 00    	ja     140005510 <__gdtoa+0x620>
   1400052c0:	83 f8 05             	cmp    eax,0x5
   1400052c3:	0f 8f f7 02 00 00    	jg     1400055c0 <__gdtoa+0x6d0>
   1400052c9:	41 81 c0 fd 03 00 00 	add    r8d,0x3fd
   1400052d0:	31 c0                	xor    eax,eax
   1400052d2:	41 81 f8 f7 07 00 00 	cmp    r8d,0x7f7
   1400052d9:	0f 96 c0             	setbe  al
   1400052dc:	89 85 74 ff ff ff    	mov    DWORD PTR [rbp-0x8c],eax
   1400052e2:	8b 45 d8             	mov    eax,DWORD PTR [rbp-0x28]
   1400052e5:	83 f8 04             	cmp    eax,0x4
   1400052e8:	0f 84 46 06 00 00    	je     140005934 <__gdtoa+0xa44>
   1400052ee:	83 f8 05             	cmp    eax,0x5
   1400052f1:	0f 84 58 0a 00 00    	je     140005d4f <__gdtoa+0xe5f>
   1400052f7:	c7 45 88 00 00 00 00 	mov    DWORD PTR [rbp-0x78],0x0
   1400052fe:	83 f8 02             	cmp    eax,0x2
   140005301:	0f 84 34 06 00 00    	je     14000593b <__gdtoa+0xa4b>
   140005307:	83 f8 03             	cmp    eax,0x3
   14000530a:	0f 85 20 02 00 00    	jne    140005530 <__gdtoa+0x640>
   140005310:	8b 4d cc             	mov    ecx,DWORD PTR [rbp-0x34]
   140005313:	8b 45 90             	mov    eax,DWORD PTR [rbp-0x70]
   140005316:	01 c8                	add    eax,ecx
   140005318:	8d 50 01             	lea    edx,[rax+0x1]
   14000531b:	89 85 70 ff ff ff    	mov    DWORD PTR [rbp-0x90],eax
   140005321:	b8 01 00 00 00       	mov    eax,0x1
   140005326:	85 d2                	test   edx,edx
   140005328:	89 55 b8             	mov    DWORD PTR [rbp-0x48],edx
   14000532b:	0f 4f c2             	cmovg  eax,edx
   14000532e:	89 c1                	mov    ecx,eax
   140005330:	4c 89 95 78 ff ff ff 	mov    QWORD PTR [rbp-0x88],r10
   140005337:	44 89 5d 80          	mov    DWORD PTR [rbp-0x80],r11d
   14000533b:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
   14000533e:	e8 3d f9 ff ff       	call   140004c80 <__rv_alloc_D2A>
   140005343:	44 8b 5d 80          	mov    r11d,DWORD PTR [rbp-0x80]
   140005347:	4c 8b 95 78 ff ff ff 	mov    r10,QWORD PTR [rbp-0x88]
   14000534e:	48 89 45 a0          	mov    QWORD PTR [rbp-0x60],rax
   140005352:	41 8b 44 24 0c       	mov    eax,DWORD PTR [r12+0xc]
   140005357:	83 e8 01             	sub    eax,0x1
   14000535a:	89 45 c8             	mov    DWORD PTR [rbp-0x38],eax
   14000535d:	74 25                	je     140005384 <__gdtoa+0x494>
   14000535f:	8b 4d c8             	mov    ecx,DWORD PTR [rbp-0x38]
   140005362:	b8 02 00 00 00       	mov    eax,0x2
   140005367:	85 c9                	test   ecx,ecx
   140005369:	0f 49 c1             	cmovns eax,ecx
   14000536c:	83 e7 08             	and    edi,0x8
   14000536f:	89 45 c8             	mov    DWORD PTR [rbp-0x38],eax
   140005372:	89 c2                	mov    edx,eax
   140005374:	0f 84 d6 03 00 00    	je     140005750 <__gdtoa+0x860>
   14000537a:	b8 03 00 00 00       	mov    eax,0x3
   14000537f:	29 d0                	sub    eax,edx
   140005381:	89 45 c8             	mov    DWORD PTR [rbp-0x38],eax
   140005384:	8b 4d b8             	mov    ecx,DWORD PTR [rbp-0x48]
   140005387:	0f b6 bd 74 ff ff ff 	movzx  edi,BYTE PTR [rbp-0x8c]
   14000538e:	83 f9 0e             	cmp    ecx,0xe
   140005391:	0f 96 c0             	setbe  al
   140005394:	40 20 c7             	and    dil,al
   140005397:	0f 84 b3 03 00 00    	je     140005750 <__gdtoa+0x860>
   14000539d:	8b 45 90             	mov    eax,DWORD PTR [rbp-0x70]
   1400053a0:	0b 45 c8             	or     eax,DWORD PTR [rbp-0x38]
   1400053a3:	0f 85 a7 03 00 00    	jne    140005750 <__gdtoa+0x860>
   1400053a9:	44 8b 45 84          	mov    r8d,DWORD PTR [rbp-0x7c]
   1400053ad:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
   1400053b4:	f2 0f 10 85 68 ff ff 	movsd  xmm0,QWORD PTR [rbp-0x98]
   1400053bb:	ff 
   1400053bc:	45 85 c0             	test   r8d,r8d
   1400053bf:	74 12                	je     1400053d3 <__gdtoa+0x4e3>
   1400053c1:	f2 0f 10 25 b7 41 00 	movsd  xmm4,QWORD PTR [rip+0x41b7]        # 140009580 <.rdata+0x40>
   1400053c8:	00 
   1400053c9:	66 0f 2f e0          	comisd xmm4,xmm0
   1400053cd:	0f 87 6a 0d 00 00    	ja     14000613d <__gdtoa+0x124d>
   1400053d3:	66 0f 10 c8          	movupd xmm1,xmm0
   1400053d7:	8b 4d b8             	mov    ecx,DWORD PTR [rbp-0x48]
   1400053da:	f2 0f 58 c8          	addsd  xmm1,xmm0
   1400053de:	f2 0f 58 0d b2 41 00 	addsd  xmm1,QWORD PTR [rip+0x41b2]        # 140009598 <.rdata+0x58>
   1400053e5:	00 
   1400053e6:	66 48 0f 7e ca       	movq   rdx,xmm1
   1400053eb:	48 89 d0             	mov    rax,rdx
   1400053ee:	89 d2                	mov    edx,edx
   1400053f0:	48 c1 e8 20          	shr    rax,0x20
   1400053f4:	2d 00 00 40 03       	sub    eax,0x3400000
   1400053f9:	48 c1 e0 20          	shl    rax,0x20
   1400053fd:	48 09 c2             	or     rdx,rax
   140005400:	85 c9                	test   ecx,ecx
   140005402:	0f 84 17 03 00 00    	je     14000571f <__gdtoa+0x82f>
   140005408:	8b 45 b8             	mov    eax,DWORD PTR [rbp-0x48]
   14000540b:	45 31 c0             	xor    r8d,r8d
   14000540e:	48 8b 0d 3b 44 00 00 	mov    rcx,QWORD PTR [rip+0x443b]        # 140009850 <.refptr.__tens_D2A>
   140005415:	66 48 0f 6e d2       	movq   xmm2,rdx
   14000541a:	8d 50 ff             	lea    edx,[rax-0x1]
   14000541d:	48 63 d2             	movsxd rdx,edx
   140005420:	f2 0f 10 1c d1       	movsd  xmm3,QWORD PTR [rcx+rdx*8]
   140005425:	8b 55 88             	mov    edx,DWORD PTR [rbp-0x78]
   140005428:	85 d2                	test   edx,edx
   14000542a:	0f 84 2b 09 00 00    	je     140005d5b <__gdtoa+0xe6b>
   140005430:	f2 0f 10 0d 88 41 00 	movsd  xmm1,QWORD PTR [rip+0x4188]        # 1400095c0 <.rdata+0x80>
   140005437:	00 
   140005438:	f2 0f 2c c8          	cvttsd2si ecx,xmm0
   14000543c:	48 8b 7d a0          	mov    rdi,QWORD PTR [rbp-0x60]
   140005440:	f2 0f 5e cb          	divsd  xmm1,xmm3
   140005444:	48 8d 57 01          	lea    rdx,[rdi+0x1]
   140005448:	f2 0f 5c ca          	subsd  xmm1,xmm2
   14000544c:	66 0f ef d2          	pxor   xmm2,xmm2
   140005450:	f2 0f 2a d1          	cvtsi2sd xmm2,ecx
   140005454:	83 c1 30             	add    ecx,0x30
   140005457:	88 0f                	mov    BYTE PTR [rdi],cl
   140005459:	f2 0f 5c c2          	subsd  xmm0,xmm2
   14000545d:	66 0f 2f c8          	comisd xmm1,xmm0
   140005461:	0f 87 d6 0e 00 00    	ja     14000633d <__gdtoa+0x144d>
   140005467:	f2 0f 10 25 11 41 00 	movsd  xmm4,QWORD PTR [rip+0x4111]        # 140009580 <.rdata+0x40>
   14000546e:	00 
   14000546f:	f2 0f 10 1d 11 41 00 	movsd  xmm3,QWORD PTR [rip+0x4111]        # 140009588 <.rdata+0x48>
   140005476:	00 
   140005477:	eb 44                	jmp    1400054bd <__gdtoa+0x5cd>
   140005479:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140005480:	8b 7d fc             	mov    edi,DWORD PTR [rbp-0x4]
   140005483:	8d 4f 01             	lea    ecx,[rdi+0x1]
   140005486:	89 4d fc             	mov    DWORD PTR [rbp-0x4],ecx
   140005489:	39 c1                	cmp    ecx,eax
   14000548b:	0f 8d b7 02 00 00    	jge    140005748 <__gdtoa+0x858>
   140005491:	f2 0f 59 c3          	mulsd  xmm0,xmm3
   140005495:	66 0f ef d2          	pxor   xmm2,xmm2
   140005499:	48 83 c2 01          	add    rdx,0x1
   14000549d:	f2 0f 59 cb          	mulsd  xmm1,xmm3
   1400054a1:	f2 0f 2c c8          	cvttsd2si ecx,xmm0
   1400054a5:	f2 0f 2a d1          	cvtsi2sd xmm2,ecx
   1400054a9:	83 c1 30             	add    ecx,0x30
   1400054ac:	88 4a ff             	mov    BYTE PTR [rdx-0x1],cl
   1400054af:	f2 0f 5c c2          	subsd  xmm0,xmm2
   1400054b3:	66 0f 2f c8          	comisd xmm1,xmm0
   1400054b7:	0f 87 80 0e 00 00    	ja     14000633d <__gdtoa+0x144d>
   1400054bd:	66 0f 10 d4          	movupd xmm2,xmm4
   1400054c1:	f2 0f 5c d0          	subsd  xmm2,xmm0
   1400054c5:	66 0f 2f ca          	comisd xmm1,xmm2
   1400054c9:	76 b5                	jbe    140005480 <__gdtoa+0x590>
   1400054cb:	0f b6 4a ff          	movzx  ecx,BYTE PTR [rdx-0x1]
   1400054cf:	48 8b 75 a0          	mov    rsi,QWORD PTR [rbp-0x60]
   1400054d3:	eb 13                	jmp    1400054e8 <__gdtoa+0x5f8>
   1400054d5:	0f 1f 00             	nop    DWORD PTR [rax]
   1400054d8:	48 39 f0             	cmp    rax,rsi
   1400054db:	0f 84 56 0d 00 00    	je     140006237 <__gdtoa+0x1347>
   1400054e1:	0f b6 48 ff          	movzx  ecx,BYTE PTR [rax-0x1]
   1400054e5:	48 89 c2             	mov    rdx,rax
   1400054e8:	48 8d 42 ff          	lea    rax,[rdx-0x1]
   1400054ec:	80 f9 39             	cmp    cl,0x39
   1400054ef:	74 e7                	je     1400054d8 <__gdtoa+0x5e8>
   1400054f1:	48 89 55 a0          	mov    QWORD PTR [rbp-0x60],rdx
   1400054f5:	83 c1 01             	add    ecx,0x1
   1400054f8:	88 08                	mov    BYTE PTR [rax],cl
   1400054fa:	41 8d 40 01          	lea    eax,[r8+0x1]
   1400054fe:	89 45 cc             	mov    DWORD PTR [rbp-0x34],eax
   140005501:	c7 45 c0 20 00 00 00 	mov    DWORD PTR [rbp-0x40],0x20
   140005508:	e9 b9 01 00 00       	jmp    1400056c6 <__gdtoa+0x7d6>
   14000550d:	0f 1f 00             	nop    DWORD PTR [rax]
   140005510:	41 81 c0 fd 03 00 00 	add    r8d,0x3fd
   140005517:	31 c0                	xor    eax,eax
   140005519:	c7 45 d8 00 00 00 00 	mov    DWORD PTR [rbp-0x28],0x0
   140005520:	41 81 f8 f7 07 00 00 	cmp    r8d,0x7f7
   140005527:	0f 96 c0             	setbe  al
   14000552a:	89 85 74 ff ff ff    	mov    DWORD PTR [rbp-0x8c],eax
   140005530:	66 0f ef c0          	pxor   xmm0,xmm0
   140005534:	4c 89 55 b8          	mov    QWORD PTR [rbp-0x48],r10
   140005538:	f2 41 0f 2a c5       	cvtsi2sd xmm0,r13d
   14000553d:	f2 0f 59 05 33 40 00 	mulsd  xmm0,QWORD PTR [rip+0x4033]        # 140009578 <.rdata+0x38>
   140005544:	00 
   140005545:	44 89 5d cc          	mov    DWORD PTR [rbp-0x34],r11d
   140005549:	f2 0f 2c c8          	cvttsd2si ecx,xmm0
   14000554d:	83 c1 03             	add    ecx,0x3
   140005550:	89 4d fc             	mov    DWORD PTR [rbp-0x4],ecx
   140005553:	e8 28 f7 ff ff       	call   140004c80 <__rv_alloc_D2A>
   140005558:	44 8b 5d cc          	mov    r11d,DWORD PTR [rbp-0x34]
   14000555c:	4c 8b 55 b8          	mov    r10,QWORD PTR [rbp-0x48]
   140005560:	48 89 45 a0          	mov    QWORD PTR [rbp-0x60],rax
   140005564:	41 8b 44 24 0c       	mov    eax,DWORD PTR [r12+0xc]
   140005569:	83 e8 01             	sub    eax,0x1
   14000556c:	89 45 c8             	mov    DWORD PTR [rbp-0x38],eax
   14000556f:	0f 84 9b 00 00 00    	je     140005610 <__gdtoa+0x720>
   140005575:	c7 45 cc 00 00 00 00 	mov    DWORD PTR [rbp-0x34],0x0
   14000557c:	c7 45 88 01 00 00 00 	mov    DWORD PTR [rbp-0x78],0x1
   140005583:	c7 85 70 ff ff ff ff 	mov    DWORD PTR [rbp-0x90],0xffffffff
   14000558a:	ff ff ff 
   14000558d:	c7 45 b8 ff ff ff ff 	mov    DWORD PTR [rbp-0x48],0xffffffff
   140005594:	e9 c6 fd ff ff       	jmp    14000535f <__gdtoa+0x46f>
   140005599:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   1400055a0:	66 0f ef c9          	pxor   xmm1,xmm1
   1400055a4:	f2 41 0f 2a cb       	cvtsi2sd xmm1,r11d
   1400055a9:	66 0f 2e c8          	ucomisd xmm1,xmm0
   1400055ad:	7a 06                	jp     1400055b5 <__gdtoa+0x6c5>
   1400055af:	0f 84 45 fb ff ff    	je     1400050fa <__gdtoa+0x20a>
   1400055b5:	41 83 eb 01          	sub    r11d,0x1
   1400055b9:	e9 3c fb ff ff       	jmp    1400050fa <__gdtoa+0x20a>
   1400055be:	66 90                	xchg   ax,ax
   1400055c0:	c7 85 74 ff ff ff 00 	mov    DWORD PTR [rbp-0x8c],0x0
   1400055c7:	00 00 00 
   1400055ca:	83 e8 04             	sub    eax,0x4
   1400055cd:	89 45 d8             	mov    DWORD PTR [rbp-0x28],eax
   1400055d0:	83 f8 04             	cmp    eax,0x4
   1400055d3:	0f 84 5b 03 00 00    	je     140005934 <__gdtoa+0xa44>
   1400055d9:	83 f8 05             	cmp    eax,0x5
   1400055dc:	0f 84 6d 07 00 00    	je     140005d4f <__gdtoa+0xe5f>
   1400055e2:	c7 45 88 00 00 00 00 	mov    DWORD PTR [rbp-0x78],0x0
   1400055e9:	83 f8 02             	cmp    eax,0x2
   1400055ec:	0f 84 49 03 00 00    	je     14000593b <__gdtoa+0xa4b>
   1400055f2:	c7 45 d8 03 00 00 00 	mov    DWORD PTR [rbp-0x28],0x3
   1400055f9:	e9 12 fd ff ff       	jmp    140005310 <__gdtoa+0x420>
   1400055fe:	66 90                	xchg   ax,ax
   140005600:	c7 45 84 00 00 00 00 	mov    DWORD PTR [rbp-0x7c],0x0
   140005607:	41 83 eb 01          	sub    r11d,0x1
   14000560b:	e9 67 fc ff ff       	jmp    140005277 <__gdtoa+0x387>
   140005610:	8b 45 a8             	mov    eax,DWORD PTR [rbp-0x58]
   140005613:	c7 45 cc 00 00 00 00 	mov    DWORD PTR [rbp-0x34],0x0
   14000561a:	85 c0                	test   eax,eax
   14000561c:	0f 88 9c 0c 00 00    	js     1400062be <__gdtoa+0x13ce>
   140005622:	c7 45 88 01 00 00 00 	mov    DWORD PTR [rbp-0x78],0x1
   140005629:	c7 85 70 ff ff ff ff 	mov    DWORD PTR [rbp-0x90],0xffffffff
   140005630:	ff ff ff 
   140005633:	c7 45 b8 ff ff ff ff 	mov    DWORD PTR [rbp-0x48],0xffffffff
   14000563a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140005640:	8b 45 90             	mov    eax,DWORD PTR [rbp-0x70]
   140005643:	41 39 44 24 14       	cmp    DWORD PTR [r12+0x14],eax
   140005648:	0f 8c 0d 01 00 00    	jl     14000575b <__gdtoa+0x86b>
   14000564e:	48 8b 15 fb 41 00 00 	mov    rdx,QWORD PTR [rip+0x41fb]        # 140009850 <.refptr.__tens_D2A>
   140005655:	44 8b 65 cc          	mov    r12d,DWORD PTR [rbp-0x34]
   140005659:	48 98                	cdqe
   14000565b:	48 89 c6             	mov    rsi,rax
   14000565e:	f2 0f 10 14 c2       	movsd  xmm2,QWORD PTR [rdx+rax*8]
   140005663:	45 85 e4             	test   r12d,r12d
   140005666:	0f 89 b0 07 00 00    	jns    140005e1c <__gdtoa+0xf2c>
   14000566c:	8b 45 b8             	mov    eax,DWORD PTR [rbp-0x48]
   14000566f:	85 c0                	test   eax,eax
   140005671:	0f 8f a5 07 00 00    	jg     140005e1c <__gdtoa+0xf2c>
   140005677:	0f 85 de 02 00 00    	jne    14000595b <__gdtoa+0xa6b>
   14000567d:	f2 0f 59 15 1b 3f 00 	mulsd  xmm2,QWORD PTR [rip+0x3f1b]        # 1400095a0 <.rdata+0x60>
   140005684:	00 
   140005685:	66 0f 2f 95 68 ff ff 	comisd xmm2,QWORD PTR [rbp-0x98]
   14000568c:	ff 
   14000568d:	0f 83 c8 02 00 00    	jae    14000595b <__gdtoa+0xa6b>
   140005693:	83 c6 02             	add    esi,0x2
   140005696:	45 31 c9             	xor    r9d,r9d
   140005699:	31 ff                	xor    edi,edi
   14000569b:	89 75 cc             	mov    DWORD PTR [rbp-0x34],esi
   14000569e:	48 8b 75 a0          	mov    rsi,QWORD PTR [rbp-0x60]
   1400056a2:	48 83 45 a0 01       	add    QWORD PTR [rbp-0x60],0x1
   1400056a7:	c6 06 31             	mov    BYTE PTR [rsi],0x31
   1400056aa:	c7 45 c0 20 00 00 00 	mov    DWORD PTR [rbp-0x40],0x20
   1400056b1:	4c 89 c9             	mov    rcx,r9
   1400056b4:	e8 e7 11 00 00       	call   1400068a0 <__Bfree_D2A>
   1400056b9:	48 85 ff             	test   rdi,rdi
   1400056bc:	74 08                	je     1400056c6 <__gdtoa+0x7d6>
   1400056be:	48 89 f9             	mov    rcx,rdi
   1400056c1:	e8 da 11 00 00       	call   1400068a0 <__Bfree_D2A>
   1400056c6:	48 89 d9             	mov    rcx,rbx
   1400056c9:	e8 d2 11 00 00       	call   1400068a0 <__Bfree_D2A>
   1400056ce:	8b 5d cc             	mov    ebx,DWORD PTR [rbp-0x34]
   1400056d1:	48 8b 45 a0          	mov    rax,QWORD PTR [rbp-0x60]
   1400056d5:	48 8b 7d e8          	mov    rdi,QWORD PTR [rbp-0x18]
   1400056d9:	c6 00 00             	mov    BYTE PTR [rax],0x0
   1400056dc:	89 1f                	mov    DWORD PTR [rdi],ebx
   1400056de:	48 8b 5d e0          	mov    rbx,QWORD PTR [rbp-0x20]
   1400056e2:	48 85 db             	test   rbx,rbx
   1400056e5:	74 03                	je     1400056ea <__gdtoa+0x7fa>
   1400056e7:	48 89 03             	mov    QWORD PTR [rbx],rax
   1400056ea:	8b 45 c0             	mov    eax,DWORD PTR [rbp-0x40]
   1400056ed:	41 09 07             	or     DWORD PTR [r15],eax
   1400056f0:	e9 06 fb ff ff       	jmp    1400051fb <__gdtoa+0x30b>
   1400056f5:	66 0f 10 c8          	movupd xmm1,xmm0
   1400056f9:	f2 0f 58 c8          	addsd  xmm1,xmm0
   1400056fd:	f2 0f 58 0d 93 3e 00 	addsd  xmm1,QWORD PTR [rip+0x3e93]        # 140009598 <.rdata+0x58>
   140005704:	00 
   140005705:	66 48 0f 7e ca       	movq   rdx,xmm1
   14000570a:	48 89 d0             	mov    rax,rdx
   14000570d:	89 d2                	mov    edx,edx
   14000570f:	48 c1 e8 20          	shr    rax,0x20
   140005713:	2d 00 00 40 03       	sub    eax,0x3400000
   140005718:	48 c1 e0 20          	shl    rax,0x20
   14000571c:	48 09 c2             	or     rdx,rax
   14000571f:	f2 0f 5c 05 79 3e 00 	subsd  xmm0,QWORD PTR [rip+0x3e79]        # 1400095a0 <.rdata+0x60>
   140005726:	00 
   140005727:	66 48 0f 6e ca       	movq   xmm1,rdx
   14000572c:	66 0f 2f c1          	comisd xmm0,xmm1
   140005730:	0f 87 a6 0a 00 00    	ja     1400061dc <__gdtoa+0x12ec>
   140005736:	66 0f 57 0d 72 3e 00 	xorpd  xmm1,XMMWORD PTR [rip+0x3e72]        # 1400095b0 <.rdata+0x70>
   14000573d:	00 
   14000573e:	66 0f 2f c8          	comisd xmm1,xmm0
   140005742:	0f 87 13 02 00 00    	ja     14000595b <__gdtoa+0xa6b>
   140005748:	c7 45 c8 00 00 00 00 	mov    DWORD PTR [rbp-0x38],0x0
   14000574f:	90                   	nop
   140005750:	8b 45 a8             	mov    eax,DWORD PTR [rbp-0x58]
   140005753:	85 c0                	test   eax,eax
   140005755:	0f 89 e5 fe ff ff    	jns    140005640 <__gdtoa+0x750>
   14000575b:	8b 7d 88             	mov    edi,DWORD PTR [rbp-0x78]
   14000575e:	85 ff                	test   edi,edi
   140005760:	0f 84 1a 02 00 00    	je     140005980 <__gdtoa+0xa90>
   140005766:	8b 7d a8             	mov    edi,DWORD PTR [rbp-0x58]
   140005769:	45 29 f5             	sub    r13d,r14d
   14000576c:	41 8b 54 24 04       	mov    edx,DWORD PTR [r12+0x4]
   140005771:	41 8d 45 01          	lea    eax,[r13+0x1]
   140005775:	89 f9                	mov    ecx,edi
   140005777:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
   14000577a:	44 29 e9             	sub    ecx,r13d
   14000577d:	39 d1                	cmp    ecx,edx
   14000577f:	0f 8d 8b 05 00 00    	jge    140005d10 <__gdtoa+0xe20>
   140005785:	8b 4d d8             	mov    ecx,DWORD PTR [rbp-0x28]
   140005788:	8d 41 fd             	lea    eax,[rcx-0x3]
   14000578b:	83 e0 fd             	and    eax,0xfffffffd
   14000578e:	0f 84 86 05 00 00    	je     140005d1a <__gdtoa+0xe2a>
   140005794:	89 f8                	mov    eax,edi
   140005796:	8b 7d b8             	mov    edi,DWORD PTR [rbp-0x48]
   140005799:	29 d0                	sub    eax,edx
   14000579b:	83 c0 01             	add    eax,0x1
   14000579e:	83 f9 01             	cmp    ecx,0x1
   1400057a1:	0f 9f c1             	setg   cl
   1400057a4:	85 ff                	test   edi,edi
   1400057a6:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
   1400057a9:	0f 9f c2             	setg   dl
   1400057ac:	84 d1                	test   cl,dl
   1400057ae:	74 08                	je     1400057b8 <__gdtoa+0x8c8>
   1400057b0:	39 f8                	cmp    eax,edi
   1400057b2:	0f 8f 61 0c 00 00    	jg     140006419 <__gdtoa+0x1529>
   1400057b8:	8b 7d 98             	mov    edi,DWORD PTR [rbp-0x68]
   1400057bb:	01 45 b0             	add    DWORD PTR [rbp-0x50],eax
   1400057be:	44 8b 45 8c          	mov    r8d,DWORD PTR [rbp-0x74]
   1400057c2:	01 f8                	add    eax,edi
   1400057c4:	41 89 fd             	mov    r13d,edi
   1400057c7:	89 45 98             	mov    DWORD PTR [rbp-0x68],eax
   1400057ca:	b9 01 00 00 00       	mov    ecx,0x1
   1400057cf:	44 89 45 80          	mov    DWORD PTR [rbp-0x80],r8d
   1400057d3:	44 89 5d a8          	mov    DWORD PTR [rbp-0x58],r11d
   1400057d7:	e8 f4 11 00 00       	call   1400069d0 <__i2b_D2A>
   1400057dc:	c7 45 88 01 00 00 00 	mov    DWORD PTR [rbp-0x78],0x1
   1400057e3:	44 8b 5d a8          	mov    r11d,DWORD PTR [rbp-0x58]
   1400057e7:	44 8b 45 80          	mov    r8d,DWORD PTR [rbp-0x80]
   1400057eb:	48 89 c7             	mov    rdi,rax
   1400057ee:	45 85 ed             	test   r13d,r13d
   1400057f1:	7e 1e                	jle    140005811 <__gdtoa+0x921>
   1400057f3:	8b 4d b0             	mov    ecx,DWORD PTR [rbp-0x50]
   1400057f6:	85 c9                	test   ecx,ecx
   1400057f8:	7e 17                	jle    140005811 <__gdtoa+0x921>
   1400057fa:	41 39 cd             	cmp    r13d,ecx
   1400057fd:	89 c8                	mov    eax,ecx
   1400057ff:	41 0f 4e c5          	cmovle eax,r13d
   140005803:	29 45 98             	sub    DWORD PTR [rbp-0x68],eax
   140005806:	29 c1                	sub    ecx,eax
   140005808:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
   14000580b:	41 29 c5             	sub    r13d,eax
   14000580e:	89 4d b0             	mov    DWORD PTR [rbp-0x50],ecx
   140005811:	44 8b 55 8c          	mov    r10d,DWORD PTR [rbp-0x74]
   140005815:	45 85 d2             	test   r10d,r10d
   140005818:	74 28                	je     140005842 <__gdtoa+0x952>
   14000581a:	44 8b 4d 88          	mov    r9d,DWORD PTR [rbp-0x78]
   14000581e:	45 85 c9             	test   r9d,r9d
   140005821:	74 09                	je     14000582c <__gdtoa+0x93c>
   140005823:	45 85 c0             	test   r8d,r8d
   140005826:	0f 85 83 07 00 00    	jne    140005faf <__gdtoa+0x10bf>
   14000582c:	8b 55 8c             	mov    edx,DWORD PTR [rbp-0x74]
   14000582f:	48 89 d9             	mov    rcx,rbx
   140005832:	44 89 5d a8          	mov    DWORD PTR [rbp-0x58],r11d
   140005836:	e8 c5 13 00 00       	call   140006c00 <__pow5mult_D2A>
   14000583b:	44 8b 5d a8          	mov    r11d,DWORD PTR [rbp-0x58]
   14000583f:	48 89 c3             	mov    rbx,rax
   140005842:	b9 01 00 00 00       	mov    ecx,0x1
   140005847:	44 89 5d a8          	mov    DWORD PTR [rbp-0x58],r11d
   14000584b:	e8 80 11 00 00       	call   1400069d0 <__i2b_D2A>
   140005850:	44 8b 5d a8          	mov    r11d,DWORD PTR [rbp-0x58]
   140005854:	49 89 c1             	mov    r9,rax
   140005857:	45 85 db             	test   r11d,r11d
   14000585a:	0f 85 48 04 00 00    	jne    140005ca8 <__gdtoa+0xdb8>
   140005860:	83 7d d8 01          	cmp    DWORD PTR [rbp-0x28],0x1
   140005864:	0f 8e 76 04 00 00    	jle    140005ce0 <__gdtoa+0xdf0>
   14000586a:	41 bc 1f 00 00 00    	mov    r12d,0x1f
   140005870:	8b 45 b0             	mov    eax,DWORD PTR [rbp-0x50]
   140005873:	41 29 c4             	sub    r12d,eax
   140005876:	8b 45 98             	mov    eax,DWORD PTR [rbp-0x68]
   140005879:	41 83 ec 04          	sub    r12d,0x4
   14000587d:	41 83 e4 1f          	and    r12d,0x1f
   140005881:	44 01 e0             	add    eax,r12d
   140005884:	44 89 65 fc          	mov    DWORD PTR [rbp-0x4],r12d
   140005888:	44 89 e2             	mov    edx,r12d
   14000588b:	85 c0                	test   eax,eax
   14000588d:	7e 20                	jle    1400058af <__gdtoa+0x9bf>
   14000588f:	89 c2                	mov    edx,eax
   140005891:	48 89 d9             	mov    rcx,rbx
   140005894:	4c 89 4d a8          	mov    QWORD PTR [rbp-0x58],r9
   140005898:	44 89 5d d0          	mov    DWORD PTR [rbp-0x30],r11d
   14000589c:	e8 ef 14 00 00       	call   140006d90 <__lshift_D2A>
   1400058a1:	8b 55 fc             	mov    edx,DWORD PTR [rbp-0x4]
   1400058a4:	4c 8b 4d a8          	mov    r9,QWORD PTR [rbp-0x58]
   1400058a8:	44 8b 5d d0          	mov    r11d,DWORD PTR [rbp-0x30]
   1400058ac:	48 89 c3             	mov    rbx,rax
   1400058af:	8b 45 b0             	mov    eax,DWORD PTR [rbp-0x50]
   1400058b2:	01 d0                	add    eax,edx
   1400058b4:	89 c2                	mov    edx,eax
   1400058b6:	85 c0                	test   eax,eax
   1400058b8:	7e 13                	jle    1400058cd <__gdtoa+0x9dd>
   1400058ba:	4c 89 c9             	mov    rcx,r9
   1400058bd:	44 89 5d d0          	mov    DWORD PTR [rbp-0x30],r11d
   1400058c1:	e8 ca 14 00 00       	call   140006d90 <__lshift_D2A>
   1400058c6:	44 8b 5d d0          	mov    r11d,DWORD PTR [rbp-0x30]
   1400058ca:	49 89 c1             	mov    r9,rax
   1400058cd:	8b 4d 84             	mov    ecx,DWORD PTR [rbp-0x7c]
   1400058d0:	83 7d d8 02          	cmp    DWORD PTR [rbp-0x28],0x2
   1400058d4:	41 0f 9f c6          	setg   r14b
   1400058d8:	85 c9                	test   ecx,ecx
   1400058da:	0f 85 a0 02 00 00    	jne    140005b80 <__gdtoa+0xc90>
   1400058e0:	8b 45 b8             	mov    eax,DWORD PTR [rbp-0x48]
   1400058e3:	85 c0                	test   eax,eax
   1400058e5:	0f 8f a5 00 00 00    	jg     140005990 <__gdtoa+0xaa0>
   1400058eb:	45 84 f6             	test   r14b,r14b
   1400058ee:	0f 84 9c 00 00 00    	je     140005990 <__gdtoa+0xaa0>
   1400058f4:	8b 45 b8             	mov    eax,DWORD PTR [rbp-0x48]
   1400058f7:	85 c0                	test   eax,eax
   1400058f9:	75 65                	jne    140005960 <__gdtoa+0xa70>
   1400058fb:	4c 89 c9             	mov    rcx,r9
   1400058fe:	45 31 c0             	xor    r8d,r8d
   140005901:	ba 05 00 00 00       	mov    edx,0x5
   140005906:	e8 05 10 00 00       	call   140006910 <__multadd_D2A>
   14000590b:	48 89 d9             	mov    rcx,rbx
   14000590e:	48 89 c2             	mov    rdx,rax
   140005911:	48 89 45 d8          	mov    QWORD PTR [rbp-0x28],rax
   140005915:	e8 a6 15 00 00       	call   140006ec0 <__cmp_D2A>
   14000591a:	4c 8b 4d d8          	mov    r9,QWORD PTR [rbp-0x28]
   14000591e:	85 c0                	test   eax,eax
   140005920:	7e 3e                	jle    140005960 <__gdtoa+0xa70>
   140005922:	8b 45 90             	mov    eax,DWORD PTR [rbp-0x70]
   140005925:	48 8b 75 a0          	mov    rsi,QWORD PTR [rbp-0x60]
   140005929:	83 c0 02             	add    eax,0x2
   14000592c:	89 45 cc             	mov    DWORD PTR [rbp-0x34],eax
   14000592f:	e9 6e fd ff ff       	jmp    1400056a2 <__gdtoa+0x7b2>
   140005934:	c7 45 88 01 00 00 00 	mov    DWORD PTR [rbp-0x78],0x1
   14000593b:	8b 45 cc             	mov    eax,DWORD PTR [rbp-0x34]
   14000593e:	b9 01 00 00 00       	mov    ecx,0x1
   140005943:	85 c0                	test   eax,eax
   140005945:	0f 4f c8             	cmovg  ecx,eax
   140005948:	89 8d 70 ff ff ff    	mov    DWORD PTR [rbp-0x90],ecx
   14000594e:	89 c8                	mov    eax,ecx
   140005950:	89 4d b8             	mov    DWORD PTR [rbp-0x48],ecx
   140005953:	89 4d cc             	mov    DWORD PTR [rbp-0x34],ecx
   140005956:	e9 d5 f9 ff ff       	jmp    140005330 <__gdtoa+0x440>
   14000595b:	45 31 c9             	xor    r9d,r9d
   14000595e:	31 ff                	xor    edi,edi
   140005960:	8b 45 cc             	mov    eax,DWORD PTR [rbp-0x34]
   140005963:	48 8b 75 a0          	mov    rsi,QWORD PTR [rbp-0x60]
   140005967:	c7 45 c0 10 00 00 00 	mov    DWORD PTR [rbp-0x40],0x10
   14000596e:	f7 d8                	neg    eax
   140005970:	89 45 cc             	mov    DWORD PTR [rbp-0x34],eax
   140005973:	e9 39 fd ff ff       	jmp    1400056b1 <__gdtoa+0x7c1>
   140005978:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   14000597f:	00 
   140005980:	44 8b 45 8c          	mov    r8d,DWORD PTR [rbp-0x74]
   140005984:	44 8b 6d 98          	mov    r13d,DWORD PTR [rbp-0x68]
   140005988:	31 ff                	xor    edi,edi
   14000598a:	e9 5f fe ff ff       	jmp    1400057ee <__gdtoa+0x8fe>
   14000598f:	90                   	nop
   140005990:	8b 45 90             	mov    eax,DWORD PTR [rbp-0x70]
   140005993:	83 c0 01             	add    eax,0x1
   140005996:	89 45 cc             	mov    DWORD PTR [rbp-0x34],eax
   140005999:	8b 45 88             	mov    eax,DWORD PTR [rbp-0x78]
   14000599c:	85 c0                	test   eax,eax
   14000599e:	0f 84 5c 02 00 00    	je     140005c00 <__gdtoa+0xd10>
   1400059a4:	43 8d 14 2c          	lea    edx,[r12+r13*1]
   1400059a8:	85 d2                	test   edx,edx
   1400059aa:	7e 1b                	jle    1400059c7 <__gdtoa+0xad7>
   1400059ac:	48 89 f9             	mov    rcx,rdi
   1400059af:	4c 89 4d b0          	mov    QWORD PTR [rbp-0x50],r9
   1400059b3:	44 89 5d d0          	mov    DWORD PTR [rbp-0x30],r11d
   1400059b7:	e8 d4 13 00 00       	call   140006d90 <__lshift_D2A>
   1400059bc:	4c 8b 4d b0          	mov    r9,QWORD PTR [rbp-0x50]
   1400059c0:	44 8b 5d d0          	mov    r11d,DWORD PTR [rbp-0x30]
   1400059c4:	48 89 c7             	mov    rdi,rax
   1400059c7:	49 89 fd             	mov    r13,rdi
   1400059ca:	45 85 db             	test   r11d,r11d
   1400059cd:	0f 85 c8 07 00 00    	jne    14000619b <__gdtoa+0x12ab>
   1400059d3:	4c 8b 55 a0          	mov    r10,QWORD PTR [rbp-0x60]
   1400059d7:	4c 89 7d 90          	mov    QWORD PTR [rbp-0x70],r15
   1400059db:	b8 01 00 00 00       	mov    eax,0x1
   1400059e0:	4c 89 4d d0          	mov    QWORD PTR [rbp-0x30],r9
   1400059e4:	48 89 75 b0          	mov    QWORD PTR [rbp-0x50],rsi
   1400059e8:	4d 89 d7             	mov    r15,r10
   1400059eb:	e9 9a 00 00 00       	jmp    140005a8a <__gdtoa+0xb9a>
   1400059f0:	48 89 d1             	mov    rcx,rdx
   1400059f3:	e8 a8 0e 00 00       	call   1400068a0 <__Bfree_D2A>
   1400059f8:	ba 01 00 00 00       	mov    edx,0x1
   1400059fd:	45 85 e4             	test   r12d,r12d
   140005a00:	0f 88 62 06 00 00    	js     140006068 <__gdtoa+0x1178>
   140005a06:	44 0b 65 d8          	or     r12d,DWORD PTR [rbp-0x28]
   140005a0a:	75 0d                	jne    140005a19 <__gdtoa+0xb29>
   140005a0c:	48 8b 45 b0          	mov    rax,QWORD PTR [rbp-0x50]
   140005a10:	f6 00 01             	test   BYTE PTR [rax],0x1
   140005a13:	0f 84 4f 06 00 00    	je     140006068 <__gdtoa+0x1178>
   140005a19:	4d 8d 67 01          	lea    r12,[r15+0x1]
   140005a1d:	4d 89 e6             	mov    r14,r12
   140005a20:	85 d2                	test   edx,edx
   140005a22:	7e 0a                	jle    140005a2e <__gdtoa+0xb3e>
   140005a24:	83 7d c8 02          	cmp    DWORD PTR [rbp-0x38],0x2
   140005a28:	0f 85 c3 07 00 00    	jne    1400061f1 <__gdtoa+0x1301>
   140005a2e:	41 88 74 24 ff       	mov    BYTE PTR [r12-0x1],sil
   140005a33:	8b 45 b8             	mov    eax,DWORD PTR [rbp-0x48]
   140005a36:	39 45 fc             	cmp    DWORD PTR [rbp-0x4],eax
   140005a39:	0f 84 e2 07 00 00    	je     140006221 <__gdtoa+0x1331>
   140005a3f:	48 89 d9             	mov    rcx,rbx
   140005a42:	45 31 c0             	xor    r8d,r8d
   140005a45:	ba 0a 00 00 00       	mov    edx,0xa
   140005a4a:	e8 c1 0e 00 00       	call   140006910 <__multadd_D2A>
   140005a4f:	45 31 c0             	xor    r8d,r8d
   140005a52:	ba 0a 00 00 00       	mov    edx,0xa
   140005a57:	48 89 f9             	mov    rcx,rdi
   140005a5a:	48 89 c3             	mov    rbx,rax
   140005a5d:	4c 39 ef             	cmp    rdi,r13
   140005a60:	0f 84 0a 01 00 00    	je     140005b70 <__gdtoa+0xc80>
   140005a66:	e8 a5 0e 00 00       	call   140006910 <__multadd_D2A>
   140005a6b:	4c 89 e9             	mov    rcx,r13
   140005a6e:	45 31 c0             	xor    r8d,r8d
   140005a71:	ba 0a 00 00 00       	mov    edx,0xa
   140005a76:	48 89 c7             	mov    rdi,rax
   140005a79:	e8 92 0e 00 00       	call   140006910 <__multadd_D2A>
   140005a7e:	49 89 c5             	mov    r13,rax
   140005a81:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   140005a84:	4d 89 e7             	mov    r15,r12
   140005a87:	83 c0 01             	add    eax,0x1
   140005a8a:	48 8b 55 d0          	mov    rdx,QWORD PTR [rbp-0x30]
   140005a8e:	48 89 d9             	mov    rcx,rbx
   140005a91:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
   140005a94:	e8 d7 f2 ff ff       	call   140004d70 <__quorem_D2A>
   140005a99:	48 89 fa             	mov    rdx,rdi
   140005a9c:	48 89 d9             	mov    rcx,rbx
   140005a9f:	41 89 c6             	mov    r14d,eax
   140005aa2:	8d 70 30             	lea    esi,[rax+0x30]
   140005aa5:	e8 16 14 00 00       	call   140006ec0 <__cmp_D2A>
   140005aaa:	48 8b 4d d0          	mov    rcx,QWORD PTR [rbp-0x30]
   140005aae:	4c 89 ea             	mov    rdx,r13
   140005ab1:	41 89 c4             	mov    r12d,eax
   140005ab4:	e8 57 14 00 00       	call   140006f10 <__diff_D2A>
   140005ab9:	48 89 c2             	mov    rdx,rax
   140005abc:	8b 40 10             	mov    eax,DWORD PTR [rax+0x10]
   140005abf:	85 c0                	test   eax,eax
   140005ac1:	0f 85 29 ff ff ff    	jne    1400059f0 <__gdtoa+0xb00>
   140005ac7:	48 89 d9             	mov    rcx,rbx
   140005aca:	48 89 55 98          	mov    QWORD PTR [rbp-0x68],rdx
   140005ace:	e8 ed 13 00 00       	call   140006ec0 <__cmp_D2A>
   140005ad3:	48 8b 4d 98          	mov    rcx,QWORD PTR [rbp-0x68]
   140005ad7:	89 45 a8             	mov    DWORD PTR [rbp-0x58],eax
   140005ada:	e8 c1 0d 00 00       	call   1400068a0 <__Bfree_D2A>
   140005adf:	8b 55 a8             	mov    edx,DWORD PTR [rbp-0x58]
   140005ae2:	8b 45 d8             	mov    eax,DWORD PTR [rbp-0x28]
   140005ae5:	09 c2                	or     edx,eax
   140005ae7:	0f 85 01 04 00 00    	jne    140005eee <__gdtoa+0xffe>
   140005aed:	48 8b 45 b0          	mov    rax,QWORD PTR [rbp-0x50]
   140005af1:	8b 00                	mov    eax,DWORD PTR [rax]
   140005af3:	89 45 a8             	mov    DWORD PTR [rbp-0x58],eax
   140005af6:	83 e0 01             	and    eax,0x1
   140005af9:	0b 45 c8             	or     eax,DWORD PTR [rbp-0x38]
   140005afc:	0f 85 fb fe ff ff    	jne    1400059fd <__gdtoa+0xb0d>
   140005b02:	4d 89 fa             	mov    r10,r15
   140005b05:	4c 8b 4d d0          	mov    r9,QWORD PTR [rbp-0x30]
   140005b09:	4c 8b 7d 90          	mov    r15,QWORD PTR [rbp-0x70]
   140005b0d:	41 89 f0             	mov    r8d,esi
   140005b10:	83 fe 39             	cmp    esi,0x39
   140005b13:	0f 84 78 09 00 00    	je     140006491 <__gdtoa+0x15a1>
   140005b19:	45 85 e4             	test   r12d,r12d
   140005b1c:	0f 8e bc 09 00 00    	jle    1400064de <__gdtoa+0x15ee>
   140005b22:	c7 45 c0 20 00 00 00 	mov    DWORD PTR [rbp-0x40],0x20
   140005b29:	45 8d 46 31          	lea    r8d,[r14+0x31]
   140005b2d:	45 88 02             	mov    BYTE PTR [r10],r8b
   140005b30:	48 89 fe             	mov    rsi,rdi
   140005b33:	4d 8d 62 01          	lea    r12,[r10+0x1]
   140005b37:	4c 89 ef             	mov    rdi,r13
   140005b3a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140005b40:	4c 89 c9             	mov    rcx,r9
   140005b43:	e8 58 0d 00 00       	call   1400068a0 <__Bfree_D2A>
   140005b48:	48 85 ff             	test   rdi,rdi
   140005b4b:	0f 84 db 03 00 00    	je     140005f2c <__gdtoa+0x103c>
   140005b51:	48 85 f6             	test   rsi,rsi
   140005b54:	74 0d                	je     140005b63 <__gdtoa+0xc73>
   140005b56:	48 39 fe             	cmp    rsi,rdi
   140005b59:	74 08                	je     140005b63 <__gdtoa+0xc73>
   140005b5b:	48 89 f1             	mov    rcx,rsi
   140005b5e:	e8 3d 0d 00 00       	call   1400068a0 <__Bfree_D2A>
   140005b63:	48 8b 75 a0          	mov    rsi,QWORD PTR [rbp-0x60]
   140005b67:	4c 89 65 a0          	mov    QWORD PTR [rbp-0x60],r12
   140005b6b:	e9 4e fb ff ff       	jmp    1400056be <__gdtoa+0x7ce>
   140005b70:	e8 9b 0d 00 00       	call   140006910 <__multadd_D2A>
   140005b75:	48 89 c7             	mov    rdi,rax
   140005b78:	49 89 c5             	mov    r13,rax
   140005b7b:	e9 01 ff ff ff       	jmp    140005a81 <__gdtoa+0xb91>
   140005b80:	4c 89 ca             	mov    rdx,r9
   140005b83:	48 89 d9             	mov    rcx,rbx
   140005b86:	44 89 5d b0          	mov    DWORD PTR [rbp-0x50],r11d
   140005b8a:	4c 89 4d d0          	mov    QWORD PTR [rbp-0x30],r9
   140005b8e:	e8 2d 13 00 00       	call   140006ec0 <__cmp_D2A>
   140005b93:	4c 8b 4d d0          	mov    r9,QWORD PTR [rbp-0x30]
   140005b97:	44 8b 5d b0          	mov    r11d,DWORD PTR [rbp-0x50]
   140005b9b:	85 c0                	test   eax,eax
   140005b9d:	0f 89 3d fd ff ff    	jns    1400058e0 <__gdtoa+0x9f0>
   140005ba3:	8b 45 90             	mov    eax,DWORD PTR [rbp-0x70]
   140005ba6:	45 31 c0             	xor    r8d,r8d
   140005ba9:	ba 0a 00 00 00       	mov    edx,0xa
   140005bae:	48 89 d9             	mov    rcx,rbx
   140005bb1:	4c 89 4d b8          	mov    QWORD PTR [rbp-0x48],r9
   140005bb5:	83 e8 01             	sub    eax,0x1
   140005bb8:	44 89 5d d0          	mov    DWORD PTR [rbp-0x30],r11d
   140005bbc:	89 45 b0             	mov    DWORD PTR [rbp-0x50],eax
   140005bbf:	e8 4c 0d 00 00       	call   140006910 <__multadd_D2A>
   140005bc4:	8b 55 88             	mov    edx,DWORD PTR [rbp-0x78]
   140005bc7:	4c 8b 4d b8          	mov    r9,QWORD PTR [rbp-0x48]
   140005bcb:	48 89 c3             	mov    rbx,rax
   140005bce:	8b 85 70 ff ff ff    	mov    eax,DWORD PTR [rbp-0x90]
   140005bd4:	85 c0                	test   eax,eax
   140005bd6:	0f 9e c0             	setle  al
   140005bd9:	41 21 c6             	and    r14d,eax
   140005bdc:	85 d2                	test   edx,edx
   140005bde:	0f 85 c8 07 00 00    	jne    1400063ac <__gdtoa+0x14bc>
   140005be4:	45 84 f6             	test   r14b,r14b
   140005be7:	0f 85 e7 06 00 00    	jne    1400062d4 <__gdtoa+0x13e4>
   140005bed:	8b 45 90             	mov    eax,DWORD PTR [rbp-0x70]
   140005bf0:	89 45 cc             	mov    DWORD PTR [rbp-0x34],eax
   140005bf3:	8b 85 70 ff ff ff    	mov    eax,DWORD PTR [rbp-0x90]
   140005bf9:	89 45 b8             	mov    DWORD PTR [rbp-0x48],eax
   140005bfc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140005c00:	4c 8b 75 a0          	mov    r14,QWORD PTR [rbp-0x60]
   140005c04:	44 8b 65 b8          	mov    r12d,DWORD PTR [rbp-0x48]
   140005c08:	b8 01 00 00 00       	mov    eax,0x1
   140005c0d:	4c 89 ce             	mov    rsi,r9
   140005c10:	eb 1f                	jmp    140005c31 <__gdtoa+0xd41>
   140005c12:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140005c18:	48 89 d9             	mov    rcx,rbx
   140005c1b:	45 31 c0             	xor    r8d,r8d
   140005c1e:	ba 0a 00 00 00       	mov    edx,0xa
   140005c23:	e8 e8 0c 00 00       	call   140006910 <__multadd_D2A>
   140005c28:	48 89 c3             	mov    rbx,rax
   140005c2b:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   140005c2e:	83 c0 01             	add    eax,0x1
   140005c31:	48 89 f2             	mov    rdx,rsi
   140005c34:	48 89 d9             	mov    rcx,rbx
   140005c37:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
   140005c3a:	49 83 c6 01          	add    r14,0x1
   140005c3e:	e8 2d f1 ff ff       	call   140004d70 <__quorem_D2A>
   140005c43:	44 8d 40 30          	lea    r8d,[rax+0x30]
   140005c47:	45 88 46 ff          	mov    BYTE PTR [r14-0x1],r8b
   140005c4b:	44 39 65 fc          	cmp    DWORD PTR [rbp-0x4],r12d
   140005c4f:	7c c7                	jl     140005c18 <__gdtoa+0xd28>
   140005c51:	49 89 f1             	mov    r9,rsi
   140005c54:	31 f6                	xor    esi,esi
   140005c56:	8b 4d c8             	mov    ecx,DWORD PTR [rbp-0x38]
   140005c59:	85 c9                	test   ecx,ecx
   140005c5b:	0f 84 a9 03 00 00    	je     14000600a <__gdtoa+0x111a>
   140005c61:	8b 43 14             	mov    eax,DWORD PTR [rbx+0x14]
   140005c64:	83 f9 02             	cmp    ecx,0x2
   140005c67:	0f 84 dd 03 00 00    	je     14000604a <__gdtoa+0x115a>
   140005c6d:	83 f8 01             	cmp    eax,0x1
   140005c70:	0f 8f 80 02 00 00    	jg     140005ef6 <__gdtoa+0x1006>
   140005c76:	8b 43 18             	mov    eax,DWORD PTR [rbx+0x18]
   140005c79:	85 c0                	test   eax,eax
   140005c7b:	0f 85 75 02 00 00    	jne    140005ef6 <__gdtoa+0x1006>
   140005c81:	85 c0                	test   eax,eax
   140005c83:	0f 95 c0             	setne  al
   140005c86:	0f b6 c0             	movzx  eax,al
   140005c89:	c1 e0 04             	shl    eax,0x4
   140005c8c:	89 45 c0             	mov    DWORD PTR [rbp-0x40],eax
   140005c8f:	90                   	nop
   140005c90:	4d 89 f4             	mov    r12,r14
   140005c93:	49 83 ee 01          	sub    r14,0x1
   140005c97:	41 80 3e 30          	cmp    BYTE PTR [r14],0x30
   140005c9b:	74 f3                	je     140005c90 <__gdtoa+0xda0>
   140005c9d:	e9 9e fe ff ff       	jmp    140005b40 <__gdtoa+0xc50>
   140005ca2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140005ca8:	44 89 da             	mov    edx,r11d
   140005cab:	48 89 c1             	mov    rcx,rax
   140005cae:	e8 4d 0f 00 00       	call   140006c00 <__pow5mult_D2A>
   140005cb3:	83 7d d8 01          	cmp    DWORD PTR [rbp-0x28],0x1
   140005cb7:	49 89 c1             	mov    r9,rax
   140005cba:	0f 8e a2 02 00 00    	jle    140005f62 <__gdtoa+0x1072>
   140005cc0:	45 31 db             	xor    r11d,r11d
   140005cc3:	41 8b 41 14          	mov    eax,DWORD PTR [r9+0x14]
   140005cc7:	83 e8 01             	sub    eax,0x1
   140005cca:	48 98                	cdqe
   140005ccc:	45 0f bd 64 81 18    	bsr    r12d,DWORD PTR [r9+rax*4+0x18]
   140005cd2:	41 83 f4 1f          	xor    r12d,0x1f
   140005cd6:	e9 95 fb ff ff       	jmp    140005870 <__gdtoa+0x980>
   140005cdb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140005ce0:	41 83 fe 01          	cmp    r14d,0x1
   140005ce4:	0f 85 80 fb ff ff    	jne    14000586a <__gdtoa+0x97a>
   140005cea:	41 8b 44 24 04       	mov    eax,DWORD PTR [r12+0x4]
   140005cef:	83 c0 01             	add    eax,0x1
   140005cf2:	39 45 d0             	cmp    DWORD PTR [rbp-0x30],eax
   140005cf5:	0f 8e 6f fb ff ff    	jle    14000586a <__gdtoa+0x97a>
   140005cfb:	83 45 98 01          	add    DWORD PTR [rbp-0x68],0x1
   140005cff:	41 bb 01 00 00 00    	mov    r11d,0x1
   140005d05:	83 45 b0 01          	add    DWORD PTR [rbp-0x50],0x1
   140005d09:	e9 5c fb ff ff       	jmp    14000586a <__gdtoa+0x97a>
   140005d0e:	66 90                	xchg   ax,ax
   140005d10:	83 7d d8 01          	cmp    DWORD PTR [rbp-0x28],0x1
   140005d14:	0f 8e 9e fa ff ff    	jle    1400057b8 <__gdtoa+0x8c8>
   140005d1a:	8b 4d b8             	mov    ecx,DWORD PTR [rbp-0x48]
   140005d1d:	8b 7d 8c             	mov    edi,DWORD PTR [rbp-0x74]
   140005d20:	8d 41 ff             	lea    eax,[rcx-0x1]
   140005d23:	39 c7                	cmp    edi,eax
   140005d25:	0f 8c 0e 02 00 00    	jl     140005f39 <__gdtoa+0x1049>
   140005d2b:	41 89 f8             	mov    r8d,edi
   140005d2e:	41 29 c0             	sub    r8d,eax
   140005d31:	85 c9                	test   ecx,ecx
   140005d33:	0f 89 5b 06 00 00    	jns    140006394 <__gdtoa+0x14a4>
   140005d39:	44 8b 6d 98          	mov    r13d,DWORD PTR [rbp-0x68]
   140005d3d:	8b 45 b8             	mov    eax,DWORD PTR [rbp-0x48]
   140005d40:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
   140005d47:	41 29 c5             	sub    r13d,eax
   140005d4a:	e9 7b fa ff ff       	jmp    1400057ca <__gdtoa+0x8da>
   140005d4f:	c7 45 88 01 00 00 00 	mov    DWORD PTR [rbp-0x78],0x1
   140005d56:	e9 b5 f5 ff ff       	jmp    140005310 <__gdtoa+0x420>
   140005d5b:	66 0f 10 e2          	movupd xmm4,xmm2
   140005d5f:	66 49 0f 6e c2       	movq   xmm0,r10
   140005d64:	48 8b 55 a0          	mov    rdx,QWORD PTR [rbp-0x60]
   140005d68:	45 31 c9             	xor    r9d,r9d
   140005d6b:	f2 0f 59 e3          	mulsd  xmm4,xmm3
   140005d6f:	c7 45 fc 01 00 00 00 	mov    DWORD PTR [rbp-0x4],0x1
   140005d76:	f2 0f 10 15 0a 38 00 	movsd  xmm2,QWORD PTR [rip+0x380a]        # 140009588 <.rdata+0x48>
   140005d7d:	00 
   140005d7e:	66 0f 10 c8          	movupd xmm1,xmm0
   140005d82:	eb 13                	jmp    140005d97 <__gdtoa+0xea7>
   140005d84:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140005d88:	f2 0f 59 ca          	mulsd  xmm1,xmm2
   140005d8c:	41 83 c2 01          	add    r10d,0x1
   140005d90:	41 89 f9             	mov    r9d,edi
   140005d93:	44 89 55 fc          	mov    DWORD PTR [rbp-0x4],r10d
   140005d97:	f2 0f 2c c9          	cvttsd2si ecx,xmm1
   140005d9b:	85 c9                	test   ecx,ecx
   140005d9d:	74 0f                	je     140005dae <__gdtoa+0xebe>
   140005d9f:	66 0f ef db          	pxor   xmm3,xmm3
   140005da3:	41 89 f9             	mov    r9d,edi
   140005da6:	f2 0f 2a d9          	cvtsi2sd xmm3,ecx
   140005daa:	f2 0f 5c cb          	subsd  xmm1,xmm3
   140005dae:	48 83 c2 01          	add    rdx,0x1
   140005db2:	83 c1 30             	add    ecx,0x30
   140005db5:	88 4a ff             	mov    BYTE PTR [rdx-0x1],cl
   140005db8:	44 8b 55 fc          	mov    r10d,DWORD PTR [rbp-0x4]
   140005dbc:	41 39 c2             	cmp    r10d,eax
   140005dbf:	75 c7                	jne    140005d88 <__gdtoa+0xe98>
   140005dc1:	45 84 c9             	test   r9b,r9b
   140005dc4:	0f 84 ab 05 00 00    	je     140006375 <__gdtoa+0x1485>
   140005dca:	f2 0f 10 05 ee 37 00 	movsd  xmm0,QWORD PTR [rip+0x37ee]        # 1400095c0 <.rdata+0x80>
   140005dd1:	00 
   140005dd2:	66 0f 10 d4          	movupd xmm2,xmm4
   140005dd6:	f2 0f 58 d0          	addsd  xmm2,xmm0
   140005dda:	66 0f 2f ca          	comisd xmm1,xmm2
   140005dde:	0f 87 88 05 00 00    	ja     14000636c <__gdtoa+0x147c>
   140005de4:	f2 0f 5c c4          	subsd  xmm0,xmm4
   140005de8:	66 0f 2f c1          	comisd xmm0,xmm1
   140005dec:	0f 87 f2 05 00 00    	ja     1400063e4 <__gdtoa+0x14f4>
   140005df2:	8b 45 a8             	mov    eax,DWORD PTR [rbp-0x58]
   140005df5:	85 c0                	test   eax,eax
   140005df7:	0f 88 81 05 00 00    	js     14000637e <__gdtoa+0x148e>
   140005dfd:	41 8b 44 24 14       	mov    eax,DWORD PTR [r12+0x14]
   140005e02:	85 c0                	test   eax,eax
   140005e04:	0f 88 74 05 00 00    	js     14000637e <__gdtoa+0x148e>
   140005e0a:	48 8b 05 3f 3a 00 00 	mov    rax,QWORD PTR [rip+0x3a3f]        # 140009850 <.refptr.__tens_D2A>
   140005e11:	c7 45 c8 00 00 00 00 	mov    DWORD PTR [rbp-0x38],0x0
   140005e18:	f2 0f 10 10          	movsd  xmm2,QWORD PTR [rax]
   140005e1c:	f2 0f 10 85 68 ff ff 	movsd  xmm0,QWORD PTR [rbp-0x98]
   140005e23:	ff 
   140005e24:	48 8b 75 a0          	mov    rsi,QWORD PTR [rbp-0x60]
   140005e28:	c7 45 fc 01 00 00 00 	mov    DWORD PTR [rbp-0x4],0x1
   140005e2f:	66 0f 10 c8          	movupd xmm1,xmm0
   140005e33:	48 8d 56 01          	lea    rdx,[rsi+0x1]
   140005e37:	f2 0f 5e ca          	divsd  xmm1,xmm2
   140005e3b:	f2 0f 2c c1          	cvttsd2si eax,xmm1
   140005e3f:	66 0f ef c9          	pxor   xmm1,xmm1
   140005e43:	f2 0f 2a c8          	cvtsi2sd xmm1,eax
   140005e47:	8d 48 30             	lea    ecx,[rax+0x30]
   140005e4a:	88 0e                	mov    BYTE PTR [rsi],cl
   140005e4c:	8b 75 90             	mov    esi,DWORD PTR [rbp-0x70]
   140005e4f:	83 c6 01             	add    esi,0x1
   140005e52:	f2 0f 59 ca          	mulsd  xmm1,xmm2
   140005e56:	89 75 cc             	mov    DWORD PTR [rbp-0x34],esi
   140005e59:	f2 0f 5c c1          	subsd  xmm0,xmm1
   140005e5d:	66 0f ef c9          	pxor   xmm1,xmm1
   140005e61:	66 0f 2e c1          	ucomisd xmm0,xmm1
   140005e65:	7a 06                	jp     140005e6d <__gdtoa+0xf7d>
   140005e67:	0f 84 90 01 00 00    	je     140005ffd <__gdtoa+0x110d>
   140005e6d:	f2 0f 10 25 13 37 00 	movsd  xmm4,QWORD PTR [rip+0x3713]        # 140009588 <.rdata+0x48>
   140005e74:	00 
   140005e75:	66 0f ef db          	pxor   xmm3,xmm3
   140005e79:	eb 41                	jmp    140005ebc <__gdtoa+0xfcc>
   140005e7b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140005e80:	f2 0f 59 c4          	mulsd  xmm0,xmm4
   140005e84:	83 c1 01             	add    ecx,0x1
   140005e87:	48 83 c2 01          	add    rdx,0x1
   140005e8b:	89 4d fc             	mov    DWORD PTR [rbp-0x4],ecx
   140005e8e:	66 0f 10 c8          	movupd xmm1,xmm0
   140005e92:	f2 0f 5e ca          	divsd  xmm1,xmm2
   140005e96:	f2 0f 2c c1          	cvttsd2si eax,xmm1
   140005e9a:	66 0f ef c9          	pxor   xmm1,xmm1
   140005e9e:	f2 0f 2a c8          	cvtsi2sd xmm1,eax
   140005ea2:	8d 48 30             	lea    ecx,[rax+0x30]
   140005ea5:	88 4a ff             	mov    BYTE PTR [rdx-0x1],cl
   140005ea8:	f2 0f 59 ca          	mulsd  xmm1,xmm2
   140005eac:	f2 0f 5c c1          	subsd  xmm0,xmm1
   140005eb0:	66 0f 2e c3          	ucomisd xmm0,xmm3
   140005eb4:	7a 06                	jp     140005ebc <__gdtoa+0xfcc>
   140005eb6:	0f 84 41 01 00 00    	je     140005ffd <__gdtoa+0x110d>
   140005ebc:	8b 4d fc             	mov    ecx,DWORD PTR [rbp-0x4]
   140005ebf:	8b 75 b8             	mov    esi,DWORD PTR [rbp-0x48]
   140005ec2:	39 f1                	cmp    ecx,esi
   140005ec4:	75 ba                	jne    140005e80 <__gdtoa+0xf90>
   140005ec6:	8b 75 c8             	mov    esi,DWORD PTR [rbp-0x38]
   140005ec9:	85 f6                	test   esi,esi
   140005ecb:	0f 84 17 04 00 00    	je     1400062e8 <__gdtoa+0x13f8>
   140005ed1:	83 fe 01             	cmp    esi,0x1
   140005ed4:	0f 84 2e 05 00 00    	je     140006408 <__gdtoa+0x1518>
   140005eda:	48 8b 75 a0          	mov    rsi,QWORD PTR [rbp-0x60]
   140005ede:	c7 45 c0 10 00 00 00 	mov    DWORD PTR [rbp-0x40],0x10
   140005ee5:	48 89 55 a0          	mov    QWORD PTR [rbp-0x60],rdx
   140005ee9:	e9 d8 f7 ff ff       	jmp    1400056c6 <__gdtoa+0x7d6>
   140005eee:	8b 55 a8             	mov    edx,DWORD PTR [rbp-0x58]
   140005ef1:	e9 07 fb ff ff       	jmp    1400059fd <__gdtoa+0xb0d>
   140005ef6:	48 8b 55 a0          	mov    rdx,QWORD PTR [rbp-0x60]
   140005efa:	eb 0d                	jmp    140005f09 <__gdtoa+0x1019>
   140005efc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140005f00:	49 39 d6             	cmp    r14,rdx
   140005f03:	0f 84 8f 00 00 00    	je     140005f98 <__gdtoa+0x10a8>
   140005f09:	4d 89 f4             	mov    r12,r14
   140005f0c:	4d 8d 76 ff          	lea    r14,[r14-0x1]
   140005f10:	41 0f b6 44 24 ff    	movzx  eax,BYTE PTR [r12-0x1]
   140005f16:	3c 39                	cmp    al,0x39
   140005f18:	74 e6                	je     140005f00 <__gdtoa+0x1010>
   140005f1a:	83 c0 01             	add    eax,0x1
   140005f1d:	c7 45 c0 20 00 00 00 	mov    DWORD PTR [rbp-0x40],0x20
   140005f24:	41 88 06             	mov    BYTE PTR [r14],al
   140005f27:	e9 14 fc ff ff       	jmp    140005b40 <__gdtoa+0xc50>
   140005f2c:	48 8b 75 a0          	mov    rsi,QWORD PTR [rbp-0x60]
   140005f30:	4c 89 65 a0          	mov    QWORD PTR [rbp-0x60],r12
   140005f34:	e9 8d f7 ff ff       	jmp    1400056c6 <__gdtoa+0x7d6>
   140005f39:	8b 7d 8c             	mov    edi,DWORD PTR [rbp-0x74]
   140005f3c:	89 c2                	mov    edx,eax
   140005f3e:	89 45 8c             	mov    DWORD PTR [rbp-0x74],eax
   140005f41:	45 31 c0             	xor    r8d,r8d
   140005f44:	29 fa                	sub    edx,edi
   140005f46:	8b 7d b8             	mov    edi,DWORD PTR [rbp-0x48]
   140005f49:	01 7d b0             	add    DWORD PTR [rbp-0x50],edi
   140005f4c:	41 01 d3             	add    r11d,edx
   140005f4f:	8b 55 98             	mov    edx,DWORD PTR [rbp-0x68]
   140005f52:	89 7d fc             	mov    DWORD PTR [rbp-0x4],edi
   140005f55:	01 d7                	add    edi,edx
   140005f57:	41 89 d5             	mov    r13d,edx
   140005f5a:	89 7d 98             	mov    DWORD PTR [rbp-0x68],edi
   140005f5d:	e9 68 f8 ff ff       	jmp    1400057ca <__gdtoa+0x8da>
   140005f62:	41 83 fe 01          	cmp    r14d,0x1
   140005f66:	0f 85 54 fd ff ff    	jne    140005cc0 <__gdtoa+0xdd0>
   140005f6c:	41 8b 44 24 04       	mov    eax,DWORD PTR [r12+0x4]
   140005f71:	8b 55 d0             	mov    edx,DWORD PTR [rbp-0x30]
   140005f74:	83 c0 01             	add    eax,0x1
   140005f77:	39 d0                	cmp    eax,edx
   140005f79:	0f 8d 41 fd ff ff    	jge    140005cc0 <__gdtoa+0xdd0>
   140005f7f:	83 45 98 01          	add    DWORD PTR [rbp-0x68],0x1
   140005f83:	41 bb 01 00 00 00    	mov    r11d,0x1
   140005f89:	83 45 b0 01          	add    DWORD PTR [rbp-0x50],0x1
   140005f8d:	e9 31 fd ff ff       	jmp    140005cc3 <__gdtoa+0xdd3>
   140005f92:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140005f98:	48 8b 45 a0          	mov    rax,QWORD PTR [rbp-0x60]
   140005f9c:	83 45 cc 01          	add    DWORD PTR [rbp-0x34],0x1
   140005fa0:	c7 45 c0 20 00 00 00 	mov    DWORD PTR [rbp-0x40],0x20
   140005fa7:	c6 00 31             	mov    BYTE PTR [rax],0x31
   140005faa:	e9 91 fb ff ff       	jmp    140005b40 <__gdtoa+0xc50>
   140005faf:	44 89 c2             	mov    edx,r8d
   140005fb2:	48 89 f9             	mov    rcx,rdi
   140005fb5:	44 89 9d 78 ff ff ff 	mov    DWORD PTR [rbp-0x88],r11d
   140005fbc:	44 89 45 80          	mov    DWORD PTR [rbp-0x80],r8d
   140005fc0:	e8 3b 0c 00 00       	call   140006c00 <__pow5mult_D2A>
   140005fc5:	48 89 da             	mov    rdx,rbx
   140005fc8:	48 89 c1             	mov    rcx,rax
   140005fcb:	48 89 c7             	mov    rdi,rax
   140005fce:	e8 bd 0a 00 00       	call   140006a90 <__mult_D2A>
   140005fd3:	48 89 d9             	mov    rcx,rbx
   140005fd6:	48 89 45 a8          	mov    QWORD PTR [rbp-0x58],rax
   140005fda:	e8 c1 08 00 00       	call   1400068a0 <__Bfree_D2A>
   140005fdf:	44 8b 45 80          	mov    r8d,DWORD PTR [rbp-0x80]
   140005fe3:	44 29 45 8c          	sub    DWORD PTR [rbp-0x74],r8d
   140005fe7:	48 8b 5d a8          	mov    rbx,QWORD PTR [rbp-0x58]
   140005feb:	44 8b 9d 78 ff ff ff 	mov    r11d,DWORD PTR [rbp-0x88]
   140005ff2:	0f 84 4a f8 ff ff    	je     140005842 <__gdtoa+0x952>
   140005ff8:	e9 2f f8 ff ff       	jmp    14000582c <__gdtoa+0x93c>
   140005ffd:	48 8b 75 a0          	mov    rsi,QWORD PTR [rbp-0x60]
   140006001:	48 89 55 a0          	mov    QWORD PTR [rbp-0x60],rdx
   140006005:	e9 bc f6 ff ff       	jmp    1400056c6 <__gdtoa+0x7d6>
   14000600a:	48 89 d9             	mov    rcx,rbx
   14000600d:	ba 01 00 00 00       	mov    edx,0x1
   140006012:	4c 89 4d d8          	mov    QWORD PTR [rbp-0x28],r9
   140006016:	44 89 45 d0          	mov    DWORD PTR [rbp-0x30],r8d
   14000601a:	e8 71 0d 00 00       	call   140006d90 <__lshift_D2A>
   14000601f:	48 8b 55 d8          	mov    rdx,QWORD PTR [rbp-0x28]
   140006023:	48 89 c1             	mov    rcx,rax
   140006026:	48 89 c3             	mov    rbx,rax
   140006029:	e8 92 0e 00 00       	call   140006ec0 <__cmp_D2A>
   14000602e:	4c 8b 4d d8          	mov    r9,QWORD PTR [rbp-0x28]
   140006032:	85 c0                	test   eax,eax
   140006034:	0f 8f bc fe ff ff    	jg     140005ef6 <__gdtoa+0x1006>
   14000603a:	75 0e                	jne    14000604a <__gdtoa+0x115a>
   14000603c:	44 8b 45 d0          	mov    r8d,DWORD PTR [rbp-0x30]
   140006040:	41 83 e0 01          	and    r8d,0x1
   140006044:	0f 85 ac fe ff ff    	jne    140005ef6 <__gdtoa+0x1006>
   14000604a:	83 7b 14 01          	cmp    DWORD PTR [rbx+0x14],0x1
   14000604e:	c7 45 c0 10 00 00 00 	mov    DWORD PTR [rbp-0x40],0x10
   140006055:	0f 8f 35 fc ff ff    	jg     140005c90 <__gdtoa+0xda0>
   14000605b:	8b 43 18             	mov    eax,DWORD PTR [rbx+0x18]
   14000605e:	e9 1e fc ff ff       	jmp    140005c81 <__gdtoa+0xd91>
   140006063:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140006068:	44 8b 5d c8          	mov    r11d,DWORD PTR [rbp-0x38]
   14000606c:	4d 89 fa             	mov    r10,r15
   14000606f:	4c 8b 4d d0          	mov    r9,QWORD PTR [rbp-0x30]
   140006073:	41 89 f0             	mov    r8d,esi
   140006076:	4c 8b 7d 90          	mov    r15,QWORD PTR [rbp-0x70]
   14000607a:	45 85 db             	test   r11d,r11d
   14000607d:	0f 84 c6 01 00 00    	je     140006249 <__gdtoa+0x1359>
   140006083:	83 7b 14 01          	cmp    DWORD PTR [rbx+0x14],0x1
   140006087:	0f 8e b8 03 00 00    	jle    140006445 <__gdtoa+0x1555>
   14000608d:	83 7d c8 02          	cmp    DWORD PTR [rbp-0x38],0x2
   140006091:	0f 84 11 02 00 00    	je     1400062a8 <__gdtoa+0x13b8>
   140006097:	4c 89 7d d0          	mov    QWORD PTR [rbp-0x30],r15
   14000609b:	45 89 c6             	mov    r14d,r8d
   14000609e:	4d 89 d7             	mov    r15,r10
   1400060a1:	4c 89 4d d8          	mov    QWORD PTR [rbp-0x28],r9
   1400060a5:	eb 51                	jmp    1400060f8 <__gdtoa+0x1208>
   1400060a7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
   1400060ae:	00 00 
   1400060b0:	45 88 74 24 ff       	mov    BYTE PTR [r12-0x1],r14b
   1400060b5:	45 31 c0             	xor    r8d,r8d
   1400060b8:	4c 89 e9             	mov    rcx,r13
   1400060bb:	ba 0a 00 00 00       	mov    edx,0xa
   1400060c0:	4d 89 e7             	mov    r15,r12
   1400060c3:	e8 48 08 00 00       	call   140006910 <__multadd_D2A>
   1400060c8:	4c 39 ef             	cmp    rdi,r13
   1400060cb:	48 89 d9             	mov    rcx,rbx
   1400060ce:	ba 0a 00 00 00       	mov    edx,0xa
   1400060d3:	48 0f 44 f8          	cmove  rdi,rax
   1400060d7:	45 31 c0             	xor    r8d,r8d
   1400060da:	48 89 c6             	mov    rsi,rax
   1400060dd:	e8 2e 08 00 00       	call   140006910 <__multadd_D2A>
   1400060e2:	48 8b 55 d8          	mov    rdx,QWORD PTR [rbp-0x28]
   1400060e6:	49 89 f5             	mov    r13,rsi
   1400060e9:	48 89 c1             	mov    rcx,rax
   1400060ec:	48 89 c3             	mov    rbx,rax
   1400060ef:	e8 7c ec ff ff       	call   140004d70 <__quorem_D2A>
   1400060f4:	44 8d 70 30          	lea    r14d,[rax+0x30]
   1400060f8:	48 8b 4d d8          	mov    rcx,QWORD PTR [rbp-0x28]
   1400060fc:	4c 89 ea             	mov    rdx,r13
   1400060ff:	4d 8d 67 01          	lea    r12,[r15+0x1]
   140006103:	e8 b8 0d 00 00       	call   140006ec0 <__cmp_D2A>
   140006108:	85 c0                	test   eax,eax
   14000610a:	7f a4                	jg     1400060b0 <__gdtoa+0x11c0>
   14000610c:	4d 89 fa             	mov    r10,r15
   14000610f:	4c 8b 4d d8          	mov    r9,QWORD PTR [rbp-0x28]
   140006113:	4c 8b 7d d0          	mov    r15,QWORD PTR [rbp-0x30]
   140006117:	45 89 f0             	mov    r8d,r14d
   14000611a:	41 83 fe 39          	cmp    r14d,0x39
   14000611e:	0f 84 71 03 00 00    	je     140006495 <__gdtoa+0x15a5>
   140006124:	c7 45 c0 20 00 00 00 	mov    DWORD PTR [rbp-0x40],0x20
   14000612b:	48 89 fe             	mov    rsi,rdi
   14000612e:	41 83 c0 01          	add    r8d,0x1
   140006132:	4c 89 ef             	mov    rdi,r13
   140006135:	45 88 02             	mov    BYTE PTR [r10],r8b
   140006138:	e9 03 fa ff ff       	jmp    140005b40 <__gdtoa+0xc50>
   14000613d:	85 c9                	test   ecx,ecx
   14000613f:	0f 84 b0 f5 ff ff    	je     1400056f5 <__gdtoa+0x805>
   140006145:	8b 8d 70 ff ff ff    	mov    ecx,DWORD PTR [rbp-0x90]
   14000614b:	85 c9                	test   ecx,ecx
   14000614d:	0f 8e f5 f5 ff ff    	jle    140005748 <__gdtoa+0x858>
   140006153:	f2 0f 59 05 2d 34 00 	mulsd  xmm0,QWORD PTR [rip+0x342d]        # 140009588 <.rdata+0x48>
   14000615a:	00 
   14000615b:	f2 0f 10 0d 2d 34 00 	movsd  xmm1,QWORD PTR [rip+0x342d]        # 140009590 <.rdata+0x50>
   140006162:	00 
   140006163:	41 b8 ff ff ff ff    	mov    r8d,0xffffffff
   140006169:	f2 0f 59 c8          	mulsd  xmm1,xmm0
   14000616d:	66 49 0f 7e c2       	movq   r10,xmm0
   140006172:	f2 0f 58 0d 1e 34 00 	addsd  xmm1,QWORD PTR [rip+0x341e]        # 140009598 <.rdata+0x58>
   140006179:	00 
   14000617a:	66 48 0f 7e ca       	movq   rdx,xmm1
   14000617f:	48 89 d0             	mov    rax,rdx
   140006182:	89 d2                	mov    edx,edx
   140006184:	48 c1 e8 20          	shr    rax,0x20
   140006188:	2d 00 00 40 03       	sub    eax,0x3400000
   14000618d:	48 c1 e0 20          	shl    rax,0x20
   140006191:	48 09 c2             	or     rdx,rax
   140006194:	89 c8                	mov    eax,ecx
   140006196:	e9 73 f2 ff ff       	jmp    14000540e <__gdtoa+0x51e>
   14000619b:	8b 4f 08             	mov    ecx,DWORD PTR [rdi+0x8]
   14000619e:	4c 89 4d d0          	mov    QWORD PTR [rbp-0x30],r9
   1400061a2:	e8 f9 05 00 00       	call   1400067a0 <__Balloc_D2A>
   1400061a7:	48 8d 57 10          	lea    rdx,[rdi+0x10]
   1400061ab:	48 8d 48 10          	lea    rcx,[rax+0x10]
   1400061af:	49 89 c4             	mov    r12,rax
   1400061b2:	48 63 47 14          	movsxd rax,DWORD PTR [rdi+0x14]
   1400061b6:	4c 8d 04 85 08 00 00 	lea    r8,[rax*4+0x8]
   1400061bd:	00 
   1400061be:	e8 25 19 00 00       	call   140007ae8 <memcpy>
   1400061c3:	ba 01 00 00 00       	mov    edx,0x1
   1400061c8:	4c 89 e1             	mov    rcx,r12
   1400061cb:	e8 c0 0b 00 00       	call   140006d90 <__lshift_D2A>
   1400061d0:	4c 8b 4d d0          	mov    r9,QWORD PTR [rbp-0x30]
   1400061d4:	49 89 c5             	mov    r13,rax
   1400061d7:	e9 f7 f7 ff ff       	jmp    1400059d3 <__gdtoa+0xae3>
   1400061dc:	c7 45 cc 02 00 00 00 	mov    DWORD PTR [rbp-0x34],0x2
   1400061e3:	48 8b 75 a0          	mov    rsi,QWORD PTR [rbp-0x60]
   1400061e7:	45 31 c9             	xor    r9d,r9d
   1400061ea:	31 ff                	xor    edi,edi
   1400061ec:	e9 b1 f4 ff ff       	jmp    1400056a2 <__gdtoa+0x7b2>
   1400061f1:	4d 89 fa             	mov    r10,r15
   1400061f4:	4c 8b 4d d0          	mov    r9,QWORD PTR [rbp-0x30]
   1400061f8:	4c 8b 7d 90          	mov    r15,QWORD PTR [rbp-0x70]
   1400061fc:	41 89 f0             	mov    r8d,esi
   1400061ff:	83 fe 39             	cmp    esi,0x39
   140006202:	0f 84 8d 02 00 00    	je     140006495 <__gdtoa+0x15a5>
   140006208:	41 83 c0 01          	add    r8d,0x1
   14000620c:	48 89 fe             	mov    rsi,rdi
   14000620f:	c7 45 c0 20 00 00 00 	mov    DWORD PTR [rbp-0x40],0x20
   140006216:	4c 89 ef             	mov    rdi,r13
   140006219:	45 88 02             	mov    BYTE PTR [r10],r8b
   14000621c:	e9 1f f9 ff ff       	jmp    140005b40 <__gdtoa+0xc50>
   140006221:	41 89 f0             	mov    r8d,esi
   140006224:	4c 8b 4d d0          	mov    r9,QWORD PTR [rbp-0x30]
   140006228:	48 89 fe             	mov    rsi,rdi
   14000622b:	4c 8b 7d 90          	mov    r15,QWORD PTR [rbp-0x70]
   14000622f:	4c 89 ef             	mov    rdi,r13
   140006232:	e9 1f fa ff ff       	jmp    140005c56 <__gdtoa+0xd66>
   140006237:	48 89 55 a0          	mov    QWORD PTR [rbp-0x60],rdx
   14000623b:	41 83 c0 01          	add    r8d,0x1
   14000623f:	b9 31 00 00 00       	mov    ecx,0x31
   140006244:	e9 af f2 ff ff       	jmp    1400054f8 <__gdtoa+0x608>
   140006249:	85 d2                	test   edx,edx
   14000624b:	7e 51                	jle    14000629e <__gdtoa+0x13ae>
   14000624d:	48 89 d9             	mov    rcx,rbx
   140006250:	ba 01 00 00 00       	mov    edx,0x1
   140006255:	4c 89 4d d8          	mov    QWORD PTR [rbp-0x28],r9
   140006259:	4c 89 55 c0          	mov    QWORD PTR [rbp-0x40],r10
   14000625d:	44 89 45 d0          	mov    DWORD PTR [rbp-0x30],r8d
   140006261:	e8 2a 0b 00 00       	call   140006d90 <__lshift_D2A>
   140006266:	48 8b 55 d8          	mov    rdx,QWORD PTR [rbp-0x28]
   14000626a:	48 89 c1             	mov    rcx,rax
   14000626d:	48 89 c3             	mov    rbx,rax
   140006270:	e8 4b 0c 00 00       	call   140006ec0 <__cmp_D2A>
   140006275:	4c 8b 4d d8          	mov    r9,QWORD PTR [rbp-0x28]
   140006279:	44 8b 45 d0          	mov    r8d,DWORD PTR [rbp-0x30]
   14000627d:	85 c0                	test   eax,eax
   14000627f:	4c 8b 55 c0          	mov    r10,QWORD PTR [rbp-0x40]
   140006283:	0f 8e 22 02 00 00    	jle    1400064ab <__gdtoa+0x15bb>
   140006289:	41 83 f8 39          	cmp    r8d,0x39
   14000628d:	0f 84 30 02 00 00    	je     1400064c3 <__gdtoa+0x15d3>
   140006293:	c7 45 c8 20 00 00 00 	mov    DWORD PTR [rbp-0x38],0x20
   14000629a:	45 8d 46 31          	lea    r8d,[r14+0x31]
   14000629e:	83 7b 14 01          	cmp    DWORD PTR [rbx+0x14],0x1
   1400062a2:	0f 8e cc 01 00 00    	jle    140006474 <__gdtoa+0x1584>
   1400062a8:	48 89 fe             	mov    rsi,rdi
   1400062ab:	c7 45 c0 10 00 00 00 	mov    DWORD PTR [rbp-0x40],0x10
   1400062b2:	4c 89 ef             	mov    rdi,r13
   1400062b5:	4d 8d 62 01          	lea    r12,[r10+0x1]
   1400062b9:	e9 77 fe ff ff       	jmp    140006135 <__gdtoa+0x1245>
   1400062be:	c7 85 70 ff ff ff ff 	mov    DWORD PTR [rbp-0x90],0xffffffff
   1400062c5:	ff ff ff 
   1400062c8:	c7 45 b8 ff ff ff ff 	mov    DWORD PTR [rbp-0x48],0xffffffff
   1400062cf:	e9 92 f4 ff ff       	jmp    140005766 <__gdtoa+0x876>
   1400062d4:	8b 45 b0             	mov    eax,DWORD PTR [rbp-0x50]
   1400062d7:	89 45 90             	mov    DWORD PTR [rbp-0x70],eax
   1400062da:	8b 85 70 ff ff ff    	mov    eax,DWORD PTR [rbp-0x90]
   1400062e0:	89 45 b8             	mov    DWORD PTR [rbp-0x48],eax
   1400062e3:	e9 0c f6 ff ff       	jmp    1400058f4 <__gdtoa+0xa04>
   1400062e8:	f2 0f 58 c0          	addsd  xmm0,xmm0
   1400062ec:	0f b6 4a ff          	movzx  ecx,BYTE PTR [rdx-0x1]
   1400062f0:	66 0f 2f c2          	comisd xmm0,xmm2
   1400062f4:	0f 87 6d 01 00 00    	ja     140006467 <__gdtoa+0x1577>
   1400062fa:	66 0f 2e c2          	ucomisd xmm0,xmm2
   1400062fe:	48 8b 75 a0          	mov    rsi,QWORD PTR [rbp-0x60]
   140006302:	44 8b 45 90          	mov    r8d,DWORD PTR [rbp-0x70]
   140006306:	7a 0a                	jp     140006312 <__gdtoa+0x1422>
   140006308:	75 08                	jne    140006312 <__gdtoa+0x1422>
   14000630a:	a8 01                	test   al,0x1
   14000630c:	0f 85 d6 f1 ff ff    	jne    1400054e8 <__gdtoa+0x5f8>
   140006312:	c7 45 c0 10 00 00 00 	mov    DWORD PTR [rbp-0x40],0x10
   140006319:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140006320:	48 89 d0             	mov    rax,rdx
   140006323:	48 8d 52 ff          	lea    rdx,[rdx-0x1]
   140006327:	80 78 ff 30          	cmp    BYTE PTR [rax-0x1],0x30
   14000632b:	74 f3                	je     140006320 <__gdtoa+0x1430>
   14000632d:	48 89 45 a0          	mov    QWORD PTR [rbp-0x60],rax
   140006331:	41 8d 40 01          	lea    eax,[r8+0x1]
   140006335:	89 45 cc             	mov    DWORD PTR [rbp-0x34],eax
   140006338:	e9 89 f3 ff ff       	jmp    1400056c6 <__gdtoa+0x7d6>
   14000633d:	66 0f ef c9          	pxor   xmm1,xmm1
   140006341:	31 c0                	xor    eax,eax
   140006343:	b9 01 00 00 00       	mov    ecx,0x1
   140006348:	48 8b 75 a0          	mov    rsi,QWORD PTR [rbp-0x60]
   14000634c:	66 0f 2e c1          	ucomisd xmm0,xmm1
   140006350:	48 89 55 a0          	mov    QWORD PTR [rbp-0x60],rdx
   140006354:	0f 9a c0             	setp   al
   140006357:	0f 45 c1             	cmovne eax,ecx
   14000635a:	c1 e0 04             	shl    eax,0x4
   14000635d:	89 45 c0             	mov    DWORD PTR [rbp-0x40],eax
   140006360:	41 8d 40 01          	lea    eax,[r8+0x1]
   140006364:	89 45 cc             	mov    DWORD PTR [rbp-0x34],eax
   140006367:	e9 5a f3 ff ff       	jmp    1400056c6 <__gdtoa+0x7d6>
   14000636c:	48 8b 75 a0          	mov    rsi,QWORD PTR [rbp-0x60]
   140006370:	e9 73 f1 ff ff       	jmp    1400054e8 <__gdtoa+0x5f8>
   140006375:	66 0f 10 c8          	movupd xmm1,xmm0
   140006379:	e9 4c fa ff ff       	jmp    140005dca <__gdtoa+0xeda>
   14000637e:	c7 45 c8 00 00 00 00 	mov    DWORD PTR [rbp-0x38],0x0
   140006385:	44 8b 45 8c          	mov    r8d,DWORD PTR [rbp-0x74]
   140006389:	31 ff                	xor    edi,edi
   14000638b:	44 8b 6d 98          	mov    r13d,DWORD PTR [rbp-0x68]
   14000638f:	e9 5a f4 ff ff       	jmp    1400057ee <__gdtoa+0x8fe>
   140006394:	8b 7d 98             	mov    edi,DWORD PTR [rbp-0x68]
   140006397:	89 c8                	mov    eax,ecx
   140006399:	01 4d b0             	add    DWORD PTR [rbp-0x50],ecx
   14000639c:	89 4d fc             	mov    DWORD PTR [rbp-0x4],ecx
   14000639f:	01 f8                	add    eax,edi
   1400063a1:	41 89 fd             	mov    r13d,edi
   1400063a4:	89 45 98             	mov    DWORD PTR [rbp-0x68],eax
   1400063a7:	e9 1e f4 ff ff       	jmp    1400057ca <__gdtoa+0x8da>
   1400063ac:	45 31 c0             	xor    r8d,r8d
   1400063af:	48 89 f9             	mov    rcx,rdi
   1400063b2:	ba 0a 00 00 00       	mov    edx,0xa
   1400063b7:	e8 54 05 00 00       	call   140006910 <__multadd_D2A>
   1400063bc:	45 84 f6             	test   r14b,r14b
   1400063bf:	4c 8b 4d b8          	mov    r9,QWORD PTR [rbp-0x48]
   1400063c3:	48 89 c7             	mov    rdi,rax
   1400063c6:	0f 85 08 ff ff ff    	jne    1400062d4 <__gdtoa+0x13e4>
   1400063cc:	8b 45 90             	mov    eax,DWORD PTR [rbp-0x70]
   1400063cf:	44 8b 5d d0          	mov    r11d,DWORD PTR [rbp-0x30]
   1400063d3:	89 45 cc             	mov    DWORD PTR [rbp-0x34],eax
   1400063d6:	8b 85 70 ff ff ff    	mov    eax,DWORD PTR [rbp-0x90]
   1400063dc:	89 45 b8             	mov    DWORD PTR [rbp-0x48],eax
   1400063df:	e9 c0 f5 ff ff       	jmp    1400059a4 <__gdtoa+0xab4>
   1400063e4:	66 0f ef c0          	pxor   xmm0,xmm0
   1400063e8:	31 c0                	xor    eax,eax
   1400063ea:	b9 01 00 00 00       	mov    ecx,0x1
   1400063ef:	48 8b 75 a0          	mov    rsi,QWORD PTR [rbp-0x60]
   1400063f3:	66 0f 2e c8          	ucomisd xmm1,xmm0
   1400063f7:	0f 9a c0             	setp   al
   1400063fa:	0f 45 c1             	cmovne eax,ecx
   1400063fd:	c1 e0 04             	shl    eax,0x4
   140006400:	89 45 c0             	mov    DWORD PTR [rbp-0x40],eax
   140006403:	e9 18 ff ff ff       	jmp    140006320 <__gdtoa+0x1430>
   140006408:	0f b6 4a ff          	movzx  ecx,BYTE PTR [rdx-0x1]
   14000640c:	48 8b 75 a0          	mov    rsi,QWORD PTR [rbp-0x60]
   140006410:	44 8b 45 90          	mov    r8d,DWORD PTR [rbp-0x70]
   140006414:	e9 cf f0 ff ff       	jmp    1400054e8 <__gdtoa+0x5f8>
   140006419:	8b 7d b8             	mov    edi,DWORD PTR [rbp-0x48]
   14000641c:	8b 55 8c             	mov    edx,DWORD PTR [rbp-0x74]
   14000641f:	8d 47 ff             	lea    eax,[rdi-0x1]
   140006422:	39 c2                	cmp    edx,eax
   140006424:	0f 8c 0f fb ff ff    	jl     140005f39 <__gdtoa+0x1049>
   14000642a:	29 c2                	sub    edx,eax
   14000642c:	8b 45 98             	mov    eax,DWORD PTR [rbp-0x68]
   14000642f:	01 7d b0             	add    DWORD PTR [rbp-0x50],edi
   140006432:	89 7d fc             	mov    DWORD PTR [rbp-0x4],edi
   140006435:	41 89 d0             	mov    r8d,edx
   140006438:	41 89 c5             	mov    r13d,eax
   14000643b:	01 f8                	add    eax,edi
   14000643d:	89 45 98             	mov    DWORD PTR [rbp-0x68],eax
   140006440:	e9 85 f3 ff ff       	jmp    1400057ca <__gdtoa+0x8da>
   140006445:	8b 4b 18             	mov    ecx,DWORD PTR [rbx+0x18]
   140006448:	85 c9                	test   ecx,ecx
   14000644a:	0f 85 3d fc ff ff    	jne    14000608d <__gdtoa+0x119d>
   140006450:	85 d2                	test   edx,edx
   140006452:	0f 8f f5 fd ff ff    	jg     14000624d <__gdtoa+0x135d>
   140006458:	48 89 fe             	mov    rsi,rdi
   14000645b:	4d 8d 62 01          	lea    r12,[r10+0x1]
   14000645f:	4c 89 ef             	mov    rdi,r13
   140006462:	e9 ce fc ff ff       	jmp    140006135 <__gdtoa+0x1245>
   140006467:	48 8b 75 a0          	mov    rsi,QWORD PTR [rbp-0x60]
   14000646b:	44 8b 45 90          	mov    r8d,DWORD PTR [rbp-0x70]
   14000646f:	e9 74 f0 ff ff       	jmp    1400054e8 <__gdtoa+0x5f8>
   140006474:	8b 53 18             	mov    edx,DWORD PTR [rbx+0x18]
   140006477:	48 89 fe             	mov    rsi,rdi
   14000647a:	4c 89 ef             	mov    rdi,r13
   14000647d:	85 d2                	test   edx,edx
   14000647f:	74 4e                	je     1400064cf <__gdtoa+0x15df>
   140006481:	c7 45 c0 10 00 00 00 	mov    DWORD PTR [rbp-0x40],0x10
   140006488:	4d 8d 62 01          	lea    r12,[r10+0x1]
   14000648c:	e9 a4 fc ff ff       	jmp    140006135 <__gdtoa+0x1245>
   140006491:	4d 8d 62 01          	lea    r12,[r10+0x1]
   140006495:	48 89 fe             	mov    rsi,rdi
   140006498:	4c 89 ef             	mov    rdi,r13
   14000649b:	41 c6 02 39          	mov    BYTE PTR [r10],0x39
   14000649f:	48 8b 55 a0          	mov    rdx,QWORD PTR [rbp-0x60]
   1400064a3:	4d 89 e6             	mov    r14,r12
   1400064a6:	e9 5e fa ff ff       	jmp    140005f09 <__gdtoa+0x1019>
   1400064ab:	75 0a                	jne    1400064b7 <__gdtoa+0x15c7>
   1400064ad:	41 f6 c0 01          	test   r8b,0x1
   1400064b1:	0f 85 d2 fd ff ff    	jne    140006289 <__gdtoa+0x1399>
   1400064b7:	c7 45 c8 20 00 00 00 	mov    DWORD PTR [rbp-0x38],0x20
   1400064be:	e9 db fd ff ff       	jmp    14000629e <__gdtoa+0x13ae>
   1400064c3:	48 89 fe             	mov    rsi,rdi
   1400064c6:	4d 8d 62 01          	lea    r12,[r10+0x1]
   1400064ca:	4c 89 ef             	mov    rdi,r13
   1400064cd:	eb cc                	jmp    14000649b <__gdtoa+0x15ab>
   1400064cf:	8b 45 c8             	mov    eax,DWORD PTR [rbp-0x38]
   1400064d2:	4d 8d 62 01          	lea    r12,[r10+0x1]
   1400064d6:	89 45 c0             	mov    DWORD PTR [rbp-0x40],eax
   1400064d9:	e9 57 fc ff ff       	jmp    140006135 <__gdtoa+0x1245>
   1400064de:	83 7b 14 01          	cmp    DWORD PTR [rbx+0x14],0x1
   1400064e2:	c7 45 c0 10 00 00 00 	mov    DWORD PTR [rbp-0x40],0x10
   1400064e9:	0f 8f 3e f6 ff ff    	jg     140005b2d <__gdtoa+0xc3d>
   1400064ef:	31 c0                	xor    eax,eax
   1400064f1:	83 7b 18 00          	cmp    DWORD PTR [rbx+0x18],0x0
   1400064f5:	0f 95 c0             	setne  al
   1400064f8:	c1 e0 04             	shl    eax,0x4
   1400064fb:	89 45 c0             	mov    DWORD PTR [rbp-0x40],eax
   1400064fe:	e9 2a f6 ff ff       	jmp    140005b2d <__gdtoa+0xc3d>
   140006503:	90                   	nop
   140006504:	90                   	nop
   140006505:	90                   	nop
   140006506:	90                   	nop
   140006507:	90                   	nop
   140006508:	90                   	nop
   140006509:	90                   	nop
   14000650a:	90                   	nop
   14000650b:	90                   	nop
   14000650c:	90                   	nop
   14000650d:	90                   	nop
   14000650e:	90                   	nop
   14000650f:	90                   	nop

0000000140006510 <__rshift_D2A>:
   140006510:	55                   	push   rbp
   140006511:	41 55                	push   r13
   140006513:	41 54                	push   r12
   140006515:	57                   	push   rdi
   140006516:	56                   	push   rsi
   140006517:	53                   	push   rbx
   140006518:	48 8d 2c 24          	lea    rbp,[rsp]
   14000651c:	48 63 59 14          	movsxd rbx,DWORD PTR [rcx+0x14]
   140006520:	41 89 d4             	mov    r12d,edx
   140006523:	49 89 ca             	mov    r10,rcx
   140006526:	41 c1 fc 05          	sar    r12d,0x5
   14000652a:	44 39 e3             	cmp    ebx,r12d
   14000652d:	7f 21                	jg     140006550 <__rshift_D2A+0x40>
   14000652f:	41 c7 42 14 00 00 00 	mov    DWORD PTR [r10+0x14],0x0
   140006536:	00 
   140006537:	41 c7 42 18 00 00 00 	mov    DWORD PTR [r10+0x18],0x0
   14000653e:	00 
   14000653f:	5b                   	pop    rbx
   140006540:	5e                   	pop    rsi
   140006541:	5f                   	pop    rdi
   140006542:	41 5c                	pop    r12
   140006544:	41 5d                	pop    r13
   140006546:	5d                   	pop    rbp
   140006547:	c3                   	ret
   140006548:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   14000654f:	00 
   140006550:	4c 8d 69 18          	lea    r13,[rcx+0x18]
   140006554:	4d 63 e4             	movsxd r12,r12d
   140006557:	4d 8d 5c 9d 00       	lea    r11,[r13+rbx*4+0x0]
   14000655c:	4b 8d 74 a5 00       	lea    rsi,[r13+r12*4+0x0]
   140006561:	83 e2 1f             	and    edx,0x1f
   140006564:	74 62                	je     1400065c8 <__rshift_D2A+0xb8>
   140006566:	44 8b 0e             	mov    r9d,DWORD PTR [rsi]
   140006569:	bf 20 00 00 00       	mov    edi,0x20
   14000656e:	89 d1                	mov    ecx,edx
   140006570:	4c 8d 46 04          	lea    r8,[rsi+0x4]
   140006574:	29 d7                	sub    edi,edx
   140006576:	41 d3 e9             	shr    r9d,cl
   140006579:	4d 39 d8             	cmp    r8,r11
   14000657c:	0f 83 86 00 00 00    	jae    140006608 <__rshift_D2A+0xf8>
   140006582:	4c 89 ee             	mov    rsi,r13
   140006585:	0f 1f 00             	nop    DWORD PTR [rax]
   140006588:	41 8b 00             	mov    eax,DWORD PTR [r8]
   14000658b:	89 f9                	mov    ecx,edi
   14000658d:	48 83 c6 04          	add    rsi,0x4
   140006591:	49 83 c0 04          	add    r8,0x4
   140006595:	d3 e0                	shl    eax,cl
   140006597:	89 d1                	mov    ecx,edx
   140006599:	44 09 c8             	or     eax,r9d
   14000659c:	89 46 fc             	mov    DWORD PTR [rsi-0x4],eax
   14000659f:	45 8b 48 fc          	mov    r9d,DWORD PTR [r8-0x4]
   1400065a3:	41 d3 e9             	shr    r9d,cl
   1400065a6:	4d 39 d8             	cmp    r8,r11
   1400065a9:	72 dd                	jb     140006588 <__rshift_D2A+0x78>
   1400065ab:	4c 29 e3             	sub    rbx,r12
   1400065ae:	49 8d 44 9d fc       	lea    rax,[r13+rbx*4-0x4]
   1400065b3:	44 89 08             	mov    DWORD PTR [rax],r9d
   1400065b6:	45 85 c9             	test   r9d,r9d
   1400065b9:	74 2b                	je     1400065e6 <__rshift_D2A+0xd6>
   1400065bb:	48 83 c0 04          	add    rax,0x4
   1400065bf:	eb 25                	jmp    1400065e6 <__rshift_D2A+0xd6>
   1400065c1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   1400065c8:	4c 89 ef             	mov    rdi,r13
   1400065cb:	4c 39 de             	cmp    rsi,r11
   1400065ce:	0f 83 5b ff ff ff    	jae    14000652f <__rshift_D2A+0x1f>
   1400065d4:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   1400065d8:	a5                   	movs   DWORD PTR es:[rdi],DWORD PTR ds:[rsi]
   1400065d9:	4c 39 de             	cmp    rsi,r11
   1400065dc:	72 fa                	jb     1400065d8 <__rshift_D2A+0xc8>
   1400065de:	4c 29 e3             	sub    rbx,r12
   1400065e1:	49 8d 44 9d 00       	lea    rax,[r13+rbx*4+0x0]
   1400065e6:	4c 29 e8             	sub    rax,r13
   1400065e9:	48 c1 f8 02          	sar    rax,0x2
   1400065ed:	41 89 42 14          	mov    DWORD PTR [r10+0x14],eax
   1400065f1:	85 c0                	test   eax,eax
   1400065f3:	0f 84 3e ff ff ff    	je     140006537 <__rshift_D2A+0x27>
   1400065f9:	5b                   	pop    rbx
   1400065fa:	5e                   	pop    rsi
   1400065fb:	5f                   	pop    rdi
   1400065fc:	41 5c                	pop    r12
   1400065fe:	41 5d                	pop    r13
   140006600:	5d                   	pop    rbp
   140006601:	c3                   	ret
   140006602:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140006608:	45 89 4a 18          	mov    DWORD PTR [r10+0x18],r9d
   14000660c:	45 85 c9             	test   r9d,r9d
   14000660f:	0f 84 1a ff ff ff    	je     14000652f <__rshift_D2A+0x1f>
   140006615:	4c 89 e8             	mov    rax,r13
   140006618:	eb a1                	jmp    1400065bb <__rshift_D2A+0xab>
   14000661a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000140006620 <__trailz_D2A>:
   140006620:	48 63 51 14          	movsxd rdx,DWORD PTR [rcx+0x14]
   140006624:	48 8d 41 18          	lea    rax,[rcx+0x18]
   140006628:	48 8d 0c 90          	lea    rcx,[rax+rdx*4]
   14000662c:	31 d2                	xor    edx,edx
   14000662e:	48 39 c8             	cmp    rax,rcx
   140006631:	72 11                	jb     140006644 <__trailz_D2A+0x24>
   140006633:	eb 22                	jmp    140006657 <__trailz_D2A+0x37>
   140006635:	0f 1f 00             	nop    DWORD PTR [rax]
   140006638:	48 83 c0 04          	add    rax,0x4
   14000663c:	83 c2 20             	add    edx,0x20
   14000663f:	48 39 c8             	cmp    rax,rcx
   140006642:	73 13                	jae    140006657 <__trailz_D2A+0x37>
   140006644:	44 8b 00             	mov    r8d,DWORD PTR [rax]
   140006647:	45 85 c0             	test   r8d,r8d
   14000664a:	74 ec                	je     140006638 <__trailz_D2A+0x18>
   14000664c:	48 39 c8             	cmp    rax,rcx
   14000664f:	73 06                	jae    140006657 <__trailz_D2A+0x37>
   140006651:	f3 0f bc 00          	tzcnt  eax,DWORD PTR [rax]
   140006655:	01 c2                	add    edx,eax
   140006657:	89 d0                	mov    eax,edx
   140006659:	c3                   	ret
   14000665a:	90                   	nop
   14000665b:	90                   	nop
   14000665c:	90                   	nop
   14000665d:	90                   	nop
   14000665e:	90                   	nop
   14000665f:	90                   	nop

0000000140006660 <dtoa_lock>:
   140006660:	55                   	push   rbp
   140006661:	57                   	push   rdi
   140006662:	56                   	push   rsi
   140006663:	53                   	push   rbx
   140006664:	48 83 ec 28          	sub    rsp,0x28
   140006668:	48 8d 6c 24 20       	lea    rbp,[rsp+0x20]
   14000666d:	8b 05 7d 64 00 00    	mov    eax,DWORD PTR [rip+0x647d]        # 14000caf0 <dtoa_CS_init>
   140006673:	89 ce                	mov    esi,ecx
   140006675:	83 f8 02             	cmp    eax,0x2
   140006678:	0f 84 c2 00 00 00    	je     140006740 <dtoa_lock+0xe0>
   14000667e:	85 c0                	test   eax,eax
   140006680:	74 36                	je     1400066b8 <dtoa_lock+0x58>
   140006682:	83 f8 01             	cmp    eax,0x1
   140006685:	75 24                	jne    1400066ab <dtoa_lock+0x4b>
   140006687:	48 8b 1d 7a 6b 00 00 	mov    rbx,QWORD PTR [rip+0x6b7a]        # 14000d208 <__imp_Sleep>
   14000668e:	66 90                	xchg   ax,ax
   140006690:	b9 01 00 00 00       	mov    ecx,0x1
   140006695:	ff d3                	call   rbx
   140006697:	8b 05 53 64 00 00    	mov    eax,DWORD PTR [rip+0x6453]        # 14000caf0 <dtoa_CS_init>
   14000669d:	83 f8 01             	cmp    eax,0x1
   1400066a0:	74 ee                	je     140006690 <dtoa_lock+0x30>
   1400066a2:	83 f8 02             	cmp    eax,0x2
   1400066a5:	0f 84 95 00 00 00    	je     140006740 <dtoa_lock+0xe0>
   1400066ab:	48 83 c4 28          	add    rsp,0x28
   1400066af:	5b                   	pop    rbx
   1400066b0:	5e                   	pop    rsi
   1400066b1:	5f                   	pop    rdi
   1400066b2:	5d                   	pop    rbp
   1400066b3:	c3                   	ret
   1400066b4:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   1400066b8:	b8 01 00 00 00       	mov    eax,0x1
   1400066bd:	87 05 2d 64 00 00    	xchg   DWORD PTR [rip+0x642d],eax        # 14000caf0 <dtoa_CS_init>
   1400066c3:	85 c0                	test   eax,eax
   1400066c5:	75 51                	jne    140006718 <dtoa_lock+0xb8>
   1400066c7:	48 8d 1d 32 64 00 00 	lea    rbx,[rip+0x6432]        # 14000cb00 <dtoa_CritSec>
   1400066ce:	48 8b 3d 0b 6b 00 00 	mov    rdi,QWORD PTR [rip+0x6b0b]        # 14000d1e0 <__imp_InitializeCriticalSection>
   1400066d5:	48 89 d9             	mov    rcx,rbx
   1400066d8:	ff d7                	call   rdi
   1400066da:	48 8d 4b 28          	lea    rcx,[rbx+0x28]
   1400066de:	ff d7                	call   rdi
   1400066e0:	48 8d 0d 69 00 00 00 	lea    rcx,[rip+0x69]        # 140006750 <dtoa_lock_cleanup>
   1400066e7:	e8 54 ad ff ff       	call   140001440 <atexit>
   1400066ec:	c7 05 fa 63 00 00 02 	mov    DWORD PTR [rip+0x63fa],0x2        # 14000caf0 <dtoa_CS_init>
   1400066f3:	00 00 00 
   1400066f6:	48 89 f1             	mov    rcx,rsi
   1400066f9:	48 f7 d9             	neg    rcx
   1400066fc:	83 e1 28             	and    ecx,0x28
   1400066ff:	48 01 d9             	add    rcx,rbx
   140006702:	48 83 c4 28          	add    rsp,0x28
   140006706:	5b                   	pop    rbx
   140006707:	5e                   	pop    rsi
   140006708:	5f                   	pop    rdi
   140006709:	5d                   	pop    rbp
   14000670a:	48 ff 25 bf 6a 00 00 	rex.W jmp QWORD PTR [rip+0x6abf]        # 14000d1d0 <__imp_EnterCriticalSection>
   140006711:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140006718:	48 8d 1d e1 63 00 00 	lea    rbx,[rip+0x63e1]        # 14000cb00 <dtoa_CritSec>
   14000671f:	83 f8 02             	cmp    eax,0x2
   140006722:	74 c8                	je     1400066ec <dtoa_lock+0x8c>
   140006724:	8b 05 c6 63 00 00    	mov    eax,DWORD PTR [rip+0x63c6]        # 14000caf0 <dtoa_CS_init>
   14000672a:	83 f8 01             	cmp    eax,0x1
   14000672d:	0f 84 54 ff ff ff    	je     140006687 <dtoa_lock+0x27>
   140006733:	e9 6a ff ff ff       	jmp    1400066a2 <dtoa_lock+0x42>
   140006738:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   14000673f:	00 
   140006740:	48 8d 1d b9 63 00 00 	lea    rbx,[rip+0x63b9]        # 14000cb00 <dtoa_CritSec>
   140006747:	eb ad                	jmp    1400066f6 <dtoa_lock+0x96>
   140006749:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000140006750 <dtoa_lock_cleanup>:
   140006750:	55                   	push   rbp
   140006751:	53                   	push   rbx
   140006752:	48 83 ec 28          	sub    rsp,0x28
   140006756:	48 8d 6c 24 20       	lea    rbp,[rsp+0x20]
   14000675b:	b8 03 00 00 00       	mov    eax,0x3
   140006760:	87 05 8a 63 00 00    	xchg   DWORD PTR [rip+0x638a],eax        # 14000caf0 <dtoa_CS_init>
   140006766:	83 f8 02             	cmp    eax,0x2
   140006769:	74 0d                	je     140006778 <dtoa_lock_cleanup+0x28>
   14000676b:	48 83 c4 28          	add    rsp,0x28
   14000676f:	5b                   	pop    rbx
   140006770:	5d                   	pop    rbp
   140006771:	c3                   	ret
   140006772:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140006778:	48 8b 1d 49 6a 00 00 	mov    rbx,QWORD PTR [rip+0x6a49]        # 14000d1c8 <__IAT_start__>
   14000677f:	48 8d 0d 7a 63 00 00 	lea    rcx,[rip+0x637a]        # 14000cb00 <dtoa_CritSec>
   140006786:	ff d3                	call   rbx
   140006788:	48 8d 0d 99 63 00 00 	lea    rcx,[rip+0x6399]        # 14000cb28 <dtoa_CritSec+0x28>
   14000678f:	48 89 d8             	mov    rax,rbx
   140006792:	48 83 c4 28          	add    rsp,0x28
   140006796:	5b                   	pop    rbx
   140006797:	5d                   	pop    rbp
   140006798:	48 ff e0             	rex.W jmp rax
   14000679b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000001400067a0 <__Balloc_D2A>:
   1400067a0:	55                   	push   rbp
   1400067a1:	56                   	push   rsi
   1400067a2:	53                   	push   rbx
   1400067a3:	48 83 ec 30          	sub    rsp,0x30
   1400067a7:	48 8d 6c 24 30       	lea    rbp,[rsp+0x30]
   1400067ac:	89 cb                	mov    ebx,ecx
   1400067ae:	31 c9                	xor    ecx,ecx
   1400067b0:	e8 ab fe ff ff       	call   140006660 <dtoa_lock>
   1400067b5:	83 fb 09             	cmp    ebx,0x9
   1400067b8:	7f 3e                	jg     1400067f8 <__Balloc_D2A+0x58>
   1400067ba:	48 8d 15 df 62 00 00 	lea    rdx,[rip+0x62df]        # 14000caa0 <freelist>
   1400067c1:	48 63 cb             	movsxd rcx,ebx
   1400067c4:	48 8b 04 ca          	mov    rax,QWORD PTR [rdx+rcx*8]
   1400067c8:	48 85 c0             	test   rax,rax
   1400067cb:	74 7b                	je     140006848 <__Balloc_D2A+0xa8>
   1400067cd:	4c 8b 00             	mov    r8,QWORD PTR [rax]
   1400067d0:	83 3d 19 63 00 00 02 	cmp    DWORD PTR [rip+0x6319],0x2        # 14000caf0 <dtoa_CS_init>
   1400067d7:	4c 89 04 ca          	mov    QWORD PTR [rdx+rcx*8],r8
   1400067db:	75 54                	jne    140006831 <__Balloc_D2A+0x91>
   1400067dd:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   1400067e1:	48 8d 0d 18 63 00 00 	lea    rcx,[rip+0x6318]        # 14000cb00 <dtoa_CritSec>
   1400067e8:	ff 15 02 6a 00 00    	call   QWORD PTR [rip+0x6a02]        # 14000d1f0 <__imp_LeaveCriticalSection>
   1400067ee:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   1400067f2:	eb 3d                	jmp    140006831 <__Balloc_D2A+0x91>
   1400067f4:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   1400067f8:	89 d9                	mov    ecx,ebx
   1400067fa:	be 01 00 00 00       	mov    esi,0x1
   1400067ff:	d3 e6                	shl    esi,cl
   140006801:	8d 46 ff             	lea    eax,[rsi-0x1]
   140006804:	48 98                	cdqe
   140006806:	48 8d 0c 85 27 00 00 	lea    rcx,[rax*4+0x27]
   14000680d:	00 
   14000680e:	48 c1 e9 03          	shr    rcx,0x3
   140006812:	89 c9                	mov    ecx,ecx
   140006814:	48 c1 e1 03          	shl    rcx,0x3
   140006818:	e8 c3 12 00 00       	call   140007ae0 <malloc>
   14000681d:	48 85 c0             	test   rax,rax
   140006820:	74 17                	je     140006839 <__Balloc_D2A+0x99>
   140006822:	83 3d c7 62 00 00 02 	cmp    DWORD PTR [rip+0x62c7],0x2        # 14000caf0 <dtoa_CS_init>
   140006829:	89 58 08             	mov    DWORD PTR [rax+0x8],ebx
   14000682c:	89 70 0c             	mov    DWORD PTR [rax+0xc],esi
   14000682f:	74 ac                	je     1400067dd <__Balloc_D2A+0x3d>
   140006831:	48 c7 40 10 00 00 00 	mov    QWORD PTR [rax+0x10],0x0
   140006838:	00 
   140006839:	48 83 c4 30          	add    rsp,0x30
   14000683d:	5b                   	pop    rbx
   14000683e:	5e                   	pop    rsi
   14000683f:	5d                   	pop    rbp
   140006840:	c3                   	ret
   140006841:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140006848:	89 d9                	mov    ecx,ebx
   14000684a:	be 01 00 00 00       	mov    esi,0x1
   14000684f:	4c 8d 05 4a 59 00 00 	lea    r8,[rip+0x594a]        # 14000c1a0 <private_mem>
   140006856:	d3 e6                	shl    esi,cl
   140006858:	8d 46 ff             	lea    eax,[rsi-0x1]
   14000685b:	48 98                	cdqe
   14000685d:	48 8d 0c 85 27 00 00 	lea    rcx,[rax*4+0x27]
   140006864:	00 
   140006865:	48 8b 05 f4 17 00 00 	mov    rax,QWORD PTR [rip+0x17f4]        # 140008060 <pmem_next>
   14000686c:	48 c1 e9 03          	shr    rcx,0x3
   140006870:	48 89 c2             	mov    rdx,rax
   140006873:	4c 29 c2             	sub    rdx,r8
   140006876:	48 c1 fa 03          	sar    rdx,0x3
   14000687a:	48 01 ca             	add    rdx,rcx
   14000687d:	48 81 fa 20 01 00 00 	cmp    rdx,0x120
   140006884:	77 8e                	ja     140006814 <__Balloc_D2A+0x74>
   140006886:	48 8d 14 c8          	lea    rdx,[rax+rcx*8]
   14000688a:	48 89 15 cf 17 00 00 	mov    QWORD PTR [rip+0x17cf],rdx        # 140008060 <pmem_next>
   140006891:	eb 8f                	jmp    140006822 <__Balloc_D2A+0x82>
   140006893:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
   14000689a:	00 00 00 00 
   14000689e:	66 90                	xchg   ax,ax

00000001400068a0 <__Bfree_D2A>:
   1400068a0:	55                   	push   rbp
   1400068a1:	53                   	push   rbx
   1400068a2:	48 83 ec 28          	sub    rsp,0x28
   1400068a6:	48 8d 6c 24 20       	lea    rbp,[rsp+0x20]
   1400068ab:	48 89 cb             	mov    rbx,rcx
   1400068ae:	48 85 c9             	test   rcx,rcx
   1400068b1:	74 3b                	je     1400068ee <__Bfree_D2A+0x4e>
   1400068b3:	83 79 08 09          	cmp    DWORD PTR [rcx+0x8],0x9
   1400068b7:	7e 0f                	jle    1400068c8 <__Bfree_D2A+0x28>
   1400068b9:	48 83 c4 28          	add    rsp,0x28
   1400068bd:	5b                   	pop    rbx
   1400068be:	5d                   	pop    rbp
   1400068bf:	e9 04 12 00 00       	jmp    140007ac8 <free>
   1400068c4:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   1400068c8:	31 c9                	xor    ecx,ecx
   1400068ca:	e8 91 fd ff ff       	call   140006660 <dtoa_lock>
   1400068cf:	48 63 53 08          	movsxd rdx,DWORD PTR [rbx+0x8]
   1400068d3:	48 8d 05 c6 61 00 00 	lea    rax,[rip+0x61c6]        # 14000caa0 <freelist>
   1400068da:	83 3d 0f 62 00 00 02 	cmp    DWORD PTR [rip+0x620f],0x2        # 14000caf0 <dtoa_CS_init>
   1400068e1:	48 8b 0c d0          	mov    rcx,QWORD PTR [rax+rdx*8]
   1400068e5:	48 89 1c d0          	mov    QWORD PTR [rax+rdx*8],rbx
   1400068e9:	48 89 0b             	mov    QWORD PTR [rbx],rcx
   1400068ec:	74 0a                	je     1400068f8 <__Bfree_D2A+0x58>
   1400068ee:	48 83 c4 28          	add    rsp,0x28
   1400068f2:	5b                   	pop    rbx
   1400068f3:	5d                   	pop    rbp
   1400068f4:	c3                   	ret
   1400068f5:	0f 1f 00             	nop    DWORD PTR [rax]
   1400068f8:	48 8d 0d 01 62 00 00 	lea    rcx,[rip+0x6201]        # 14000cb00 <dtoa_CritSec>
   1400068ff:	48 83 c4 28          	add    rsp,0x28
   140006903:	5b                   	pop    rbx
   140006904:	5d                   	pop    rbp
   140006905:	48 ff 25 e4 68 00 00 	rex.W jmp QWORD PTR [rip+0x68e4]        # 14000d1f0 <__imp_LeaveCriticalSection>
   14000690c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000140006910 <__multadd_D2A>:
   140006910:	55                   	push   rbp
   140006911:	41 54                	push   r12
   140006913:	57                   	push   rdi
   140006914:	56                   	push   rsi
   140006915:	53                   	push   rbx
   140006916:	48 83 ec 20          	sub    rsp,0x20
   14000691a:	48 8d 6c 24 20       	lea    rbp,[rsp+0x20]
   14000691f:	8b 79 14             	mov    edi,DWORD PTR [rcx+0x14]
   140006922:	48 89 cb             	mov    rbx,rcx
   140006925:	49 63 f0             	movsxd rsi,r8d
   140006928:	48 63 d2             	movsxd rdx,edx
   14000692b:	31 c9                	xor    ecx,ecx
   14000692d:	0f 1f 00             	nop    DWORD PTR [rax]
   140006930:	8b 44 8b 18          	mov    eax,DWORD PTR [rbx+rcx*4+0x18]
   140006934:	48 0f af c2          	imul   rax,rdx
   140006938:	48 01 f0             	add    rax,rsi
   14000693b:	89 44 8b 18          	mov    DWORD PTR [rbx+rcx*4+0x18],eax
   14000693f:	48 89 c6             	mov    rsi,rax
   140006942:	48 83 c1 01          	add    rcx,0x1
   140006946:	48 c1 ee 20          	shr    rsi,0x20
   14000694a:	39 cf                	cmp    edi,ecx
   14000694c:	7f e2                	jg     140006930 <__multadd_D2A+0x20>
   14000694e:	49 89 dc             	mov    r12,rbx
   140006951:	48 85 f6             	test   rsi,rsi
   140006954:	74 15                	je     14000696b <__multadd_D2A+0x5b>
   140006956:	39 7b 0c             	cmp    DWORD PTR [rbx+0xc],edi
   140006959:	7e 25                	jle    140006980 <__multadd_D2A+0x70>
   14000695b:	48 63 c7             	movsxd rax,edi
   14000695e:	83 c7 01             	add    edi,0x1
   140006961:	49 89 dc             	mov    r12,rbx
   140006964:	89 74 83 18          	mov    DWORD PTR [rbx+rax*4+0x18],esi
   140006968:	89 7b 14             	mov    DWORD PTR [rbx+0x14],edi
   14000696b:	4c 89 e0             	mov    rax,r12
   14000696e:	48 83 c4 20          	add    rsp,0x20
   140006972:	5b                   	pop    rbx
   140006973:	5e                   	pop    rsi
   140006974:	5f                   	pop    rdi
   140006975:	41 5c                	pop    r12
   140006977:	5d                   	pop    rbp
   140006978:	c3                   	ret
   140006979:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140006980:	8b 43 08             	mov    eax,DWORD PTR [rbx+0x8]
   140006983:	8d 48 01             	lea    ecx,[rax+0x1]
   140006986:	e8 15 fe ff ff       	call   1400067a0 <__Balloc_D2A>
   14000698b:	49 89 c4             	mov    r12,rax
   14000698e:	48 85 c0             	test   rax,rax
   140006991:	74 d8                	je     14000696b <__multadd_D2A+0x5b>
   140006993:	48 8d 48 10          	lea    rcx,[rax+0x10]
   140006997:	48 63 43 14          	movsxd rax,DWORD PTR [rbx+0x14]
   14000699b:	48 8d 53 10          	lea    rdx,[rbx+0x10]
   14000699f:	4c 8d 04 85 08 00 00 	lea    r8,[rax*4+0x8]
   1400069a6:	00 
   1400069a7:	e8 3c 11 00 00       	call   140007ae8 <memcpy>
   1400069ac:	48 89 d9             	mov    rcx,rbx
   1400069af:	4c 89 e3             	mov    rbx,r12
   1400069b2:	e8 e9 fe ff ff       	call   1400068a0 <__Bfree_D2A>
   1400069b7:	48 63 c7             	movsxd rax,edi
   1400069ba:	83 c7 01             	add    edi,0x1
   1400069bd:	49 89 dc             	mov    r12,rbx
   1400069c0:	89 74 83 18          	mov    DWORD PTR [rbx+rax*4+0x18],esi
   1400069c4:	89 7b 14             	mov    DWORD PTR [rbx+0x14],edi
   1400069c7:	eb a2                	jmp    14000696b <__multadd_D2A+0x5b>
   1400069c9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000001400069d0 <__i2b_D2A>:
   1400069d0:	55                   	push   rbp
   1400069d1:	53                   	push   rbx
   1400069d2:	48 83 ec 38          	sub    rsp,0x38
   1400069d6:	48 8d 6c 24 30       	lea    rbp,[rsp+0x30]
   1400069db:	89 cb                	mov    ebx,ecx
   1400069dd:	31 c9                	xor    ecx,ecx
   1400069df:	e8 7c fc ff ff       	call   140006660 <dtoa_lock>
   1400069e4:	48 8b 05 bd 60 00 00 	mov    rax,QWORD PTR [rip+0x60bd]        # 14000caa8 <freelist+0x8>
   1400069eb:	48 85 c0             	test   rax,rax
   1400069ee:	74 30                	je     140006a20 <__i2b_D2A+0x50>
   1400069f0:	48 8b 10             	mov    rdx,QWORD PTR [rax]
   1400069f3:	83 3d f6 60 00 00 02 	cmp    DWORD PTR [rip+0x60f6],0x2        # 14000caf0 <dtoa_CS_init>
   1400069fa:	48 89 15 a7 60 00 00 	mov    QWORD PTR [rip+0x60a7],rdx        # 14000caa8 <freelist+0x8>
   140006a01:	74 65                	je     140006a68 <__i2b_D2A+0x98>
   140006a03:	48 8b 15 26 2d 00 00 	mov    rdx,QWORD PTR [rip+0x2d26]        # 140009730 <__bigtens_D2A+0x30>
   140006a0a:	89 58 18             	mov    DWORD PTR [rax+0x18],ebx
   140006a0d:	48 89 50 10          	mov    QWORD PTR [rax+0x10],rdx
   140006a11:	48 83 c4 38          	add    rsp,0x38
   140006a15:	5b                   	pop    rbx
   140006a16:	5d                   	pop    rbp
   140006a17:	c3                   	ret
   140006a18:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   140006a1f:	00 
   140006a20:	48 8b 05 39 16 00 00 	mov    rax,QWORD PTR [rip+0x1639]        # 140008060 <pmem_next>
   140006a27:	48 8d 0d 72 57 00 00 	lea    rcx,[rip+0x5772]        # 14000c1a0 <private_mem>
   140006a2e:	48 89 c2             	mov    rdx,rax
   140006a31:	48 29 ca             	sub    rdx,rcx
   140006a34:	48 c1 fa 03          	sar    rdx,0x3
   140006a38:	48 83 c2 05          	add    rdx,0x5
   140006a3c:	48 81 fa 20 01 00 00 	cmp    rdx,0x120
   140006a43:	76 3b                	jbe    140006a80 <__i2b_D2A+0xb0>
   140006a45:	b9 28 00 00 00       	mov    ecx,0x28
   140006a4a:	e8 91 10 00 00       	call   140007ae0 <malloc>
   140006a4f:	48 85 c0             	test   rax,rax
   140006a52:	74 bd                	je     140006a11 <__i2b_D2A+0x41>
   140006a54:	48 8b 15 cd 2c 00 00 	mov    rdx,QWORD PTR [rip+0x2ccd]        # 140009728 <__bigtens_D2A+0x28>
   140006a5b:	83 3d 8e 60 00 00 02 	cmp    DWORD PTR [rip+0x608e],0x2        # 14000caf0 <dtoa_CS_init>
   140006a62:	48 89 50 08          	mov    QWORD PTR [rax+0x8],rdx
   140006a66:	75 9b                	jne    140006a03 <__i2b_D2A+0x33>
   140006a68:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   140006a6c:	48 8d 0d 8d 60 00 00 	lea    rcx,[rip+0x608d]        # 14000cb00 <dtoa_CritSec>
   140006a73:	ff 15 77 67 00 00    	call   QWORD PTR [rip+0x6777]        # 14000d1f0 <__imp_LeaveCriticalSection>
   140006a79:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140006a7d:	eb 84                	jmp    140006a03 <__i2b_D2A+0x33>
   140006a7f:	90                   	nop
   140006a80:	48 8d 50 28          	lea    rdx,[rax+0x28]
   140006a84:	48 89 15 d5 15 00 00 	mov    QWORD PTR [rip+0x15d5],rdx        # 140008060 <pmem_next>
   140006a8b:	eb c7                	jmp    140006a54 <__i2b_D2A+0x84>
   140006a8d:	0f 1f 00             	nop    DWORD PTR [rax]

0000000140006a90 <__mult_D2A>:
   140006a90:	55                   	push   rbp
   140006a91:	41 57                	push   r15
   140006a93:	41 56                	push   r14
   140006a95:	41 55                	push   r13
   140006a97:	41 54                	push   r12
   140006a99:	57                   	push   rdi
   140006a9a:	56                   	push   rsi
   140006a9b:	53                   	push   rbx
   140006a9c:	48 83 ec 38          	sub    rsp,0x38
   140006aa0:	48 8d 6c 24 30       	lea    rbp,[rsp+0x30]
   140006aa5:	4c 63 71 14          	movsxd r14,DWORD PTR [rcx+0x14]
   140006aa9:	4c 63 6a 14          	movsxd r13,DWORD PTR [rdx+0x14]
   140006aad:	49 89 c9             	mov    r9,rcx
   140006ab0:	49 89 d7             	mov    r15,rdx
   140006ab3:	45 39 ee             	cmp    r14d,r13d
   140006ab6:	7c 0f                	jl     140006ac7 <__mult_D2A+0x37>
   140006ab8:	44 89 e8             	mov    eax,r13d
   140006abb:	49 89 cf             	mov    r15,rcx
   140006abe:	4d 63 ee             	movsxd r13,r14d
   140006ac1:	49 89 d1             	mov    r9,rdx
   140006ac4:	4c 63 f0             	movsxd r14,eax
   140006ac7:	41 8b 4f 08          	mov    ecx,DWORD PTR [r15+0x8]
   140006acb:	43 8d 5c 35 00       	lea    ebx,[r13+r14*1+0x0]
   140006ad0:	41 39 5f 0c          	cmp    DWORD PTR [r15+0xc],ebx
   140006ad4:	7d 03                	jge    140006ad9 <__mult_D2A+0x49>
   140006ad6:	83 c1 01             	add    ecx,0x1
   140006ad9:	4c 89 4d 50          	mov    QWORD PTR [rbp+0x50],r9
   140006add:	e8 be fc ff ff       	call   1400067a0 <__Balloc_D2A>
   140006ae2:	48 89 c7             	mov    rdi,rax
   140006ae5:	48 85 c0             	test   rax,rax
   140006ae8:	0f 84 f5 00 00 00    	je     140006be3 <__mult_D2A+0x153>
   140006aee:	4c 8d 60 18          	lea    r12,[rax+0x18]
   140006af2:	48 63 c3             	movsxd rax,ebx
   140006af5:	4c 8b 4d 50          	mov    r9,QWORD PTR [rbp+0x50]
   140006af9:	49 8d 34 84          	lea    rsi,[r12+rax*4]
   140006afd:	49 39 f4             	cmp    r12,rsi
   140006b00:	73 28                	jae    140006b2a <__mult_D2A+0x9a>
   140006b02:	48 89 f0             	mov    rax,rsi
   140006b05:	31 d2                	xor    edx,edx
   140006b07:	4c 89 e1             	mov    rcx,r12
   140006b0a:	4c 89 4d 50          	mov    QWORD PTR [rbp+0x50],r9
   140006b0e:	48 29 f8             	sub    rax,rdi
   140006b11:	48 83 e8 19          	sub    rax,0x19
   140006b15:	48 c1 e8 02          	shr    rax,0x2
   140006b19:	4c 8d 04 85 04 00 00 	lea    r8,[rax*4+0x4]
   140006b20:	00 
   140006b21:	e8 ca 0f 00 00       	call   140007af0 <memset>
   140006b26:	4c 8b 4d 50          	mov    r9,QWORD PTR [rbp+0x50]
   140006b2a:	49 83 c1 18          	add    r9,0x18
   140006b2e:	4d 8d 5f 18          	lea    r11,[r15+0x18]
   140006b32:	4f 8d 34 b1          	lea    r14,[r9+r14*4]
   140006b36:	4f 8d 2c ab          	lea    r13,[r11+r13*4]
   140006b3a:	4d 39 f1             	cmp    r9,r14
   140006b3d:	0f 83 85 00 00 00    	jae    140006bc8 <__mult_D2A+0x138>
   140006b43:	4c 89 e8             	mov    rax,r13
   140006b46:	4d 8d 57 19          	lea    r10,[r15+0x19]
   140006b4a:	4c 29 f8             	sub    rax,r15
   140006b4d:	48 83 e8 19          	sub    rax,0x19
   140006b51:	48 c1 e8 02          	shr    rax,0x2
   140006b55:	4d 39 d5             	cmp    r13,r10
   140006b58:	48 8d 14 85 04 00 00 	lea    rdx,[rax*4+0x4]
   140006b5f:	00 
   140006b60:	b8 04 00 00 00       	mov    eax,0x4
   140006b65:	48 0f 43 c2          	cmovae rax,rdx
   140006b69:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   140006b6d:	eb 0a                	jmp    140006b79 <__mult_D2A+0xe9>
   140006b6f:	90                   	nop
   140006b70:	49 83 c4 04          	add    r12,0x4
   140006b74:	4d 39 f1             	cmp    r9,r14
   140006b77:	73 4f                	jae    140006bc8 <__mult_D2A+0x138>
   140006b79:	45 8b 11             	mov    r10d,DWORD PTR [r9]
   140006b7c:	49 83 c1 04          	add    r9,0x4
   140006b80:	45 85 d2             	test   r10d,r10d
   140006b83:	74 eb                	je     140006b70 <__mult_D2A+0xe0>
   140006b85:	4c 89 e1             	mov    rcx,r12
   140006b88:	4c 89 da             	mov    rdx,r11
   140006b8b:	45 31 c0             	xor    r8d,r8d
   140006b8e:	66 90                	xchg   ax,ax
   140006b90:	8b 02                	mov    eax,DWORD PTR [rdx]
   140006b92:	44 8b 39             	mov    r15d,DWORD PTR [rcx]
   140006b95:	48 83 c2 04          	add    rdx,0x4
   140006b99:	48 83 c1 04          	add    rcx,0x4
   140006b9d:	49 0f af c2          	imul   rax,r10
   140006ba1:	4c 01 f8             	add    rax,r15
   140006ba4:	4c 01 c0             	add    rax,r8
   140006ba7:	49 89 c0             	mov    r8,rax
   140006baa:	89 41 fc             	mov    DWORD PTR [rcx-0x4],eax
   140006bad:	49 c1 e8 20          	shr    r8,0x20
   140006bb1:	4c 39 ea             	cmp    rdx,r13
   140006bb4:	72 da                	jb     140006b90 <__mult_D2A+0x100>
   140006bb6:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140006bba:	49 83 c4 04          	add    r12,0x4
   140006bbe:	45 89 44 04 fc       	mov    DWORD PTR [r12+rax*1-0x4],r8d
   140006bc3:	4d 39 f1             	cmp    r9,r14
   140006bc6:	72 b1                	jb     140006b79 <__mult_D2A+0xe9>
   140006bc8:	85 db                	test   ebx,ebx
   140006bca:	7f 09                	jg     140006bd5 <__mult_D2A+0x145>
   140006bcc:	eb 12                	jmp    140006be0 <__mult_D2A+0x150>
   140006bce:	66 90                	xchg   ax,ax
   140006bd0:	83 eb 01             	sub    ebx,0x1
   140006bd3:	74 0b                	je     140006be0 <__mult_D2A+0x150>
   140006bd5:	8b 46 fc             	mov    eax,DWORD PTR [rsi-0x4]
   140006bd8:	48 83 ee 04          	sub    rsi,0x4
   140006bdc:	85 c0                	test   eax,eax
   140006bde:	74 f0                	je     140006bd0 <__mult_D2A+0x140>
   140006be0:	89 5f 14             	mov    DWORD PTR [rdi+0x14],ebx
   140006be3:	48 89 f8             	mov    rax,rdi
   140006be6:	48 83 c4 38          	add    rsp,0x38
   140006bea:	5b                   	pop    rbx
   140006beb:	5e                   	pop    rsi
   140006bec:	5f                   	pop    rdi
   140006bed:	41 5c                	pop    r12
   140006bef:	41 5d                	pop    r13
   140006bf1:	41 5e                	pop    r14
   140006bf3:	41 5f                	pop    r15
   140006bf5:	5d                   	pop    rbp
   140006bf6:	c3                   	ret
   140006bf7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
   140006bfe:	00 00 

0000000140006c00 <__pow5mult_D2A>:
   140006c00:	55                   	push   rbp
   140006c01:	41 54                	push   r12
   140006c03:	57                   	push   rdi
   140006c04:	56                   	push   rsi
   140006c05:	53                   	push   rbx
   140006c06:	48 83 ec 20          	sub    rsp,0x20
   140006c0a:	48 8d 6c 24 20       	lea    rbp,[rsp+0x20]
   140006c0f:	89 d0                	mov    eax,edx
   140006c11:	48 89 ce             	mov    rsi,rcx
   140006c14:	89 d3                	mov    ebx,edx
   140006c16:	83 e0 03             	and    eax,0x3
   140006c19:	0f 85 c1 00 00 00    	jne    140006ce0 <__pow5mult_D2A+0xe0>
   140006c1f:	c1 fb 02             	sar    ebx,0x2
   140006c22:	49 89 f4             	mov    r12,rsi
   140006c25:	74 53                	je     140006c7a <__pow5mult_D2A+0x7a>
   140006c27:	48 8b 3d 52 55 00 00 	mov    rdi,QWORD PTR [rip+0x5552]        # 14000c180 <p5s>
   140006c2e:	48 85 ff             	test   rdi,rdi
   140006c31:	0f 84 d9 00 00 00    	je     140006d10 <__pow5mult_D2A+0x110>
   140006c37:	49 89 f4             	mov    r12,rsi
   140006c3a:	eb 13                	jmp    140006c4f <__pow5mult_D2A+0x4f>
   140006c3c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140006c40:	d1 fb                	sar    ebx,1
   140006c42:	74 36                	je     140006c7a <__pow5mult_D2A+0x7a>
   140006c44:	48 8b 37             	mov    rsi,QWORD PTR [rdi]
   140006c47:	48 85 f6             	test   rsi,rsi
   140006c4a:	74 44                	je     140006c90 <__pow5mult_D2A+0x90>
   140006c4c:	48 89 f7             	mov    rdi,rsi
   140006c4f:	f6 c3 01             	test   bl,0x1
   140006c52:	74 ec                	je     140006c40 <__pow5mult_D2A+0x40>
   140006c54:	48 89 fa             	mov    rdx,rdi
   140006c57:	4c 89 e1             	mov    rcx,r12
   140006c5a:	e8 31 fe ff ff       	call   140006a90 <__mult_D2A>
   140006c5f:	48 89 c6             	mov    rsi,rax
   140006c62:	48 85 c0             	test   rax,rax
   140006c65:	0f 84 9d 00 00 00    	je     140006d08 <__pow5mult_D2A+0x108>
   140006c6b:	4c 89 e1             	mov    rcx,r12
   140006c6e:	49 89 f4             	mov    r12,rsi
   140006c71:	e8 2a fc ff ff       	call   1400068a0 <__Bfree_D2A>
   140006c76:	d1 fb                	sar    ebx,1
   140006c78:	75 ca                	jne    140006c44 <__pow5mult_D2A+0x44>
   140006c7a:	4c 89 e0             	mov    rax,r12
   140006c7d:	48 83 c4 20          	add    rsp,0x20
   140006c81:	5b                   	pop    rbx
   140006c82:	5e                   	pop    rsi
   140006c83:	5f                   	pop    rdi
   140006c84:	41 5c                	pop    r12
   140006c86:	5d                   	pop    rbp
   140006c87:	c3                   	ret
   140006c88:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   140006c8f:	00 
   140006c90:	b9 01 00 00 00       	mov    ecx,0x1
   140006c95:	e8 c6 f9 ff ff       	call   140006660 <dtoa_lock>
   140006c9a:	48 8b 37             	mov    rsi,QWORD PTR [rdi]
   140006c9d:	48 85 f6             	test   rsi,rsi
   140006ca0:	74 1e                	je     140006cc0 <__pow5mult_D2A+0xc0>
   140006ca2:	83 3d 47 5e 00 00 02 	cmp    DWORD PTR [rip+0x5e47],0x2        # 14000caf0 <dtoa_CS_init>
   140006ca9:	75 a1                	jne    140006c4c <__pow5mult_D2A+0x4c>
   140006cab:	48 8d 0d 76 5e 00 00 	lea    rcx,[rip+0x5e76]        # 14000cb28 <dtoa_CritSec+0x28>
   140006cb2:	ff 15 38 65 00 00    	call   QWORD PTR [rip+0x6538]        # 14000d1f0 <__imp_LeaveCriticalSection>
   140006cb8:	eb 92                	jmp    140006c4c <__pow5mult_D2A+0x4c>
   140006cba:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140006cc0:	48 89 fa             	mov    rdx,rdi
   140006cc3:	48 89 f9             	mov    rcx,rdi
   140006cc6:	e8 c5 fd ff ff       	call   140006a90 <__mult_D2A>
   140006ccb:	48 89 07             	mov    QWORD PTR [rdi],rax
   140006cce:	48 89 c6             	mov    rsi,rax
   140006cd1:	48 85 c0             	test   rax,rax
   140006cd4:	74 32                	je     140006d08 <__pow5mult_D2A+0x108>
   140006cd6:	48 c7 00 00 00 00 00 	mov    QWORD PTR [rax],0x0
   140006cdd:	eb c3                	jmp    140006ca2 <__pow5mult_D2A+0xa2>
   140006cdf:	90                   	nop
   140006ce0:	83 e8 01             	sub    eax,0x1
   140006ce3:	48 8d 15 f6 28 00 00 	lea    rdx,[rip+0x28f6]        # 1400095e0 <p05.0>
   140006cea:	45 31 c0             	xor    r8d,r8d
   140006ced:	48 98                	cdqe
   140006cef:	8b 14 82             	mov    edx,DWORD PTR [rdx+rax*4]
   140006cf2:	e8 19 fc ff ff       	call   140006910 <__multadd_D2A>
   140006cf7:	48 89 c6             	mov    rsi,rax
   140006cfa:	48 85 c0             	test   rax,rax
   140006cfd:	0f 85 1c ff ff ff    	jne    140006c1f <__pow5mult_D2A+0x1f>
   140006d03:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140006d08:	45 31 e4             	xor    r12d,r12d
   140006d0b:	e9 6a ff ff ff       	jmp    140006c7a <__pow5mult_D2A+0x7a>
   140006d10:	b9 01 00 00 00       	mov    ecx,0x1
   140006d15:	e8 46 f9 ff ff       	call   140006660 <dtoa_lock>
   140006d1a:	48 8b 3d 5f 54 00 00 	mov    rdi,QWORD PTR [rip+0x545f]        # 14000c180 <p5s>
   140006d21:	48 85 ff             	test   rdi,rdi
   140006d24:	74 1f                	je     140006d45 <__pow5mult_D2A+0x145>
   140006d26:	83 3d c3 5d 00 00 02 	cmp    DWORD PTR [rip+0x5dc3],0x2        # 14000caf0 <dtoa_CS_init>
   140006d2d:	0f 85 04 ff ff ff    	jne    140006c37 <__pow5mult_D2A+0x37>
   140006d33:	48 8d 0d ee 5d 00 00 	lea    rcx,[rip+0x5dee]        # 14000cb28 <dtoa_CritSec+0x28>
   140006d3a:	ff 15 b0 64 00 00    	call   QWORD PTR [rip+0x64b0]        # 14000d1f0 <__imp_LeaveCriticalSection>
   140006d40:	e9 f2 fe ff ff       	jmp    140006c37 <__pow5mult_D2A+0x37>
   140006d45:	b9 01 00 00 00       	mov    ecx,0x1
   140006d4a:	e8 51 fa ff ff       	call   1400067a0 <__Balloc_D2A>
   140006d4f:	48 89 c7             	mov    rdi,rax
   140006d52:	48 85 c0             	test   rax,rax
   140006d55:	74 1e                	je     140006d75 <__pow5mult_D2A+0x175>
   140006d57:	48 b8 01 00 00 00 71 	movabs rax,0x27100000001
   140006d5e:	02 00 00 
   140006d61:	48 89 3d 18 54 00 00 	mov    QWORD PTR [rip+0x5418],rdi        # 14000c180 <p5s>
   140006d68:	48 89 47 14          	mov    QWORD PTR [rdi+0x14],rax
   140006d6c:	48 c7 07 00 00 00 00 	mov    QWORD PTR [rdi],0x0
   140006d73:	eb b1                	jmp    140006d26 <__pow5mult_D2A+0x126>
   140006d75:	48 c7 05 00 54 00 00 	mov    QWORD PTR [rip+0x5400],0x0        # 14000c180 <p5s>
   140006d7c:	00 00 00 00 
   140006d80:	eb 86                	jmp    140006d08 <__pow5mult_D2A+0x108>
   140006d82:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
   140006d89:	00 00 00 00 
   140006d8d:	0f 1f 00             	nop    DWORD PTR [rax]

0000000140006d90 <__lshift_D2A>:
   140006d90:	55                   	push   rbp
   140006d91:	41 57                	push   r15
   140006d93:	41 56                	push   r14
   140006d95:	41 55                	push   r13
   140006d97:	41 54                	push   r12
   140006d99:	57                   	push   rdi
   140006d9a:	56                   	push   rsi
   140006d9b:	53                   	push   rbx
   140006d9c:	48 83 ec 28          	sub    rsp,0x28
   140006da0:	48 8d 6c 24 20       	lea    rbp,[rsp+0x20]
   140006da5:	49 89 cd             	mov    r13,rcx
   140006da8:	89 d6                	mov    esi,edx
   140006daa:	8b 49 08             	mov    ecx,DWORD PTR [rcx+0x8]
   140006dad:	41 89 d6             	mov    r14d,edx
   140006db0:	41 8b 5d 14          	mov    ebx,DWORD PTR [r13+0x14]
   140006db4:	c1 fe 05             	sar    esi,0x5
   140006db7:	41 8b 45 0c          	mov    eax,DWORD PTR [r13+0xc]
   140006dbb:	01 f3                	add    ebx,esi
   140006dbd:	44 8d 63 01          	lea    r12d,[rbx+0x1]
   140006dc1:	41 39 c4             	cmp    r12d,eax
   140006dc4:	7e 14                	jle    140006dda <__lshift_D2A+0x4a>
   140006dc6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   140006dcd:	00 00 00 
   140006dd0:	01 c0                	add    eax,eax
   140006dd2:	83 c1 01             	add    ecx,0x1
   140006dd5:	41 39 c4             	cmp    r12d,eax
   140006dd8:	7f f6                	jg     140006dd0 <__lshift_D2A+0x40>
   140006dda:	e8 c1 f9 ff ff       	call   1400067a0 <__Balloc_D2A>
   140006ddf:	49 89 c7             	mov    r15,rax
   140006de2:	48 85 c0             	test   rax,rax
   140006de5:	0f 84 a3 00 00 00    	je     140006e8e <__lshift_D2A+0xfe>
   140006deb:	48 8d 78 18          	lea    rdi,[rax+0x18]
   140006def:	85 f6                	test   esi,esi
   140006df1:	7e 14                	jle    140006e07 <__lshift_D2A+0x77>
   140006df3:	48 c1 e6 02          	shl    rsi,0x2
   140006df7:	48 89 f9             	mov    rcx,rdi
   140006dfa:	31 d2                	xor    edx,edx
   140006dfc:	49 89 f0             	mov    r8,rsi
   140006dff:	48 01 f7             	add    rdi,rsi
   140006e02:	e8 e9 0c 00 00       	call   140007af0 <memset>
   140006e07:	49 63 45 14          	movsxd rax,DWORD PTR [r13+0x14]
   140006e0b:	49 8d 75 18          	lea    rsi,[r13+0x18]
   140006e0f:	4c 8d 04 86          	lea    r8,[rsi+rax*4]
   140006e13:	41 83 e6 1f          	and    r14d,0x1f
   140006e17:	0f 84 8b 00 00 00    	je     140006ea8 <__lshift_D2A+0x118>
   140006e1d:	41 ba 20 00 00 00    	mov    r10d,0x20
   140006e23:	49 89 f9             	mov    r9,rdi
   140006e26:	31 d2                	xor    edx,edx
   140006e28:	45 29 f2             	sub    r10d,r14d
   140006e2b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140006e30:	8b 06                	mov    eax,DWORD PTR [rsi]
   140006e32:	44 89 f1             	mov    ecx,r14d
   140006e35:	49 83 c1 04          	add    r9,0x4
   140006e39:	48 83 c6 04          	add    rsi,0x4
   140006e3d:	d3 e0                	shl    eax,cl
   140006e3f:	44 89 d1             	mov    ecx,r10d
   140006e42:	09 d0                	or     eax,edx
   140006e44:	41 89 41 fc          	mov    DWORD PTR [r9-0x4],eax
   140006e48:	8b 56 fc             	mov    edx,DWORD PTR [rsi-0x4]
   140006e4b:	d3 ea                	shr    edx,cl
   140006e4d:	4c 39 c6             	cmp    rsi,r8
   140006e50:	72 de                	jb     140006e30 <__lshift_D2A+0xa0>
   140006e52:	4c 89 c0             	mov    rax,r8
   140006e55:	49 8d 4d 19          	lea    rcx,[r13+0x19]
   140006e59:	4c 29 e8             	sub    rax,r13
   140006e5c:	48 83 e8 19          	sub    rax,0x19
   140006e60:	48 c1 e8 02          	shr    rax,0x2
   140006e64:	49 39 c8             	cmp    r8,rcx
   140006e67:	b9 04 00 00 00       	mov    ecx,0x4
   140006e6c:	48 8d 04 85 04 00 00 	lea    rax,[rax*4+0x4]
   140006e73:	00 
   140006e74:	48 0f 42 c1          	cmovb  rax,rcx
   140006e78:	89 14 07             	mov    DWORD PTR [rdi+rax*1],edx
   140006e7b:	85 d2                	test   edx,edx
   140006e7d:	75 03                	jne    140006e82 <__lshift_D2A+0xf2>
   140006e7f:	41 89 dc             	mov    r12d,ebx
   140006e82:	45 89 67 14          	mov    DWORD PTR [r15+0x14],r12d
   140006e86:	4c 89 e9             	mov    rcx,r13
   140006e89:	e8 12 fa ff ff       	call   1400068a0 <__Bfree_D2A>
   140006e8e:	4c 89 f8             	mov    rax,r15
   140006e91:	48 83 c4 28          	add    rsp,0x28
   140006e95:	5b                   	pop    rbx
   140006e96:	5e                   	pop    rsi
   140006e97:	5f                   	pop    rdi
   140006e98:	41 5c                	pop    r12
   140006e9a:	41 5d                	pop    r13
   140006e9c:	41 5e                	pop    r14
   140006e9e:	41 5f                	pop    r15
   140006ea0:	5d                   	pop    rbp
   140006ea1:	c3                   	ret
   140006ea2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140006ea8:	a5                   	movs   DWORD PTR es:[rdi],DWORD PTR ds:[rsi]
   140006ea9:	4c 39 c6             	cmp    rsi,r8
   140006eac:	73 d1                	jae    140006e7f <__lshift_D2A+0xef>
   140006eae:	a5                   	movs   DWORD PTR es:[rdi],DWORD PTR ds:[rsi]
   140006eaf:	4c 39 c6             	cmp    rsi,r8
   140006eb2:	72 f4                	jb     140006ea8 <__lshift_D2A+0x118>
   140006eb4:	eb c9                	jmp    140006e7f <__lshift_D2A+0xef>
   140006eb6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   140006ebd:	00 00 00 

0000000140006ec0 <__cmp_D2A>:
   140006ec0:	48 63 42 14          	movsxd rax,DWORD PTR [rdx+0x14]
   140006ec4:	44 8b 49 14          	mov    r9d,DWORD PTR [rcx+0x14]
   140006ec8:	41 29 c1             	sub    r9d,eax
   140006ecb:	75 37                	jne    140006f04 <__cmp_D2A+0x44>
   140006ecd:	4c 8d 04 85 00 00 00 	lea    r8,[rax*4+0x0]
   140006ed4:	00 
   140006ed5:	48 83 c1 18          	add    rcx,0x18
   140006ed9:	4a 8d 04 01          	lea    rax,[rcx+r8*1]
   140006edd:	4a 8d 54 02 18       	lea    rdx,[rdx+r8*1+0x18]
   140006ee2:	eb 09                	jmp    140006eed <__cmp_D2A+0x2d>
   140006ee4:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140006ee8:	48 39 c1             	cmp    rcx,rax
   140006eeb:	73 17                	jae    140006f04 <__cmp_D2A+0x44>
   140006eed:	48 83 e8 04          	sub    rax,0x4
   140006ef1:	48 83 ea 04          	sub    rdx,0x4
   140006ef5:	44 8b 12             	mov    r10d,DWORD PTR [rdx]
   140006ef8:	44 39 10             	cmp    DWORD PTR [rax],r10d
   140006efb:	74 eb                	je     140006ee8 <__cmp_D2A+0x28>
   140006efd:	45 19 c9             	sbb    r9d,r9d
   140006f00:	41 83 c9 01          	or     r9d,0x1
   140006f04:	44 89 c8             	mov    eax,r9d
   140006f07:	c3                   	ret
   140006f08:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   140006f0f:	00 

0000000140006f10 <__diff_D2A>:
   140006f10:	55                   	push   rbp
   140006f11:	41 56                	push   r14
   140006f13:	41 55                	push   r13
   140006f15:	41 54                	push   r12
   140006f17:	57                   	push   rdi
   140006f18:	56                   	push   rsi
   140006f19:	53                   	push   rbx
   140006f1a:	48 83 ec 20          	sub    rsp,0x20
   140006f1e:	48 8d 6c 24 20       	lea    rbp,[rsp+0x20]
   140006f23:	48 63 42 14          	movsxd rax,DWORD PTR [rdx+0x14]
   140006f27:	48 89 cb             	mov    rbx,rcx
   140006f2a:	48 89 d6             	mov    rsi,rdx
   140006f2d:	39 41 14             	cmp    DWORD PTR [rcx+0x14],eax
   140006f30:	0f 85 52 01 00 00    	jne    140007088 <__diff_D2A+0x178>
   140006f36:	48 8d 14 85 00 00 00 	lea    rdx,[rax*4+0x0]
   140006f3d:	00 
   140006f3e:	48 8d 49 18          	lea    rcx,[rcx+0x18]
   140006f42:	48 8d 04 11          	lea    rax,[rcx+rdx*1]
   140006f46:	48 8d 54 16 18       	lea    rdx,[rsi+rdx*1+0x18]
   140006f4b:	eb 0c                	jmp    140006f59 <__diff_D2A+0x49>
   140006f4d:	0f 1f 00             	nop    DWORD PTR [rax]
   140006f50:	48 39 c1             	cmp    rcx,rax
   140006f53:	0f 83 47 01 00 00    	jae    1400070a0 <__diff_D2A+0x190>
   140006f59:	48 83 e8 04          	sub    rax,0x4
   140006f5d:	48 83 ea 04          	sub    rdx,0x4
   140006f61:	8b 3a                	mov    edi,DWORD PTR [rdx]
   140006f63:	39 38                	cmp    DWORD PTR [rax],edi
   140006f65:	74 e9                	je     140006f50 <__diff_D2A+0x40>
   140006f67:	bf 01 00 00 00       	mov    edi,0x1
   140006f6c:	72 0b                	jb     140006f79 <__diff_D2A+0x69>
   140006f6e:	48 89 f0             	mov    rax,rsi
   140006f71:	31 ff                	xor    edi,edi
   140006f73:	48 89 de             	mov    rsi,rbx
   140006f76:	48 89 c3             	mov    rbx,rax
   140006f79:	8b 4e 08             	mov    ecx,DWORD PTR [rsi+0x8]
   140006f7c:	e8 1f f8 ff ff       	call   1400067a0 <__Balloc_D2A>
   140006f81:	49 89 c1             	mov    r9,rax
   140006f84:	48 85 c0             	test   rax,rax
   140006f87:	0f 84 e6 00 00 00    	je     140007073 <__diff_D2A+0x163>
   140006f8d:	89 78 10             	mov    DWORD PTR [rax+0x10],edi
   140006f90:	48 63 46 14          	movsxd rax,DWORD PTR [rsi+0x14]
   140006f94:	4c 8d 6e 18          	lea    r13,[rsi+0x18]
   140006f98:	4d 8d 61 18          	lea    r12,[r9+0x18]
   140006f9c:	b9 18 00 00 00       	mov    ecx,0x18
   140006fa1:	31 d2                	xor    edx,edx
   140006fa3:	49 89 c2             	mov    r10,rax
   140006fa6:	4d 8d 5c 85 00       	lea    r11,[r13+rax*4+0x0]
   140006fab:	48 63 43 14          	movsxd rax,DWORD PTR [rbx+0x14]
   140006faf:	4c 8d 44 83 18       	lea    r8,[rbx+rax*4+0x18]
   140006fb4:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140006fb8:	8b 3c 0b             	mov    edi,DWORD PTR [rbx+rcx*1]
   140006fbb:	8b 04 0e             	mov    eax,DWORD PTR [rsi+rcx*1]
   140006fbe:	48 29 f8             	sub    rax,rdi
   140006fc1:	48 29 d0             	sub    rax,rdx
   140006fc4:	41 89 04 09          	mov    DWORD PTR [r9+rcx*1],eax
   140006fc8:	48 89 c2             	mov    rdx,rax
   140006fcb:	48 83 c1 04          	add    rcx,0x4
   140006fcf:	89 c7                	mov    edi,eax
   140006fd1:	48 c1 ea 20          	shr    rdx,0x20
   140006fd5:	48 8d 04 19          	lea    rax,[rcx+rbx*1]
   140006fd9:	83 e2 01             	and    edx,0x1
   140006fdc:	4c 39 c0             	cmp    rax,r8
   140006fdf:	72 d7                	jb     140006fb8 <__diff_D2A+0xa8>
   140006fe1:	48 8d 43 19          	lea    rax,[rbx+0x19]
   140006fe5:	b9 04 00 00 00       	mov    ecx,0x4
   140006fea:	49 39 c0             	cmp    r8,rax
   140006fed:	40 0f 93 c6          	setae  sil
   140006ff1:	49 29 d8             	sub    r8,rbx
   140006ff4:	4d 8d 70 e7          	lea    r14,[r8-0x19]
   140006ff8:	49 c1 ee 02          	shr    r14,0x2
   140006ffc:	40 84 f6             	test   sil,sil
   140006fff:	4a 8d 04 b5 04 00 00 	lea    rax,[r14*4+0x4]
   140007006:	00 
   140007007:	48 0f 44 c1          	cmove  rax,rcx
   14000700b:	49 01 c5             	add    r13,rax
   14000700e:	4d 8d 04 04          	lea    r8,[r12+rax*1]
   140007012:	4c 89 c3             	mov    rbx,r8
   140007015:	4c 89 e9             	mov    rcx,r13
   140007018:	4d 39 dd             	cmp    r13,r11
   14000701b:	0f 83 9f 00 00 00    	jae    1400070c0 <__diff_D2A+0x1b0>
   140007021:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140007028:	8b 01                	mov    eax,DWORD PTR [rcx]
   14000702a:	48 83 c1 04          	add    rcx,0x4
   14000702e:	48 83 c3 04          	add    rbx,0x4
   140007032:	48 29 d0             	sub    rax,rdx
   140007035:	48 89 c2             	mov    rdx,rax
   140007038:	89 43 fc             	mov    DWORD PTR [rbx-0x4],eax
   14000703b:	89 c7                	mov    edi,eax
   14000703d:	48 c1 ea 20          	shr    rdx,0x20
   140007041:	83 e2 01             	and    edx,0x1
   140007044:	4c 39 d9             	cmp    rcx,r11
   140007047:	72 df                	jb     140007028 <__diff_D2A+0x118>
   140007049:	49 83 eb 01          	sub    r11,0x1
   14000704d:	4d 29 eb             	sub    r11,r13
   140007050:	49 83 e3 fc          	and    r11,0xfffffffffffffffc
   140007054:	4b 8d 04 18          	lea    rax,[r8+r11*1]
   140007058:	85 ff                	test   edi,edi
   14000705a:	75 13                	jne    14000706f <__diff_D2A+0x15f>
   14000705c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140007060:	8b 50 fc             	mov    edx,DWORD PTR [rax-0x4]
   140007063:	48 83 e8 04          	sub    rax,0x4
   140007067:	41 83 ea 01          	sub    r10d,0x1
   14000706b:	85 d2                	test   edx,edx
   14000706d:	74 f1                	je     140007060 <__diff_D2A+0x150>
   14000706f:	45 89 51 14          	mov    DWORD PTR [r9+0x14],r10d
   140007073:	4c 89 c8             	mov    rax,r9
   140007076:	48 83 c4 20          	add    rsp,0x20
   14000707a:	5b                   	pop    rbx
   14000707b:	5e                   	pop    rsi
   14000707c:	5f                   	pop    rdi
   14000707d:	41 5c                	pop    r12
   14000707f:	41 5d                	pop    r13
   140007081:	41 5e                	pop    r14
   140007083:	5d                   	pop    rbp
   140007084:	c3                   	ret
   140007085:	0f 1f 00             	nop    DWORD PTR [rax]
   140007088:	bf 01 00 00 00       	mov    edi,0x1
   14000708d:	0f 89 db fe ff ff    	jns    140006f6e <__diff_D2A+0x5e>
   140007093:	e9 e1 fe ff ff       	jmp    140006f79 <__diff_D2A+0x69>
   140007098:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   14000709f:	00 
   1400070a0:	31 c9                	xor    ecx,ecx
   1400070a2:	e8 f9 f6 ff ff       	call   1400067a0 <__Balloc_D2A>
   1400070a7:	49 89 c1             	mov    r9,rax
   1400070aa:	48 85 c0             	test   rax,rax
   1400070ad:	74 c4                	je     140007073 <__diff_D2A+0x163>
   1400070af:	48 c7 40 14 01 00 00 	mov    QWORD PTR [rax+0x14],0x1
   1400070b6:	00 
   1400070b7:	eb ba                	jmp    140007073 <__diff_D2A+0x163>
   1400070b9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   1400070c0:	31 c0                	xor    eax,eax
   1400070c2:	49 c1 e6 02          	shl    r14,0x2
   1400070c6:	40 84 f6             	test   sil,sil
   1400070c9:	4c 0f 44 f0          	cmove  r14,rax
   1400070cd:	4b 8d 04 34          	lea    rax,[r12+r14*1]
   1400070d1:	eb 85                	jmp    140007058 <__diff_D2A+0x148>
   1400070d3:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
   1400070da:	00 00 00 00 
   1400070de:	66 90                	xchg   ax,ax

00000001400070e0 <__b2d_D2A>:
   1400070e0:	55                   	push   rbp
   1400070e1:	57                   	push   rdi
   1400070e2:	56                   	push   rsi
   1400070e3:	53                   	push   rbx
   1400070e4:	48 8d 2c 24          	lea    rbp,[rsp]
   1400070e8:	48 63 41 14          	movsxd rax,DWORD PTR [rcx+0x14]
   1400070ec:	4c 8d 59 18          	lea    r11,[rcx+0x18]
   1400070f0:	4d 8d 14 83          	lea    r10,[r11+rax*4]
   1400070f4:	45 8b 4a fc          	mov    r9d,DWORD PTR [r10-0x4]
   1400070f8:	49 8d 72 fc          	lea    rsi,[r10-0x4]
   1400070fc:	41 0f bd c9          	bsr    ecx,r9d
   140007100:	89 cf                	mov    edi,ecx
   140007102:	b9 20 00 00 00       	mov    ecx,0x20
   140007107:	83 f7 1f             	xor    edi,0x1f
   14000710a:	41 89 c8             	mov    r8d,ecx
   14000710d:	41 29 f8             	sub    r8d,edi
   140007110:	44 89 02             	mov    DWORD PTR [rdx],r8d
   140007113:	83 ff 0a             	cmp    edi,0xa
   140007116:	7e 78                	jle    140007190 <__b2d_D2A+0xb0>
   140007118:	8d 5f f5             	lea    ebx,[rdi-0xb]
   14000711b:	49 39 f3             	cmp    r11,rsi
   14000711e:	73 50                	jae    140007170 <__b2d_D2A+0x90>
   140007120:	41 8b 52 f8          	mov    edx,DWORD PTR [r10-0x8]
   140007124:	85 db                	test   ebx,ebx
   140007126:	74 4f                	je     140007177 <__b2d_D2A+0x97>
   140007128:	29 d9                	sub    ecx,ebx
   14000712a:	44 89 c8             	mov    eax,r9d
   14000712d:	89 d6                	mov    esi,edx
   14000712f:	41 89 c8             	mov    r8d,ecx
   140007132:	89 d9                	mov    ecx,ebx
   140007134:	d3 e0                	shl    eax,cl
   140007136:	44 89 c1             	mov    ecx,r8d
   140007139:	d3 ee                	shr    esi,cl
   14000713b:	89 d9                	mov    ecx,ebx
   14000713d:	09 f0                	or     eax,esi
   14000713f:	d3 e2                	shl    edx,cl
   140007141:	49 8d 4a f8          	lea    rcx,[r10-0x8]
   140007145:	0d 00 00 f0 3f       	or     eax,0x3ff00000
   14000714a:	48 c1 e0 20          	shl    rax,0x20
   14000714e:	49 39 cb             	cmp    r11,rcx
   140007151:	73 30                	jae    140007183 <__b2d_D2A+0xa3>
   140007153:	45 8b 4a f4          	mov    r9d,DWORD PTR [r10-0xc]
   140007157:	44 89 c1             	mov    ecx,r8d
   14000715a:	41 d3 e9             	shr    r9d,cl
   14000715d:	44 09 ca             	or     edx,r9d
   140007160:	48 09 d0             	or     rax,rdx
   140007163:	66 48 0f 6e c0       	movq   xmm0,rax
   140007168:	5b                   	pop    rbx
   140007169:	5e                   	pop    rsi
   14000716a:	5f                   	pop    rdi
   14000716b:	5d                   	pop    rbp
   14000716c:	c3                   	ret
   14000716d:	0f 1f 00             	nop    DWORD PTR [rax]
   140007170:	31 d2                	xor    edx,edx
   140007172:	83 ff 0b             	cmp    edi,0xb
   140007175:	75 59                	jne    1400071d0 <__b2d_D2A+0xf0>
   140007177:	44 89 c8             	mov    eax,r9d
   14000717a:	0d 00 00 f0 3f       	or     eax,0x3ff00000
   14000717f:	48 c1 e0 20          	shl    rax,0x20
   140007183:	48 09 d0             	or     rax,rdx
   140007186:	66 48 0f 6e c0       	movq   xmm0,rax
   14000718b:	5b                   	pop    rbx
   14000718c:	5e                   	pop    rsi
   14000718d:	5f                   	pop    rdi
   14000718e:	5d                   	pop    rbp
   14000718f:	c3                   	ret
   140007190:	b9 0b 00 00 00       	mov    ecx,0xb
   140007195:	44 89 c8             	mov    eax,r9d
   140007198:	45 31 c0             	xor    r8d,r8d
   14000719b:	29 f9                	sub    ecx,edi
   14000719d:	d3 e8                	shr    eax,cl
   14000719f:	0d 00 00 f0 3f       	or     eax,0x3ff00000
   1400071a4:	48 c1 e0 20          	shl    rax,0x20
   1400071a8:	49 39 f3             	cmp    r11,rsi
   1400071ab:	73 07                	jae    1400071b4 <__b2d_D2A+0xd4>
   1400071ad:	45 8b 42 f8          	mov    r8d,DWORD PTR [r10-0x8]
   1400071b1:	41 d3 e8             	shr    r8d,cl
   1400071b4:	8d 4f 15             	lea    ecx,[rdi+0x15]
   1400071b7:	44 89 ca             	mov    edx,r9d
   1400071ba:	d3 e2                	shl    edx,cl
   1400071bc:	44 09 c2             	or     edx,r8d
   1400071bf:	48 09 d0             	or     rax,rdx
   1400071c2:	66 48 0f 6e c0       	movq   xmm0,rax
   1400071c7:	5b                   	pop    rbx
   1400071c8:	5e                   	pop    rsi
   1400071c9:	5f                   	pop    rdi
   1400071ca:	5d                   	pop    rbp
   1400071cb:	c3                   	ret
   1400071cc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   1400071d0:	44 89 c8             	mov    eax,r9d
   1400071d3:	89 d9                	mov    ecx,ebx
   1400071d5:	31 d2                	xor    edx,edx
   1400071d7:	d3 e0                	shl    eax,cl
   1400071d9:	0d 00 00 f0 3f       	or     eax,0x3ff00000
   1400071de:	48 c1 e0 20          	shl    rax,0x20
   1400071e2:	48 09 d0             	or     rax,rdx
   1400071e5:	66 48 0f 6e c0       	movq   xmm0,rax
   1400071ea:	5b                   	pop    rbx
   1400071eb:	5e                   	pop    rsi
   1400071ec:	5f                   	pop    rdi
   1400071ed:	5d                   	pop    rbp
   1400071ee:	c3                   	ret
   1400071ef:	90                   	nop

00000001400071f0 <__d2b_D2A>:
   1400071f0:	55                   	push   rbp
   1400071f1:	56                   	push   rsi
   1400071f2:	53                   	push   rbx
   1400071f3:	48 83 ec 30          	sub    rsp,0x30
   1400071f7:	48 8d 6c 24 20       	lea    rbp,[rsp+0x20]
   1400071fc:	0f 11 75 00          	movups XMMWORD PTR [rbp+0x0],xmm6
   140007200:	b9 01 00 00 00       	mov    ecx,0x1
   140007205:	48 89 d6             	mov    rsi,rdx
   140007208:	66 0f 10 f0          	movupd xmm6,xmm0
   14000720c:	4c 89 c3             	mov    rbx,r8
   14000720f:	e8 8c f5 ff ff       	call   1400067a0 <__Balloc_D2A>
   140007214:	48 89 c2             	mov    rdx,rax
   140007217:	48 85 c0             	test   rax,rax
   14000721a:	0f 84 94 00 00 00    	je     1400072b4 <__d2b_D2A+0xc4>
   140007220:	66 48 0f 7e f0       	movq   rax,xmm6
   140007225:	48 89 c1             	mov    rcx,rax
   140007228:	48 c1 e9 20          	shr    rcx,0x20
   14000722c:	41 89 c9             	mov    r9d,ecx
   14000722f:	c1 e9 14             	shr    ecx,0x14
   140007232:	41 81 e1 ff ff 0f 00 	and    r9d,0xfffff
   140007239:	45 89 c8             	mov    r8d,r9d
   14000723c:	41 81 c8 00 00 10 00 	or     r8d,0x100000
   140007243:	81 e1 ff 07 00 00    	and    ecx,0x7ff
   140007249:	45 0f 45 c8          	cmovne r9d,r8d
   14000724d:	41 89 ca             	mov    r10d,ecx
   140007250:	85 c0                	test   eax,eax
   140007252:	74 74                	je     1400072c8 <__d2b_D2A+0xd8>
   140007254:	45 31 c0             	xor    r8d,r8d
   140007257:	f3 44 0f bc c0       	tzcnt  r8d,eax
   14000725c:	44 89 c1             	mov    ecx,r8d
   14000725f:	d3 e8                	shr    eax,cl
   140007261:	45 85 c0             	test   r8d,r8d
   140007264:	74 17                	je     14000727d <__d2b_D2A+0x8d>
   140007266:	b9 20 00 00 00       	mov    ecx,0x20
   14000726b:	45 89 cb             	mov    r11d,r9d
   14000726e:	44 29 c1             	sub    ecx,r8d
   140007271:	41 d3 e3             	shl    r11d,cl
   140007274:	44 89 c1             	mov    ecx,r8d
   140007277:	44 09 d8             	or     eax,r11d
   14000727a:	41 d3 e9             	shr    r9d,cl
   14000727d:	89 42 18             	mov    DWORD PTR [rdx+0x18],eax
   140007280:	41 83 f9 01          	cmp    r9d,0x1
   140007284:	b8 01 00 00 00       	mov    eax,0x1
   140007289:	83 d8 ff             	sbb    eax,0xffffffff
   14000728c:	44 89 4a 1c          	mov    DWORD PTR [rdx+0x1c],r9d
   140007290:	89 42 14             	mov    DWORD PTR [rdx+0x14],eax
   140007293:	45 85 d2             	test   r10d,r10d
   140007296:	75 4f                	jne    1400072e7 <__d2b_D2A+0xf7>
   140007298:	48 63 c8             	movsxd rcx,eax
   14000729b:	41 81 e8 32 04 00 00 	sub    r8d,0x432
   1400072a2:	0f bd 4c 8a 14       	bsr    ecx,DWORD PTR [rdx+rcx*4+0x14]
   1400072a7:	c1 e0 05             	shl    eax,0x5
   1400072aa:	44 89 06             	mov    DWORD PTR [rsi],r8d
   1400072ad:	83 f1 1f             	xor    ecx,0x1f
   1400072b0:	29 c8                	sub    eax,ecx
   1400072b2:	89 03                	mov    DWORD PTR [rbx],eax
   1400072b4:	0f 10 75 00          	movups xmm6,XMMWORD PTR [rbp+0x0]
   1400072b8:	48 89 d0             	mov    rax,rdx
   1400072bb:	48 83 c4 30          	add    rsp,0x30
   1400072bf:	5b                   	pop    rbx
   1400072c0:	5e                   	pop    rsi
   1400072c1:	5d                   	pop    rbp
   1400072c2:	c3                   	ret
   1400072c3:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   1400072c8:	31 c9                	xor    ecx,ecx
   1400072ca:	b8 01 00 00 00       	mov    eax,0x1
   1400072cf:	f3 41 0f bc c9       	tzcnt  ecx,r9d
   1400072d4:	89 42 14             	mov    DWORD PTR [rdx+0x14],eax
   1400072d7:	41 d3 e9             	shr    r9d,cl
   1400072da:	44 8d 41 20          	lea    r8d,[rcx+0x20]
   1400072de:	44 89 4a 18          	mov    DWORD PTR [rdx+0x18],r9d
   1400072e2:	45 85 d2             	test   r10d,r10d
   1400072e5:	74 b1                	je     140007298 <__d2b_D2A+0xa8>
   1400072e7:	43 8d 84 02 cd fb ff 	lea    eax,[r10+r8*1-0x433]
   1400072ee:	ff 
   1400072ef:	89 06                	mov    DWORD PTR [rsi],eax
   1400072f1:	b8 35 00 00 00       	mov    eax,0x35
   1400072f6:	44 29 c0             	sub    eax,r8d
   1400072f9:	89 03                	mov    DWORD PTR [rbx],eax
   1400072fb:	0f 10 75 00          	movups xmm6,XMMWORD PTR [rbp+0x0]
   1400072ff:	48 89 d0             	mov    rax,rdx
   140007302:	48 83 c4 30          	add    rsp,0x30
   140007306:	5b                   	pop    rbx
   140007307:	5e                   	pop    rsi
   140007308:	5d                   	pop    rbp
   140007309:	c3                   	ret
   14000730a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000140007310 <__strcp_D2A>:
   140007310:	48 89 c8             	mov    rax,rcx
   140007313:	48 8d 4a 01          	lea    rcx,[rdx+0x1]
   140007317:	0f b6 12             	movzx  edx,BYTE PTR [rdx]
   14000731a:	88 10                	mov    BYTE PTR [rax],dl
   14000731c:	84 d2                	test   dl,dl
   14000731e:	74 11                	je     140007331 <__strcp_D2A+0x21>
   140007320:	0f b6 11             	movzx  edx,BYTE PTR [rcx]
   140007323:	48 83 c0 01          	add    rax,0x1
   140007327:	48 83 c1 01          	add    rcx,0x1
   14000732b:	88 10                	mov    BYTE PTR [rax],dl
   14000732d:	84 d2                	test   dl,dl
   14000732f:	75 ef                	jne    140007320 <__strcp_D2A+0x10>
   140007331:	c3                   	ret
   140007332:	90                   	nop
   140007333:	90                   	nop
   140007334:	90                   	nop
   140007335:	90                   	nop
   140007336:	90                   	nop
   140007337:	90                   	nop
   140007338:	90                   	nop
   140007339:	90                   	nop
   14000733a:	90                   	nop
   14000733b:	90                   	nop
   14000733c:	90                   	nop
   14000733d:	90                   	nop
   14000733e:	90                   	nop
   14000733f:	90                   	nop

0000000140007340 <strnlen>:
   140007340:	45 31 c0             	xor    r8d,r8d
   140007343:	48 89 c8             	mov    rax,rcx
   140007346:	48 85 d2             	test   rdx,rdx
   140007349:	75 14                	jne    14000735f <strnlen+0x1f>
   14000734b:	eb 17                	jmp    140007364 <strnlen+0x24>
   14000734d:	0f 1f 00             	nop    DWORD PTR [rax]
   140007350:	48 83 c0 01          	add    rax,0x1
   140007354:	49 89 c0             	mov    r8,rax
   140007357:	49 29 c8             	sub    r8,rcx
   14000735a:	49 39 d0             	cmp    r8,rdx
   14000735d:	73 05                	jae    140007364 <strnlen+0x24>
   14000735f:	80 38 00             	cmp    BYTE PTR [rax],0x0
   140007362:	75 ec                	jne    140007350 <strnlen+0x10>
   140007364:	4c 89 c0             	mov    rax,r8
   140007367:	c3                   	ret
   140007368:	90                   	nop
   140007369:	90                   	nop
   14000736a:	90                   	nop
   14000736b:	90                   	nop
   14000736c:	90                   	nop
   14000736d:	90                   	nop
   14000736e:	90                   	nop
   14000736f:	90                   	nop

0000000140007370 <wcsnlen>:
   140007370:	45 31 c0             	xor    r8d,r8d
   140007373:	48 89 d0             	mov    rax,rdx
   140007376:	48 85 d2             	test   rdx,rdx
   140007379:	75 0e                	jne    140007389 <wcsnlen+0x19>
   14000737b:	eb 17                	jmp    140007394 <wcsnlen+0x24>
   14000737d:	0f 1f 00             	nop    DWORD PTR [rax]
   140007380:	49 83 c0 01          	add    r8,0x1
   140007384:	4c 39 c0             	cmp    rax,r8
   140007387:	74 0b                	je     140007394 <wcsnlen+0x24>
   140007389:	66 42 83 3c 41 00    	cmp    WORD PTR [rcx+r8*2],0x0
   14000738f:	75 ef                	jne    140007380 <wcsnlen+0x10>
   140007391:	4c 89 c0             	mov    rax,r8
   140007394:	c3                   	ret
   140007395:	90                   	nop
   140007396:	90                   	nop
   140007397:	90                   	nop
   140007398:	90                   	nop
   140007399:	90                   	nop
   14000739a:	90                   	nop
   14000739b:	90                   	nop
   14000739c:	90                   	nop
   14000739d:	90                   	nop
   14000739e:	90                   	nop
   14000739f:	90                   	nop

00000001400073a0 <__p__fmode>:
   1400073a0:	48 8b 05 29 24 00 00 	mov    rax,QWORD PTR [rip+0x2429]        # 1400097d0 <.refptr.__imp__fmode>
   1400073a7:	48 8b 00             	mov    rax,QWORD PTR [rax]
   1400073aa:	c3                   	ret
   1400073ab:	90                   	nop
   1400073ac:	90                   	nop
   1400073ad:	90                   	nop
   1400073ae:	90                   	nop
   1400073af:	90                   	nop

00000001400073b0 <__p__commode>:
   1400073b0:	48 8b 05 09 24 00 00 	mov    rax,QWORD PTR [rip+0x2409]        # 1400097c0 <.refptr.__imp__commode>
   1400073b7:	48 8b 00             	mov    rax,QWORD PTR [rax]
   1400073ba:	c3                   	ret
   1400073bb:	90                   	nop
   1400073bc:	90                   	nop
   1400073bd:	90                   	nop
   1400073be:	90                   	nop
   1400073bf:	90                   	nop

00000001400073c0 <_lock_file>:
   1400073c0:	55                   	push   rbp
   1400073c1:	53                   	push   rbx
   1400073c2:	48 83 ec 28          	sub    rsp,0x28
   1400073c6:	48 8d 6c 24 20       	lea    rbp,[rsp+0x20]
   1400073cb:	48 89 cb             	mov    rbx,rcx
   1400073ce:	31 c9                	xor    ecx,ecx
   1400073d0:	e8 eb 00 00 00       	call   1400074c0 <__acrt_iob_func>
   1400073d5:	48 39 c3             	cmp    rbx,rax
   1400073d8:	72 0f                	jb     1400073e9 <_lock_file+0x29>
   1400073da:	b9 13 00 00 00       	mov    ecx,0x13
   1400073df:	e8 dc 00 00 00       	call   1400074c0 <__acrt_iob_func>
   1400073e4:	48 39 c3             	cmp    rbx,rax
   1400073e7:	76 17                	jbe    140007400 <_lock_file+0x40>
   1400073e9:	48 8d 4b 30          	lea    rcx,[rbx+0x30]
   1400073ed:	48 83 c4 28          	add    rsp,0x28
   1400073f1:	5b                   	pop    rbx
   1400073f2:	5d                   	pop    rbp
   1400073f3:	48 ff 25 d6 5d 00 00 	rex.W jmp QWORD PTR [rip+0x5dd6]        # 14000d1d0 <__imp_EnterCriticalSection>
   1400073fa:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140007400:	31 c9                	xor    ecx,ecx
   140007402:	e8 b9 00 00 00       	call   1400074c0 <__acrt_iob_func>
   140007407:	48 89 c2             	mov    rdx,rax
   14000740a:	48 89 d8             	mov    rax,rbx
   14000740d:	48 29 d0             	sub    rax,rdx
   140007410:	48 c1 f8 04          	sar    rax,0x4
   140007414:	69 c0 ab aa aa aa    	imul   eax,eax,0xaaaaaaab
   14000741a:	8d 48 10             	lea    ecx,[rax+0x10]
   14000741d:	e8 66 06 00 00       	call   140007a88 <_lock>
   140007422:	81 4b 18 00 80 00 00 	or     DWORD PTR [rbx+0x18],0x8000
   140007429:	48 83 c4 28          	add    rsp,0x28
   14000742d:	5b                   	pop    rbx
   14000742e:	5d                   	pop    rbp
   14000742f:	c3                   	ret

0000000140007430 <_unlock_file>:
   140007430:	55                   	push   rbp
   140007431:	53                   	push   rbx
   140007432:	48 83 ec 28          	sub    rsp,0x28
   140007436:	48 8d 6c 24 20       	lea    rbp,[rsp+0x20]
   14000743b:	48 89 cb             	mov    rbx,rcx
   14000743e:	31 c9                	xor    ecx,ecx
   140007440:	e8 7b 00 00 00       	call   1400074c0 <__acrt_iob_func>
   140007445:	48 39 c3             	cmp    rbx,rax
   140007448:	72 0f                	jb     140007459 <_unlock_file+0x29>
   14000744a:	b9 13 00 00 00       	mov    ecx,0x13
   14000744f:	e8 6c 00 00 00       	call   1400074c0 <__acrt_iob_func>
   140007454:	48 39 c3             	cmp    rbx,rax
   140007457:	76 17                	jbe    140007470 <_unlock_file+0x40>
   140007459:	48 8d 4b 30          	lea    rcx,[rbx+0x30]
   14000745d:	48 83 c4 28          	add    rsp,0x28
   140007461:	5b                   	pop    rbx
   140007462:	5d                   	pop    rbp
   140007463:	48 ff 25 86 5d 00 00 	rex.W jmp QWORD PTR [rip+0x5d86]        # 14000d1f0 <__imp_LeaveCriticalSection>
   14000746a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140007470:	81 63 18 ff 7f ff ff 	and    DWORD PTR [rbx+0x18],0xffff7fff
   140007477:	31 c9                	xor    ecx,ecx
   140007479:	e8 42 00 00 00       	call   1400074c0 <__acrt_iob_func>
   14000747e:	48 29 c3             	sub    rbx,rax
   140007481:	48 c1 fb 04          	sar    rbx,0x4
   140007485:	69 db ab aa aa aa    	imul   ebx,ebx,0xaaaaaaab
   14000748b:	8d 4b 10             	lea    ecx,[rbx+0x10]
   14000748e:	48 83 c4 28          	add    rsp,0x28
   140007492:	5b                   	pop    rbx
   140007493:	5d                   	pop    rbp
   140007494:	e9 ff 05 00 00       	jmp    140007a98 <_unlock>
   140007499:	90                   	nop
   14000749a:	90                   	nop
   14000749b:	90                   	nop
   14000749c:	90                   	nop
   14000749d:	90                   	nop
   14000749e:	90                   	nop
   14000749f:	90                   	nop

00000001400074a0 <_get_invalid_parameter_handler>:
   1400074a0:	48 8b 05 b9 56 00 00 	mov    rax,QWORD PTR [rip+0x56b9]        # 14000cb60 <handler>
   1400074a7:	c3                   	ret
   1400074a8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   1400074af:	00 

00000001400074b0 <_set_invalid_parameter_handler>:
   1400074b0:	48 89 c8             	mov    rax,rcx
   1400074b3:	48 87 05 a6 56 00 00 	xchg   QWORD PTR [rip+0x56a6],rax        # 14000cb60 <handler>
   1400074ba:	c3                   	ret
   1400074bb:	90                   	nop
   1400074bc:	90                   	nop
   1400074bd:	90                   	nop
   1400074be:	90                   	nop
   1400074bf:	90                   	nop

00000001400074c0 <__acrt_iob_func>:
   1400074c0:	55                   	push   rbp
   1400074c1:	53                   	push   rbx
   1400074c2:	48 83 ec 28          	sub    rsp,0x28
   1400074c6:	48 8d 6c 24 20       	lea    rbp,[rsp+0x20]
   1400074cb:	89 cb                	mov    ebx,ecx
   1400074cd:	e8 7e 05 00 00       	call   140007a50 <__iob_func>
   1400074d2:	89 d9                	mov    ecx,ebx
   1400074d4:	48 8d 14 49          	lea    rdx,[rcx+rcx*2]
   1400074d8:	48 c1 e2 04          	shl    rdx,0x4
   1400074dc:	48 01 d0             	add    rax,rdx
   1400074df:	48 83 c4 28          	add    rsp,0x28
   1400074e3:	5b                   	pop    rbx
   1400074e4:	5d                   	pop    rbp
   1400074e5:	c3                   	ret
   1400074e6:	90                   	nop
   1400074e7:	90                   	nop
   1400074e8:	90                   	nop
   1400074e9:	90                   	nop
   1400074ea:	90                   	nop
   1400074eb:	90                   	nop
   1400074ec:	90                   	nop
   1400074ed:	90                   	nop
   1400074ee:	90                   	nop
   1400074ef:	90                   	nop

00000001400074f0 <__wcrtomb_cp>:
   1400074f0:	55                   	push   rbp
   1400074f1:	48 89 e5             	mov    rbp,rsp
   1400074f4:	48 83 ec 50          	sub    rsp,0x50
   1400074f8:	48 89 c8             	mov    rax,rcx
   1400074fb:	66 89 55 18          	mov    WORD PTR [rbp+0x18],dx
   1400074ff:	44 89 c1             	mov    ecx,r8d
   140007502:	45 85 c0             	test   r8d,r8d
   140007505:	75 19                	jne    140007520 <__wcrtomb_cp+0x30>
   140007507:	66 81 fa ff 00       	cmp    dx,0xff
   14000750c:	77 52                	ja     140007560 <__wcrtomb_cp+0x70>
   14000750e:	88 10                	mov    BYTE PTR [rax],dl
   140007510:	b8 01 00 00 00       	mov    eax,0x1
   140007515:	48 83 c4 50          	add    rsp,0x50
   140007519:	5d                   	pop    rbp
   14000751a:	c3                   	ret
   14000751b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140007520:	48 8d 55 fc          	lea    rdx,[rbp-0x4]
   140007524:	44 89 4c 24 28       	mov    DWORD PTR [rsp+0x28],r9d
   140007529:	4c 8d 45 18          	lea    r8,[rbp+0x18]
   14000752d:	41 b9 01 00 00 00    	mov    r9d,0x1
   140007533:	48 89 54 24 38       	mov    QWORD PTR [rsp+0x38],rdx
   140007538:	31 d2                	xor    edx,edx
   14000753a:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
   140007541:	48 c7 44 24 30 00 00 	mov    QWORD PTR [rsp+0x30],0x0
   140007548:	00 00 
   14000754a:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
   14000754f:	ff 15 d3 5c 00 00    	call   QWORD PTR [rip+0x5cd3]        # 14000d228 <__imp_WideCharToMultiByte>
   140007555:	85 c0                	test   eax,eax
   140007557:	74 07                	je     140007560 <__wcrtomb_cp+0x70>
   140007559:	8b 55 fc             	mov    edx,DWORD PTR [rbp-0x4]
   14000755c:	85 d2                	test   edx,edx
   14000755e:	74 b5                	je     140007515 <__wcrtomb_cp+0x25>
   140007560:	e8 13 05 00 00       	call   140007a78 <_errno>
   140007565:	c7 00 2a 00 00 00    	mov    DWORD PTR [rax],0x2a
   14000756b:	b8 ff ff ff ff       	mov    eax,0xffffffff
   140007570:	48 83 c4 50          	add    rsp,0x50
   140007574:	5d                   	pop    rbp
   140007575:	c3                   	ret
   140007576:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   14000757d:	00 00 00 

0000000140007580 <wcrtomb>:
   140007580:	55                   	push   rbp
   140007581:	57                   	push   rdi
   140007582:	56                   	push   rsi
   140007583:	53                   	push   rbx
   140007584:	48 83 ec 38          	sub    rsp,0x38
   140007588:	48 8d 6c 24 30       	lea    rbp,[rsp+0x30]
   14000758d:	48 85 c9             	test   rcx,rcx
   140007590:	48 89 cb             	mov    rbx,rcx
   140007593:	48 8d 45 fb          	lea    rax,[rbp-0x5]
   140007597:	89 d6                	mov    esi,edx
   140007599:	48 0f 44 d8          	cmove  rbx,rax
   14000759d:	e8 9e 04 00 00       	call   140007a40 <___mb_cur_max_func>
   1400075a2:	89 c7                	mov    edi,eax
   1400075a4:	e8 8f 04 00 00       	call   140007a38 <___lc_codepage_func>
   1400075a9:	0f b7 d6             	movzx  edx,si
   1400075ac:	41 89 f9             	mov    r9d,edi
   1400075af:	48 89 d9             	mov    rcx,rbx
   1400075b2:	41 89 c0             	mov    r8d,eax
   1400075b5:	e8 36 ff ff ff       	call   1400074f0 <__wcrtomb_cp>
   1400075ba:	48 98                	cdqe
   1400075bc:	48 83 c4 38          	add    rsp,0x38
   1400075c0:	5b                   	pop    rbx
   1400075c1:	5e                   	pop    rsi
   1400075c2:	5f                   	pop    rdi
   1400075c3:	5d                   	pop    rbp
   1400075c4:	c3                   	ret
   1400075c5:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
   1400075cc:	00 00 00 00 

00000001400075d0 <wcsrtombs>:
   1400075d0:	55                   	push   rbp
   1400075d1:	41 57                	push   r15
   1400075d3:	41 56                	push   r14
   1400075d5:	41 55                	push   r13
   1400075d7:	41 54                	push   r12
   1400075d9:	57                   	push   rdi
   1400075da:	56                   	push   rsi
   1400075db:	53                   	push   rbx
   1400075dc:	48 83 ec 38          	sub    rsp,0x38
   1400075e0:	48 8d 6c 24 30       	lea    rbp,[rsp+0x30]
   1400075e5:	45 31 f6             	xor    r14d,r14d
   1400075e8:	49 89 d4             	mov    r12,rdx
   1400075eb:	49 89 cf             	mov    r15,rcx
   1400075ee:	4c 89 c7             	mov    rdi,r8
   1400075f1:	e8 42 04 00 00       	call   140007a38 <___lc_codepage_func>
   1400075f6:	89 c3                	mov    ebx,eax
   1400075f8:	e8 43 04 00 00       	call   140007a40 <___mb_cur_max_func>
   1400075fd:	4d 8b 2c 24          	mov    r13,QWORD PTR [r12]
   140007601:	89 c6                	mov    esi,eax
   140007603:	4d 85 ed             	test   r13,r13
   140007606:	74 52                	je     14000765a <wcsrtombs+0x8a>
   140007608:	4d 85 ff             	test   r15,r15
   14000760b:	74 63                	je     140007670 <wcsrtombs+0xa0>
   14000760d:	48 85 ff             	test   rdi,rdi
   140007610:	75 2a                	jne    14000763c <wcsrtombs+0x6c>
   140007612:	e9 99 00 00 00       	jmp    1400076b0 <wcsrtombs+0xe0>
   140007617:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
   14000761e:	00 00 
   140007620:	48 98                	cdqe
   140007622:	49 01 c7             	add    r15,rax
   140007625:	49 01 c6             	add    r14,rax
   140007628:	41 80 7f ff 00       	cmp    BYTE PTR [r15-0x1],0x0
   14000762d:	0f 84 8d 00 00 00    	je     1400076c0 <wcsrtombs+0xf0>
   140007633:	49 83 c5 02          	add    r13,0x2
   140007637:	49 39 fe             	cmp    r14,rdi
   14000763a:	73 74                	jae    1400076b0 <wcsrtombs+0xe0>
   14000763c:	41 0f b7 55 00       	movzx  edx,WORD PTR [r13+0x0]
   140007641:	41 89 f1             	mov    r9d,esi
   140007644:	41 89 d8             	mov    r8d,ebx
   140007647:	4c 89 f9             	mov    rcx,r15
   14000764a:	e8 a1 fe ff ff       	call   1400074f0 <__wcrtomb_cp>
   14000764f:	85 c0                	test   eax,eax
   140007651:	7f cd                	jg     140007620 <wcsrtombs+0x50>
   140007653:	49 c7 c6 ff ff ff ff 	mov    r14,0xffffffffffffffff
   14000765a:	4c 89 f0             	mov    rax,r14
   14000765d:	48 83 c4 38          	add    rsp,0x38
   140007661:	5b                   	pop    rbx
   140007662:	5e                   	pop    rsi
   140007663:	5f                   	pop    rdi
   140007664:	41 5c                	pop    r12
   140007666:	41 5d                	pop    r13
   140007668:	41 5e                	pop    r14
   14000766a:	41 5f                	pop    r15
   14000766c:	5d                   	pop    rbp
   14000766d:	c3                   	ret
   14000766e:	66 90                	xchg   ax,ax
   140007670:	48 8d 7d fb          	lea    rdi,[rbp-0x5]
   140007674:	eb 20                	jmp    140007696 <wcsrtombs+0xc6>
   140007676:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   14000767d:	00 00 00 
   140007680:	48 63 d0             	movsxd rdx,eax
   140007683:	83 e8 01             	sub    eax,0x1
   140007686:	48 98                	cdqe
   140007688:	49 01 d6             	add    r14,rdx
   14000768b:	80 7c 05 fb 00       	cmp    BYTE PTR [rbp+rax*1-0x5],0x0
   140007690:	74 3e                	je     1400076d0 <wcsrtombs+0x100>
   140007692:	49 83 c5 02          	add    r13,0x2
   140007696:	41 0f b7 55 00       	movzx  edx,WORD PTR [r13+0x0]
   14000769b:	41 89 f1             	mov    r9d,esi
   14000769e:	41 89 d8             	mov    r8d,ebx
   1400076a1:	48 89 f9             	mov    rcx,rdi
   1400076a4:	e8 47 fe ff ff       	call   1400074f0 <__wcrtomb_cp>
   1400076a9:	85 c0                	test   eax,eax
   1400076ab:	7f d3                	jg     140007680 <wcsrtombs+0xb0>
   1400076ad:	eb a4                	jmp    140007653 <wcsrtombs+0x83>
   1400076af:	90                   	nop
   1400076b0:	4d 89 2c 24          	mov    QWORD PTR [r12],r13
   1400076b4:	eb a4                	jmp    14000765a <wcsrtombs+0x8a>
   1400076b6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   1400076bd:	00 00 00 
   1400076c0:	49 c7 04 24 00 00 00 	mov    QWORD PTR [r12],0x0
   1400076c7:	00 
   1400076c8:	49 83 ee 01          	sub    r14,0x1
   1400076cc:	eb 8c                	jmp    14000765a <wcsrtombs+0x8a>
   1400076ce:	66 90                	xchg   ax,ax
   1400076d0:	49 83 ee 01          	sub    r14,0x1
   1400076d4:	eb 84                	jmp    14000765a <wcsrtombs+0x8a>
   1400076d6:	90                   	nop
   1400076d7:	90                   	nop
   1400076d8:	90                   	nop
   1400076d9:	90                   	nop
   1400076da:	90                   	nop
   1400076db:	90                   	nop
   1400076dc:	90                   	nop
   1400076dd:	90                   	nop
   1400076de:	90                   	nop
   1400076df:	90                   	nop

00000001400076e0 <__mbrtowc_cp>:
   1400076e0:	55                   	push   rbp
   1400076e1:	57                   	push   rdi
   1400076e2:	53                   	push   rbx
   1400076e3:	48 83 ec 40          	sub    rsp,0x40
   1400076e7:	48 8d 6c 24 40       	lea    rbp,[rsp+0x40]
   1400076ec:	48 89 cf             	mov    rdi,rcx
   1400076ef:	48 89 d3             	mov    rbx,rdx
   1400076f2:	48 85 d2             	test   rdx,rdx
   1400076f5:	0f 84 ba 00 00 00    	je     1400077b5 <__mbrtowc_cp+0xd5>
   1400076fb:	4d 85 c0             	test   r8,r8
   1400076fe:	0f 84 1c 01 00 00    	je     140007820 <__mbrtowc_cp+0x140>
   140007704:	41 8b 01             	mov    eax,DWORD PTR [r9]
   140007707:	0f b6 12             	movzx  edx,BYTE PTR [rdx]
   14000770a:	41 c7 01 00 00 00 00 	mov    DWORD PTR [r9],0x0
   140007711:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
   140007714:	84 d2                	test   dl,dl
   140007716:	0f 84 94 00 00 00    	je     1400077b0 <__mbrtowc_cp+0xd0>
   14000771c:	83 7d 48 01          	cmp    DWORD PTR [rbp+0x48],0x1
   140007720:	76 6e                	jbe    140007790 <__mbrtowc_cp+0xb0>
   140007722:	84 c0                	test   al,al
   140007724:	0f 85 96 00 00 00    	jne    1400077c0 <__mbrtowc_cp+0xe0>
   14000772a:	4c 89 4d 38          	mov    QWORD PTR [rbp+0x38],r9
   14000772e:	8b 4d 40             	mov    ecx,DWORD PTR [rbp+0x40]
   140007731:	4c 89 45 30          	mov    QWORD PTR [rbp+0x30],r8
   140007735:	ff 15 ad 5a 00 00    	call   QWORD PTR [rip+0x5aad]        # 14000d1e8 <__imp_IsDBCSLeadByteEx>
   14000773b:	85 c0                	test   eax,eax
   14000773d:	74 51                	je     140007790 <__mbrtowc_cp+0xb0>
   14000773f:	4c 8b 45 30          	mov    r8,QWORD PTR [rbp+0x30]
   140007743:	4c 8b 4d 38          	mov    r9,QWORD PTR [rbp+0x38]
   140007747:	49 83 f8 01          	cmp    r8,0x1
   14000774b:	0f 84 c9 00 00 00    	je     14000781a <__mbrtowc_cp+0x13a>
   140007751:	48 89 7c 24 20       	mov    QWORD PTR [rsp+0x20],rdi
   140007756:	41 b9 02 00 00 00    	mov    r9d,0x2
   14000775c:	49 89 d8             	mov    r8,rbx
   14000775f:	c7 44 24 28 01 00 00 	mov    DWORD PTR [rsp+0x28],0x1
   140007766:	00 
   140007767:	8b 4d 40             	mov    ecx,DWORD PTR [rbp+0x40]
   14000776a:	ba 08 00 00 00       	mov    edx,0x8
   14000776f:	ff 15 83 5a 00 00    	call   QWORD PTR [rip+0x5a83]        # 14000d1f8 <__imp_MultiByteToWideChar>
   140007775:	85 c0                	test   eax,eax
   140007777:	0f 84 8b 00 00 00    	je     140007808 <__mbrtowc_cp+0x128>
   14000777d:	b8 02 00 00 00       	mov    eax,0x2
   140007782:	48 83 c4 40          	add    rsp,0x40
   140007786:	5b                   	pop    rbx
   140007787:	5f                   	pop    rdi
   140007788:	5d                   	pop    rbp
   140007789:	c3                   	ret
   14000778a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140007790:	8b 45 40             	mov    eax,DWORD PTR [rbp+0x40]
   140007793:	85 c0                	test   eax,eax
   140007795:	75 49                	jne    1400077e0 <__mbrtowc_cp+0x100>
   140007797:	0f b6 03             	movzx  eax,BYTE PTR [rbx]
   14000779a:	66 89 07             	mov    WORD PTR [rdi],ax
   14000779d:	b8 01 00 00 00       	mov    eax,0x1
   1400077a2:	48 83 c4 40          	add    rsp,0x40
   1400077a6:	5b                   	pop    rbx
   1400077a7:	5f                   	pop    rdi
   1400077a8:	5d                   	pop    rbp
   1400077a9:	c3                   	ret
   1400077aa:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   1400077b0:	31 d2                	xor    edx,edx
   1400077b2:	66 89 11             	mov    WORD PTR [rcx],dx
   1400077b5:	31 c0                	xor    eax,eax
   1400077b7:	48 83 c4 40          	add    rsp,0x40
   1400077bb:	5b                   	pop    rbx
   1400077bc:	5f                   	pop    rdi
   1400077bd:	5d                   	pop    rbp
   1400077be:	c3                   	ret
   1400077bf:	90                   	nop
   1400077c0:	88 55 fd             	mov    BYTE PTR [rbp-0x3],dl
   1400077c3:	41 b9 02 00 00 00    	mov    r9d,0x2
   1400077c9:	4c 8d 45 fc          	lea    r8,[rbp-0x4]
   1400077cd:	c7 44 24 28 01 00 00 	mov    DWORD PTR [rsp+0x28],0x1
   1400077d4:	00 
   1400077d5:	48 89 4c 24 20       	mov    QWORD PTR [rsp+0x20],rcx
   1400077da:	eb 8b                	jmp    140007767 <__mbrtowc_cp+0x87>
   1400077dc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   1400077e0:	48 89 7c 24 20       	mov    QWORD PTR [rsp+0x20],rdi
   1400077e5:	8b 4d 40             	mov    ecx,DWORD PTR [rbp+0x40]
   1400077e8:	49 89 d8             	mov    r8,rbx
   1400077eb:	ba 08 00 00 00       	mov    edx,0x8
   1400077f0:	c7 44 24 28 01 00 00 	mov    DWORD PTR [rsp+0x28],0x1
   1400077f7:	00 
   1400077f8:	41 b9 01 00 00 00    	mov    r9d,0x1
   1400077fe:	ff 15 f4 59 00 00    	call   QWORD PTR [rip+0x59f4]        # 14000d1f8 <__imp_MultiByteToWideChar>
   140007804:	85 c0                	test   eax,eax
   140007806:	75 95                	jne    14000779d <__mbrtowc_cp+0xbd>
   140007808:	e8 6b 02 00 00       	call   140007a78 <_errno>
   14000780d:	c7 00 2a 00 00 00    	mov    DWORD PTR [rax],0x2a
   140007813:	b8 ff ff ff ff       	mov    eax,0xffffffff
   140007818:	eb 9d                	jmp    1400077b7 <__mbrtowc_cp+0xd7>
   14000781a:	0f b6 03             	movzx  eax,BYTE PTR [rbx]
   14000781d:	41 88 01             	mov    BYTE PTR [r9],al
   140007820:	b8 fe ff ff ff       	mov    eax,0xfffffffe
   140007825:	eb 90                	jmp    1400077b7 <__mbrtowc_cp+0xd7>
   140007827:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
   14000782e:	00 00 

0000000140007830 <mbrtowc>:
   140007830:	55                   	push   rbp
   140007831:	41 55                	push   r13
   140007833:	41 54                	push   r12
   140007835:	57                   	push   rdi
   140007836:	56                   	push   rsi
   140007837:	53                   	push   rbx
   140007838:	48 83 ec 48          	sub    rsp,0x48
   14000783c:	48 8d 6c 24 40       	lea    rbp,[rsp+0x40]
   140007841:	31 c0                	xor    eax,eax
   140007843:	48 89 cb             	mov    rbx,rcx
   140007846:	48 85 c9             	test   rcx,rcx
   140007849:	66 89 45 fe          	mov    WORD PTR [rbp-0x2],ax
   14000784d:	48 8d 45 fe          	lea    rax,[rbp-0x2]
   140007851:	4c 89 ce             	mov    rsi,r9
   140007854:	48 0f 44 d8          	cmove  rbx,rax
   140007858:	48 89 d7             	mov    rdi,rdx
   14000785b:	4d 89 c4             	mov    r12,r8
   14000785e:	e8 dd 01 00 00       	call   140007a40 <___mb_cur_max_func>
   140007863:	41 89 c5             	mov    r13d,eax
   140007866:	e8 cd 01 00 00       	call   140007a38 <___lc_codepage_func>
   14000786b:	48 85 f6             	test   rsi,rsi
   14000786e:	44 89 6c 24 28       	mov    DWORD PTR [rsp+0x28],r13d
   140007873:	4d 89 e0             	mov    r8,r12
   140007876:	89 44 24 20          	mov    DWORD PTR [rsp+0x20],eax
   14000787a:	4c 8d 0d f7 52 00 00 	lea    r9,[rip+0x52f7]        # 14000cb78 <internal_mbstate.2>
   140007881:	48 89 fa             	mov    rdx,rdi
   140007884:	48 89 d9             	mov    rcx,rbx
   140007887:	4c 0f 45 ce          	cmovne r9,rsi
   14000788b:	e8 50 fe ff ff       	call   1400076e0 <__mbrtowc_cp>
   140007890:	48 98                	cdqe
   140007892:	48 83 c4 48          	add    rsp,0x48
   140007896:	5b                   	pop    rbx
   140007897:	5e                   	pop    rsi
   140007898:	5f                   	pop    rdi
   140007899:	41 5c                	pop    r12
   14000789b:	41 5d                	pop    r13
   14000789d:	5d                   	pop    rbp
   14000789e:	c3                   	ret
   14000789f:	90                   	nop

00000001400078a0 <mbsrtowcs>:
   1400078a0:	55                   	push   rbp
   1400078a1:	41 57                	push   r15
   1400078a3:	41 56                	push   r14
   1400078a5:	41 55                	push   r13
   1400078a7:	41 54                	push   r12
   1400078a9:	57                   	push   rdi
   1400078aa:	56                   	push   rsi
   1400078ab:	53                   	push   rbx
   1400078ac:	48 83 ec 48          	sub    rsp,0x48
   1400078b0:	48 8d 6c 24 40       	lea    rbp,[rsp+0x40]
   1400078b5:	48 8d 05 b8 52 00 00 	lea    rax,[rip+0x52b8]        # 14000cb74 <internal_mbstate.1>
   1400078bc:	4c 89 ce             	mov    rsi,r9
   1400078bf:	4d 85 c9             	test   r9,r9
   1400078c2:	49 89 cf             	mov    r15,rcx
   1400078c5:	48 89 d3             	mov    rbx,rdx
   1400078c8:	48 0f 44 f0          	cmove  rsi,rax
   1400078cc:	4c 89 c7             	mov    rdi,r8
   1400078cf:	e8 64 01 00 00       	call   140007a38 <___lc_codepage_func>
   1400078d4:	41 89 c5             	mov    r13d,eax
   1400078d7:	e8 64 01 00 00       	call   140007a40 <___mb_cur_max_func>
   1400078dc:	41 89 c4             	mov    r12d,eax
   1400078df:	48 85 db             	test   rbx,rbx
   1400078e2:	0f 84 c8 00 00 00    	je     1400079b0 <mbsrtowcs+0x110>
   1400078e8:	48 8b 13             	mov    rdx,QWORD PTR [rbx]
   1400078eb:	48 85 d2             	test   rdx,rdx
   1400078ee:	0f 84 bc 00 00 00    	je     1400079b0 <mbsrtowcs+0x110>
   1400078f4:	4d 85 ff             	test   r15,r15
   1400078f7:	74 6f                	je     140007968 <mbsrtowcs+0xc8>
   1400078f9:	45 31 f6             	xor    r14d,r14d
   1400078fc:	48 85 ff             	test   rdi,rdi
   1400078ff:	75 1e                	jne    14000791f <mbsrtowcs+0x7f>
   140007901:	eb 4b                	jmp    14000794e <mbsrtowcs+0xae>
   140007903:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140007908:	48 8b 13             	mov    rdx,QWORD PTR [rbx]
   14000790b:	48 98                	cdqe
   14000790d:	49 83 c7 02          	add    r15,0x2
   140007911:	49 01 c6             	add    r14,rax
   140007914:	48 01 c2             	add    rdx,rax
   140007917:	48 89 13             	mov    QWORD PTR [rbx],rdx
   14000791a:	49 39 fe             	cmp    r14,rdi
   14000791d:	73 2f                	jae    14000794e <mbsrtowcs+0xae>
   14000791f:	44 89 64 24 28       	mov    DWORD PTR [rsp+0x28],r12d
   140007924:	49 89 f8             	mov    r8,rdi
   140007927:	49 89 f1             	mov    r9,rsi
   14000792a:	4c 89 f9             	mov    rcx,r15
   14000792d:	44 89 6c 24 20       	mov    DWORD PTR [rsp+0x20],r13d
   140007932:	4d 29 f0             	sub    r8,r14
   140007935:	e8 a6 fd ff ff       	call   1400076e0 <__mbrtowc_cp>
   14000793a:	85 c0                	test   eax,eax
   14000793c:	7f ca                	jg     140007908 <mbsrtowcs+0x68>
   14000793e:	49 39 fe             	cmp    r14,rdi
   140007941:	73 0b                	jae    14000794e <mbsrtowcs+0xae>
   140007943:	85 c0                	test   eax,eax
   140007945:	75 07                	jne    14000794e <mbsrtowcs+0xae>
   140007947:	48 c7 03 00 00 00 00 	mov    QWORD PTR [rbx],0x0
   14000794e:	4c 89 f0             	mov    rax,r14
   140007951:	48 83 c4 48          	add    rsp,0x48
   140007955:	5b                   	pop    rbx
   140007956:	5e                   	pop    rsi
   140007957:	5f                   	pop    rdi
   140007958:	41 5c                	pop    r12
   14000795a:	41 5d                	pop    r13
   14000795c:	41 5e                	pop    r14
   14000795e:	41 5f                	pop    r15
   140007960:	5d                   	pop    rbp
   140007961:	c3                   	ret
   140007962:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140007968:	31 c0                	xor    eax,eax
   14000796a:	45 89 e7             	mov    r15d,r12d
   14000796d:	48 8d 7d fe          	lea    rdi,[rbp-0x2]
   140007971:	45 31 f6             	xor    r14d,r14d
   140007974:	66 89 45 fe          	mov    WORD PTR [rbp-0x2],ax
   140007978:	eb 0e                	jmp    140007988 <mbsrtowcs+0xe8>
   14000797a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140007980:	48 98                	cdqe
   140007982:	48 8b 13             	mov    rdx,QWORD PTR [rbx]
   140007985:	49 01 c6             	add    r14,rax
   140007988:	44 89 64 24 28       	mov    DWORD PTR [rsp+0x28],r12d
   14000798d:	4c 01 f2             	add    rdx,r14
   140007990:	49 89 f1             	mov    r9,rsi
   140007993:	4d 89 f8             	mov    r8,r15
   140007996:	44 89 6c 24 20       	mov    DWORD PTR [rsp+0x20],r13d
   14000799b:	48 89 f9             	mov    rcx,rdi
   14000799e:	e8 3d fd ff ff       	call   1400076e0 <__mbrtowc_cp>
   1400079a3:	85 c0                	test   eax,eax
   1400079a5:	7f d9                	jg     140007980 <mbsrtowcs+0xe0>
   1400079a7:	eb a5                	jmp    14000794e <mbsrtowcs+0xae>
   1400079a9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   1400079b0:	45 31 f6             	xor    r14d,r14d
   1400079b3:	eb 99                	jmp    14000794e <mbsrtowcs+0xae>
   1400079b5:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
   1400079bc:	00 00 00 00 

00000001400079c0 <mbrlen>:
   1400079c0:	55                   	push   rbp
   1400079c1:	41 54                	push   r12
   1400079c3:	57                   	push   rdi
   1400079c4:	56                   	push   rsi
   1400079c5:	53                   	push   rbx
   1400079c6:	48 83 ec 40          	sub    rsp,0x40
   1400079ca:	48 8d 6c 24 40       	lea    rbp,[rsp+0x40]
   1400079cf:	31 c0                	xor    eax,eax
   1400079d1:	48 89 ce             	mov    rsi,rcx
   1400079d4:	48 89 d7             	mov    rdi,rdx
   1400079d7:	4c 89 c3             	mov    rbx,r8
   1400079da:	66 89 45 fe          	mov    WORD PTR [rbp-0x2],ax
   1400079de:	e8 5d 00 00 00       	call   140007a40 <___mb_cur_max_func>
   1400079e3:	41 89 c4             	mov    r12d,eax
   1400079e6:	e8 4d 00 00 00       	call   140007a38 <___lc_codepage_func>
   1400079eb:	48 85 db             	test   rbx,rbx
   1400079ee:	44 89 64 24 28       	mov    DWORD PTR [rsp+0x28],r12d
   1400079f3:	49 89 f8             	mov    r8,rdi
   1400079f6:	48 8d 15 73 51 00 00 	lea    rdx,[rip+0x5173]        # 14000cb70 <s_mbstate.0>
   1400079fd:	89 44 24 20          	mov    DWORD PTR [rsp+0x20],eax
   140007a01:	48 8d 4d fe          	lea    rcx,[rbp-0x2]
   140007a05:	48 0f 44 da          	cmove  rbx,rdx
   140007a09:	48 89 f2             	mov    rdx,rsi
   140007a0c:	49 89 d9             	mov    r9,rbx
   140007a0f:	e8 cc fc ff ff       	call   1400076e0 <__mbrtowc_cp>
   140007a14:	48 98                	cdqe
   140007a16:	48 83 c4 40          	add    rsp,0x40
   140007a1a:	5b                   	pop    rbx
   140007a1b:	5e                   	pop    rsi
   140007a1c:	5f                   	pop    rdi
   140007a1d:	41 5c                	pop    r12
   140007a1f:	5d                   	pop    rbp
   140007a20:	c3                   	ret
   140007a21:	90                   	nop
   140007a22:	90                   	nop
   140007a23:	90                   	nop
   140007a24:	90                   	nop
   140007a25:	90                   	nop
   140007a26:	90                   	nop
   140007a27:	90                   	nop
   140007a28:	90                   	nop
   140007a29:	90                   	nop
   140007a2a:	90                   	nop
   140007a2b:	90                   	nop
   140007a2c:	90                   	nop
   140007a2d:	90                   	nop
   140007a2e:	90                   	nop
   140007a2f:	90                   	nop

0000000140007a30 <__C_specific_handler>:
   140007a30:	ff 25 02 58 00 00    	jmp    QWORD PTR [rip+0x5802]        # 14000d238 <__imp___C_specific_handler>
   140007a36:	90                   	nop
   140007a37:	90                   	nop

0000000140007a38 <___lc_codepage_func>:
   140007a38:	ff 25 02 58 00 00    	jmp    QWORD PTR [rip+0x5802]        # 14000d240 <__imp____lc_codepage_func>
   140007a3e:	90                   	nop
   140007a3f:	90                   	nop

0000000140007a40 <___mb_cur_max_func>:
   140007a40:	ff 25 02 58 00 00    	jmp    QWORD PTR [rip+0x5802]        # 14000d248 <__imp____mb_cur_max_func>
   140007a46:	90                   	nop
   140007a47:	90                   	nop

0000000140007a48 <__getmainargs>:
   140007a48:	ff 25 02 58 00 00    	jmp    QWORD PTR [rip+0x5802]        # 14000d250 <__imp___getmainargs>
   140007a4e:	90                   	nop
   140007a4f:	90                   	nop

0000000140007a50 <__iob_func>:
   140007a50:	ff 25 0a 58 00 00    	jmp    QWORD PTR [rip+0x580a]        # 14000d260 <__imp___iob_func>
   140007a56:	90                   	nop
   140007a57:	90                   	nop

0000000140007a58 <__set_app_type>:
   140007a58:	ff 25 0a 58 00 00    	jmp    QWORD PTR [rip+0x580a]        # 14000d268 <__imp___set_app_type>
   140007a5e:	90                   	nop
   140007a5f:	90                   	nop

0000000140007a60 <__setusermatherr>:
   140007a60:	ff 25 0a 58 00 00    	jmp    QWORD PTR [rip+0x580a]        # 14000d270 <__imp___setusermatherr>
   140007a66:	90                   	nop
   140007a67:	90                   	nop

0000000140007a68 <_amsg_exit>:
   140007a68:	ff 25 0a 58 00 00    	jmp    QWORD PTR [rip+0x580a]        # 14000d278 <__imp__amsg_exit>
   140007a6e:	90                   	nop
   140007a6f:	90                   	nop

0000000140007a70 <_cexit>:
   140007a70:	ff 25 0a 58 00 00    	jmp    QWORD PTR [rip+0x580a]        # 14000d280 <__imp__cexit>
   140007a76:	90                   	nop
   140007a77:	90                   	nop

0000000140007a78 <_errno>:
   140007a78:	ff 25 12 58 00 00    	jmp    QWORD PTR [rip+0x5812]        # 14000d290 <__imp__errno>
   140007a7e:	90                   	nop
   140007a7f:	90                   	nop

0000000140007a80 <_initterm>:
   140007a80:	ff 25 1a 58 00 00    	jmp    QWORD PTR [rip+0x581a]        # 14000d2a0 <__imp__initterm>
   140007a86:	90                   	nop
   140007a87:	90                   	nop

0000000140007a88 <_lock>:
   140007a88:	ff 25 1a 58 00 00    	jmp    QWORD PTR [rip+0x581a]        # 14000d2a8 <__imp__lock>
   140007a8e:	90                   	nop
   140007a8f:	90                   	nop

0000000140007a90 <_onexit>:
   140007a90:	ff 25 1a 58 00 00    	jmp    QWORD PTR [rip+0x581a]        # 14000d2b0 <__imp__onexit>
   140007a96:	90                   	nop
   140007a97:	90                   	nop

0000000140007a98 <_unlock>:
   140007a98:	ff 25 1a 58 00 00    	jmp    QWORD PTR [rip+0x581a]        # 14000d2b8 <__imp__unlock>
   140007a9e:	90                   	nop
   140007a9f:	90                   	nop

0000000140007aa0 <abort>:
   140007aa0:	ff 25 1a 58 00 00    	jmp    QWORD PTR [rip+0x581a]        # 14000d2c0 <__imp_abort>
   140007aa6:	90                   	nop
   140007aa7:	90                   	nop

0000000140007aa8 <calloc>:
   140007aa8:	ff 25 1a 58 00 00    	jmp    QWORD PTR [rip+0x581a]        # 14000d2c8 <__imp_calloc>
   140007aae:	90                   	nop
   140007aaf:	90                   	nop

0000000140007ab0 <exit>:
   140007ab0:	ff 25 1a 58 00 00    	jmp    QWORD PTR [rip+0x581a]        # 14000d2d0 <__imp_exit>
   140007ab6:	90                   	nop
   140007ab7:	90                   	nop

0000000140007ab8 <fprintf>:
   140007ab8:	ff 25 1a 58 00 00    	jmp    QWORD PTR [rip+0x581a]        # 14000d2d8 <__imp_fprintf>
   140007abe:	90                   	nop
   140007abf:	90                   	nop

0000000140007ac0 <fputc>:
   140007ac0:	ff 25 1a 58 00 00    	jmp    QWORD PTR [rip+0x581a]        # 14000d2e0 <__imp_fputc>
   140007ac6:	90                   	nop
   140007ac7:	90                   	nop

0000000140007ac8 <free>:
   140007ac8:	ff 25 1a 58 00 00    	jmp    QWORD PTR [rip+0x581a]        # 14000d2e8 <__imp_free>
   140007ace:	90                   	nop
   140007acf:	90                   	nop

0000000140007ad0 <fwrite>:
   140007ad0:	ff 25 1a 58 00 00    	jmp    QWORD PTR [rip+0x581a]        # 14000d2f0 <__imp_fwrite>
   140007ad6:	90                   	nop
   140007ad7:	90                   	nop

0000000140007ad8 <localeconv>:
   140007ad8:	ff 25 1a 58 00 00    	jmp    QWORD PTR [rip+0x581a]        # 14000d2f8 <__imp_localeconv>
   140007ade:	90                   	nop
   140007adf:	90                   	nop

0000000140007ae0 <malloc>:
   140007ae0:	ff 25 1a 58 00 00    	jmp    QWORD PTR [rip+0x581a]        # 14000d300 <__imp_malloc>
   140007ae6:	90                   	nop
   140007ae7:	90                   	nop

0000000140007ae8 <memcpy>:
   140007ae8:	ff 25 1a 58 00 00    	jmp    QWORD PTR [rip+0x581a]        # 14000d308 <__imp_memcpy>
   140007aee:	90                   	nop
   140007aef:	90                   	nop

0000000140007af0 <memset>:
   140007af0:	ff 25 1a 58 00 00    	jmp    QWORD PTR [rip+0x581a]        # 14000d310 <__imp_memset>
   140007af6:	90                   	nop
   140007af7:	90                   	nop

0000000140007af8 <signal>:
   140007af8:	ff 25 1a 58 00 00    	jmp    QWORD PTR [rip+0x581a]        # 14000d318 <__imp_signal>
   140007afe:	90                   	nop
   140007aff:	90                   	nop

0000000140007b00 <strerror>:
   140007b00:	ff 25 1a 58 00 00    	jmp    QWORD PTR [rip+0x581a]        # 14000d320 <__imp_strerror>
   140007b06:	90                   	nop
   140007b07:	90                   	nop

0000000140007b08 <strlen>:
   140007b08:	ff 25 1a 58 00 00    	jmp    QWORD PTR [rip+0x581a]        # 14000d328 <__imp_strlen>
   140007b0e:	90                   	nop
   140007b0f:	90                   	nop

0000000140007b10 <strncmp>:
   140007b10:	ff 25 1a 58 00 00    	jmp    QWORD PTR [rip+0x581a]        # 14000d330 <__imp_strncmp>
   140007b16:	90                   	nop
   140007b17:	90                   	nop

0000000140007b18 <vfprintf>:
   140007b18:	ff 25 1a 58 00 00    	jmp    QWORD PTR [rip+0x581a]        # 14000d338 <__imp_vfprintf>
   140007b1e:	90                   	nop
   140007b1f:	90                   	nop

0000000140007b20 <wcslen>:
   140007b20:	ff 25 1a 58 00 00    	jmp    QWORD PTR [rip+0x581a]        # 14000d340 <__imp_wcslen>
   140007b26:	90                   	nop
   140007b27:	90                   	nop
   140007b28:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   140007b2f:	00 

0000000140007b30 <WideCharToMultiByte>:
   140007b30:	ff 25 f2 56 00 00    	jmp    QWORD PTR [rip+0x56f2]        # 14000d228 <__imp_WideCharToMultiByte>
   140007b36:	90                   	nop
   140007b37:	90                   	nop

0000000140007b38 <VirtualQuery>:
   140007b38:	ff 25 e2 56 00 00    	jmp    QWORD PTR [rip+0x56e2]        # 14000d220 <__imp_VirtualQuery>
   140007b3e:	90                   	nop
   140007b3f:	90                   	nop

0000000140007b40 <VirtualProtect>:
   140007b40:	ff 25 d2 56 00 00    	jmp    QWORD PTR [rip+0x56d2]        # 14000d218 <__imp_VirtualProtect>
   140007b46:	90                   	nop
   140007b47:	90                   	nop

0000000140007b48 <TlsGetValue>:
   140007b48:	ff 25 c2 56 00 00    	jmp    QWORD PTR [rip+0x56c2]        # 14000d210 <__imp_TlsGetValue>
   140007b4e:	90                   	nop
   140007b4f:	90                   	nop

0000000140007b50 <Sleep>:
   140007b50:	ff 25 b2 56 00 00    	jmp    QWORD PTR [rip+0x56b2]        # 14000d208 <__imp_Sleep>
   140007b56:	90                   	nop
   140007b57:	90                   	nop

0000000140007b58 <SetUnhandledExceptionFilter>:
   140007b58:	ff 25 a2 56 00 00    	jmp    QWORD PTR [rip+0x56a2]        # 14000d200 <__imp_SetUnhandledExceptionFilter>
   140007b5e:	90                   	nop
   140007b5f:	90                   	nop

0000000140007b60 <MultiByteToWideChar>:
   140007b60:	ff 25 92 56 00 00    	jmp    QWORD PTR [rip+0x5692]        # 14000d1f8 <__imp_MultiByteToWideChar>
   140007b66:	90                   	nop
   140007b67:	90                   	nop

0000000140007b68 <LeaveCriticalSection>:
   140007b68:	ff 25 82 56 00 00    	jmp    QWORD PTR [rip+0x5682]        # 14000d1f0 <__imp_LeaveCriticalSection>
   140007b6e:	90                   	nop
   140007b6f:	90                   	nop

0000000140007b70 <IsDBCSLeadByteEx>:
   140007b70:	ff 25 72 56 00 00    	jmp    QWORD PTR [rip+0x5672]        # 14000d1e8 <__imp_IsDBCSLeadByteEx>
   140007b76:	90                   	nop
   140007b77:	90                   	nop

0000000140007b78 <InitializeCriticalSection>:
   140007b78:	ff 25 62 56 00 00    	jmp    QWORD PTR [rip+0x5662]        # 14000d1e0 <__imp_InitializeCriticalSection>
   140007b7e:	90                   	nop
   140007b7f:	90                   	nop

0000000140007b80 <GetLastError>:
   140007b80:	ff 25 52 56 00 00    	jmp    QWORD PTR [rip+0x5652]        # 14000d1d8 <__imp_GetLastError>
   140007b86:	90                   	nop
   140007b87:	90                   	nop

0000000140007b88 <EnterCriticalSection>:
   140007b88:	ff 25 42 56 00 00    	jmp    QWORD PTR [rip+0x5642]        # 14000d1d0 <__imp_EnterCriticalSection>
   140007b8e:	90                   	nop
   140007b8f:	90                   	nop

0000000140007b90 <DeleteCriticalSection>:
   140007b90:	ff 25 32 56 00 00    	jmp    QWORD PTR [rip+0x5632]        # 14000d1c8 <__IAT_start__>
   140007b96:	90                   	nop
   140007b97:	90                   	nop
   140007b98:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   140007b9f:	00 

0000000140007ba0 <main>:
   140007ba0:	56                   	push   rsi
   140007ba1:	53                   	push   rbx
   140007ba2:	48 83 ec 38          	sub    rsp,0x38
   140007ba6:	89 ce                	mov    esi,ecx
   140007ba8:	48 89 d3             	mov    rbx,rdx
   140007bab:	e8 80 9a ff ff       	call   140001630 <__main>
   140007bb0:	41 b9 2d 00 00 00    	mov    r9d,0x2d
   140007bb6:	41 b8 01 00 00 00    	mov    r8d,0x1
   140007bbc:	c7 44 24 20 06 00 00 	mov    DWORD PTR [rsp+0x20],0x6
   140007bc3:	00 
   140007bc4:	ba 2a 00 00 00       	mov    edx,0x2a
   140007bc9:	48 8d 0d 30 14 00 00 	lea    rcx,[rip+0x1430]        # 140009000 <.rdata>
   140007bd0:	e8 ab 98 ff ff       	call   140001480 <printf>
   140007bd5:	83 fe 01             	cmp    esi,0x1
   140007bd8:	7e 5a                	jle    140007c34 <main+0x94>
   140007bda:	48 8b 5b 08          	mov    rbx,QWORD PTR [rbx+0x8]
   140007bde:	48 89 d9             	mov    rcx,rbx
   140007be1:	e8 22 ff ff ff       	call   140007b08 <strlen>
   140007be6:	48 83 f8 0d          	cmp    rax,0xd
   140007bea:	74 18                	je     140007c04 <main+0x64>
   140007bec:	48 8d 0d 33 14 00 00 	lea    rcx,[rip+0x1433]        # 140009026 <.rdata+0x26>
   140007bf3:	e8 88 98 ff ff       	call   140001480 <printf>
   140007bf8:	b8 01 00 00 00       	mov    eax,0x1
   140007bfd:	48 83 c4 38          	add    rsp,0x38
   140007c01:	5b                   	pop    rbx
   140007c02:	5e                   	pop    rsi
   140007c03:	c3                   	ret
   140007c04:	31 c0                	xor    eax,eax
   140007c06:	48 8d 15 63 14 00 00 	lea    rdx,[rip+0x1463]        # 140009070 <CONTRASENA_CORRECTA.0>
   140007c0d:	0f 1f 00             	nop    DWORD PTR [rax]
   140007c10:	0f b6 34 02          	movzx  esi,BYTE PTR [rdx+rax*1]
   140007c14:	40 38 34 03          	cmp    BYTE PTR [rbx+rax*1],sil
   140007c18:	75 d2                	jne    140007bec <main+0x4c>
   140007c1a:	48 83 c0 01          	add    rax,0x1
   140007c1e:	48 83 f8 0d          	cmp    rax,0xd
   140007c22:	75 ec                	jne    140007c10 <main+0x70>
   140007c24:	48 8d 0d 2a 14 00 00 	lea    rcx,[rip+0x142a]        # 140009055 <.rdata+0x55>
   140007c2b:	e8 50 98 ff ff       	call   140001480 <printf>
   140007c30:	31 c0                	xor    eax,eax
   140007c32:	eb c9                	jmp    140007bfd <main+0x5d>
   140007c34:	48 8b 13             	mov    rdx,QWORD PTR [rbx]
   140007c37:	48 8d 0d 01 14 00 00 	lea    rcx,[rip+0x1401]        # 14000903f <.rdata+0x3f>
   140007c3e:	e8 3d 98 ff ff       	call   140001480 <printf>
   140007c43:	eb b3                	jmp    140007bf8 <main+0x58>
   140007c45:	90                   	nop
   140007c46:	90                   	nop
   140007c47:	90                   	nop
   140007c48:	90                   	nop
   140007c49:	90                   	nop
   140007c4a:	90                   	nop
   140007c4b:	90                   	nop
   140007c4c:	90                   	nop
   140007c4d:	90                   	nop
   140007c4e:	90                   	nop
   140007c4f:	90                   	nop

0000000140007c50 <register_frame_ctor>:
   140007c50:	e9 0b 98 ff ff       	jmp    140001460 <__gcc_register_frame>
   140007c55:	90                   	nop
   140007c56:	90                   	nop
   140007c57:	90                   	nop
   140007c58:	90                   	nop
   140007c59:	90                   	nop
   140007c5a:	90                   	nop
   140007c5b:	90                   	nop
   140007c5c:	90                   	nop
   140007c5d:	90                   	nop
   140007c5e:	90                   	nop
   140007c5f:	90                   	nop

0000000140007c60 <__CTOR_LIST__>:
   140007c60:	ff                   	(bad)
   140007c61:	ff                   	(bad)
   140007c62:	ff                   	(bad)
   140007c63:	ff                   	(bad)
   140007c64:	ff                   	(bad)
   140007c65:	ff                   	(bad)
   140007c66:	ff                   	(bad)
   140007c67:	ff                   	.byte 0xff

0000000140007c68 <.ctors.65535>:
   140007c68:	50                   	push   rax
   140007c69:	7c 00                	jl     140007c6b <.ctors.65535+0x3>
   140007c6b:	40 01 00             	rex add DWORD PTR [rax],eax
	...

0000000140007c78 <__DTOR_LIST__>:
   140007c78:	ff                   	(bad)
   140007c79:	ff                   	(bad)
   140007c7a:	ff                   	(bad)
   140007c7b:	ff                   	(bad)
   140007c7c:	ff                   	(bad)
   140007c7d:	ff                   	(bad)
   140007c7e:	ff                   	(bad)
   140007c7f:	ff 00                	inc    DWORD PTR [rax]
   140007c81:	00 00                	add    BYTE PTR [rax],al
   140007c83:	00 00                	add    BYTE PTR [rax],al
   140007c85:	00 00                	add    BYTE PTR [rax],al
	...
