
build/jumptable:     file format elf64-x86-64


Disassembly of section .interp:

0000000000400238 <.interp>:
  400238:	2f                   	(bad)  
  400239:	6c                   	insb   (%dx),%es:(%rdi)
  40023a:	69 62 36 34 2f 6c 64 	imul   $0x646c2f34,0x36(%rdx),%esp
  400241:	2d 6c 69 6e 75       	sub    $0x756e696c,%eax
  400246:	78 2d                	js     400275 <_init-0x1d3>
  400248:	78 38                	js     400282 <_init-0x1c6>
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
  400283:	00 5f 87             	add    %bl,-0x79(%rdi)
  400286:	40                   	rex
  400287:	3e 79 e6             	jns,pt 400270 <_init-0x1d8>
  40028a:	b8 aa 51 1a 90       	mov    $0x901a51aa,%eax
  40028f:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
  400290:	e1 93                	loope  400225 <_init-0x223>
  400292:	54                   	push   %rsp
  400293:	f4                   	hlt    
  400294:	01 ea                	add    %ebp,%edx
  400296:	33 fb                	xor    %ebx,%edi

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
  4002e8:	29 00                	sub    %eax,(%rax)
  4002ea:	00 00                	add    %al,(%rax)
  4002ec:	12 00                	adc    (%rax),%al
	...
  4002fe:	00 00                	add    %al,(%rax)
  400300:	3b 00                	cmp    (%rax),%eax
  400302:	00 00                	add    %al,(%rax)
  400304:	20 00                	and    %al,(%rax)
	...
  400316:	00 00                	add    %al,(%rax)
  400318:	0b 00                	or     (%rax),%eax
  40031a:	00 00                	add    %al,(%rax)
  40031c:	12 00                	adc    (%rax),%al
	...

Disassembly of section .dynstr:

0000000000400330 <.dynstr>:
  400330:	00 6c 69 62          	add    %ch,0x62(%rcx,%rbp,2)
  400334:	63 2e                	movslq (%rsi),%ebp
  400336:	73 6f                	jae    4003a7 <_init-0xa1>
  400338:	2e 36 00 5f 5f       	cs add %bl,%ss:0x5f(%rdi)
  40033d:	70 72                	jo     4003b1 <_init-0x97>
  40033f:	69 6e 74 66 5f 63 68 	imul   $0x68635f66,0x74(%rsi),%ebp
  400346:	6b 00 5f             	imul   $0x5f,(%rax),%eax
  400349:	5f                   	pop    %rdi
  40034a:	73 74                	jae    4003c0 <_init-0x88>
  40034c:	61                   	(bad)  
  40034d:	63 6b 5f             	movslq 0x5f(%rbx),%ebp
  400350:	63 68 6b             	movslq 0x6b(%rax),%ebp
  400353:	5f                   	pop    %rdi
  400354:	66 61                	data16 (bad) 
  400356:	69 6c 00 5f 5f 6c 69 	imul   $0x62696c5f,0x5f(%rax,%rax,1),%ebp
  40035d:	62 
  40035e:	63 5f 73             	movslq 0x73(%rdi),%ebx
  400361:	74 61                	je     4003c4 <_init-0x84>
  400363:	72 74                	jb     4003d9 <_init-0x6f>
  400365:	5f                   	pop    %rdi
  400366:	6d                   	insl   (%dx),%es:(%rdi)
  400367:	61                   	(bad)  
  400368:	69 6e 00 5f 5f 67 6d 	imul   $0x6d675f5f,0x0(%rsi),%ebp
  40036f:	6f                   	outsl  %ds:(%rsi),(%dx)
  400370:	6e                   	outsb  %ds:(%rsi),(%dx)
  400371:	5f                   	pop    %rdi
  400372:	73 74                	jae    4003e8 <_init-0x60>
  400374:	61                   	(bad)  
  400375:	72 74                	jb     4003eb <_init-0x5d>
  400377:	5f                   	pop    %rdi
  400378:	5f                   	pop    %rdi
  400379:	00 47 4c             	add    %al,0x4c(%rdi)
  40037c:	49                   	rex.WB
  40037d:	42                   	rex.X
  40037e:	43 5f                	rex.XB pop %r15
  400380:	32 2e                	xor    (%rsi),%ch
  400382:	33 2e                	xor    (%rsi),%ebp
  400384:	34 00                	xor    $0x0,%al
  400386:	47                   	rex.RXB
  400387:	4c                   	rex.WR
  400388:	49                   	rex.WB
  400389:	42                   	rex.X
  40038a:	43 5f                	rex.XB pop %r15
  40038c:	32 2e                	xor    (%rsi),%ch
  40038e:	32 2e                	xor    (%rsi),%ch
  400390:	35 00 47 4c 49       	xor    $0x494c4700,%eax
  400395:	42                   	rex.X
  400396:	43 5f                	rex.XB pop %r15
  400398:	32 2e                	xor    (%rsi),%ch
  40039a:	34 00                	xor    $0x0,%al

Disassembly of section .gnu.version:

000000000040039c <.gnu.version>:
  40039c:	00 00                	add    %al,(%rax)
  40039e:	02 00                	add    (%rax),%al
  4003a0:	03 00                	add    (%rax),%eax
  4003a2:	00 00                	add    %al,(%rax)
  4003a4:	04 00                	add    $0x0,%al

Disassembly of section .gnu.version_r:

00000000004003a8 <.gnu.version_r>:
  4003a8:	01 00                	add    %eax,(%rax)
  4003aa:	03 00                	add    (%rax),%eax
  4003ac:	01 00                	add    %eax,(%rax)
  4003ae:	00 00                	add    %al,(%rax)
  4003b0:	10 00                	adc    %al,(%rax)
  4003b2:	00 00                	add    %al,(%rax)
  4003b4:	00 00                	add    %al,(%rax)
  4003b6:	00 00                	add    %al,(%rax)
  4003b8:	74 19                	je     4003d3 <_init-0x75>
  4003ba:	69 09 00 00 04 00    	imul   $0x40000,(%rcx),%ecx
  4003c0:	4a 00 00             	rex.WX add %al,(%rax)
  4003c3:	00 10                	add    %dl,(%rax)
  4003c5:	00 00                	add    %al,(%rax)
  4003c7:	00 75 1a             	add    %dh,0x1a(%rbp)
  4003ca:	69 09 00 00 03 00    	imul   $0x30000,(%rcx),%ecx
  4003d0:	56                   	push   %rsi
  4003d1:	00 00                	add    %al,(%rax)
  4003d3:	00 10                	add    %dl,(%rax)
  4003d5:	00 00                	add    %al,(%rax)
  4003d7:	00 14 69             	add    %dl,(%rcx,%rbp,2)
  4003da:	69 0d 00 00 02 00 62 	imul   $0x62,0x20000(%rip),%ecx        # 4203e4 <__FRAME_END__+0x1fac4>
  4003e1:	00 00 00 
  4003e4:	00 00                	add    %al,(%rax)
	...

Disassembly of section .rela.dyn:

00000000004003e8 <.rela.dyn>:
  4003e8:	f8                   	clc    
  4003e9:	0f 60 00             	punpcklbw (%rax),%mm0
  4003ec:	00 00                	add    %al,(%rax)
  4003ee:	00 00                	add    %al,(%rax)
  4003f0:	06                   	(bad)  
  4003f1:	00 00                	add    %al,(%rax)
  4003f3:	00 03                	add    %al,(%rbx)
	...

Disassembly of section .rela.plt:

0000000000400400 <.rela.plt>:
  400400:	18 10                	sbb    %dl,(%rax)
  400402:	60                   	(bad)  
  400403:	00 00                	add    %al,(%rax)
  400405:	00 00                	add    %al,(%rax)
  400407:	00 07                	add    %al,(%rdi)
  400409:	00 00                	add    %al,(%rax)
  40040b:	00 01                	add    %al,(%rcx)
	...
  400415:	00 00                	add    %al,(%rax)
  400417:	00 20                	add    %ah,(%rax)
  400419:	10 60 00             	adc    %ah,0x0(%rax)
  40041c:	00 00                	add    %al,(%rax)
  40041e:	00 00                	add    %al,(%rax)
  400420:	07                   	(bad)  
  400421:	00 00                	add    %al,(%rax)
  400423:	00 02                	add    %al,(%rdx)
	...
  40042d:	00 00                	add    %al,(%rax)
  40042f:	00 28                	add    %ch,(%rax)
  400431:	10 60 00             	adc    %ah,0x0(%rax)
  400434:	00 00                	add    %al,(%rax)
  400436:	00 00                	add    %al,(%rax)
  400438:	07                   	(bad)  
  400439:	00 00                	add    %al,(%rax)
  40043b:	00 04 00             	add    %al,(%rax,%rax,1)
	...

Disassembly of section .init:

0000000000400448 <_init>:
  400448:	48 83 ec 08          	sub    $0x8,%rsp
  40044c:	48 8b 05 a5 0b 20 00 	mov    0x200ba5(%rip),%rax        # 600ff8 <_DYNAMIC+0x1d0>
  400453:	48 85 c0             	test   %rax,%rax
  400456:	74 05                	je     40045d <_init+0x15>
  400458:	e8 53 00 00 00       	callq  4004b0 <__printf_chk@plt+0x10>
  40045d:	48 83 c4 08          	add    $0x8,%rsp
  400461:	c3                   	retq   

Disassembly of section .plt:

0000000000400470 <__stack_chk_fail@plt-0x10>:
  400470:	ff 35 92 0b 20 00    	pushq  0x200b92(%rip)        # 601008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400476:	ff 25 94 0b 20 00    	jmpq   *0x200b94(%rip)        # 601010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40047c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400480 <__stack_chk_fail@plt>:
  400480:	ff 25 92 0b 20 00    	jmpq   *0x200b92(%rip)        # 601018 <_GLOBAL_OFFSET_TABLE_+0x18>
  400486:	68 00 00 00 00       	pushq  $0x0
  40048b:	e9 e0 ff ff ff       	jmpq   400470 <_init+0x28>

0000000000400490 <__libc_start_main@plt>:
  400490:	ff 25 8a 0b 20 00    	jmpq   *0x200b8a(%rip)        # 601020 <_GLOBAL_OFFSET_TABLE_+0x20>
  400496:	68 01 00 00 00       	pushq  $0x1
  40049b:	e9 d0 ff ff ff       	jmpq   400470 <_init+0x28>

00000000004004a0 <__printf_chk@plt>:
  4004a0:	ff 25 82 0b 20 00    	jmpq   *0x200b82(%rip)        # 601028 <_GLOBAL_OFFSET_TABLE_+0x28>
  4004a6:	68 02 00 00 00       	pushq  $0x2
  4004ab:	e9 c0 ff ff ff       	jmpq   400470 <_init+0x28>

Disassembly of section .plt.got:

00000000004004b0 <.plt.got>:
  4004b0:	ff 25 42 0b 20 00    	jmpq   *0x200b42(%rip)        # 600ff8 <_DYNAMIC+0x1d0>
  4004b6:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

00000000004004c0 <main>:
  4004c0:	48 83 ec 08          	sub    $0x8,%rsp
  4004c4:	e8 67 01 00 00       	callq  400630 <_Z8expectedv>
  4004c9:	be 74 07 40 00       	mov    $0x400774,%esi
  4004ce:	89 c2                	mov    %eax,%edx
  4004d0:	bf 01 00 00 00       	mov    $0x1,%edi
  4004d5:	31 c0                	xor    %eax,%eax
  4004d7:	e8 c4 ff ff ff       	callq  4004a0 <__printf_chk@plt>
  4004dc:	e8 5f 01 00 00       	callq  400640 <_Z13actual_loopedv>
  4004e1:	be 83 07 40 00       	mov    $0x400783,%esi
  4004e6:	89 c2                	mov    %eax,%edx
  4004e8:	bf 01 00 00 00       	mov    $0x1,%edi
  4004ed:	31 c0                	xor    %eax,%eax
  4004ef:	e8 ac ff ff ff       	callq  4004a0 <__printf_chk@plt>
  4004f4:	31 c0                	xor    %eax,%eax
  4004f6:	48 83 c4 08          	add    $0x8,%rsp
  4004fa:	c3                   	retq   
  4004fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000400500 <_start>:
  400500:	31 ed                	xor    %ebp,%ebp
  400502:	49 89 d1             	mov    %rdx,%r9
  400505:	5e                   	pop    %rsi
  400506:	48 89 e2             	mov    %rsp,%rdx
  400509:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40050d:	50                   	push   %rax
  40050e:	54                   	push   %rsp
  40050f:	49 c7 c0 60 07 40 00 	mov    $0x400760,%r8
  400516:	48 c7 c1 f0 06 40 00 	mov    $0x4006f0,%rcx
  40051d:	48 c7 c7 c0 04 40 00 	mov    $0x4004c0,%rdi
  400524:	e8 67 ff ff ff       	callq  400490 <__libc_start_main@plt>
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

0000000000400600 <_Z5tableiRi>:
  400600:	83 ff 01             	cmp    $0x1,%edi
  400603:	74 23                	je     400628 <_Z5tableiRi+0x28>
  400605:	83 ff 02             	cmp    $0x2,%edi
  400608:	74 16                	je     400620 <_Z5tableiRi+0x20>
  40060a:	85 ff                	test   %edi,%edi
  40060c:	74 0a                	je     400618 <_Z5tableiRi+0x18>
  40060e:	83 06 63             	addl   $0x63,(%rsi)
  400611:	c3                   	retq   
  400612:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  400618:	83 06 16             	addl   $0x16,(%rsi)
  40061b:	c3                   	retq   
  40061c:	0f 1f 40 00          	nopl   0x0(%rax)
  400620:	83 06 2c             	addl   $0x2c,(%rsi)
  400623:	c3                   	retq   
  400624:	0f 1f 40 00          	nopl   0x0(%rax)
  400628:	83 06 01             	addl   $0x1,(%rsi)
  40062b:	c3                   	retq   
  40062c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400630 <_Z8expectedv>:
  400630:	b8 35 01 00 00       	mov    $0x135,%eax
  400635:	c3                   	retq   
  400636:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40063d:	00 00 00 

0000000000400640 <_Z13actual_loopedv>:
  400640:	48 83 ec 28          	sub    $0x28,%rsp
  400644:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40064b:	00 00 
  40064d:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  400652:	31 c0                	xor    %eax,%eax
  400654:	c7 04 24 00 00 00 00 	movl   $0x0,(%rsp)
  40065b:	c7 44 24 04 03 00 00 	movl   $0x3,0x4(%rsp)
  400662:	00 
  400663:	c7 44 24 08 02 00 00 	movl   $0x2,0x8(%rsp)
  40066a:	00 
  40066b:	c7 44 24 0c 03 00 00 	movl   $0x3,0xc(%rsp)
  400672:	00 
  400673:	c7 44 24 10 01 00 00 	movl   $0x1,0x10(%rsp)
  40067a:	00 
  40067b:	c7 44 24 14 02 00 00 	movl   $0x2,0x14(%rsp)
  400682:	00 
  400683:	b8 00 00 00 00       	mov    $0x0,%eax
  400688:	48 8b 3c 24          	mov    (%rsp),%rdi
  40068c:	48 c7 c1 00 00 00 00 	mov    $0x0,%rcx

0000000000400693 <LOOP_TOP_61>:
  400693:	8b 14 8f             	mov    (%rdi,%rcx,4),%edx
  400696:	67 ff 24 d5 9e 06 40 	jmpq   *0x40069e(,%edx,8)
  40069d:	00 

000000000040069e <TABLE_61>:
  40069e:	b6 06                	mov    $0x6,%dh
  4006a0:	40 00 00             	add    %al,(%rax)
  4006a3:	00 00                	add    %al,(%rax)
  4006a5:	00 bb 06 40 00 00    	add    %bh,0x4006(%rbx)
  4006ab:	00 00                	add    %al,(%rax)
  4006ad:	00 c0                	add    %al,%al
  4006af:	06                   	(bad)  
  4006b0:	40 00 00             	add    %al,(%rax)
  4006b3:	00 00                	add    %al,(%rax)
	...

00000000004006b6 <CASE_0_61>:
  4006b6:	83 c0 16             	add    $0x16,%eax
  4006b9:	eb 0d                	jmp    4006c8 <END_SWITCH_61>

00000000004006bb <CASE_1_61>:
  4006bb:	83 c0 01             	add    $0x1,%eax
  4006be:	eb 08                	jmp    4006c8 <END_SWITCH_61>

00000000004006c0 <CASE_2_61>:
  4006c0:	83 c0 2c             	add    $0x2c,%eax
  4006c3:	eb 03                	jmp    4006c8 <END_SWITCH_61>

00000000004006c5 <CASE_3_61>:
  4006c5:	83 c0 63             	add    $0x63,%eax

00000000004006c8 <END_SWITCH_61>:
  4006c8:	48 83 c1 01          	add    $0x1,%rcx
  4006cc:	48 83 f9 06          	cmp    $0x6,%rcx
  4006d0:	7c c1                	jl     400693 <LOOP_TOP_61>
  4006d2:	48 8b 54 24 18       	mov    0x18(%rsp),%rdx
  4006d7:	64 48 33 14 25 28 00 	xor    %fs:0x28,%rdx
  4006de:	00 00 
  4006e0:	75 05                	jne    4006e7 <END_SWITCH_61+0x1f>
  4006e2:	48 83 c4 28          	add    $0x28,%rsp
  4006e6:	c3                   	retq   
  4006e7:	e8 94 fd ff ff       	callq  400480 <__stack_chk_fail@plt>
  4006ec:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004006f0 <__libc_csu_init>:
  4006f0:	41 57                	push   %r15
  4006f2:	41 56                	push   %r14
  4006f4:	41 89 ff             	mov    %edi,%r15d
  4006f7:	41 55                	push   %r13
  4006f9:	41 54                	push   %r12
  4006fb:	4c 8d 25 0e 07 20 00 	lea    0x20070e(%rip),%r12        # 600e10 <__frame_dummy_init_array_entry>
  400702:	55                   	push   %rbp
  400703:	48 8d 2d 0e 07 20 00 	lea    0x20070e(%rip),%rbp        # 600e18 <__init_array_end>
  40070a:	53                   	push   %rbx
  40070b:	49 89 f6             	mov    %rsi,%r14
  40070e:	49 89 d5             	mov    %rdx,%r13
  400711:	4c 29 e5             	sub    %r12,%rbp
  400714:	48 83 ec 08          	sub    $0x8,%rsp
  400718:	48 c1 fd 03          	sar    $0x3,%rbp
  40071c:	e8 27 fd ff ff       	callq  400448 <_init>
  400721:	48 85 ed             	test   %rbp,%rbp
  400724:	74 20                	je     400746 <__libc_csu_init+0x56>
  400726:	31 db                	xor    %ebx,%ebx
  400728:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40072f:	00 
  400730:	4c 89 ea             	mov    %r13,%rdx
  400733:	4c 89 f6             	mov    %r14,%rsi
  400736:	44 89 ff             	mov    %r15d,%edi
  400739:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  40073d:	48 83 c3 01          	add    $0x1,%rbx
  400741:	48 39 eb             	cmp    %rbp,%rbx
  400744:	75 ea                	jne    400730 <__libc_csu_init+0x40>
  400746:	48 83 c4 08          	add    $0x8,%rsp
  40074a:	5b                   	pop    %rbx
  40074b:	5d                   	pop    %rbp
  40074c:	41 5c                	pop    %r12
  40074e:	41 5d                	pop    %r13
  400750:	41 5e                	pop    %r14
  400752:	41 5f                	pop    %r15
  400754:	c3                   	retq   
  400755:	90                   	nop
  400756:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40075d:	00 00 00 

0000000000400760 <__libc_csu_fini>:
  400760:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000400764 <_fini>:
  400764:	48 83 ec 08          	sub    $0x8,%rsp
  400768:	48 83 c4 08          	add    $0x8,%rsp
  40076c:	c3                   	retq   

Disassembly of section .rodata:

0000000000400770 <_IO_stdin_used>:
  400770:	01 00                	add    %eax,(%rax)
  400772:	02 00                	add    (%rax),%al
  400774:	65 78 70             	gs js  4007e7 <__GNU_EH_FRAME_HDR+0x4f>
  400777:	65 63 74 65 64       	movslq %gs:0x64(%rbp,%riz,2),%esi
  40077c:	20 3d 20 25 64 0a    	and    %bh,0xa642520(%rip)        # aa42ca2 <_end+0xa441c5a>
  400782:	00 61 63             	add    %ah,0x63(%rcx)
  400785:	74 75                	je     4007fc <__GNU_EH_FRAME_HDR+0x64>
  400787:	61                   	(bad)  
  400788:	6c                   	insb   (%dx),%es:(%rdi)
  400789:	5f                   	pop    %rdi
  40078a:	6c                   	insb   (%dx),%es:(%rdi)
  40078b:	6f                   	outsl  %ds:(%rsi),(%dx)
  40078c:	6f                   	outsl  %ds:(%rsi),(%dx)
  40078d:	70 65                	jo     4007f4 <__GNU_EH_FRAME_HDR+0x5c>
  40078f:	64 20 3d 20 25 64 0a 	and    %bh,%fs:0xa642520(%rip)        # aa42cb6 <_end+0xa441c6e>
	...

Disassembly of section .eh_frame_hdr:

0000000000400798 <__GNU_EH_FRAME_HDR>:
  400798:	01 1b                	add    %ebx,(%rbx)
  40079a:	03 3b                	add    (%rbx),%edi
  40079c:	4c 00 00             	rex.WR add %r8b,(%rax)
  40079f:	00 08                	add    %cl,(%rax)
  4007a1:	00 00                	add    %al,(%rax)
  4007a3:	00 d8                	add    %bl,%al
  4007a5:	fc                   	cld    
  4007a6:	ff                   	(bad)  
  4007a7:	ff 98 00 00 00 28    	lcall  *0x28000000(%rax)
  4007ad:	fd                   	std    
  4007ae:	ff                   	(bad)  
  4007af:	ff 10                	callq  *(%rax)
  4007b1:	01 00                	add    %eax,(%rax)
  4007b3:	00 68 fd             	add    %ch,-0x3(%rax)
  4007b6:	ff                   	(bad)  
  4007b7:	ff 68 00             	ljmp   *0x0(%rax)
  4007ba:	00 00                	add    %al,(%rax)
  4007bc:	68 fe ff ff c0       	pushq  $0xffffffffc0fffffe
  4007c1:	00 00                	add    %al,(%rax)
  4007c3:	00 98 fe ff ff d8    	add    %bl,-0x27000002(%rax)
  4007c9:	00 00                	add    %al,(%rax)
  4007cb:	00 a8 fe ff ff f0    	add    %ch,-0xf000002(%rax)
  4007d1:	00 00                	add    %al,(%rax)
  4007d3:	00 58 ff             	add    %bl,-0x1(%rax)
  4007d6:	ff                   	(bad)  
  4007d7:	ff 28                	ljmp   *(%rax)
  4007d9:	01 00                	add    %eax,(%rax)
  4007db:	00 c8                	add    %cl,%al
  4007dd:	ff                   	(bad)  
  4007de:	ff                   	(bad)  
  4007df:	ff 70 01             	pushq  0x1(%rax)
	...

Disassembly of section .eh_frame:

00000000004007e8 <__FRAME_END__-0x138>:
  4007e8:	14 00                	adc    $0x0,%al
  4007ea:	00 00                	add    %al,(%rax)
  4007ec:	00 00                	add    %al,(%rax)
  4007ee:	00 00                	add    %al,(%rax)
  4007f0:	01 7a 52             	add    %edi,0x52(%rdx)
  4007f3:	00 01                	add    %al,(%rcx)
  4007f5:	78 10                	js     400807 <__GNU_EH_FRAME_HDR+0x6f>
  4007f7:	01 1b                	add    %ebx,(%rbx)
  4007f9:	0c 07                	or     $0x7,%al
  4007fb:	08 90 01 07 10 14    	or     %dl,0x14100701(%rax)
  400801:	00 00                	add    %al,(%rax)
  400803:	00 1c 00             	add    %bl,(%rax,%rax,1)
  400806:	00 00                	add    %al,(%rax)
  400808:	f8                   	clc    
  400809:	fc                   	cld    
  40080a:	ff                   	(bad)  
  40080b:	ff 2a                	ljmp   *(%rdx)
	...
  400815:	00 00                	add    %al,(%rax)
  400817:	00 14 00             	add    %dl,(%rax,%rax,1)
  40081a:	00 00                	add    %al,(%rax)
  40081c:	00 00                	add    %al,(%rax)
  40081e:	00 00                	add    %al,(%rax)
  400820:	01 7a 52             	add    %edi,0x52(%rdx)
  400823:	00 01                	add    %al,(%rcx)
  400825:	78 10                	js     400837 <__GNU_EH_FRAME_HDR+0x9f>
  400827:	01 1b                	add    %ebx,(%rbx)
  400829:	0c 07                	or     $0x7,%al
  40082b:	08 90 01 00 00 24    	or     %dl,0x24000001(%rax)
  400831:	00 00                	add    %al,(%rax)
  400833:	00 1c 00             	add    %bl,(%rax,%rax,1)
  400836:	00 00                	add    %al,(%rax)
  400838:	38 fc                	cmp    %bh,%ah
  40083a:	ff                   	(bad)  
  40083b:	ff 40 00             	incl   0x0(%rax)
  40083e:	00 00                	add    %al,(%rax)
  400840:	00 0e                	add    %cl,(%rsi)
  400842:	10 46 0e             	adc    %al,0xe(%rsi)
  400845:	18 4a 0f             	sbb    %cl,0xf(%rdx)
  400848:	0b 77 08             	or     0x8(%rdi),%esi
  40084b:	80 00 3f             	addb   $0x3f,(%rax)
  40084e:	1a 3b                	sbb    (%rbx),%bh
  400850:	2a 33                	sub    (%rbx),%dh
  400852:	24 22                	and    $0x22,%al
  400854:	00 00                	add    %al,(%rax)
  400856:	00 00                	add    %al,(%rax)
  400858:	14 00                	adc    $0x0,%al
  40085a:	00 00                	add    %al,(%rax)
  40085c:	44 00 00             	add    %r8b,(%rax)
  40085f:	00 a0 fd ff ff 2c    	add    %ah,0x2cfffffd(%rax)
	...
  40086d:	00 00                	add    %al,(%rax)
  40086f:	00 14 00             	add    %dl,(%rax,%rax,1)
  400872:	00 00                	add    %al,(%rax)
  400874:	5c                   	pop    %rsp
  400875:	00 00                	add    %al,(%rax)
  400877:	00 b8 fd ff ff 06    	add    %bh,0x6fffffd(%rax)
	...
  400885:	00 00                	add    %al,(%rax)
  400887:	00 1c 00             	add    %bl,(%rax,%rax,1)
  40088a:	00 00                	add    %al,(%rax)
  40088c:	74 00                	je     40088e <__GNU_EH_FRAME_HDR+0xf6>
  40088e:	00 00                	add    %al,(%rax)
  400890:	b0 fd                	mov    $0xfd,%al
  400892:	ff                   	(bad)  
  400893:	ff ac 00 00 00 00 44 	ljmp   *0x44000000(%rax,%rax,1)
  40089a:	0e                   	(bad)  
  40089b:	30 02                	xor    %al,(%rdx)
  40089d:	a2 0a 0e 08 41 0b 00 	movabs %al,0xb41080e0a
  4008a4:	00 00 
  4008a6:	00 00                	add    %al,(%rax)
  4008a8:	14 00                	adc    $0x0,%al
  4008aa:	00 00                	add    %al,(%rax)
  4008ac:	94                   	xchg   %eax,%esp
  4008ad:	00 00                	add    %al,(%rax)
  4008af:	00 10                	add    %dl,(%rax)
  4008b1:	fc                   	cld    
  4008b2:	ff                   	(bad)  
  4008b3:	ff                   	(bad)  
  4008b4:	3b 00                	cmp    (%rax),%eax
  4008b6:	00 00                	add    %al,(%rax)
  4008b8:	00 44 0e 10          	add    %al,0x10(%rsi,%rcx,1)
  4008bc:	76 0e                	jbe    4008cc <__GNU_EH_FRAME_HDR+0x134>
  4008be:	08 00                	or     %al,(%rax)
  4008c0:	44 00 00             	add    %r8b,(%rax)
  4008c3:	00 ac 00 00 00 28 fe 	add    %ch,-0x1d80000(%rax,%rax,1)
  4008ca:	ff                   	(bad)  
  4008cb:	ff 65 00             	jmpq   *0x0(%rbp)
  4008ce:	00 00                	add    %al,(%rax)
  4008d0:	00 42 0e             	add    %al,0xe(%rdx)
  4008d3:	10 8f 02 42 0e 18    	adc    %cl,0x180e4202(%rdi)
  4008d9:	8e 03                	mov    (%rbx),%es
  4008db:	45 0e                	rex.RB (bad) 
  4008dd:	20 8d 04 42 0e 28    	and    %cl,0x280e4204(%rbp)
  4008e3:	8c 05 48 0e 30 86    	mov    %es,-0x79cff1b8(%rip)        # ffffffff86701731 <_end+0xffffffff861006e9>
  4008e9:	06                   	(bad)  
  4008ea:	48 0e                	rex.W (bad) 
  4008ec:	38 83 07 4d 0e 40    	cmp    %al,0x400e4d07(%rbx)
  4008f2:	72 0e                	jb     400902 <__GNU_EH_FRAME_HDR+0x16a>
  4008f4:	38 41 0e             	cmp    %al,0xe(%rcx)
  4008f7:	30 41 0e             	xor    %al,0xe(%rcx)
  4008fa:	28 42 0e             	sub    %al,0xe(%rdx)
  4008fd:	20 42 0e             	and    %al,0xe(%rdx)
  400900:	18 42 0e             	sbb    %al,0xe(%rdx)
  400903:	10 42 0e             	adc    %al,0xe(%rdx)
  400906:	08 00                	or     %al,(%rax)
  400908:	14 00                	adc    $0x0,%al
  40090a:	00 00                	add    %al,(%rax)
  40090c:	f4                   	hlt    
  40090d:	00 00                	add    %al,(%rax)
  40090f:	00 50 fe             	add    %dl,-0x2(%rax)
  400912:	ff                   	(bad)  
  400913:	ff 02                	incl   (%rdx)
	...

0000000000400920 <__FRAME_END__>:
  400920:	00 00                	add    %al,(%rax)
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
  600e40:	48 04 40             	rex.W add $0x40,%al
  600e43:	00 00                	add    %al,(%rax)
  600e45:	00 00                	add    %al,(%rax)
  600e47:	00 0d 00 00 00 00    	add    %cl,0x0(%rip)        # 600e4d <_DYNAMIC+0x25>
  600e4d:	00 00                	add    %al,(%rax)
  600e4f:	00 64 07 40          	add    %ah,0x40(%rdi,%rax,1)
  600e53:	00 00                	add    %al,(%rax)
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
  600ecf:	00 6c 00 00          	add    %ch,0x0(%rax,%rax,1)
  600ed3:	00 00                	add    %al,(%rax)
  600ed5:	00 00                	add    %al,(%rax)
  600ed7:	00 0b                	add    %cl,(%rbx)
  600ed9:	00 00                	add    %al,(%rax)
  600edb:	00 00                	add    %al,(%rax)
  600edd:	00 00                	add    %al,(%rax)
  600edf:	00 18                	add    %bl,(%rax)
  600ee1:	00 00                	add    %al,(%rax)
  600ee3:	00 00                	add    %al,(%rax)
  600ee5:	00 00                	add    %al,(%rax)
  600ee7:	00 15 00 00 00 00    	add    %dl,0x0(%rip)        # 600eed <_DYNAMIC+0xc5>
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
	...
  600f31:	04 40                	add    $0x40,%al
  600f33:	00 00                	add    %al,(%rax)
  600f35:	00 00                	add    %al,(%rax)
  600f37:	00 07                	add    %al,(%rdi)
  600f39:	00 00                	add    %al,(%rax)
  600f3b:	00 00                	add    %al,(%rax)
  600f3d:	00 00                	add    %al,(%rax)
  600f3f:	00 e8                	add    %ch,%al
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
  600f6f:	00 a8 03 40 00 00    	add    %ch,0x4003(%rax)
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
  600f8f:	00 9c 03 40 00 00 00 	add    %bl,0x40(%rbx,%rax,1)
	...

Disassembly of section .got:

0000000000600ff8 <.got>:
	...

Disassembly of section .got.plt:

0000000000601000 <_GLOBAL_OFFSET_TABLE_>:
  601000:	28 0e                	sub    %cl,(%rsi)
  601002:	60                   	(bad)  
	...
  601017:	00 86 04 40 00 00    	add    %al,0x4004(%rsi)
  60101d:	00 00                	add    %al,(%rax)
  60101f:	00 96 04 40 00 00    	add    %dl,0x4004(%rsi)
  601025:	00 00                	add    %al,(%rax)
  601027:	00 a6 04 40 00 00    	add    %ah,0x4004(%rsi)
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
   8:	75 6e                	jne    78 <_init-0x4003d0>
   a:	74 75                	je     81 <_init-0x4003c7>
   c:	20 35 2e 34 2e 30    	and    %dh,0x302e342e(%rip)        # 302e3440 <_end+0x2fce23f8>
  12:	2d 36 75 62 75       	sub    $0x75627536,%eax
  17:	6e                   	outsb  %ds:(%rsi),(%dx)
  18:	74 75                	je     8f <_init-0x4003b9>
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
  17:	00 ec                	add    %ch,%ah
  19:	00 00                	add    %al,(%rax)
  1b:	00 00                	add    %al,(%rax)
  1d:	00 00                	add    %al,(%rax)
  1f:	00 c0                	add    %al,%al
  21:	04 40                	add    $0x40,%al
  23:	00 00                	add    %al,(%rax)
  25:	00 00                	add    %al,(%rax)
  27:	00 3b                	add    %bh,(%rbx)
	...

Disassembly of section .debug_info:

0000000000000000 <.debug_info>:
   0:	d7                   	xlat   %ds:(%rbx)
   1:	04 00                	add    $0x0,%al
   3:	00 04 00             	add    %al,(%rax,%rax,1)
   6:	00 00                	add    %al,(%rax)
   8:	00 00                	add    %al,(%rax)
   a:	08 01                	or     %al,(%rcx)
   c:	c1 00 00             	roll   $0x0,(%rax)
   f:	00 04 46             	add    %al,(%rsi,%rax,2)
  12:	01 00                	add    %eax,(%rax)
  14:	00 18                	add    %bl,(%rax)
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
  3e:	eb 01                	jmp    41 <_init-0x400407>
  40:	00 00                	add    %al,(%rax)
  42:	03 02                	add    (%rdx),%eax
  44:	07                   	(bad)  
  45:	76 01                	jbe    48 <_init-0x400400>
  47:	00 00                	add    %al,(%rax)
  49:	03 04 07             	add    (%rdi,%rax,1),%eax
  4c:	4b 00 00             	rex.WXB add %al,(%r8)
  4f:	00 03                	add    %al,(%rbx)
  51:	01 06                	add    %eax,(%rsi)
  53:	ed                   	in     (%dx),%eax
  54:	01 00                	add    %eax,(%rax)
  56:	00 03                	add    %al,(%rbx)
  58:	02 05 f9 01 00 00    	add    0x1f9(%rip),%al        # 257 <_init-0x4001f1>
  5e:	04 04                	add    $0x4,%al
  60:	05 69 6e 74 00       	add    $0x746e69,%eax
  65:	03 08                	add    (%rax),%ecx
  67:	05 5d 00 00 00       	add    $0x5d,%eax
  6c:	02 07                	add    (%rdi),%al
  6e:	00 00                	add    %al,(%rax)
  70:	00 04 83             	add    %al,(%rbx,%rax,4)
  73:	65 00 00             	add    %al,%gs:(%rax)
  76:	00 02                	add    %al,(%rdx)
  78:	4d 02 00             	rex.WRB add (%r8),%r8b
  7b:	00 04 84             	add    %al,(%rsp,%rax,4)
  7e:	65 00 00             	add    %al,%gs:(%rax)
  81:	00 03                	add    %al,(%rbx)
  83:	08 07                	or     %al,(%rdi)
  85:	b2 01                	mov    $0x1,%dl
  87:	00 00                	add    %al,(%rax)
  89:	05 08 06 08 91       	add    $0x91080608,%eax
  8e:	00 00                	add    %al,(%rax)
  90:	00 03                	add    %al,(%rbx)
  92:	01 06                	add    %eax,(%rsi)
  94:	f4                   	hlt    
  95:	01 00                	add    %eax,(%rax)
  97:	00 07                	add    %al,(%rdi)
  99:	d4                   	(bad)  
  9a:	01 00                	add    %eax,(%rax)
  9c:	00 d8                	add    %bl,%al
  9e:	05 f1 15 02 00       	add    $0x215f1,%eax
  a3:	00 08                	add    %cl,(%rax)
  a5:	7b 00                	jnp    a7 <_init-0x4003a1>
  a7:	00 00                	add    %al,(%rax)
  a9:	05 f2 5e 00 00       	add    $0x5ef2,%eax
  ae:	00 00                	add    %al,(%rax)
  b0:	08 0f                	or     %cl,(%rdi)
  b2:	00 00                	add    %al,(%rax)
  b4:	00 05 f7 8b 00 00    	add    %al,0x8bf7(%rip)        # 8cb1 <_init-0x3f7797>
  ba:	00 08                	add    %cl,(%rax)
  bc:	08 6e 00             	or     %ch,0x0(%rsi)
  bf:	00 00                	add    %al,(%rax)
  c1:	05 f8 8b 00 00       	add    $0x8bf8,%eax
  c6:	00 10                	add    %dl,(%rax)
  c8:	08 57 02             	or     %dl,0x2(%rdi)
  cb:	00 00                	add    %al,(%rax)
  cd:	05 f9 8b 00 00       	add    $0x8bf9,%eax
  d2:	00 18                	add    %bl,(%rax)
  d4:	08 c3                	or     %al,%bl
  d6:	02 00                	add    (%rax),%al
  d8:	00 05 fa 8b 00 00    	add    %al,0x8bfa(%rip)        # 8cd8 <_init-0x3f7770>
  de:	00 20                	add    %ah,(%rax)
  e0:	08 62 01             	or     %ah,0x1(%rdx)
  e3:	00 00                	add    %al,(%rax)
  e5:	05 fb 8b 00 00       	add    $0x8bfb,%eax
  ea:	00 28                	add    %ch,(%rax)
  ec:	08 bb 01 00 00 05    	or     %bh,0x5000001(%rbx)
  f2:	fc                   	cld    
  f3:	8b 00                	mov    (%rax),%eax
  f5:	00 00                	add    %al,(%rax)
  f7:	30 08                	xor    %cl,(%rax)
  f9:	34 00                	xor    $0x0,%al
  fb:	00 00                	add    %al,(%rax)
  fd:	05 fd 8b 00 00       	add    $0x8bfd,%eax
 102:	00 38                	add    %bh,(%rax)
 104:	08 82 00 00 00 05    	or     %al,0x5000000(%rdx)
 10a:	fe 8b 00 00 00 40    	decb   0x40000000(%rbx)
 110:	09 89 01 00 00 05    	or     %ecx,0x5000001(%rcx)
 116:	00 01                	add    %al,(%rcx)
 118:	8b 00                	mov    (%rax),%eax
 11a:	00 00                	add    %al,(%rax)
 11c:	48 09 a9 02 00 00 05 	or     %rbp,0x5000002(%rcx)
 123:	01 01                	add    %eax,(%rcx)
 125:	8b 00                	mov    (%rax),%eax
 127:	00 00                	add    %al,(%rax)
 129:	50                   	push   %rax
 12a:	09 65 02             	or     %esp,0x2(%rbp)
 12d:	00 00                	add    %al,(%rax)
 12f:	05 02 01 8b 00       	add    $0x8b0102,%eax
 134:	00 00                	add    %al,(%rax)
 136:	58                   	pop    %rax
 137:	09 e2                	or     %esp,%edx
 139:	01 00                	add    %eax,(%rax)
 13b:	00 05 04 01 4d 02    	add    %al,0x24d0104(%rip)        # 24d0245 <_end+0x1ecf1fd>
 141:	00 00                	add    %al,(%rax)
 143:	60                   	(bad)  
 144:	09 1c 00             	or     %ebx,(%rax,%rax,1)
 147:	00 00                	add    %al,(%rax)
 149:	05 06 01 53 02       	add    $0x2530106,%eax
 14e:	00 00                	add    %al,(%rax)
 150:	68 09 66 00 00       	pushq  $0x6609
 155:	00 05 08 01 5e 00    	add    %al,0x5e0108(%rip)        # 5e0263 <__FRAME_END__+0x1df943>
 15b:	00 00                	add    %al,(%rax)
 15d:	70 09                	jo     168 <_init-0x4002e0>
 15f:	9d                   	popfq  
 160:	01 00                	add    %eax,(%rax)
 162:	00 05 0c 01 5e 00    	add    %al,0x5e010c(%rip)        # 5e0274 <__FRAME_END__+0x1df954>
 168:	00 00                	add    %al,(%rax)
 16a:	74 09                	je     175 <_init-0x4002d3>
 16c:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
 16d:	00 00                	add    %al,(%rax)
 16f:	00 05 0e 01 6c 00    	add    %al,0x6c010e(%rip)        # 6c0283 <_end+0xbf23b>
 175:	00 00                	add    %al,(%rax)
 177:	78 09                	js     182 <_init-0x4002c6>
 179:	8e 00                	mov    (%rax),%es
 17b:	00 00                	add    %al,(%rax)
 17d:	05 12 01 42 00       	add    $0x420112,%eax
 182:	00 00                	add    %al,(%rax)
 184:	80 09 09             	orb    $0x9,(%rcx)
 187:	02 00                	add    (%rax),%al
 189:	00 05 13 01 50 00    	add    %al,0x500113(%rip)        # 5002a2 <__FRAME_END__+0xff982>
 18f:	00 00                	add    %al,(%rax)
 191:	82                   	(bad)  
 192:	09 2a                	or     %ebp,(%rdx)
 194:	00 00                	add    %al,(%rax)
 196:	00 05 14 01 59 02    	add    %al,0x2590114(%rip)        # 25902b0 <_end+0x1f8f268>
 19c:	00 00                	add    %al,(%rax)
 19e:	83 09 97             	orl    $0xffffff97,(%rcx)
 1a1:	01 00                	add    %eax,(%rax)
 1a3:	00 05 18 01 69 02    	add    %al,0x2690118(%rip)        # 26902c1 <_end+0x208f279>
 1a9:	00 00                	add    %al,(%rax)
 1ab:	88 09                	mov    %cl,(%rcx)
 1ad:	ab                   	stos   %eax,%es:(%rdi)
 1ae:	00 00                	add    %al,(%rax)
 1b0:	00 05 21 01 77 00    	add    %al,0x770121(%rip)        # 7702d7 <_end+0x16f28f>
 1b6:	00 00                	add    %al,(%rax)
 1b8:	90                   	nop
 1b9:	09 78 02             	or     %edi,0x2(%rax)
 1bc:	00 00                	add    %al,(%rax)
 1be:	05 29 01 89 00       	add    $0x890129,%eax
 1c3:	00 00                	add    %al,(%rax)
 1c5:	98                   	cwtl   
 1c6:	09 7f 02             	or     %edi,0x2(%rdi)
 1c9:	00 00                	add    %al,(%rax)
 1cb:	05 2a 01 89 00       	add    $0x89012a,%eax
 1d0:	00 00                	add    %al,(%rax)
 1d2:	a0 09 86 02 00 00 05 	movabs 0x12b050000028609,%al
 1d9:	2b 01 
 1db:	89 00                	mov    %eax,(%rax)
 1dd:	00 00                	add    %al,(%rax)
 1df:	a8 09                	test   $0x9,%al
 1e1:	8d 02                	lea    (%rdx),%eax
 1e3:	00 00                	add    %al,(%rax)
 1e5:	05 2c 01 89 00       	add    $0x89012c,%eax
 1ea:	00 00                	add    %al,(%rax)
 1ec:	b0 09                	mov    $0x9,%al
 1ee:	94                   	xchg   %eax,%esp
 1ef:	02 00                	add    (%rax),%al
 1f1:	00 05 2e 01 29 00    	add    %al,0x29012e(%rip)        # 290325 <_init-0x170123>
 1f7:	00 00                	add    %al,(%rax)
 1f9:	b8 09 a5 01 00       	mov    $0x1a509,%eax
 1fe:	00 05 2f 01 5e 00    	add    %al,0x5e012f(%rip)        # 5e0333 <__FRAME_END__+0x1dfa13>
 204:	00 00                	add    %al,(%rax)
 206:	c0 09 9b             	rorb   $0x9b,(%rcx)
 209:	02 00                	add    (%rax),%al
 20b:	00 05 31 01 6f 02    	add    %al,0x26f0131(%rip)        # 26f0342 <_end+0x20ef2fa>
 211:	00 00                	add    %al,(%rax)
 213:	c4                   	(bad)  
 214:	00 0a                	add    %cl,(%rdx)
 216:	c9                   	leaveq 
 217:	01 00                	add    %eax,(%rax)
 219:	00 05 96 07 2c 01    	add    %al,0x12c0796(%rip)        # 12c09b5 <_end+0xcbf96d>
 21f:	00 00                	add    %al,(%rax)
 221:	18 05 9c 4d 02 00    	sbb    %al,0x24d9c(%rip)        # 24fc3 <_init-0x3db485>
 227:	00 08                	add    %cl,(%rax)
 229:	47 02 00             	rex.RXB add (%r8),%r8b
 22c:	00 05 9d 4d 02 00    	add    %al,0x24d9d(%rip)        # 24fcf <_init-0x3db479>
 232:	00 00                	add    %al,(%rax)
 234:	08 70 01             	or     %dh,0x1(%rax)
 237:	00 00                	add    %al,(%rax)
 239:	05 9e 53 02 00       	add    $0x2539e,%eax
 23e:	00 08                	add    %cl,(%rax)
 240:	08 dd                	or     %bl,%ch
 242:	01 00                	add    %eax,(%rax)
 244:	00 05 a2 5e 00 00    	add    %al,0x5ea2(%rip)        # 60ec <_init-0x3fa35c>
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
 28b:	08 05 58 00 00 00    	or     %al,0x58(%rip)        # 2e9 <_init-0x40015f>
 291:	0d 5e 00 00 00       	or     $0x5e,%eax
 296:	03 08                	add    (%rax),%ecx
 298:	07                   	(bad)  
 299:	41 00 00             	add    %al,(%r8)
 29c:	00 0e                	add    %cl,(%rsi)
 29e:	03 02                	add    (%rdx),%eax
 2a0:	00 00                	add    %al,(%rax)
 2a2:	01 05 2e 02 00 00    	add    %eax,0x22e(%rip)        # 4d6 <_init-0x3fff72>
 2a8:	01 c0                	add    %eax,%eax
 2aa:	02 00                	add    (%rax),%al
 2ac:	00 0f                	add    %cl,(%rdi)
 2ae:	78 00                	js     2b0 <_init-0x400198>
 2b0:	01 05 5e 00 00 00    	add    %eax,0x5e(%rip)        # 314 <_init-0x400134>
 2b6:	0f 79 00             	vmwrite (%rax),%rax
 2b9:	01 05 c6 02 00 00    	add    %eax,0x2c6(%rip)        # 585 <_init-0x3ffec3>
 2bf:	00 10                	add    %dl,(%rax)
 2c1:	08 5e 00             	or     %bl,0x0(%rsi)
 2c4:	00 00                	add    %al,(%rax)
 2c6:	0d c0 02 00 00       	or     $0x2c0,%eax
 2cb:	11 00                	adc    %eax,(%rax)
 2cd:	00 00                	add    %al,(%rax)
 2cf:	00 02                	add    %al,(%rdx)
 2d1:	66 5e                	pop    %si
 2d3:	00 00                	add    %al,(%rax)
 2d5:	00 03                	add    %al,(%rbx)
 2d7:	e8 02 00 00 12       	callq  120002de <_end+0x119ff296>
 2dc:	72 02                	jb     2e0 <_init-0x400168>
 2de:	00 00                	add    %al,(%rax)
 2e0:	02 66 e8             	add    -0x18(%rsi),%ah
 2e3:	02 00                	add    (%rax),%al
 2e5:	00 13                	add    %dl,(%rbx)
 2e7:	00 14 7f             	add    %dl,(%rdi,%rdi,2)
 2ea:	02 00                	add    (%rax),%al
 2ec:	00 15 9d 02 00 00    	add    %dl,0x29d(%rip)        # 58f <_init-0x3ffeb9>
 2f2:	2e 02 00             	add    %cs:(%rax),%al
 2f5:	00 00                	add    %al,(%rax)
 2f7:	06                   	(bad)  
 2f8:	40 00 00             	add    %al,(%rax)
 2fb:	00 00                	add    %al,(%rax)
 2fd:	00 2c 00             	add    %ch,(%rax,%rax,1)
 300:	00 00                	add    %al,(%rax)
 302:	00 00                	add    %al,(%rax)
 304:	00 00                	add    %al,(%rax)
 306:	01 9c 1b 03 00 00 16 	add    %ebx,0x16000003(%rbx,%rbx,1)
 30d:	ad                   	lods   %ds:(%rsi),%eax
 30e:	02 00                	add    (%rax),%al
 310:	00 01                	add    %al,(%rcx)
 312:	55                   	push   %rbp
 313:	16                   	(bad)  
 314:	b6 02                	mov    $0x2,%dh
 316:	00 00                	add    %al,(%rax)
 318:	01 54 00 17          	add    %edx,0x17(%rax,%rax,1)
 31c:	3d 01 00 00 01       	cmp    $0x1000001,%eax
 321:	12 3a                	adc    (%rdx),%bh
 323:	02 00                	add    (%rax),%al
 325:	00 5e 00             	add    %bl,0x0(%rsi)
 328:	00 00                	add    %al,(%rax)
 32a:	30 06                	xor    %al,(%rsi)
 32c:	40 00 00             	add    %al,(%rax)
 32f:	00 00                	add    %al,(%rax)
 331:	00 06                	add    %al,(%rsi)
 333:	00 00                	add    %al,(%rax)
 335:	00 00                	add    %al,(%rax)
 337:	00 00                	add    %al,(%rax)
 339:	00 01                	add    %al,(%rcx)
 33b:	9c                   	pushfq 
 33c:	54                   	push   %rsp
 33d:	03 00                	add    (%rax),%eax
 33f:	00 18                	add    %bl,(%rax)
 341:	78 73                	js     3b6 <_init-0x400092>
 343:	00 01                	add    %al,(%rcx)
 345:	13 54 03 00          	adc    0x0(%rbx,%rax,1),%edx
 349:	00 18                	add    %bl,(%rax)
 34b:	79 00                	jns    34d <_init-0x4000fb>
 34d:	01 14 5e             	add    %edx,(%rsi,%rbx,2)
 350:	00 00                	add    %al,(%rax)
 352:	00 00                	add    %al,(%rax)
 354:	0b 5e 00             	or     0x0(%rsi),%ebx
 357:	00 00                	add    %al,(%rax)
 359:	64 03 00             	add    %fs:(%rax),%eax
 35c:	00 0c 82             	add    %cl,(%rdx,%rax,4)
 35f:	00 00                	add    %al,(%rax)
 361:	00 05 00 17 b3 00    	add    %al,0xb31700(%rip)        # b31a67 <_end+0x530a1f>
 367:	00 00                	add    %al,(%rax)
 369:	01 1d d2 02 00 00    	add    %ebx,0x2d2(%rip)        # 641 <_init-0x3ffe07>
 36f:	5e                   	pop    %rsi
 370:	00 00                	add    %al,(%rax)
 372:	00 40 06             	add    %al,0x6(%rax)
 375:	40 00 00             	add    %al,(%rax)
 378:	00 00                	add    %al,(%rax)
 37a:	00 ac 00 00 00 00 00 	add    %ch,0x0(%rax,%rax,1)
 381:	00 00                	add    %al,(%rax)
 383:	01 9c b1 03 00 00 19 	add    %ebx,0x19000003(%rcx,%rsi,4)
 38a:	78 73                	js     3ff <_init-0x400049>
 38c:	00 01                	add    %al,(%rcx)
 38e:	1e                   	(bad)  
 38f:	c1 03 00             	roll   $0x0,(%rbx)
 392:	00 02                	add    %al,(%rdx)
 394:	91                   	xchg   %eax,%ecx
 395:	50                   	push   %rax
 396:	1a 79 00             	sbb    0x0(%rcx),%bh
 399:	01 1f                	add    %ebx,(%rdi)
 39b:	5e                   	pop    %rsi
 39c:	00 00                	add    %al,(%rax)
 39e:	00 00                	add    %al,(%rax)
 3a0:	00 00                	add    %al,(%rax)
 3a2:	00 1b                	add    %bl,(%rbx)
 3a4:	ec                   	in     (%dx),%al
 3a5:	06                   	(bad)  
 3a6:	40 00 00             	add    %al,(%rax)
 3a9:	00 00                	add    %al,(%rax)
 3ab:	00 c6                	add    %al,%dh
 3ad:	04 00                	add    $0x0,%al
 3af:	00 00                	add    %al,(%rax)
 3b1:	0b 91 02 00 00 c1    	or     -0x3efffffe(%rcx),%edx
 3b7:	03 00                	add    (%rax),%eax
 3b9:	00 0c 82             	add    %cl,(%rdx,%rax,4)
 3bc:	00 00                	add    %al,(%rax)
 3be:	00 05 00 0d b1 03    	add    %al,0x3b10d00(%rip)        # 3b110c4 <_end+0x351007c>
 3c4:	00 00                	add    %al,(%rax)
 3c6:	1c be                	sbb    $0xbe,%al
 3c8:	02 00                	add    (%rax),%al
 3ca:	00 01                	add    %al,(%rcx)
 3cc:	50                   	push   %rax
 3cd:	5e                   	pop    %rsi
 3ce:	00 00                	add    %al,(%rax)
 3d0:	00 c0                	add    %al,%al
 3d2:	04 40                	add    $0x40,%al
 3d4:	00 00                	add    %al,(%rax)
 3d6:	00 00                	add    %al,(%rax)
 3d8:	00 3b                	add    %bh,(%rbx)
 3da:	00 00                	add    %al,(%rax)
 3dc:	00 00                	add    %al,(%rax)
 3de:	00 00                	add    %al,(%rax)
 3e0:	00 01                	add    %al,(%rcx)
 3e2:	9c                   	pushfq 
 3e3:	aa                   	stos   %al,%es:(%rdi)
 3e4:	04 00                	add    $0x0,%al
 3e6:	00 1d b9 02 00 00    	add    %bl,0x2b9(%rip)        # 6a5 <_init-0x3ffda3>
 3ec:	01 50 5e             	add    %edx,0x5e(%rax)
 3ef:	00 00                	add    %al,(%rax)
 3f1:	00 23                	add    %ah,(%rbx)
 3f3:	00 00                	add    %al,(%rax)
 3f5:	00 1d a4 02 00 00    	add    %bl,0x2a4(%rip)        # 69f <_init-0x3ffda9>
 3fb:	01 50 aa             	add    %edx,-0x56(%rax)
 3fe:	04 00                	add    $0x0,%al
 400:	00 5c 00 00          	add    %bl,0x0(%rax,%rax,1)
 404:	00 1e                	add    %bl,(%rsi)
 406:	cb                   	lret   
 407:	02 00                	add    (%rax),%al
 409:	00 c9                	add    %cl,%cl
 40b:	04 40                	add    $0x40,%al
 40d:	00 00                	add    %al,(%rax)
 40f:	00 00                	add    %al,(%rax)
 411:	00 13                	add    %dl,(%rbx)
 413:	00 00                	add    %al,(%rax)
 415:	00 00                	add    %al,(%rax)
 417:	00 00                	add    %al,(%rax)
 419:	00 01                	add    %al,(%rcx)
 41b:	51                   	push   %rcx
 41c:	4a 04 00             	rex.WX add $0x0,%al
 41f:	00 1f                	add    %bl,(%rdi)
 421:	db 02                	fildl  (%rdx)
 423:	00 00                	add    %al,(%rax)
 425:	95                   	xchg   %eax,%ebp
 426:	00 00                	add    %al,(%rax)
 428:	00 20                	add    %ah,(%rax)
 42a:	dc 04 40             	faddl  (%rax,%rax,2)
 42d:	00 00                	add    %al,(%rax)
 42f:	00 00                	add    %al,(%rax)
 431:	00 cf                	add    %cl,%bh
 433:	04 00                	add    $0x0,%al
 435:	00 21                	add    %ah,(%rcx)
 437:	01 55 01             	add    %edx,0x1(%rbp)
 43a:	31 21                	xor    %esp,(%rcx)
 43c:	01 54 09 03          	add    %edx,0x3(%rcx,%rcx,1)
 440:	74 07                	je     449 <_init-0x3fffff>
 442:	40 00 00             	add    %al,(%rax)
 445:	00 00                	add    %al,(%rax)
 447:	00 00                	add    %al,(%rax)
 449:	00 1e                	add    %bl,(%rsi)
 44b:	cb                   	lret   
 44c:	02 00                	add    (%rax),%al
 44e:	00 e1                	add    %ah,%cl
 450:	04 40                	add    $0x40,%al
 452:	00 00                	add    %al,(%rax)
 454:	00 00                	add    %al,(%rax)
 456:	00 13                	add    %dl,(%rbx)
 458:	00 00                	add    %al,(%rax)
 45a:	00 00                	add    %al,(%rax)
 45c:	00 00                	add    %al,(%rax)
 45e:	00 01                	add    %al,(%rcx)
 460:	52                   	push   %rdx
 461:	8f 04 00             	popq   (%rax,%rax,1)
 464:	00 1f                	add    %bl,(%rdi)
 466:	db 02                	fildl  (%rdx)
 468:	00 00                	add    %al,(%rax)
 46a:	c1 00 00             	roll   $0x0,(%rax)
 46d:	00 20                	add    %ah,(%rax)
 46f:	f4                   	hlt    
 470:	04 40                	add    $0x40,%al
 472:	00 00                	add    %al,(%rax)
 474:	00 00                	add    %al,(%rax)
 476:	00 cf                	add    %cl,%bh
 478:	04 00                	add    $0x0,%al
 47a:	00 21                	add    %ah,(%rcx)
 47c:	01 55 01             	add    %edx,0x1(%rbp)
 47f:	31 21                	xor    %esp,(%rcx)
 481:	01 54 09 03          	add    %edx,0x3(%rcx,%rcx,1)
 485:	83 07 40             	addl   $0x40,(%rdi)
 488:	00 00                	add    %al,(%rax)
 48a:	00 00                	add    %al,(%rax)
 48c:	00 00                	add    %al,(%rax)
 48e:	00 1b                	add    %bl,(%rbx)
 490:	c9                   	leaveq 
 491:	04 40                	add    $0x40,%al
 493:	00 00                	add    %al,(%rax)
 495:	00 00                	add    %al,(%rax)
 497:	00 1b                	add    %bl,(%rbx)
 499:	03 00                	add    (%rax),%eax
 49b:	00 1b                	add    %bl,(%rbx)
 49d:	e1 04                	loope  4a3 <_init-0x3fffa5>
 49f:	40 00 00             	add    %al,(%rax)
 4a2:	00 00                	add    %al,(%rax)
 4a4:	00 64 03 00          	add    %ah,0x0(%rbx,%rax,1)
 4a8:	00 00                	add    %al,(%rax)
 4aa:	06                   	(bad)  
 4ab:	08 8b 00 00 00 22    	or     %cl,0x22000000(%rbx)
 4b1:	37                   	(bad)  
 4b2:	01 00                	add    %eax,(%rax)
 4b4:	00 06                	add    %al,(%rsi)
 4b6:	a8 53                	test   $0x53,%al
 4b8:	02 00                	add    (%rax),%al
 4ba:	00 22                	add    %ah,(%rdx)
 4bc:	ab                   	stos   %eax,%es:(%rdi)
 4bd:	01 00                	add    %eax,(%rax)
 4bf:	00 06                	add    %al,(%rsi)
 4c1:	a9 53 02 00 00       	test   $0x253,%eax
 4c6:	23 1d 02 00 00 1d    	and    0x1d000002(%rip),%ebx        # 1d0004ce <_end+0x1c9ff486>
 4cc:	02 00                	add    (%rax),%al
 4ce:	00 24 9a             	add    %ah,(%rdx,%rbx,4)
 4d1:	00 00                	add    %al,(%rax)
 4d3:	00 9a 00 00 00 02    	add    %bl,0x2000000(%rdx)
 4d9:	57                   	push   %rdi
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
  d5:	12 05 00 03 0e 3a    	adc    0x3a0e0300(%rip),%al        # 3a0e03db <_end+0x39adf393>
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
 144:	34 00                	xor    $0x0,%al
 146:	03 08                	add    (%rax),%ecx
 148:	3a 0b                	cmp    (%rbx),%cl
 14a:	3b 0b                	cmp    (%rbx),%ecx
 14c:	49 13 02             	adc    (%r10),%rax
 14f:	17                   	(bad)  
 150:	00 00                	add    %al,(%rax)
 152:	1b 89 82 01 00 11    	sbb    0x11000182(%rcx),%ecx
 158:	01 31                	add    %esi,(%rcx)
 15a:	13 00                	adc    (%rax),%eax
 15c:	00 1c 2e             	add    %bl,(%rsi,%rbp,1)
 15f:	01 3f                	add    %edi,(%rdi)
 161:	19 03                	sbb    %eax,(%rbx)
 163:	0e                   	(bad)  
 164:	3a 0b                	cmp    (%rbx),%cl
 166:	3b 0b                	cmp    (%rbx),%ecx
 168:	49 13 11             	adc    (%r9),%rdx
 16b:	01 12                	add    %edx,(%rdx)
 16d:	07                   	(bad)  
 16e:	40 18 97 42 19 01 13 	sbb    %dl,0x13011942(%rdi)
 175:	00 00                	add    %al,(%rax)
 177:	1d 05 00 03 0e       	sbb    $0xe030005,%eax
 17c:	3a 0b                	cmp    (%rbx),%cl
 17e:	3b 0b                	cmp    (%rbx),%ecx
 180:	49 13 02             	adc    (%r10),%rax
 183:	17                   	(bad)  
 184:	00 00                	add    %al,(%rax)
 186:	1e                   	(bad)  
 187:	1d 01 31 13 11       	sbb    $0x11133101,%eax
 18c:	01 12                	add    %edx,(%rdx)
 18e:	07                   	(bad)  
 18f:	58                   	pop    %rax
 190:	0b 59 0b             	or     0xb(%rcx),%ebx
 193:	01 13                	add    %edx,(%rbx)
 195:	00 00                	add    %al,(%rax)
 197:	1f                   	(bad)  
 198:	05 00 31 13 02       	add    $0x2133100,%eax
 19d:	17                   	(bad)  
 19e:	00 00                	add    %al,(%rax)
 1a0:	20 89 82 01 01 11    	and    %cl,0x11010182(%rcx)
 1a6:	01 31                	add    %esi,(%rcx)
 1a8:	13 00                	adc    (%rax),%eax
 1aa:	00 21                	add    %ah,(%rcx)
 1ac:	8a 82 01 00 02 18    	mov    0x18020001(%rdx),%al
 1b2:	91                   	xchg   %eax,%ecx
 1b3:	42 18 00             	rex.X sbb %al,(%rax)
 1b6:	00 22                	add    %ah,(%rdx)
 1b8:	34 00                	xor    $0x0,%al
 1ba:	03 0e                	add    (%rsi),%ecx
 1bc:	3a 0b                	cmp    (%rbx),%cl
 1be:	3b 0b                	cmp    (%rbx),%ecx
 1c0:	49 13 3f             	adc    (%r15),%rdi
 1c3:	19 3c 19             	sbb    %edi,(%rcx,%rbx,1)
 1c6:	00 00                	add    %al,(%rax)
 1c8:	23 2e                	and    (%rsi),%ebp
 1ca:	00 3f                	add    %bh,(%rdi)
 1cc:	19 3c 19             	sbb    %edi,(%rcx,%rbx,1)
 1cf:	6e                   	outsb  %ds:(%rsi),(%dx)
 1d0:	0e                   	(bad)  
 1d1:	03 0e                	add    (%rsi),%ecx
 1d3:	00 00                	add    %al,(%rax)
 1d5:	24 2e                	and    $0x2e,%al
 1d7:	00 3f                	add    %bh,(%rdi)
 1d9:	19 3c 19             	sbb    %edi,(%rcx,%rbx,1)
 1dc:	6e                   	outsb  %ds:(%rsi),(%dx)
 1dd:	0e                   	(bad)  
 1de:	03 0e                	add    (%rsi),%ecx
 1e0:	3a 0b                	cmp    (%rbx),%cl
 1e2:	3b 0b                	cmp    (%rbx),%ecx
 1e4:	00 00                	add    %al,(%rax)
	...

Disassembly of section .debug_line:

0000000000000000 <.debug_line>:
   0:	19 01                	sbb    %eax,(%rcx)
   2:	00 00                	add    %al,(%rax)
   4:	02 00                	add    (%rax),%al
   6:	c3                   	retq   
   7:	00 00                	add    %al,(%rax)
   9:	00 01                	add    %al,(%rcx)
   b:	01 fb                	add    %edi,%ebx
   d:	0e                   	(bad)  
   e:	0d 00 01 01 01       	or     $0x1010100,%eax
  13:	01 00                	add    %eax,(%rax)
  15:	00 00                	add    %al,(%rax)
  17:	01 00                	add    %eax,(%rax)
  19:	00 01                	add    %al,(%rcx)
  1b:	73 72                	jae    8f <_init-0x4003b9>
  1d:	63 2f                	movslq (%rdi),%ebp
  1f:	6a 75                	pushq  $0x75
  21:	6d                   	insl   (%dx),%es:(%rdi)
  22:	70 74                	jo     98 <_init-0x4003b0>
  24:	61                   	(bad)  
  25:	62                   	(bad)  
  26:	6c                   	insb   (%dx),%es:(%rdi)
  27:	65 00 2f             	add    %ch,%gs:(%rdi)
  2a:	75 73                	jne    9f <_init-0x4003a9>
  2c:	72 2f                	jb     5d <_init-0x4003eb>
  2e:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%rsi),%ebp
  35:	2f                   	(bad)  
  36:	78 38                	js     70 <_init-0x4003d8>
  38:	36 5f                	ss pop %rdi
  3a:	36 34 2d             	ss xor $0x2d,%al
  3d:	6c                   	insb   (%dx),%es:(%rdi)
  3e:	69 6e 75 78 2d 67 6e 	imul   $0x6e672d78,0x75(%rsi),%ebp
  45:	75 2f                	jne    76 <_init-0x4003d2>
  47:	62                   	(bad)  
  48:	69 74 73 00 2f 75 73 	imul   $0x7273752f,0x0(%rbx,%rsi,2),%esi
  4f:	72 
  50:	2f                   	(bad)  
  51:	6c                   	insb   (%dx),%es:(%rdi)
  52:	69 62 2f 67 63 63 2f 	imul   $0x2f636367,0x2f(%rdx),%esp
  59:	78 38                	js     93 <_init-0x4003b5>
  5b:	36 5f                	ss pop %rdi
  5d:	36 34 2d             	ss xor $0x2d,%al
  60:	6c                   	insb   (%dx),%es:(%rdi)
  61:	69 6e 75 78 2d 67 6e 	imul   $0x6e672d78,0x75(%rsi),%ebp
  68:	75 2f                	jne    99 <_init-0x4003af>
  6a:	35 2f 69 6e 63       	xor    $0x636e692f,%eax
  6f:	6c                   	insb   (%dx),%es:(%rdi)
  70:	75 64                	jne    d6 <_init-0x400372>
  72:	65 00 2f             	add    %ch,%gs:(%rdi)
  75:	75 73                	jne    ea <_init-0x40035e>
  77:	72 2f                	jb     a8 <_init-0x4003a0>
  79:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%rsi),%ebp
  80:	00 00                	add    %al,(%rax)
  82:	6a 75                	pushq  $0x75
  84:	6d                   	insl   (%dx),%es:(%rdi)
  85:	70 74                	jo     fb <_init-0x40034d>
  87:	61                   	(bad)  
  88:	62                   	(bad)  
  89:	6c                   	insb   (%dx),%es:(%rdi)
  8a:	65 2e 63 70 70       	gs movslq %cs:0x70(%rax),%esi
  8f:	00 01                	add    %al,(%rcx)
  91:	00 00                	add    %al,(%rax)
  93:	73 74                	jae    109 <_init-0x40033f>
  95:	64 69 6f 32 2e 68 00 	imul   $0x200682e,%fs:0x32(%rdi),%ebp
  9c:	02 
  9d:	00 00                	add    %al,(%rax)
  9f:	73 74                	jae    115 <_init-0x400333>
  a1:	64 64 65 66 2e 68 00 	fs fs gs cs pushw $0x300
  a8:	03 
  a9:	00 00                	add    %al,(%rax)
  ab:	74 79                	je     126 <_init-0x400322>
  ad:	70 65                	jo     114 <_init-0x400334>
  af:	73 2e                	jae    df <_init-0x400369>
  b1:	68 00 02 00 00       	pushq  $0x200
  b6:	6c                   	insb   (%dx),%es:(%rdi)
  b7:	69 62 69 6f 2e 68 00 	imul   $0x682e6f,0x69(%rdx),%esp
  be:	04 00                	add    $0x0,%al
  c0:	00 73 74             	add    %dh,0x74(%rbx)
  c3:	64 69 6f 2e 68 00 04 	imul   $0x40068,%fs:0x2e(%rdi),%ebp
  ca:	00 
  cb:	00 00                	add    %al,(%rax)
  cd:	00 09                	add    %cl,(%rcx)
  cf:	02 00                	add    (%rax),%al
  d1:	06                   	(bad)  
  d2:	40 00 00             	add    %al,(%rax)
  d5:	00 00                	add    %al,(%rax)
  d7:	00 16                	add    %dl,(%rsi)
  d9:	13 de                	adc    %esi,%ebx
  db:	03 7a 9e             	add    -0x62(%rdx),%edi
  de:	86 80 8a 1a f5 4a    	xchg   %al,0x4af51a8a(%rax)
  e4:	f3 03 2d 02 2f 01 02 	repz add 0x2012f02(%rip),%ebp        # 2012fed <_end+0x1a11fa5>
  eb:	4f 15 02 1a 00 01    	rex.WRXB adc $0x1001a02,%rax
  f1:	01 00                	add    %eax,(%rax)
  f3:	09 02                	or     %eax,(%rdx)
  f5:	c0 04 40 00          	rolb   $0x0,(%rax,%rax,2)
  f9:	00 00                	add    %al,(%rax)
  fb:	00 00                	add    %al,(%rax)
  fd:	03 cf                	add    %edi,%ecx
  ff:	00 01                	add    %al,(%rcx)
 101:	4b 04 02             	rex.WXB add $0x2,%al
 104:	03 17                	add    (%rdi),%edx
 106:	58                   	pop    %rax
 107:	04 01                	add    $0x1,%al
 109:	03 6a 08             	add    0x8(%rdx),%ebp
 10c:	2e 04 02             	cs add $0x2,%al
 10f:	03 16                	add    (%rsi),%edx
 111:	58                   	pop    %rax
 112:	04 01                	add    $0x1,%al
 114:	03 6c 08 2e          	add    0x2e(%rax,%rcx,1),%ebp
 118:	02 07                	add    (%rdi),%al
 11a:	00 01                	add    %al,(%rcx)
 11c:	01                   	.byte 0x1

Disassembly of section .debug_str:

0000000000000000 <.debug_str>:
   0:	70 72                	jo     74 <_init-0x4003d4>
   2:	69 6e 74 66 00 5f 5f 	imul   $0x5f5f0066,0x74(%rsi),%ebp
   9:	6f                   	outsl  %ds:(%rsi),(%dx)
   a:	66 66 5f             	data16 pop %di
   d:	74 00                	je     f <_init-0x400439>
   f:	5f                   	pop    %rdi
  10:	49                   	rex.WB
  11:	4f 5f                	rex.WRXB pop %r15
  13:	72 65                	jb     7a <_init-0x4003ce>
  15:	61                   	(bad)  
  16:	64 5f                	fs pop %rdi
  18:	70 74                	jo     8e <_init-0x4003ba>
  1a:	72 00                	jb     1c <_init-0x40042c>
  1c:	5f                   	pop    %rdi
  1d:	63 68 61             	movslq 0x61(%rax),%ebp
  20:	69 6e 00 73 69 7a 65 	imul   $0x657a6973,0x0(%rsi),%ebp
  27:	5f                   	pop    %rdi
  28:	74 00                	je     2a <_init-0x40041e>
  2a:	5f                   	pop    %rdi
  2b:	73 68                	jae    95 <_init-0x4003b3>
  2d:	6f                   	outsl  %ds:(%rsi),(%dx)
  2e:	72 74                	jb     a4 <_init-0x4003a4>
  30:	62                   	(bad)  
  31:	75 66                	jne    99 <_init-0x4003af>
  33:	00 5f 49             	add    %bl,0x49(%rdi)
  36:	4f 5f                	rex.WRXB pop %r15
  38:	62                   	(bad)  
  39:	75 66                	jne    a1 <_init-0x4003a7>
  3b:	5f                   	pop    %rdi
  3c:	62 61                	(bad)  
  3e:	73 65                	jae    a5 <_init-0x4003a3>
  40:	00 6c 6f 6e          	add    %ch,0x6e(%rdi,%rbp,2)
  44:	67 20 6c 6f 6e       	and    %ch,0x6e(%edi,%ebp,2)
  49:	67 20 75 6e          	and    %dh,0x6e(%ebp)
  4d:	73 69                	jae    b8 <_init-0x400390>
  4f:	67 6e                	outsb  %ds:(%esi),(%dx)
  51:	65 64 20 69 6e       	gs and %ch,%fs:0x6e(%rcx)
  56:	74 00                	je     58 <_init-0x4003f0>
  58:	6c                   	insb   (%dx),%es:(%rdi)
  59:	6f                   	outsl  %ds:(%rsi),(%dx)
  5a:	6e                   	outsb  %ds:(%rsi),(%dx)
  5b:	67 20 6c 6f 6e       	and    %ch,0x6e(%edi,%ebp,2)
  60:	67 20 69 6e          	and    %ch,0x6e(%ecx)
  64:	74 00                	je     66 <_init-0x4003e2>
  66:	5f                   	pop    %rdi
  67:	66 69 6c 65 6e 6f 00 	imul   $0x6f,0x6e(%rbp,%riz,2),%bp
  6e:	5f                   	pop    %rdi
  6f:	49                   	rex.WB
  70:	4f 5f                	rex.WRXB pop %r15
  72:	72 65                	jb     d9 <_init-0x40036f>
  74:	61                   	(bad)  
  75:	64 5f                	fs pop %rdi
  77:	65 6e                	outsb  %gs:(%rsi),(%dx)
  79:	64 00 5f 66          	add    %bl,%fs:0x66(%rdi)
  7d:	6c                   	insb   (%dx),%es:(%rdi)
  7e:	61                   	(bad)  
  7f:	67 73 00             	addr32 jae 82 <_init-0x4003c6>
  82:	5f                   	pop    %rdi
  83:	49                   	rex.WB
  84:	4f 5f                	rex.WRXB pop %r15
  86:	62                   	(bad)  
  87:	75 66                	jne    ef <_init-0x400359>
  89:	5f                   	pop    %rdi
  8a:	65 6e                	outsb  %gs:(%rsi),(%dx)
  8c:	64 00 5f 63          	add    %bl,%fs:0x63(%rdi)
  90:	75 72                	jne    104 <_init-0x400344>
  92:	5f                   	pop    %rdi
  93:	63 6f 6c             	movslq 0x6c(%rdi),%ebp
  96:	75 6d                	jne    105 <_init-0x400343>
  98:	6e                   	outsb  %ds:(%rsi),(%dx)
  99:	00 5f 5f             	add    %bl,0x5f(%rdi)
  9c:	70 72                	jo     110 <_init-0x400338>
  9e:	69 6e 74 66 5f 63 68 	imul   $0x68635f66,0x74(%rsi),%ebp
  a5:	6b 00 5f             	imul   $0x5f,(%rax),%eax
  a8:	6f                   	outsl  %ds:(%rsi),(%dx)
  a9:	6c                   	insb   (%dx),%es:(%rdi)
  aa:	64 5f                	fs pop %rdi
  ac:	6f                   	outsl  %ds:(%rsi),(%dx)
  ad:	66 66 73 65          	data16 data16 jae 116 <_init-0x400332>
  b1:	74 00                	je     b3 <_init-0x400395>
  b3:	61                   	(bad)  
  b4:	63 74 75 61          	movslq 0x61(%rbp,%rsi,2),%esi
  b8:	6c                   	insb   (%dx),%es:(%rdi)
  b9:	5f                   	pop    %rdi
  ba:	6c                   	insb   (%dx),%es:(%rdi)
  bb:	6f                   	outsl  %ds:(%rsi),(%dx)
  bc:	6f                   	outsl  %ds:(%rsi),(%dx)
  bd:	70 65                	jo     124 <_init-0x400324>
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
  d9:	20 2d 6d 61 76 78    	and    %ch,0x7876616d(%rip)        # 7876624c <_end+0x78165204>
  df:	35 31 32 66 20       	xor    $0x20663231,%eax
  e4:	2d 6d 74 75 6e       	sub    $0x6e75746d,%eax
  e9:	65 3d 67 65 6e 65    	gs cmp $0x656e6567,%eax
  ef:	72 69                	jb     15a <_init-0x4002ee>
  f1:	63 20                	movslq (%rax),%esp
  f3:	2d 6d 61 72 63       	sub    $0x6372616d,%eax
  f8:	68 3d 78 38 36       	pushq  $0x3638783d
  fd:	2d 36 34 20 2d       	sub    $0x2d203436,%eax
 102:	67 20 2d 4f 33 20 2d 	and    %ch,0x2d20334f(%eip)        # 2d203458 <_end+0x2cc02410>
 109:	73 74                	jae    17f <_init-0x4002c9>
 10b:	64 3d 63 2b 2b 31    	fs cmp $0x312b2b63,%eax
 111:	31 20                	xor    %esp,(%rax)
 113:	2d 66 73 74 61       	sub    $0x61747366,%eax
 118:	63 6b 2d             	movslq 0x2d(%rbx),%ebp
 11b:	70 72                	jo     18f <_init-0x4002b9>
 11d:	6f                   	outsl  %ds:(%rsi),(%dx)
 11e:	74 65                	je     185 <_init-0x4002c3>
 120:	63 74 6f 72          	movslq 0x72(%rdi,%rbp,2),%esi
 124:	2d 73 74 72 6f       	sub    $0x6f727473,%eax
 129:	6e                   	outsb  %ds:(%rsi),(%dx)
 12a:	67 00 5f 49          	add    %bl,0x49(%edi)
 12e:	4f 5f                	rex.WRXB pop %r15
 130:	6d                   	insl   (%dx),%es:(%rdi)
 131:	61                   	(bad)  
 132:	72 6b                	jb     19f <_init-0x4002a9>
 134:	65 72 00             	gs jb  137 <_init-0x400311>
 137:	73 74                	jae    1ad <_init-0x40029b>
 139:	64 69 6e 00 65 78 70 	imul   $0x65707865,%fs:0x0(%rsi),%ebp
 140:	65 
 141:	63 74 65 64          	movslq 0x64(%rbp,%riz,2),%esi
 145:	00 73 72             	add    %dh,0x72(%rbx)
 148:	63 2f                	movslq (%rdi),%ebp
 14a:	6a 75                	pushq  $0x75
 14c:	6d                   	insl   (%dx),%es:(%rdi)
 14d:	70 74                	jo     1c3 <_init-0x400285>
 14f:	61                   	(bad)  
 150:	62                   	(bad)  
 151:	6c                   	insb   (%dx),%es:(%rdi)
 152:	65 2f                	gs (bad) 
 154:	6a 75                	pushq  $0x75
 156:	6d                   	insl   (%dx),%es:(%rdi)
 157:	70 74                	jo     1cd <_init-0x40027b>
 159:	61                   	(bad)  
 15a:	62                   	(bad)  
 15b:	6c                   	insb   (%dx),%es:(%rdi)
 15c:	65 2e 63 70 70       	gs movslq %cs:0x70(%rax),%esi
 161:	00 5f 49             	add    %bl,0x49(%rdi)
 164:	4f 5f                	rex.WRXB pop %r15
 166:	77 72                	ja     1da <_init-0x40026e>
 168:	69 74 65 5f 70 74 72 	imul   $0x727470,0x5f(%rbp,%riz,2),%esi
 16f:	00 
 170:	5f                   	pop    %rdi
 171:	73 62                	jae    1d5 <_init-0x400273>
 173:	75 66                	jne    1db <_init-0x40026d>
 175:	00 73 68             	add    %dh,0x68(%rbx)
 178:	6f                   	outsl  %ds:(%rsi),(%dx)
 179:	72 74                	jb     1ef <_init-0x400259>
 17b:	20 75 6e             	and    %dh,0x6e(%rbp)
 17e:	73 69                	jae    1e9 <_init-0x40025f>
 180:	67 6e                	outsb  %ds:(%esi),(%dx)
 182:	65 64 20 69 6e       	gs and %ch,%fs:0x6e(%rcx)
 187:	74 00                	je     189 <_init-0x4002bf>
 189:	5f                   	pop    %rdi
 18a:	49                   	rex.WB
 18b:	4f 5f                	rex.WRXB pop %r15
 18d:	73 61                	jae    1f0 <_init-0x400258>
 18f:	76 65                	jbe    1f6 <_init-0x400252>
 191:	5f                   	pop    %rdi
 192:	62 61                	(bad)  
 194:	73 65                	jae    1fb <_init-0x40024d>
 196:	00 5f 6c             	add    %bl,0x6c(%rdi)
 199:	6f                   	outsl  %ds:(%rsi),(%dx)
 19a:	63 6b 00             	movslq 0x0(%rbx),%ebp
 19d:	5f                   	pop    %rdi
 19e:	66 6c                	data16 insb (%dx),%es:(%rdi)
 1a0:	61                   	(bad)  
 1a1:	67 73 32             	addr32 jae 1d6 <_init-0x400272>
 1a4:	00 5f 6d             	add    %bl,0x6d(%rdi)
 1a7:	6f                   	outsl  %ds:(%rsi),(%dx)
 1a8:	64 65 00 73 74       	fs add %dh,%gs:0x74(%rbx)
 1ad:	64 6f                	outsl  %fs:(%rsi),(%dx)
 1af:	75 74                	jne    225 <_init-0x400223>
 1b1:	00 73 69             	add    %dh,0x69(%rbx)
 1b4:	7a 65                	jp     21b <_init-0x40022d>
 1b6:	74 79                	je     231 <_init-0x400217>
 1b8:	70 65                	jo     21f <_init-0x400229>
 1ba:	00 5f 49             	add    %bl,0x49(%rdi)
 1bd:	4f 5f                	rex.WRXB pop %r15
 1bf:	77 72                	ja     233 <_init-0x400215>
 1c1:	69 74 65 5f 65 6e 64 	imul   $0x646e65,0x5f(%rbp,%riz,2),%esi
 1c8:	00 
 1c9:	5f                   	pop    %rdi
 1ca:	49                   	rex.WB
 1cb:	4f 5f                	rex.WRXB pop %r15
 1cd:	6c                   	insb   (%dx),%es:(%rdi)
 1ce:	6f                   	outsl  %ds:(%rsi),(%dx)
 1cf:	63 6b 5f             	movslq 0x5f(%rbx),%ebp
 1d2:	74 00                	je     1d4 <_init-0x400274>
 1d4:	5f                   	pop    %rdi
 1d5:	49                   	rex.WB
 1d6:	4f 5f                	rex.WRXB pop %r15
 1d8:	46                   	rex.RX
 1d9:	49                   	rex.WB
 1da:	4c                   	rex.WR
 1db:	45 00 5f 70          	add    %r11b,0x70(%r15)
 1df:	6f                   	outsl  %ds:(%rsi),(%dx)
 1e0:	73 00                	jae    1e2 <_init-0x400266>
 1e2:	5f                   	pop    %rdi
 1e3:	6d                   	insl   (%dx),%es:(%rdi)
 1e4:	61                   	(bad)  
 1e5:	72 6b                	jb     252 <_init-0x4001f6>
 1e7:	65 72 73             	gs jb  25d <_init-0x4001eb>
 1ea:	00 75 6e             	add    %dh,0x6e(%rbp)
 1ed:	73 69                	jae    258 <_init-0x4001f0>
 1ef:	67 6e                	outsb  %ds:(%esi),(%dx)
 1f1:	65 64 20 63 68       	gs and %ah,%fs:0x68(%rbx)
 1f6:	61                   	(bad)  
 1f7:	72 00                	jb     1f9 <_init-0x40024f>
 1f9:	73 68                	jae    263 <_init-0x4001e5>
 1fb:	6f                   	outsl  %ds:(%rsi),(%dx)
 1fc:	72 74                	jb     272 <_init-0x4001d6>
 1fe:	20 69 6e             	and    %ch,0x6e(%rcx)
 201:	74 00                	je     203 <_init-0x400245>
 203:	74 61                	je     266 <_init-0x4001e2>
 205:	62                   	(bad)  
 206:	6c                   	insb   (%dx),%es:(%rdi)
 207:	65 00 5f 76          	add    %bl,%gs:0x76(%rdi)
 20b:	74 61                	je     26e <_init-0x4001da>
 20d:	62                   	(bad)  
 20e:	6c                   	insb   (%dx),%es:(%rdi)
 20f:	65 5f                	gs pop %rdi
 211:	6f                   	outsl  %ds:(%rsi),(%dx)
 212:	66 66 73 65          	data16 data16 jae 27b <_init-0x4001cd>
 216:	74 00                	je     218 <_init-0x400230>
 218:	2f                   	(bad)  
 219:	73 72                	jae    28d <_init-0x4001bb>
 21b:	63 00                	movslq (%rax),%eax
 21d:	5f                   	pop    %rdi
 21e:	5f                   	pop    %rdi
 21f:	73 74                	jae    295 <_init-0x4001b3>
 221:	61                   	(bad)  
 222:	63 6b 5f             	movslq 0x5f(%rbx),%ebp
 225:	63 68 6b             	movslq 0x6b(%rax),%ebp
 228:	5f                   	pop    %rdi
 229:	66 61                	data16 (bad) 
 22b:	69 6c 00 5f 5a 35 74 	imul   $0x6174355a,0x5f(%rax,%rax,1),%ebp
 232:	61 
 233:	62                   	(bad)  
 234:	6c                   	insb   (%dx),%es:(%rdi)
 235:	65 69 52 69 00 5f 5a 	imul   $0x385a5f00,%gs:0x69(%rdx),%edx
 23c:	38 
 23d:	65 78 70             	gs js  2b0 <_init-0x400198>
 240:	65 63 74 65 64       	movslq %gs:0x64(%rbp,%riz,2),%esi
 245:	76 00                	jbe    247 <_init-0x400201>
 247:	5f                   	pop    %rdi
 248:	6e                   	outsb  %ds:(%rsi),(%dx)
 249:	65 78 74             	gs js  2c0 <_init-0x400188>
 24c:	00 5f 5f             	add    %bl,0x5f(%rdi)
 24f:	6f                   	outsl  %ds:(%rsi),(%dx)
 250:	66 66 36 34 5f       	data16 data16 ss xor $0x5f,%al
 255:	74 00                	je     257 <_init-0x4001f1>
 257:	5f                   	pop    %rdi
 258:	49                   	rex.WB
 259:	4f 5f                	rex.WRXB pop %r15
 25b:	72 65                	jb     2c2 <_init-0x400186>
 25d:	61                   	(bad)  
 25e:	64 5f                	fs pop %rdi
 260:	62 61                	(bad)  
 262:	73 65                	jae    2c9 <_init-0x40017f>
 264:	00 5f 49             	add    %bl,0x49(%rdi)
 267:	4f 5f                	rex.WRXB pop %r15
 269:	73 61                	jae    2cc <_init-0x40017c>
 26b:	76 65                	jbe    2d2 <_init-0x400176>
 26d:	5f                   	pop    %rdi
 26e:	65 6e                	outsb  %gs:(%rsi),(%dx)
 270:	64 00 5f 5f          	add    %bl,%fs:0x5f(%rdi)
 274:	66 6d                	insw   (%dx),%es:(%rdi)
 276:	74 00                	je     278 <_init-0x4001d0>
 278:	5f                   	pop    %rdi
 279:	5f                   	pop    %rdi
 27a:	70 61                	jo     2dd <_init-0x40016b>
 27c:	64 31 00             	xor    %eax,%fs:(%rax)
 27f:	5f                   	pop    %rdi
 280:	5f                   	pop    %rdi
 281:	70 61                	jo     2e4 <_init-0x400164>
 283:	64 32 00             	xor    %fs:(%rax),%al
 286:	5f                   	pop    %rdi
 287:	5f                   	pop    %rdi
 288:	70 61                	jo     2eb <_init-0x40015d>
 28a:	64 33 00             	xor    %fs:(%rax),%eax
 28d:	5f                   	pop    %rdi
 28e:	5f                   	pop    %rdi
 28f:	70 61                	jo     2f2 <_init-0x400156>
 291:	64 34 00             	fs xor $0x0,%al
 294:	5f                   	pop    %rdi
 295:	5f                   	pop    %rdi
 296:	70 61                	jo     2f9 <_init-0x40014f>
 298:	64 35 00 5f 75 6e    	fs xor $0x6e755f00,%eax
 29e:	75 73                	jne    313 <_init-0x400135>
 2a0:	65 64 32 00          	gs xor %fs:(%rax),%al
 2a4:	61                   	(bad)  
 2a5:	72 67                	jb     30e <_init-0x40013a>
 2a7:	76 00                	jbe    2a9 <_init-0x40019f>
 2a9:	5f                   	pop    %rdi
 2aa:	49                   	rex.WB
 2ab:	4f 5f                	rex.WRXB pop %r15
 2ad:	62 61                	(bad)  
 2af:	63 6b 75             	movslq 0x75(%rbx),%ebp
 2b2:	70 5f                	jo     313 <_init-0x400135>
 2b4:	62 61                	(bad)  
 2b6:	73 65                	jae    31d <_init-0x40012b>
 2b8:	00 61 72             	add    %ah,0x72(%rcx)
 2bb:	67 63 00             	movslq (%eax),%eax
 2be:	6d                   	insl   (%dx),%es:(%rdi)
 2bf:	61                   	(bad)  
 2c0:	69 6e 00 5f 49 4f 5f 	imul   $0x5f4f495f,0x0(%rsi),%ebp
 2c7:	77 72                	ja     33b <_init-0x40010d>
 2c9:	69 74 65 5f 62 61 73 	imul   $0x65736162,0x5f(%rbp,%riz,2),%esi
 2d0:	65 
 2d1:	00 5f 5a             	add    %bl,0x5a(%rdi)
 2d4:	31 33                	xor    %esi,(%rbx)
 2d6:	61                   	(bad)  
 2d7:	63 74 75 61          	movslq 0x61(%rbp,%rsi,2),%esi
 2db:	6c                   	insb   (%dx),%es:(%rdi)
 2dc:	5f                   	pop    %rdi
 2dd:	6c                   	insb   (%dx),%es:(%rdi)
 2de:	6f                   	outsl  %ds:(%rsi),(%dx)
 2df:	6f                   	outsl  %ds:(%rsi),(%dx)
 2e0:	70 65                	jo     347 <_init-0x400101>
 2e2:	64 76 00             	fs jbe 2e5 <_init-0x400163>

Disassembly of section .debug_loc:

0000000000000000 <.debug_loc>:
   0:	d2 06                	rolb   %cl,(%rsi)
   2:	40 00 00             	add    %al,(%rax)
   5:	00 00                	add    %al,(%rax)
   7:	00 eb                	add    %ch,%bl
   9:	06                   	(bad)  
   a:	40 00 00             	add    %al,(%rax)
   d:	00 00                	add    %al,(%rax)
   f:	00 01                	add    %al,(%rcx)
  11:	00 50 00             	add    %dl,0x0(%rax)
	...
  20:	00 00                	add    %al,(%rax)
  22:	00 c0                	add    %al,%al
  24:	04 40                	add    $0x40,%al
  26:	00 00                	add    %al,(%rax)
  28:	00 00                	add    %al,(%rax)
  2a:	00 c8                	add    %cl,%al
  2c:	04 40                	add    $0x40,%al
  2e:	00 00                	add    %al,(%rax)
  30:	00 00                	add    %al,(%rax)
  32:	00 01                	add    %al,(%rcx)
  34:	00 55 c8             	add    %dl,-0x38(%rbp)
  37:	04 40                	add    $0x40,%al
  39:	00 00                	add    %al,(%rax)
  3b:	00 00                	add    %al,(%rax)
  3d:	00 fb                	add    %bh,%bl
  3f:	04 40                	add    $0x40,%al
  41:	00 00                	add    %al,(%rax)
  43:	00 00                	add    %al,(%rax)
  45:	00 04 00             	add    %al,(%rax,%rax,1)
  48:	f3 01 55 9f          	repz add %edx,-0x61(%rbp)
	...
  5c:	c0 04 40 00          	rolb   $0x0,(%rax,%rax,2)
  60:	00 00                	add    %al,(%rax)
  62:	00 00                	add    %al,(%rax)
  64:	c8 04 40 00          	enterq $0x4004,$0x0
  68:	00 00                	add    %al,(%rax)
  6a:	00 00                	add    %al,(%rax)
  6c:	01 00                	add    %eax,(%rax)
  6e:	54                   	push   %rsp
  6f:	c8 04 40 00          	enterq $0x4004,$0x0
  73:	00 00                	add    %al,(%rax)
  75:	00 00                	add    %al,(%rax)
  77:	fb                   	sti    
  78:	04 40                	add    $0x40,%al
  7a:	00 00                	add    %al,(%rax)
  7c:	00 00                	add    %al,(%rax)
  7e:	00 04 00             	add    %al,(%rax,%rax,1)
  81:	f3 01 54 9f 00       	repz add %edx,0x0(%rdi,%rbx,4)
	...
  92:	00 00                	add    %al,(%rax)
  94:	00 c9                	add    %cl,%cl
  96:	04 40                	add    $0x40,%al
  98:	00 00                	add    %al,(%rax)
  9a:	00 00                	add    %al,(%rax)
  9c:	00 dc                	add    %bl,%ah
  9e:	04 40                	add    $0x40,%al
  a0:	00 00                	add    %al,(%rax)
  a2:	00 00                	add    %al,(%rax)
  a4:	00 0a                	add    %cl,(%rdx)
  a6:	00 03                	add    %al,(%rbx)
  a8:	74 07                	je     b1 <_init-0x400397>
  aa:	40 00 00             	add    %al,(%rax)
  ad:	00 00                	add    %al,(%rax)
  af:	00 9f 00 00 00 00    	add    %bl,0x0(%rdi)
	...
  c1:	e1 04                	loope  c7 <_init-0x400381>
  c3:	40 00 00             	add    %al,(%rax)
  c6:	00 00                	add    %al,(%rax)
  c8:	00 f4                	add    %dh,%ah
  ca:	04 40                	add    $0x40,%al
  cc:	00 00                	add    %al,(%rax)
  ce:	00 00                	add    %al,(%rax)
  d0:	00 0a                	add    %cl,(%rdx)
  d2:	00 03                	add    %al,(%rbx)
  d4:	83 07 40             	addl   $0x40,(%rdi)
  d7:	00 00                	add    %al,(%rax)
  d9:	00 00                	add    %al,(%rax)
  db:	00 9f 00 00 00 00    	add    %bl,0x0(%rdi)
	...

Disassembly of section .debug_ranges:

0000000000000000 <.debug_ranges>:
   0:	00 06                	add    %al,(%rsi)
   2:	40 00 00             	add    %al,(%rax)
   5:	00 00                	add    %al,(%rax)
   7:	00 ec                	add    %ch,%ah
   9:	06                   	(bad)  
   a:	40 00 00             	add    %al,(%rax)
   d:	00 00                	add    %al,(%rax)
   f:	00 c0                	add    %al,%al
  11:	04 40                	add    $0x40,%al
  13:	00 00                	add    %al,(%rax)
  15:	00 00                	add    %al,(%rax)
  17:	00 fb                	add    %bh,%bl
  19:	04 40                	add    $0x40,%al
	...
