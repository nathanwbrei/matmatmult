
build/jumptable:     file format elf64-x86-64


Disassembly of section .interp:

0000000000400238 <.interp>:
  400238:	2f                   	(bad)  
  400239:	6c                   	insb   (%dx),%es:(%rdi)
  40023a:	69 62 36 34 2f 6c 64 	imul   $0x646c2f34,0x36(%rdx),%esp
  400241:	2d 6c 69 6e 75       	sub    $0x756e696c,%eax
  400246:	78 2d                	js     400275 <_init-0x1b3>
  400248:	78 38                	js     400282 <_init-0x1a6>
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
  400283:	00 00                	add    %al,(%rax)
  400285:	2e 53                	cs push %rbx
  400287:	32 c5                	xor    %ch,%al
  400289:	69 b2 12 85 3e dd 23 	imul   $0x374f4523,-0x22c17aee(%rdx),%esi
  400290:	45 4f 37 
  400293:	ca e2 e7             	lret   $0xe7e2
  400296:	2c 8e                	sub    $0x8e,%al

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
  4002d0:	1f                   	(bad)  
  4002d1:	00 00                	add    %al,(%rax)
  4002d3:	00 12                	add    %dl,(%rdx)
	...
  4002e5:	00 00                	add    %al,(%rax)
  4002e7:	00 31                	add    %dh,(%rcx)
  4002e9:	00 00                	add    %al,(%rax)
  4002eb:	00 20                	add    %ah,(%rax)
	...
  4002fd:	00 00                	add    %al,(%rax)
  4002ff:	00 18                	add    %bl,(%rax)
  400301:	00 00                	add    %al,(%rax)
  400303:	00 12                	add    %dl,(%rdx)
	...
  400315:	00 00                	add    %al,(%rax)
  400317:	00 0b                	add    %cl,(%rbx)
  400319:	00 00                	add    %al,(%rax)
  40031b:	00 12                	add    %dl,(%rdx)
	...

Disassembly of section .dynstr:

0000000000400330 <.dynstr>:
  400330:	00 6c 69 62          	add    %ch,0x62(%rcx,%rbp,2)
  400334:	63 2e                	movslq (%rsi),%ebp
  400336:	73 6f                	jae    4003a7 <_init-0x81>
  400338:	2e 36 00 5f 5f       	cs add %bl,%ss:0x5f(%rdi)
  40033d:	70 72                	jo     4003b1 <_init-0x77>
  40033f:	69 6e 74 66 5f 63 68 	imul   $0x68635f66,0x74(%rsi),%ebp
  400346:	6b 00 73             	imul   $0x73,(%rax),%eax
  400349:	74 72                	je     4003bd <_init-0x6b>
  40034b:	74 6f                	je     4003bc <_init-0x6c>
  40034d:	6c                   	insb   (%dx),%es:(%rdi)
  40034e:	00 5f 5f             	add    %bl,0x5f(%rdi)
  400351:	6c                   	insb   (%dx),%es:(%rdi)
  400352:	69 62 63 5f 73 74 61 	imul   $0x6174735f,0x63(%rdx),%esp
  400359:	72 74                	jb     4003cf <_init-0x59>
  40035b:	5f                   	pop    %rdi
  40035c:	6d                   	insl   (%dx),%es:(%rdi)
  40035d:	61                   	(bad)  
  40035e:	69 6e 00 5f 5f 67 6d 	imul   $0x6d675f5f,0x0(%rsi),%ebp
  400365:	6f                   	outsl  %ds:(%rsi),(%dx)
  400366:	6e                   	outsb  %ds:(%rsi),(%dx)
  400367:	5f                   	pop    %rdi
  400368:	73 74                	jae    4003de <_init-0x4a>
  40036a:	61                   	(bad)  
  40036b:	72 74                	jb     4003e1 <_init-0x47>
  40036d:	5f                   	pop    %rdi
  40036e:	5f                   	pop    %rdi
  40036f:	00 47 4c             	add    %al,0x4c(%rdi)
  400372:	49                   	rex.WB
  400373:	42                   	rex.X
  400374:	43 5f                	rex.XB pop %r15
  400376:	32 2e                	xor    (%rsi),%ch
  400378:	33 2e                	xor    (%rsi),%ebp
  40037a:	34 00                	xor    $0x0,%al
  40037c:	47                   	rex.RXB
  40037d:	4c                   	rex.WR
  40037e:	49                   	rex.WB
  40037f:	42                   	rex.X
  400380:	43 5f                	rex.XB pop %r15
  400382:	32 2e                	xor    (%rsi),%ch
  400384:	32 2e                	xor    (%rsi),%ch
  400386:	35                   	.byte 0x35
	...

Disassembly of section .gnu.version:

0000000000400388 <.gnu.version>:
  400388:	00 00                	add    %al,(%rax)
  40038a:	02 00                	add    (%rax),%al
  40038c:	00 00                	add    %al,(%rax)
  40038e:	02 00                	add    (%rax),%al
  400390:	03 00                	add    (%rax),%eax

Disassembly of section .gnu.version_r:

0000000000400398 <.gnu.version_r>:
  400398:	01 00                	add    %eax,(%rax)
  40039a:	02 00                	add    (%rax),%al
  40039c:	01 00                	add    %eax,(%rax)
  40039e:	00 00                	add    %al,(%rax)
  4003a0:	10 00                	adc    %al,(%rax)
  4003a2:	00 00                	add    %al,(%rax)
  4003a4:	00 00                	add    %al,(%rax)
  4003a6:	00 00                	add    %al,(%rax)
  4003a8:	74 19                	je     4003c3 <_init-0x65>
  4003aa:	69 09 00 00 03 00    	imul   $0x30000,(%rcx),%ecx
  4003b0:	40 00 00             	add    %al,(%rax)
  4003b3:	00 10                	add    %dl,(%rax)
  4003b5:	00 00                	add    %al,(%rax)
  4003b7:	00 75 1a             	add    %dh,0x1a(%rbp)
  4003ba:	69 09 00 00 02 00    	imul   $0x20000,(%rcx),%ecx
  4003c0:	4c 00 00             	rex.WR add %r8b,(%rax)
  4003c3:	00 00                	add    %al,(%rax)
  4003c5:	00 00                	add    %al,(%rax)
	...

Disassembly of section .rela.dyn:

00000000004003c8 <.rela.dyn>:
  4003c8:	f8                   	clc    
  4003c9:	0f 60 00             	punpcklbw (%rax),%mm0
  4003cc:	00 00                	add    %al,(%rax)
  4003ce:	00 00                	add    %al,(%rax)
  4003d0:	06                   	(bad)  
  4003d1:	00 00                	add    %al,(%rax)
  4003d3:	00 02                	add    %al,(%rdx)
	...

Disassembly of section .rela.plt:

00000000004003e0 <.rela.plt>:
  4003e0:	18 10                	sbb    %dl,(%rax)
  4003e2:	60                   	(bad)  
  4003e3:	00 00                	add    %al,(%rax)
  4003e5:	00 00                	add    %al,(%rax)
  4003e7:	00 07                	add    %al,(%rdi)
  4003e9:	00 00                	add    %al,(%rax)
  4003eb:	00 01                	add    %al,(%rcx)
	...
  4003f5:	00 00                	add    %al,(%rax)
  4003f7:	00 20                	add    %ah,(%rax)
  4003f9:	10 60 00             	adc    %ah,0x0(%rax)
  4003fc:	00 00                	add    %al,(%rax)
  4003fe:	00 00                	add    %al,(%rax)
  400400:	07                   	(bad)  
  400401:	00 00                	add    %al,(%rax)
  400403:	00 03                	add    %al,(%rbx)
	...
  40040d:	00 00                	add    %al,(%rax)
  40040f:	00 28                	add    %ch,(%rax)
  400411:	10 60 00             	adc    %ah,0x0(%rax)
  400414:	00 00                	add    %al,(%rax)
  400416:	00 00                	add    %al,(%rax)
  400418:	07                   	(bad)  
  400419:	00 00                	add    %al,(%rax)
  40041b:	00 04 00             	add    %al,(%rax,%rax,1)
	...

Disassembly of section .init:

0000000000400428 <_init>:
  400428:	48 83 ec 08          	sub    $0x8,%rsp
  40042c:	48 8b 05 c5 0b 20 00 	mov    0x200bc5(%rip),%rax        # 600ff8 <_DYNAMIC+0x1d0>
  400433:	48 85 c0             	test   %rax,%rax
  400436:	74 05                	je     40043d <_init+0x15>
  400438:	e8 53 00 00 00       	callq  400490 <__printf_chk@plt+0x10>
  40043d:	48 83 c4 08          	add    $0x8,%rsp
  400441:	c3                   	retq   

Disassembly of section .plt:

0000000000400450 <__libc_start_main@plt-0x10>:
  400450:	ff 35 b2 0b 20 00    	pushq  0x200bb2(%rip)        # 601008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400456:	ff 25 b4 0b 20 00    	jmpq   *0x200bb4(%rip)        # 601010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40045c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400460 <__libc_start_main@plt>:
  400460:	ff 25 b2 0b 20 00    	jmpq   *0x200bb2(%rip)        # 601018 <_GLOBAL_OFFSET_TABLE_+0x18>
  400466:	68 00 00 00 00       	pushq  $0x0
  40046b:	e9 e0 ff ff ff       	jmpq   400450 <_init+0x28>

0000000000400470 <strtol@plt>:
  400470:	ff 25 aa 0b 20 00    	jmpq   *0x200baa(%rip)        # 601020 <_GLOBAL_OFFSET_TABLE_+0x20>
  400476:	68 01 00 00 00       	pushq  $0x1
  40047b:	e9 d0 ff ff ff       	jmpq   400450 <_init+0x28>

0000000000400480 <__printf_chk@plt>:
  400480:	ff 25 a2 0b 20 00    	jmpq   *0x200ba2(%rip)        # 601028 <_GLOBAL_OFFSET_TABLE_+0x28>
  400486:	68 02 00 00 00       	pushq  $0x2
  40048b:	e9 c0 ff ff ff       	jmpq   400450 <_init+0x28>

Disassembly of section .plt.got:

0000000000400490 <.plt.got>:
  400490:	ff 25 62 0b 20 00    	jmpq   *0x200b62(%rip)        # 600ff8 <_DYNAMIC+0x1d0>
  400496:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

00000000004004a0 <main>:
  4004a0:	53                   	push   %rbx
  4004a1:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
  4004a5:	ba 0a 00 00 00       	mov    $0xa,%edx
  4004aa:	31 f6                	xor    %esi,%esi
  4004ac:	e8 bf ff ff ff       	callq  400470 <strtol@plt>
  4004b1:	83 f8 02             	cmp    $0x2,%eax
  4004b4:	48 89 c3             	mov    %rax,%rbx
  4004b7:	b9 63 00 00 00       	mov    $0x63,%ecx
  4004bc:	77 09                	ja     4004c7 <main+0x27>
  4004be:	89 c0                	mov    %eax,%eax
  4004c0:	8b 0c 85 10 07 40 00 	mov    0x400710(,%rax,4),%ecx
  4004c7:	89 da                	mov    %ebx,%edx
  4004c9:	be f4 06 40 00       	mov    $0x4006f4,%esi
  4004ce:	bf 01 00 00 00       	mov    $0x1,%edi
  4004d3:	31 c0                	xor    %eax,%eax
  4004d5:	e8 a6 ff ff ff       	callq  400480 <__printf_chk@plt>
  4004da:	89 df                	mov    %ebx,%edi
  4004dc:	e8 3f 01 00 00       	callq  400620 <_Z1gi>
  4004e1:	89 da                	mov    %ebx,%edx
  4004e3:	89 c1                	mov    %eax,%ecx
  4004e5:	be 00 07 40 00       	mov    $0x400700,%esi
  4004ea:	bf 01 00 00 00       	mov    $0x1,%edi
  4004ef:	31 c0                	xor    %eax,%eax
  4004f1:	e8 8a ff ff ff       	callq  400480 <__printf_chk@plt>
  4004f6:	31 c0                	xor    %eax,%eax
  4004f8:	5b                   	pop    %rbx
  4004f9:	c3                   	retq   
  4004fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400500 <_start>:
  400500:	31 ed                	xor    %ebp,%ebp
  400502:	49 89 d1             	mov    %rdx,%r9
  400505:	5e                   	pop    %rsi
  400506:	48 89 e2             	mov    %rsp,%rdx
  400509:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40050d:	50                   	push   %rax
  40050e:	54                   	push   %rsp
  40050f:	49 c7 c0 e0 06 40 00 	mov    $0x4006e0,%r8
  400516:	48 c7 c1 70 06 40 00 	mov    $0x400670,%rcx
  40051d:	48 c7 c7 a0 04 40 00 	mov    $0x4004a0,%rdi
  400524:	e8 37 ff ff ff       	callq  400460 <__libc_start_main@plt>
  400529:	f4                   	hlt    
  40052a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400530 <deregister_tm_clones>:
  400530:	b8 47 10 60 00       	mov    $0x601047,%eax
  400535:	55                   	push   %rbp
  400536:	48 2d 40 10 60 00    	sub    $0x601040,%rax
  40053c:	48 83 f8 0e          	cmp    $0xe,%rax
  400540:	48 89 e5             	mov    %rsp,%rbp
  400543:	76 1b                	jbe    400560 <deregister_tm_clones+0x30>
  400545:	b8 00 00 00 00       	mov    $0x0,%eax
  40054a:	48 85 c0             	test   %rax,%rax
  40054d:	74 11                	je     400560 <deregister_tm_clones+0x30>
  40054f:	5d                   	pop    %rbp
  400550:	bf 40 10 60 00       	mov    $0x601040,%edi
  400555:	ff e0                	jmpq   *%rax
  400557:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40055e:	00 00 
  400560:	5d                   	pop    %rbp
  400561:	c3                   	retq   
  400562:	0f 1f 40 00          	nopl   0x0(%rax)
  400566:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40056d:	00 00 00 

0000000000400570 <register_tm_clones>:
  400570:	be 40 10 60 00       	mov    $0x601040,%esi
  400575:	55                   	push   %rbp
  400576:	48 81 ee 40 10 60 00 	sub    $0x601040,%rsi
  40057d:	48 c1 fe 03          	sar    $0x3,%rsi
  400581:	48 89 e5             	mov    %rsp,%rbp
  400584:	48 89 f0             	mov    %rsi,%rax
  400587:	48 c1 e8 3f          	shr    $0x3f,%rax
  40058b:	48 01 c6             	add    %rax,%rsi
  40058e:	48 d1 fe             	sar    %rsi
  400591:	74 15                	je     4005a8 <register_tm_clones+0x38>
  400593:	b8 00 00 00 00       	mov    $0x0,%eax
  400598:	48 85 c0             	test   %rax,%rax
  40059b:	74 0b                	je     4005a8 <register_tm_clones+0x38>
  40059d:	5d                   	pop    %rbp
  40059e:	bf 40 10 60 00       	mov    $0x601040,%edi
  4005a3:	ff e0                	jmpq   *%rax
  4005a5:	0f 1f 00             	nopl   (%rax)
  4005a8:	5d                   	pop    %rbp
  4005a9:	c3                   	retq   
  4005aa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004005b0 <__do_global_dtors_aux>:
  4005b0:	80 3d 89 0a 20 00 00 	cmpb   $0x0,0x200a89(%rip)        # 601040 <__TMC_END__>
  4005b7:	75 11                	jne    4005ca <__do_global_dtors_aux+0x1a>
  4005b9:	55                   	push   %rbp
  4005ba:	48 89 e5             	mov    %rsp,%rbp
  4005bd:	e8 6e ff ff ff       	callq  400530 <deregister_tm_clones>
  4005c2:	5d                   	pop    %rbp
  4005c3:	c6 05 76 0a 20 00 01 	movb   $0x1,0x200a76(%rip)        # 601040 <__TMC_END__>
  4005ca:	f3 c3                	repz retq 
  4005cc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004005d0 <frame_dummy>:
  4005d0:	bf 20 0e 60 00       	mov    $0x600e20,%edi
  4005d5:	48 83 3f 00          	cmpq   $0x0,(%rdi)
  4005d9:	75 05                	jne    4005e0 <frame_dummy+0x10>
  4005db:	eb 93                	jmp    400570 <register_tm_clones>
  4005dd:	0f 1f 00             	nopl   (%rax)
  4005e0:	b8 00 00 00 00       	mov    $0x0,%eax
  4005e5:	48 85 c0             	test   %rax,%rax
  4005e8:	74 f1                	je     4005db <frame_dummy+0xb>
  4005ea:	55                   	push   %rbp
  4005eb:	48 89 e5             	mov    %rsp,%rbp
  4005ee:	ff d0                	callq  *%rax
  4005f0:	5d                   	pop    %rbp
  4005f1:	e9 7a ff ff ff       	jmpq   400570 <register_tm_clones>
  4005f6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4005fd:	00 00 00 

0000000000400600 <_Z1fi>:
  400600:	83 ff 02             	cmp    $0x2,%edi
  400603:	b8 63 00 00 00       	mov    $0x63,%eax
  400608:	77 09                	ja     400613 <_Z1fi+0x13>
  40060a:	89 ff                	mov    %edi,%edi
  40060c:	8b 04 bd 10 07 40 00 	mov    0x400710(,%rdi,4),%eax
  400613:	f3 c3                	repz retq 
  400615:	90                   	nop
  400616:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40061d:	00 00 00 

0000000000400620 <_Z1gi>:
  400620:	83 ff 00             	cmp    $0x0,%edi
  400623:	7c 3a                	jl     40065f <DEFAULT_26>
  400625:	83 ff 02             	cmp    $0x2,%edi
  400628:	7f 35                	jg     40065f <DEFAULT_26>
  40062a:	67 ff 24 fd 32 06 40 	jmpq   *0x400632(,%edi,8)
  400631:	00 

0000000000400632 <SWITCH_26>:
  400632:	4a 06                	rex.WX (bad) 
  400634:	40 00 00             	add    %al,(%rax)
  400637:	00 00                	add    %al,(%rax)
  400639:	00 51 06             	add    %dl,0x6(%rcx)
  40063c:	40 00 00             	add    %al,(%rax)
  40063f:	00 00                	add    %al,(%rax)
  400641:	00 58 06             	add    %bl,0x6(%rax)
  400644:	40 00 00             	add    %al,(%rax)
  400647:	00 00                	add    %al,(%rax)
	...

000000000040064a <CASE_0_26>:
  40064a:	b8 16 00 00 00       	mov    $0x16,%eax
  40064f:	eb 13                	jmp    400664 <END_SWITCH_26>

0000000000400651 <CASE_1_26>:
  400651:	b8 01 00 00 00       	mov    $0x1,%eax
  400656:	eb 0c                	jmp    400664 <END_SWITCH_26>

0000000000400658 <CASE_2_26>:
  400658:	b8 2c 00 00 00       	mov    $0x2c,%eax
  40065d:	eb 05                	jmp    400664 <END_SWITCH_26>

000000000040065f <DEFAULT_26>:
  40065f:	b8 63 00 00 00       	mov    $0x63,%eax

0000000000400664 <END_SWITCH_26>:
  400664:	c3                   	retq   
  400665:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40066c:	00 00 00 
  40066f:	90                   	nop

0000000000400670 <__libc_csu_init>:
  400670:	41 57                	push   %r15
  400672:	41 56                	push   %r14
  400674:	41 89 ff             	mov    %edi,%r15d
  400677:	41 55                	push   %r13
  400679:	41 54                	push   %r12
  40067b:	4c 8d 25 8e 07 20 00 	lea    0x20078e(%rip),%r12        # 600e10 <__frame_dummy_init_array_entry>
  400682:	55                   	push   %rbp
  400683:	48 8d 2d 8e 07 20 00 	lea    0x20078e(%rip),%rbp        # 600e18 <__init_array_end>
  40068a:	53                   	push   %rbx
  40068b:	49 89 f6             	mov    %rsi,%r14
  40068e:	49 89 d5             	mov    %rdx,%r13
  400691:	4c 29 e5             	sub    %r12,%rbp
  400694:	48 83 ec 08          	sub    $0x8,%rsp
  400698:	48 c1 fd 03          	sar    $0x3,%rbp
  40069c:	e8 87 fd ff ff       	callq  400428 <_init>
  4006a1:	48 85 ed             	test   %rbp,%rbp
  4006a4:	74 20                	je     4006c6 <__libc_csu_init+0x56>
  4006a6:	31 db                	xor    %ebx,%ebx
  4006a8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4006af:	00 
  4006b0:	4c 89 ea             	mov    %r13,%rdx
  4006b3:	4c 89 f6             	mov    %r14,%rsi
  4006b6:	44 89 ff             	mov    %r15d,%edi
  4006b9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  4006bd:	48 83 c3 01          	add    $0x1,%rbx
  4006c1:	48 39 eb             	cmp    %rbp,%rbx
  4006c4:	75 ea                	jne    4006b0 <__libc_csu_init+0x40>
  4006c6:	48 83 c4 08          	add    $0x8,%rsp
  4006ca:	5b                   	pop    %rbx
  4006cb:	5d                   	pop    %rbp
  4006cc:	41 5c                	pop    %r12
  4006ce:	41 5d                	pop    %r13
  4006d0:	41 5e                	pop    %r14
  4006d2:	41 5f                	pop    %r15
  4006d4:	c3                   	retq   
  4006d5:	90                   	nop
  4006d6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4006dd:	00 00 00 

00000000004006e0 <__libc_csu_fini>:
  4006e0:	f3 c3                	repz retq 

Disassembly of section .fini:

00000000004006e4 <_fini>:
  4006e4:	48 83 ec 08          	sub    $0x8,%rsp
  4006e8:	48 83 c4 08          	add    $0x8,%rsp
  4006ec:	c3                   	retq   

Disassembly of section .rodata:

00000000004006f0 <_IO_stdin_used>:
  4006f0:	01 00                	add    %eax,(%rax)
  4006f2:	02 00                	add    (%rax),%al
  4006f4:	66 28 25 64 29 20 3d 	data16 sub %ah,0x3d202964(%rip)        # 3d60305f <_end+0x3d002017>
  4006fb:	20 25 64 0a 00 67    	and    %ah,0x67000a64(%rip)        # 67401165 <_end+0x66e0011d>
  400701:	28 25 64 29 20 3d    	sub    %ah,0x3d202964(%rip)        # 3d60306b <_end+0x3d002023>
  400707:	20 25 64 0a 00 00    	and    %ah,0xa64(%rip)        # 401171 <__FRAME_END__+0x8f1>
  40070d:	00 00                	add    %al,(%rax)
	...

0000000000400710 <CSWTCH.3>:
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
  400720:	40 00 00             	add    %al,(%rax)
  400723:	00 07                	add    %al,(%rdi)
  400725:	00 00                	add    %al,(%rax)
  400727:	00 34 fd ff ff 8c 00 	add    %dh,0x8cffff(,%rdi,8)
  40072e:	00 00                	add    %al,(%rax)
  400730:	84 fd                	test   %bh,%ch
  400732:	ff                   	(bad)  
  400733:	ff e4                	jmpq   *%rsp
  400735:	00 00                	add    %al,(%rax)
  400737:	00 e4                	add    %ah,%ah
  400739:	fd                   	std    
  40073a:	ff                   	(bad)  
  40073b:	ff 5c 00 00          	lcall  *0x0(%rax,%rax,1)
  40073f:	00 e4                	add    %ah,%ah
  400741:	fe                   	(bad)  
  400742:	ff                   	(bad)  
  400743:	ff b4 00 00 00 04 ff 	pushq  -0xfc0000(%rax,%rax,1)
  40074a:	ff                   	(bad)  
  40074b:	ff cc                	dec    %esp
  40074d:	00 00                	add    %al,(%rax)
  40074f:	00 54 ff ff          	add    %dl,-0x1(%rdi,%rdi,8)
  400753:	ff 04 01             	incl   (%rcx,%rax,1)
  400756:	00 00                	add    %al,(%rax)
  400758:	c4                   	(bad)  
  400759:	ff                   	(bad)  
  40075a:	ff                   	(bad)  
  40075b:	ff 4c 01 00          	decl   0x0(%rcx,%rax,1)
	...

Disassembly of section .eh_frame:

0000000000400760 <__FRAME_END__-0x120>:
  400760:	14 00                	adc    $0x0,%al
  400762:	00 00                	add    %al,(%rax)
  400764:	00 00                	add    %al,(%rax)
  400766:	00 00                	add    %al,(%rax)
  400768:	01 7a 52             	add    %edi,0x52(%rdx)
  40076b:	00 01                	add    %al,(%rcx)
  40076d:	78 10                	js     40077f <__GNU_EH_FRAME_HDR+0x63>
  40076f:	01 1b                	add    %ebx,(%rbx)
  400771:	0c 07                	or     $0x7,%al
  400773:	08 90 01 07 10 14    	or     %dl,0x14100701(%rax)
  400779:	00 00                	add    %al,(%rax)
  40077b:	00 1c 00             	add    %bl,(%rax,%rax,1)
  40077e:	00 00                	add    %al,(%rax)
  400780:	80 fd ff             	cmp    $0xff,%ch
  400783:	ff 2a                	ljmp   *(%rdx)
	...
  40078d:	00 00                	add    %al,(%rax)
  40078f:	00 14 00             	add    %dl,(%rax,%rax,1)
  400792:	00 00                	add    %al,(%rax)
  400794:	00 00                	add    %al,(%rax)
  400796:	00 00                	add    %al,(%rax)
  400798:	01 7a 52             	add    %edi,0x52(%rdx)
  40079b:	00 01                	add    %al,(%rcx)
  40079d:	78 10                	js     4007af <__GNU_EH_FRAME_HDR+0x93>
  40079f:	01 1b                	add    %ebx,(%rbx)
  4007a1:	0c 07                	or     $0x7,%al
  4007a3:	08 90 01 00 00 24    	or     %dl,0x24000001(%rax)
  4007a9:	00 00                	add    %al,(%rax)
  4007ab:	00 1c 00             	add    %bl,(%rax,%rax,1)
  4007ae:	00 00                	add    %al,(%rax)
  4007b0:	a0 fc ff ff 40 00 00 	movabs 0x40fffffc,%al
  4007b7:	00 00 
  4007b9:	0e                   	(bad)  
  4007ba:	10 46 0e             	adc    %al,0xe(%rsi)
  4007bd:	18 4a 0f             	sbb    %cl,0xf(%rdx)
  4007c0:	0b 77 08             	or     0x8(%rdi),%esi
  4007c3:	80 00 3f             	addb   $0x3f,(%rax)
  4007c6:	1a 3b                	sbb    (%rbx),%bh
  4007c8:	2a 33                	sub    (%rbx),%dh
  4007ca:	24 22                	and    $0x22,%al
  4007cc:	00 00                	add    %al,(%rax)
  4007ce:	00 00                	add    %al,(%rax)
  4007d0:	14 00                	adc    $0x0,%al
  4007d2:	00 00                	add    %al,(%rax)
  4007d4:	44 00 00             	add    %r8b,(%rax)
  4007d7:	00 28                	add    %ch,(%rax)
  4007d9:	fe                   	(bad)  
  4007da:	ff                   	(bad)  
  4007db:	ff 15 00 00 00 00    	callq  *0x0(%rip)        # 4007e1 <__GNU_EH_FRAME_HDR+0xc5>
  4007e1:	00 00                	add    %al,(%rax)
  4007e3:	00 00                	add    %al,(%rax)
  4007e5:	00 00                	add    %al,(%rax)
  4007e7:	00 14 00             	add    %dl,(%rax,%rax,1)
  4007ea:	00 00                	add    %al,(%rax)
  4007ec:	5c                   	pop    %rsp
  4007ed:	00 00                	add    %al,(%rax)
  4007ef:	00 30                	add    %dh,(%rax)
  4007f1:	fe                   	(bad)  
  4007f2:	ff                   	(bad)  
  4007f3:	ff 45 00             	incl   0x0(%rbp)
	...
  4007fe:	00 00                	add    %al,(%rax)
  400800:	1c 00                	sbb    $0x0,%al
  400802:	00 00                	add    %al,(%rax)
  400804:	74 00                	je     400806 <__GNU_EH_FRAME_HDR+0xea>
  400806:	00 00                	add    %al,(%rax)
  400808:	98                   	cwtl   
  400809:	fc                   	cld    
  40080a:	ff                   	(bad)  
  40080b:	ff 5a 00             	lcall  *0x0(%rdx)
  40080e:	00 00                	add    %al,(%rax)
  400810:	00 41 0e             	add    %al,0xe(%rcx)
  400813:	10 83 02 02 58 0e    	adc    %al,0xe580202(%rbx)
  400819:	08 00                	or     %al,(%rax)
  40081b:	00 00                	add    %al,(%rax)
  40081d:	00 00                	add    %al,(%rax)
  40081f:	00 44 00 00          	add    %al,0x0(%rax,%rax,1)
  400823:	00 94 00 00 00 48 fe 	add    %dl,-0x1b80000(%rax,%rax,1)
  40082a:	ff                   	(bad)  
  40082b:	ff 65 00             	jmpq   *0x0(%rbp)
  40082e:	00 00                	add    %al,(%rax)
  400830:	00 42 0e             	add    %al,0xe(%rdx)
  400833:	10 8f 02 42 0e 18    	adc    %cl,0x180e4202(%rdi)
  400839:	8e 03                	mov    (%rbx),%es
  40083b:	45 0e                	rex.RB (bad) 
  40083d:	20 8d 04 42 0e 28    	and    %cl,0x280e4204(%rbp)
  400843:	8c 05 48 0e 30 86    	mov    %es,-0x79cff1b8(%rip)        # ffffffff86701691 <_end+0xffffffff86100649>
  400849:	06                   	(bad)  
  40084a:	48 0e                	rex.W (bad) 
  40084c:	38 83 07 4d 0e 40    	cmp    %al,0x400e4d07(%rbx)
  400852:	72 0e                	jb     400862 <__GNU_EH_FRAME_HDR+0x146>
  400854:	38 41 0e             	cmp    %al,0xe(%rcx)
  400857:	30 41 0e             	xor    %al,0xe(%rcx)
  40085a:	28 42 0e             	sub    %al,0xe(%rdx)
  40085d:	20 42 0e             	and    %al,0xe(%rdx)
  400860:	18 42 0e             	sbb    %al,0xe(%rdx)
  400863:	10 42 0e             	adc    %al,0xe(%rdx)
  400866:	08 00                	or     %al,(%rax)
  400868:	14 00                	adc    $0x0,%al
  40086a:	00 00                	add    %al,(%rax)
  40086c:	dc 00                	faddl  (%rax)
  40086e:	00 00                	add    %al,(%rax)
  400870:	70 fe                	jo     400870 <__GNU_EH_FRAME_HDR+0x154>
  400872:	ff                   	(bad)  
  400873:	ff 02                	incl   (%rdx)
	...

0000000000400880 <__FRAME_END__>:
  400880:	00 00                	add    %al,(%rax)
	...

Disassembly of section .init_array:

0000000000600e10 <__frame_dummy_init_array_entry>:
  600e10:	d0 05 40 00 00 00    	rolb   0x40(%rip)        # 600e56 <_DYNAMIC+0x2e>
	...

Disassembly of section .fini_array:

0000000000600e18 <__do_global_dtors_aux_fini_array_entry>:
  600e18:	b0 05                	mov    $0x5,%al
  600e1a:	40 00 00             	add    %al,(%rax)
  600e1d:	00 00                	add    %al,(%rax)
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
  600e40:	28 04 40             	sub    %al,(%rax,%rax,2)
  600e43:	00 00                	add    %al,(%rax)
  600e45:	00 00                	add    %al,(%rax)
  600e47:	00 0d 00 00 00 00    	add    %cl,0x0(%rip)        # 600e4d <_DYNAMIC+0x25>
  600e4d:	00 00                	add    %al,(%rax)
  600e4f:	00 e4                	add    %ah,%ah
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
  600eaf:	00 30                	add    %dh,(%rax)
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
  600ecf:	00 58 00             	add    %bl,0x0(%rax)
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
  600f10:	48 00 00             	rex.W add %al,(%rax)
  600f13:	00 00                	add    %al,(%rax)
  600f15:	00 00                	add    %al,(%rax)
  600f17:	00 14 00             	add    %dl,(%rax,%rax,1)
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
  600f2f:	00 e0                	add    %ah,%al
  600f31:	03 40 00             	add    0x0(%rax),%eax
  600f34:	00 00                	add    %al,(%rax)
  600f36:	00 00                	add    %al,(%rax)
  600f38:	07                   	(bad)  
  600f39:	00 00                	add    %al,(%rax)
  600f3b:	00 00                	add    %al,(%rax)
  600f3d:	00 00                	add    %al,(%rax)
  600f3f:	00 c8                	add    %cl,%al
  600f41:	03 40 00             	add    0x0(%rax),%eax
  600f44:	00 00                	add    %al,(%rax)
  600f46:	00 00                	add    %al,(%rax)
  600f48:	08 00                	or     %al,(%rax)
  600f4a:	00 00                	add    %al,(%rax)
  600f4c:	00 00                	add    %al,(%rax)
  600f4e:	00 00                	add    %al,(%rax)
  600f50:	18 00                	sbb    %al,(%rax)
  600f52:	00 00                	add    %al,(%rax)
  600f54:	00 00                	add    %al,(%rax)
  600f56:	00 00                	add    %al,(%rax)
  600f58:	09 00                	or     %eax,(%rax)
  600f5a:	00 00                	add    %al,(%rax)
  600f5c:	00 00                	add    %al,(%rax)
  600f5e:	00 00                	add    %al,(%rax)
  600f60:	18 00                	sbb    %al,(%rax)
  600f62:	00 00                	add    %al,(%rax)
  600f64:	00 00                	add    %al,(%rax)
  600f66:	00 00                	add    %al,(%rax)
  600f68:	fe                   	(bad)  
  600f69:	ff                   	(bad)  
  600f6a:	ff 6f 00             	ljmp   *0x0(%rdi)
  600f6d:	00 00                	add    %al,(%rax)
  600f6f:	00 98 03 40 00 00    	add    %bl,0x4003(%rax)
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
  600f8f:	00 88 03 40 00 00    	add    %cl,0x4003(%rax)
	...

Disassembly of section .got:

0000000000600ff8 <.got>:
	...

Disassembly of section .got.plt:

0000000000601000 <_GLOBAL_OFFSET_TABLE_>:
  601000:	28 0e                	sub    %cl,(%rsi)
  601002:	60                   	(bad)  
	...
  601017:	00 66 04             	add    %ah,0x4(%rsi)
  60101a:	40 00 00             	add    %al,(%rax)
  60101d:	00 00                	add    %al,(%rax)
  60101f:	00 76 04             	add    %dh,0x4(%rsi)
  601022:	40 00 00             	add    %al,(%rax)
  601025:	00 00                	add    %al,(%rax)
  601027:	00 86 04 40 00 00    	add    %al,0x4004(%rsi)
  60102d:	00 00                	add    %al,(%rax)
	...

Disassembly of section .data:

0000000000601030 <__data_start>:
	...

0000000000601038 <__dso_handle>:
	...

Disassembly of section .bss:

0000000000601040 <__bss_start>:
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	47                   	rex.RXB
   1:	43                   	rex.XB
   2:	43 3a 20             	rex.XB cmp (%r8),%spl
   5:	28 55 62             	sub    %dl,0x62(%rbp)
   8:	75 6e                	jne    78 <_init-0x4003b0>
   a:	74 75                	je     81 <_init-0x4003a7>
   c:	20 35 2e 34 2e 30    	and    %dh,0x302e342e(%rip)        # 302e3440 <_end+0x2fce23f8>
  12:	2d 36 75 62 75       	sub    $0x75627536,%eax
  17:	6e                   	outsb  %ds:(%rsi),(%dx)
  18:	74 75                	je     8f <_init-0x400399>
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
  10:	00 06                	add    %al,(%rsi)
  12:	40 00 00             	add    %al,(%rax)
  15:	00 00                	add    %al,(%rax)
  17:	00 65 00             	add    %ah,0x0(%rbp)
  1a:	00 00                	add    %al,(%rax)
  1c:	00 00                	add    %al,(%rax)
  1e:	00 00                	add    %al,(%rax)
  20:	a0 04 40 00 00 00 00 	movabs 0x5a00000000004004,%al
  27:	00 5a 
	...

Disassembly of section .debug_info:

0000000000000000 <.debug_info>:
   0:	b8 04 00 00 04       	mov    $0x4000004,%eax
   5:	00 00                	add    %al,(%rax)
   7:	00 00                	add    %al,(%rax)
   9:	00 08                	add    %cl,(%rax)
   b:	01 c6                	add    %eax,%esi
   d:	00 00                	add    %al,(%rax)
   f:	00 04 42             	add    %al,(%rdx,%rax,2)
  12:	01 00                	add    %eax,(%rax)
  14:	00 1a                	add    %bl,(%rdx)
  16:	02 00                	add    (%rax),%al
	...
  28:	00 02                	add    %al,(%rdx)
  2a:	29 00                	sub    %eax,(%rax)
  2c:	00 00                	add    %al,(%rax)
  2e:	04 d8                	add    $0xd8,%al
  30:	34 00                	xor    $0x0,%al
  32:	00 00                	add    %al,(%rax)
  34:	03 08                	add    (%rax),%ecx
  36:	07                   	(bad)  
  37:	4c 00 00             	rex.WR add %r8b,(%rax)
  3a:	00 03                	add    %al,(%rbx)
  3c:	01 08                	add    %ecx,(%rax)
  3e:	f3 01 00             	repz add %eax,(%rax)
  41:	00 03                	add    %al,(%rbx)
  43:	02 07                	add    (%rdi),%al
  45:	72 01                	jb     48 <_init-0x4003e0>
  47:	00 00                	add    %al,(%rax)
  49:	03 04 07             	add    (%rdi,%rax,1),%eax
  4c:	51                   	push   %rcx
  4d:	00 00                	add    %al,(%rax)
  4f:	00 03                	add    %al,(%rbx)
  51:	01 06                	add    %eax,(%rsi)
  53:	f5                   	cmc    
  54:	01 00                	add    %eax,(%rax)
  56:	00 03                	add    %al,(%rbx)
  58:	02 05 01 02 00 00    	add    0x201(%rip),%al        # 25f <_init-0x4001c9>
  5e:	04 04                	add    $0x4,%al
  60:	05 69 6e 74 00       	add    $0x746e69,%eax
  65:	03 08                	add    (%rax),%ecx
  67:	05 63 00 00 00       	add    $0x63,%eax
  6c:	02 07                	add    (%rdi),%al
  6e:	00 00                	add    %al,(%rax)
  70:	00 05 83 65 00 00    	add    %al,0x6583(%rip)        # 65f9 <_init-0x3f9e2f>
  76:	00 02                	add    %al,(%rdx)
  78:	25 02 00 00 05       	and    $0x5000002,%eax
  7d:	84 65 00             	test   %ah,0x0(%rbp)
  80:	00 00                	add    %al,(%rax)
  82:	03 08                	add    (%rax),%ecx
  84:	07                   	(bad)  
  85:	ae                   	scas   %es:(%rdi),%al
  86:	01 00                	add    %eax,(%rax)
  88:	00 05 08 06 08 91    	add    %al,-0x6ef7f9f8(%rip)        # ffffffff91080696 <_end+0xffffffff90a7f64e>
  8e:	00 00                	add    %al,(%rax)
  90:	00 03                	add    %al,(%rbx)
  92:	01 06                	add    %eax,(%rsi)
  94:	fc                   	cld    
  95:	01 00                	add    %eax,(%rax)
  97:	00 07                	add    %al,(%rdi)
  99:	d0 01                	rolb   (%rcx)
  9b:	00 00                	add    %al,(%rax)
  9d:	d8 06                	fadds  (%rsi)
  9f:	f1                   	icebp  
  a0:	15 02 00 00 08       	adc    $0x8000002,%eax
  a5:	8e 00                	mov    (%rax),%es
  a7:	00 00                	add    %al,(%rax)
  a9:	06                   	(bad)  
  aa:	f2 5e                	repnz pop %rsi
  ac:	00 00                	add    %al,(%rax)
  ae:	00 00                	add    %al,(%rax)
  b0:	08 0f                	or     %cl,(%rdi)
  b2:	00 00                	add    %al,(%rax)
  b4:	00 06                	add    %al,(%rsi)
  b6:	f7                   	(bad)  
  b7:	8b 00                	mov    (%rax),%eax
  b9:	00 00                	add    %al,(%rax)
  bb:	08 08                	or     %cl,(%rax)
  bd:	7a 00                	jp     bf <_init-0x400369>
  bf:	00 00                	add    %al,(%rax)
  c1:	06                   	(bad)  
  c2:	f8                   	clc    
  c3:	8b 00                	mov    (%rax),%eax
  c5:	00 00                	add    %al,(%rax)
  c7:	10 08                	adc    %cl,(%rax)
  c9:	2f                   	(bad)  
  ca:	02 00                	add    (%rax),%al
  cc:	00 06                	add    %al,(%rsi)
  ce:	f9                   	stc    
  cf:	8b 00                	mov    (%rax),%eax
  d1:	00 00                	add    %al,(%rax)
  d3:	18 08                	sbb    %cl,(%rax)
  d5:	9b                   	fwait
  d6:	02 00                	add    (%rax),%al
  d8:	00 06                	add    %al,(%rsi)
  da:	fa                   	cli    
  db:	8b 00                	mov    (%rax),%eax
  dd:	00 00                	add    %al,(%rax)
  df:	20 08                	and    %cl,(%rax)
  e1:	5e                   	pop    %rsi
  e2:	01 00                	add    %eax,(%rax)
  e4:	00 06                	add    %al,(%rsi)
  e6:	fb                   	sti    
  e7:	8b 00                	mov    (%rax),%eax
  e9:	00 00                	add    %al,(%rax)
  eb:	28 08                	sub    %cl,(%rax)
  ed:	b7 01                	mov    $0x1,%bh
  ef:	00 00                	add    %al,(%rax)
  f1:	06                   	(bad)  
  f2:	fc                   	cld    
  f3:	8b 00                	mov    (%rax),%eax
  f5:	00 00                	add    %al,(%rax)
  f7:	30 08                	xor    %cl,(%rax)
  f9:	3a 00                	cmp    (%rax),%al
  fb:	00 00                	add    %al,(%rax)
  fd:	06                   	(bad)  
  fe:	fd                   	std    
  ff:	8b 00                	mov    (%rax),%eax
 101:	00 00                	add    %al,(%rax)
 103:	38 08                	cmp    %cl,(%rax)
 105:	95                   	xchg   %eax,%ebp
 106:	00 00                	add    %al,(%rax)
 108:	00 06                	add    %al,(%rsi)
 10a:	fe 8b 00 00 00 40    	decb   0x40000000(%rbx)
 110:	09 85 01 00 00 06    	or     %eax,0x6000001(%rbp)
 116:	00 01                	add    %al,(%rcx)
 118:	8b 00                	mov    (%rax),%eax
 11a:	00 00                	add    %al,(%rax)
 11c:	48 09 81 02 00 00 06 	or     %rax,0x6000002(%rcx)
 123:	01 01                	add    %eax,(%rcx)
 125:	8b 00                	mov    (%rax),%eax
 127:	00 00                	add    %al,(%rax)
 129:	50                   	push   %rax
 12a:	09 3d 02 00 00 06    	or     %edi,0x6000002(%rip)        # 6000132 <_end+0x59ff0ea>
 130:	02 01                	add    (%rcx),%al
 132:	8b 00                	mov    (%rax),%eax
 134:	00 00                	add    %al,(%rax)
 136:	58                   	pop    %rax
 137:	09 e5                	or     %esp,%ebp
 139:	01 00                	add    %eax,(%rax)
 13b:	00 06                	add    %al,(%rsi)
 13d:	04 01                	add    $0x1,%al
 13f:	4d 02 00             	rex.WRB add (%r8),%r8b
 142:	00 60 09             	add    %ah,0x9(%rax)
 145:	1c 00                	sbb    $0x0,%al
 147:	00 00                	add    %al,(%rax)
 149:	06                   	(bad)  
 14a:	06                   	(bad)  
 14b:	01 53 02             	add    %edx,0x2(%rbx)
 14e:	00 00                	add    %al,(%rax)
 150:	68 09 72 00 00       	pushq  $0x7209
 155:	00 06                	add    %al,(%rsi)
 157:	08 01                	or     %al,(%rcx)
 159:	5e                   	pop    %rsi
 15a:	00 00                	add    %al,(%rax)
 15c:	00 70 09             	add    %dh,0x9(%rax)
 15f:	99                   	cltd   
 160:	01 00                	add    %eax,(%rax)
 162:	00 06                	add    %al,(%rsi)
 164:	0c 01                	or     $0x1,%al
 166:	5e                   	pop    %rsi
 167:	00 00                	add    %al,(%rax)
 169:	00 74 09 ba          	add    %dh,-0x46(%rcx,%rcx,1)
 16d:	00 00                	add    %al,(%rax)
 16f:	00 06                	add    %al,(%rsi)
 171:	0e                   	(bad)  
 172:	01 6c 00 00          	add    %ebp,0x0(%rax,%rax,1)
 176:	00 78 09             	add    %bh,0x9(%rax)
 179:	a1 00 00 00 06 12 01 	movabs 0x42011206000000,%eax
 180:	42 00 
 182:	00 00                	add    %al,(%rax)
 184:	80 09 0b             	orb    $0xb,(%rcx)
 187:	02 00                	add    (%rax),%al
 189:	00 06                	add    %al,(%rsi)
 18b:	13 01                	adc    (%rcx),%eax
 18d:	50                   	push   %rax
 18e:	00 00                	add    %al,(%rax)
 190:	00 82 09 30 00 00    	add    %al,0x3009(%rdx)
 196:	00 06                	add    %al,(%rsi)
 198:	14 01                	adc    $0x1,%al
 19a:	59                   	pop    %rcx
 19b:	02 00                	add    (%rax),%al
 19d:	00 83 09 93 01 00    	add    %al,0x19309(%rbx)
 1a3:	00 06                	add    %al,(%rsi)
 1a5:	18 01                	sbb    %al,(%rcx)
 1a7:	69 02 00 00 88 09    	imul   $0x9880000,(%rdx),%eax
 1ad:	be 00 00 00 06       	mov    $0x6000000,%esi
 1b2:	21 01                	and    %eax,(%rcx)
 1b4:	77 00                	ja     1b6 <_init-0x400272>
 1b6:	00 00                	add    %al,(%rax)
 1b8:	90                   	nop
 1b9:	09 50 02             	or     %edx,0x2(%rax)
 1bc:	00 00                	add    %al,(%rax)
 1be:	06                   	(bad)  
 1bf:	29 01                	sub    %eax,(%rcx)
 1c1:	89 00                	mov    %eax,(%rax)
 1c3:	00 00                	add    %al,(%rax)
 1c5:	98                   	cwtl   
 1c6:	09 57 02             	or     %edx,0x2(%rdi)
 1c9:	00 00                	add    %al,(%rax)
 1cb:	06                   	(bad)  
 1cc:	2a 01                	sub    (%rcx),%al
 1ce:	89 00                	mov    %eax,(%rax)
 1d0:	00 00                	add    %al,(%rax)
 1d2:	a0 09 5e 02 00 00 06 	movabs 0x12b060000025e09,%al
 1d9:	2b 01 
 1db:	89 00                	mov    %eax,(%rax)
 1dd:	00 00                	add    %al,(%rax)
 1df:	a8 09                	test   $0x9,%al
 1e1:	65 02 00             	add    %gs:(%rax),%al
 1e4:	00 06                	add    %al,(%rsi)
 1e6:	2c 01                	sub    $0x1,%al
 1e8:	89 00                	mov    %eax,(%rax)
 1ea:	00 00                	add    %al,(%rax)
 1ec:	b0 09                	mov    $0x9,%al
 1ee:	6c                   	insb   (%dx),%es:(%rdi)
 1ef:	02 00                	add    (%rax),%al
 1f1:	00 06                	add    %al,(%rsi)
 1f3:	2e 01 29             	add    %ebp,%cs:(%rcx)
 1f6:	00 00                	add    %al,(%rax)
 1f8:	00 b8 09 a1 01 00    	add    %bh,0x1a109(%rax)
 1fe:	00 06                	add    %al,(%rsi)
 200:	2f                   	(bad)  
 201:	01 5e 00             	add    %ebx,0x0(%rsi)
 204:	00 00                	add    %al,(%rax)
 206:	c0 09 73             	rorb   $0x73,(%rcx)
 209:	02 00                	add    (%rax),%al
 20b:	00 06                	add    %al,(%rsi)
 20d:	31 01                	xor    %eax,(%rcx)
 20f:	6f                   	outsl  %ds:(%rsi),(%dx)
 210:	02 00                	add    (%rax),%al
 212:	00 c4                	add    %al,%ah
 214:	00 0a                	add    %cl,(%rdx)
 216:	c5 01 00             	(bad)  
 219:	00 06                	add    %al,(%rsi)
 21b:	96                   	xchg   %eax,%esi
 21c:	07                   	(bad)  
 21d:	31 01                	xor    %eax,(%rcx)
 21f:	00 00                	add    %al,(%rax)
 221:	18 06                	sbb    %al,(%rsi)
 223:	9c                   	pushfq 
 224:	4d 02 00             	rex.WRB add (%r8),%r8b
 227:	00 08                	add    %cl,(%rax)
 229:	1f                   	(bad)  
 22a:	02 00                	add    (%rax),%al
 22c:	00 06                	add    %al,(%rsi)
 22e:	9d                   	popfq  
 22f:	4d 02 00             	rex.WRB add (%r8),%r8b
 232:	00 00                	add    %al,(%rax)
 234:	08 6c 01 00          	or     %ch,0x0(%rcx,%rax,1)
 238:	00 06                	add    %al,(%rsi)
 23a:	9e                   	sahf   
 23b:	53                   	push   %rbx
 23c:	02 00                	add    (%rax),%al
 23e:	00 08                	add    %cl,(%rax)
 240:	08 e0                	or     %ah,%al
 242:	01 00                	add    %eax,(%rax)
 244:	00 06                	add    %al,(%rsi)
 246:	a2 5e 00 00 00 10 00 	movabs %al,0x80600100000005e
 24d:	06 08 
 24f:	1c 02                	sbb    $0x2,%al
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
 26a:	08 15 02 00 00 0b    	or     %dl,0xb000002(%rip)        # b000272 <_end+0xa9ff22a>
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
 28b:	08 05 5e 00 00 00    	or     %al,0x5e(%rip)        # 2ef <_init-0x400139>
 291:	03 08                	add    (%rax),%ecx
 293:	07                   	(bad)  
 294:	47 00 00             	rex.RXB add %r8b,(%r8)
 297:	00 0e                	add    %cl,(%rsi)
 299:	00 00                	add    %al,(%rax)
 29b:	00 00                	add    %al,(%rax)
 29d:	03 66 5e             	add    0x5e(%rsi),%esp
 2a0:	00 00                	add    %al,(%rax)
 2a2:	00 03                	add    %al,(%rbx)
 2a4:	b5 02                	mov    $0x2,%ch
 2a6:	00 00                	add    %al,(%rax)
 2a8:	0f 4a 02             	cmovp  (%rdx),%eax
 2ab:	00 00                	add    %al,(%rax)
 2ad:	03 66 b5             	add    -0x4b(%rsi),%esp
 2b0:	02 00                	add    (%rax),%al
 2b2:	00 10                	add    %dl,(%rax)
 2b4:	00 11                	add    %dl,(%rcx)
 2b6:	7f 02                	jg     2ba <_init-0x40016e>
 2b8:	00 00                	add    %al,(%rax)
 2ba:	12 ee                	adc    %dh,%ch
 2bc:	01 00                	add    %eax,(%rax)
 2be:	00 02                	add    %al,(%rdx)
 2c0:	16                   	(bad)  
 2c1:	01 5e 00             	add    %ebx,0x0(%rsi)
 2c4:	00 00                	add    %al,(%rax)
 2c6:	03 d8                	add    %eax,%ebx
 2c8:	02 00                	add    (%rax),%al
 2ca:	00 13                	add    %dl,(%rbx)
 2cc:	d9 01                	flds   (%rcx)
 2ce:	00 00                	add    %al,(%rax)
 2d0:	02 16                	add    (%rsi),%dl
 2d2:	01 7f 02             	add    %edi,0x2(%rdi)
 2d5:	00 00                	add    %al,(%rax)
 2d7:	00 14 66             	add    %dl,(%rsi,%riz,2)
 2da:	00 01                	add    %al,(%rcx)
 2dc:	04 23                	add    $0x23,%al
 2de:	00 00                	add    %al,(%rax)
 2e0:	00 5e 00             	add    %bl,0x0(%rsi)
 2e3:	00 00                	add    %al,(%rax)
 2e5:	01 f4                	add    %esi,%esp
 2e7:	02 00                	add    (%rax),%al
 2e9:	00 15 78 00 01 04    	add    %dl,0x4010078(%rip)        # 4010367 <_end+0x3a0f31f>
 2ef:	5e                   	pop    %rsi
 2f0:	00 00                	add    %al,(%rax)
 2f2:	00 00                	add    %al,(%rax)
 2f4:	16                   	(bad)  
 2f5:	d8 02                	fadds  (%rdx)
 2f7:	00 00                	add    %al,(%rax)
 2f9:	23 00                	and    (%rax),%eax
 2fb:	00 00                	add    %al,(%rax)
 2fd:	00 06                	add    %al,(%rsi)
 2ff:	40 00 00             	add    %al,(%rax)
 302:	00 00                	add    %al,(%rax)
 304:	00 15 00 00 00 00    	add    %dl,0x0(%rip)        # 30a <_init-0x40011e>
 30a:	00 00                	add    %al,(%rax)
 30c:	00 01                	add    %al,(%rcx)
 30e:	9c                   	pushfq 
 30f:	1d 03 00 00 17       	sbb    $0x17000003,%eax
 314:	ea                   	(bad)  
 315:	02 00                	add    (%rax),%al
 317:	00 00                	add    %al,(%rax)
 319:	00 00                	add    %al,(%rax)
 31b:	00 00                	add    %al,(%rax)
 31d:	18 67 00             	sbb    %ah,0x0(%rdi)
 320:	01 11                	add    %edx,(%rcx)
 322:	6c                   	insb   (%dx),%es:(%rdi)
 323:	00 00                	add    %al,(%rax)
 325:	00 5e 00             	add    %bl,0x0(%rsi)
 328:	00 00                	add    %al,(%rax)
 32a:	20 06                	and    %al,(%rsi)
 32c:	40 00 00             	add    %al,(%rax)
 32f:	00 00                	add    %al,(%rax)
 331:	00 45 00             	add    %al,0x0(%rbp)
 334:	00 00                	add    %al,(%rax)
 336:	00 00                	add    %al,(%rax)
 338:	00 00                	add    %al,(%rax)
 33a:	01 9c 59 03 00 00 19 	add    %ebx,0x19000003(%rcx,%rbx,2)
 341:	78 00                	js     343 <_init-0x4000e5>
 343:	01 11                	add    %edx,(%rcx)
 345:	5e                   	pop    %rsi
 346:	00 00                	add    %al,(%rax)
 348:	00 01                	add    %al,(%rcx)
 34a:	55                   	push   %rbp
 34b:	1a 79 00             	sbb    0x0(%rcx),%bh
 34e:	01 12                	add    %edx,(%rdx)
 350:	5e                   	pop    %rsi
 351:	00 00                	add    %al,(%rax)
 353:	00 39                	add    %bh,(%rcx)
 355:	00 00                	add    %al,(%rax)
 357:	00 00                	add    %al,(%rax)
 359:	1b 96 02 00 00 01    	sbb    0x1000002(%rsi),%edx
 35f:	39 5e 00             	cmp    %ebx,0x0(%rsi)
 362:	00 00                	add    %al,(%rax)
 364:	a0 04 40 00 00 00 00 	movabs 0x5a00000000004004,%al
 36b:	00 5a 
 36d:	00 00                	add    %al,(%rax)
 36f:	00 00                	add    %al,(%rax)
 371:	00 00                	add    %al,(%rax)
 373:	00 01                	add    %al,(%rcx)
 375:	9c                   	pushfq 
 376:	89 04 00             	mov    %eax,(%rax,%rax,1)
 379:	00 1c 91             	add    %bl,(%rcx,%rdx,4)
 37c:	02 00                	add    (%rax),%al
 37e:	00 01                	add    %al,(%rcx)
 380:	39 5e 00             	cmp    %ebx,0x0(%rsi)
 383:	00 00                	add    %al,(%rax)
 385:	71 00                	jno    387 <_init-0x4000a1>
 387:	00 00                	add    %al,(%rax)
 389:	1c 7c                	sbb    $0x7c,%al
 38b:	02 00                	add    (%rax),%al
 38d:	00 01                	add    %al,(%rcx)
 38f:	39 89 04 00 00 aa    	cmp    %ecx,-0x55fffffc(%rcx)
 395:	00 00                	add    %al,(%rax)
 397:	00 1d 78 00 01 3a    	add    %bl,0x3a010078(%rip)        # 3a010415 <_end+0x39a0f3cd>
 39d:	5e                   	pop    %rsi
 39e:	00 00                	add    %al,(%rax)
 3a0:	00 1e                	add    %bl,(%rsi)
 3a2:	ba 02 00 00 a1       	mov    $0xa1000002,%edx
 3a7:	04 40                	add    $0x40,%al
 3a9:	00 00                	add    %al,(%rax)
 3ab:	00 00                	add    %al,(%rax)
 3ad:	00 26                	add    %ah,(%rsi)
 3af:	00 00                	add    %al,(%rax)
 3b1:	00 00                	add    %al,(%rax)
 3b3:	00 00                	add    %al,(%rax)
 3b5:	00 01                	add    %al,(%rcx)
 3b7:	3a de                	cmp    %dh,%bl
 3b9:	03 00                	add    (%rax),%eax
 3bb:	00 17                	add    %dl,(%rdi)
 3bd:	cb                   	lret   
 3be:	02 00                	add    (%rax),%al
 3c0:	00 e3                	add    %ah,%bl
 3c2:	00 00                	add    %al,(%rax)
 3c4:	00 1f                	add    %bl,(%rdi)
 3c6:	b1 04                	mov    $0x4,%cl
 3c8:	40 00 00             	add    %al,(%rax)
 3cb:	00 00                	add    %al,(%rax)
 3cd:	00 a5 04 00 00 20    	add    %ah,0x20000004(%rbp)
 3d3:	01 54 01 30          	add    %edx,0x30(%rcx,%rax,1)
 3d7:	20 01                	and    %al,(%rcx)
 3d9:	51                   	push   %rcx
 3da:	01 3a                	add    %edi,(%rdx)
 3dc:	00 00                	add    %al,(%rax)
 3de:	1e                   	(bad)  
 3df:	98                   	cwtl   
 3e0:	02 00                	add    (%rax),%al
 3e2:	00 c7                	add    %al,%bh
 3e4:	04 40                	add    $0x40,%al
 3e6:	00 00                	add    %al,(%rax)
 3e8:	00 00                	add    %al,(%rax)
 3ea:	00 13                	add    %dl,(%rbx)
 3ec:	00 00                	add    %al,(%rax)
 3ee:	00 00                	add    %al,(%rax)
 3f0:	00 00                	add    %al,(%rax)
 3f2:	00 01                	add    %al,(%rcx)
 3f4:	3b 29                	cmp    (%rcx),%ebp
 3f6:	04 00                	add    $0x0,%al
 3f8:	00 17                	add    %dl,(%rdi)
 3fa:	a8 02                	test   $0x2,%al
 3fc:	00 00                	add    %al,(%rax)
 3fe:	07                   	(bad)  
 3ff:	01 00                	add    %eax,(%rax)
 401:	00 1f                	add    %bl,(%rdi)
 403:	da 04 40             	fiaddl (%rax,%rax,2)
 406:	00 00                	add    %al,(%rax)
 408:	00 00                	add    %al,(%rax)
 40a:	00 b0 04 00 00 20    	add    %dh,0x20000004(%rax)
 410:	01 55 01             	add    %edx,0x1(%rbp)
 413:	31 20                	xor    %esp,(%rax)
 415:	01 54 09 03          	add    %edx,0x3(%rcx,%rcx,1)
 419:	f4                   	hlt    
 41a:	06                   	(bad)  
 41b:	40 00 00             	add    %al,(%rax)
 41e:	00 00                	add    %al,(%rax)
 420:	00 20                	add    %ah,(%rax)
 422:	01 51 02             	add    %edx,0x2(%rcx)
 425:	73 00                	jae    427 <_init-0x400001>
 427:	00 00                	add    %al,(%rax)
 429:	1e                   	(bad)  
 42a:	98                   	cwtl   
 42b:	02 00                	add    (%rax),%al
 42d:	00 e1                	add    %ah,%cl
 42f:	04 40                	add    $0x40,%al
 431:	00 00                	add    %al,(%rax)
 433:	00 00                	add    %al,(%rax)
 435:	00 15 00 00 00 00    	add    %dl,0x0(%rip)        # 43b <_init-0x3fffed>
 43b:	00 00                	add    %al,(%rax)
 43d:	00 01                	add    %al,(%rcx)
 43f:	3c 74                	cmp    $0x74,%al
 441:	04 00                	add    $0x0,%al
 443:	00 17                	add    %dl,(%rdi)
 445:	a8 02                	test   $0x2,%al
 447:	00 00                	add    %al,(%rax)
 449:	33 01                	xor    (%rcx),%eax
 44b:	00 00                	add    %al,(%rax)
 44d:	1f                   	(bad)  
 44e:	f6 04 40 00          	testb  $0x0,(%rax,%rax,2)
 452:	00 00                	add    %al,(%rax)
 454:	00 00                	add    %al,(%rax)
 456:	b0 04                	mov    $0x4,%al
 458:	00 00                	add    %al,(%rax)
 45a:	20 01                	and    %al,(%rcx)
 45c:	55                   	push   %rbp
 45d:	01 31                	add    %esi,(%rcx)
 45f:	20 01                	and    %al,(%rcx)
 461:	54                   	push   %rsp
 462:	09 03                	or     %eax,(%rbx)
 464:	00 07                	add    %al,(%rdi)
 466:	40 00 00             	add    %al,(%rax)
 469:	00 00                	add    %al,(%rax)
 46b:	00 20                	add    %ah,(%rax)
 46d:	01 51 02             	add    %edx,0x2(%rcx)
 470:	73 00                	jae    472 <_init-0x3fffb6>
 472:	00 00                	add    %al,(%rax)
 474:	1f                   	(bad)  
 475:	e1 04                	loope  47b <_init-0x3fffad>
 477:	40 00 00             	add    %al,(%rax)
 47a:	00 00                	add    %al,(%rax)
 47c:	00 1d 03 00 00 20    	add    %bl,0x20000003(%rip)        # 20000485 <_end+0x1f9ff43d>
 482:	01 55 02             	add    %edx,0x2(%rbp)
 485:	73 00                	jae    487 <_init-0x3fffa1>
 487:	00 00                	add    %al,(%rax)
 489:	06                   	(bad)  
 48a:	08 8b 00 00 00 21    	or     %cl,0x21000000(%rbx)
 490:	3c 01                	cmp    $0x1,%al
 492:	00 00                	add    %al,(%rax)
 494:	07                   	(bad)  
 495:	a8 53                	test   $0x53,%al
 497:	02 00                	add    (%rax),%al
 499:	00 21                	add    %ah,(%rcx)
 49b:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
 49c:	01 00                	add    %eax,(%rax)
 49e:	00 07                	add    %al,(%rdi)
 4a0:	a9 53 02 00 00       	test   $0x253,%eax
 4a5:	22 87 00 00 00 87    	and    -0x79000000(%rdi),%al
 4ab:	00 00                	add    %al,(%rax)
 4ad:	00 02                	add    %al,(%rdx)
 4af:	b7 22                	mov    $0x22,%bh
 4b1:	ad                   	lods   %ds:(%rsi),%eax
 4b2:	00 00                	add    %al,(%rax)
 4b4:	00 ad 00 00 00 03    	add    %ch,0x3000000(%rbp)
 4ba:	57                   	push   %rdi
	...

Disassembly of section .debug_abbrev:

0000000000000000 <.debug_abbrev>:
   0:	01 11                	add    %edx,(%rcx)
   2:	01 25 0e 13 0b 03    	add    %esp,0x30b130e(%rip)        # 30b1316 <_end+0x2ab02ce>
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
  35:	00 05 0f 00 0b 0b    	add    %al,0xb0b000f(%rip)        # b0b004a <_end+0xaaaf002>
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
  55:	08 0d 00 03 0e 3a    	or     %cl,0x3a0e0300(%rip)        # 3a0e035b <_end+0x39adf313>
  5b:	0b 3b                	or     (%rbx),%edi
  5d:	0b 49 13             	or     0x13(%rcx),%ecx
  60:	38 0b                	cmp    %cl,(%rbx)
  62:	00 00                	add    %al,(%rax)
  64:	09 0d 00 03 0e 3a    	or     %ecx,0x3a0e0300(%rip)        # 3a0e036a <_end+0x39adf322>
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
  8f:	00 0d 26 00 49 13    	add    %cl,0x13490026(%rip)        # 134900bb <_end+0x12e8f073>
  95:	00 00                	add    %al,(%rax)
  97:	0e                   	(bad)  
  98:	2e 01 3f             	add    %edi,%cs:(%rdi)
  9b:	19 03                	sbb    %eax,(%rbx)
  9d:	0e                   	(bad)  
  9e:	3a 0b                	cmp    (%rbx),%cl
  a0:	3b 0b                	cmp    (%rbx),%ecx
  a2:	49 13 20             	adc    (%r8),%rsp
  a5:	0b 34 19             	or     (%rcx,%rbx,1),%esi
  a8:	01 13                	add    %edx,(%rbx)
  aa:	00 00                	add    %al,(%rax)
  ac:	0f 05                	syscall 
  ae:	00 03                	add    %al,(%rbx)
  b0:	0e                   	(bad)  
  b1:	3a 0b                	cmp    (%rbx),%cl
  b3:	3b 0b                	cmp    (%rbx),%ecx
  b5:	49 13 00             	adc    (%r8),%rax
  b8:	00 10                	add    %dl,(%rax)
  ba:	18 00                	sbb    %al,(%rax)
  bc:	00 00                	add    %al,(%rax)
  be:	11 37                	adc    %esi,(%rdi)
  c0:	00 49 13             	add    %cl,0x13(%rcx)
  c3:	00 00                	add    %al,(%rax)
  c5:	12 2e                	adc    (%rsi),%ch
  c7:	01 3f                	add    %edi,(%rdi)
  c9:	19 03                	sbb    %eax,(%rbx)
  cb:	0e                   	(bad)  
  cc:	3a 0b                	cmp    (%rbx),%cl
  ce:	3b 05 49 13 20 0b    	cmp    0xb201349(%rip),%eax        # b20141d <_end+0xac003d5>
  d4:	01 13                	add    %edx,(%rbx)
  d6:	00 00                	add    %al,(%rax)
  d8:	13 05 00 03 0e 3a    	adc    0x3a0e0300(%rip),%eax        # 3a0e03de <_end+0x39adf396>
  de:	0b 3b                	or     (%rbx),%edi
  e0:	05 49 13 00 00       	add    $0x1349,%eax
  e5:	14 2e                	adc    $0x2e,%al
  e7:	01 3f                	add    %edi,(%rdi)
  e9:	19 03                	sbb    %eax,(%rbx)
  eb:	08 3a                	or     %bh,(%rdx)
  ed:	0b 3b                	or     (%rbx),%edi
  ef:	0b 6e 0e             	or     0xe(%rsi),%ebp
  f2:	49 13 20             	adc    (%r8),%rsp
  f5:	0b 01                	or     (%rcx),%eax
  f7:	13 00                	adc    (%rax),%eax
  f9:	00 15 05 00 03 08    	add    %dl,0x8030005(%rip)        # 8030104 <_end+0x7a2f0bc>
  ff:	3a 0b                	cmp    (%rbx),%cl
 101:	3b 0b                	cmp    (%rbx),%ecx
 103:	49 13 00             	adc    (%r8),%rax
 106:	00 16                	add    %dl,(%rsi)
 108:	2e 01 31             	add    %esi,%cs:(%rcx)
 10b:	13 6e 0e             	adc    0xe(%rsi),%ebp
 10e:	11 01                	adc    %eax,(%rcx)
 110:	12 07                	adc    (%rdi),%al
 112:	40 18 97 42 19 01 13 	sbb    %dl,0x13011942(%rdi)
 119:	00 00                	add    %al,(%rax)
 11b:	17                   	(bad)  
 11c:	05 00 31 13 02       	add    $0x2133100,%eax
 121:	17                   	(bad)  
 122:	00 00                	add    %al,(%rax)
 124:	18 2e                	sbb    %ch,(%rsi)
 126:	01 3f                	add    %edi,(%rdi)
 128:	19 03                	sbb    %eax,(%rbx)
 12a:	08 3a                	or     %bh,(%rdx)
 12c:	0b 3b                	or     (%rbx),%edi
 12e:	0b 6e 0e             	or     0xe(%rsi),%ebp
 131:	49 13 11             	adc    (%r9),%rdx
 134:	01 12                	add    %edx,(%rdx)
 136:	07                   	(bad)  
 137:	40 18 97 42 19 01 13 	sbb    %dl,0x13011942(%rdi)
 13e:	00 00                	add    %al,(%rax)
 140:	19 05 00 03 08 3a    	sbb    %eax,0x3a080300(%rip)        # 3a080446 <_end+0x39a7f3fe>
 146:	0b 3b                	or     (%rbx),%edi
 148:	0b 49 13             	or     0x13(%rcx),%ecx
 14b:	02 18                	add    (%rax),%bl
 14d:	00 00                	add    %al,(%rax)
 14f:	1a 34 00             	sbb    (%rax,%rax,1),%dh
 152:	03 08                	add    (%rax),%ecx
 154:	3a 0b                	cmp    (%rbx),%cl
 156:	3b 0b                	cmp    (%rbx),%ecx
 158:	49 13 02             	adc    (%r10),%rax
 15b:	17                   	(bad)  
 15c:	00 00                	add    %al,(%rax)
 15e:	1b 2e                	sbb    (%rsi),%ebp
 160:	01 3f                	add    %edi,(%rdi)
 162:	19 03                	sbb    %eax,(%rbx)
 164:	0e                   	(bad)  
 165:	3a 0b                	cmp    (%rbx),%cl
 167:	3b 0b                	cmp    (%rbx),%ecx
 169:	49 13 11             	adc    (%r9),%rdx
 16c:	01 12                	add    %edx,(%rdx)
 16e:	07                   	(bad)  
 16f:	40 18 97 42 19 01 13 	sbb    %dl,0x13011942(%rdi)
 176:	00 00                	add    %al,(%rax)
 178:	1c 05                	sbb    $0x5,%al
 17a:	00 03                	add    %al,(%rbx)
 17c:	0e                   	(bad)  
 17d:	3a 0b                	cmp    (%rbx),%cl
 17f:	3b 0b                	cmp    (%rbx),%ecx
 181:	49 13 02             	adc    (%r10),%rax
 184:	17                   	(bad)  
 185:	00 00                	add    %al,(%rax)
 187:	1d 34 00 03 08       	sbb    $0x8030034,%eax
 18c:	3a 0b                	cmp    (%rbx),%cl
 18e:	3b 0b                	cmp    (%rbx),%ecx
 190:	49 13 00             	adc    (%r8),%rax
 193:	00 1e                	add    %bl,(%rsi)
 195:	1d 01 31 13 11       	sbb    $0x11133101,%eax
 19a:	01 12                	add    %edx,(%rdx)
 19c:	07                   	(bad)  
 19d:	58                   	pop    %rax
 19e:	0b 59 0b             	or     0xb(%rcx),%ebx
 1a1:	01 13                	add    %edx,(%rbx)
 1a3:	00 00                	add    %al,(%rax)
 1a5:	1f                   	(bad)  
 1a6:	89 82 01 01 11 01    	mov    %eax,0x1110101(%rdx)
 1ac:	31 13                	xor    %edx,(%rbx)
 1ae:	00 00                	add    %al,(%rax)
 1b0:	20 8a 82 01 00 02    	and    %cl,0x2000182(%rdx)
 1b6:	18 91 42 18 00 00    	sbb    %dl,0x1842(%rcx)
 1bc:	21 34 00             	and    %esi,(%rax,%rax,1)
 1bf:	03 0e                	add    (%rsi),%ecx
 1c1:	3a 0b                	cmp    (%rbx),%cl
 1c3:	3b 0b                	cmp    (%rbx),%ecx
 1c5:	49 13 3f             	adc    (%r15),%rdi
 1c8:	19 3c 19             	sbb    %edi,(%rcx,%rbx,1)
 1cb:	00 00                	add    %al,(%rax)
 1cd:	22 2e                	and    (%rsi),%ch
 1cf:	00 3f                	add    %bh,(%rdi)
 1d1:	19 3c 19             	sbb    %edi,(%rcx,%rbx,1)
 1d4:	6e                   	outsb  %ds:(%rsi),(%dx)
 1d5:	0e                   	(bad)  
 1d6:	03 0e                	add    (%rsi),%ecx
 1d8:	3a 0b                	cmp    (%rbx),%cl
 1da:	3b 0b                	cmp    (%rbx),%ecx
 1dc:	00 00                	add    %al,(%rax)
	...

Disassembly of section .debug_line:

0000000000000000 <.debug_line>:
   0:	23 01                	and    (%rcx),%eax
   2:	00 00                	add    %al,(%rax)
   4:	02 00                	add    (%rax),%al
   6:	cf                   	iret   
   7:	00 00                	add    %al,(%rax)
   9:	00 01                	add    %al,(%rcx)
   b:	01 fb                	add    %edi,%ebx
   d:	0e                   	(bad)  
   e:	0d 00 01 01 01       	or     $0x1010100,%eax
  13:	01 00                	add    %eax,(%rax)
  15:	00 00                	add    %al,(%rax)
  17:	01 00                	add    %eax,(%rax)
  19:	00 01                	add    %al,(%rcx)
  1b:	73 72                	jae    8f <_init-0x400399>
  1d:	63 2f                	movslq (%rdi),%ebp
  1f:	6a 75                	pushq  $0x75
  21:	6d                   	insl   (%dx),%es:(%rdi)
  22:	70 74                	jo     98 <_init-0x400390>
  24:	61                   	(bad)  
  25:	62                   	(bad)  
  26:	6c                   	insb   (%dx),%es:(%rdi)
  27:	65 00 2f             	add    %ch,%gs:(%rdi)
  2a:	75 73                	jne    9f <_init-0x400389>
  2c:	72 2f                	jb     5d <_init-0x4003cb>
  2e:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%rsi),%ebp
  35:	00 2f                	add    %ch,(%rdi)
  37:	75 73                	jne    ac <_init-0x40037c>
  39:	72 2f                	jb     6a <_init-0x4003be>
  3b:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%rsi),%ebp
  42:	2f                   	(bad)  
  43:	78 38                	js     7d <_init-0x4003ab>
  45:	36 5f                	ss pop %rdi
  47:	36 34 2d             	ss xor $0x2d,%al
  4a:	6c                   	insb   (%dx),%es:(%rdi)
  4b:	69 6e 75 78 2d 67 6e 	imul   $0x6e672d78,0x75(%rsi),%ebp
  52:	75 2f                	jne    83 <_init-0x4003a5>
  54:	62                   	(bad)  
  55:	69 74 73 00 2f 75 73 	imul   $0x7273752f,0x0(%rbx,%rsi,2),%esi
  5c:	72 
  5d:	2f                   	(bad)  
  5e:	6c                   	insb   (%dx),%es:(%rdi)
  5f:	69 62 2f 67 63 63 2f 	imul   $0x2f636367,0x2f(%rdx),%esp
  66:	78 38                	js     a0 <_init-0x400388>
  68:	36 5f                	ss pop %rdi
  6a:	36 34 2d             	ss xor $0x2d,%al
  6d:	6c                   	insb   (%dx),%es:(%rdi)
  6e:	69 6e 75 78 2d 67 6e 	imul   $0x6e672d78,0x75(%rsi),%ebp
  75:	75 2f                	jne    a6 <_init-0x400382>
  77:	35 2f 69 6e 63       	xor    $0x636e692f,%eax
  7c:	6c                   	insb   (%dx),%es:(%rdi)
  7d:	75 64                	jne    e3 <_init-0x400345>
  7f:	65 00 00             	add    %al,%gs:(%rax)
  82:	6a 75                	pushq  $0x75
  84:	6d                   	insl   (%dx),%es:(%rdi)
  85:	70 74                	jo     fb <_init-0x40032d>
  87:	61                   	(bad)  
  88:	62                   	(bad)  
  89:	6c                   	insb   (%dx),%es:(%rdi)
  8a:	65 2e 63 70 70       	gs movslq %cs:0x70(%rax),%esi
  8f:	00 01                	add    %al,(%rcx)
  91:	00 00                	add    %al,(%rax)
  93:	73 74                	jae    109 <_init-0x40031f>
  95:	64 6c                	fs insb (%dx),%es:(%rdi)
  97:	69 62 2e 68 00 02 00 	imul   $0x20068,0x2e(%rdx),%esp
  9e:	00 73 74             	add    %dh,0x74(%rbx)
  a1:	64 69 6f 32 2e 68 00 	imul   $0x300682e,%fs:0x32(%rdi),%ebp
  a8:	03 
  a9:	00 00                	add    %al,(%rax)
  ab:	73 74                	jae    121 <_init-0x400307>
  ad:	64 64 65 66 2e 68 00 	fs fs gs cs pushw $0x400
  b4:	04 
  b5:	00 00                	add    %al,(%rax)
  b7:	74 79                	je     132 <_init-0x4002f6>
  b9:	70 65                	jo     120 <_init-0x400308>
  bb:	73 2e                	jae    eb <_init-0x40033d>
  bd:	68 00 03 00 00       	pushq  $0x300
  c2:	6c                   	insb   (%dx),%es:(%rdi)
  c3:	69 62 69 6f 2e 68 00 	imul   $0x682e6f,0x69(%rdx),%esp
  ca:	02 00                	add    (%rax),%al
  cc:	00 73 74             	add    %dh,0x74(%rbx)
  cf:	64 69 6f 2e 68 00 02 	imul   $0x20068,%fs:0x2e(%rdi),%ebp
  d6:	00 
  d7:	00 00                	add    %al,(%rax)
  d9:	00 09                	add    %cl,(%rcx)
  db:	02 00                	add    (%rax),%al
  dd:	06                   	(bad)  
  de:	40 00 00             	add    %al,(%rax)
  e1:	00 00                	add    %al,(%rax)
  e3:	00 15 3c 03 0b f2    	add    %dl,-0xdf4fcc4(%rip)        # fffffffff20b0425 <_end+0xfffffffff1aaf3dd>
  e9:	ca 03 22             	lret   $0x2203
  ec:	01 02                	add    %eax,(%rdx)
  ee:	44 15 02 01 00 01    	rex.R adc $0x1000102,%eax
  f4:	01 00                	add    %eax,(%rax)
  f6:	09 02                	or     %eax,(%rdx)
  f8:	a0 04 40 00 00 00 00 	movabs 0x300000000004004,%al
  ff:	00 03 
 101:	38 01                	cmp    %al,(%rcx)
 103:	04 02                	add    $0x2,%al
 105:	03 df                	add    %edi,%ebx
 107:	01 20                	add    %esp,(%rax)
 109:	04 03                	add    $0x3,%al
 10b:	03 d0                	add    %eax,%edx
 10d:	7e 02                	jle    111 <_init-0x400317>
 10f:	26 01 04 01          	add    %eax,%es:(%rcx,%rax,1)
 113:	03 54 08 2e          	add    0x2e(%rax,%rcx,1),%edx
 117:	04 03                	add    $0x3,%al
 119:	03 2c 74             	add    (%rsp,%rsi,2),%ebp
 11c:	04 01                	add    $0x1,%al
 11e:	03 56 08             	add    0x8(%rsi),%edx
 121:	4a 02 04 00          	rex.WX add (%rax,%r8,1),%al
 125:	01 01                	add    %eax,(%rcx)

Disassembly of section .debug_str:

0000000000000000 <.debug_str>:
   0:	70 72                	jo     74 <_init-0x4003b4>
   2:	69 6e 74 66 00 5f 5f 	imul   $0x5f5f0066,0x74(%rsi),%ebp
   9:	6f                   	outsl  %ds:(%rsi),(%dx)
   a:	66 66 5f             	data16 pop %di
   d:	74 00                	je     f <_init-0x400419>
   f:	5f                   	pop    %rdi
  10:	49                   	rex.WB
  11:	4f 5f                	rex.WRXB pop %r15
  13:	72 65                	jb     7a <_init-0x4003ae>
  15:	61                   	(bad)  
  16:	64 5f                	fs pop %rdi
  18:	70 74                	jo     8e <_init-0x40039a>
  1a:	72 00                	jb     1c <_init-0x40040c>
  1c:	5f                   	pop    %rdi
  1d:	63 68 61             	movslq 0x61(%rax),%ebp
  20:	69 6e 00 5f 5a 31 66 	imul   $0x66315a5f,0x0(%rsi),%ebp
  27:	69 00 73 69 7a 65    	imul   $0x657a6973,(%rax),%eax
  2d:	5f                   	pop    %rdi
  2e:	74 00                	je     30 <_init-0x4003f8>
  30:	5f                   	pop    %rdi
  31:	73 68                	jae    9b <_init-0x40038d>
  33:	6f                   	outsl  %ds:(%rsi),(%dx)
  34:	72 74                	jb     aa <_init-0x40037e>
  36:	62                   	(bad)  
  37:	75 66                	jne    9f <_init-0x400389>
  39:	00 5f 49             	add    %bl,0x49(%rdi)
  3c:	4f 5f                	rex.WRXB pop %r15
  3e:	62                   	(bad)  
  3f:	75 66                	jne    a7 <_init-0x400381>
  41:	5f                   	pop    %rdi
  42:	62 61                	(bad)  
  44:	73 65                	jae    ab <_init-0x40037d>
  46:	00 6c 6f 6e          	add    %ch,0x6e(%rdi,%rbp,2)
  4a:	67 20 6c 6f 6e       	and    %ch,0x6e(%edi,%ebp,2)
  4f:	67 20 75 6e          	and    %dh,0x6e(%ebp)
  53:	73 69                	jae    be <_init-0x40036a>
  55:	67 6e                	outsb  %ds:(%esi),(%dx)
  57:	65 64 20 69 6e       	gs and %ch,%fs:0x6e(%rcx)
  5c:	74 00                	je     5e <_init-0x4003ca>
  5e:	6c                   	insb   (%dx),%es:(%rdi)
  5f:	6f                   	outsl  %ds:(%rsi),(%dx)
  60:	6e                   	outsb  %ds:(%rsi),(%dx)
  61:	67 20 6c 6f 6e       	and    %ch,0x6e(%edi,%ebp,2)
  66:	67 20 69 6e          	and    %ch,0x6e(%ecx)
  6a:	74 00                	je     6c <_init-0x4003bc>
  6c:	5f                   	pop    %rdi
  6d:	5a                   	pop    %rdx
  6e:	31 67 69             	xor    %esp,0x69(%rdi)
  71:	00 5f 66             	add    %bl,0x66(%rdi)
  74:	69 6c 65 6e 6f 00 5f 	imul   $0x495f006f,0x6e(%rbp,%riz,2),%ebp
  7b:	49 
  7c:	4f 5f                	rex.WRXB pop %r15
  7e:	72 65                	jb     e5 <_init-0x400343>
  80:	61                   	(bad)  
  81:	64 5f                	fs pop %rdi
  83:	65 6e                	outsb  %gs:(%rsi),(%dx)
  85:	64 00 73 74          	add    %dh,%fs:0x74(%rbx)
  89:	72 74                	jb     ff <_init-0x400329>
  8b:	6f                   	outsl  %ds:(%rsi),(%dx)
  8c:	6c                   	insb   (%dx),%es:(%rdi)
  8d:	00 5f 66             	add    %bl,0x66(%rdi)
  90:	6c                   	insb   (%dx),%es:(%rdi)
  91:	61                   	(bad)  
  92:	67 73 00             	addr32 jae 95 <_init-0x400393>
  95:	5f                   	pop    %rdi
  96:	49                   	rex.WB
  97:	4f 5f                	rex.WRXB pop %r15
  99:	62                   	(bad)  
  9a:	75 66                	jne    102 <_init-0x400326>
  9c:	5f                   	pop    %rdi
  9d:	65 6e                	outsb  %gs:(%rsi),(%dx)
  9f:	64 00 5f 63          	add    %bl,%fs:0x63(%rdi)
  a3:	75 72                	jne    117 <_init-0x400311>
  a5:	5f                   	pop    %rdi
  a6:	63 6f 6c             	movslq 0x6c(%rdi),%ebp
  a9:	75 6d                	jne    118 <_init-0x400310>
  ab:	6e                   	outsb  %ds:(%rsi),(%dx)
  ac:	00 5f 5f             	add    %bl,0x5f(%rdi)
  af:	70 72                	jo     123 <_init-0x400305>
  b1:	69 6e 74 66 5f 63 68 	imul   $0x68635f66,0x74(%rsi),%ebp
  b8:	6b 00 5f             	imul   $0x5f,(%rax),%eax
  bb:	6f                   	outsl  %ds:(%rsi),(%dx)
  bc:	6c                   	insb   (%dx),%es:(%rdi)
  bd:	64 5f                	fs pop %rdi
  bf:	6f                   	outsl  %ds:(%rsi),(%dx)
  c0:	66 66 73 65          	data16 data16 jae 129 <_init-0x4002ff>
  c4:	74 00                	je     c6 <_init-0x400362>
  c6:	47                   	rex.RXB
  c7:	4e 55                	rex.WRX push %rbp
  c9:	20 43 2b             	and    %al,0x2b(%rbx)
  cc:	2b 31                	sub    (%rcx),%esi
  ce:	31 20                	xor    %esp,(%rax)
  d0:	35 2e 34 2e 30       	xor    $0x302e342e,%eax
  d5:	20 32                	and    %dh,(%rdx)
  d7:	30 31                	xor    %dh,(%rcx)
  d9:	36 30 36             	xor    %dh,%ss:(%rsi)
  dc:	30 39                	xor    %bh,(%rcx)
  de:	20 2d 6d 61 76 78    	and    %ch,0x7876616d(%rip)        # 78766251 <_end+0x78165209>
  e4:	35 31 32 66 20       	xor    $0x20663231,%eax
  e9:	2d 6d 74 75 6e       	sub    $0x6e75746d,%eax
  ee:	65 3d 67 65 6e 65    	gs cmp $0x656e6567,%eax
  f4:	72 69                	jb     15f <_init-0x4002c9>
  f6:	63 20                	movslq (%rax),%esp
  f8:	2d 6d 61 72 63       	sub    $0x6372616d,%eax
  fd:	68 3d 78 38 36       	pushq  $0x3638783d
 102:	2d 36 34 20 2d       	sub    $0x2d203436,%eax
 107:	67 20 2d 4f 33 20 2d 	and    %ch,0x2d20334f(%eip)        # 2d20345d <_end+0x2cc02415>
 10e:	73 74                	jae    184 <_init-0x4002a4>
 110:	64 3d 63 2b 2b 31    	fs cmp $0x312b2b63,%eax
 116:	31 20                	xor    %esp,(%rax)
 118:	2d 66 73 74 61       	sub    $0x61747366,%eax
 11d:	63 6b 2d             	movslq 0x2d(%rbx),%ebp
 120:	70 72                	jo     194 <_init-0x400294>
 122:	6f                   	outsl  %ds:(%rsi),(%dx)
 123:	74 65                	je     18a <_init-0x40029e>
 125:	63 74 6f 72          	movslq 0x72(%rdi,%rbp,2),%esi
 129:	2d 73 74 72 6f       	sub    $0x6f727473,%eax
 12e:	6e                   	outsb  %ds:(%rsi),(%dx)
 12f:	67 00 5f 49          	add    %bl,0x49(%edi)
 133:	4f 5f                	rex.WRXB pop %r15
 135:	6d                   	insl   (%dx),%es:(%rdi)
 136:	61                   	(bad)  
 137:	72 6b                	jb     1a4 <_init-0x400284>
 139:	65 72 00             	gs jb  13c <_init-0x4002ec>
 13c:	73 74                	jae    1b2 <_init-0x400276>
 13e:	64 69 6e 00 73 72 63 	imul   $0x2f637273,%fs:0x0(%rsi),%ebp
 145:	2f 
 146:	6a 75                	pushq  $0x75
 148:	6d                   	insl   (%dx),%es:(%rdi)
 149:	70 74                	jo     1bf <_init-0x400269>
 14b:	61                   	(bad)  
 14c:	62                   	(bad)  
 14d:	6c                   	insb   (%dx),%es:(%rdi)
 14e:	65 2f                	gs (bad) 
 150:	6a 75                	pushq  $0x75
 152:	6d                   	insl   (%dx),%es:(%rdi)
 153:	70 74                	jo     1c9 <_init-0x40025f>
 155:	61                   	(bad)  
 156:	62                   	(bad)  
 157:	6c                   	insb   (%dx),%es:(%rdi)
 158:	65 2e 63 70 70       	gs movslq %cs:0x70(%rax),%esi
 15d:	00 5f 49             	add    %bl,0x49(%rdi)
 160:	4f 5f                	rex.WRXB pop %r15
 162:	77 72                	ja     1d6 <_init-0x400252>
 164:	69 74 65 5f 70 74 72 	imul   $0x727470,0x5f(%rbp,%riz,2),%esi
 16b:	00 
 16c:	5f                   	pop    %rdi
 16d:	73 62                	jae    1d1 <_init-0x400257>
 16f:	75 66                	jne    1d7 <_init-0x400251>
 171:	00 73 68             	add    %dh,0x68(%rbx)
 174:	6f                   	outsl  %ds:(%rsi),(%dx)
 175:	72 74                	jb     1eb <_init-0x40023d>
 177:	20 75 6e             	and    %dh,0x6e(%rbp)
 17a:	73 69                	jae    1e5 <_init-0x400243>
 17c:	67 6e                	outsb  %ds:(%esi),(%dx)
 17e:	65 64 20 69 6e       	gs and %ch,%fs:0x6e(%rcx)
 183:	74 00                	je     185 <_init-0x4002a3>
 185:	5f                   	pop    %rdi
 186:	49                   	rex.WB
 187:	4f 5f                	rex.WRXB pop %r15
 189:	73 61                	jae    1ec <_init-0x40023c>
 18b:	76 65                	jbe    1f2 <_init-0x400236>
 18d:	5f                   	pop    %rdi
 18e:	62 61                	(bad)  
 190:	73 65                	jae    1f7 <_init-0x400231>
 192:	00 5f 6c             	add    %bl,0x6c(%rdi)
 195:	6f                   	outsl  %ds:(%rsi),(%dx)
 196:	63 6b 00             	movslq 0x0(%rbx),%ebp
 199:	5f                   	pop    %rdi
 19a:	66 6c                	data16 insb (%dx),%es:(%rdi)
 19c:	61                   	(bad)  
 19d:	67 73 32             	addr32 jae 1d2 <_init-0x400256>
 1a0:	00 5f 6d             	add    %bl,0x6d(%rdi)
 1a3:	6f                   	outsl  %ds:(%rsi),(%dx)
 1a4:	64 65 00 73 74       	fs add %dh,%gs:0x74(%rbx)
 1a9:	64 6f                	outsl  %fs:(%rsi),(%dx)
 1ab:	75 74                	jne    221 <_init-0x400207>
 1ad:	00 73 69             	add    %dh,0x69(%rbx)
 1b0:	7a 65                	jp     217 <_init-0x400211>
 1b2:	74 79                	je     22d <_init-0x4001fb>
 1b4:	70 65                	jo     21b <_init-0x40020d>
 1b6:	00 5f 49             	add    %bl,0x49(%rdi)
 1b9:	4f 5f                	rex.WRXB pop %r15
 1bb:	77 72                	ja     22f <_init-0x4001f9>
 1bd:	69 74 65 5f 65 6e 64 	imul   $0x646e65,0x5f(%rbp,%riz,2),%esi
 1c4:	00 
 1c5:	5f                   	pop    %rdi
 1c6:	49                   	rex.WB
 1c7:	4f 5f                	rex.WRXB pop %r15
 1c9:	6c                   	insb   (%dx),%es:(%rdi)
 1ca:	6f                   	outsl  %ds:(%rsi),(%dx)
 1cb:	63 6b 5f             	movslq 0x5f(%rbx),%ebp
 1ce:	74 00                	je     1d0 <_init-0x400258>
 1d0:	5f                   	pop    %rdi
 1d1:	49                   	rex.WB
 1d2:	4f 5f                	rex.WRXB pop %r15
 1d4:	46                   	rex.RX
 1d5:	49                   	rex.WB
 1d6:	4c                   	rex.WR
 1d7:	45 00 5f 5f          	add    %r11b,0x5f(%r15)
 1db:	6e                   	outsb  %ds:(%rsi),(%dx)
 1dc:	70 74                	jo     252 <_init-0x4001d6>
 1de:	72 00                	jb     1e0 <_init-0x400248>
 1e0:	5f                   	pop    %rdi
 1e1:	70 6f                	jo     252 <_init-0x4001d6>
 1e3:	73 00                	jae    1e5 <_init-0x400243>
 1e5:	5f                   	pop    %rdi
 1e6:	6d                   	insl   (%dx),%es:(%rdi)
 1e7:	61                   	(bad)  
 1e8:	72 6b                	jb     255 <_init-0x4001d3>
 1ea:	65 72 73             	gs jb  260 <_init-0x4001c8>
 1ed:	00 61 74             	add    %ah,0x74(%rcx)
 1f0:	6f                   	outsl  %ds:(%rsi),(%dx)
 1f1:	69 00 75 6e 73 69    	imul   $0x69736e75,(%rax),%eax
 1f7:	67 6e                	outsb  %ds:(%esi),(%dx)
 1f9:	65 64 20 63 68       	gs and %ah,%fs:0x68(%rbx)
 1fe:	61                   	(bad)  
 1ff:	72 00                	jb     201 <_init-0x400227>
 201:	73 68                	jae    26b <_init-0x4001bd>
 203:	6f                   	outsl  %ds:(%rsi),(%dx)
 204:	72 74                	jb     27a <_init-0x4001ae>
 206:	20 69 6e             	and    %ch,0x6e(%rcx)
 209:	74 00                	je     20b <_init-0x40021d>
 20b:	5f                   	pop    %rdi
 20c:	76 74                	jbe    282 <_init-0x4001a6>
 20e:	61                   	(bad)  
 20f:	62                   	(bad)  
 210:	6c                   	insb   (%dx),%es:(%rdi)
 211:	65 5f                	gs pop %rdi
 213:	6f                   	outsl  %ds:(%rsi),(%dx)
 214:	66 66 73 65          	data16 data16 jae 27d <_init-0x4001ab>
 218:	74 00                	je     21a <_init-0x40020e>
 21a:	2f                   	(bad)  
 21b:	73 72                	jae    28f <_init-0x400199>
 21d:	63 00                	movslq (%rax),%eax
 21f:	5f                   	pop    %rdi
 220:	6e                   	outsb  %ds:(%rsi),(%dx)
 221:	65 78 74             	gs js  298 <_init-0x400190>
 224:	00 5f 5f             	add    %bl,0x5f(%rdi)
 227:	6f                   	outsl  %ds:(%rsi),(%dx)
 228:	66 66 36 34 5f       	data16 data16 ss xor $0x5f,%al
 22d:	74 00                	je     22f <_init-0x4001f9>
 22f:	5f                   	pop    %rdi
 230:	49                   	rex.WB
 231:	4f 5f                	rex.WRXB pop %r15
 233:	72 65                	jb     29a <_init-0x40018e>
 235:	61                   	(bad)  
 236:	64 5f                	fs pop %rdi
 238:	62 61                	(bad)  
 23a:	73 65                	jae    2a1 <_init-0x400187>
 23c:	00 5f 49             	add    %bl,0x49(%rdi)
 23f:	4f 5f                	rex.WRXB pop %r15
 241:	73 61                	jae    2a4 <_init-0x400184>
 243:	76 65                	jbe    2aa <_init-0x40017e>
 245:	5f                   	pop    %rdi
 246:	65 6e                	outsb  %gs:(%rsi),(%dx)
 248:	64 00 5f 5f          	add    %bl,%fs:0x5f(%rdi)
 24c:	66 6d                	insw   (%dx),%es:(%rdi)
 24e:	74 00                	je     250 <_init-0x4001d8>
 250:	5f                   	pop    %rdi
 251:	5f                   	pop    %rdi
 252:	70 61                	jo     2b5 <_init-0x400173>
 254:	64 31 00             	xor    %eax,%fs:(%rax)
 257:	5f                   	pop    %rdi
 258:	5f                   	pop    %rdi
 259:	70 61                	jo     2bc <_init-0x40016c>
 25b:	64 32 00             	xor    %fs:(%rax),%al
 25e:	5f                   	pop    %rdi
 25f:	5f                   	pop    %rdi
 260:	70 61                	jo     2c3 <_init-0x400165>
 262:	64 33 00             	xor    %fs:(%rax),%eax
 265:	5f                   	pop    %rdi
 266:	5f                   	pop    %rdi
 267:	70 61                	jo     2ca <_init-0x40015e>
 269:	64 34 00             	fs xor $0x0,%al
 26c:	5f                   	pop    %rdi
 26d:	5f                   	pop    %rdi
 26e:	70 61                	jo     2d1 <_init-0x400157>
 270:	64 35 00 5f 75 6e    	fs xor $0x6e755f00,%eax
 276:	75 73                	jne    2eb <_init-0x40013d>
 278:	65 64 32 00          	gs xor %fs:(%rax),%al
 27c:	61                   	(bad)  
 27d:	72 67                	jb     2e6 <_init-0x400142>
 27f:	76 00                	jbe    281 <_init-0x4001a7>
 281:	5f                   	pop    %rdi
 282:	49                   	rex.WB
 283:	4f 5f                	rex.WRXB pop %r15
 285:	62 61                	(bad)  
 287:	63 6b 75             	movslq 0x75(%rbx),%ebp
 28a:	70 5f                	jo     2eb <_init-0x40013d>
 28c:	62 61                	(bad)  
 28e:	73 65                	jae    2f5 <_init-0x400133>
 290:	00 61 72             	add    %ah,0x72(%rcx)
 293:	67 63 00             	movslq (%eax),%eax
 296:	6d                   	insl   (%dx),%es:(%rdi)
 297:	61                   	(bad)  
 298:	69 6e 00 5f 49 4f 5f 	imul   $0x5f4f495f,0x0(%rsi),%ebp
 29f:	77 72                	ja     313 <_init-0x400115>
 2a1:	69 74 65 5f 62 61 73 	imul   $0x65736162,0x5f(%rbp,%riz,2),%esi
 2a8:	65 
	...

Disassembly of section .debug_loc:

0000000000000000 <.debug_loc>:
   0:	00 06                	add    %al,(%rsi)
   2:	40 00 00             	add    %al,(%rax)
   5:	00 00                	add    %al,(%rax)
   7:	00 13                	add    %dl,(%rbx)
   9:	06                   	(bad)  
   a:	40 00 00             	add    %al,(%rax)
   d:	00 00                	add    %al,(%rax)
   f:	00 01                	add    %al,(%rcx)
  11:	00 55 13             	add    %dl,0x13(%rbp)
  14:	06                   	(bad)  
  15:	40 00 00             	add    %al,(%rax)
  18:	00 00                	add    %al,(%rax)
  1a:	00 15 06 40 00 00    	add    %dl,0x4006(%rip)        # 4026 <_init-0x3fc402>
  20:	00 00                	add    %al,(%rax)
  22:	00 04 00             	add    %al,(%rax,%rax,1)
  25:	f3 01 55 9f          	repz add %edx,-0x61(%rbp)
	...
  39:	20 06                	and    %al,(%rsi)
  3b:	40 00 00             	add    %al,(%rax)
  3e:	00 00                	add    %al,(%rax)
  40:	00 64 06 40          	add    %ah,0x40(%rsi,%rax,1)
  44:	00 00                	add    %al,(%rax)
  46:	00 00                	add    %al,(%rax)
  48:	00 03                	add    %al,(%rbx)
  4a:	00 09                	add    %cl,(%rcx)
  4c:	ff 9f 64 06 40 00    	lcall  *0x400664(%rdi)
  52:	00 00                	add    %al,(%rax)
  54:	00 00                	add    %al,(%rax)
  56:	65 06                	gs (bad) 
  58:	40 00 00             	add    %al,(%rax)
  5b:	00 00                	add    %al,(%rax)
  5d:	00 01                	add    %al,(%rcx)
  5f:	00 50 00             	add    %dl,0x0(%rax)
	...
  6e:	00 00                	add    %al,(%rax)
  70:	00 a0 04 40 00 00    	add    %ah,0x4004(%rax)
  76:	00 00                	add    %al,(%rax)
  78:	00 a5 04 40 00 00    	add    %ah,0x4004(%rbp)
  7e:	00 00                	add    %al,(%rax)
  80:	00 01                	add    %al,(%rcx)
  82:	00 55 a5             	add    %dl,-0x5b(%rbp)
  85:	04 40                	add    $0x40,%al
  87:	00 00                	add    %al,(%rax)
  89:	00 00                	add    %al,(%rax)
  8b:	00 fa                	add    %bh,%dl
  8d:	04 40                	add    $0x40,%al
  8f:	00 00                	add    %al,(%rax)
  91:	00 00                	add    %al,(%rax)
  93:	00 04 00             	add    %al,(%rax,%rax,1)
  96:	f3 01 55 9f          	repz add %edx,-0x61(%rbp)
	...
  aa:	a0 04 40 00 00 00 00 	movabs 0xac00000000004004,%al
  b1:	00 ac 
  b3:	04 40                	add    $0x40,%al
  b5:	00 00                	add    %al,(%rax)
  b7:	00 00                	add    %al,(%rax)
  b9:	00 01                	add    %al,(%rcx)
  bb:	00 54 ac 04          	add    %dl,0x4(%rsp,%rbp,4)
  bf:	40 00 00             	add    %al,(%rax)
  c2:	00 00                	add    %al,(%rax)
  c4:	00 fa                	add    %bh,%dl
  c6:	04 40                	add    $0x40,%al
  c8:	00 00                	add    %al,(%rax)
  ca:	00 00                	add    %al,(%rax)
  cc:	00 04 00             	add    %al,(%rax,%rax,1)
  cf:	f3 01 54 9f 00       	repz add %edx,0x0(%rdi,%rbx,4)
	...
  e0:	00 00                	add    %al,(%rax)
  e2:	00 a0 04 40 00 00    	add    %ah,0x4004(%rax)
  e8:	00 00                	add    %al,(%rax)
  ea:	00 a1 04 40 00 00    	add    %ah,0x4004(%rcx)
  f0:	00 00                	add    %al,(%rax)
  f2:	00 02                	add    %al,(%rdx)
  f4:	00 74 08 00          	add    %dh,0x0(%rax,%rcx,1)
	...
 104:	00 00                	add    %al,(%rax)
 106:	00 c7                	add    %al,%bh
 108:	04 40                	add    $0x40,%al
 10a:	00 00                	add    %al,(%rax)
 10c:	00 00                	add    %al,(%rax)
 10e:	00 da                	add    %bl,%dl
 110:	04 40                	add    $0x40,%al
 112:	00 00                	add    %al,(%rax)
 114:	00 00                	add    %al,(%rax)
 116:	00 0a                	add    %cl,(%rdx)
 118:	00 03                	add    %al,(%rbx)
 11a:	f4                   	hlt    
 11b:	06                   	(bad)  
 11c:	40 00 00             	add    %al,(%rax)
 11f:	00 00                	add    %al,(%rax)
 121:	00 9f 00 00 00 00    	add    %bl,0x0(%rdi)
	...
 133:	e1 04                	loope  139 <_init-0x4002ef>
 135:	40 00 00             	add    %al,(%rax)
 138:	00 00                	add    %al,(%rax)
 13a:	00 f6                	add    %dh,%dh
 13c:	04 40                	add    $0x40,%al
 13e:	00 00                	add    %al,(%rax)
 140:	00 00                	add    %al,(%rax)
 142:	00 0a                	add    %cl,(%rdx)
 144:	00 03                	add    %al,(%rbx)
 146:	00 07                	add    %al,(%rdi)
 148:	40 00 00             	add    %al,(%rax)
 14b:	00 00                	add    %al,(%rax)
 14d:	00 9f 00 00 00 00    	add    %bl,0x0(%rdi)
	...

Disassembly of section .debug_ranges:

0000000000000000 <.debug_ranges>:
   0:	00 06                	add    %al,(%rsi)
   2:	40 00 00             	add    %al,(%rax)
   5:	00 00                	add    %al,(%rax)
   7:	00 65 06             	add    %ah,0x6(%rbp)
   a:	40 00 00             	add    %al,(%rax)
   d:	00 00                	add    %al,(%rax)
   f:	00 a0 04 40 00 00    	add    %ah,0x4004(%rax)
  15:	00 00                	add    %al,(%rax)
  17:	00 fa                	add    %bh,%dl
  19:	04 40                	add    $0x40,%al
	...
