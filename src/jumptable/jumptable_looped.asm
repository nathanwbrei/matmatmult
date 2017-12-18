
build/jumptable_looped:     file format elf64-x86-64


Disassembly of section .interp:

0000000000400238 <.interp>:
  400238:	2f                   	(bad)  
  400239:	6c                   	insb   (%dx),%es:(%rdi)
  40023a:	69 62 36 34 2f 6c 64 	imul   $0x646c2f34,0x36(%rdx),%esp
  400241:	2d 6c 69 6e 75       	sub    $0x756e696c,%eax
  400246:	78 2d                	js     400275 <_init-0x17b>
  400248:	78 38                	js     400282 <_init-0x16e>
  40024a:	36 2d 36 34 2e 73    	ss sub $0x732e3436,%eax
  400250:	6f                   	outsl  %ds:(%rsi),(%dx)
  400251:	2e 32 00             	xor    %cs:(%rax),%al

Disassembly of section .note.ABI-tag:

0000000000400254 <.note.ABI-tag>:
  400254:	04 00                	add    $0x0,%al
  400256:	00 00                	add    %al,(%rax)
  400258:	10 00                	adc    %al,(%rax)
  40025a:	00 00                	add    %al,(%rax)
  40025c:	01 00                	add    %eax,(%rax)
  40025e:	00 00                	add    %al,(%rax)
  400260:	47                   	rex.RXB
  400261:	4e 55                	rex.WRX push %rbp
  400263:	00 00                	add    %al,(%rax)
  400265:	00 00                	add    %al,(%rax)
  400267:	00 02                	add    %al,(%rdx)
  400269:	00 00                	add    %al,(%rax)
  40026b:	00 06                	add    %al,(%rsi)
  40026d:	00 00                	add    %al,(%rax)
  40026f:	00 20                	add    %ah,(%rax)
  400271:	00 00                	add    %al,(%rax)
	...

Disassembly of section .note.gnu.build-id:

0000000000400274 <.note.gnu.build-id>:
  400274:	04 00                	add    $0x0,%al
  400276:	00 00                	add    %al,(%rax)
  400278:	14 00                	adc    $0x0,%al
  40027a:	00 00                	add    %al,(%rax)
  40027c:	03 00                	add    (%rax),%eax
  40027e:	00 00                	add    %al,(%rax)
  400280:	47                   	rex.RXB
  400281:	4e 55                	rex.WRX push %rbp
  400283:	00 6d e6             	add    %ch,-0x1a(%rbp)
  400286:	e7 55                	out    %eax,$0x55
  400288:	57                   	push   %rdi
  400289:	30 77 ab             	xor    %dh,-0x55(%rdi)
  40028c:	b3 57                	mov    $0x57,%bl
  40028e:	11 cd                	adc    %ecx,%ebp
  400290:	64 25 dd 05 e4 5f    	fs and $0x5fe405dd,%eax
  400296:	7b 23                	jnp    4002bb <_init-0x135>

Disassembly of section .gnu.hash:

0000000000400298 <.gnu.hash>:
  400298:	01 00                	add    %eax,(%rax)
  40029a:	00 00                	add    %al,(%rax)
  40029c:	01 00                	add    %eax,(%rax)
  40029e:	00 00                	add    %al,(%rax)
  4002a0:	01 00                	add    %eax,(%rax)
	...

Disassembly of section .dynsym:

00000000004002b8 <.dynsym>:
	...
  4002d0:	18 00                	sbb    %al,(%rax)
  4002d2:	00 00                	add    %al,(%rax)
  4002d4:	12 00                	adc    (%rax),%al
	...
  4002e6:	00 00                	add    %al,(%rax)
  4002e8:	2a 00                	sub    (%rax),%al
  4002ea:	00 00                	add    %al,(%rax)
  4002ec:	20 00                	and    %al,(%rax)
	...
  4002fe:	00 00                	add    %al,(%rax)
  400300:	0b 00                	or     (%rax),%eax
  400302:	00 00                	add    %al,(%rax)
  400304:	12 00                	adc    (%rax),%al
	...

Disassembly of section .dynstr:

0000000000400318 <.dynstr>:
  400318:	00 6c 69 62          	add    %ch,0x62(%rcx,%rbp,2)
  40031c:	63 2e                	movslq (%rsi),%ebp
  40031e:	73 6f                	jae    40038f <_init-0x61>
  400320:	2e 36 00 5f 5f       	cs add %bl,%ss:0x5f(%rdi)
  400325:	70 72                	jo     400399 <_init-0x57>
  400327:	69 6e 74 66 5f 63 68 	imul   $0x68635f66,0x74(%rsi),%ebp
  40032e:	6b 00 5f             	imul   $0x5f,(%rax),%eax
  400331:	5f                   	pop    %rdi
  400332:	6c                   	insb   (%dx),%es:(%rdi)
  400333:	69 62 63 5f 73 74 61 	imul   $0x6174735f,0x63(%rdx),%esp
  40033a:	72 74                	jb     4003b0 <_init-0x40>
  40033c:	5f                   	pop    %rdi
  40033d:	6d                   	insl   (%dx),%es:(%rdi)
  40033e:	61                   	(bad)  
  40033f:	69 6e 00 5f 5f 67 6d 	imul   $0x6d675f5f,0x0(%rsi),%ebp
  400346:	6f                   	outsl  %ds:(%rsi),(%dx)
  400347:	6e                   	outsb  %ds:(%rsi),(%dx)
  400348:	5f                   	pop    %rdi
  400349:	73 74                	jae    4003bf <_init-0x31>
  40034b:	61                   	(bad)  
  40034c:	72 74                	jb     4003c2 <_init-0x2e>
  40034e:	5f                   	pop    %rdi
  40034f:	5f                   	pop    %rdi
  400350:	00 47 4c             	add    %al,0x4c(%rdi)
  400353:	49                   	rex.WB
  400354:	42                   	rex.X
  400355:	43 5f                	rex.XB pop %r15
  400357:	32 2e                	xor    (%rsi),%ch
  400359:	33 2e                	xor    (%rsi),%ebp
  40035b:	34 00                	xor    $0x0,%al
  40035d:	47                   	rex.RXB
  40035e:	4c                   	rex.WR
  40035f:	49                   	rex.WB
  400360:	42                   	rex.X
  400361:	43 5f                	rex.XB pop %r15
  400363:	32 2e                	xor    (%rsi),%ch
  400365:	32 2e                	xor    (%rsi),%ch
  400367:	35                   	.byte 0x35
	...

Disassembly of section .gnu.version:

000000000040036a <.gnu.version>:
  40036a:	00 00                	add    %al,(%rax)
  40036c:	02 00                	add    (%rax),%al
  40036e:	00 00                	add    %al,(%rax)
  400370:	03 00                	add    (%rax),%eax

Disassembly of section .gnu.version_r:

0000000000400378 <.gnu.version_r>:
  400378:	01 00                	add    %eax,(%rax)
  40037a:	02 00                	add    (%rax),%al
  40037c:	01 00                	add    %eax,(%rax)
  40037e:	00 00                	add    %al,(%rax)
  400380:	10 00                	adc    %al,(%rax)
  400382:	00 00                	add    %al,(%rax)
  400384:	00 00                	add    %al,(%rax)
  400386:	00 00                	add    %al,(%rax)
  400388:	74 19                	je     4003a3 <_init-0x4d>
  40038a:	69 09 00 00 03 00    	imul   $0x30000,(%rcx),%ecx
  400390:	39 00                	cmp    %eax,(%rax)
  400392:	00 00                	add    %al,(%rax)
  400394:	10 00                	adc    %al,(%rax)
  400396:	00 00                	add    %al,(%rax)
  400398:	75 1a                	jne    4003b4 <_init-0x3c>
  40039a:	69 09 00 00 02 00    	imul   $0x20000,(%rcx),%ecx
  4003a0:	45 00 00             	add    %r8b,(%r8)
  4003a3:	00 00                	add    %al,(%rax)
  4003a5:	00 00                	add    %al,(%rax)
	...

Disassembly of section .rela.dyn:

00000000004003a8 <.rela.dyn>:
  4003a8:	f8                   	clc    
  4003a9:	0f 60 00             	punpcklbw (%rax),%mm0
  4003ac:	00 00                	add    %al,(%rax)
  4003ae:	00 00                	add    %al,(%rax)
  4003b0:	06                   	(bad)  
  4003b1:	00 00                	add    %al,(%rax)
  4003b3:	00 02                	add    %al,(%rdx)
	...

Disassembly of section .rela.plt:

00000000004003c0 <.rela.plt>:
  4003c0:	18 10                	sbb    %dl,(%rax)
  4003c2:	60                   	(bad)  
  4003c3:	00 00                	add    %al,(%rax)
  4003c5:	00 00                	add    %al,(%rax)
  4003c7:	00 07                	add    %al,(%rdi)
  4003c9:	00 00                	add    %al,(%rax)
  4003cb:	00 01                	add    %al,(%rcx)
	...
  4003d5:	00 00                	add    %al,(%rax)
  4003d7:	00 20                	add    %ah,(%rax)
  4003d9:	10 60 00             	adc    %ah,0x0(%rax)
  4003dc:	00 00                	add    %al,(%rax)
  4003de:	00 00                	add    %al,(%rax)
  4003e0:	07                   	(bad)  
  4003e1:	00 00                	add    %al,(%rax)
  4003e3:	00 03                	add    %al,(%rbx)
	...

Disassembly of section .init:

00000000004003f0 <_init>:
  4003f0:	48 83 ec 08          	sub    $0x8,%rsp
  4003f4:	48 8b 05 fd 0b 20 00 	mov    0x200bfd(%rip),%rax        # 600ff8 <_DYNAMIC+0x1d0>
  4003fb:	48 85 c0             	test   %rax,%rax
  4003fe:	74 05                	je     400405 <_init+0x15>
  400400:	e8 3b 00 00 00       	callq  400440 <__printf_chk@plt+0x10>
  400405:	48 83 c4 08          	add    $0x8,%rsp
  400409:	c3                   	retq   

Disassembly of section .plt:

0000000000400410 <__libc_start_main@plt-0x10>:
  400410:	ff 35 f2 0b 20 00    	pushq  0x200bf2(%rip)        # 601008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400416:	ff 25 f4 0b 20 00    	jmpq   *0x200bf4(%rip)        # 601010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40041c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400420 <__libc_start_main@plt>:
  400420:	ff 25 f2 0b 20 00    	jmpq   *0x200bf2(%rip)        # 601018 <_GLOBAL_OFFSET_TABLE_+0x18>
  400426:	68 00 00 00 00       	pushq  $0x0
  40042b:	e9 e0 ff ff ff       	jmpq   400410 <_init+0x20>

0000000000400430 <__printf_chk@plt>:
  400430:	ff 25 ea 0b 20 00    	jmpq   *0x200bea(%rip)        # 601020 <_GLOBAL_OFFSET_TABLE_+0x20>
  400436:	68 01 00 00 00       	pushq  $0x1
  40043b:	e9 d0 ff ff ff       	jmpq   400410 <_init+0x20>

Disassembly of section .plt.got:

0000000000400440 <.plt.got>:
  400440:	ff 25 b2 0b 20 00    	jmpq   *0x200bb2(%rip)        # 600ff8 <_DYNAMIC+0x1d0>
  400446:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000400450 <main>:
  400450:	48 83 ec 08          	sub    $0x8,%rsp
  400454:	e8 67 01 00 00       	callq  4005c0 <_Z8expectedv>
  400459:	be c4 06 40 00       	mov    $0x4006c4,%esi
  40045e:	89 c2                	mov    %eax,%edx
  400460:	bf 01 00 00 00       	mov    $0x1,%edi
  400465:	31 c0                	xor    %eax,%eax
  400467:	e8 c4 ff ff ff       	callq  400430 <__printf_chk@plt>
  40046c:	e8 5f 01 00 00       	callq  4005d0 <_Z13actual_loopedv>
  400471:	be d3 06 40 00       	mov    $0x4006d3,%esi
  400476:	89 c2                	mov    %eax,%edx
  400478:	bf 01 00 00 00       	mov    $0x1,%edi
  40047d:	31 c0                	xor    %eax,%eax
  40047f:	e8 ac ff ff ff       	callq  400430 <__printf_chk@plt>
  400484:	31 c0                	xor    %eax,%eax
  400486:	48 83 c4 08          	add    $0x8,%rsp
  40048a:	c3                   	retq   
  40048b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000400490 <_start>:
  400490:	31 ed                	xor    %ebp,%ebp
  400492:	49 89 d1             	mov    %rdx,%r9
  400495:	5e                   	pop    %rsi
  400496:	48 89 e2             	mov    %rsp,%rdx
  400499:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40049d:	50                   	push   %rax
  40049e:	54                   	push   %rsp
  40049f:	49 c7 c0 b0 06 40 00 	mov    $0x4006b0,%r8
  4004a6:	48 c7 c1 40 06 40 00 	mov    $0x400640,%rcx
  4004ad:	48 c7 c7 50 04 40 00 	mov    $0x400450,%rdi
  4004b4:	e8 67 ff ff ff       	callq  400420 <__libc_start_main@plt>
  4004b9:	f4                   	hlt    
  4004ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004004c0 <deregister_tm_clones>:
  4004c0:	b8 3f 10 60 00       	mov    $0x60103f,%eax
  4004c5:	55                   	push   %rbp
  4004c6:	48 2d 38 10 60 00    	sub    $0x601038,%rax
  4004cc:	48 83 f8 0e          	cmp    $0xe,%rax
  4004d0:	48 89 e5             	mov    %rsp,%rbp
  4004d3:	76 1b                	jbe    4004f0 <deregister_tm_clones+0x30>
  4004d5:	b8 00 00 00 00       	mov    $0x0,%eax
  4004da:	48 85 c0             	test   %rax,%rax
  4004dd:	74 11                	je     4004f0 <deregister_tm_clones+0x30>
  4004df:	5d                   	pop    %rbp
  4004e0:	bf 38 10 60 00       	mov    $0x601038,%edi
  4004e5:	ff e0                	jmpq   *%rax
  4004e7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4004ee:	00 00 
  4004f0:	5d                   	pop    %rbp
  4004f1:	c3                   	retq   
  4004f2:	0f 1f 40 00          	nopl   0x0(%rax)
  4004f6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4004fd:	00 00 00 

0000000000400500 <register_tm_clones>:
  400500:	be 38 10 60 00       	mov    $0x601038,%esi
  400505:	55                   	push   %rbp
  400506:	48 81 ee 38 10 60 00 	sub    $0x601038,%rsi
  40050d:	48 c1 fe 03          	sar    $0x3,%rsi
  400511:	48 89 e5             	mov    %rsp,%rbp
  400514:	48 89 f0             	mov    %rsi,%rax
  400517:	48 c1 e8 3f          	shr    $0x3f,%rax
  40051b:	48 01 c6             	add    %rax,%rsi
  40051e:	48 d1 fe             	sar    %rsi
  400521:	74 15                	je     400538 <register_tm_clones+0x38>
  400523:	b8 00 00 00 00       	mov    $0x0,%eax
  400528:	48 85 c0             	test   %rax,%rax
  40052b:	74 0b                	je     400538 <register_tm_clones+0x38>
  40052d:	5d                   	pop    %rbp
  40052e:	bf 38 10 60 00       	mov    $0x601038,%edi
  400533:	ff e0                	jmpq   *%rax
  400535:	0f 1f 00             	nopl   (%rax)
  400538:	5d                   	pop    %rbp
  400539:	c3                   	retq   
  40053a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400540 <__do_global_dtors_aux>:
  400540:	80 3d f1 0a 20 00 00 	cmpb   $0x0,0x200af1(%rip)        # 601038 <__TMC_END__>
  400547:	75 11                	jne    40055a <__do_global_dtors_aux+0x1a>
  400549:	55                   	push   %rbp
  40054a:	48 89 e5             	mov    %rsp,%rbp
  40054d:	e8 6e ff ff ff       	callq  4004c0 <deregister_tm_clones>
  400552:	5d                   	pop    %rbp
  400553:	c6 05 de 0a 20 00 01 	movb   $0x1,0x200ade(%rip)        # 601038 <__TMC_END__>
  40055a:	f3 c3                	repz retq 
  40055c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400560 <frame_dummy>:
  400560:	bf 20 0e 60 00       	mov    $0x600e20,%edi
  400565:	48 83 3f 00          	cmpq   $0x0,(%rdi)
  400569:	75 05                	jne    400570 <frame_dummy+0x10>
  40056b:	eb 93                	jmp    400500 <register_tm_clones>
  40056d:	0f 1f 00             	nopl   (%rax)
  400570:	b8 00 00 00 00       	mov    $0x0,%eax
  400575:	48 85 c0             	test   %rax,%rax
  400578:	74 f1                	je     40056b <frame_dummy+0xb>
  40057a:	55                   	push   %rbp
  40057b:	48 89 e5             	mov    %rsp,%rbp
  40057e:	ff d0                	callq  *%rax
  400580:	5d                   	pop    %rbp
  400581:	e9 7a ff ff ff       	jmpq   400500 <register_tm_clones>
  400586:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40058d:	00 00 00 

0000000000400590 <_Z5tableiRi>:
  400590:	83 ff 01             	cmp    $0x1,%edi
  400593:	74 23                	je     4005b8 <_Z5tableiRi+0x28>
  400595:	83 ff 02             	cmp    $0x2,%edi
  400598:	74 16                	je     4005b0 <_Z5tableiRi+0x20>
  40059a:	85 ff                	test   %edi,%edi
  40059c:	74 0a                	je     4005a8 <_Z5tableiRi+0x18>
  40059e:	83 06 63             	addl   $0x63,(%rsi)
  4005a1:	c3                   	retq   
  4005a2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4005a8:	83 06 16             	addl   $0x16,(%rsi)
  4005ab:	c3                   	retq   
  4005ac:	0f 1f 40 00          	nopl   0x0(%rax)
  4005b0:	83 06 2c             	addl   $0x2c,(%rsi)
  4005b3:	c3                   	retq   
  4005b4:	0f 1f 40 00          	nopl   0x0(%rax)
  4005b8:	83 06 01             	addl   $0x1,(%rsi)
  4005bb:	c3                   	retq   
  4005bc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004005c0 <_Z8expectedv>:
  4005c0:	b8 35 01 00 00       	mov    $0x135,%eax
  4005c5:	c3                   	retq   
  4005c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4005cd:	00 00 00 

00000000004005d0 <_Z13actual_loopedv>:
  4005d0:	b8 00 00 00 00       	mov    $0x0,%eax
  4005d5:	48 c7 c1 00 00 00 00 	mov    $0x0,%rcx
  4005dc:	eb 30                	jmp    40060e <LOOP_TOP_52>

00000000004005de <XS_52>:
  4005de:	15 06 40 00 00       	adc    $0x4006,%eax
  4005e3:	00 00                	add    %al,(%rax)
  4005e5:	00 24 06             	add    %ah,(%rsi,%rax,1)
  4005e8:	40 00 00             	add    %al,(%rax)
  4005eb:	00 00                	add    %al,(%rax)
  4005ed:	00 1f                	add    %bl,(%rdi)
  4005ef:	06                   	(bad)  
  4005f0:	40 00 00             	add    %al,(%rax)
  4005f3:	00 00                	add    %al,(%rax)
  4005f5:	00 24 06             	add    %ah,(%rsi,%rax,1)
  4005f8:	40 00 00             	add    %al,(%rax)
  4005fb:	00 00                	add    %al,(%rax)
  4005fd:	00 1a                	add    %bl,(%rdx)
  4005ff:	06                   	(bad)  
  400600:	40 00 00             	add    %al,(%rax)
  400603:	00 00                	add    %al,(%rax)
  400605:	00 1f                	add    %bl,(%rdi)
  400607:	06                   	(bad)  
  400608:	40 00 00             	add    %al,(%rax)
  40060b:	00 00                	add    %al,(%rax)
	...

000000000040060e <LOOP_TOP_52>:
  40060e:	ff 24 cd de 05 40 00 	jmpq   *0x4005de(,%rcx,8)

0000000000400615 <CASE_0_52>:
  400615:	83 c0 16             	add    $0x16,%eax
  400618:	eb 0d                	jmp    400627 <END_SWITCH_52>

000000000040061a <CASE_1_52>:
  40061a:	83 c0 01             	add    $0x1,%eax
  40061d:	eb 08                	jmp    400627 <END_SWITCH_52>

000000000040061f <CASE_2_52>:
  40061f:	83 c0 2c             	add    $0x2c,%eax
  400622:	eb 03                	jmp    400627 <END_SWITCH_52>

0000000000400624 <CASE_3_52>:
  400624:	83 c0 63             	add    $0x63,%eax

0000000000400627 <END_SWITCH_52>:
  400627:	48 83 c1 01          	add    $0x1,%rcx
  40062b:	48 83 f9 06          	cmp    $0x6,%rcx
  40062f:	7c dd                	jl     40060e <LOOP_TOP_52>
  400631:	c3                   	retq   
  400632:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400639:	00 00 00 
  40063c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400640 <__libc_csu_init>:
  400640:	41 57                	push   %r15
  400642:	41 56                	push   %r14
  400644:	41 89 ff             	mov    %edi,%r15d
  400647:	41 55                	push   %r13
  400649:	41 54                	push   %r12
  40064b:	4c 8d 25 be 07 20 00 	lea    0x2007be(%rip),%r12        # 600e10 <__frame_dummy_init_array_entry>
  400652:	55                   	push   %rbp
  400653:	48 8d 2d be 07 20 00 	lea    0x2007be(%rip),%rbp        # 600e18 <__init_array_end>
  40065a:	53                   	push   %rbx
  40065b:	49 89 f6             	mov    %rsi,%r14
  40065e:	49 89 d5             	mov    %rdx,%r13
  400661:	4c 29 e5             	sub    %r12,%rbp
  400664:	48 83 ec 08          	sub    $0x8,%rsp
  400668:	48 c1 fd 03          	sar    $0x3,%rbp
  40066c:	e8 7f fd ff ff       	callq  4003f0 <_init>
  400671:	48 85 ed             	test   %rbp,%rbp
  400674:	74 20                	je     400696 <__libc_csu_init+0x56>
  400676:	31 db                	xor    %ebx,%ebx
  400678:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40067f:	00 
  400680:	4c 89 ea             	mov    %r13,%rdx
  400683:	4c 89 f6             	mov    %r14,%rsi
  400686:	44 89 ff             	mov    %r15d,%edi
  400689:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  40068d:	48 83 c3 01          	add    $0x1,%rbx
  400691:	48 39 eb             	cmp    %rbp,%rbx
  400694:	75 ea                	jne    400680 <__libc_csu_init+0x40>
  400696:	48 83 c4 08          	add    $0x8,%rsp
  40069a:	5b                   	pop    %rbx
  40069b:	5d                   	pop    %rbp
  40069c:	41 5c                	pop    %r12
  40069e:	41 5d                	pop    %r13
  4006a0:	41 5e                	pop    %r14
  4006a2:	41 5f                	pop    %r15
  4006a4:	c3                   	retq   
  4006a5:	90                   	nop
  4006a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4006ad:	00 00 00 

00000000004006b0 <__libc_csu_fini>:
  4006b0:	f3 c3                	repz retq 

Disassembly of section .fini:

00000000004006b4 <_fini>:
  4006b4:	48 83 ec 08          	sub    $0x8,%rsp
  4006b8:	48 83 c4 08          	add    $0x8,%rsp
  4006bc:	c3                   	retq   

Disassembly of section .rodata:

00000000004006c0 <_IO_stdin_used>:
  4006c0:	01 00                	add    %eax,(%rax)
  4006c2:	02 00                	add    (%rax),%al
  4006c4:	65 78 70             	gs js  400737 <__GNU_EH_FRAME_HDR+0x4f>
  4006c7:	65 63 74 65 64       	movslq %gs:0x64(%rbp,%riz,2),%esi
  4006cc:	20 3d 20 25 64 0a    	and    %bh,0xa642520(%rip)        # aa42bf2 <_end+0xa441bb2>
  4006d2:	00 61 63             	add    %ah,0x63(%rcx)
  4006d5:	74 75                	je     40074c <__GNU_EH_FRAME_HDR+0x64>
  4006d7:	61                   	(bad)  
  4006d8:	6c                   	insb   (%dx),%es:(%rdi)
  4006d9:	5f                   	pop    %rdi
  4006da:	6c                   	insb   (%dx),%es:(%rdi)
  4006db:	6f                   	outsl  %ds:(%rsi),(%dx)
  4006dc:	6f                   	outsl  %ds:(%rsi),(%dx)
  4006dd:	70 65                	jo     400744 <__GNU_EH_FRAME_HDR+0x5c>
  4006df:	64 20 3d 20 25 64 0a 	and    %bh,%fs:0xa642520(%rip)        # aa42c06 <_end+0xa441bc6>
	...

Disassembly of section .eh_frame_hdr:

00000000004006e8 <__GNU_EH_FRAME_HDR>:
  4006e8:	01 1b                	add    %ebx,(%rbx)
  4006ea:	03 3b                	add    (%rbx),%edi
  4006ec:	4c 00 00             	rex.WR add %r8b,(%rax)
  4006ef:	00 08                	add    %cl,(%rax)
  4006f1:	00 00                	add    %al,(%rax)
  4006f3:	00 28                	add    %ch,(%rax)
  4006f5:	fd                   	std    
  4006f6:	ff                   	(bad)  
  4006f7:	ff 98 00 00 00 68    	lcall  *0x68000000(%rax)
  4006fd:	fd                   	std    
  4006fe:	ff                   	(bad)  
  4006ff:	ff 08                	decl   (%rax)
  400701:	01 00                	add    %eax,(%rax)
  400703:	00 a8 fd ff ff 68    	add    %ch,0x68fffffd(%rax)
  400709:	00 00                	add    %al,(%rax)
  40070b:	00 a8 fe ff ff c0    	add    %ch,-0x3f000002(%rax)
  400711:	00 00                	add    %al,(%rax)
  400713:	00 d8                	add    %bl,%al
  400715:	fe                   	(bad)  
  400716:	ff                   	(bad)  
  400717:	ff                   	(bad)  
  400718:	d8 00                	fadds  (%rax)
  40071a:	00 00                	add    %al,(%rax)
  40071c:	e8 fe ff ff f0       	callq  fffffffff140071f <_end+0xfffffffff0dff6df>
  400721:	00 00                	add    %al,(%rax)
  400723:	00 58 ff             	add    %bl,-0x1(%rax)
  400726:	ff                   	(bad)  
  400727:	ff 20                	jmpq   *(%rax)
  400729:	01 00                	add    %eax,(%rax)
  40072b:	00 c8                	add    %cl,%al
  40072d:	ff                   	(bad)  
  40072e:	ff                   	(bad)  
  40072f:	ff 68 01             	ljmp   *0x1(%rax)
	...

Disassembly of section .eh_frame:

0000000000400738 <__FRAME_END__-0x130>:
  400738:	14 00                	adc    $0x0,%al
  40073a:	00 00                	add    %al,(%rax)
  40073c:	00 00                	add    %al,(%rax)
  40073e:	00 00                	add    %al,(%rax)
  400740:	01 7a 52             	add    %edi,0x52(%rdx)
  400743:	00 01                	add    %al,(%rcx)
  400745:	78 10                	js     400757 <__GNU_EH_FRAME_HDR+0x6f>
  400747:	01 1b                	add    %ebx,(%rbx)
  400749:	0c 07                	or     $0x7,%al
  40074b:	08 90 01 07 10 14    	or     %dl,0x14100701(%rax)
  400751:	00 00                	add    %al,(%rax)
  400753:	00 1c 00             	add    %bl,(%rax,%rax,1)
  400756:	00 00                	add    %al,(%rax)
  400758:	38 fd                	cmp    %bh,%ch
  40075a:	ff                   	(bad)  
  40075b:	ff 2a                	ljmp   *(%rdx)
	...
  400765:	00 00                	add    %al,(%rax)
  400767:	00 14 00             	add    %dl,(%rax,%rax,1)
  40076a:	00 00                	add    %al,(%rax)
  40076c:	00 00                	add    %al,(%rax)
  40076e:	00 00                	add    %al,(%rax)
  400770:	01 7a 52             	add    %edi,0x52(%rdx)
  400773:	00 01                	add    %al,(%rcx)
  400775:	78 10                	js     400787 <__GNU_EH_FRAME_HDR+0x9f>
  400777:	01 1b                	add    %ebx,(%rbx)
  400779:	0c 07                	or     $0x7,%al
  40077b:	08 90 01 00 00 24    	or     %dl,0x24000001(%rax)
  400781:	00 00                	add    %al,(%rax)
  400783:	00 1c 00             	add    %bl,(%rax,%rax,1)
  400786:	00 00                	add    %al,(%rax)
  400788:	88 fc                	mov    %bh,%ah
  40078a:	ff                   	(bad)  
  40078b:	ff 30                	pushq  (%rax)
  40078d:	00 00                	add    %al,(%rax)
  40078f:	00 00                	add    %al,(%rax)
  400791:	0e                   	(bad)  
  400792:	10 46 0e             	adc    %al,0xe(%rsi)
  400795:	18 4a 0f             	sbb    %cl,0xf(%rdx)
  400798:	0b 77 08             	or     0x8(%rdi),%esi
  40079b:	80 00 3f             	addb   $0x3f,(%rax)
  40079e:	1a 3b                	sbb    (%rbx),%bh
  4007a0:	2a 33                	sub    (%rbx),%dh
  4007a2:	24 22                	and    $0x22,%al
  4007a4:	00 00                	add    %al,(%rax)
  4007a6:	00 00                	add    %al,(%rax)
  4007a8:	14 00                	adc    $0x0,%al
  4007aa:	00 00                	add    %al,(%rax)
  4007ac:	44 00 00             	add    %r8b,(%rax)
  4007af:	00 e0                	add    %ah,%al
  4007b1:	fd                   	std    
  4007b2:	ff                   	(bad)  
  4007b3:	ff 2c 00             	ljmp   *(%rax,%rax,1)
	...
  4007be:	00 00                	add    %al,(%rax)
  4007c0:	14 00                	adc    $0x0,%al
  4007c2:	00 00                	add    %al,(%rax)
  4007c4:	5c                   	pop    %rsp
  4007c5:	00 00                	add    %al,(%rax)
  4007c7:	00 f8                	add    %bh,%al
  4007c9:	fd                   	std    
  4007ca:	ff                   	(bad)  
  4007cb:	ff 06                	incl   (%rsi)
	...
  4007d5:	00 00                	add    %al,(%rax)
  4007d7:	00 14 00             	add    %dl,(%rax,%rax,1)
  4007da:	00 00                	add    %al,(%rax)
  4007dc:	74 00                	je     4007de <__GNU_EH_FRAME_HDR+0xf6>
  4007de:	00 00                	add    %al,(%rax)
  4007e0:	f0 fd                	lock std 
  4007e2:	ff                   	(bad)  
  4007e3:	ff 62 00             	jmpq   *0x0(%rdx)
	...
  4007ee:	00 00                	add    %al,(%rax)
  4007f0:	14 00                	adc    $0x0,%al
  4007f2:	00 00                	add    %al,(%rax)
  4007f4:	8c 00                	mov    %es,(%rax)
  4007f6:	00 00                	add    %al,(%rax)
  4007f8:	58                   	pop    %rax
  4007f9:	fc                   	cld    
  4007fa:	ff                   	(bad)  
  4007fb:	ff                   	(bad)  
  4007fc:	3b 00                	cmp    (%rax),%eax
  4007fe:	00 00                	add    %al,(%rax)
  400800:	00 44 0e 10          	add    %al,0x10(%rsi,%rcx,1)
  400804:	76 0e                	jbe    400814 <__GNU_EH_FRAME_HDR+0x12c>
  400806:	08 00                	or     %al,(%rax)
  400808:	44 00 00             	add    %r8b,(%rax)
  40080b:	00 a4 00 00 00 30 fe 	add    %ah,-0x1d00000(%rax,%rax,1)
  400812:	ff                   	(bad)  
  400813:	ff 65 00             	jmpq   *0x0(%rbp)
  400816:	00 00                	add    %al,(%rax)
  400818:	00 42 0e             	add    %al,0xe(%rdx)
  40081b:	10 8f 02 42 0e 18    	adc    %cl,0x180e4202(%rdi)
  400821:	8e 03                	mov    (%rbx),%es
  400823:	45 0e                	rex.RB (bad) 
  400825:	20 8d 04 42 0e 28    	and    %cl,0x280e4204(%rbp)
  40082b:	8c 05 48 0e 30 86    	mov    %es,-0x79cff1b8(%rip)        # ffffffff86701679 <_end+0xffffffff86100639>
  400831:	06                   	(bad)  
  400832:	48 0e                	rex.W (bad) 
  400834:	38 83 07 4d 0e 40    	cmp    %al,0x400e4d07(%rbx)
  40083a:	72 0e                	jb     40084a <__GNU_EH_FRAME_HDR+0x162>
  40083c:	38 41 0e             	cmp    %al,0xe(%rcx)
  40083f:	30 41 0e             	xor    %al,0xe(%rcx)
  400842:	28 42 0e             	sub    %al,0xe(%rdx)
  400845:	20 42 0e             	and    %al,0xe(%rdx)
  400848:	18 42 0e             	sbb    %al,0xe(%rdx)
  40084b:	10 42 0e             	adc    %al,0xe(%rdx)
  40084e:	08 00                	or     %al,(%rax)
  400850:	14 00                	adc    $0x0,%al
  400852:	00 00                	add    %al,(%rax)
  400854:	ec                   	in     (%dx),%al
  400855:	00 00                	add    %al,(%rax)
  400857:	00 58 fe             	add    %bl,-0x2(%rax)
  40085a:	ff                   	(bad)  
  40085b:	ff 02                	incl   (%rdx)
	...

0000000000400868 <__FRAME_END__>:
  400868:	00 00                	add    %al,(%rax)
	...

Disassembly of section .init_array:

0000000000600e10 <__frame_dummy_init_array_entry>:
  600e10:	60                   	(bad)  
  600e11:	05 40 00 00 00       	add    $0x40,%eax
	...

Disassembly of section .fini_array:

0000000000600e18 <__do_global_dtors_aux_fini_array_entry>:
  600e18:	40 05 40 00 00 00    	rex add $0x40,%eax
	...

Disassembly of section .jcr:

0000000000600e20 <__JCR_END__>:
	...

Disassembly of section .dynamic:

0000000000600e28 <_DYNAMIC>:
  600e28:	01 00                	add    %eax,(%rax)
  600e2a:	00 00                	add    %al,(%rax)
  600e2c:	00 00                	add    %al,(%rax)
  600e2e:	00 00                	add    %al,(%rax)
  600e30:	01 00                	add    %eax,(%rax)
  600e32:	00 00                	add    %al,(%rax)
  600e34:	00 00                	add    %al,(%rax)
  600e36:	00 00                	add    %al,(%rax)
  600e38:	0c 00                	or     $0x0,%al
  600e3a:	00 00                	add    %al,(%rax)
  600e3c:	00 00                	add    %al,(%rax)
  600e3e:	00 00                	add    %al,(%rax)
  600e40:	f0 03 40 00          	lock add 0x0(%rax),%eax
  600e44:	00 00                	add    %al,(%rax)
  600e46:	00 00                	add    %al,(%rax)
  600e48:	0d 00 00 00 00       	or     $0x0,%eax
  600e4d:	00 00                	add    %al,(%rax)
  600e4f:	00 b4 06 40 00 00 00 	add    %dh,0x40(%rsi,%rax,1)
  600e56:	00 00                	add    %al,(%rax)
  600e58:	19 00                	sbb    %eax,(%rax)
  600e5a:	00 00                	add    %al,(%rax)
  600e5c:	00 00                	add    %al,(%rax)
  600e5e:	00 00                	add    %al,(%rax)
  600e60:	10 0e                	adc    %cl,(%rsi)
  600e62:	60                   	(bad)  
  600e63:	00 00                	add    %al,(%rax)
  600e65:	00 00                	add    %al,(%rax)
  600e67:	00 1b                	add    %bl,(%rbx)
  600e69:	00 00                	add    %al,(%rax)
  600e6b:	00 00                	add    %al,(%rax)
  600e6d:	00 00                	add    %al,(%rax)
  600e6f:	00 08                	add    %cl,(%rax)
  600e71:	00 00                	add    %al,(%rax)
  600e73:	00 00                	add    %al,(%rax)
  600e75:	00 00                	add    %al,(%rax)
  600e77:	00 1a                	add    %bl,(%rdx)
  600e79:	00 00                	add    %al,(%rax)
  600e7b:	00 00                	add    %al,(%rax)
  600e7d:	00 00                	add    %al,(%rax)
  600e7f:	00 18                	add    %bl,(%rax)
  600e81:	0e                   	(bad)  
  600e82:	60                   	(bad)  
  600e83:	00 00                	add    %al,(%rax)
  600e85:	00 00                	add    %al,(%rax)
  600e87:	00 1c 00             	add    %bl,(%rax,%rax,1)
  600e8a:	00 00                	add    %al,(%rax)
  600e8c:	00 00                	add    %al,(%rax)
  600e8e:	00 00                	add    %al,(%rax)
  600e90:	08 00                	or     %al,(%rax)
  600e92:	00 00                	add    %al,(%rax)
  600e94:	00 00                	add    %al,(%rax)
  600e96:	00 00                	add    %al,(%rax)
  600e98:	f5                   	cmc    
  600e99:	fe                   	(bad)  
  600e9a:	ff 6f 00             	ljmp   *0x0(%rdi)
  600e9d:	00 00                	add    %al,(%rax)
  600e9f:	00 98 02 40 00 00    	add    %bl,0x4002(%rax)
  600ea5:	00 00                	add    %al,(%rax)
  600ea7:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # 600ead <_DYNAMIC+0x85>
  600ead:	00 00                	add    %al,(%rax)
  600eaf:	00 18                	add    %bl,(%rax)
  600eb1:	03 40 00             	add    0x0(%rax),%eax
  600eb4:	00 00                	add    %al,(%rax)
  600eb6:	00 00                	add    %al,(%rax)
  600eb8:	06                   	(bad)  
  600eb9:	00 00                	add    %al,(%rax)
  600ebb:	00 00                	add    %al,(%rax)
  600ebd:	00 00                	add    %al,(%rax)
  600ebf:	00 b8 02 40 00 00    	add    %bh,0x4002(%rax)
  600ec5:	00 00                	add    %al,(%rax)
  600ec7:	00 0a                	add    %cl,(%rdx)
  600ec9:	00 00                	add    %al,(%rax)
  600ecb:	00 00                	add    %al,(%rax)
  600ecd:	00 00                	add    %al,(%rax)
  600ecf:	00 51 00             	add    %dl,0x0(%rcx)
  600ed2:	00 00                	add    %al,(%rax)
  600ed4:	00 00                	add    %al,(%rax)
  600ed6:	00 00                	add    %al,(%rax)
  600ed8:	0b 00                	or     (%rax),%eax
  600eda:	00 00                	add    %al,(%rax)
  600edc:	00 00                	add    %al,(%rax)
  600ede:	00 00                	add    %al,(%rax)
  600ee0:	18 00                	sbb    %al,(%rax)
  600ee2:	00 00                	add    %al,(%rax)
  600ee4:	00 00                	add    %al,(%rax)
  600ee6:	00 00                	add    %al,(%rax)
  600ee8:	15 00 00 00 00       	adc    $0x0,%eax
	...
  600ef5:	00 00                	add    %al,(%rax)
  600ef7:	00 03                	add    %al,(%rbx)
	...
  600f01:	10 60 00             	adc    %ah,0x0(%rax)
  600f04:	00 00                	add    %al,(%rax)
  600f06:	00 00                	add    %al,(%rax)
  600f08:	02 00                	add    (%rax),%al
  600f0a:	00 00                	add    %al,(%rax)
  600f0c:	00 00                	add    %al,(%rax)
  600f0e:	00 00                	add    %al,(%rax)
  600f10:	30 00                	xor    %al,(%rax)
  600f12:	00 00                	add    %al,(%rax)
  600f14:	00 00                	add    %al,(%rax)
  600f16:	00 00                	add    %al,(%rax)
  600f18:	14 00                	adc    $0x0,%al
  600f1a:	00 00                	add    %al,(%rax)
  600f1c:	00 00                	add    %al,(%rax)
  600f1e:	00 00                	add    %al,(%rax)
  600f20:	07                   	(bad)  
  600f21:	00 00                	add    %al,(%rax)
  600f23:	00 00                	add    %al,(%rax)
  600f25:	00 00                	add    %al,(%rax)
  600f27:	00 17                	add    %dl,(%rdi)
  600f29:	00 00                	add    %al,(%rax)
  600f2b:	00 00                	add    %al,(%rax)
  600f2d:	00 00                	add    %al,(%rax)
  600f2f:	00 c0                	add    %al,%al
  600f31:	03 40 00             	add    0x0(%rax),%eax
  600f34:	00 00                	add    %al,(%rax)
  600f36:	00 00                	add    %al,(%rax)
  600f38:	07                   	(bad)  
  600f39:	00 00                	add    %al,(%rax)
  600f3b:	00 00                	add    %al,(%rax)
  600f3d:	00 00                	add    %al,(%rax)
  600f3f:	00 a8 03 40 00 00    	add    %ch,0x4003(%rax)
  600f45:	00 00                	add    %al,(%rax)
  600f47:	00 08                	add    %cl,(%rax)
  600f49:	00 00                	add    %al,(%rax)
  600f4b:	00 00                	add    %al,(%rax)
  600f4d:	00 00                	add    %al,(%rax)
  600f4f:	00 18                	add    %bl,(%rax)
  600f51:	00 00                	add    %al,(%rax)
  600f53:	00 00                	add    %al,(%rax)
  600f55:	00 00                	add    %al,(%rax)
  600f57:	00 09                	add    %cl,(%rcx)
  600f59:	00 00                	add    %al,(%rax)
  600f5b:	00 00                	add    %al,(%rax)
  600f5d:	00 00                	add    %al,(%rax)
  600f5f:	00 18                	add    %bl,(%rax)
  600f61:	00 00                	add    %al,(%rax)
  600f63:	00 00                	add    %al,(%rax)
  600f65:	00 00                	add    %al,(%rax)
  600f67:	00 fe                	add    %bh,%dh
  600f69:	ff                   	(bad)  
  600f6a:	ff 6f 00             	ljmp   *0x0(%rdi)
  600f6d:	00 00                	add    %al,(%rax)
  600f6f:	00 78 03             	add    %bh,0x3(%rax)
  600f72:	40 00 00             	add    %al,(%rax)
  600f75:	00 00                	add    %al,(%rax)
  600f77:	00 ff                	add    %bh,%bh
  600f79:	ff                   	(bad)  
  600f7a:	ff 6f 00             	ljmp   *0x0(%rdi)
  600f7d:	00 00                	add    %al,(%rax)
  600f7f:	00 01                	add    %al,(%rcx)
  600f81:	00 00                	add    %al,(%rax)
  600f83:	00 00                	add    %al,(%rax)
  600f85:	00 00                	add    %al,(%rax)
  600f87:	00 f0                	add    %dh,%al
  600f89:	ff                   	(bad)  
  600f8a:	ff 6f 00             	ljmp   *0x0(%rdi)
  600f8d:	00 00                	add    %al,(%rax)
  600f8f:	00 6a 03             	add    %ch,0x3(%rdx)
  600f92:	40 00 00             	add    %al,(%rax)
	...

Disassembly of section .got:

0000000000600ff8 <.got>:
	...

Disassembly of section .got.plt:

0000000000601000 <_GLOBAL_OFFSET_TABLE_>:
  601000:	28 0e                	sub    %cl,(%rsi)
  601002:	60                   	(bad)  
	...
  601017:	00 26                	add    %ah,(%rsi)
  601019:	04 40                	add    $0x40,%al
  60101b:	00 00                	add    %al,(%rax)
  60101d:	00 00                	add    %al,(%rax)
  60101f:	00 36                	add    %dh,(%rsi)
  601021:	04 40                	add    $0x40,%al
  601023:	00 00                	add    %al,(%rax)
  601025:	00 00                	add    %al,(%rax)
	...

Disassembly of section .data:

0000000000601028 <__data_start>:
	...

0000000000601030 <__dso_handle>:
	...

Disassembly of section .bss:

0000000000601038 <__bss_start>:
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	47                   	rex.RXB
   1:	43                   	rex.XB
   2:	43 3a 20             	rex.XB cmp (%r8),%spl
   5:	28 55 62             	sub    %dl,0x62(%rbp)
   8:	75 6e                	jne    78 <_init-0x400378>
   a:	74 75                	je     81 <_init-0x40036f>
   c:	20 35 2e 34 2e 30    	and    %dh,0x302e342e(%rip)        # 302e3440 <_end+0x2fce2400>
  12:	2d 36 75 62 75       	sub    $0x75627536,%eax
  17:	6e                   	outsb  %ds:(%rsi),(%dx)
  18:	74 75                	je     8f <_init-0x400361>
  1a:	31 7e 31             	xor    %edi,0x31(%rsi)
  1d:	36 2e 30 34 2e       	ss xor %dh,%cs:(%rsi,%rbp,1)
  22:	35 29 20 35 2e       	xor    $0x2e352029,%eax
  27:	34 2e                	xor    $0x2e,%al
  29:	30 20                	xor    %ah,(%rax)
  2b:	32 30                	xor    (%rax),%dh
  2d:	31 36                	xor    %esi,(%rsi)
  2f:	30 36                	xor    %dh,(%rsi)
  31:	30 39                	xor    %bh,(%rcx)
	...

Disassembly of section .debug_aranges:

0000000000000000 <.debug_aranges>:
   0:	3c 00                	cmp    $0x0,%al
   2:	00 00                	add    %al,(%rax)
   4:	02 00                	add    (%rax),%al
   6:	00 00                	add    %al,(%rax)
   8:	00 00                	add    %al,(%rax)
   a:	08 00                	or     %al,(%rax)
   c:	00 00                	add    %al,(%rax)
   e:	00 00                	add    %al,(%rax)
  10:	90                   	nop
  11:	05 40 00 00 00       	add    $0x40,%eax
  16:	00 00                	add    %al,(%rax)
  18:	a2 00 00 00 00 00 00 	movabs %al,0x5000000000000000
  1f:	00 50 
  21:	04 40                	add    $0x40,%al
  23:	00 00                	add    %al,(%rax)
  25:	00 00                	add    %al,(%rax)
  27:	00 3b                	add    %bh,(%rbx)
	...

Disassembly of section .debug_info:

0000000000000000 <.debug_info>:
   0:	98                   	cwtl   
   1:	04 00                	add    $0x0,%al
   3:	00 04 00             	add    %al,(%rax,%rax,1)
   6:	00 00                	add    %al,(%rax)
   8:	00 00                	add    %al,(%rax)
   a:	08 01                	or     %al,(%rcx)
   c:	c1 00 00             	roll   $0x0,(%rax)
   f:	00 04 96             	add    %al,(%rsi,%rdx,4)
  12:	01 00                	add    %eax,(%rax)
  14:	00 1f                	add    %bl,(%rdi)
  16:	02 00                	add    (%rax),%al
	...
  28:	00 02                	add    %al,(%rdx)
  2a:	23 00                	and    (%rax),%eax
  2c:	00 00                	add    %al,(%rax)
  2e:	03 d8                	add    %eax,%ebx
  30:	34 00                	xor    $0x0,%al
  32:	00 00                	add    %al,(%rax)
  34:	03 08                	add    (%rax),%ecx
  36:	07                   	(bad)  
  37:	46 00 00             	rex.RX add %r8b,(%rax)
  3a:	00 03                	add    %al,(%rbx)
  3c:	01 08                	add    %ecx,(%rax)
  3e:	f2 01 00             	repnz add %eax,(%rax)
  41:	00 03                	add    %al,(%rbx)
  43:	02 07                	add    (%rdi),%al
  45:	5a                   	pop    %rdx
  46:	01 00                	add    %eax,(%rax)
  48:	00 03                	add    %al,(%rbx)
  4a:	04 07                	add    $0x7,%al
  4c:	4b 00 00             	rex.WXB add %al,(%r8)
  4f:	00 03                	add    %al,(%rbx)
  51:	01 06                	add    %eax,(%rsi)
  53:	f4                   	hlt    
  54:	01 00                	add    %eax,(%rax)
  56:	00 03                	add    %al,(%rbx)
  58:	02 05 00 02 00 00    	add    0x200(%rip),%al        # 25e <_init-0x400192>
  5e:	04 04                	add    $0x4,%al
  60:	05 69 6e 74 00       	add    $0x746e69,%eax
  65:	03 08                	add    (%rax),%ecx
  67:	05 5d 00 00 00       	add    $0x5d,%eax
  6c:	02 07                	add    (%rdi),%al
  6e:	00 00                	add    %al,(%rax)
  70:	00 04 83             	add    %al,(%rbx,%rax,4)
  73:	65 00 00             	add    %al,%gs:(%rax)
  76:	00 02                	add    %al,(%rdx)
  78:	43 02 00             	rex.XB add (%r8),%al
  7b:	00 04 84             	add    %al,(%rsp,%rax,4)
  7e:	65 00 00             	add    %al,%gs:(%rax)
  81:	00 03                	add    %al,(%rbx)
  83:	08 07                	or     %al,(%rdi)
  85:	b9 01 00 00 05       	mov    $0x5000001,%ecx
  8a:	08 06                	or     %al,(%rsi)
  8c:	08 91 00 00 00 03    	or     %dl,0x3000000(%rcx)
  92:	01 06                	add    %eax,(%rsi)
  94:	fb                   	sti    
  95:	01 00                	add    %eax,(%rax)
  97:	00 07                	add    %al,(%rdi)
  99:	db 01                	fildl  (%rcx)
  9b:	00 00                	add    %al,(%rax)
  9d:	d8 05 f1 15 02 00    	fadds  0x215f1(%rip)        # 21694 <_init-0x3ded5c>
  a3:	00 08                	add    %cl,(%rax)
  a5:	7b 00                	jnp    a7 <_init-0x400349>
  a7:	00 00                	add    %al,(%rax)
  a9:	05 f2 5e 00 00       	add    $0x5ef2,%eax
  ae:	00 00                	add    %al,(%rax)
  b0:	08 0f                	or     %cl,(%rdi)
  b2:	00 00                	add    %al,(%rax)
  b4:	00 05 f7 8b 00 00    	add    %al,0x8bf7(%rip)        # 8cb1 <_init-0x3f773f>
  ba:	00 08                	add    %cl,(%rax)
  bc:	08 6e 00             	or     %ch,0x0(%rsi)
  bf:	00 00                	add    %al,(%rax)
  c1:	05 f8 8b 00 00       	add    $0x8bf8,%eax
  c6:	00 10                	add    %dl,(%rax)
  c8:	08 4d 02             	or     %cl,0x2(%rbp)
  cb:	00 00                	add    %al,(%rax)
  cd:	05 f9 8b 00 00       	add    $0x8bf9,%eax
  d2:	00 18                	add    %bl,(%rax)
  d4:	08 b9 02 00 00 05    	or     %bh,0x5000002(%rcx)
  da:	fa                   	cli    
  db:	8b 00                	mov    (%rax),%eax
  dd:	00 00                	add    %al,(%rax)
  df:	20 08                	and    %cl,(%rax)
  e1:	46 01 00             	rex.RX add %r8d,(%rax)
  e4:	00 05 fb 8b 00 00    	add    %al,0x8bfb(%rip)        # 8ce5 <_init-0x3f770b>
  ea:	00 28                	add    %ch,(%rax)
  ec:	08 c2                	or     %al,%dl
  ee:	01 00                	add    %eax,(%rax)
  f0:	00 05 fc 8b 00 00    	add    %al,0x8bfc(%rip)        # 8cf2 <_init-0x3f76fe>
  f6:	00 30                	add    %dh,(%rax)
  f8:	08 34 00             	or     %dh,(%rax,%rax,1)
  fb:	00 00                	add    %al,(%rax)
  fd:	05 fd 8b 00 00       	add    $0x8bfd,%eax
 102:	00 38                	add    %bh,(%rax)
 104:	08 82 00 00 00 05    	or     %al,0x5000000(%rdx)
 10a:	fe 8b 00 00 00 40    	decb   0x40000000(%rbx)
 110:	09 6d 01             	or     %ebp,0x1(%rbp)
 113:	00 00                	add    %al,(%rax)
 115:	05 00 01 8b 00       	add    $0x8b0100,%eax
 11a:	00 00                	add    %al,(%rax)
 11c:	48 09 9f 02 00 00 05 	or     %rbx,0x5000002(%rdi)
 123:	01 01                	add    %eax,(%rcx)
 125:	8b 00                	mov    (%rax),%eax
 127:	00 00                	add    %al,(%rax)
 129:	50                   	push   %rax
 12a:	09 5b 02             	or     %ebx,0x2(%rbx)
 12d:	00 00                	add    %al,(%rax)
 12f:	05 02 01 8b 00       	add    $0x8b0102,%eax
 134:	00 00                	add    %al,(%rax)
 136:	58                   	pop    %rax
 137:	09 e9                	or     %ebp,%ecx
 139:	01 00                	add    %eax,(%rax)
 13b:	00 05 04 01 4d 02    	add    %al,0x24d0104(%rip)        # 24d0245 <_end+0x1ecf205>
 141:	00 00                	add    %al,(%rax)
 143:	60                   	(bad)  
 144:	09 1c 00             	or     %ebx,(%rax,%rax,1)
 147:	00 00                	add    %al,(%rax)
 149:	05 06 01 53 02       	add    $0x2530106,%eax
 14e:	00 00                	add    %al,(%rax)
 150:	68 09 66 00 00       	pushq  $0x6609
 155:	00 05 08 01 5e 00    	add    %al,0x5e0108(%rip)        # 5e0263 <__FRAME_END__+0x1df9fb>
 15b:	00 00                	add    %al,(%rax)
 15d:	70 09                	jo     168 <_init-0x400288>
 15f:	81 01 00 00 05 0c    	addl   $0xc050000,(%rcx)
 165:	01 5e 00             	add    %ebx,0x0(%rsi)
 168:	00 00                	add    %al,(%rax)
 16a:	74 09                	je     175 <_init-0x40027b>
 16c:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
 16d:	00 00                	add    %al,(%rax)
 16f:	00 05 0e 01 6c 00    	add    %al,0x6c010e(%rip)        # 6c0283 <_end+0xbf243>
 175:	00 00                	add    %al,(%rax)
 177:	78 09                	js     182 <_init-0x40026e>
 179:	8e 00                	mov    (%rax),%es
 17b:	00 00                	add    %al,(%rax)
 17d:	05 12 01 42 00       	add    $0x420112,%eax
 182:	00 00                	add    %al,(%rax)
 184:	80 09 10             	orb    $0x10,(%rcx)
 187:	02 00                	add    (%rax),%al
 189:	00 05 13 01 50 00    	add    %al,0x500113(%rip)        # 5002a2 <__FRAME_END__+0xffa3a>
 18f:	00 00                	add    %al,(%rax)
 191:	82                   	(bad)  
 192:	09 2a                	or     %ebp,(%rdx)
 194:	00 00                	add    %al,(%rax)
 196:	00 05 14 01 59 02    	add    %al,0x2590114(%rip)        # 25902b0 <_end+0x1f8f270>
 19c:	00 00                	add    %al,(%rax)
 19e:	83 09 7b             	orl    $0x7b,(%rcx)
 1a1:	01 00                	add    %eax,(%rax)
 1a3:	00 05 18 01 69 02    	add    %al,0x2690118(%rip)        # 26902c1 <_end+0x208f281>
 1a9:	00 00                	add    %al,(%rax)
 1ab:	88 09                	mov    %cl,(%rcx)
 1ad:	ab                   	stos   %eax,%es:(%rdi)
 1ae:	00 00                	add    %al,(%rax)
 1b0:	00 05 21 01 77 00    	add    %al,0x770121(%rip)        # 7702d7 <_end+0x16f297>
 1b6:	00 00                	add    %al,(%rax)
 1b8:	90                   	nop
 1b9:	09 6e 02             	or     %ebp,0x2(%rsi)
 1bc:	00 00                	add    %al,(%rax)
 1be:	05 29 01 89 00       	add    $0x890129,%eax
 1c3:	00 00                	add    %al,(%rax)
 1c5:	98                   	cwtl   
 1c6:	09 75 02             	or     %esi,0x2(%rbp)
 1c9:	00 00                	add    %al,(%rax)
 1cb:	05 2a 01 89 00       	add    $0x89012a,%eax
 1d0:	00 00                	add    %al,(%rax)
 1d2:	a0 09 7c 02 00 00 05 	movabs 0x12b050000027c09,%al
 1d9:	2b 01 
 1db:	89 00                	mov    %eax,(%rax)
 1dd:	00 00                	add    %al,(%rax)
 1df:	a8 09                	test   $0x9,%al
 1e1:	83 02 00             	addl   $0x0,(%rdx)
 1e4:	00 05 2c 01 89 00    	add    %al,0x89012c(%rip)        # 890316 <_end+0x28f2d6>
 1ea:	00 00                	add    %al,(%rax)
 1ec:	b0 09                	mov    $0x9,%al
 1ee:	8a 02                	mov    (%rdx),%al
 1f0:	00 00                	add    %al,(%rax)
 1f2:	05 2e 01 29 00       	add    $0x29012e,%eax
 1f7:	00 00                	add    %al,(%rax)
 1f9:	b8 09 89 01 00       	mov    $0x18909,%eax
 1fe:	00 05 2f 01 5e 00    	add    %al,0x5e012f(%rip)        # 5e0333 <__FRAME_END__+0x1dfacb>
 204:	00 00                	add    %al,(%rax)
 206:	c0 09 91             	rorb   $0x91,(%rcx)
 209:	02 00                	add    (%rax),%al
 20b:	00 05 31 01 6f 02    	add    %al,0x26f0131(%rip)        # 26f0342 <_end+0x20ef302>
 211:	00 00                	add    %al,(%rax)
 213:	c4                   	(bad)  
 214:	00 0a                	add    %cl,(%rdx)
 216:	d0 01                	rolb   (%rcx)
 218:	00 00                	add    %al,(%rax)
 21a:	05 96 07 2c 01       	add    $0x12c0796,%eax
 21f:	00 00                	add    %al,(%rax)
 221:	18 05 9c 4d 02 00    	sbb    %al,0x24d9c(%rip)        # 24fc3 <_init-0x3db42d>
 227:	00 08                	add    %cl,(%rax)
 229:	3d 02 00 00 05       	cmp    $0x5000002,%eax
 22e:	9d                   	popfq  
 22f:	4d 02 00             	rex.WRB add (%r8),%r8b
 232:	00 00                	add    %al,(%rax)
 234:	08 54 01 00          	or     %dl,0x0(%rcx,%rax,1)
 238:	00 05 9e 53 02 00    	add    %al,0x2539e(%rip)        # 255dc <_init-0x3dae14>
 23e:	00 08                	add    %cl,(%rax)
 240:	08 e4                	or     %ah,%ah
 242:	01 00                	add    %eax,(%rax)
 244:	00 05 a2 5e 00 00    	add    %al,0x5ea2(%rip)        # 60ec <_init-0x3fa304>
 24a:	00 10                	add    %dl,(%rax)
 24c:	00 06                	add    %al,(%rsi)
 24e:	08 1c 02             	or     %bl,(%rdx,%rax,1)
 251:	00 00                	add    %al,(%rax)
 253:	06                   	(bad)  
 254:	08 98 00 00 00 0b    	or     %bl,0xb000000(%rax)
 25a:	91                   	xchg   %eax,%ecx
 25b:	00 00                	add    %al,(%rax)
 25d:	00 69 02             	add    %ch,0x2(%rcx)
 260:	00 00                	add    %al,(%rax)
 262:	0c 82                	or     $0x82,%al
 264:	00 00                	add    %al,(%rax)
 266:	00 00                	add    %al,(%rax)
 268:	00 06                	add    %al,(%rsi)
 26a:	08 15 02 00 00 0b    	or     %dl,0xb000002(%rip)        # b000272 <_end+0xa9ff232>
 270:	91                   	xchg   %eax,%ecx
 271:	00 00                	add    %al,(%rax)
 273:	00 7f 02             	add    %bh,0x2(%rdi)
 276:	00 00                	add    %al,(%rax)
 278:	0c 82                	or     $0x82,%al
 27a:	00 00                	add    %al,(%rax)
 27c:	00 13                	add    %dl,(%rbx)
 27e:	00 06                	add    %al,(%rsi)
 280:	08 85 02 00 00 0d    	or     %al,0xd000002(%rbp)
 286:	91                   	xchg   %eax,%ecx
 287:	00 00                	add    %al,(%rax)
 289:	00 03                	add    %al,(%rbx)
 28b:	08 05 58 00 00 00    	or     %al,0x58(%rip)        # 2e9 <_init-0x400107>
 291:	03 08                	add    (%rax),%ecx
 293:	07                   	(bad)  
 294:	41 00 00             	add    %al,(%r8)
 297:	00 0e                	add    %cl,(%rsi)
 299:	0a 02                	or     (%rdx),%al
 29b:	00 00                	add    %al,(%rax)
 29d:	01 05 24 02 00 00    	add    %eax,0x224(%rip)        # 4c7 <_init-0x3fff29>
 2a3:	01 bb 02 00 00 0f    	add    %edi,0xf000002(%rbx)
 2a9:	78 00                	js     2ab <_init-0x400145>
 2ab:	01 05 5e 00 00 00    	add    %eax,0x5e(%rip)        # 30f <_init-0x4000e1>
 2b1:	0f 79 00             	vmwrite (%rax),%rax
 2b4:	01 05 c1 02 00 00    	add    %eax,0x2c1(%rip)        # 57b <_init-0x3ffe75>
 2ba:	00 10                	add    %dl,(%rax)
 2bc:	08 5e 00             	or     %bl,0x0(%rsi)
 2bf:	00 00                	add    %al,(%rax)
 2c1:	0d bb 02 00 00       	or     $0x2bb,%eax
 2c6:	11 00                	adc    %eax,(%rax)
 2c8:	00 00                	add    %al,(%rax)
 2ca:	00 02                	add    %al,(%rdx)
 2cc:	66 5e                	pop    %si
 2ce:	00 00                	add    %al,(%rax)
 2d0:	00 03                	add    %al,(%rbx)
 2d2:	e3 02                	jrcxz  2d6 <_init-0x40011a>
 2d4:	00 00                	add    %al,(%rax)
 2d6:	12 68 02             	adc    0x2(%rax),%ch
 2d9:	00 00                	add    %al,(%rax)
 2db:	02 66 e3             	add    -0x1d(%rsi),%ah
 2de:	02 00                	add    (%rax),%al
 2e0:	00 13                	add    %dl,(%rbx)
 2e2:	00 14 7f             	add    %dl,(%rdi,%rdi,2)
 2e5:	02 00                	add    (%rax),%al
 2e7:	00 15 98 02 00 00    	add    %dl,0x298(%rip)        # 585 <_init-0x3ffe6b>
 2ed:	24 02                	and    $0x2,%al
 2ef:	00 00                	add    %al,(%rax)
 2f1:	90                   	nop
 2f2:	05 40 00 00 00       	add    $0x40,%eax
 2f7:	00 00                	add    %al,(%rax)
 2f9:	2c 00                	sub    $0x0,%al
 2fb:	00 00                	add    %al,(%rax)
 2fd:	00 00                	add    %al,(%rax)
 2ff:	00 00                	add    %al,(%rax)
 301:	01 9c 16 03 00 00 16 	add    %ebx,0x16000003(%rsi,%rdx,1)
 308:	a8 02                	test   $0x2,%al
 30a:	00 00                	add    %al,(%rax)
 30c:	01 55 16             	add    %edx,0x16(%rbp)
 30f:	b1 02                	mov    $0x2,%cl
 311:	00 00                	add    %al,(%rax)
 313:	01 54 00 17          	add    %edx,0x17(%rax,%rax,1)
 317:	3d 01 00 00 01       	cmp    $0x1000001,%eax
 31c:	12 30                	adc    (%rax),%dh
 31e:	02 00                	add    (%rax),%al
 320:	00 5e 00             	add    %bl,0x0(%rsi)
 323:	00 00                	add    %al,(%rax)
 325:	c0 05 40 00 00 00 00 	rolb   $0x0,0x40(%rip)        # 36c <_init-0x400084>
 32c:	00 06                	add    %al,(%rsi)
 32e:	00 00                	add    %al,(%rax)
 330:	00 00                	add    %al,(%rax)
 332:	00 00                	add    %al,(%rax)
 334:	00 01                	add    %al,(%rcx)
 336:	9c                   	pushfq 
 337:	4f 03 00             	rex.WRXB add (%r8),%r8
 33a:	00 18                	add    %bl,(%rax)
 33c:	78 73                	js     3b1 <_init-0x40003f>
 33e:	00 01                	add    %al,(%rcx)
 340:	13 4f 03             	adc    0x3(%rdi),%ecx
 343:	00 00                	add    %al,(%rax)
 345:	18 79 00             	sbb    %bh,0x0(%rcx)
 348:	01 14 5e             	add    %edx,(%rsi,%rbx,2)
 34b:	00 00                	add    %al,(%rax)
 34d:	00 00                	add    %al,(%rax)
 34f:	0b 5e 00             	or     0x0(%rsi),%ebx
 352:	00 00                	add    %al,(%rax)
 354:	5f                   	pop    %rdi
 355:	03 00                	add    (%rax),%eax
 357:	00 0c 82             	add    %cl,(%rdx,%rax,4)
 35a:	00 00                	add    %al,(%rax)
 35c:	00 05 00 17 b3 00    	add    %al,0xb31700(%rip)        # b31a62 <_end+0x530a22>
 362:	00 00                	add    %al,(%rax)
 364:	01 1d c8 02 00 00    	add    %ebx,0x2c8(%rip)        # 632 <_init-0x3ffdbe>
 36a:	5e                   	pop    %rsi
 36b:	00 00                	add    %al,(%rax)
 36d:	00 d0                	add    %dl,%al
 36f:	05 40 00 00 00       	add    $0x40,%eax
 374:	00 00                	add    %al,(%rax)
 376:	62                   	(bad)  
 377:	00 00                	add    %al,(%rax)
 379:	00 00                	add    %al,(%rax)
 37b:	00 00                	add    %al,(%rax)
 37d:	00 01                	add    %al,(%rcx)
 37f:	9c                   	pushfq 
 380:	90                   	nop
 381:	03 00                	add    (%rax),%eax
 383:	00 19                	add    %bl,(%rcx)
 385:	79 00                	jns    387 <_init-0x400069>
 387:	01 1e                	add    %ebx,(%rsi)
 389:	5e                   	pop    %rsi
 38a:	00 00                	add    %al,(%rax)
 38c:	00 01                	add    %al,(%rcx)
 38e:	50                   	push   %rax
 38f:	00 1a                	add    %bl,(%rdx)
 391:	b4 02                	mov    $0x2,%ah
 393:	00 00                	add    %al,(%rax)
 395:	01 4f 5e             	add    %ecx,0x5e(%rdi)
 398:	00 00                	add    %al,(%rax)
 39a:	00 50 04             	add    %dl,0x4(%rax)
 39d:	40 00 00             	add    %al,(%rax)
 3a0:	00 00                	add    %al,(%rax)
 3a2:	00 3b                	add    %bh,(%rbx)
 3a4:	00 00                	add    %al,(%rax)
 3a6:	00 00                	add    %al,(%rax)
 3a8:	00 00                	add    %al,(%rax)
 3aa:	00 01                	add    %al,(%rcx)
 3ac:	9c                   	pushfq 
 3ad:	74 04                	je     3b3 <_init-0x40003d>
 3af:	00 00                	add    %al,(%rax)
 3b1:	1b af 02 00 00 01    	sbb    0x1000002(%rdi),%ebp
 3b7:	4f 5e                	rex.WRXB pop %r14
 3b9:	00 00                	add    %al,(%rax)
 3bb:	00 00                	add    %al,(%rax)
 3bd:	00 00                	add    %al,(%rax)
 3bf:	00 1b                	add    %bl,(%rbx)
 3c1:	9a                   	(bad)  
 3c2:	02 00                	add    (%rax),%al
 3c4:	00 01                	add    %al,(%rcx)
 3c6:	4f 74 04             	rex.WRXB je 3cd <_init-0x400023>
 3c9:	00 00                	add    %al,(%rax)
 3cb:	39 00                	cmp    %eax,(%rax)
 3cd:	00 00                	add    %al,(%rax)
 3cf:	1c c6                	sbb    $0xc6,%al
 3d1:	02 00                	add    (%rax),%al
 3d3:	00 59 04             	add    %bl,0x4(%rcx)
 3d6:	40 00 00             	add    %al,(%rax)
 3d9:	00 00                	add    %al,(%rax)
 3db:	00 13                	add    %dl,(%rbx)
 3dd:	00 00                	add    %al,(%rax)
 3df:	00 00                	add    %al,(%rax)
 3e1:	00 00                	add    %al,(%rax)
 3e3:	00 01                	add    %al,(%rcx)
 3e5:	50                   	push   %rax
 3e6:	14 04                	adc    $0x4,%al
 3e8:	00 00                	add    %al,(%rax)
 3ea:	1d d6 02 00 00       	sbb    $0x2d6,%eax
 3ef:	72 00                	jb     3f1 <_init-0x3fffff>
 3f1:	00 00                	add    %al,(%rax)
 3f3:	1e                   	(bad)  
 3f4:	6c                   	insb   (%dx),%es:(%rdi)
 3f5:	04 40                	add    $0x40,%al
 3f7:	00 00                	add    %al,(%rax)
 3f9:	00 00                	add    %al,(%rax)
 3fb:	00 90 04 00 00 1f    	add    %dl,0x1f000004(%rax)
 401:	01 55 01             	add    %edx,0x1(%rbp)
 404:	31 1f                	xor    %ebx,(%rdi)
 406:	01 54 09 03          	add    %edx,0x3(%rcx,%rcx,1)
 40a:	c4                   	(bad)  
 40b:	06                   	(bad)  
 40c:	40 00 00             	add    %al,(%rax)
 40f:	00 00                	add    %al,(%rax)
 411:	00 00                	add    %al,(%rax)
 413:	00 1c c6             	add    %bl,(%rsi,%rax,8)
 416:	02 00                	add    (%rax),%al
 418:	00 71 04             	add    %dh,0x4(%rcx)
 41b:	40 00 00             	add    %al,(%rax)
 41e:	00 00                	add    %al,(%rax)
 420:	00 13                	add    %dl,(%rbx)
 422:	00 00                	add    %al,(%rax)
 424:	00 00                	add    %al,(%rax)
 426:	00 00                	add    %al,(%rax)
 428:	00 01                	add    %al,(%rcx)
 42a:	51                   	push   %rcx
 42b:	59                   	pop    %rcx
 42c:	04 00                	add    $0x0,%al
 42e:	00 1d d6 02 00 00    	add    %bl,0x2d6(%rip)        # 70a <_init-0x3ffce6>
 434:	9e                   	sahf   
 435:	00 00                	add    %al,(%rax)
 437:	00 1e                	add    %bl,(%rsi)
 439:	84 04 40             	test   %al,(%rax,%rax,2)
 43c:	00 00                	add    %al,(%rax)
 43e:	00 00                	add    %al,(%rax)
 440:	00 90 04 00 00 1f    	add    %dl,0x1f000004(%rax)
 446:	01 55 01             	add    %edx,0x1(%rbp)
 449:	31 1f                	xor    %ebx,(%rdi)
 44b:	01 54 09 03          	add    %edx,0x3(%rcx,%rcx,1)
 44f:	d3 06                	roll   %cl,(%rsi)
 451:	40 00 00             	add    %al,(%rax)
 454:	00 00                	add    %al,(%rax)
 456:	00 00                	add    %al,(%rax)
 458:	00 20                	add    %ah,(%rax)
 45a:	59                   	pop    %rcx
 45b:	04 40                	add    $0x40,%al
 45d:	00 00                	add    %al,(%rax)
 45f:	00 00                	add    %al,(%rax)
 461:	00 16                	add    %dl,(%rsi)
 463:	03 00                	add    (%rax),%eax
 465:	00 20                	add    %ah,(%rax)
 467:	71 04                	jno    46d <_init-0x3fff83>
 469:	40 00 00             	add    %al,(%rax)
 46c:	00 00                	add    %al,(%rax)
 46e:	00 5f 03             	add    %bl,0x3(%rdi)
 471:	00 00                	add    %al,(%rax)
 473:	00 06                	add    %al,(%rsi)
 475:	08 8b 00 00 00 21    	or     %cl,0x21000000(%rbx)
 47b:	37                   	(bad)  
 47c:	01 00                	add    %eax,(%rax)
 47e:	00 06                	add    %al,(%rsi)
 480:	a8 53                	test   $0x53,%al
 482:	02 00                	add    (%rax),%al
 484:	00 21                	add    %ah,(%rcx)
 486:	8f 01                	popq   (%rcx)
 488:	00 00                	add    %al,(%rax)
 48a:	06                   	(bad)  
 48b:	a9 53 02 00 00       	test   $0x253,%eax
 490:	22 9a 00 00 00 9a    	and    -0x66000000(%rdx),%bl
 496:	00 00                	add    %al,(%rax)
 498:	00 02                	add    %al,(%rdx)
 49a:	57                   	push   %rdi
	...

Disassembly of section .debug_abbrev:

0000000000000000 <.debug_abbrev>:
   0:	01 11                	add    %edx,(%rcx)
   2:	01 25 0e 13 0b 03    	add    %esp,0x30b130e(%rip)        # 30b1316 <_end+0x2ab02d6>
   8:	0e                   	(bad)  
   9:	1b 0e                	sbb    (%rsi),%ecx
   b:	55                   	push   %rbp
   c:	17                   	(bad)  
   d:	11 01                	adc    %eax,(%rcx)
   f:	10 17                	adc    %dl,(%rdi)
  11:	00 00                	add    %al,(%rax)
  13:	02 16                	add    (%rsi),%dl
  15:	00 03                	add    %al,(%rbx)
  17:	0e                   	(bad)  
  18:	3a 0b                	cmp    (%rbx),%cl
  1a:	3b 0b                	cmp    (%rbx),%ecx
  1c:	49 13 00             	adc    (%r8),%rax
  1f:	00 03                	add    %al,(%rbx)
  21:	24 00                	and    $0x0,%al
  23:	0b 0b                	or     (%rbx),%ecx
  25:	3e 0b 03             	or     %ds:(%rbx),%eax
  28:	0e                   	(bad)  
  29:	00 00                	add    %al,(%rax)
  2b:	04 24                	add    $0x24,%al
  2d:	00 0b                	add    %cl,(%rbx)
  2f:	0b 3e                	or     (%rsi),%edi
  31:	0b 03                	or     (%rbx),%eax
  33:	08 00                	or     %al,(%rax)
  35:	00 05 0f 00 0b 0b    	add    %al,0xb0b000f(%rip)        # b0b004a <_end+0xaaaf00a>
  3b:	00 00                	add    %al,(%rax)
  3d:	06                   	(bad)  
  3e:	0f 00 0b             	str    (%rbx)
  41:	0b 49 13             	or     0x13(%rcx),%ecx
  44:	00 00                	add    %al,(%rax)
  46:	07                   	(bad)  
  47:	13 01                	adc    (%rcx),%eax
  49:	03 0e                	add    (%rsi),%ecx
  4b:	0b 0b                	or     (%rbx),%ecx
  4d:	3a 0b                	cmp    (%rbx),%cl
  4f:	3b 0b                	cmp    (%rbx),%ecx
  51:	01 13                	add    %edx,(%rbx)
  53:	00 00                	add    %al,(%rax)
  55:	08 0d 00 03 0e 3a    	or     %cl,0x3a0e0300(%rip)        # 3a0e035b <_end+0x39adf31b>
  5b:	0b 3b                	or     (%rbx),%edi
  5d:	0b 49 13             	or     0x13(%rcx),%ecx
  60:	38 0b                	cmp    %cl,(%rbx)
  62:	00 00                	add    %al,(%rax)
  64:	09 0d 00 03 0e 3a    	or     %ecx,0x3a0e0300(%rip)        # 3a0e036a <_end+0x39adf32a>
  6a:	0b 3b                	or     (%rbx),%edi
  6c:	05 49 13 38 0b       	add    $0xb381349,%eax
  71:	00 00                	add    %al,(%rax)
  73:	0a 16                	or     (%rsi),%dl
  75:	00 03                	add    %al,(%rbx)
  77:	0e                   	(bad)  
  78:	3a 0b                	cmp    (%rbx),%cl
  7a:	3b 0b                	cmp    (%rbx),%ecx
  7c:	00 00                	add    %al,(%rax)
  7e:	0b 01                	or     (%rcx),%eax
  80:	01 49 13             	add    %ecx,0x13(%rcx)
  83:	01 13                	add    %edx,(%rbx)
  85:	00 00                	add    %al,(%rax)
  87:	0c 21                	or     $0x21,%al
  89:	00 49 13             	add    %cl,0x13(%rcx)
  8c:	2f                   	(bad)  
  8d:	0b 00                	or     (%rax),%eax
  8f:	00 0d 26 00 49 13    	add    %cl,0x13490026(%rip)        # 134900bb <_end+0x12e8f07b>
  95:	00 00                	add    %al,(%rax)
  97:	0e                   	(bad)  
  98:	2e 01 3f             	add    %edi,%cs:(%rdi)
  9b:	19 03                	sbb    %eax,(%rbx)
  9d:	0e                   	(bad)  
  9e:	3a 0b                	cmp    (%rbx),%cl
  a0:	3b 0b                	cmp    (%rbx),%ecx
  a2:	6e                   	outsb  %ds:(%rsi),(%dx)
  a3:	0e                   	(bad)  
  a4:	20 0b                	and    %cl,(%rbx)
  a6:	01 13                	add    %edx,(%rbx)
  a8:	00 00                	add    %al,(%rax)
  aa:	0f 05                	syscall 
  ac:	00 03                	add    %al,(%rbx)
  ae:	08 3a                	or     %bh,(%rdx)
  b0:	0b 3b                	or     (%rbx),%edi
  b2:	0b 49 13             	or     0x13(%rcx),%ecx
  b5:	00 00                	add    %al,(%rax)
  b7:	10 10                	adc    %dl,(%rax)
  b9:	00 0b                	add    %cl,(%rbx)
  bb:	0b 49 13             	or     0x13(%rcx),%ecx
  be:	00 00                	add    %al,(%rax)
  c0:	11 2e                	adc    %ebp,(%rsi)
  c2:	01 3f                	add    %edi,(%rdi)
  c4:	19 03                	sbb    %eax,(%rbx)
  c6:	0e                   	(bad)  
  c7:	3a 0b                	cmp    (%rbx),%cl
  c9:	3b 0b                	cmp    (%rbx),%ecx
  cb:	49 13 20             	adc    (%r8),%rsp
  ce:	0b 34 19             	or     (%rcx,%rbx,1),%esi
  d1:	01 13                	add    %edx,(%rbx)
  d3:	00 00                	add    %al,(%rax)
  d5:	12 05 00 03 0e 3a    	adc    0x3a0e0300(%rip),%al        # 3a0e03db <_end+0x39adf39b>
  db:	0b 3b                	or     (%rbx),%edi
  dd:	0b 49 13             	or     0x13(%rcx),%ecx
  e0:	00 00                	add    %al,(%rax)
  e2:	13 18                	adc    (%rax),%ebx
  e4:	00 00                	add    %al,(%rax)
  e6:	00 14 37             	add    %dl,(%rdi,%rsi,1)
  e9:	00 49 13             	add    %cl,0x13(%rcx)
  ec:	00 00                	add    %al,(%rax)
  ee:	15 2e 01 31 13       	adc    $0x1331012e,%eax
  f3:	6e                   	outsb  %ds:(%rsi),(%dx)
  f4:	0e                   	(bad)  
  f5:	11 01                	adc    %eax,(%rcx)
  f7:	12 07                	adc    (%rdi),%al
  f9:	40 18 97 42 19 01 13 	sbb    %dl,0x13011942(%rdi)
 100:	00 00                	add    %al,(%rax)
 102:	16                   	(bad)  
 103:	05 00 31 13 02       	add    $0x2133100,%eax
 108:	18 00                	sbb    %al,(%rax)
 10a:	00 17                	add    %dl,(%rdi)
 10c:	2e 01 3f             	add    %edi,%cs:(%rdi)
 10f:	19 03                	sbb    %eax,(%rbx)
 111:	0e                   	(bad)  
 112:	3a 0b                	cmp    (%rbx),%cl
 114:	3b 0b                	cmp    (%rbx),%ecx
 116:	6e                   	outsb  %ds:(%rsi),(%dx)
 117:	0e                   	(bad)  
 118:	49 13 11             	adc    (%r9),%rdx
 11b:	01 12                	add    %edx,(%rdx)
 11d:	07                   	(bad)  
 11e:	40 18 97 42 19 01 13 	sbb    %dl,0x13011942(%rdi)
 125:	00 00                	add    %al,(%rax)
 127:	18 34 00             	sbb    %dh,(%rax,%rax,1)
 12a:	03 08                	add    (%rax),%ecx
 12c:	3a 0b                	cmp    (%rbx),%cl
 12e:	3b 0b                	cmp    (%rbx),%ecx
 130:	49 13 00             	adc    (%r8),%rax
 133:	00 19                	add    %bl,(%rcx)
 135:	34 00                	xor    $0x0,%al
 137:	03 08                	add    (%rax),%ecx
 139:	3a 0b                	cmp    (%rbx),%cl
 13b:	3b 0b                	cmp    (%rbx),%ecx
 13d:	49 13 02             	adc    (%r10),%rax
 140:	18 00                	sbb    %al,(%rax)
 142:	00 1a                	add    %bl,(%rdx)
 144:	2e 01 3f             	add    %edi,%cs:(%rdi)
 147:	19 03                	sbb    %eax,(%rbx)
 149:	0e                   	(bad)  
 14a:	3a 0b                	cmp    (%rbx),%cl
 14c:	3b 0b                	cmp    (%rbx),%ecx
 14e:	49 13 11             	adc    (%r9),%rdx
 151:	01 12                	add    %edx,(%rdx)
 153:	07                   	(bad)  
 154:	40 18 97 42 19 01 13 	sbb    %dl,0x13011942(%rdi)
 15b:	00 00                	add    %al,(%rax)
 15d:	1b 05 00 03 0e 3a    	sbb    0x3a0e0300(%rip),%eax        # 3a0e0463 <_end+0x39adf423>
 163:	0b 3b                	or     (%rbx),%edi
 165:	0b 49 13             	or     0x13(%rcx),%ecx
 168:	02 17                	add    (%rdi),%dl
 16a:	00 00                	add    %al,(%rax)
 16c:	1c 1d                	sbb    $0x1d,%al
 16e:	01 31                	add    %esi,(%rcx)
 170:	13 11                	adc    (%rcx),%edx
 172:	01 12                	add    %edx,(%rdx)
 174:	07                   	(bad)  
 175:	58                   	pop    %rax
 176:	0b 59 0b             	or     0xb(%rcx),%ebx
 179:	01 13                	add    %edx,(%rbx)
 17b:	00 00                	add    %al,(%rax)
 17d:	1d 05 00 31 13       	sbb    $0x13310005,%eax
 182:	02 17                	add    (%rdi),%dl
 184:	00 00                	add    %al,(%rax)
 186:	1e                   	(bad)  
 187:	89 82 01 01 11 01    	mov    %eax,0x1110101(%rdx)
 18d:	31 13                	xor    %edx,(%rbx)
 18f:	00 00                	add    %al,(%rax)
 191:	1f                   	(bad)  
 192:	8a 82 01 00 02 18    	mov    0x18020001(%rdx),%al
 198:	91                   	xchg   %eax,%ecx
 199:	42 18 00             	rex.X sbb %al,(%rax)
 19c:	00 20                	add    %ah,(%rax)
 19e:	89 82 01 00 11 01    	mov    %eax,0x1110001(%rdx)
 1a4:	31 13                	xor    %edx,(%rbx)
 1a6:	00 00                	add    %al,(%rax)
 1a8:	21 34 00             	and    %esi,(%rax,%rax,1)
 1ab:	03 0e                	add    (%rsi),%ecx
 1ad:	3a 0b                	cmp    (%rbx),%cl
 1af:	3b 0b                	cmp    (%rbx),%ecx
 1b1:	49 13 3f             	adc    (%r15),%rdi
 1b4:	19 3c 19             	sbb    %edi,(%rcx,%rbx,1)
 1b7:	00 00                	add    %al,(%rax)
 1b9:	22 2e                	and    (%rsi),%ch
 1bb:	00 3f                	add    %bh,(%rdi)
 1bd:	19 3c 19             	sbb    %edi,(%rcx,%rbx,1)
 1c0:	6e                   	outsb  %ds:(%rsi),(%dx)
 1c1:	0e                   	(bad)  
 1c2:	03 0e                	add    (%rsi),%ecx
 1c4:	3a 0b                	cmp    (%rbx),%cl
 1c6:	3b 0b                	cmp    (%rbx),%ecx
 1c8:	00 00                	add    %al,(%rax)
	...

Disassembly of section .debug_line:

0000000000000000 <.debug_line>:
   0:	1c 01                	sbb    $0x1,%al
   2:	00 00                	add    %al,(%rax)
   4:	02 00                	add    (%rax),%al
   6:	ca 00 00             	lret   $0x0
   9:	00 01                	add    %al,(%rcx)
   b:	01 fb                	add    %edi,%ebx
   d:	0e                   	(bad)  
   e:	0d 00 01 01 01       	or     $0x1010100,%eax
  13:	01 00                	add    %eax,(%rax)
  15:	00 00                	add    %al,(%rax)
  17:	01 00                	add    %eax,(%rax)
  19:	00 01                	add    %al,(%rcx)
  1b:	73 72                	jae    8f <_init-0x400361>
  1d:	63 2f                	movslq (%rdi),%ebp
  1f:	6a 75                	pushq  $0x75
  21:	6d                   	insl   (%dx),%es:(%rdi)
  22:	70 74                	jo     98 <_init-0x400358>
  24:	61                   	(bad)  
  25:	62                   	(bad)  
  26:	6c                   	insb   (%dx),%es:(%rdi)
  27:	65 00 2f             	add    %ch,%gs:(%rdi)
  2a:	75 73                	jne    9f <_init-0x400351>
  2c:	72 2f                	jb     5d <_init-0x400393>
  2e:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%rsi),%ebp
  35:	2f                   	(bad)  
  36:	78 38                	js     70 <_init-0x400380>
  38:	36 5f                	ss pop %rdi
  3a:	36 34 2d             	ss xor $0x2d,%al
  3d:	6c                   	insb   (%dx),%es:(%rdi)
  3e:	69 6e 75 78 2d 67 6e 	imul   $0x6e672d78,0x75(%rsi),%ebp
  45:	75 2f                	jne    76 <_init-0x40037a>
  47:	62                   	(bad)  
  48:	69 74 73 00 2f 75 73 	imul   $0x7273752f,0x0(%rbx,%rsi,2),%esi
  4f:	72 
  50:	2f                   	(bad)  
  51:	6c                   	insb   (%dx),%es:(%rdi)
  52:	69 62 2f 67 63 63 2f 	imul   $0x2f636367,0x2f(%rdx),%esp
  59:	78 38                	js     93 <_init-0x40035d>
  5b:	36 5f                	ss pop %rdi
  5d:	36 34 2d             	ss xor $0x2d,%al
  60:	6c                   	insb   (%dx),%es:(%rdi)
  61:	69 6e 75 78 2d 67 6e 	imul   $0x6e672d78,0x75(%rsi),%ebp
  68:	75 2f                	jne    99 <_init-0x400357>
  6a:	35 2f 69 6e 63       	xor    $0x636e692f,%eax
  6f:	6c                   	insb   (%dx),%es:(%rdi)
  70:	75 64                	jne    d6 <_init-0x40031a>
  72:	65 00 2f             	add    %ch,%gs:(%rdi)
  75:	75 73                	jne    ea <_init-0x400306>
  77:	72 2f                	jb     a8 <_init-0x400348>
  79:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%rsi),%ebp
  80:	00 00                	add    %al,(%rax)
  82:	6a 75                	pushq  $0x75
  84:	6d                   	insl   (%dx),%es:(%rdi)
  85:	70 74                	jo     fb <_init-0x4002f5>
  87:	61                   	(bad)  
  88:	62                   	(bad)  
  89:	6c                   	insb   (%dx),%es:(%rdi)
  8a:	65 5f                	gs pop %rdi
  8c:	6c                   	insb   (%dx),%es:(%rdi)
  8d:	6f                   	outsl  %ds:(%rsi),(%dx)
  8e:	6f                   	outsl  %ds:(%rsi),(%dx)
  8f:	70 65                	jo     f6 <_init-0x4002fa>
  91:	64 2e 63 70 70       	fs movslq %cs:0x70(%rax),%esi
  96:	00 01                	add    %al,(%rcx)
  98:	00 00                	add    %al,(%rax)
  9a:	73 74                	jae    110 <_init-0x4002e0>
  9c:	64 69 6f 32 2e 68 00 	imul   $0x200682e,%fs:0x32(%rdi),%ebp
  a3:	02 
  a4:	00 00                	add    %al,(%rax)
  a6:	73 74                	jae    11c <_init-0x4002d4>
  a8:	64 64 65 66 2e 68 00 	fs fs gs cs pushw $0x300
  af:	03 
  b0:	00 00                	add    %al,(%rax)
  b2:	74 79                	je     12d <_init-0x4002c3>
  b4:	70 65                	jo     11b <_init-0x4002d5>
  b6:	73 2e                	jae    e6 <_init-0x40030a>
  b8:	68 00 02 00 00       	pushq  $0x200
  bd:	6c                   	insb   (%dx),%es:(%rdi)
  be:	69 62 69 6f 2e 68 00 	imul   $0x682e6f,0x69(%rdx),%esp
  c5:	04 00                	add    $0x0,%al
  c7:	00 73 74             	add    %dh,0x74(%rbx)
  ca:	64 69 6f 2e 68 00 04 	imul   $0x40068,%fs:0x2e(%rdi),%ebp
  d1:	00 
  d2:	00 00                	add    %al,(%rax)
  d4:	00 09                	add    %cl,(%rcx)
  d6:	02 90 05 40 00 00    	add    0x4005(%rax),%dl
  dc:	00 00                	add    %al,(%rax)
  de:	00 16                	add    %dl,(%rsi)
  e0:	13 de                	adc    %esi,%ebx
  e2:	03 7a 9e             	add    -0x62(%rdx),%edi
  e5:	86 80 8a 1a f5 03    	xchg   %al,0x3f51a8a(%rax)
  eb:	2d 01 02 61 15       	sub    $0x15610201,%eax
  f0:	02 01                	add    (%rcx),%al
  f2:	00 01                	add    %al,(%rcx)
  f4:	01 00                	add    %eax,(%rax)
  f6:	09 02                	or     %eax,(%rdx)
  f8:	50                   	push   %rax
  f9:	04 40                	add    $0x40,%al
  fb:	00 00                	add    %al,(%rax)
  fd:	00 00                	add    %al,(%rax)
  ff:	00 03                	add    %al,(%rbx)
 101:	ce                   	(bad)  
 102:	00 01                	add    %al,(%rcx)
 104:	4b 04 02             	rex.WXB add $0x2,%al
 107:	03 18                	add    (%rax),%ebx
 109:	58                   	pop    %rax
 10a:	04 01                	add    $0x1,%al
 10c:	03 69 08             	add    0x8(%rcx),%ebp
 10f:	2e 04 02             	cs add $0x2,%al
 112:	03 17                	add    (%rdi),%edx
 114:	58                   	pop    %rax
 115:	04 01                	add    $0x1,%al
 117:	03 6b 08             	add    0x8(%rbx),%ebp
 11a:	2e 02 07             	add    %cs:(%rdi),%al
 11d:	00 01                	add    %al,(%rcx)
 11f:	01                   	.byte 0x1

Disassembly of section .debug_str:

0000000000000000 <.debug_str>:
   0:	70 72                	jo     74 <_init-0x40037c>
   2:	69 6e 74 66 00 5f 5f 	imul   $0x5f5f0066,0x74(%rsi),%ebp
   9:	6f                   	outsl  %ds:(%rsi),(%dx)
   a:	66 66 5f             	data16 pop %di
   d:	74 00                	je     f <_init-0x4003e1>
   f:	5f                   	pop    %rdi
  10:	49                   	rex.WB
  11:	4f 5f                	rex.WRXB pop %r15
  13:	72 65                	jb     7a <_init-0x400376>
  15:	61                   	(bad)  
  16:	64 5f                	fs pop %rdi
  18:	70 74                	jo     8e <_init-0x400362>
  1a:	72 00                	jb     1c <_init-0x4003d4>
  1c:	5f                   	pop    %rdi
  1d:	63 68 61             	movslq 0x61(%rax),%ebp
  20:	69 6e 00 73 69 7a 65 	imul   $0x657a6973,0x0(%rsi),%ebp
  27:	5f                   	pop    %rdi
  28:	74 00                	je     2a <_init-0x4003c6>
  2a:	5f                   	pop    %rdi
  2b:	73 68                	jae    95 <_init-0x40035b>
  2d:	6f                   	outsl  %ds:(%rsi),(%dx)
  2e:	72 74                	jb     a4 <_init-0x40034c>
  30:	62                   	(bad)  
  31:	75 66                	jne    99 <_init-0x400357>
  33:	00 5f 49             	add    %bl,0x49(%rdi)
  36:	4f 5f                	rex.WRXB pop %r15
  38:	62                   	(bad)  
  39:	75 66                	jne    a1 <_init-0x40034f>
  3b:	5f                   	pop    %rdi
  3c:	62 61                	(bad)  
  3e:	73 65                	jae    a5 <_init-0x40034b>
  40:	00 6c 6f 6e          	add    %ch,0x6e(%rdi,%rbp,2)
  44:	67 20 6c 6f 6e       	and    %ch,0x6e(%edi,%ebp,2)
  49:	67 20 75 6e          	and    %dh,0x6e(%ebp)
  4d:	73 69                	jae    b8 <_init-0x400338>
  4f:	67 6e                	outsb  %ds:(%esi),(%dx)
  51:	65 64 20 69 6e       	gs and %ch,%fs:0x6e(%rcx)
  56:	74 00                	je     58 <_init-0x400398>
  58:	6c                   	insb   (%dx),%es:(%rdi)
  59:	6f                   	outsl  %ds:(%rsi),(%dx)
  5a:	6e                   	outsb  %ds:(%rsi),(%dx)
  5b:	67 20 6c 6f 6e       	and    %ch,0x6e(%edi,%ebp,2)
  60:	67 20 69 6e          	and    %ch,0x6e(%ecx)
  64:	74 00                	je     66 <_init-0x40038a>
  66:	5f                   	pop    %rdi
  67:	66 69 6c 65 6e 6f 00 	imul   $0x6f,0x6e(%rbp,%riz,2),%bp
  6e:	5f                   	pop    %rdi
  6f:	49                   	rex.WB
  70:	4f 5f                	rex.WRXB pop %r15
  72:	72 65                	jb     d9 <_init-0x400317>
  74:	61                   	(bad)  
  75:	64 5f                	fs pop %rdi
  77:	65 6e                	outsb  %gs:(%rsi),(%dx)
  79:	64 00 5f 66          	add    %bl,%fs:0x66(%rdi)
  7d:	6c                   	insb   (%dx),%es:(%rdi)
  7e:	61                   	(bad)  
  7f:	67 73 00             	addr32 jae 82 <_init-0x40036e>
  82:	5f                   	pop    %rdi
  83:	49                   	rex.WB
  84:	4f 5f                	rex.WRXB pop %r15
  86:	62                   	(bad)  
  87:	75 66                	jne    ef <_init-0x400301>
  89:	5f                   	pop    %rdi
  8a:	65 6e                	outsb  %gs:(%rsi),(%dx)
  8c:	64 00 5f 63          	add    %bl,%fs:0x63(%rdi)
  90:	75 72                	jne    104 <_init-0x4002ec>
  92:	5f                   	pop    %rdi
  93:	63 6f 6c             	movslq 0x6c(%rdi),%ebp
  96:	75 6d                	jne    105 <_init-0x4002eb>
  98:	6e                   	outsb  %ds:(%rsi),(%dx)
  99:	00 5f 5f             	add    %bl,0x5f(%rdi)
  9c:	70 72                	jo     110 <_init-0x4002e0>
  9e:	69 6e 74 66 5f 63 68 	imul   $0x68635f66,0x74(%rsi),%ebp
  a5:	6b 00 5f             	imul   $0x5f,(%rax),%eax
  a8:	6f                   	outsl  %ds:(%rsi),(%dx)
  a9:	6c                   	insb   (%dx),%es:(%rdi)
  aa:	64 5f                	fs pop %rdi
  ac:	6f                   	outsl  %ds:(%rsi),(%dx)
  ad:	66 66 73 65          	data16 data16 jae 116 <_init-0x4002da>
  b1:	74 00                	je     b3 <_init-0x40033d>
  b3:	61                   	(bad)  
  b4:	63 74 75 61          	movslq 0x61(%rbp,%rsi,2),%esi
  b8:	6c                   	insb   (%dx),%es:(%rdi)
  b9:	5f                   	pop    %rdi
  ba:	6c                   	insb   (%dx),%es:(%rdi)
  bb:	6f                   	outsl  %ds:(%rsi),(%dx)
  bc:	6f                   	outsl  %ds:(%rsi),(%dx)
  bd:	70 65                	jo     124 <_init-0x4002cc>
  bf:	64 00 47 4e          	add    %al,%fs:0x4e(%rdi)
  c3:	55                   	push   %rbp
  c4:	20 43 2b             	and    %al,0x2b(%rbx)
  c7:	2b 31                	sub    (%rcx),%esi
  c9:	31 20                	xor    %esp,(%rax)
  cb:	35 2e 34 2e 30       	xor    $0x302e342e,%eax
  d0:	20 32                	and    %dh,(%rdx)
  d2:	30 31                	xor    %dh,(%rcx)
  d4:	36 30 36             	xor    %dh,%ss:(%rsi)
  d7:	30 39                	xor    %bh,(%rcx)
  d9:	20 2d 6d 61 76 78    	and    %ch,0x7876616d(%rip)        # 7876624c <_end+0x7816520c>
  df:	35 31 32 66 20       	xor    $0x20663231,%eax
  e4:	2d 6d 74 75 6e       	sub    $0x6e75746d,%eax
  e9:	65 3d 67 65 6e 65    	gs cmp $0x656e6567,%eax
  ef:	72 69                	jb     15a <_init-0x400296>
  f1:	63 20                	movslq (%rax),%esp
  f3:	2d 6d 61 72 63       	sub    $0x6372616d,%eax
  f8:	68 3d 78 38 36       	pushq  $0x3638783d
  fd:	2d 36 34 20 2d       	sub    $0x2d203436,%eax
 102:	67 20 2d 4f 33 20 2d 	and    %ch,0x2d20334f(%eip)        # 2d203458 <_end+0x2cc02418>
 109:	73 74                	jae    17f <_init-0x400271>
 10b:	64 3d 63 2b 2b 31    	fs cmp $0x312b2b63,%eax
 111:	31 20                	xor    %esp,(%rax)
 113:	2d 66 73 74 61       	sub    $0x61747366,%eax
 118:	63 6b 2d             	movslq 0x2d(%rbx),%ebp
 11b:	70 72                	jo     18f <_init-0x400261>
 11d:	6f                   	outsl  %ds:(%rsi),(%dx)
 11e:	74 65                	je     185 <_init-0x40026b>
 120:	63 74 6f 72          	movslq 0x72(%rdi,%rbp,2),%esi
 124:	2d 73 74 72 6f       	sub    $0x6f727473,%eax
 129:	6e                   	outsb  %ds:(%rsi),(%dx)
 12a:	67 00 5f 49          	add    %bl,0x49(%edi)
 12e:	4f 5f                	rex.WRXB pop %r15
 130:	6d                   	insl   (%dx),%es:(%rdi)
 131:	61                   	(bad)  
 132:	72 6b                	jb     19f <_init-0x400251>
 134:	65 72 00             	gs jb  137 <_init-0x4002b9>
 137:	73 74                	jae    1ad <_init-0x400243>
 139:	64 69 6e 00 65 78 70 	imul   $0x65707865,%fs:0x0(%rsi),%ebp
 140:	65 
 141:	63 74 65 64          	movslq 0x64(%rbp,%riz,2),%esi
 145:	00 5f 49             	add    %bl,0x49(%rdi)
 148:	4f 5f                	rex.WRXB pop %r15
 14a:	77 72                	ja     1be <_init-0x400232>
 14c:	69 74 65 5f 70 74 72 	imul   $0x727470,0x5f(%rbp,%riz,2),%esi
 153:	00 
 154:	5f                   	pop    %rdi
 155:	73 62                	jae    1b9 <_init-0x400237>
 157:	75 66                	jne    1bf <_init-0x400231>
 159:	00 73 68             	add    %dh,0x68(%rbx)
 15c:	6f                   	outsl  %ds:(%rsi),(%dx)
 15d:	72 74                	jb     1d3 <_init-0x40021d>
 15f:	20 75 6e             	and    %dh,0x6e(%rbp)
 162:	73 69                	jae    1cd <_init-0x400223>
 164:	67 6e                	outsb  %ds:(%esi),(%dx)
 166:	65 64 20 69 6e       	gs and %ch,%fs:0x6e(%rcx)
 16b:	74 00                	je     16d <_init-0x400283>
 16d:	5f                   	pop    %rdi
 16e:	49                   	rex.WB
 16f:	4f 5f                	rex.WRXB pop %r15
 171:	73 61                	jae    1d4 <_init-0x40021c>
 173:	76 65                	jbe    1da <_init-0x400216>
 175:	5f                   	pop    %rdi
 176:	62 61                	(bad)  
 178:	73 65                	jae    1df <_init-0x400211>
 17a:	00 5f 6c             	add    %bl,0x6c(%rdi)
 17d:	6f                   	outsl  %ds:(%rsi),(%dx)
 17e:	63 6b 00             	movslq 0x0(%rbx),%ebp
 181:	5f                   	pop    %rdi
 182:	66 6c                	data16 insb (%dx),%es:(%rdi)
 184:	61                   	(bad)  
 185:	67 73 32             	addr32 jae 1ba <_init-0x400236>
 188:	00 5f 6d             	add    %bl,0x6d(%rdi)
 18b:	6f                   	outsl  %ds:(%rsi),(%dx)
 18c:	64 65 00 73 74       	fs add %dh,%gs:0x74(%rbx)
 191:	64 6f                	outsl  %fs:(%rsi),(%dx)
 193:	75 74                	jne    209 <_init-0x4001e7>
 195:	00 73 72             	add    %dh,0x72(%rbx)
 198:	63 2f                	movslq (%rdi),%ebp
 19a:	6a 75                	pushq  $0x75
 19c:	6d                   	insl   (%dx),%es:(%rdi)
 19d:	70 74                	jo     213 <_init-0x4001dd>
 19f:	61                   	(bad)  
 1a0:	62                   	(bad)  
 1a1:	6c                   	insb   (%dx),%es:(%rdi)
 1a2:	65 2f                	gs (bad) 
 1a4:	6a 75                	pushq  $0x75
 1a6:	6d                   	insl   (%dx),%es:(%rdi)
 1a7:	70 74                	jo     21d <_init-0x4001d3>
 1a9:	61                   	(bad)  
 1aa:	62                   	(bad)  
 1ab:	6c                   	insb   (%dx),%es:(%rdi)
 1ac:	65 5f                	gs pop %rdi
 1ae:	6c                   	insb   (%dx),%es:(%rdi)
 1af:	6f                   	outsl  %ds:(%rsi),(%dx)
 1b0:	6f                   	outsl  %ds:(%rsi),(%dx)
 1b1:	70 65                	jo     218 <_init-0x4001d8>
 1b3:	64 2e 63 70 70       	fs movslq %cs:0x70(%rax),%esi
 1b8:	00 73 69             	add    %dh,0x69(%rbx)
 1bb:	7a 65                	jp     222 <_init-0x4001ce>
 1bd:	74 79                	je     238 <_init-0x4001b8>
 1bf:	70 65                	jo     226 <_init-0x4001ca>
 1c1:	00 5f 49             	add    %bl,0x49(%rdi)
 1c4:	4f 5f                	rex.WRXB pop %r15
 1c6:	77 72                	ja     23a <_init-0x4001b6>
 1c8:	69 74 65 5f 65 6e 64 	imul   $0x646e65,0x5f(%rbp,%riz,2),%esi
 1cf:	00 
 1d0:	5f                   	pop    %rdi
 1d1:	49                   	rex.WB
 1d2:	4f 5f                	rex.WRXB pop %r15
 1d4:	6c                   	insb   (%dx),%es:(%rdi)
 1d5:	6f                   	outsl  %ds:(%rsi),(%dx)
 1d6:	63 6b 5f             	movslq 0x5f(%rbx),%ebp
 1d9:	74 00                	je     1db <_init-0x400215>
 1db:	5f                   	pop    %rdi
 1dc:	49                   	rex.WB
 1dd:	4f 5f                	rex.WRXB pop %r15
 1df:	46                   	rex.RX
 1e0:	49                   	rex.WB
 1e1:	4c                   	rex.WR
 1e2:	45 00 5f 70          	add    %r11b,0x70(%r15)
 1e6:	6f                   	outsl  %ds:(%rsi),(%dx)
 1e7:	73 00                	jae    1e9 <_init-0x400207>
 1e9:	5f                   	pop    %rdi
 1ea:	6d                   	insl   (%dx),%es:(%rdi)
 1eb:	61                   	(bad)  
 1ec:	72 6b                	jb     259 <_init-0x400197>
 1ee:	65 72 73             	gs jb  264 <_init-0x40018c>
 1f1:	00 75 6e             	add    %dh,0x6e(%rbp)
 1f4:	73 69                	jae    25f <_init-0x400191>
 1f6:	67 6e                	outsb  %ds:(%esi),(%dx)
 1f8:	65 64 20 63 68       	gs and %ah,%fs:0x68(%rbx)
 1fd:	61                   	(bad)  
 1fe:	72 00                	jb     200 <_init-0x4001f0>
 200:	73 68                	jae    26a <_init-0x400186>
 202:	6f                   	outsl  %ds:(%rsi),(%dx)
 203:	72 74                	jb     279 <_init-0x400177>
 205:	20 69 6e             	and    %ch,0x6e(%rcx)
 208:	74 00                	je     20a <_init-0x4001e6>
 20a:	74 61                	je     26d <_init-0x400183>
 20c:	62                   	(bad)  
 20d:	6c                   	insb   (%dx),%es:(%rdi)
 20e:	65 00 5f 76          	add    %bl,%gs:0x76(%rdi)
 212:	74 61                	je     275 <_init-0x40017b>
 214:	62                   	(bad)  
 215:	6c                   	insb   (%dx),%es:(%rdi)
 216:	65 5f                	gs pop %rdi
 218:	6f                   	outsl  %ds:(%rsi),(%dx)
 219:	66 66 73 65          	data16 data16 jae 282 <_init-0x40016e>
 21d:	74 00                	je     21f <_init-0x4001d1>
 21f:	2f                   	(bad)  
 220:	73 72                	jae    294 <_init-0x40015c>
 222:	63 00                	movslq (%rax),%eax
 224:	5f                   	pop    %rdi
 225:	5a                   	pop    %rdx
 226:	35 74 61 62 6c       	xor    $0x6c626174,%eax
 22b:	65 69 52 69 00 5f 5a 	imul   $0x385a5f00,%gs:0x69(%rdx),%edx
 232:	38 
 233:	65 78 70             	gs js  2a6 <_init-0x40014a>
 236:	65 63 74 65 64       	movslq %gs:0x64(%rbp,%riz,2),%esi
 23b:	76 00                	jbe    23d <_init-0x4001b3>
 23d:	5f                   	pop    %rdi
 23e:	6e                   	outsb  %ds:(%rsi),(%dx)
 23f:	65 78 74             	gs js  2b6 <_init-0x40013a>
 242:	00 5f 5f             	add    %bl,0x5f(%rdi)
 245:	6f                   	outsl  %ds:(%rsi),(%dx)
 246:	66 66 36 34 5f       	data16 data16 ss xor $0x5f,%al
 24b:	74 00                	je     24d <_init-0x4001a3>
 24d:	5f                   	pop    %rdi
 24e:	49                   	rex.WB
 24f:	4f 5f                	rex.WRXB pop %r15
 251:	72 65                	jb     2b8 <_init-0x400138>
 253:	61                   	(bad)  
 254:	64 5f                	fs pop %rdi
 256:	62 61                	(bad)  
 258:	73 65                	jae    2bf <_init-0x400131>
 25a:	00 5f 49             	add    %bl,0x49(%rdi)
 25d:	4f 5f                	rex.WRXB pop %r15
 25f:	73 61                	jae    2c2 <_init-0x40012e>
 261:	76 65                	jbe    2c8 <_init-0x400128>
 263:	5f                   	pop    %rdi
 264:	65 6e                	outsb  %gs:(%rsi),(%dx)
 266:	64 00 5f 5f          	add    %bl,%fs:0x5f(%rdi)
 26a:	66 6d                	insw   (%dx),%es:(%rdi)
 26c:	74 00                	je     26e <_init-0x400182>
 26e:	5f                   	pop    %rdi
 26f:	5f                   	pop    %rdi
 270:	70 61                	jo     2d3 <_init-0x40011d>
 272:	64 31 00             	xor    %eax,%fs:(%rax)
 275:	5f                   	pop    %rdi
 276:	5f                   	pop    %rdi
 277:	70 61                	jo     2da <_init-0x400116>
 279:	64 32 00             	xor    %fs:(%rax),%al
 27c:	5f                   	pop    %rdi
 27d:	5f                   	pop    %rdi
 27e:	70 61                	jo     2e1 <_init-0x40010f>
 280:	64 33 00             	xor    %fs:(%rax),%eax
 283:	5f                   	pop    %rdi
 284:	5f                   	pop    %rdi
 285:	70 61                	jo     2e8 <_init-0x400108>
 287:	64 34 00             	fs xor $0x0,%al
 28a:	5f                   	pop    %rdi
 28b:	5f                   	pop    %rdi
 28c:	70 61                	jo     2ef <_init-0x400101>
 28e:	64 35 00 5f 75 6e    	fs xor $0x6e755f00,%eax
 294:	75 73                	jne    309 <_init-0x4000e7>
 296:	65 64 32 00          	gs xor %fs:(%rax),%al
 29a:	61                   	(bad)  
 29b:	72 67                	jb     304 <_init-0x4000ec>
 29d:	76 00                	jbe    29f <_init-0x400151>
 29f:	5f                   	pop    %rdi
 2a0:	49                   	rex.WB
 2a1:	4f 5f                	rex.WRXB pop %r15
 2a3:	62 61                	(bad)  
 2a5:	63 6b 75             	movslq 0x75(%rbx),%ebp
 2a8:	70 5f                	jo     309 <_init-0x4000e7>
 2aa:	62 61                	(bad)  
 2ac:	73 65                	jae    313 <_init-0x4000dd>
 2ae:	00 61 72             	add    %ah,0x72(%rcx)
 2b1:	67 63 00             	movslq (%eax),%eax
 2b4:	6d                   	insl   (%dx),%es:(%rdi)
 2b5:	61                   	(bad)  
 2b6:	69 6e 00 5f 49 4f 5f 	imul   $0x5f4f495f,0x0(%rsi),%ebp
 2bd:	77 72                	ja     331 <_init-0x4000bf>
 2bf:	69 74 65 5f 62 61 73 	imul   $0x65736162,0x5f(%rbp,%riz,2),%esi
 2c6:	65 
 2c7:	00 5f 5a             	add    %bl,0x5a(%rdi)
 2ca:	31 33                	xor    %esi,(%rbx)
 2cc:	61                   	(bad)  
 2cd:	63 74 75 61          	movslq 0x61(%rbp,%rsi,2),%esi
 2d1:	6c                   	insb   (%dx),%es:(%rdi)
 2d2:	5f                   	pop    %rdi
 2d3:	6c                   	insb   (%dx),%es:(%rdi)
 2d4:	6f                   	outsl  %ds:(%rsi),(%dx)
 2d5:	6f                   	outsl  %ds:(%rsi),(%dx)
 2d6:	70 65                	jo     33d <_init-0x4000b3>
 2d8:	64 76 00             	fs jbe 2db <_init-0x400115>

Disassembly of section .debug_loc:

0000000000000000 <.debug_loc>:
   0:	50                   	push   %rax
   1:	04 40                	add    $0x40,%al
   3:	00 00                	add    %al,(%rax)
   5:	00 00                	add    %al,(%rax)
   7:	00 58 04             	add    %bl,0x4(%rax)
   a:	40 00 00             	add    %al,(%rax)
   d:	00 00                	add    %al,(%rax)
   f:	00 01                	add    %al,(%rcx)
  11:	00 55 58             	add    %dl,0x58(%rbp)
  14:	04 40                	add    $0x40,%al
  16:	00 00                	add    %al,(%rax)
  18:	00 00                	add    %al,(%rax)
  1a:	00 8b 04 40 00 00    	add    %cl,0x4004(%rbx)
  20:	00 00                	add    %al,(%rax)
  22:	00 04 00             	add    %al,(%rax,%rax,1)
  25:	f3 01 55 9f          	repz add %edx,-0x61(%rbp)
	...
  39:	50                   	push   %rax
  3a:	04 40                	add    $0x40,%al
  3c:	00 00                	add    %al,(%rax)
  3e:	00 00                	add    %al,(%rax)
  40:	00 58 04             	add    %bl,0x4(%rax)
  43:	40 00 00             	add    %al,(%rax)
  46:	00 00                	add    %al,(%rax)
  48:	00 01                	add    %al,(%rcx)
  4a:	00 54 58 04          	add    %dl,0x4(%rax,%rbx,2)
  4e:	40 00 00             	add    %al,(%rax)
  51:	00 00                	add    %al,(%rax)
  53:	00 8b 04 40 00 00    	add    %cl,0x4004(%rbx)
  59:	00 00                	add    %al,(%rax)
  5b:	00 04 00             	add    %al,(%rax,%rax,1)
  5e:	f3 01 54 9f 00       	repz add %edx,0x0(%rdi,%rbx,4)
	...
  6f:	00 00                	add    %al,(%rax)
  71:	00 59 04             	add    %bl,0x4(%rcx)
  74:	40 00 00             	add    %al,(%rax)
  77:	00 00                	add    %al,(%rax)
  79:	00 6c 04 40          	add    %ch,0x40(%rsp,%rax,1)
  7d:	00 00                	add    %al,(%rax)
  7f:	00 00                	add    %al,(%rax)
  81:	00 0a                	add    %cl,(%rdx)
  83:	00 03                	add    %al,(%rbx)
  85:	c4                   	(bad)  
  86:	06                   	(bad)  
  87:	40 00 00             	add    %al,(%rax)
  8a:	00 00                	add    %al,(%rax)
  8c:	00 9f 00 00 00 00    	add    %bl,0x0(%rdi)
	...
  9e:	71 04                	jno    a4 <_init-0x40034c>
  a0:	40 00 00             	add    %al,(%rax)
  a3:	00 00                	add    %al,(%rax)
  a5:	00 84 04 40 00 00 00 	add    %al,0x40(%rsp,%rax,1)
  ac:	00 00                	add    %al,(%rax)
  ae:	0a 00                	or     (%rax),%al
  b0:	03 d3                	add    %ebx,%edx
  b2:	06                   	(bad)  
  b3:	40 00 00             	add    %al,(%rax)
  b6:	00 00                	add    %al,(%rax)
  b8:	00 9f 00 00 00 00    	add    %bl,0x0(%rdi)
	...

Disassembly of section .debug_ranges:

0000000000000000 <.debug_ranges>:
   0:	90                   	nop
   1:	05 40 00 00 00       	add    $0x40,%eax
   6:	00 00                	add    %al,(%rax)
   8:	32 06                	xor    (%rsi),%al
   a:	40 00 00             	add    %al,(%rax)
   d:	00 00                	add    %al,(%rax)
   f:	00 50 04             	add    %dl,0x4(%rax)
  12:	40 00 00             	add    %al,(%rax)
  15:	00 00                	add    %al,(%rax)
  17:	00 8b 04 40 00 00    	add    %cl,0x4004(%rbx)
	...
