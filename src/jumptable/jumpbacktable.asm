
build/jumpbacktable:     file format elf64-x86-64


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
  400283:	00 53 b7             	add    %dl,-0x49(%rbx)
  400286:	bb 8d 2f 93 2f       	mov    $0x2f932f8d,%ebx
  40028b:	ab                   	stos   %eax,%es:(%rdi)
  40028c:	bb a4 8d 15 b2       	mov    $0xb2158da4,%ebx
  400291:	ed                   	in     (%dx),%eax
  400292:	3f                   	(bad)  
  400293:	ae                   	scas   %es:(%rdi),%al
  400294:	2a 19                	sub    (%rcx),%bl
  400296:	ab                   	stos   %eax,%es:(%rdi)
  400297:	54                   	push   %rsp

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
  400454:	ba 35 01 00 00       	mov    $0x135,%edx
  400459:	be e4 06 40 00       	mov    $0x4006e4,%esi
  40045e:	bf 01 00 00 00       	mov    $0x1,%edi
  400463:	31 c0                	xor    %eax,%eax
  400465:	e8 c6 ff ff ff       	callq  400430 <__printf_chk@plt>
  40046a:	e8 51 01 00 00       	callq  4005c0 <_Z15actual_unrolledv>
  40046f:	be f3 06 40 00       	mov    $0x4006f3,%esi
  400474:	89 c2                	mov    %eax,%edx
  400476:	bf 01 00 00 00       	mov    $0x1,%edi
  40047b:	31 c0                	xor    %eax,%eax
  40047d:	e8 ae ff ff ff       	callq  400430 <__printf_chk@plt>
  400482:	31 c0                	xor    %eax,%eax
  400484:	48 83 c4 08          	add    $0x8,%rsp
  400488:	c3                   	retq   
  400489:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400490 <_start>:
  400490:	31 ed                	xor    %ebp,%ebp
  400492:	49 89 d1             	mov    %rdx,%r9
  400495:	5e                   	pop    %rsi
  400496:	48 89 e2             	mov    %rsp,%rdx
  400499:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40049d:	50                   	push   %rax
  40049e:	54                   	push   %rsp
  40049f:	49 c7 c0 d0 06 40 00 	mov    $0x4006d0,%r8
  4004a6:	48 c7 c1 60 06 40 00 	mov    $0x400660,%rcx
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

0000000000400590 <_Z5tablei>:
  400590:	83 ff 02             	cmp    $0x2,%edi
  400593:	b8 63 00 00 00       	mov    $0x63,%eax
  400598:	77 09                	ja     4005a3 <_Z5tablei+0x13>
  40059a:	89 ff                	mov    %edi,%edi
  40059c:	8b 04 bd 10 07 40 00 	mov    0x400710(,%rdi,4),%eax
  4005a3:	f3 c3                	repz retq 
  4005a5:	90                   	nop
  4005a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4005ad:	00 00 00 

00000000004005b0 <_Z8expectedv>:
  4005b0:	b8 35 01 00 00       	mov    $0x135,%eax
  4005b5:	c3                   	retq   
  4005b6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4005bd:	00 00 00 

00000000004005c0 <_Z15actual_unrolledv>:
  4005c0:	b8 00 00 00 00       	mov    $0x0,%eax
  4005c5:	ba 00 00 00 00       	mov    $0x0,%edx
  4005ca:	49 c7 c2 d3 05 40 00 	mov    $0x4005d3,%r10
  4005d1:	eb 48                	jmp    40061b <SWITCH_35>

00000000004005d3 <RETURN_0_35>:
  4005d3:	ba 03 00 00 00       	mov    $0x3,%edx
  4005d8:	49 c7 c2 e1 05 40 00 	mov    $0x4005e1,%r10
  4005df:	eb 3a                	jmp    40061b <SWITCH_35>

00000000004005e1 <RETURN_1_35>:
  4005e1:	ba 02 00 00 00       	mov    $0x2,%edx
  4005e6:	49 c7 c2 ef 05 40 00 	mov    $0x4005ef,%r10
  4005ed:	eb 2c                	jmp    40061b <SWITCH_35>

00000000004005ef <RETURN_2_35>:
  4005ef:	ba 03 00 00 00       	mov    $0x3,%edx
  4005f4:	49 c7 c2 fd 05 40 00 	mov    $0x4005fd,%r10
  4005fb:	eb 1e                	jmp    40061b <SWITCH_35>

00000000004005fd <RETURN_3_35>:
  4005fd:	ba 01 00 00 00       	mov    $0x1,%edx
  400602:	49 c7 c2 0b 06 40 00 	mov    $0x40060b,%r10
  400609:	eb 10                	jmp    40061b <SWITCH_35>

000000000040060b <RETURN_4_35>:
  40060b:	ba 02 00 00 00       	mov    $0x2,%edx
  400610:	49 c7 c2 19 06 40 00 	mov    $0x400619,%r10
  400617:	eb 02                	jmp    40061b <SWITCH_35>

0000000000400619 <RETURN_5_35>:
  400619:	eb 42                	jmp    40065d <END_SWITCH_35>

000000000040061b <SWITCH_35>:
  40061b:	83 fa 00             	cmp    $0x0,%edx
  40061e:	7c 37                	jl     400657 <DEFAULT_35>
  400620:	83 fa 02             	cmp    $0x2,%edx
  400623:	7f 32                	jg     400657 <DEFAULT_35>
  400625:	67 ff 24 d5 2d 06 40 	jmpq   *0x40062d(,%edx,8)
  40062c:	00 

000000000040062d <TABLE_35>:
  40062d:	45 06                	rex.RB (bad) 
  40062f:	40 00 00             	add    %al,(%rax)
  400632:	00 00                	add    %al,(%rax)
  400634:	00 4b 06             	add    %cl,0x6(%rbx)
  400637:	40 00 00             	add    %al,(%rax)
  40063a:	00 00                	add    %al,(%rax)
  40063c:	00 51 06             	add    %dl,0x6(%rcx)
  40063f:	40 00 00             	add    %al,(%rax)
  400642:	00 00                	add    %al,(%rax)
	...

0000000000400645 <CASE_0_35>:
  400645:	83 c0 16             	add    $0x16,%eax
  400648:	41 ff e2             	jmpq   *%r10

000000000040064b <CASE_1_35>:
  40064b:	83 c0 01             	add    $0x1,%eax
  40064e:	41 ff e2             	jmpq   *%r10

0000000000400651 <CASE_2_35>:
  400651:	83 c0 2c             	add    $0x2c,%eax
  400654:	41 ff e2             	jmpq   *%r10

0000000000400657 <DEFAULT_35>:
  400657:	83 c0 63             	add    $0x63,%eax
  40065a:	41 ff e2             	jmpq   *%r10

000000000040065d <END_SWITCH_35>:
  40065d:	c3                   	retq   
  40065e:	66 90                	xchg   %ax,%ax

0000000000400660 <__libc_csu_init>:
  400660:	41 57                	push   %r15
  400662:	41 56                	push   %r14
  400664:	41 89 ff             	mov    %edi,%r15d
  400667:	41 55                	push   %r13
  400669:	41 54                	push   %r12
  40066b:	4c 8d 25 9e 07 20 00 	lea    0x20079e(%rip),%r12        # 600e10 <__frame_dummy_init_array_entry>
  400672:	55                   	push   %rbp
  400673:	48 8d 2d 9e 07 20 00 	lea    0x20079e(%rip),%rbp        # 600e18 <__init_array_end>
  40067a:	53                   	push   %rbx
  40067b:	49 89 f6             	mov    %rsi,%r14
  40067e:	49 89 d5             	mov    %rdx,%r13
  400681:	4c 29 e5             	sub    %r12,%rbp
  400684:	48 83 ec 08          	sub    $0x8,%rsp
  400688:	48 c1 fd 03          	sar    $0x3,%rbp
  40068c:	e8 5f fd ff ff       	callq  4003f0 <_init>
  400691:	48 85 ed             	test   %rbp,%rbp
  400694:	74 20                	je     4006b6 <__libc_csu_init+0x56>
  400696:	31 db                	xor    %ebx,%ebx
  400698:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40069f:	00 
  4006a0:	4c 89 ea             	mov    %r13,%rdx
  4006a3:	4c 89 f6             	mov    %r14,%rsi
  4006a6:	44 89 ff             	mov    %r15d,%edi
  4006a9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  4006ad:	48 83 c3 01          	add    $0x1,%rbx
  4006b1:	48 39 eb             	cmp    %rbp,%rbx
  4006b4:	75 ea                	jne    4006a0 <__libc_csu_init+0x40>
  4006b6:	48 83 c4 08          	add    $0x8,%rsp
  4006ba:	5b                   	pop    %rbx
  4006bb:	5d                   	pop    %rbp
  4006bc:	41 5c                	pop    %r12
  4006be:	41 5d                	pop    %r13
  4006c0:	41 5e                	pop    %r14
  4006c2:	41 5f                	pop    %r15
  4006c4:	c3                   	retq   
  4006c5:	90                   	nop
  4006c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4006cd:	00 00 00 

00000000004006d0 <__libc_csu_fini>:
  4006d0:	f3 c3                	repz retq 

Disassembly of section .fini:

00000000004006d4 <_fini>:
  4006d4:	48 83 ec 08          	sub    $0x8,%rsp
  4006d8:	48 83 c4 08          	add    $0x8,%rsp
  4006dc:	c3                   	retq   

Disassembly of section .rodata:

00000000004006e0 <_IO_stdin_used>:
  4006e0:	01 00                	add    %eax,(%rax)
  4006e2:	02 00                	add    (%rax),%al
  4006e4:	65 78 70             	gs js  400757 <__GNU_EH_FRAME_HDR+0x3b>
  4006e7:	65 63 74 65 64       	movslq %gs:0x64(%rbp,%riz,2),%esi
  4006ec:	20 3d 20 25 64 0a    	and    %bh,0xa642520(%rip)        # aa42c12 <_end+0xa441bd2>
  4006f2:	00 61 63             	add    %ah,0x63(%rcx)
  4006f5:	74 75                	je     40076c <__GNU_EH_FRAME_HDR+0x50>
  4006f7:	61                   	(bad)  
  4006f8:	6c                   	insb   (%dx),%es:(%rdi)
  4006f9:	5f                   	pop    %rdi
  4006fa:	75 6e                	jne    40076a <__GNU_EH_FRAME_HDR+0x4e>
  4006fc:	72 6f                	jb     40076d <__GNU_EH_FRAME_HDR+0x51>
  4006fe:	6c                   	insb   (%dx),%es:(%rdi)
  4006ff:	6c                   	insb   (%dx),%es:(%rdi)
  400700:	65 64 20 3d 20 25 64 	gs and %bh,%fs:0xa642520(%rip)        # aa42c28 <_end+0xa441be8>
  400707:	0a 
	...

0000000000400710 <CSWTCH.2>:
  400710:	16                   	(bad)  
  400711:	00 00                	add    %al,(%rax)
  400713:	00 01                	add    %al,(%rcx)
  400715:	00 00                	add    %al,(%rax)
  400717:	00 2c 00             	add    %ch,(%rax,%rax,1)
	...

Disassembly of section .eh_frame_hdr:

000000000040071c <__GNU_EH_FRAME_HDR>:
  40071c:	01 1b                	add    %ebx,(%rbx)
  40071e:	03 3b                	add    (%rbx),%edi
  400720:	48 00 00             	rex.W add %al,(%rax)
  400723:	00 08                	add    %cl,(%rax)
  400725:	00 00                	add    %al,(%rax)
  400727:	00 f4                	add    %dh,%ah
  400729:	fc                   	cld    
  40072a:	ff                   	(bad)  
  40072b:	ff 94 00 00 00 34 fd 	callq  *-0x2cc0000(%rax,%rax,1)
  400732:	ff                   	(bad)  
  400733:	ff 04 01             	incl   (%rcx,%rax,1)
  400736:	00 00                	add    %al,(%rax)
  400738:	74 fd                	je     400737 <__GNU_EH_FRAME_HDR+0x1b>
  40073a:	ff                   	(bad)  
  40073b:	ff 64 00 00          	jmpq   *0x0(%rax,%rax,1)
  40073f:	00 74 fe ff          	add    %dh,-0x1(%rsi,%rdi,8)
  400743:	ff                   	(bad)  
  400744:	bc 00 00 00 94       	mov    $0x94000000,%esp
  400749:	fe                   	(bad)  
  40074a:	ff                   	(bad)  
  40074b:	ff d4                	callq  *%rsp
  40074d:	00 00                	add    %al,(%rax)
  40074f:	00 a4 fe ff ff ec 00 	add    %ah,0xecffff(%rsi,%rdi,8)
  400756:	00 00                	add    %al,(%rax)
  400758:	44 ff                	rex.R (bad) 
  40075a:	ff                   	(bad)  
  40075b:	ff 1c 01             	lcall  *(%rcx,%rax,1)
  40075e:	00 00                	add    %al,(%rax)
  400760:	b4 ff                	mov    $0xff,%ah
  400762:	ff                   	(bad)  
  400763:	ff 64 01 00          	jmpq   *0x0(%rcx,%rax,1)
	...

Disassembly of section .eh_frame:

0000000000400768 <__FRAME_END__-0x130>:
  400768:	14 00                	adc    $0x0,%al
  40076a:	00 00                	add    %al,(%rax)
  40076c:	00 00                	add    %al,(%rax)
  40076e:	00 00                	add    %al,(%rax)
  400770:	01 7a 52             	add    %edi,0x52(%rdx)
  400773:	00 01                	add    %al,(%rcx)
  400775:	78 10                	js     400787 <__GNU_EH_FRAME_HDR+0x6b>
  400777:	01 1b                	add    %ebx,(%rbx)
  400779:	0c 07                	or     $0x7,%al
  40077b:	08 90 01 07 10 14    	or     %dl,0x14100701(%rax)
  400781:	00 00                	add    %al,(%rax)
  400783:	00 1c 00             	add    %bl,(%rax,%rax,1)
  400786:	00 00                	add    %al,(%rax)
  400788:	08 fd                	or     %bh,%ch
  40078a:	ff                   	(bad)  
  40078b:	ff 2a                	ljmp   *(%rdx)
	...
  400795:	00 00                	add    %al,(%rax)
  400797:	00 14 00             	add    %dl,(%rax,%rax,1)
  40079a:	00 00                	add    %al,(%rax)
  40079c:	00 00                	add    %al,(%rax)
  40079e:	00 00                	add    %al,(%rax)
  4007a0:	01 7a 52             	add    %edi,0x52(%rdx)
  4007a3:	00 01                	add    %al,(%rcx)
  4007a5:	78 10                	js     4007b7 <__GNU_EH_FRAME_HDR+0x9b>
  4007a7:	01 1b                	add    %ebx,(%rbx)
  4007a9:	0c 07                	or     $0x7,%al
  4007ab:	08 90 01 00 00 24    	or     %dl,0x24000001(%rax)
  4007b1:	00 00                	add    %al,(%rax)
  4007b3:	00 1c 00             	add    %bl,(%rax,%rax,1)
  4007b6:	00 00                	add    %al,(%rax)
  4007b8:	58                   	pop    %rax
  4007b9:	fc                   	cld    
  4007ba:	ff                   	(bad)  
  4007bb:	ff 30                	pushq  (%rax)
  4007bd:	00 00                	add    %al,(%rax)
  4007bf:	00 00                	add    %al,(%rax)
  4007c1:	0e                   	(bad)  
  4007c2:	10 46 0e             	adc    %al,0xe(%rsi)
  4007c5:	18 4a 0f             	sbb    %cl,0xf(%rdx)
  4007c8:	0b 77 08             	or     0x8(%rdi),%esi
  4007cb:	80 00 3f             	addb   $0x3f,(%rax)
  4007ce:	1a 3b                	sbb    (%rbx),%bh
  4007d0:	2a 33                	sub    (%rbx),%dh
  4007d2:	24 22                	and    $0x22,%al
  4007d4:	00 00                	add    %al,(%rax)
  4007d6:	00 00                	add    %al,(%rax)
  4007d8:	14 00                	adc    $0x0,%al
  4007da:	00 00                	add    %al,(%rax)
  4007dc:	44 00 00             	add    %r8b,(%rax)
  4007df:	00 b0 fd ff ff 15    	add    %dh,0x15fffffd(%rax)
	...
  4007ed:	00 00                	add    %al,(%rax)
  4007ef:	00 14 00             	add    %dl,(%rax,%rax,1)
  4007f2:	00 00                	add    %al,(%rax)
  4007f4:	5c                   	pop    %rsp
  4007f5:	00 00                	add    %al,(%rax)
  4007f7:	00 b8 fd ff ff 06    	add    %bh,0x6fffffd(%rax)
	...
  400805:	00 00                	add    %al,(%rax)
  400807:	00 14 00             	add    %dl,(%rax,%rax,1)
  40080a:	00 00                	add    %al,(%rax)
  40080c:	74 00                	je     40080e <__GNU_EH_FRAME_HDR+0xf2>
  40080e:	00 00                	add    %al,(%rax)
  400810:	b0 fd                	mov    $0xfd,%al
  400812:	ff                   	(bad)  
  400813:	ff 9e 00 00 00 00    	lcall  *0x0(%rsi)
  400819:	00 00                	add    %al,(%rax)
  40081b:	00 00                	add    %al,(%rax)
  40081d:	00 00                	add    %al,(%rax)
  40081f:	00 14 00             	add    %dl,(%rax,%rax,1)
  400822:	00 00                	add    %al,(%rax)
  400824:	8c 00                	mov    %es,(%rax)
  400826:	00 00                	add    %al,(%rax)
  400828:	28 fc                	sub    %bh,%ah
  40082a:	ff                   	(bad)  
  40082b:	ff                   	(bad)  
  40082c:	39 00                	cmp    %eax,(%rax)
  40082e:	00 00                	add    %al,(%rax)
  400830:	00 44 0e 10          	add    %al,0x10(%rsi,%rcx,1)
  400834:	74 0e                	je     400844 <__GNU_EH_FRAME_HDR+0x128>
  400836:	08 00                	or     %al,(%rax)
  400838:	44 00 00             	add    %r8b,(%rax)
  40083b:	00 a4 00 00 00 20 fe 	add    %ah,-0x1e00000(%rax,%rax,1)
  400842:	ff                   	(bad)  
  400843:	ff 65 00             	jmpq   *0x0(%rbp)
  400846:	00 00                	add    %al,(%rax)
  400848:	00 42 0e             	add    %al,0xe(%rdx)
  40084b:	10 8f 02 42 0e 18    	adc    %cl,0x180e4202(%rdi)
  400851:	8e 03                	mov    (%rbx),%es
  400853:	45 0e                	rex.RB (bad) 
  400855:	20 8d 04 42 0e 28    	and    %cl,0x280e4204(%rbp)
  40085b:	8c 05 48 0e 30 86    	mov    %es,-0x79cff1b8(%rip)        # ffffffff867016a9 <_end+0xffffffff86100669>
  400861:	06                   	(bad)  
  400862:	48 0e                	rex.W (bad) 
  400864:	38 83 07 4d 0e 40    	cmp    %al,0x400e4d07(%rbx)
  40086a:	72 0e                	jb     40087a <__GNU_EH_FRAME_HDR+0x15e>
  40086c:	38 41 0e             	cmp    %al,0xe(%rcx)
  40086f:	30 41 0e             	xor    %al,0xe(%rcx)
  400872:	28 42 0e             	sub    %al,0xe(%rdx)
  400875:	20 42 0e             	and    %al,0xe(%rdx)
  400878:	18 42 0e             	sbb    %al,0xe(%rdx)
  40087b:	10 42 0e             	adc    %al,0xe(%rdx)
  40087e:	08 00                	or     %al,(%rax)
  400880:	14 00                	adc    $0x0,%al
  400882:	00 00                	add    %al,(%rax)
  400884:	ec                   	in     (%dx),%al
  400885:	00 00                	add    %al,(%rax)
  400887:	00 48 fe             	add    %cl,-0x2(%rax)
  40088a:	ff                   	(bad)  
  40088b:	ff 02                	incl   (%rdx)
	...

0000000000400898 <__FRAME_END__>:
  400898:	00 00                	add    %al,(%rax)
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
  600e4f:	00 d4                	add    %dl,%ah
  600e51:	06                   	(bad)  
  600e52:	40 00 00             	add    %al,(%rax)
  600e55:	00 00                	add    %al,(%rax)
  600e57:	00 19                	add    %bl,(%rcx)
  600e59:	00 00                	add    %al,(%rax)
  600e5b:	00 00                	add    %al,(%rax)
  600e5d:	00 00                	add    %al,(%rax)
  600e5f:	00 10                	add    %dl,(%rax)
  600e61:	0e                   	(bad)  
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
  18:	ce                   	(bad)  
  19:	00 00                	add    %al,(%rax)
  1b:	00 00                	add    %al,(%rax)
  1d:	00 00                	add    %al,(%rax)
  1f:	00 50 04             	add    %dl,0x4(%rax)
  22:	40 00 00             	add    %al,(%rax)
  25:	00 00                	add    %al,(%rax)
  27:	00 39                	add    %bh,(%rcx)
	...

Disassembly of section .debug_info:

0000000000000000 <.debug_info>:
   0:	ac                   	lods   %ds:(%rsi),%al
   1:	04 00                	add    $0x0,%al
   3:	00 04 00             	add    %al,(%rax,%rax,1)
   6:	00 00                	add    %al,(%rax)
   8:	00 00                	add    %al,(%rax)
   a:	08 01                	or     %al,(%rcx)
   c:	d8 00                	fadds  (%rax)
   e:	00 00                	add    %al,(%rax)
  10:	04 25                	add    $0x25,%al
  12:	02 00                	add    (%rax),%al
  14:	00 13                	add    %dl,(%rbx)
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
  37:	56                   	push   %rsi
  38:	00 00                	add    %al,(%rax)
  3a:	00 03                	add    %al,(%rbx)
  3c:	01 08                	add    %ecx,(%rax)
  3e:	e6 01                	out    %al,$0x1
  40:	00 00                	add    %al,(%rax)
  42:	03 02                	add    (%rdx),%eax
  44:	07                   	(bad)  
  45:	71 01                	jno    48 <_init-0x4003a8>
  47:	00 00                	add    %al,(%rax)
  49:	03 04 07             	add    (%rdi,%rax,1),%eax
  4c:	5b                   	pop    %rbx
  4d:	00 00                	add    %al,(%rax)
  4f:	00 03                	add    %al,(%rbx)
  51:	01 06                	add    %eax,(%rsi)
  53:	e8 01 00 00 03       	callq  3000059 <_end+0x29ff019>
  58:	02 05 f4 01 00 00    	add    0x1f4(%rip),%al        # 252 <_init-0x40019e>
  5e:	04 04                	add    $0x4,%al
  60:	05 69 6e 74 00       	add    $0x746e69,%eax
  65:	03 08                	add    (%rax),%ecx
  67:	05 6d 00 00 00       	add    $0x6d,%eax
  6c:	02 07                	add    (%rdi),%al
  6e:	00 00                	add    %al,(%rax)
  70:	00 04 83             	add    %al,(%rbx,%rax,4)
  73:	65 00 00             	add    %al,%gs:(%rax)
  76:	00 02                	add    %al,(%rdx)
  78:	4b 02 00             	rex.WXB add (%r8),%al
  7b:	00 04 84             	add    %al,(%rsp,%rax,4)
  7e:	65 00 00             	add    %al,%gs:(%rax)
  81:	00 03                	add    %al,(%rbx)
  83:	08 07                	or     %al,(%rdi)
  85:	ad                   	lods   %ds:(%rsi),%eax
  86:	01 00                	add    %eax,(%rax)
  88:	00 05 08 06 08 91    	add    %al,-0x6ef7f9f8(%rip)        # ffffffff91080696 <_end+0xffffffff90a7f656>
  8e:	00 00                	add    %al,(%rax)
  90:	00 03                	add    %al,(%rbx)
  92:	01 06                	add    %eax,(%rsi)
  94:	ef                   	out    %eax,(%dx)
  95:	01 00                	add    %eax,(%rax)
  97:	00 07                	add    %al,(%rdi)
  99:	cf                   	iret   
  9a:	01 00                	add    %eax,(%rax)
  9c:	00 d8                	add    %bl,%al
  9e:	05 f1 15 02 00       	add    $0x215f1,%eax
  a3:	00 08                	add    %cl,(%rax)
  a5:	8b 00                	mov    (%rax),%eax
  a7:	00 00                	add    %al,(%rax)
  a9:	05 f2 5e 00 00       	add    $0x5ef2,%eax
  ae:	00 00                	add    %al,(%rax)
  b0:	08 0f                	or     %cl,(%rdi)
  b2:	00 00                	add    %al,(%rax)
  b4:	00 05 f7 8b 00 00    	add    %al,0x8bf7(%rip)        # 8cb1 <_init-0x3f773f>
  ba:	00 08                	add    %cl,(%rax)
  bc:	08 7e 00             	or     %bh,0x0(%rsi)
  bf:	00 00                	add    %al,(%rax)
  c1:	05 f8 8b 00 00       	add    $0x8bf8,%eax
  c6:	00 10                	add    %dl,(%rax)
  c8:	08 55 02             	or     %dl,0x2(%rbp)
  cb:	00 00                	add    %al,(%rax)
  cd:	05 f9 8b 00 00       	add    $0x8bf9,%eax
  d2:	00 18                	add    %bl,(%rax)
  d4:	08 cb                	or     %cl,%bl
  d6:	02 00                	add    (%rax),%al
  d8:	00 05 fa 8b 00 00    	add    %al,0x8bfa(%rip)        # 8cd8 <_init-0x3f7718>
  de:	00 20                	add    %ah,(%rax)
  e0:	08 5d 01             	or     %bl,0x1(%rbp)
  e3:	00 00                	add    %al,(%rax)
  e5:	05 fb 8b 00 00       	add    $0x8bfb,%eax
  ea:	00 28                	add    %ch,(%rax)
  ec:	08 b6 01 00 00 05    	or     %dh,0x5000001(%rsi)
  f2:	fc                   	cld    
  f3:	8b 00                	mov    (%rax),%eax
  f5:	00 00                	add    %al,(%rax)
  f7:	30 08                	xor    %cl,(%rax)
  f9:	44 00 00             	add    %r8b,(%rax)
  fc:	00 05 fd 8b 00 00    	add    %al,0x8bfd(%rip)        # 8cff <_init-0x3f76f1>
 102:	00 38                	add    %bh,(%rax)
 104:	08 92 00 00 00 05    	or     %dl,0x5000000(%rdx)
 10a:	fe 8b 00 00 00 40    	decb   0x40000000(%rbx)
 110:	09 84 01 00 00 05 00 	or     %eax,0x50000(%rcx,%rax,1)
 117:	01 8b 00 00 00 48    	add    %ecx,0x48000000(%rbx)
 11d:	09 b1 02 00 00 05    	or     %esi,0x5000002(%rcx)
 123:	01 01                	add    %eax,(%rcx)
 125:	8b 00                	mov    (%rax),%eax
 127:	00 00                	add    %al,(%rax)
 129:	50                   	push   %rax
 12a:	09 63 02             	or     %esp,0x2(%rbx)
 12d:	00 00                	add    %al,(%rax)
 12f:	05 02 01 8b 00       	add    $0x8b0102,%eax
 134:	00 00                	add    %al,(%rax)
 136:	58                   	pop    %rax
 137:	09 dd                	or     %ebx,%ebp
 139:	01 00                	add    %eax,(%rax)
 13b:	00 05 04 01 4d 02    	add    %al,0x24d0104(%rip)        # 24d0245 <_end+0x1ecf205>
 141:	00 00                	add    %al,(%rax)
 143:	60                   	(bad)  
 144:	09 1c 00             	or     %ebx,(%rax,%rax,1)
 147:	00 00                	add    %al,(%rax)
 149:	05 06 01 53 02       	add    $0x2530106,%eax
 14e:	00 00                	add    %al,(%rax)
 150:	68 09 76 00 00       	pushq  $0x7609
 155:	00 05 08 01 5e 00    	add    %al,0x5e0108(%rip)        # 5e0263 <__FRAME_END__+0x1df9cb>
 15b:	00 00                	add    %al,(%rax)
 15d:	70 09                	jo     168 <_init-0x400288>
 15f:	98                   	cwtl   
 160:	01 00                	add    %eax,(%rax)
 162:	00 05 0c 01 5e 00    	add    %al,0x5e010c(%rip)        # 5e0274 <__FRAME_END__+0x1df9dc>
 168:	00 00                	add    %al,(%rax)
 16a:	74 09                	je     175 <_init-0x40027b>
 16c:	cc                   	int3   
 16d:	00 00                	add    %al,(%rax)
 16f:	00 05 0e 01 6c 00    	add    %al,0x6c010e(%rip)        # 6c0283 <_end+0xbf243>
 175:	00 00                	add    %al,(%rax)
 177:	78 09                	js     182 <_init-0x40026e>
 179:	9e                   	sahf   
 17a:	00 00                	add    %al,(%rax)
 17c:	00 05 12 01 42 00    	add    %al,0x420112(%rip)        # 420294 <__FRAME_END__+0x1f9fc>
 182:	00 00                	add    %al,(%rax)
 184:	80 09 04             	orb    $0x4,(%rcx)
 187:	02 00                	add    (%rax),%al
 189:	00 05 13 01 50 00    	add    %al,0x500113(%rip)        # 5002a2 <__FRAME_END__+0xffa0a>
 18f:	00 00                	add    %al,(%rax)
 191:	82                   	(bad)  
 192:	09 2a                	or     %ebp,(%rdx)
 194:	00 00                	add    %al,(%rax)
 196:	00 05 14 01 59 02    	add    %al,0x2590114(%rip)        # 25902b0 <_end+0x1f8f270>
 19c:	00 00                	add    %al,(%rax)
 19e:	83 09 92             	orl    $0xffffff92,(%rcx)
 1a1:	01 00                	add    %eax,(%rax)
 1a3:	00 05 18 01 69 02    	add    %al,0x2690118(%rip)        # 26902c1 <_end+0x208f281>
 1a9:	00 00                	add    %al,(%rax)
 1ab:	88 09                	mov    %cl,(%rcx)
 1ad:	d0 00                	rolb   (%rax)
 1af:	00 00                	add    %al,(%rax)
 1b1:	05 21 01 77 00       	add    $0x770121,%eax
 1b6:	00 00                	add    %al,(%rax)
 1b8:	90                   	nop
 1b9:	09 80 02 00 00 05    	or     %eax,0x5000002(%rax)
 1bf:	29 01                	sub    %eax,(%rcx)
 1c1:	89 00                	mov    %eax,(%rax)
 1c3:	00 00                	add    %al,(%rax)
 1c5:	98                   	cwtl   
 1c6:	09 87 02 00 00 05    	or     %eax,0x5000002(%rdi)
 1cc:	2a 01                	sub    (%rcx),%al
 1ce:	89 00                	mov    %eax,(%rax)
 1d0:	00 00                	add    %al,(%rax)
 1d2:	a0 09 8e 02 00 00 05 	movabs 0x12b050000028e09,%al
 1d9:	2b 01 
 1db:	89 00                	mov    %eax,(%rax)
 1dd:	00 00                	add    %al,(%rax)
 1df:	a8 09                	test   $0x9,%al
 1e1:	95                   	xchg   %eax,%ebp
 1e2:	02 00                	add    (%rax),%al
 1e4:	00 05 2c 01 89 00    	add    %al,0x89012c(%rip)        # 890316 <_end+0x28f2d6>
 1ea:	00 00                	add    %al,(%rax)
 1ec:	b0 09                	mov    $0x9,%al
 1ee:	9c                   	pushfq 
 1ef:	02 00                	add    (%rax),%al
 1f1:	00 05 2e 01 29 00    	add    %al,0x29012e(%rip)        # 290325 <_init-0x1700cb>
 1f7:	00 00                	add    %al,(%rax)
 1f9:	b8 09 a0 01 00       	mov    $0x1a009,%eax
 1fe:	00 05 2f 01 5e 00    	add    %al,0x5e012f(%rip)        # 5e0333 <__FRAME_END__+0x1dfa9b>
 204:	00 00                	add    %al,(%rax)
 206:	c0 09 a3             	rorb   $0xa3,(%rcx)
 209:	02 00                	add    (%rax),%al
 20b:	00 05 31 01 6f 02    	add    %al,0x26f0131(%rip)        # 26f0342 <_end+0x20ef302>
 211:	00 00                	add    %al,(%rax)
 213:	c4                   	(bad)  
 214:	00 0a                	add    %cl,(%rdx)
 216:	c4 01 00 00          	(bad)  
 21a:	05 96 07 43 01       	add    $0x1430796,%eax
 21f:	00 00                	add    %al,(%rax)
 221:	18 05 9c 4d 02 00    	sbb    %al,0x24d9c(%rip)        # 24fc3 <_init-0x3db42d>
 227:	00 08                	add    %cl,(%rax)
 229:	45 02 00             	add    (%r8),%r8b
 22c:	00 05 9d 4d 02 00    	add    %al,0x24d9d(%rip)        # 24fcf <_init-0x3db421>
 232:	00 00                	add    %al,(%rax)
 234:	08 6b 01             	or     %ch,0x1(%rbx)
 237:	00 00                	add    %al,(%rax)
 239:	05 9e 53 02 00       	add    $0x2539e,%eax
 23e:	00 08                	add    %cl,(%rax)
 240:	08 d8                	or     %bl,%al
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
 28b:	08 05 68 00 00 00    	or     %al,0x68(%rip)        # 2f9 <_init-0x4000f7>
 291:	03 08                	add    (%rax),%ecx
 293:	07                   	(bad)  
 294:	51                   	push   %rcx
 295:	00 00                	add    %al,(%rax)
 297:	00 0e                	add    %cl,(%rsi)
 299:	fe 01                	incb   (%rcx)
 29b:	00 00                	add    %al,(%rax)
 29d:	01 04 76             	add    %eax,(%rsi,%rsi,2)
 2a0:	02 00                	add    (%rax),%al
 2a2:	00 5e 00             	add    %bl,0x0(%rsi)
 2a5:	00 00                	add    %al,(%rax)
 2a7:	01 b6 02 00 00 0f    	add    %esi,0xf000002(%rsi)
 2ad:	78 00                	js     2af <_init-0x400141>
 2af:	01 04 5e             	add    %eax,(%rsi,%rbx,2)
 2b2:	00 00                	add    %al,(%rax)
 2b4:	00 00                	add    %al,(%rax)
 2b6:	10 00                	adc    %al,(%rax)
 2b8:	00 00                	add    %al,(%rax)
 2ba:	00 02                	add    %al,(%rdx)
 2bc:	66 5e                	pop    %si
 2be:	00 00                	add    %al,(%rax)
 2c0:	00 03                	add    %al,(%rbx)
 2c2:	d3 02                	roll   %cl,(%rdx)
 2c4:	00 00                	add    %al,(%rax)
 2c6:	11 70 02             	adc    %esi,0x2(%rax)
 2c9:	00 00                	add    %al,(%rax)
 2cb:	02 66 d3             	add    -0x2d(%rsi),%ah
 2ce:	02 00                	add    (%rax),%al
 2d0:	00 12                	add    %dl,(%rdx)
 2d2:	00 13                	add    %dl,(%rbx)
 2d4:	7f 02                	jg     2d8 <_init-0x400118>
 2d6:	00 00                	add    %al,(%rax)
 2d8:	0e                   	(bad)  
 2d9:	54                   	push   %rsp
 2da:	01 00                	add    %eax,(%rax)
 2dc:	00 01                	add    %al,(%rcx)
 2de:	11 18                	adc    %ebx,(%rax)
 2e0:	02 00                	add    (%rax),%al
 2e2:	00 5e 00             	add    %bl,0x0(%rsi)
 2e5:	00 00                	add    %al,(%rax)
 2e7:	01 0b                	add    %ecx,(%rbx)
 2e9:	03 00                	add    (%rax),%eax
 2eb:	00 14 78             	add    %dl,(%rax,%rdi,2)
 2ee:	73 00                	jae    2f0 <_init-0x400100>
 2f0:	01 12                	add    %edx,(%rdx)
 2f2:	0b 03                	or     (%rbx),%eax
 2f4:	00 00                	add    %al,(%rax)
 2f6:	14 79                	adc    $0x79,%al
 2f8:	00 01                	add    %al,(%rcx)
 2fa:	13 5e 00             	adc    0x0(%rsi),%ebx
 2fd:	00 00                	add    %al,(%rax)
 2ff:	15 14 69 00 01       	adc    $0x1006914,%eax
 304:	15 5e 00 00 00       	adc    $0x5e,%eax
 309:	00 00                	add    %al,(%rax)
 30b:	0b 5e 00             	or     0x0(%rsi),%ebx
 30e:	00 00                	add    %al,(%rax)
 310:	1b 03                	sbb    (%rbx),%eax
 312:	00 00                	add    %al,(%rax)
 314:	0c 82                	or     $0x82,%al
 316:	00 00                	add    %al,(%rax)
 318:	00 05 00 16 98 02    	add    %al,0x2981600(%rip)        # 298191e <_end+0x23808de>
 31e:	00 00                	add    %al,(%rax)
 320:	76 02                	jbe    324 <_init-0x4000cc>
 322:	00 00                	add    %al,(%rax)
 324:	90                   	nop
 325:	05 40 00 00 00       	add    $0x40,%eax
 32a:	00 00                	add    %al,(%rax)
 32c:	15 00 00 00 00       	adc    $0x0,%eax
 331:	00 00                	add    %al,(%rax)
 333:	00 01                	add    %al,(%rcx)
 335:	9c                   	pushfq 
 336:	44 03 00             	add    (%rax),%r8d
 339:	00 17                	add    %dl,(%rdi)
 33b:	ac                   	lods   %ds:(%rsi),%al
 33c:	02 00                	add    (%rax),%al
 33e:	00 00                	add    %al,(%rax)
 340:	00 00                	add    %al,(%rax)
 342:	00 00                	add    %al,(%rax)
 344:	16                   	(bad)  
 345:	d8 02                	fadds  (%rdx)
 347:	00 00                	add    %al,(%rax)
 349:	18 02                	sbb    %al,(%rdx)
 34b:	00 00                	add    %al,(%rax)
 34d:	b0 05                	mov    $0x5,%al
 34f:	40 00 00             	add    %al,(%rax)
 352:	00 00                	add    %al,(%rax)
 354:	00 06                	add    %al,(%rsi)
 356:	00 00                	add    %al,(%rax)
 358:	00 00                	add    %al,(%rax)
 35a:	00 00                	add    %al,(%rax)
 35c:	00 01                	add    %al,(%rcx)
 35e:	9c                   	pushfq 
 35f:	70 03                	jo     364 <_init-0x40008c>
 361:	00 00                	add    %al,(%rax)
 363:	18 ec                	sbb    %ch,%ah
 365:	02 00                	add    (%rax),%al
 367:	00 19                	add    %bl,(%rcx)
 369:	f6 02 00             	testb  $0x0,(%rdx)
 36c:	00 35 01 00 1a 34    	add    %dh,0x341a0001(%rip)        # 341a0373 <_end+0x33b9f333>
 372:	00 00                	add    %al,(%rax)
 374:	00 01                	add    %al,(%rcx)
 376:	1b aa 00 00 00 5e    	sbb    0x5e000000(%rdx),%ebp
 37c:	00 00                	add    %al,(%rax)
 37e:	00 c0                	add    %al,%al
 380:	05 40 00 00 00       	add    $0x40,%eax
 385:	00 00                	add    %al,(%rax)
 387:	9e                   	sahf   
 388:	00 00                	add    %al,(%rax)
 38a:	00 00                	add    %al,(%rax)
 38c:	00 00                	add    %al,(%rax)
 38e:	00 01                	add    %al,(%rcx)
 390:	9c                   	pushfq 
 391:	aa                   	stos   %al,%es:(%rdi)
 392:	03 00                	add    (%rax),%eax
 394:	00 14 78             	add    %dl,(%rax,%rdi,2)
 397:	00 01                	add    %al,(%rcx)
 399:	1c 5e                	sbb    $0x5e,%al
 39b:	00 00                	add    %al,(%rax)
 39d:	00 1b                	add    %bl,(%rbx)
 39f:	79 00                	jns    3a1 <_init-0x40004f>
 3a1:	01 1d 5e 00 00 00    	add    %ebx,0x5e(%rip)        # 405 <_init-0x3fffeb>
 3a7:	01 50 00             	add    %edx,0x0(%rax)
 3aa:	1c c6                	sbb    $0xc6,%al
 3ac:	02 00                	add    (%rax),%al
 3ae:	00 01                	add    %al,(%rcx)
 3b0:	69 5e 00 00 00 50 04 	imul   $0x4500000,0x0(%rsi),%ebx
 3b7:	40 00 00             	add    %al,(%rax)
 3ba:	00 00                	add    %al,(%rax)
 3bc:	00 39                	add    %bh,(%rcx)
 3be:	00 00                	add    %al,(%rax)
 3c0:	00 00                	add    %al,(%rax)
 3c2:	00 00                	add    %al,(%rax)
 3c4:	00 01                	add    %al,(%rcx)
 3c6:	9c                   	pushfq 
 3c7:	88 04 00             	mov    %al,(%rax,%rax,1)
 3ca:	00 1d c1 02 00 00    	add    %bl,0x2c1(%rip)        # 691 <_init-0x3ffd5f>
 3d0:	01 69 5e             	add    %ebp,0x5e(%rcx)
 3d3:	00 00                	add    %al,(%rax)
 3d5:	00 39                	add    %bh,(%rcx)
 3d7:	00 00                	add    %al,(%rax)
 3d9:	00 1d ac 02 00 00    	add    %bl,0x2ac(%rip)        # 68b <_init-0x3ffd65>
 3df:	01 69 88             	add    %ebp,-0x78(%rcx)
 3e2:	04 00                	add    $0x0,%al
 3e4:	00 72 00             	add    %dh,0x0(%rdx)
 3e7:	00 00                	add    %al,(%rax)
 3e9:	1e                   	(bad)  
 3ea:	b6 02                	mov    $0x2,%dh
 3ec:	00 00                	add    %al,(%rax)
 3ee:	54                   	push   %rsp
 3ef:	04 40                	add    $0x40,%al
 3f1:	00 00                	add    %al,(%rax)
 3f3:	00 00                	add    %al,(%rax)
 3f5:	00 16                	add    %dl,(%rsi)
 3f7:	00 00                	add    %al,(%rax)
 3f9:	00 00                	add    %al,(%rax)
 3fb:	00 00                	add    %al,(%rax)
 3fd:	00 01                	add    %al,(%rcx)
 3ff:	6a 35                	pushq  $0x35
 401:	04 00                	add    $0x0,%al
 403:	00 17                	add    %dl,(%rdi)
 405:	c6 02 00             	movb   $0x0,(%rdx)
 408:	00 ab 00 00 00 1f    	add    %ch,0x1f000000(%rbx)
 40e:	6a 04                	pushq  $0x4
 410:	40 00 00             	add    %al,(%rax)
 413:	00 00                	add    %al,(%rax)
 415:	00 a4 04 00 00 20 01 	add    %ah,0x1200000(%rsp,%rax,1)
 41c:	55                   	push   %rbp
 41d:	01 31                	add    %esi,(%rcx)
 41f:	20 01                	and    %al,(%rcx)
 421:	54                   	push   %rsp
 422:	09 03                	or     %eax,(%rbx)
 424:	e4 06                	in     $0x6,%al
 426:	40 00 00             	add    %al,(%rax)
 429:	00 00                	add    %al,(%rax)
 42b:	00 20                	add    %ah,(%rax)
 42d:	01 51 03             	add    %edx,0x3(%rcx)
 430:	0a 35 01 00 00 1e    	or     0x1e000001(%rip),%dh        # 1e000437 <_end+0x1d9ff3f7>
 436:	b6 02                	mov    $0x2,%dh
 438:	00 00                	add    %al,(%rax)
 43a:	6f                   	outsl  %ds:(%rsi),(%dx)
 43b:	04 40                	add    $0x40,%al
 43d:	00 00                	add    %al,(%rax)
 43f:	00 00                	add    %al,(%rax)
 441:	00 13                	add    %dl,(%rbx)
 443:	00 00                	add    %al,(%rax)
 445:	00 00                	add    %al,(%rax)
 447:	00 00                	add    %al,(%rax)
 449:	00 01                	add    %al,(%rcx)
 44b:	6b 7a 04 00          	imul   $0x0,0x4(%rdx),%edi
 44f:	00 17                	add    %dl,(%rdi)
 451:	c6 02 00             	movb   $0x0,(%rdx)
 454:	00 d7                	add    %dl,%bh
 456:	00 00                	add    %al,(%rax)
 458:	00 1f                	add    %bl,(%rdi)
 45a:	82                   	(bad)  
 45b:	04 40                	add    $0x40,%al
 45d:	00 00                	add    %al,(%rax)
 45f:	00 00                	add    %al,(%rax)
 461:	00 a4 04 00 00 20 01 	add    %ah,0x1200000(%rsp,%rax,1)
 468:	55                   	push   %rbp
 469:	01 31                	add    %esi,(%rcx)
 46b:	20 01                	and    %al,(%rcx)
 46d:	54                   	push   %rsp
 46e:	09 03                	or     %eax,(%rbx)
 470:	f3 06                	repz (bad) 
 472:	40 00 00             	add    %al,(%rax)
 475:	00 00                	add    %al,(%rax)
 477:	00 00                	add    %al,(%rax)
 479:	00 21                	add    %ah,(%rcx)
 47b:	6f                   	outsl  %ds:(%rsi),(%dx)
 47c:	04 40                	add    $0x40,%al
 47e:	00 00                	add    %al,(%rax)
 480:	00 00                	add    %al,(%rax)
 482:	00 70 03             	add    %dh,0x3(%rax)
 485:	00 00                	add    %al,(%rax)
 487:	00 06                	add    %al,(%rsi)
 489:	08 8b 00 00 00 22    	or     %cl,0x22000000(%rbx)
 48f:	4e 01 00             	rex.WRX add %r8,(%rax)
 492:	00 06                	add    %al,(%rsi)
 494:	a8 53                	test   $0x53,%al
 496:	02 00                	add    (%rax),%al
 498:	00 22                	add    %ah,(%rdx)
 49a:	a6                   	cmpsb  %es:(%rdi),%ds:(%rsi)
 49b:	01 00                	add    %eax,(%rax)
 49d:	00 06                	add    %al,(%rsi)
 49f:	a9 53 02 00 00       	test   $0x253,%eax
 4a4:	23 bf 00 00 00 bf    	and    -0x41000000(%rdi),%edi
 4aa:	00 00                	add    %al,(%rax)
 4ac:	00 02                	add    %al,(%rdx)
 4ae:	57                   	push   %rdi
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
  a4:	49 13 20             	adc    (%r8),%rsp
  a7:	0b 01                	or     (%rcx),%eax
  a9:	13 00                	adc    (%rax),%eax
  ab:	00 0f                	add    %cl,(%rdi)
  ad:	05 00 03 08 3a       	add    $0x3a080300,%eax
  b2:	0b 3b                	or     (%rbx),%edi
  b4:	0b 49 13             	or     0x13(%rcx),%ecx
  b7:	00 00                	add    %al,(%rax)
  b9:	10 2e                	adc    %ch,(%rsi)
  bb:	01 3f                	add    %edi,(%rdi)
  bd:	19 03                	sbb    %eax,(%rbx)
  bf:	0e                   	(bad)  
  c0:	3a 0b                	cmp    (%rbx),%cl
  c2:	3b 0b                	cmp    (%rbx),%ecx
  c4:	49 13 20             	adc    (%r8),%rsp
  c7:	0b 34 19             	or     (%rcx,%rbx,1),%esi
  ca:	01 13                	add    %edx,(%rbx)
  cc:	00 00                	add    %al,(%rax)
  ce:	11 05 00 03 0e 3a    	adc    %eax,0x3a0e0300(%rip)        # 3a0e03d4 <_end+0x39adf394>
  d4:	0b 3b                	or     (%rbx),%edi
  d6:	0b 49 13             	or     0x13(%rcx),%ecx
  d9:	00 00                	add    %al,(%rax)
  db:	12 18                	adc    (%rax),%bl
  dd:	00 00                	add    %al,(%rax)
  df:	00 13                	add    %dl,(%rbx)
  e1:	37                   	(bad)  
  e2:	00 49 13             	add    %cl,0x13(%rcx)
  e5:	00 00                	add    %al,(%rax)
  e7:	14 34                	adc    $0x34,%al
  e9:	00 03                	add    %al,(%rbx)
  eb:	08 3a                	or     %bh,(%rdx)
  ed:	0b 3b                	or     (%rbx),%edi
  ef:	0b 49 13             	or     0x13(%rcx),%ecx
  f2:	00 00                	add    %al,(%rax)
  f4:	15 0b 01 00 00       	adc    $0x10b,%eax
  f9:	16                   	(bad)  
  fa:	2e 01 31             	add    %esi,%cs:(%rcx)
  fd:	13 6e 0e             	adc    0xe(%rsi),%ebp
 100:	11 01                	adc    %eax,(%rcx)
 102:	12 07                	adc    (%rdi),%al
 104:	40 18 97 42 19 01 13 	sbb    %dl,0x13011942(%rdi)
 10b:	00 00                	add    %al,(%rax)
 10d:	17                   	(bad)  
 10e:	05 00 31 13 02       	add    $0x2133100,%eax
 113:	17                   	(bad)  
 114:	00 00                	add    %al,(%rax)
 116:	18 34 00             	sbb    %dh,(%rax,%rax,1)
 119:	31 13                	xor    %edx,(%rbx)
 11b:	00 00                	add    %al,(%rax)
 11d:	19 34 00             	sbb    %esi,(%rax,%rax,1)
 120:	31 13                	xor    %edx,(%rbx)
 122:	1c 05                	sbb    $0x5,%al
 124:	00 00                	add    %al,(%rax)
 126:	1a 2e                	sbb    (%rsi),%ch
 128:	01 3f                	add    %edi,(%rdi)
 12a:	19 03                	sbb    %eax,(%rbx)
 12c:	0e                   	(bad)  
 12d:	3a 0b                	cmp    (%rbx),%cl
 12f:	3b 0b                	cmp    (%rbx),%ecx
 131:	6e                   	outsb  %ds:(%rsi),(%dx)
 132:	0e                   	(bad)  
 133:	49 13 11             	adc    (%r9),%rdx
 136:	01 12                	add    %edx,(%rdx)
 138:	07                   	(bad)  
 139:	40 18 97 42 19 01 13 	sbb    %dl,0x13011942(%rdi)
 140:	00 00                	add    %al,(%rax)
 142:	1b 34 00             	sbb    (%rax,%rax,1),%esi
 145:	03 08                	add    (%rax),%ecx
 147:	3a 0b                	cmp    (%rbx),%cl
 149:	3b 0b                	cmp    (%rbx),%ecx
 14b:	49 13 02             	adc    (%r10),%rax
 14e:	18 00                	sbb    %al,(%rax)
 150:	00 1c 2e             	add    %bl,(%rsi,%rbp,1)
 153:	01 3f                	add    %edi,(%rdi)
 155:	19 03                	sbb    %eax,(%rbx)
 157:	0e                   	(bad)  
 158:	3a 0b                	cmp    (%rbx),%cl
 15a:	3b 0b                	cmp    (%rbx),%ecx
 15c:	49 13 11             	adc    (%r9),%rdx
 15f:	01 12                	add    %edx,(%rdx)
 161:	07                   	(bad)  
 162:	40 18 97 42 19 01 13 	sbb    %dl,0x13011942(%rdi)
 169:	00 00                	add    %al,(%rax)
 16b:	1d 05 00 03 0e       	sbb    $0xe030005,%eax
 170:	3a 0b                	cmp    (%rbx),%cl
 172:	3b 0b                	cmp    (%rbx),%ecx
 174:	49 13 02             	adc    (%r10),%rax
 177:	17                   	(bad)  
 178:	00 00                	add    %al,(%rax)
 17a:	1e                   	(bad)  
 17b:	1d 01 31 13 11       	sbb    $0x11133101,%eax
 180:	01 12                	add    %edx,(%rdx)
 182:	07                   	(bad)  
 183:	58                   	pop    %rax
 184:	0b 59 0b             	or     0xb(%rcx),%ebx
 187:	01 13                	add    %edx,(%rbx)
 189:	00 00                	add    %al,(%rax)
 18b:	1f                   	(bad)  
 18c:	89 82 01 01 11 01    	mov    %eax,0x1110101(%rdx)
 192:	31 13                	xor    %edx,(%rbx)
 194:	00 00                	add    %al,(%rax)
 196:	20 8a 82 01 00 02    	and    %cl,0x2000182(%rdx)
 19c:	18 91 42 18 00 00    	sbb    %dl,0x1842(%rcx)
 1a2:	21 89 82 01 00 11    	and    %ecx,0x11000182(%rcx)
 1a8:	01 31                	add    %esi,(%rcx)
 1aa:	13 00                	adc    (%rax),%eax
 1ac:	00 22                	add    %ah,(%rdx)
 1ae:	34 00                	xor    $0x0,%al
 1b0:	03 0e                	add    (%rsi),%ecx
 1b2:	3a 0b                	cmp    (%rbx),%cl
 1b4:	3b 0b                	cmp    (%rbx),%ecx
 1b6:	49 13 3f             	adc    (%r15),%rdi
 1b9:	19 3c 19             	sbb    %edi,(%rcx,%rbx,1)
 1bc:	00 00                	add    %al,(%rax)
 1be:	23 2e                	and    (%rsi),%ebp
 1c0:	00 3f                	add    %bh,(%rdi)
 1c2:	19 3c 19             	sbb    %edi,(%rcx,%rbx,1)
 1c5:	6e                   	outsb  %ds:(%rsi),(%dx)
 1c6:	0e                   	(bad)  
 1c7:	03 0e                	add    (%rsi),%ecx
 1c9:	3a 0b                	cmp    (%rbx),%cl
 1cb:	3b 0b                	cmp    (%rbx),%ecx
 1cd:	00 00                	add    %al,(%rax)
	...

Disassembly of section .debug_line:

0000000000000000 <.debug_line>:
   0:	0f 01 00             	sgdt   (%rax)
   3:	00 02                	add    %al,(%rdx)
   5:	00 c7                	add    %al,%bh
   7:	00 00                	add    %al,(%rax)
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
  85:	70 62                	jo     e9 <_init-0x400307>
  87:	61                   	(bad)  
  88:	63 6b 74             	movslq 0x74(%rbx),%ebp
  8b:	61                   	(bad)  
  8c:	62                   	(bad)  
  8d:	6c                   	insb   (%dx),%es:(%rdi)
  8e:	65 2e 63 70 70       	gs movslq %cs:0x70(%rax),%esi
  93:	00 01                	add    %al,(%rcx)
  95:	00 00                	add    %al,(%rax)
  97:	73 74                	jae    10d <_init-0x4002e3>
  99:	64 69 6f 32 2e 68 00 	imul   $0x200682e,%fs:0x32(%rdi),%ebp
  a0:	02 
  a1:	00 00                	add    %al,(%rax)
  a3:	73 74                	jae    119 <_init-0x4002d7>
  a5:	64 64 65 66 2e 68 00 	fs fs gs cs pushw $0x300
  ac:	03 
  ad:	00 00                	add    %al,(%rax)
  af:	74 79                	je     12a <_init-0x4002c6>
  b1:	70 65                	jo     118 <_init-0x4002d8>
  b3:	73 2e                	jae    e3 <_init-0x40030d>
  b5:	68 00 02 00 00       	pushq  $0x200
  ba:	6c                   	insb   (%dx),%es:(%rdi)
  bb:	69 62 69 6f 2e 68 00 	imul   $0x682e6f,0x69(%rdx),%esp
  c2:	04 00                	add    $0x0,%al
  c4:	00 73 74             	add    %dh,0x74(%rbx)
  c7:	64 69 6f 2e 68 00 04 	imul   $0x40068,%fs:0x2e(%rdi),%ebp
  ce:	00 
  cf:	00 00                	add    %al,(%rax)
  d1:	00 09                	add    %cl,(%rcx)
  d3:	02 90 05 40 00 00    	add    0x4005(%rax),%dl
  d9:	00 00                	add    %al,(%rax)
  db:	00 15 3c 03 0b f2    	add    %dl,-0xdf4fcc4(%rip)        # fffffffff20b041d <_end+0xfffffffff1aaf3dd>
  e1:	ca 1a f4             	lret   $0xf41a
  e4:	03 c8                	add    %eax,%ecx
  e6:	00 01                	add    %al,(%rcx)
  e8:	02 9d 01 15 02 01    	add    0x1021501(%rbp),%bl
  ee:	00 01                	add    %al,(%rcx)
  f0:	01 00                	add    %eax,(%rax)
  f2:	09 02                	or     %eax,(%rdx)
  f4:	50                   	push   %rax
  f5:	04 40                	add    $0x40,%al
  f7:	00 00                	add    %al,(%rax)
  f9:	00 00                	add    %al,(%rax)
  fb:	00 03                	add    %al,(%rbx)
  fd:	e8 00 01 04 02       	callq  2040202 <_end+0x1a3f1c2>
 102:	49 04 01             	rex.WB add $0x1,%al
 105:	08 5b 04             	or     %bl,0x4(%rbx)
 108:	02 55 04             	add    0x4(%rbp),%dl
 10b:	01 08                	add    %ecx,(%rax)
 10d:	33 02                	xor    (%rdx),%eax
 10f:	07                   	(bad)  
 110:	00 01                	add    %al,(%rcx)
 112:	01                   	.byte 0x1

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
  33:	00 61 63             	add    %ah,0x63(%rcx)
  36:	74 75                	je     ad <_init-0x400343>
  38:	61                   	(bad)  
  39:	6c                   	insb   (%dx),%es:(%rdi)
  3a:	5f                   	pop    %rdi
  3b:	75 6e                	jne    ab <_init-0x400345>
  3d:	72 6f                	jb     ae <_init-0x400342>
  3f:	6c                   	insb   (%dx),%es:(%rdi)
  40:	6c                   	insb   (%dx),%es:(%rdi)
  41:	65 64 00 5f 49       	gs add %bl,%fs:0x49(%rdi)
  46:	4f 5f                	rex.WRXB pop %r15
  48:	62                   	(bad)  
  49:	75 66                	jne    b1 <_init-0x40033f>
  4b:	5f                   	pop    %rdi
  4c:	62 61                	(bad)  
  4e:	73 65                	jae    b5 <_init-0x40033b>
  50:	00 6c 6f 6e          	add    %ch,0x6e(%rdi,%rbp,2)
  54:	67 20 6c 6f 6e       	and    %ch,0x6e(%edi,%ebp,2)
  59:	67 20 75 6e          	and    %dh,0x6e(%ebp)
  5d:	73 69                	jae    c8 <_init-0x400328>
  5f:	67 6e                	outsb  %ds:(%esi),(%dx)
  61:	65 64 20 69 6e       	gs and %ch,%fs:0x6e(%rcx)
  66:	74 00                	je     68 <_init-0x400388>
  68:	6c                   	insb   (%dx),%es:(%rdi)
  69:	6f                   	outsl  %ds:(%rsi),(%dx)
  6a:	6e                   	outsb  %ds:(%rsi),(%dx)
  6b:	67 20 6c 6f 6e       	and    %ch,0x6e(%edi,%ebp,2)
  70:	67 20 69 6e          	and    %ch,0x6e(%ecx)
  74:	74 00                	je     76 <_init-0x40037a>
  76:	5f                   	pop    %rdi
  77:	66 69 6c 65 6e 6f 00 	imul   $0x6f,0x6e(%rbp,%riz,2),%bp
  7e:	5f                   	pop    %rdi
  7f:	49                   	rex.WB
  80:	4f 5f                	rex.WRXB pop %r15
  82:	72 65                	jb     e9 <_init-0x400307>
  84:	61                   	(bad)  
  85:	64 5f                	fs pop %rdi
  87:	65 6e                	outsb  %gs:(%rsi),(%dx)
  89:	64 00 5f 66          	add    %bl,%fs:0x66(%rdi)
  8d:	6c                   	insb   (%dx),%es:(%rdi)
  8e:	61                   	(bad)  
  8f:	67 73 00             	addr32 jae 92 <_init-0x40035e>
  92:	5f                   	pop    %rdi
  93:	49                   	rex.WB
  94:	4f 5f                	rex.WRXB pop %r15
  96:	62                   	(bad)  
  97:	75 66                	jne    ff <_init-0x4002f1>
  99:	5f                   	pop    %rdi
  9a:	65 6e                	outsb  %gs:(%rsi),(%dx)
  9c:	64 00 5f 63          	add    %bl,%fs:0x63(%rdi)
  a0:	75 72                	jne    114 <_init-0x4002dc>
  a2:	5f                   	pop    %rdi
  a3:	63 6f 6c             	movslq 0x6c(%rdi),%ebp
  a6:	75 6d                	jne    115 <_init-0x4002db>
  a8:	6e                   	outsb  %ds:(%rsi),(%dx)
  a9:	00 5f 5a             	add    %bl,0x5a(%rdi)
  ac:	31 35 61 63 74 75    	xor    %esi,0x75746361(%rip)        # 75746413 <_end+0x751453d3>
  b2:	61                   	(bad)  
  b3:	6c                   	insb   (%dx),%es:(%rdi)
  b4:	5f                   	pop    %rdi
  b5:	75 6e                	jne    125 <_init-0x4002cb>
  b7:	72 6f                	jb     128 <_init-0x4002c8>
  b9:	6c                   	insb   (%dx),%es:(%rdi)
  ba:	6c                   	insb   (%dx),%es:(%rdi)
  bb:	65 64 76 00          	gs fs jbe bf <_init-0x400331>
  bf:	5f                   	pop    %rdi
  c0:	5f                   	pop    %rdi
  c1:	70 72                	jo     135 <_init-0x4002bb>
  c3:	69 6e 74 66 5f 63 68 	imul   $0x68635f66,0x74(%rsi),%ebp
  ca:	6b 00 5f             	imul   $0x5f,(%rax),%eax
  cd:	6f                   	outsl  %ds:(%rsi),(%dx)
  ce:	6c                   	insb   (%dx),%es:(%rdi)
  cf:	64 5f                	fs pop %rdi
  d1:	6f                   	outsl  %ds:(%rsi),(%dx)
  d2:	66 66 73 65          	data16 data16 jae 13b <_init-0x4002b5>
  d6:	74 00                	je     d8 <_init-0x400318>
  d8:	47                   	rex.RXB
  d9:	4e 55                	rex.WRX push %rbp
  db:	20 43 2b             	and    %al,0x2b(%rbx)
  de:	2b 31                	sub    (%rcx),%esi
  e0:	31 20                	xor    %esp,(%rax)
  e2:	35 2e 34 2e 30       	xor    $0x302e342e,%eax
  e7:	20 32                	and    %dh,(%rdx)
  e9:	30 31                	xor    %dh,(%rcx)
  eb:	36 30 36             	xor    %dh,%ss:(%rsi)
  ee:	30 39                	xor    %bh,(%rcx)
  f0:	20 2d 6d 61 76 78    	and    %ch,0x7876616d(%rip)        # 78766263 <_end+0x78165223>
  f6:	35 31 32 66 20       	xor    $0x20663231,%eax
  fb:	2d 6d 74 75 6e       	sub    $0x6e75746d,%eax
 100:	65 3d 67 65 6e 65    	gs cmp $0x656e6567,%eax
 106:	72 69                	jb     171 <_init-0x40027f>
 108:	63 20                	movslq (%rax),%esp
 10a:	2d 6d 61 72 63       	sub    $0x6372616d,%eax
 10f:	68 3d 78 38 36       	pushq  $0x3638783d
 114:	2d 36 34 20 2d       	sub    $0x2d203436,%eax
 119:	67 20 2d 4f 33 20 2d 	and    %ch,0x2d20334f(%eip)        # 2d20346f <_end+0x2cc0242f>
 120:	73 74                	jae    196 <_init-0x40025a>
 122:	64 3d 63 2b 2b 31    	fs cmp $0x312b2b63,%eax
 128:	31 20                	xor    %esp,(%rax)
 12a:	2d 66 73 74 61       	sub    $0x61747366,%eax
 12f:	63 6b 2d             	movslq 0x2d(%rbx),%ebp
 132:	70 72                	jo     1a6 <_init-0x40024a>
 134:	6f                   	outsl  %ds:(%rsi),(%dx)
 135:	74 65                	je     19c <_init-0x400254>
 137:	63 74 6f 72          	movslq 0x72(%rdi,%rbp,2),%esi
 13b:	2d 73 74 72 6f       	sub    $0x6f727473,%eax
 140:	6e                   	outsb  %ds:(%rsi),(%dx)
 141:	67 00 5f 49          	add    %bl,0x49(%edi)
 145:	4f 5f                	rex.WRXB pop %r15
 147:	6d                   	insl   (%dx),%es:(%rdi)
 148:	61                   	(bad)  
 149:	72 6b                	jb     1b6 <_init-0x40023a>
 14b:	65 72 00             	gs jb  14e <_init-0x4002a2>
 14e:	73 74                	jae    1c4 <_init-0x40022c>
 150:	64 69 6e 00 65 78 70 	imul   $0x65707865,%fs:0x0(%rsi),%ebp
 157:	65 
 158:	63 74 65 64          	movslq 0x64(%rbp,%riz,2),%esi
 15c:	00 5f 49             	add    %bl,0x49(%rdi)
 15f:	4f 5f                	rex.WRXB pop %r15
 161:	77 72                	ja     1d5 <_init-0x40021b>
 163:	69 74 65 5f 70 74 72 	imul   $0x727470,0x5f(%rbp,%riz,2),%esi
 16a:	00 
 16b:	5f                   	pop    %rdi
 16c:	73 62                	jae    1d0 <_init-0x400220>
 16e:	75 66                	jne    1d6 <_init-0x40021a>
 170:	00 73 68             	add    %dh,0x68(%rbx)
 173:	6f                   	outsl  %ds:(%rsi),(%dx)
 174:	72 74                	jb     1ea <_init-0x400206>
 176:	20 75 6e             	and    %dh,0x6e(%rbp)
 179:	73 69                	jae    1e4 <_init-0x40020c>
 17b:	67 6e                	outsb  %ds:(%esi),(%dx)
 17d:	65 64 20 69 6e       	gs and %ch,%fs:0x6e(%rcx)
 182:	74 00                	je     184 <_init-0x40026c>
 184:	5f                   	pop    %rdi
 185:	49                   	rex.WB
 186:	4f 5f                	rex.WRXB pop %r15
 188:	73 61                	jae    1eb <_init-0x400205>
 18a:	76 65                	jbe    1f1 <_init-0x4001ff>
 18c:	5f                   	pop    %rdi
 18d:	62 61                	(bad)  
 18f:	73 65                	jae    1f6 <_init-0x4001fa>
 191:	00 5f 6c             	add    %bl,0x6c(%rdi)
 194:	6f                   	outsl  %ds:(%rsi),(%dx)
 195:	63 6b 00             	movslq 0x0(%rbx),%ebp
 198:	5f                   	pop    %rdi
 199:	66 6c                	data16 insb (%dx),%es:(%rdi)
 19b:	61                   	(bad)  
 19c:	67 73 32             	addr32 jae 1d1 <_init-0x40021f>
 19f:	00 5f 6d             	add    %bl,0x6d(%rdi)
 1a2:	6f                   	outsl  %ds:(%rsi),(%dx)
 1a3:	64 65 00 73 74       	fs add %dh,%gs:0x74(%rbx)
 1a8:	64 6f                	outsl  %fs:(%rsi),(%dx)
 1aa:	75 74                	jne    220 <_init-0x4001d0>
 1ac:	00 73 69             	add    %dh,0x69(%rbx)
 1af:	7a 65                	jp     216 <_init-0x4001da>
 1b1:	74 79                	je     22c <_init-0x4001c4>
 1b3:	70 65                	jo     21a <_init-0x4001d6>
 1b5:	00 5f 49             	add    %bl,0x49(%rdi)
 1b8:	4f 5f                	rex.WRXB pop %r15
 1ba:	77 72                	ja     22e <_init-0x4001c2>
 1bc:	69 74 65 5f 65 6e 64 	imul   $0x646e65,0x5f(%rbp,%riz,2),%esi
 1c3:	00 
 1c4:	5f                   	pop    %rdi
 1c5:	49                   	rex.WB
 1c6:	4f 5f                	rex.WRXB pop %r15
 1c8:	6c                   	insb   (%dx),%es:(%rdi)
 1c9:	6f                   	outsl  %ds:(%rsi),(%dx)
 1ca:	63 6b 5f             	movslq 0x5f(%rbx),%ebp
 1cd:	74 00                	je     1cf <_init-0x400221>
 1cf:	5f                   	pop    %rdi
 1d0:	49                   	rex.WB
 1d1:	4f 5f                	rex.WRXB pop %r15
 1d3:	46                   	rex.RX
 1d4:	49                   	rex.WB
 1d5:	4c                   	rex.WR
 1d6:	45 00 5f 70          	add    %r11b,0x70(%r15)
 1da:	6f                   	outsl  %ds:(%rsi),(%dx)
 1db:	73 00                	jae    1dd <_init-0x400213>
 1dd:	5f                   	pop    %rdi
 1de:	6d                   	insl   (%dx),%es:(%rdi)
 1df:	61                   	(bad)  
 1e0:	72 6b                	jb     24d <_init-0x4001a3>
 1e2:	65 72 73             	gs jb  258 <_init-0x400198>
 1e5:	00 75 6e             	add    %dh,0x6e(%rbp)
 1e8:	73 69                	jae    253 <_init-0x40019d>
 1ea:	67 6e                	outsb  %ds:(%esi),(%dx)
 1ec:	65 64 20 63 68       	gs and %ah,%fs:0x68(%rbx)
 1f1:	61                   	(bad)  
 1f2:	72 00                	jb     1f4 <_init-0x4001fc>
 1f4:	73 68                	jae    25e <_init-0x400192>
 1f6:	6f                   	outsl  %ds:(%rsi),(%dx)
 1f7:	72 74                	jb     26d <_init-0x400183>
 1f9:	20 69 6e             	and    %ch,0x6e(%rcx)
 1fc:	74 00                	je     1fe <_init-0x4001f2>
 1fe:	74 61                	je     261 <_init-0x40018f>
 200:	62                   	(bad)  
 201:	6c                   	insb   (%dx),%es:(%rdi)
 202:	65 00 5f 76          	add    %bl,%gs:0x76(%rdi)
 206:	74 61                	je     269 <_init-0x400187>
 208:	62                   	(bad)  
 209:	6c                   	insb   (%dx),%es:(%rdi)
 20a:	65 5f                	gs pop %rdi
 20c:	6f                   	outsl  %ds:(%rsi),(%dx)
 20d:	66 66 73 65          	data16 data16 jae 276 <_init-0x40017a>
 211:	74 00                	je     213 <_init-0x4001dd>
 213:	2f                   	(bad)  
 214:	73 72                	jae    288 <_init-0x400168>
 216:	63 00                	movslq (%rax),%eax
 218:	5f                   	pop    %rdi
 219:	5a                   	pop    %rdx
 21a:	38 65 78             	cmp    %ah,0x78(%rbp)
 21d:	70 65                	jo     284 <_init-0x40016c>
 21f:	63 74 65 64          	movslq 0x64(%rbp,%riz,2),%esi
 223:	76 00                	jbe    225 <_init-0x4001cb>
 225:	73 72                	jae    299 <_init-0x400157>
 227:	63 2f                	movslq (%rdi),%ebp
 229:	6a 75                	pushq  $0x75
 22b:	6d                   	insl   (%dx),%es:(%rdi)
 22c:	70 74                	jo     2a2 <_init-0x40014e>
 22e:	61                   	(bad)  
 22f:	62                   	(bad)  
 230:	6c                   	insb   (%dx),%es:(%rdi)
 231:	65 2f                	gs (bad) 
 233:	6a 75                	pushq  $0x75
 235:	6d                   	insl   (%dx),%es:(%rdi)
 236:	70 62                	jo     29a <_init-0x400156>
 238:	61                   	(bad)  
 239:	63 6b 74             	movslq 0x74(%rbx),%ebp
 23c:	61                   	(bad)  
 23d:	62                   	(bad)  
 23e:	6c                   	insb   (%dx),%es:(%rdi)
 23f:	65 2e 63 70 70       	gs movslq %cs:0x70(%rax),%esi
 244:	00 5f 6e             	add    %bl,0x6e(%rdi)
 247:	65 78 74             	gs js  2be <_init-0x400132>
 24a:	00 5f 5f             	add    %bl,0x5f(%rdi)
 24d:	6f                   	outsl  %ds:(%rsi),(%dx)
 24e:	66 66 36 34 5f       	data16 data16 ss xor $0x5f,%al
 253:	74 00                	je     255 <_init-0x40019b>
 255:	5f                   	pop    %rdi
 256:	49                   	rex.WB
 257:	4f 5f                	rex.WRXB pop %r15
 259:	72 65                	jb     2c0 <_init-0x400130>
 25b:	61                   	(bad)  
 25c:	64 5f                	fs pop %rdi
 25e:	62 61                	(bad)  
 260:	73 65                	jae    2c7 <_init-0x400129>
 262:	00 5f 49             	add    %bl,0x49(%rdi)
 265:	4f 5f                	rex.WRXB pop %r15
 267:	73 61                	jae    2ca <_init-0x400126>
 269:	76 65                	jbe    2d0 <_init-0x400120>
 26b:	5f                   	pop    %rdi
 26c:	65 6e                	outsb  %gs:(%rsi),(%dx)
 26e:	64 00 5f 5f          	add    %bl,%fs:0x5f(%rdi)
 272:	66 6d                	insw   (%dx),%es:(%rdi)
 274:	74 00                	je     276 <_init-0x40017a>
 276:	5f                   	pop    %rdi
 277:	5a                   	pop    %rdx
 278:	35 74 61 62 6c       	xor    $0x6c626174,%eax
 27d:	65 69 00 5f 5f 70 61 	imul   $0x61705f5f,%gs:(%rax),%eax
 284:	64 31 00             	xor    %eax,%fs:(%rax)
 287:	5f                   	pop    %rdi
 288:	5f                   	pop    %rdi
 289:	70 61                	jo     2ec <_init-0x400104>
 28b:	64 32 00             	xor    %fs:(%rax),%al
 28e:	5f                   	pop    %rdi
 28f:	5f                   	pop    %rdi
 290:	70 61                	jo     2f3 <_init-0x4000fd>
 292:	64 33 00             	xor    %fs:(%rax),%eax
 295:	5f                   	pop    %rdi
 296:	5f                   	pop    %rdi
 297:	70 61                	jo     2fa <_init-0x4000f6>
 299:	64 34 00             	fs xor $0x0,%al
 29c:	5f                   	pop    %rdi
 29d:	5f                   	pop    %rdi
 29e:	70 61                	jo     301 <_init-0x4000ef>
 2a0:	64 35 00 5f 75 6e    	fs xor $0x6e755f00,%eax
 2a6:	75 73                	jne    31b <_init-0x4000d5>
 2a8:	65 64 32 00          	gs xor %fs:(%rax),%al
 2ac:	61                   	(bad)  
 2ad:	72 67                	jb     316 <_init-0x4000da>
 2af:	76 00                	jbe    2b1 <_init-0x40013f>
 2b1:	5f                   	pop    %rdi
 2b2:	49                   	rex.WB
 2b3:	4f 5f                	rex.WRXB pop %r15
 2b5:	62 61                	(bad)  
 2b7:	63 6b 75             	movslq 0x75(%rbx),%ebp
 2ba:	70 5f                	jo     31b <_init-0x4000d5>
 2bc:	62 61                	(bad)  
 2be:	73 65                	jae    325 <_init-0x4000cb>
 2c0:	00 61 72             	add    %ah,0x72(%rcx)
 2c3:	67 63 00             	movslq (%eax),%eax
 2c6:	6d                   	insl   (%dx),%es:(%rdi)
 2c7:	61                   	(bad)  
 2c8:	69 6e 00 5f 49 4f 5f 	imul   $0x5f4f495f,0x0(%rsi),%ebp
 2cf:	77 72                	ja     343 <_init-0x4000ad>
 2d1:	69 74 65 5f 62 61 73 	imul   $0x65736162,0x5f(%rbp,%riz,2),%esi
 2d8:	65 
	...

Disassembly of section .debug_loc:

0000000000000000 <.debug_loc>:
   0:	90                   	nop
   1:	05 40 00 00 00       	add    $0x40,%eax
   6:	00 00                	add    %al,(%rax)
   8:	a3 05 40 00 00 00 00 	movabs %eax,0x100000000004005
   f:	00 01 
  11:	00 55 a3             	add    %dl,-0x5d(%rbp)
  14:	05 40 00 00 00       	add    $0x40,%eax
  19:	00 00                	add    %al,(%rax)
  1b:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
  1c:	05 40 00 00 00       	add    $0x40,%eax
  21:	00 00                	add    %al,(%rax)
  23:	04 00                	add    $0x0,%al
  25:	f3 01 55 9f          	repz add %edx,-0x61(%rbp)
	...
  39:	50                   	push   %rax
  3a:	04 40                	add    $0x40,%al
  3c:	00 00                	add    %al,(%rax)
  3e:	00 00                	add    %al,(%rax)
  40:	00 63 04             	add    %ah,0x4(%rbx)
  43:	40 00 00             	add    %al,(%rax)
  46:	00 00                	add    %al,(%rax)
  48:	00 01                	add    %al,(%rcx)
  4a:	00 55 63             	add    %dl,0x63(%rbp)
  4d:	04 40                	add    $0x40,%al
  4f:	00 00                	add    %al,(%rax)
  51:	00 00                	add    %al,(%rax)
  53:	00 89 04 40 00 00    	add    %cl,0x4004(%rcx)
  59:	00 00                	add    %al,(%rax)
  5b:	00 04 00             	add    %al,(%rax,%rax,1)
  5e:	f3 01 55 9f          	repz add %edx,-0x61(%rbp)
	...
  72:	50                   	push   %rax
  73:	04 40                	add    $0x40,%al
  75:	00 00                	add    %al,(%rax)
  77:	00 00                	add    %al,(%rax)
  79:	00 5e 04             	add    %bl,0x4(%rsi)
  7c:	40 00 00             	add    %al,(%rax)
  7f:	00 00                	add    %al,(%rax)
  81:	00 01                	add    %al,(%rcx)
  83:	00 54 5e 04          	add    %dl,0x4(%rsi,%rbx,2)
  87:	40 00 00             	add    %al,(%rax)
  8a:	00 00                	add    %al,(%rax)
  8c:	00 89 04 40 00 00    	add    %cl,0x4004(%rcx)
  92:	00 00                	add    %al,(%rax)
  94:	00 04 00             	add    %al,(%rax,%rax,1)
  97:	f3 01 54 9f 00       	repz add %edx,0x0(%rdi,%rbx,4)
	...
  a8:	00 00                	add    %al,(%rax)
  aa:	00 50 04             	add    %dl,0x4(%rax)
  ad:	40 00 00             	add    %al,(%rax)
  b0:	00 00                	add    %al,(%rax)
  b2:	00 6a 04             	add    %ch,0x4(%rdx)
  b5:	40 00 00             	add    %al,(%rax)
  b8:	00 00                	add    %al,(%rax)
  ba:	00 0a                	add    %cl,(%rdx)
  bc:	00 03                	add    %al,(%rbx)
  be:	e4 06                	in     $0x6,%al
  c0:	40 00 00             	add    %al,(%rax)
  c3:	00 00                	add    %al,(%rax)
  c5:	00 9f 00 00 00 00    	add    %bl,0x0(%rdi)
	...
  d7:	6f                   	outsl  %ds:(%rsi),(%dx)
  d8:	04 40                	add    $0x40,%al
  da:	00 00                	add    %al,(%rax)
  dc:	00 00                	add    %al,(%rax)
  de:	00 82 04 40 00 00    	add    %al,0x4004(%rdx)
  e4:	00 00                	add    %al,(%rax)
  e6:	00 0a                	add    %cl,(%rdx)
  e8:	00 03                	add    %al,(%rbx)
  ea:	f3 06                	repz (bad) 
  ec:	40 00 00             	add    %al,(%rax)
  ef:	00 00                	add    %al,(%rax)
  f1:	00 9f 00 00 00 00    	add    %bl,0x0(%rdi)
	...

Disassembly of section .debug_ranges:

0000000000000000 <.debug_ranges>:
   0:	90                   	nop
   1:	05 40 00 00 00       	add    $0x40,%eax
   6:	00 00                	add    %al,(%rax)
   8:	5e                   	pop    %rsi
   9:	06                   	(bad)  
   a:	40 00 00             	add    %al,(%rax)
   d:	00 00                	add    %al,(%rax)
   f:	00 50 04             	add    %dl,0x4(%rax)
  12:	40 00 00             	add    %al,(%rax)
  15:	00 00                	add    %al,(%rax)
  17:	00 89 04 40 00 00    	add    %cl,0x4004(%rcx)
	...
