
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
  400283:	00 e6                	add    %ah,%dh
  400285:	ae                   	scas   %es:(%rdi),%al
  400286:	51                   	push   %rcx
  400287:	e8 26 9f 56 4c       	callq  4c96a1b2 <_end+0x4c36916a>
  40028c:	6f                   	outsl  %ds:(%rsi),(%dx)
  40028d:	31 0d ce a8 ef b5    	xor    %ecx,-0x4a105732(%rip)        # ffffffffb62fab61 <_end+0xffffffffb5cf9b19>
  400293:	d7                   	xlat   %ds:(%rbx)
  400294:	cf                   	iret   
  400295:	99                   	cltd   
  400296:	f1                   	icebp  
  400297:	3e                   	ds

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
  4003da:	69 0d 00 00 02 00 62 	imul   $0x62,0x20000(%rip),%ecx        # 4203e4 <__FRAME_END__+0x1fab4>
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
  4004c9:	be 84 07 40 00       	mov    $0x400784,%esi
  4004ce:	89 c2                	mov    %eax,%edx
  4004d0:	bf 01 00 00 00       	mov    $0x1,%edi
  4004d5:	31 c0                	xor    %eax,%eax
  4004d7:	e8 c4 ff ff ff       	callq  4004a0 <__printf_chk@plt>
  4004dc:	e8 5f 01 00 00       	callq  400640 <_Z13actual_loopedv>
  4004e1:	be 93 07 40 00       	mov    $0x400793,%esi
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
  40050f:	49 c7 c0 70 07 40 00 	mov    $0x400770,%r8
  400516:	48 c7 c1 00 07 40 00 	mov    $0x400700,%rcx
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
  400640:	48 83 ec 38          	sub    $0x38,%rsp
  400644:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40064b:	00 00 
  40064d:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  400652:	31 c0                	xor    %eax,%eax
  400654:	48 8d 44 24 10       	lea    0x10(%rsp),%rax
  400659:	c7 44 24 10 00 00 00 	movl   $0x0,0x10(%rsp)
  400660:	00 
  400661:	c7 44 24 14 03 00 00 	movl   $0x3,0x14(%rsp)
  400668:	00 
  400669:	c7 44 24 18 02 00 00 	movl   $0x2,0x18(%rsp)
  400670:	00 
  400671:	c7 44 24 1c 03 00 00 	movl   $0x3,0x1c(%rsp)
  400678:	00 
  400679:	c7 44 24 20 01 00 00 	movl   $0x1,0x20(%rsp)
  400680:	00 
  400681:	c7 44 24 24 02 00 00 	movl   $0x2,0x24(%rsp)
  400688:	00 
  400689:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  40068e:	b8 00 00 00 00       	mov    $0x0,%eax
  400693:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  400698:	48 c7 c1 00 00 00 00 	mov    $0x0,%rcx

000000000040069f <LOOP_TOP_63>:
  40069f:	8b 14 8f             	mov    (%rdi,%rcx,4),%edx
  4006a2:	67 ff 24 d5 aa 06 40 	jmpq   *0x4006aa(,%edx,8)
  4006a9:	00 

00000000004006aa <TABLE_63>:
  4006aa:	ca 06 40             	lret   $0x4006
  4006ad:	00 00                	add    %al,(%rax)
  4006af:	00 00                	add    %al,(%rax)
  4006b1:	00 cf                	add    %cl,%bh
  4006b3:	06                   	(bad)  
  4006b4:	40 00 00             	add    %al,(%rax)
  4006b7:	00 00                	add    %al,(%rax)
  4006b9:	00 d4                	add    %dl,%ah
  4006bb:	06                   	(bad)  
  4006bc:	40 00 00             	add    %al,(%rax)
  4006bf:	00 00                	add    %al,(%rax)
  4006c1:	00 d9                	add    %bl,%cl
  4006c3:	06                   	(bad)  
  4006c4:	40 00 00             	add    %al,(%rax)
  4006c7:	00 00                	add    %al,(%rax)
	...

00000000004006ca <CASE_0_63>:
  4006ca:	83 c0 16             	add    $0x16,%eax
  4006cd:	eb 0d                	jmp    4006dc <END_SWITCH_63>

00000000004006cf <CASE_1_63>:
  4006cf:	83 c0 01             	add    $0x1,%eax
  4006d2:	eb 08                	jmp    4006dc <END_SWITCH_63>

00000000004006d4 <CASE_2_63>:
  4006d4:	83 c0 2c             	add    $0x2c,%eax
  4006d7:	eb 03                	jmp    4006dc <END_SWITCH_63>

00000000004006d9 <CASE_3_63>:
  4006d9:	83 c0 63             	add    $0x63,%eax

00000000004006dc <END_SWITCH_63>:
  4006dc:	48 83 c1 01          	add    $0x1,%rcx
  4006e0:	48 83 f9 06          	cmp    $0x6,%rcx
  4006e4:	7c b9                	jl     40069f <LOOP_TOP_63>
  4006e6:	48 8b 54 24 28       	mov    0x28(%rsp),%rdx
  4006eb:	64 48 33 14 25 28 00 	xor    %fs:0x28,%rdx
  4006f2:	00 00 
  4006f4:	75 05                	jne    4006fb <END_SWITCH_63+0x1f>
  4006f6:	48 83 c4 38          	add    $0x38,%rsp
  4006fa:	c3                   	retq   
  4006fb:	e8 80 fd ff ff       	callq  400480 <__stack_chk_fail@plt>

0000000000400700 <__libc_csu_init>:
  400700:	41 57                	push   %r15
  400702:	41 56                	push   %r14
  400704:	41 89 ff             	mov    %edi,%r15d
  400707:	41 55                	push   %r13
  400709:	41 54                	push   %r12
  40070b:	4c 8d 25 fe 06 20 00 	lea    0x2006fe(%rip),%r12        # 600e10 <__frame_dummy_init_array_entry>
  400712:	55                   	push   %rbp
  400713:	48 8d 2d fe 06 20 00 	lea    0x2006fe(%rip),%rbp        # 600e18 <__init_array_end>
  40071a:	53                   	push   %rbx
  40071b:	49 89 f6             	mov    %rsi,%r14
  40071e:	49 89 d5             	mov    %rdx,%r13
  400721:	4c 29 e5             	sub    %r12,%rbp
  400724:	48 83 ec 08          	sub    $0x8,%rsp
  400728:	48 c1 fd 03          	sar    $0x3,%rbp
  40072c:	e8 17 fd ff ff       	callq  400448 <_init>
  400731:	48 85 ed             	test   %rbp,%rbp
  400734:	74 20                	je     400756 <__libc_csu_init+0x56>
  400736:	31 db                	xor    %ebx,%ebx
  400738:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40073f:	00 
  400740:	4c 89 ea             	mov    %r13,%rdx
  400743:	4c 89 f6             	mov    %r14,%rsi
  400746:	44 89 ff             	mov    %r15d,%edi
  400749:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  40074d:	48 83 c3 01          	add    $0x1,%rbx
  400751:	48 39 eb             	cmp    %rbp,%rbx
  400754:	75 ea                	jne    400740 <__libc_csu_init+0x40>
  400756:	48 83 c4 08          	add    $0x8,%rsp
  40075a:	5b                   	pop    %rbx
  40075b:	5d                   	pop    %rbp
  40075c:	41 5c                	pop    %r12
  40075e:	41 5d                	pop    %r13
  400760:	41 5e                	pop    %r14
  400762:	41 5f                	pop    %r15
  400764:	c3                   	retq   
  400765:	90                   	nop
  400766:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40076d:	00 00 00 

0000000000400770 <__libc_csu_fini>:
  400770:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000400774 <_fini>:
  400774:	48 83 ec 08          	sub    $0x8,%rsp
  400778:	48 83 c4 08          	add    $0x8,%rsp
  40077c:	c3                   	retq   

Disassembly of section .rodata:

0000000000400780 <_IO_stdin_used>:
  400780:	01 00                	add    %eax,(%rax)
  400782:	02 00                	add    (%rax),%al
  400784:	65 78 70             	gs js  4007f7 <__GNU_EH_FRAME_HDR+0x4f>
  400787:	65 63 74 65 64       	movslq %gs:0x64(%rbp,%riz,2),%esi
  40078c:	20 3d 20 25 64 0a    	and    %bh,0xa642520(%rip)        # aa42cb2 <_end+0xa441c6a>
  400792:	00 61 63             	add    %ah,0x63(%rcx)
  400795:	74 75                	je     40080c <__GNU_EH_FRAME_HDR+0x64>
  400797:	61                   	(bad)  
  400798:	6c                   	insb   (%dx),%es:(%rdi)
  400799:	5f                   	pop    %rdi
  40079a:	6c                   	insb   (%dx),%es:(%rdi)
  40079b:	6f                   	outsl  %ds:(%rsi),(%dx)
  40079c:	6f                   	outsl  %ds:(%rsi),(%dx)
  40079d:	70 65                	jo     400804 <__GNU_EH_FRAME_HDR+0x5c>
  40079f:	64 20 3d 20 25 64 0a 	and    %bh,%fs:0xa642520(%rip)        # aa42cc6 <_end+0xa441c7e>
	...

Disassembly of section .eh_frame_hdr:

00000000004007a8 <__GNU_EH_FRAME_HDR>:
  4007a8:	01 1b                	add    %ebx,(%rbx)
  4007aa:	03 3b                	add    (%rbx),%edi
  4007ac:	4c 00 00             	rex.WR add %r8b,(%rax)
  4007af:	00 08                	add    %cl,(%rax)
  4007b1:	00 00                	add    %al,(%rax)
  4007b3:	00 c8                	add    %cl,%al
  4007b5:	fc                   	cld    
  4007b6:	ff                   	(bad)  
  4007b7:	ff 98 00 00 00 18    	lcall  *0x18000000(%rax)
  4007bd:	fd                   	std    
  4007be:	ff                   	(bad)  
  4007bf:	ff 10                	callq  *(%rax)
  4007c1:	01 00                	add    %eax,(%rax)
  4007c3:	00 58 fd             	add    %bl,-0x3(%rax)
  4007c6:	ff                   	(bad)  
  4007c7:	ff 68 00             	ljmp   *0x0(%rax)
  4007ca:	00 00                	add    %al,(%rax)
  4007cc:	58                   	pop    %rax
  4007cd:	fe                   	(bad)  
  4007ce:	ff                   	(bad)  
  4007cf:	ff c0                	inc    %eax
  4007d1:	00 00                	add    %al,(%rax)
  4007d3:	00 88 fe ff ff d8    	add    %cl,-0x27000002(%rax)
  4007d9:	00 00                	add    %al,(%rax)
  4007db:	00 98 fe ff ff f0    	add    %bl,-0xf000002(%rax)
  4007e1:	00 00                	add    %al,(%rax)
  4007e3:	00 58 ff             	add    %bl,-0x1(%rax)
  4007e6:	ff                   	(bad)  
  4007e7:	ff 28                	ljmp   *(%rax)
  4007e9:	01 00                	add    %eax,(%rax)
  4007eb:	00 c8                	add    %cl,%al
  4007ed:	ff                   	(bad)  
  4007ee:	ff                   	(bad)  
  4007ef:	ff 70 01             	pushq  0x1(%rax)
	...

Disassembly of section .eh_frame:

00000000004007f8 <__FRAME_END__-0x138>:
  4007f8:	14 00                	adc    $0x0,%al
  4007fa:	00 00                	add    %al,(%rax)
  4007fc:	00 00                	add    %al,(%rax)
  4007fe:	00 00                	add    %al,(%rax)
  400800:	01 7a 52             	add    %edi,0x52(%rdx)
  400803:	00 01                	add    %al,(%rcx)
  400805:	78 10                	js     400817 <__GNU_EH_FRAME_HDR+0x6f>
  400807:	01 1b                	add    %ebx,(%rbx)
  400809:	0c 07                	or     $0x7,%al
  40080b:	08 90 01 07 10 14    	or     %dl,0x14100701(%rax)
  400811:	00 00                	add    %al,(%rax)
  400813:	00 1c 00             	add    %bl,(%rax,%rax,1)
  400816:	00 00                	add    %al,(%rax)
  400818:	e8 fc ff ff 2a       	callq  2b400819 <_end+0x2adff7d1>
	...
  400825:	00 00                	add    %al,(%rax)
  400827:	00 14 00             	add    %dl,(%rax,%rax,1)
  40082a:	00 00                	add    %al,(%rax)
  40082c:	00 00                	add    %al,(%rax)
  40082e:	00 00                	add    %al,(%rax)
  400830:	01 7a 52             	add    %edi,0x52(%rdx)
  400833:	00 01                	add    %al,(%rcx)
  400835:	78 10                	js     400847 <__GNU_EH_FRAME_HDR+0x9f>
  400837:	01 1b                	add    %ebx,(%rbx)
  400839:	0c 07                	or     $0x7,%al
  40083b:	08 90 01 00 00 24    	or     %dl,0x24000001(%rax)
  400841:	00 00                	add    %al,(%rax)
  400843:	00 1c 00             	add    %bl,(%rax,%rax,1)
  400846:	00 00                	add    %al,(%rax)
  400848:	28 fc                	sub    %bh,%ah
  40084a:	ff                   	(bad)  
  40084b:	ff 40 00             	incl   0x0(%rax)
  40084e:	00 00                	add    %al,(%rax)
  400850:	00 0e                	add    %cl,(%rsi)
  400852:	10 46 0e             	adc    %al,0xe(%rsi)
  400855:	18 4a 0f             	sbb    %cl,0xf(%rdx)
  400858:	0b 77 08             	or     0x8(%rdi),%esi
  40085b:	80 00 3f             	addb   $0x3f,(%rax)
  40085e:	1a 3b                	sbb    (%rbx),%bh
  400860:	2a 33                	sub    (%rbx),%dh
  400862:	24 22                	and    $0x22,%al
  400864:	00 00                	add    %al,(%rax)
  400866:	00 00                	add    %al,(%rax)
  400868:	14 00                	adc    $0x0,%al
  40086a:	00 00                	add    %al,(%rax)
  40086c:	44 00 00             	add    %r8b,(%rax)
  40086f:	00 90 fd ff ff 2c    	add    %dl,0x2cfffffd(%rax)
	...
  40087d:	00 00                	add    %al,(%rax)
  40087f:	00 14 00             	add    %dl,(%rax,%rax,1)
  400882:	00 00                	add    %al,(%rax)
  400884:	5c                   	pop    %rsp
  400885:	00 00                	add    %al,(%rax)
  400887:	00 a8 fd ff ff 06    	add    %ch,0x6fffffd(%rax)
	...
  400895:	00 00                	add    %al,(%rax)
  400897:	00 1c 00             	add    %bl,(%rax,%rax,1)
  40089a:	00 00                	add    %al,(%rax)
  40089c:	74 00                	je     40089e <__GNU_EH_FRAME_HDR+0xf6>
  40089e:	00 00                	add    %al,(%rax)
  4008a0:	a0 fd ff ff c0 00 00 	movabs 0xc0fffffd,%al
  4008a7:	00 00 
  4008a9:	44 0e                	rex.R (bad) 
  4008ab:	40 02 b6 0a 0e 08 41 	add    0x41080e0a(%rsi),%sil
  4008b2:	0b 00                	or     (%rax),%eax
  4008b4:	00 00                	add    %al,(%rax)
  4008b6:	00 00                	add    %al,(%rax)
  4008b8:	14 00                	adc    $0x0,%al
  4008ba:	00 00                	add    %al,(%rax)
  4008bc:	94                   	xchg   %eax,%esp
  4008bd:	00 00                	add    %al,(%rax)
  4008bf:	00 00                	add    %al,(%rax)
  4008c1:	fc                   	cld    
  4008c2:	ff                   	(bad)  
  4008c3:	ff                   	(bad)  
  4008c4:	3b 00                	cmp    (%rax),%eax
  4008c6:	00 00                	add    %al,(%rax)
  4008c8:	00 44 0e 10          	add    %al,0x10(%rsi,%rcx,1)
  4008cc:	76 0e                	jbe    4008dc <__GNU_EH_FRAME_HDR+0x134>
  4008ce:	08 00                	or     %al,(%rax)
  4008d0:	44 00 00             	add    %r8b,(%rax)
  4008d3:	00 ac 00 00 00 28 fe 	add    %ch,-0x1d80000(%rax,%rax,1)
  4008da:	ff                   	(bad)  
  4008db:	ff 65 00             	jmpq   *0x0(%rbp)
  4008de:	00 00                	add    %al,(%rax)
  4008e0:	00 42 0e             	add    %al,0xe(%rdx)
  4008e3:	10 8f 02 42 0e 18    	adc    %cl,0x180e4202(%rdi)
  4008e9:	8e 03                	mov    (%rbx),%es
  4008eb:	45 0e                	rex.RB (bad) 
  4008ed:	20 8d 04 42 0e 28    	and    %cl,0x280e4204(%rbp)
  4008f3:	8c 05 48 0e 30 86    	mov    %es,-0x79cff1b8(%rip)        # ffffffff86701741 <_end+0xffffffff861006f9>
  4008f9:	06                   	(bad)  
  4008fa:	48 0e                	rex.W (bad) 
  4008fc:	38 83 07 4d 0e 40    	cmp    %al,0x400e4d07(%rbx)
  400902:	72 0e                	jb     400912 <__GNU_EH_FRAME_HDR+0x16a>
  400904:	38 41 0e             	cmp    %al,0xe(%rcx)
  400907:	30 41 0e             	xor    %al,0xe(%rcx)
  40090a:	28 42 0e             	sub    %al,0xe(%rdx)
  40090d:	20 42 0e             	and    %al,0xe(%rdx)
  400910:	18 42 0e             	sbb    %al,0xe(%rdx)
  400913:	10 42 0e             	adc    %al,0xe(%rdx)
  400916:	08 00                	or     %al,(%rax)
  400918:	14 00                	adc    $0x0,%al
  40091a:	00 00                	add    %al,(%rax)
  40091c:	f4                   	hlt    
  40091d:	00 00                	add    %al,(%rax)
  40091f:	00 50 fe             	add    %dl,-0x2(%rax)
  400922:	ff                   	(bad)  
  400923:	ff 02                	incl   (%rdx)
	...

0000000000400930 <__FRAME_END__>:
  400930:	00 00                	add    %al,(%rax)
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
  600e4f:	00 74 07 40          	add    %dh,0x40(%rdi,%rax,1)
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
  17:	00 00                	add    %al,(%rax)
  19:	01 00                	add    %eax,(%rax)
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
   0:	d1 04 00             	roll   (%rax,%rax,1)
   3:	00 04 00             	add    %al,(%rax,%rax,1)
   6:	00 00                	add    %al,(%rax)
   8:	00 00                	add    %al,(%rax)
   a:	08 01                	or     %al,(%rcx)
   c:	cf                   	iret   
   d:	00 00                	add    %al,(%rax)
   f:	00 04 54             	add    %al,(%rsp,%rdx,2)
  12:	01 00                	add    %eax,(%rax)
  14:	00 26                	add    %ah,(%rsi)
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
  37:	54                   	push   %rsp
  38:	00 00                	add    %al,(%rax)
  3a:	00 03                	add    %al,(%rbx)
  3c:	01 08                	add    %ecx,(%rax)
  3e:	f9                   	stc    
  3f:	01 00                	add    %eax,(%rax)
  41:	00 03                	add    %al,(%rbx)
  43:	02 07                	add    (%rdi),%al
  45:	84 01                	test   %al,(%rcx)
  47:	00 00                	add    %al,(%rax)
  49:	03 04 07             	add    (%rdi,%rax,1),%eax
  4c:	59                   	pop    %rcx
  4d:	00 00                	add    %al,(%rax)
  4f:	00 03                	add    %al,(%rbx)
  51:	01 06                	add    %eax,(%rsi)
  53:	fb                   	sti    
  54:	01 00                	add    %eax,(%rax)
  56:	00 03                	add    %al,(%rbx)
  58:	02 05 07 02 00 00    	add    0x207(%rip),%al        # 265 <_init-0x4001e3>
  5e:	04 04                	add    $0x4,%al
  60:	05 69 6e 74 00       	add    $0x746e69,%eax
  65:	03 08                	add    (%rax),%ecx
  67:	05 6b 00 00 00       	add    $0x6b,%eax
  6c:	02 07                	add    (%rdi),%al
  6e:	00 00                	add    %al,(%rax)
  70:	00 04 83             	add    %al,(%rbx,%rax,4)
  73:	65 00 00             	add    %al,%gs:(%rax)
  76:	00 02                	add    %al,(%rdx)
  78:	5b                   	pop    %rbx
  79:	02 00                	add    (%rax),%al
  7b:	00 04 84             	add    %al,(%rsp,%rax,4)
  7e:	65 00 00             	add    %al,%gs:(%rax)
  81:	00 03                	add    %al,(%rbx)
  83:	08 07                	or     %al,(%rdi)
  85:	c0 01 00             	rolb   $0x0,(%rcx)
  88:	00 05 08 06 08 91    	add    %al,-0x6ef7f9f8(%rip)        # ffffffff91080696 <_end+0xffffffff90a7f64e>
  8e:	00 00                	add    %al,(%rax)
  90:	00 03                	add    %al,(%rbx)
  92:	01 06                	add    %eax,(%rsi)
  94:	02 02                	add    (%rdx),%al
  96:	00 00                	add    %al,(%rax)
  98:	07                   	(bad)  
  99:	e2 01                	loop   9c <_init-0x4003ac>
  9b:	00 00                	add    %al,(%rax)
  9d:	d8 05 f1 15 02 00    	fadds  0x215f1(%rip)        # 21694 <_init-0x3dedb4>
  a3:	00 08                	add    %cl,(%rax)
  a5:	89 00                	mov    %eax,(%rax)
  a7:	00 00                	add    %al,(%rax)
  a9:	05 f2 5e 00 00       	add    $0x5ef2,%eax
  ae:	00 00                	add    %al,(%rax)
  b0:	08 0f                	or     %cl,(%rdi)
  b2:	00 00                	add    %al,(%rax)
  b4:	00 05 f7 8b 00 00    	add    %al,0x8bf7(%rip)        # 8cb1 <_init-0x3f7797>
  ba:	00 08                	add    %cl,(%rax)
  bc:	08 7c 00 00          	or     %bh,0x0(%rax,%rax,1)
  c0:	00 05 f8 8b 00 00    	add    %al,0x8bf8(%rip)        # 8cbe <_init-0x3f778a>
  c6:	00 10                	add    %dl,(%rax)
  c8:	08 65 02             	or     %ah,0x2(%rbp)
  cb:	00 00                	add    %al,(%rax)
  cd:	05 f9 8b 00 00       	add    $0x8bf9,%eax
  d2:	00 18                	add    %bl,(%rax)
  d4:	08 d1                	or     %dl,%cl
  d6:	02 00                	add    (%rax),%al
  d8:	00 05 fa 8b 00 00    	add    %al,0x8bfa(%rip)        # 8cd8 <_init-0x3f7770>
  de:	00 20                	add    %ah,(%rax)
  e0:	08 70 01             	or     %dh,0x1(%rax)
  e3:	00 00                	add    %al,(%rax)
  e5:	05 fb 8b 00 00       	add    $0x8bfb,%eax
  ea:	00 28                	add    %ch,(%rax)
  ec:	08 c9                	or     %cl,%cl
  ee:	01 00                	add    %eax,(%rax)
  f0:	00 05 fc 8b 00 00    	add    %al,0x8bfc(%rip)        # 8cf2 <_init-0x3f7756>
  f6:	00 30                	add    %dh,(%rax)
  f8:	08 42 00             	or     %al,0x0(%rdx)
  fb:	00 00                	add    %al,(%rax)
  fd:	05 fd 8b 00 00       	add    $0x8bfd,%eax
 102:	00 38                	add    %bh,(%rax)
 104:	08 90 00 00 00 05    	or     %dl,0x5000000(%rax)
 10a:	fe 8b 00 00 00 40    	decb   0x40000000(%rbx)
 110:	09 97 01 00 00 05    	or     %edx,0x5000001(%rdi)
 116:	00 01                	add    %al,(%rcx)
 118:	8b 00                	mov    (%rax),%eax
 11a:	00 00                	add    %al,(%rax)
 11c:	48 09 b7 02 00 00 05 	or     %rsi,0x5000002(%rdi)
 123:	01 01                	add    %eax,(%rcx)
 125:	8b 00                	mov    (%rax),%eax
 127:	00 00                	add    %al,(%rax)
 129:	50                   	push   %rax
 12a:	09 73 02             	or     %esi,0x2(%rbx)
 12d:	00 00                	add    %al,(%rax)
 12f:	05 02 01 8b 00       	add    $0x8b0102,%eax
 134:	00 00                	add    %al,(%rax)
 136:	58                   	pop    %rax
 137:	09 f0                	or     %esi,%eax
 139:	01 00                	add    %eax,(%rax)
 13b:	00 05 04 01 4d 02    	add    %al,0x24d0104(%rip)        # 24d0245 <_end+0x1ecf1fd>
 141:	00 00                	add    %al,(%rax)
 143:	60                   	(bad)  
 144:	09 1c 00             	or     %ebx,(%rax,%rax,1)
 147:	00 00                	add    %al,(%rax)
 149:	05 06 01 53 02       	add    $0x2530106,%eax
 14e:	00 00                	add    %al,(%rax)
 150:	68 09 74 00 00       	pushq  $0x7409
 155:	00 05 08 01 5e 00    	add    %al,0x5e0108(%rip)        # 5e0263 <__FRAME_END__+0x1df933>
 15b:	00 00                	add    %al,(%rax)
 15d:	70 09                	jo     168 <_init-0x4002e0>
 15f:	ab                   	stos   %eax,%es:(%rdi)
 160:	01 00                	add    %eax,(%rax)
 162:	00 05 0c 01 5e 00    	add    %al,0x5e010c(%rip)        # 5e0274 <__FRAME_END__+0x1df944>
 168:	00 00                	add    %al,(%rax)
 16a:	74 09                	je     175 <_init-0x4002d3>
 16c:	b5 00                	mov    $0x0,%ch
 16e:	00 00                	add    %al,(%rax)
 170:	05 0e 01 6c 00       	add    $0x6c010e,%eax
 175:	00 00                	add    %al,(%rax)
 177:	78 09                	js     182 <_init-0x4002c6>
 179:	9c                   	pushfq 
 17a:	00 00                	add    %al,(%rax)
 17c:	00 05 12 01 42 00    	add    %al,0x420112(%rip)        # 420294 <__FRAME_END__+0x1f964>
 182:	00 00                	add    %al,(%rax)
 184:	80 09 17             	orb    $0x17,(%rcx)
 187:	02 00                	add    (%rax),%al
 189:	00 05 13 01 50 00    	add    %al,0x500113(%rip)        # 5002a2 <__FRAME_END__+0xff972>
 18f:	00 00                	add    %al,(%rax)
 191:	82                   	(bad)  
 192:	09 38                	or     %edi,(%rax)
 194:	00 00                	add    %al,(%rax)
 196:	00 05 14 01 59 02    	add    %al,0x2590114(%rip)        # 25902b0 <_end+0x1f8f268>
 19c:	00 00                	add    %al,(%rax)
 19e:	83 09 a5             	orl    $0xffffffa5,(%rcx)
 1a1:	01 00                	add    %eax,(%rax)
 1a3:	00 05 18 01 69 02    	add    %al,0x2690118(%rip)        # 26902c1 <_end+0x208f279>
 1a9:	00 00                	add    %al,(%rax)
 1ab:	88 09                	mov    %cl,(%rcx)
 1ad:	b9 00 00 00 05       	mov    $0x5000000,%ecx
 1b2:	21 01                	and    %eax,(%rcx)
 1b4:	77 00                	ja     1b6 <_init-0x400292>
 1b6:	00 00                	add    %al,(%rax)
 1b8:	90                   	nop
 1b9:	09 86 02 00 00 05    	or     %eax,0x5000002(%rsi)
 1bf:	29 01                	sub    %eax,(%rcx)
 1c1:	89 00                	mov    %eax,(%rax)
 1c3:	00 00                	add    %al,(%rax)
 1c5:	98                   	cwtl   
 1c6:	09 8d 02 00 00 05    	or     %ecx,0x5000002(%rbp)
 1cc:	2a 01                	sub    (%rcx),%al
 1ce:	89 00                	mov    %eax,(%rax)
 1d0:	00 00                	add    %al,(%rax)
 1d2:	a0 09 94 02 00 00 05 	movabs 0x12b050000029409,%al
 1d9:	2b 01 
 1db:	89 00                	mov    %eax,(%rax)
 1dd:	00 00                	add    %al,(%rax)
 1df:	a8 09                	test   $0x9,%al
 1e1:	9b                   	fwait
 1e2:	02 00                	add    (%rax),%al
 1e4:	00 05 2c 01 89 00    	add    %al,0x89012c(%rip)        # 890316 <_end+0x28f2ce>
 1ea:	00 00                	add    %al,(%rax)
 1ec:	b0 09                	mov    $0x9,%al
 1ee:	a2 02 00 00 05 2e 01 	movabs %al,0x29012e05000002
 1f5:	29 00 
 1f7:	00 00                	add    %al,(%rax)
 1f9:	b8 09 b3 01 00       	mov    $0x1b309,%eax
 1fe:	00 05 2f 01 5e 00    	add    %al,0x5e012f(%rip)        # 5e0333 <__FRAME_END__+0x1dfa03>
 204:	00 00                	add    %al,(%rax)
 206:	c0 09 a9             	rorb   $0xa9,(%rcx)
 209:	02 00                	add    (%rax),%al
 20b:	00 05 31 01 6f 02    	add    %al,0x26f0131(%rip)        # 26f0342 <_end+0x20ef2fa>
 211:	00 00                	add    %al,(%rax)
 213:	c4                   	(bad)  
 214:	00 0a                	add    %cl,(%rdx)
 216:	d7                   	xlat   %ds:(%rbx)
 217:	01 00                	add    %eax,(%rax)
 219:	00 05 96 07 3a 01    	add    %al,0x13a0796(%rip)        # 13a09b5 <_end+0xd9f96d>
 21f:	00 00                	add    %al,(%rax)
 221:	18 05 9c 4d 02 00    	sbb    %al,0x24d9c(%rip)        # 24fc3 <_init-0x3db485>
 227:	00 08                	add    %cl,(%rax)
 229:	55                   	push   %rbp
 22a:	02 00                	add    (%rax),%al
 22c:	00 05 9d 4d 02 00    	add    %al,0x24d9d(%rip)        # 24fcf <_init-0x3db479>
 232:	00 00                	add    %al,(%rax)
 234:	08 7e 01             	or     %bh,0x1(%rsi)
 237:	00 00                	add    %al,(%rax)
 239:	05 9e 53 02 00       	add    $0x2539e,%eax
 23e:	00 08                	add    %cl,(%rax)
 240:	08 eb                	or     %ch,%bl
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
 28b:	08 05 66 00 00 00    	or     %al,0x66(%rip)        # 2f7 <_init-0x400151>
 291:	03 08                	add    (%rax),%ecx
 293:	07                   	(bad)  
 294:	4f 00 00             	rex.WRXB add %r8b,(%r8)
 297:	00 0e                	add    %cl,(%rsi)
 299:	11 02                	adc    %eax,(%rdx)
 29b:	00 00                	add    %al,(%rax)
 29d:	01 05 3c 02 00 00    	add    %eax,0x23c(%rip)        # 4df <_init-0x3fff69>
 2a3:	01 bb 02 00 00 0f    	add    %edi,0xf000002(%rbx)
 2a9:	78 00                	js     2ab <_init-0x40019d>
 2ab:	01 05 5e 00 00 00    	add    %eax,0x5e(%rip)        # 30f <_init-0x400139>
 2b1:	0f 79 00             	vmwrite (%rax),%rax
 2b4:	01 05 c1 02 00 00    	add    %eax,0x2c1(%rip)        # 57b <_init-0x3ffecd>
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
 2d2:	e3 02                	jrcxz  2d6 <_init-0x400172>
 2d4:	00 00                	add    %al,(%rax)
 2d6:	12 80 02 00 00 02    	adc    0x2000002(%rax),%al
 2dc:	66 e3 02             	data16 jrcxz 2e1 <_init-0x400167>
 2df:	00 00                	add    %al,(%rax)
 2e1:	13 00                	adc    (%rax),%eax
 2e3:	14 7f                	adc    $0x7f,%al
 2e5:	02 00                	add    (%rax),%al
 2e7:	00 15 98 02 00 00    	add    %dl,0x298(%rip)        # 585 <_init-0x3ffec3>
 2ed:	3c 02                	cmp    $0x2,%al
 2ef:	00 00                	add    %al,(%rax)
 2f1:	00 06                	add    %al,(%rsi)
 2f3:	40 00 00             	add    %al,(%rax)
 2f6:	00 00                	add    %al,(%rax)
 2f8:	00 2c 00             	add    %ch,(%rax,%rax,1)
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
 317:	4b 01 00             	rex.WXB add %rax,(%r8)
 31a:	00 01                	add    %al,(%rcx)
 31c:	12 48 02             	adc    0x2(%rax),%cl
 31f:	00 00                	add    %al,(%rax)
 321:	5e                   	pop    %rsi
 322:	00 00                	add    %al,(%rax)
 324:	00 30                	add    %dh,(%rax)
 326:	06                   	(bad)  
 327:	40 00 00             	add    %al,(%rax)
 32a:	00 00                	add    %al,(%rax)
 32c:	00 06                	add    %al,(%rsi)
 32e:	00 00                	add    %al,(%rax)
 330:	00 00                	add    %al,(%rax)
 332:	00 00                	add    %al,(%rax)
 334:	00 01                	add    %al,(%rcx)
 336:	9c                   	pushfq 
 337:	4f 03 00             	rex.WRXB add (%r8),%r8
 33a:	00 18                	add    %bl,(%rax)
 33c:	78 73                	js     3b1 <_init-0x400097>
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
 35c:	00 05 00 17 c1 00    	add    %al,0xc11700(%rip)        # c11a62 <_end+0x610a1a>
 362:	00 00                	add    %al,(%rax)
 364:	01 1d e0 02 00 00    	add    %ebx,0x2e0(%rip)        # 64a <_init-0x3ffdfe>
 36a:	5e                   	pop    %rsi
 36b:	00 00                	add    %al,(%rax)
 36d:	00 40 06             	add    %al,0x6(%rax)
 370:	40 00 00             	add    %al,(%rax)
 373:	00 00                	add    %al,(%rax)
 375:	00 c0                	add    %al,%al
 377:	00 00                	add    %al,(%rax)
 379:	00 00                	add    %al,(%rax)
 37b:	00 00                	add    %al,(%rax)
 37d:	00 01                	add    %al,(%rcx)
 37f:	9c                   	pushfq 
 380:	ba 03 00 00 19       	mov    $0x19000003,%edx
 385:	2a 00                	sub    (%rax),%al
 387:	00 00                	add    %al,(%rax)
 389:	01 1e                	add    %ebx,(%rsi)
 38b:	4f 03 00             	rex.WRXB add (%r8),%r8
 38e:	00 02                	add    %al,(%rdx)
 390:	91                   	xchg   %eax,%ecx
 391:	50                   	push   %rax
 392:	1a 78 73             	sbb    0x73(%rax),%bh
 395:	00 01                	add    %al,(%rcx)
 397:	1f                   	(bad)  
 398:	ba 03 00 00 02       	mov    $0x2000003,%edx
 39d:	91                   	xchg   %eax,%ecx
 39e:	48 1b 79 00          	sbb    0x0(%rcx),%rdi
 3a2:	01 20                	add    %esp,(%rax)
 3a4:	5e                   	pop    %rsi
 3a5:	00 00                	add    %al,(%rax)
 3a7:	00 00                	add    %al,(%rax)
 3a9:	00 00                	add    %al,(%rax)
 3ab:	00 1c 00             	add    %bl,(%rax,%rax,1)
 3ae:	07                   	(bad)  
 3af:	40 00 00             	add    %al,(%rax)
 3b2:	00 00                	add    %al,(%rax)
 3b4:	00 c0                	add    %al,%al
 3b6:	04 00                	add    $0x0,%al
 3b8:	00 00                	add    %al,(%rax)
 3ba:	06                   	(bad)  
 3bb:	08 5e 00             	or     %bl,0x0(%rsi)
 3be:	00 00                	add    %al,(%rax)
 3c0:	1d cc 02 00 00       	sbb    $0x2cc,%eax
 3c5:	01 52 5e             	add    %edx,0x5e(%rdx)
 3c8:	00 00                	add    %al,(%rax)
 3ca:	00 c0                	add    %al,%al
 3cc:	04 40                	add    $0x40,%al
 3ce:	00 00                	add    %al,(%rax)
 3d0:	00 00                	add    %al,(%rax)
 3d2:	00 3b                	add    %bh,(%rbx)
 3d4:	00 00                	add    %al,(%rax)
 3d6:	00 00                	add    %al,(%rax)
 3d8:	00 00                	add    %al,(%rax)
 3da:	00 01                	add    %al,(%rcx)
 3dc:	9c                   	pushfq 
 3dd:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
 3de:	04 00                	add    $0x0,%al
 3e0:	00 1e                	add    %bl,(%rsi)
 3e2:	c7 02 00 00 01 52    	movl   $0x52010000,(%rdx)
 3e8:	5e                   	pop    %rsi
 3e9:	00 00                	add    %al,(%rax)
 3eb:	00 23                	add    %ah,(%rbx)
 3ed:	00 00                	add    %al,(%rax)
 3ef:	00 1e                	add    %bl,(%rsi)
 3f1:	b2 02                	mov    $0x2,%dl
 3f3:	00 00                	add    %al,(%rax)
 3f5:	01 52 a4             	add    %edx,-0x5c(%rdx)
 3f8:	04 00                	add    $0x0,%al
 3fa:	00 5c 00 00          	add    %bl,0x0(%rax,%rax,1)
 3fe:	00 1f                	add    %bl,(%rdi)
 400:	c6 02 00             	movb   $0x0,(%rdx)
 403:	00 c9                	add    %cl,%cl
 405:	04 40                	add    $0x40,%al
 407:	00 00                	add    %al,(%rax)
 409:	00 00                	add    %al,(%rax)
 40b:	00 13                	add    %dl,(%rbx)
 40d:	00 00                	add    %al,(%rax)
 40f:	00 00                	add    %al,(%rax)
 411:	00 00                	add    %al,(%rax)
 413:	00 01                	add    %al,(%rcx)
 415:	53                   	push   %rbx
 416:	44 04 00             	rex.R add $0x0,%al
 419:	00 20                	add    %ah,(%rax)
 41b:	d6                   	(bad)  
 41c:	02 00                	add    (%rax),%al
 41e:	00 95 00 00 00 21    	add    %dl,0x21000000(%rbp)
 424:	dc 04 40             	faddl  (%rax,%rax,2)
 427:	00 00                	add    %al,(%rax)
 429:	00 00                	add    %al,(%rax)
 42b:	00 c9                	add    %cl,%cl
 42d:	04 00                	add    $0x0,%al
 42f:	00 22                	add    %ah,(%rdx)
 431:	01 55 01             	add    %edx,0x1(%rbp)
 434:	31 22                	xor    %esp,(%rdx)
 436:	01 54 09 03          	add    %edx,0x3(%rcx,%rcx,1)
 43a:	84 07                	test   %al,(%rdi)
 43c:	40 00 00             	add    %al,(%rax)
 43f:	00 00                	add    %al,(%rax)
 441:	00 00                	add    %al,(%rax)
 443:	00 1f                	add    %bl,(%rdi)
 445:	c6 02 00             	movb   $0x0,(%rdx)
 448:	00 e1                	add    %ah,%cl
 44a:	04 40                	add    $0x40,%al
 44c:	00 00                	add    %al,(%rax)
 44e:	00 00                	add    %al,(%rax)
 450:	00 13                	add    %dl,(%rbx)
 452:	00 00                	add    %al,(%rax)
 454:	00 00                	add    %al,(%rax)
 456:	00 00                	add    %al,(%rax)
 458:	00 01                	add    %al,(%rcx)
 45a:	54                   	push   %rsp
 45b:	89 04 00             	mov    %eax,(%rax,%rax,1)
 45e:	00 20                	add    %ah,(%rax)
 460:	d6                   	(bad)  
 461:	02 00                	add    (%rax),%al
 463:	00 c1                	add    %al,%cl
 465:	00 00                	add    %al,(%rax)
 467:	00 21                	add    %ah,(%rcx)
 469:	f4                   	hlt    
 46a:	04 40                	add    $0x40,%al
 46c:	00 00                	add    %al,(%rax)
 46e:	00 00                	add    %al,(%rax)
 470:	00 c9                	add    %cl,%cl
 472:	04 00                	add    $0x0,%al
 474:	00 22                	add    %ah,(%rdx)
 476:	01 55 01             	add    %edx,0x1(%rbp)
 479:	31 22                	xor    %esp,(%rdx)
 47b:	01 54 09 03          	add    %edx,0x3(%rcx,%rcx,1)
 47f:	93                   	xchg   %eax,%ebx
 480:	07                   	(bad)  
 481:	40 00 00             	add    %al,(%rax)
 484:	00 00                	add    %al,(%rax)
 486:	00 00                	add    %al,(%rax)
 488:	00 1c c9             	add    %bl,(%rcx,%rcx,8)
 48b:	04 40                	add    $0x40,%al
 48d:	00 00                	add    %al,(%rax)
 48f:	00 00                	add    %al,(%rax)
 491:	00 16                	add    %dl,(%rsi)
 493:	03 00                	add    (%rax),%eax
 495:	00 1c e1             	add    %bl,(%rcx,%riz,8)
 498:	04 40                	add    $0x40,%al
 49a:	00 00                	add    %al,(%rax)
 49c:	00 00                	add    %al,(%rax)
 49e:	00 5f 03             	add    %bl,0x3(%rdi)
 4a1:	00 00                	add    %al,(%rax)
 4a3:	00 06                	add    %al,(%rsi)
 4a5:	08 8b 00 00 00 23    	or     %cl,0x23000000(%rbx)
 4ab:	45 01 00             	add    %r8d,(%r8)
 4ae:	00 06                	add    %al,(%rsi)
 4b0:	a8 53                	test   $0x53,%al
 4b2:	02 00                	add    (%rax),%al
 4b4:	00 23                	add    %ah,(%rbx)
 4b6:	b9 01 00 00 06       	mov    $0x6000001,%ecx
 4bb:	a9 53 02 00 00       	test   $0x253,%eax
 4c0:	24 2b                	and    $0x2b,%al
 4c2:	02 00                	add    (%rax),%al
 4c4:	00 2b                	add    %ch,(%rbx)
 4c6:	02 00                	add    (%rax),%al
 4c8:	00 25 a8 00 00 00    	add    %ah,0xa8(%rip)        # 576 <_init-0x3ffed2>
 4ce:	a8 00                	test   $0x0,%al
 4d0:	00 00                	add    %al,(%rax)
 4d2:	02 57 00             	add    0x0(%rdi),%dl

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
 137:	03 0e                	add    (%rsi),%ecx
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
 14f:	18 00                	sbb    %al,(%rax)
 151:	00 1b                	add    %bl,(%rbx)
 153:	34 00                	xor    $0x0,%al
 155:	03 08                	add    (%rax),%ecx
 157:	3a 0b                	cmp    (%rbx),%cl
 159:	3b 0b                	cmp    (%rbx),%ecx
 15b:	49 13 02             	adc    (%r10),%rax
 15e:	17                   	(bad)  
 15f:	00 00                	add    %al,(%rax)
 161:	1c 89                	sbb    $0x89,%al
 163:	82                   	(bad)  
 164:	01 00                	add    %eax,(%rax)
 166:	11 01                	adc    %eax,(%rcx)
 168:	31 13                	xor    %edx,(%rbx)
 16a:	00 00                	add    %al,(%rax)
 16c:	1d 2e 01 3f 19       	sbb    $0x193f012e,%eax
 171:	03 0e                	add    (%rsi),%ecx
 173:	3a 0b                	cmp    (%rbx),%cl
 175:	3b 0b                	cmp    (%rbx),%ecx
 177:	49 13 11             	adc    (%r9),%rdx
 17a:	01 12                	add    %edx,(%rdx)
 17c:	07                   	(bad)  
 17d:	40 18 97 42 19 01 13 	sbb    %dl,0x13011942(%rdi)
 184:	00 00                	add    %al,(%rax)
 186:	1e                   	(bad)  
 187:	05 00 03 0e 3a       	add    $0x3a0e0300,%eax
 18c:	0b 3b                	or     (%rbx),%edi
 18e:	0b 49 13             	or     0x13(%rcx),%ecx
 191:	02 17                	add    (%rdi),%dl
 193:	00 00                	add    %al,(%rax)
 195:	1f                   	(bad)  
 196:	1d 01 31 13 11       	sbb    $0x11133101,%eax
 19b:	01 12                	add    %edx,(%rdx)
 19d:	07                   	(bad)  
 19e:	58                   	pop    %rax
 19f:	0b 59 0b             	or     0xb(%rcx),%ebx
 1a2:	01 13                	add    %edx,(%rbx)
 1a4:	00 00                	add    %al,(%rax)
 1a6:	20 05 00 31 13 02    	and    %al,0x2133100(%rip)        # 21332ac <_end+0x1b32264>
 1ac:	17                   	(bad)  
 1ad:	00 00                	add    %al,(%rax)
 1af:	21 89 82 01 01 11    	and    %ecx,0x11010182(%rcx)
 1b5:	01 31                	add    %esi,(%rcx)
 1b7:	13 00                	adc    (%rax),%eax
 1b9:	00 22                	add    %ah,(%rdx)
 1bb:	8a 82 01 00 02 18    	mov    0x18020001(%rdx),%al
 1c1:	91                   	xchg   %eax,%ecx
 1c2:	42 18 00             	rex.X sbb %al,(%rax)
 1c5:	00 23                	add    %ah,(%rbx)
 1c7:	34 00                	xor    $0x0,%al
 1c9:	03 0e                	add    (%rsi),%ecx
 1cb:	3a 0b                	cmp    (%rbx),%cl
 1cd:	3b 0b                	cmp    (%rbx),%ecx
 1cf:	49 13 3f             	adc    (%r15),%rdi
 1d2:	19 3c 19             	sbb    %edi,(%rcx,%rbx,1)
 1d5:	00 00                	add    %al,(%rax)
 1d7:	24 2e                	and    $0x2e,%al
 1d9:	00 3f                	add    %bh,(%rdi)
 1db:	19 3c 19             	sbb    %edi,(%rcx,%rbx,1)
 1de:	6e                   	outsb  %ds:(%rsi),(%dx)
 1df:	0e                   	(bad)  
 1e0:	03 0e                	add    (%rsi),%ecx
 1e2:	00 00                	add    %al,(%rax)
 1e4:	25 2e 00 3f 19       	and    $0x193f002e,%eax
 1e9:	3c 19                	cmp    $0x19,%al
 1eb:	6e                   	outsb  %ds:(%rsi),(%dx)
 1ec:	0e                   	(bad)  
 1ed:	03 0e                	add    (%rsi),%ecx
 1ef:	3a 0b                	cmp    (%rbx),%cl
 1f1:	3b 0b                	cmp    (%rbx),%ecx
 1f3:	00 00                	add    %al,(%rax)
	...

Disassembly of section .debug_line:

0000000000000000 <.debug_line>:
   0:	1b 01                	sbb    (%rcx),%eax
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
  e4:	f4                   	hlt    
  e5:	57                   	push   %rdi
  e6:	02 30                	add    (%rax),%dh
  e8:	13 03                	adc    (%rbx),%eax
  ea:	2e 58                	cs pop %rax
  ec:	02 58 15             	add    0x15(%rax),%bl
  ef:	02 1a                	add    (%rdx),%bl
  f1:	00 01                	add    %al,(%rcx)
  f3:	01 00                	add    %eax,(%rax)
  f5:	09 02                	or     %eax,(%rdx)
  f7:	c0 04 40 00          	rolb   $0x0,(%rax,%rax,2)
  fb:	00 00                	add    %al,(%rax)
  fd:	00 00                	add    %al,(%rax)
  ff:	03 d1                	add    %ecx,%edx
 101:	00 01                	add    %al,(%rcx)
 103:	4b 04 02             	rex.WXB add $0x2,%al
 106:	03 15 58 04 01 03    	add    0x3010458(%rip),%edx        # 3010564 <_end+0x2a0f51c>
 10c:	6c                   	insb   (%dx),%es:(%rdi)
 10d:	08 2e                	or     %ch,(%rsi)
 10f:	04 02                	add    $0x2,%al
 111:	03 14 58             	add    (%rax,%rbx,2),%edx
 114:	04 01                	add    $0x1,%al
 116:	03 6e 08             	add    0x8(%rsi),%ebp
 119:	2e 02 07             	add    %cs:(%rdi),%al
 11c:	00 01                	add    %al,(%rcx)
 11e:	01                   	.byte 0x1

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
  2a:	78 73                	js     9f <_init-0x4003a9>
  2c:	5f                   	pop    %rdi
  2d:	75 6e                	jne    9d <_init-0x4003ab>
  2f:	64 65 72 6c          	fs gs jb 9f <_init-0x4003a9>
  33:	79 69                	jns    9e <_init-0x4003aa>
  35:	6e                   	outsb  %ds:(%rsi),(%dx)
  36:	67 00 5f 73          	add    %bl,0x73(%edi)
  3a:	68 6f 72 74 62       	pushq  $0x6274726f
  3f:	75 66                	jne    a7 <_init-0x4003a1>
  41:	00 5f 49             	add    %bl,0x49(%rdi)
  44:	4f 5f                	rex.WRXB pop %r15
  46:	62                   	(bad)  
  47:	75 66                	jne    af <_init-0x400399>
  49:	5f                   	pop    %rdi
  4a:	62 61                	(bad)  
  4c:	73 65                	jae    b3 <_init-0x400395>
  4e:	00 6c 6f 6e          	add    %ch,0x6e(%rdi,%rbp,2)
  52:	67 20 6c 6f 6e       	and    %ch,0x6e(%edi,%ebp,2)
  57:	67 20 75 6e          	and    %dh,0x6e(%ebp)
  5b:	73 69                	jae    c6 <_init-0x400382>
  5d:	67 6e                	outsb  %ds:(%esi),(%dx)
  5f:	65 64 20 69 6e       	gs and %ch,%fs:0x6e(%rcx)
  64:	74 00                	je     66 <_init-0x4003e2>
  66:	6c                   	insb   (%dx),%es:(%rdi)
  67:	6f                   	outsl  %ds:(%rsi),(%dx)
  68:	6e                   	outsb  %ds:(%rsi),(%dx)
  69:	67 20 6c 6f 6e       	and    %ch,0x6e(%edi,%ebp,2)
  6e:	67 20 69 6e          	and    %ch,0x6e(%ecx)
  72:	74 00                	je     74 <_init-0x4003d4>
  74:	5f                   	pop    %rdi
  75:	66 69 6c 65 6e 6f 00 	imul   $0x6f,0x6e(%rbp,%riz,2),%bp
  7c:	5f                   	pop    %rdi
  7d:	49                   	rex.WB
  7e:	4f 5f                	rex.WRXB pop %r15
  80:	72 65                	jb     e7 <_init-0x400361>
  82:	61                   	(bad)  
  83:	64 5f                	fs pop %rdi
  85:	65 6e                	outsb  %gs:(%rsi),(%dx)
  87:	64 00 5f 66          	add    %bl,%fs:0x66(%rdi)
  8b:	6c                   	insb   (%dx),%es:(%rdi)
  8c:	61                   	(bad)  
  8d:	67 73 00             	addr32 jae 90 <_init-0x4003b8>
  90:	5f                   	pop    %rdi
  91:	49                   	rex.WB
  92:	4f 5f                	rex.WRXB pop %r15
  94:	62                   	(bad)  
  95:	75 66                	jne    fd <_init-0x40034b>
  97:	5f                   	pop    %rdi
  98:	65 6e                	outsb  %gs:(%rsi),(%dx)
  9a:	64 00 5f 63          	add    %bl,%fs:0x63(%rdi)
  9e:	75 72                	jne    112 <_init-0x400336>
  a0:	5f                   	pop    %rdi
  a1:	63 6f 6c             	movslq 0x6c(%rdi),%ebp
  a4:	75 6d                	jne    113 <_init-0x400335>
  a6:	6e                   	outsb  %ds:(%rsi),(%dx)
  a7:	00 5f 5f             	add    %bl,0x5f(%rdi)
  aa:	70 72                	jo     11e <_init-0x40032a>
  ac:	69 6e 74 66 5f 63 68 	imul   $0x68635f66,0x74(%rsi),%ebp
  b3:	6b 00 5f             	imul   $0x5f,(%rax),%eax
  b6:	6f                   	outsl  %ds:(%rsi),(%dx)
  b7:	6c                   	insb   (%dx),%es:(%rdi)
  b8:	64 5f                	fs pop %rdi
  ba:	6f                   	outsl  %ds:(%rsi),(%dx)
  bb:	66 66 73 65          	data16 data16 jae 124 <_init-0x400324>
  bf:	74 00                	je     c1 <_init-0x400387>
  c1:	61                   	(bad)  
  c2:	63 74 75 61          	movslq 0x61(%rbp,%rsi,2),%esi
  c6:	6c                   	insb   (%dx),%es:(%rdi)
  c7:	5f                   	pop    %rdi
  c8:	6c                   	insb   (%dx),%es:(%rdi)
  c9:	6f                   	outsl  %ds:(%rsi),(%dx)
  ca:	6f                   	outsl  %ds:(%rsi),(%dx)
  cb:	70 65                	jo     132 <_init-0x400316>
  cd:	64 00 47 4e          	add    %al,%fs:0x4e(%rdi)
  d1:	55                   	push   %rbp
  d2:	20 43 2b             	and    %al,0x2b(%rbx)
  d5:	2b 31                	sub    (%rcx),%esi
  d7:	31 20                	xor    %esp,(%rax)
  d9:	35 2e 34 2e 30       	xor    $0x302e342e,%eax
  de:	20 32                	and    %dh,(%rdx)
  e0:	30 31                	xor    %dh,(%rcx)
  e2:	36 30 36             	xor    %dh,%ss:(%rsi)
  e5:	30 39                	xor    %bh,(%rcx)
  e7:	20 2d 6d 61 76 78    	and    %ch,0x7876616d(%rip)        # 7876625a <_end+0x78165212>
  ed:	35 31 32 66 20       	xor    $0x20663231,%eax
  f2:	2d 6d 74 75 6e       	sub    $0x6e75746d,%eax
  f7:	65 3d 67 65 6e 65    	gs cmp $0x656e6567,%eax
  fd:	72 69                	jb     168 <_init-0x4002e0>
  ff:	63 20                	movslq (%rax),%esp
 101:	2d 6d 61 72 63       	sub    $0x6372616d,%eax
 106:	68 3d 78 38 36       	pushq  $0x3638783d
 10b:	2d 36 34 20 2d       	sub    $0x2d203436,%eax
 110:	67 20 2d 4f 33 20 2d 	and    %ch,0x2d20334f(%eip)        # 2d203466 <_end+0x2cc0241e>
 117:	73 74                	jae    18d <_init-0x4002bb>
 119:	64 3d 63 2b 2b 31    	fs cmp $0x312b2b63,%eax
 11f:	31 20                	xor    %esp,(%rax)
 121:	2d 66 73 74 61       	sub    $0x61747366,%eax
 126:	63 6b 2d             	movslq 0x2d(%rbx),%ebp
 129:	70 72                	jo     19d <_init-0x4002ab>
 12b:	6f                   	outsl  %ds:(%rsi),(%dx)
 12c:	74 65                	je     193 <_init-0x4002b5>
 12e:	63 74 6f 72          	movslq 0x72(%rdi,%rbp,2),%esi
 132:	2d 73 74 72 6f       	sub    $0x6f727473,%eax
 137:	6e                   	outsb  %ds:(%rsi),(%dx)
 138:	67 00 5f 49          	add    %bl,0x49(%edi)
 13c:	4f 5f                	rex.WRXB pop %r15
 13e:	6d                   	insl   (%dx),%es:(%rdi)
 13f:	61                   	(bad)  
 140:	72 6b                	jb     1ad <_init-0x40029b>
 142:	65 72 00             	gs jb  145 <_init-0x400303>
 145:	73 74                	jae    1bb <_init-0x40028d>
 147:	64 69 6e 00 65 78 70 	imul   $0x65707865,%fs:0x0(%rsi),%ebp
 14e:	65 
 14f:	63 74 65 64          	movslq 0x64(%rbp,%riz,2),%esi
 153:	00 73 72             	add    %dh,0x72(%rbx)
 156:	63 2f                	movslq (%rdi),%ebp
 158:	6a 75                	pushq  $0x75
 15a:	6d                   	insl   (%dx),%es:(%rdi)
 15b:	70 74                	jo     1d1 <_init-0x400277>
 15d:	61                   	(bad)  
 15e:	62                   	(bad)  
 15f:	6c                   	insb   (%dx),%es:(%rdi)
 160:	65 2f                	gs (bad) 
 162:	6a 75                	pushq  $0x75
 164:	6d                   	insl   (%dx),%es:(%rdi)
 165:	70 74                	jo     1db <_init-0x40026d>
 167:	61                   	(bad)  
 168:	62                   	(bad)  
 169:	6c                   	insb   (%dx),%es:(%rdi)
 16a:	65 2e 63 70 70       	gs movslq %cs:0x70(%rax),%esi
 16f:	00 5f 49             	add    %bl,0x49(%rdi)
 172:	4f 5f                	rex.WRXB pop %r15
 174:	77 72                	ja     1e8 <_init-0x400260>
 176:	69 74 65 5f 70 74 72 	imul   $0x727470,0x5f(%rbp,%riz,2),%esi
 17d:	00 
 17e:	5f                   	pop    %rdi
 17f:	73 62                	jae    1e3 <_init-0x400265>
 181:	75 66                	jne    1e9 <_init-0x40025f>
 183:	00 73 68             	add    %dh,0x68(%rbx)
 186:	6f                   	outsl  %ds:(%rsi),(%dx)
 187:	72 74                	jb     1fd <_init-0x40024b>
 189:	20 75 6e             	and    %dh,0x6e(%rbp)
 18c:	73 69                	jae    1f7 <_init-0x400251>
 18e:	67 6e                	outsb  %ds:(%esi),(%dx)
 190:	65 64 20 69 6e       	gs and %ch,%fs:0x6e(%rcx)
 195:	74 00                	je     197 <_init-0x4002b1>
 197:	5f                   	pop    %rdi
 198:	49                   	rex.WB
 199:	4f 5f                	rex.WRXB pop %r15
 19b:	73 61                	jae    1fe <_init-0x40024a>
 19d:	76 65                	jbe    204 <_init-0x400244>
 19f:	5f                   	pop    %rdi
 1a0:	62 61                	(bad)  
 1a2:	73 65                	jae    209 <_init-0x40023f>
 1a4:	00 5f 6c             	add    %bl,0x6c(%rdi)
 1a7:	6f                   	outsl  %ds:(%rsi),(%dx)
 1a8:	63 6b 00             	movslq 0x0(%rbx),%ebp
 1ab:	5f                   	pop    %rdi
 1ac:	66 6c                	data16 insb (%dx),%es:(%rdi)
 1ae:	61                   	(bad)  
 1af:	67 73 32             	addr32 jae 1e4 <_init-0x400264>
 1b2:	00 5f 6d             	add    %bl,0x6d(%rdi)
 1b5:	6f                   	outsl  %ds:(%rsi),(%dx)
 1b6:	64 65 00 73 74       	fs add %dh,%gs:0x74(%rbx)
 1bb:	64 6f                	outsl  %fs:(%rsi),(%dx)
 1bd:	75 74                	jne    233 <_init-0x400215>
 1bf:	00 73 69             	add    %dh,0x69(%rbx)
 1c2:	7a 65                	jp     229 <_init-0x40021f>
 1c4:	74 79                	je     23f <_init-0x400209>
 1c6:	70 65                	jo     22d <_init-0x40021b>
 1c8:	00 5f 49             	add    %bl,0x49(%rdi)
 1cb:	4f 5f                	rex.WRXB pop %r15
 1cd:	77 72                	ja     241 <_init-0x400207>
 1cf:	69 74 65 5f 65 6e 64 	imul   $0x646e65,0x5f(%rbp,%riz,2),%esi
 1d6:	00 
 1d7:	5f                   	pop    %rdi
 1d8:	49                   	rex.WB
 1d9:	4f 5f                	rex.WRXB pop %r15
 1db:	6c                   	insb   (%dx),%es:(%rdi)
 1dc:	6f                   	outsl  %ds:(%rsi),(%dx)
 1dd:	63 6b 5f             	movslq 0x5f(%rbx),%ebp
 1e0:	74 00                	je     1e2 <_init-0x400266>
 1e2:	5f                   	pop    %rdi
 1e3:	49                   	rex.WB
 1e4:	4f 5f                	rex.WRXB pop %r15
 1e6:	46                   	rex.RX
 1e7:	49                   	rex.WB
 1e8:	4c                   	rex.WR
 1e9:	45 00 5f 70          	add    %r11b,0x70(%r15)
 1ed:	6f                   	outsl  %ds:(%rsi),(%dx)
 1ee:	73 00                	jae    1f0 <_init-0x400258>
 1f0:	5f                   	pop    %rdi
 1f1:	6d                   	insl   (%dx),%es:(%rdi)
 1f2:	61                   	(bad)  
 1f3:	72 6b                	jb     260 <_init-0x4001e8>
 1f5:	65 72 73             	gs jb  26b <_init-0x4001dd>
 1f8:	00 75 6e             	add    %dh,0x6e(%rbp)
 1fb:	73 69                	jae    266 <_init-0x4001e2>
 1fd:	67 6e                	outsb  %ds:(%esi),(%dx)
 1ff:	65 64 20 63 68       	gs and %ah,%fs:0x68(%rbx)
 204:	61                   	(bad)  
 205:	72 00                	jb     207 <_init-0x400241>
 207:	73 68                	jae    271 <_init-0x4001d7>
 209:	6f                   	outsl  %ds:(%rsi),(%dx)
 20a:	72 74                	jb     280 <_init-0x4001c8>
 20c:	20 69 6e             	and    %ch,0x6e(%rcx)
 20f:	74 00                	je     211 <_init-0x400237>
 211:	74 61                	je     274 <_init-0x4001d4>
 213:	62                   	(bad)  
 214:	6c                   	insb   (%dx),%es:(%rdi)
 215:	65 00 5f 76          	add    %bl,%gs:0x76(%rdi)
 219:	74 61                	je     27c <_init-0x4001cc>
 21b:	62                   	(bad)  
 21c:	6c                   	insb   (%dx),%es:(%rdi)
 21d:	65 5f                	gs pop %rdi
 21f:	6f                   	outsl  %ds:(%rsi),(%dx)
 220:	66 66 73 65          	data16 data16 jae 289 <_init-0x4001bf>
 224:	74 00                	je     226 <_init-0x400222>
 226:	2f                   	(bad)  
 227:	73 72                	jae    29b <_init-0x4001ad>
 229:	63 00                	movslq (%rax),%eax
 22b:	5f                   	pop    %rdi
 22c:	5f                   	pop    %rdi
 22d:	73 74                	jae    2a3 <_init-0x4001a5>
 22f:	61                   	(bad)  
 230:	63 6b 5f             	movslq 0x5f(%rbx),%ebp
 233:	63 68 6b             	movslq 0x6b(%rax),%ebp
 236:	5f                   	pop    %rdi
 237:	66 61                	data16 (bad) 
 239:	69 6c 00 5f 5a 35 74 	imul   $0x6174355a,0x5f(%rax,%rax,1),%ebp
 240:	61 
 241:	62                   	(bad)  
 242:	6c                   	insb   (%dx),%es:(%rdi)
 243:	65 69 52 69 00 5f 5a 	imul   $0x385a5f00,%gs:0x69(%rdx),%edx
 24a:	38 
 24b:	65 78 70             	gs js  2be <_init-0x40018a>
 24e:	65 63 74 65 64       	movslq %gs:0x64(%rbp,%riz,2),%esi
 253:	76 00                	jbe    255 <_init-0x4001f3>
 255:	5f                   	pop    %rdi
 256:	6e                   	outsb  %ds:(%rsi),(%dx)
 257:	65 78 74             	gs js  2ce <_init-0x40017a>
 25a:	00 5f 5f             	add    %bl,0x5f(%rdi)
 25d:	6f                   	outsl  %ds:(%rsi),(%dx)
 25e:	66 66 36 34 5f       	data16 data16 ss xor $0x5f,%al
 263:	74 00                	je     265 <_init-0x4001e3>
 265:	5f                   	pop    %rdi
 266:	49                   	rex.WB
 267:	4f 5f                	rex.WRXB pop %r15
 269:	72 65                	jb     2d0 <_init-0x400178>
 26b:	61                   	(bad)  
 26c:	64 5f                	fs pop %rdi
 26e:	62 61                	(bad)  
 270:	73 65                	jae    2d7 <_init-0x400171>
 272:	00 5f 49             	add    %bl,0x49(%rdi)
 275:	4f 5f                	rex.WRXB pop %r15
 277:	73 61                	jae    2da <_init-0x40016e>
 279:	76 65                	jbe    2e0 <_init-0x400168>
 27b:	5f                   	pop    %rdi
 27c:	65 6e                	outsb  %gs:(%rsi),(%dx)
 27e:	64 00 5f 5f          	add    %bl,%fs:0x5f(%rdi)
 282:	66 6d                	insw   (%dx),%es:(%rdi)
 284:	74 00                	je     286 <_init-0x4001c2>
 286:	5f                   	pop    %rdi
 287:	5f                   	pop    %rdi
 288:	70 61                	jo     2eb <_init-0x40015d>
 28a:	64 31 00             	xor    %eax,%fs:(%rax)
 28d:	5f                   	pop    %rdi
 28e:	5f                   	pop    %rdi
 28f:	70 61                	jo     2f2 <_init-0x400156>
 291:	64 32 00             	xor    %fs:(%rax),%al
 294:	5f                   	pop    %rdi
 295:	5f                   	pop    %rdi
 296:	70 61                	jo     2f9 <_init-0x40014f>
 298:	64 33 00             	xor    %fs:(%rax),%eax
 29b:	5f                   	pop    %rdi
 29c:	5f                   	pop    %rdi
 29d:	70 61                	jo     300 <_init-0x400148>
 29f:	64 34 00             	fs xor $0x0,%al
 2a2:	5f                   	pop    %rdi
 2a3:	5f                   	pop    %rdi
 2a4:	70 61                	jo     307 <_init-0x400141>
 2a6:	64 35 00 5f 75 6e    	fs xor $0x6e755f00,%eax
 2ac:	75 73                	jne    321 <_init-0x400127>
 2ae:	65 64 32 00          	gs xor %fs:(%rax),%al
 2b2:	61                   	(bad)  
 2b3:	72 67                	jb     31c <_init-0x40012c>
 2b5:	76 00                	jbe    2b7 <_init-0x400191>
 2b7:	5f                   	pop    %rdi
 2b8:	49                   	rex.WB
 2b9:	4f 5f                	rex.WRXB pop %r15
 2bb:	62 61                	(bad)  
 2bd:	63 6b 75             	movslq 0x75(%rbx),%ebp
 2c0:	70 5f                	jo     321 <_init-0x400127>
 2c2:	62 61                	(bad)  
 2c4:	73 65                	jae    32b <_init-0x40011d>
 2c6:	00 61 72             	add    %ah,0x72(%rcx)
 2c9:	67 63 00             	movslq (%eax),%eax
 2cc:	6d                   	insl   (%dx),%es:(%rdi)
 2cd:	61                   	(bad)  
 2ce:	69 6e 00 5f 49 4f 5f 	imul   $0x5f4f495f,0x0(%rsi),%ebp
 2d5:	77 72                	ja     349 <_init-0x4000ff>
 2d7:	69 74 65 5f 62 61 73 	imul   $0x65736162,0x5f(%rbp,%riz,2),%esi
 2de:	65 
 2df:	00 5f 5a             	add    %bl,0x5a(%rdi)
 2e2:	31 33                	xor    %esi,(%rbx)
 2e4:	61                   	(bad)  
 2e5:	63 74 75 61          	movslq 0x61(%rbp,%rsi,2),%esi
 2e9:	6c                   	insb   (%dx),%es:(%rdi)
 2ea:	5f                   	pop    %rdi
 2eb:	6c                   	insb   (%dx),%es:(%rdi)
 2ec:	6f                   	outsl  %ds:(%rsi),(%dx)
 2ed:	6f                   	outsl  %ds:(%rsi),(%dx)
 2ee:	70 65                	jo     355 <_init-0x4000f3>
 2f0:	64 76 00             	fs jbe 2f3 <_init-0x400155>

Disassembly of section .debug_loc:

0000000000000000 <.debug_loc>:
   0:	e6 06                	out    %al,$0x6
   2:	40 00 00             	add    %al,(%rax)
   5:	00 00                	add    %al,(%rax)
   7:	00 ff                	add    %bh,%bh
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
  a8:	84 07                	test   %al,(%rdi)
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
  d4:	93                   	xchg   %eax,%ebx
  d5:	07                   	(bad)  
  d6:	40 00 00             	add    %al,(%rax)
  d9:	00 00                	add    %al,(%rax)
  db:	00 9f 00 00 00 00    	add    %bl,0x0(%rdi)
	...

Disassembly of section .debug_ranges:

0000000000000000 <.debug_ranges>:
   0:	00 06                	add    %al,(%rsi)
   2:	40 00 00             	add    %al,(%rax)
   5:	00 00                	add    %al,(%rax)
   7:	00 00                	add    %al,(%rax)
   9:	07                   	(bad)  
   a:	40 00 00             	add    %al,(%rax)
   d:	00 00                	add    %al,(%rax)
   f:	00 c0                	add    %al,%al
  11:	04 40                	add    $0x40,%al
  13:	00 00                	add    %al,(%rax)
  15:	00 00                	add    %al,(%rax)
  17:	00 fb                	add    %bh,%bl
  19:	04 40                	add    $0x40,%al
	...
