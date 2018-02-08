
build/exp_seissol_star:     file format elf64-x86-64


Disassembly of section .interp:

0000000000400238 <.interp>:
  400238:	2f                   	(bad)  
  400239:	6c                   	insb   (%dx),%es:(%rdi)
  40023a:	69 62 36 34 2f 6c 64 	imul   $0x646c2f34,0x36(%rdx),%esp
  400241:	2d 6c 69 6e 75       	sub    $0x756e696c,%eax
  400246:	78 2d                	js     400275 <_init-0x12ab>
  400248:	78 38                	js     400282 <_init-0x129e>
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
  400267:	00 03                	add    %al,(%rbx)
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
  400283:	00 fe                	add    %bh,%dh
  400285:	32 89 6d 3a 37 7c    	xor    0x7c373a6d(%rcx),%cl
  40028b:	b1 9f                	mov    $0x9f,%cl
  40028d:	57                   	push   %rdi
  40028e:	4f 03 e8             	rex.WRXB add %r8,%r13
  400291:	e3 19                	jrcxz  4002ac <_init-0x1274>
  400293:	b2 97                	mov    $0x97,%dl
  400295:	7b e6                	jnp    40027d <_init-0x12a3>
  400297:	6b                   	.byte 0x6b

Disassembly of section .hash:

0000000000400298 <.hash>:
  400298:	25 00 00 00 3b       	and    $0x3b000000,%eax
  40029d:	00 00                	add    %al,(%rax)
  40029f:	00 08                	add    %cl,(%rax)
  4002a1:	00 00                	add    %al,(%rax)
  4002a3:	00 23                	add    %ah,(%rbx)
  4002a5:	00 00                	add    %al,(%rax)
  4002a7:	00 0d 00 00 00 00    	add    %cl,0x0(%rip)        # 4002ad <_init-0x1273>
  4002ad:	00 00                	add    %al,(%rax)
  4002af:	00 16                	add    %dl,(%rsi)
	...
  4002bd:	00 00                	add    %al,(%rax)
  4002bf:	00 2d 00 00 00 20    	add    %ch,0x20000000(%rip)        # 204002c5 <_end+0x1fdf5ab5>
  4002c5:	00 00                	add    %al,(%rax)
  4002c7:	00 25 00 00 00 2e    	add    %ah,0x2e000000(%rip)        # 2e4002cd <_end+0x2ddf5abd>
  4002cd:	00 00                	add    %al,(%rax)
  4002cf:	00 3a                	add    %bh,(%rdx)
  4002d1:	00 00                	add    %al,(%rax)
  4002d3:	00 36                	add    %dh,(%rsi)
  4002d5:	00 00                	add    %al,(%rax)
  4002d7:	00 2c 00             	add    %ch,(%rax,%rax,1)
  4002da:	00 00                	add    %al,(%rax)
  4002dc:	2f                   	(bad)  
  4002dd:	00 00                	add    %al,(%rax)
  4002df:	00 28                	add    %ch,(%rax)
  4002e1:	00 00                	add    %al,(%rax)
  4002e3:	00 29                	add    %ch,(%rcx)
  4002e5:	00 00                	add    %al,(%rax)
  4002e7:	00 2b                	add    %ch,(%rbx)
  4002e9:	00 00                	add    %al,(%rax)
  4002eb:	00 1c 00             	add    %bl,(%rax,%rax,1)
  4002ee:	00 00                	add    %al,(%rax)
  4002f0:	39 00                	cmp    %eax,(%rax)
  4002f2:	00 00                	add    %al,(%rax)
  4002f4:	00 00                	add    %al,(%rax)
  4002f6:	00 00                	add    %al,(%rax)
  4002f8:	1f                   	(bad)  
	...
  400309:	00 00                	add    %al,(%rax)
  40030b:	00 30                	add    %dh,(%rax)
  40030d:	00 00                	add    %al,(%rax)
  40030f:	00 00                	add    %al,(%rax)
  400311:	00 00                	add    %al,(%rax)
  400313:	00 37                	add    %dh,(%rdi)
  400315:	00 00                	add    %al,(%rax)
  400317:	00 1d 00 00 00 21    	add    %bl,0x21000000(%rip)        # 2140031d <_end+0x20df5b0d>
  40031d:	00 00                	add    %al,(%rax)
  40031f:	00 38                	add    %bh,(%rax)
  400321:	00 00                	add    %al,(%rax)
  400323:	00 00                	add    %al,(%rax)
  400325:	00 00                	add    %al,(%rax)
  400327:	00 33                	add    %dh,(%rbx)
  400329:	00 00                	add    %al,(%rax)
  40032b:	00 0b                	add    %cl,(%rbx)
  40032d:	00 00                	add    %al,(%rax)
  40032f:	00 31                	add    %dh,(%rcx)
	...
  400369:	00 00                	add    %al,(%rax)
  40036b:	00 02                	add    %al,(%rdx)
  40036d:	00 00                	add    %al,(%rax)
  40036f:	00 05 00 00 00 07    	add    %al,0x7000000(%rip)        # 7400375 <_end+0x6df5b65>
	...
  40037d:	00 00                	add    %al,(%rax)
  40037f:	00 0a                	add    %cl,(%rdx)
	...
  400391:	00 00                	add    %al,(%rax)
  400393:	00 10                	add    %dl,(%rax)
  400395:	00 00                	add    %al,(%rax)
  400397:	00 00                	add    %al,(%rax)
  400399:	00 00                	add    %al,(%rax)
  40039b:	00 12                	add    %dl,(%rdx)
  40039d:	00 00                	add    %al,(%rax)
  40039f:	00 06                	add    %al,(%rsi)
  4003a1:	00 00                	add    %al,(%rax)
  4003a3:	00 35 00 00 00 15    	add    %dh,0x15000000(%rip)        # 154003a9 <_end+0x14df5b99>
  4003a9:	00 00                	add    %al,(%rax)
  4003ab:	00 1a                	add    %bl,(%rdx)
	...
  4003b5:	00 00                	add    %al,(%rax)
  4003b7:	00 1e                	add    %bl,(%rsi)
  4003b9:	00 00                	add    %al,(%rax)
  4003bb:	00 00                	add    %al,(%rax)
  4003bd:	00 00                	add    %al,(%rax)
  4003bf:	00 18                	add    %bl,(%rax)
  4003c1:	00 00                	add    %al,(%rax)
  4003c3:	00 00                	add    %al,(%rax)
  4003c5:	00 00                	add    %al,(%rax)
  4003c7:	00 24 00             	add    %ah,(%rax,%rax,1)
  4003ca:	00 00                	add    %al,(%rax)
  4003cc:	0c 00                	or     $0x0,%al
  4003ce:	00 00                	add    %al,(%rax)
  4003d0:	13 00                	adc    (%rax),%eax
  4003d2:	00 00                	add    %al,(%rax)
  4003d4:	26 00 00             	add    %al,%es:(%rax)
  4003d7:	00 00                	add    %al,(%rax)
  4003d9:	00 00                	add    %al,(%rax)
  4003db:	00 22                	add    %ah,(%rdx)
  4003dd:	00 00                	add    %al,(%rax)
  4003df:	00 09                	add    %cl,(%rcx)
  4003e1:	00 00                	add    %al,(%rax)
  4003e3:	00 19                	add    %bl,(%rcx)
  4003e5:	00 00                	add    %al,(%rax)
  4003e7:	00 2a                	add    %ch,(%rdx)
  4003e9:	00 00                	add    %al,(%rax)
  4003eb:	00 32                	add    %dh,(%rdx)
  4003ed:	00 00                	add    %al,(%rax)
  4003ef:	00 11                	add    %dl,(%rcx)
  4003f1:	00 00                	add    %al,(%rax)
  4003f3:	00 04 00             	add    %al,(%rax,%rax,1)
  4003f6:	00 00                	add    %al,(%rax)
  4003f8:	27                   	(bad)  
  4003f9:	00 00                	add    %al,(%rax)
  4003fb:	00 34 00             	add    %dh,(%rax,%rax,1)
  4003fe:	00 00                	add    %al,(%rax)
  400400:	0f 00 00             	sldt   (%rax)
  400403:	00 00                	add    %al,(%rax)
  400405:	00 00                	add    %al,(%rax)
  400407:	00 03                	add    %al,(%rbx)
  400409:	00 00                	add    %al,(%rax)
  40040b:	00 01                	add    %al,(%rcx)
  40040d:	00 00                	add    %al,(%rax)
  40040f:	00 1b                	add    %bl,(%rbx)
  400411:	00 00                	add    %al,(%rax)
  400413:	00 14 00             	add    %dl,(%rax,%rax,1)
  400416:	00 00                	add    %al,(%rax)
  400418:	17                   	(bad)  
  400419:	00 00                	add    %al,(%rax)
  40041b:	00 0e                	add    %cl,(%rsi)
  40041d:	00 00                	add    %al,(%rax)
	...

Disassembly of section .gnu.hash:

0000000000400420 <.gnu.hash>:
  400420:	03 00                	add    (%rax),%eax
  400422:	00 00                	add    %al,(%rax)
  400424:	32 00                	xor    (%rax),%al
  400426:	00 00                	add    %al,(%rax)
  400428:	01 00                	add    %eax,(%rax)
  40042a:	00 00                	add    %al,(%rax)
  40042c:	06                   	(bad)  
  40042d:	00 00                	add    %al,(%rax)
  40042f:	00 00                	add    %al,(%rax)
  400431:	20 3c 80             	and    %bh,(%rax,%rax,4)
  400434:	63 01                	movslq (%rcx),%eax
  400436:	10 11                	adc    %dl,(%rcx)
  400438:	32 00                	xor    (%rax),%al
  40043a:	00 00                	add    %al,(%rax)
  40043c:	34 00                	xor    $0x0,%al
  40043e:	00 00                	add    %al,(%rax)
  400440:	38 00                	cmp    %al,(%rax)
  400442:	00 00                	add    %al,(%rax)
  400444:	e0 a7                	loopne 4003ed <_init-0x1133>
  400446:	96                   	xchg   %eax,%esi
  400447:	7c 13                	jl     40045c <_init-0x10c4>
  400449:	3f                   	(bad)  
  40044a:	50                   	push   %rax
  40044b:	0f 8c 59 40 f1 20    	jl     213144aa <_end+0x20d09c9a>
  400451:	fd                   	std    
  400452:	f4                   	hlt    
  400453:	09 66 65             	or     %esp,0x65(%rsi)
  400456:	b8 49 13 1e 20       	mov    $0x201e1349,%eax
  40045b:	9e                   	sahf   
  40045c:	14 98                	adc    $0x98,%al
  40045e:	0c 43                	or     $0x43,%al
  400460:	78 49                	js     4004ab <_init-0x1075>
  400462:	6b                   	.byte 0x6b
  400463:	b6 29                	mov    $0x29,%dh
  400465:	45 d5                	rex.RB (bad) 
  400467:	4c                   	rex.WR

Disassembly of section .dynsym:

0000000000400468 <.dynsym>:
	...
  400480:	a1 03 00 00 12 00 00 	movabs 0x12000003,%eax
  400487:	00 00 
	...
  400495:	00 00                	add    %al,(%rax)
  400497:	00 a9 01 00 00 12    	add    %ch,0x12000001(%rcx)
	...
  4004ad:	00 00                	add    %al,(%rax)
  4004af:	00 22                	add    %ah,(%rdx)
  4004b1:	04 00                	add    $0x0,%al
  4004b3:	00 12                	add    %dl,(%rdx)
	...
  4004c5:	00 00                	add    %al,(%rax)
  4004c7:	00 a1 02 00 00 12    	add    %ah,0x12000002(%rcx)
	...
  4004dd:	00 00                	add    %al,(%rax)
  4004df:	00 52 04             	add    %dl,0x4(%rdx)
  4004e2:	00 00                	add    %al,(%rax)
  4004e4:	12 00                	adc    (%rax),%al
	...
  4004f6:	00 00                	add    %al,(%rax)
  4004f8:	f1                   	icebp  
  4004f9:	03 00                	add    (%rax),%eax
  4004fb:	00 12                	add    %dl,(%rdx)
	...
  40050d:	00 00                	add    %al,(%rax)
  40050f:	00 3c 04             	add    %bh,(%rsp,%rax,1)
  400512:	00 00                	add    %al,(%rax)
  400514:	12 00                	adc    (%rax),%al
	...
  400526:	00 00                	add    %al,(%rax)
  400528:	af                   	scas   %es:(%rdi),%eax
  400529:	01 00                	add    %eax,(%rax)
  40052b:	00 12                	add    %dl,(%rdx)
	...
  40053d:	00 00                	add    %al,(%rax)
  40053f:	00 b4 03 00 00 12 00 	add    %dh,0x120000(%rbx,%rax,1)
	...
  400556:	00 00                	add    %al,(%rax)
  400558:	13 04 00             	adc    (%rax,%rax,1),%eax
  40055b:	00 12                	add    %dl,(%rdx)
	...
  40056d:	00 00                	add    %al,(%rax)
  40056f:	00 c3                	add    %al,%bl
  400571:	03 00                	add    (%rax),%eax
  400573:	00 12                	add    %dl,(%rdx)
	...
  400585:	00 00                	add    %al,(%rax)
  400587:	00 97 00 00 00 11    	add    %dl,0x11000000(%rdi)
	...
  40059d:	00 00                	add    %al,(%rax)
  40059f:	00 76 02             	add    %dh,0x2(%rsi)
  4005a2:	00 00                	add    %al,(%rax)
  4005a4:	12 00                	adc    (%rax),%al
	...
  4005b6:	00 00                	add    %al,(%rax)
  4005b8:	f8                   	clc    
  4005b9:	03 00                	add    (%rax),%eax
  4005bb:	00 12                	add    %dl,(%rdx)
	...
  4005cd:	00 00                	add    %al,(%rax)
  4005cf:	00 80 01 00 00 12    	add    %al,0x12000001(%rax)
	...
  4005e5:	00 00                	add    %al,(%rax)
  4005e7:	00 bc 02 00 00 12 00 	add    %bh,0x120000(%rdx,%rax,1)
	...
  4005fe:	00 00                	add    %al,(%rax)
  400600:	1b 04 00             	sbb    (%rax,%rax,1),%eax
  400603:	00 12                	add    %dl,(%rdx)
	...
  400615:	00 00                	add    %al,(%rax)
  400617:	00 70 02             	add    %dh,0x2(%rax)
  40061a:	00 00                	add    %al,(%rax)
  40061c:	12 00                	adc    (%rax),%al
	...
  40062e:	00 00                	add    %al,(%rax)
  400630:	1e                   	(bad)  
  400631:	01 00                	add    %eax,(%rax)
  400633:	00 12                	add    %dl,(%rdx)
	...
  400645:	00 00                	add    %al,(%rax)
  400647:	00 4a 04             	add    %cl,0x4(%rdx)
  40064a:	00 00                	add    %al,(%rax)
  40064c:	12 00                	adc    (%rax),%al
	...
  40065e:	00 00                	add    %al,(%rax)
  400660:	da 03                	fiaddl (%rbx)
  400662:	00 00                	add    %al,(%rax)
  400664:	12 00                	adc    (%rax),%al
	...
  400676:	00 00                	add    %al,(%rax)
  400678:	0a 02                	or     (%rdx),%al
  40067a:	00 00                	add    %al,(%rax)
  40067c:	12 00                	adc    (%rax),%al
	...
  40068e:	00 00                	add    %al,(%rax)
  400690:	f4                   	hlt    
  400691:	02 00                	add    (%rax),%al
  400693:	00 12                	add    %dl,(%rdx)
	...
  4006a5:	00 00                	add    %al,(%rax)
  4006a7:	00 37                	add    %dh,(%rdi)
  4006a9:	00 00                	add    %al,(%rax)
  4006ab:	00 20                	add    %ah,(%rax)
	...
  4006bd:	00 00                	add    %al,(%rax)
  4006bf:	00 ae 03 00 00 12    	add    %ch,0x12000003(%rsi)
	...
  4006d5:	00 00                	add    %al,(%rax)
  4006d7:	00 72 04             	add    %dh,0x4(%rdx)
  4006da:	00 00                	add    %al,(%rax)
  4006dc:	12 00                	adc    (%rax),%al
	...
  4006ee:	00 00                	add    %al,(%rax)
  4006f0:	00 04 00             	add    %al,(%rax,%rax,1)
  4006f3:	00 12                	add    %dl,(%rdx)
	...
  400705:	00 00                	add    %al,(%rax)
  400707:	00 27                	add    %ah,(%rdi)
  400709:	04 00                	add    $0x0,%al
  40070b:	00 12                	add    %dl,(%rdx)
	...
  40071d:	00 00                	add    %al,(%rax)
  40071f:	00 03                	add    %al,(%rbx)
  400721:	02 00                	add    (%rax),%al
  400723:	00 12                	add    %dl,(%rdx)
	...
  400735:	00 00                	add    %al,(%rax)
  400737:	00 44 01 00          	add    %al,0x0(%rcx,%rax,1)
  40073b:	00 11                	add    %dl,(%rcx)
	...
  40074d:	00 00                	add    %al,(%rax)
  40074f:	00 65 00             	add    %ah,0x0(%rbp)
  400752:	00 00                	add    %al,(%rax)
  400754:	12 00                	adc    (%rax),%al
	...
  400766:	00 00                	add    %al,(%rax)
  400768:	2e 04 00             	cs add $0x0,%al
  40076b:	00 11                	add    %dl,(%rcx)
	...
  40077d:	00 00                	add    %al,(%rax)
  40077f:	00 cb                	add    %cl,%bl
  400781:	03 00                	add    (%rax),%eax
  400783:	00 12                	add    %dl,(%rdx)
	...
  400795:	00 00                	add    %al,(%rax)
  400797:	00 6b 04             	add    %ch,0x4(%rbx)
  40079a:	00 00                	add    %al,(%rax)
  40079c:	12 00                	adc    (%rax),%al
	...
  4007ae:	00 00                	add    %al,(%rax)
  4007b0:	1d 02 00 00 12       	sbb    $0x12000002,%eax
	...
  4007c5:	00 00                	add    %al,(%rax)
  4007c7:	00 eb                	add    %ch,%bl
  4007c9:	03 00                	add    (%rax),%eax
  4007cb:	00 12                	add    %dl,(%rdx)
	...
  4007dd:	00 00                	add    %al,(%rax)
  4007df:	00 d5                	add    %dl,%ch
  4007e1:	00 00                	add    %al,(%rax)
  4007e3:	00 12                	add    %dl,(%rdx)
	...
  4007f5:	00 00                	add    %al,(%rax)
  4007f7:	00 05 04 00 00 12    	add    %al,0x12000004(%rip)        # 12400801 <_end+0x11df5ff1>
	...
  40080d:	00 00                	add    %al,(%rax)
  40080f:	00 95 02 00 00 12    	add    %dl,0x12000002(%rbp)
	...
  400825:	00 00                	add    %al,(%rax)
  400827:	00 61 03             	add    %ah,0x3(%rcx)
  40082a:	00 00                	add    %al,(%rax)
  40082c:	12 00                	adc    (%rax),%al
	...
  40083e:	00 00                	add    %al,(%rax)
  400840:	0c 00                	or     $0x0,%al
  400842:	00 00                	add    %al,(%rax)
  400844:	20 00                	and    %al,(%rax)
	...
  400856:	00 00                	add    %al,(%rax)
  400858:	88 03                	mov    %al,(%rbx)
  40085a:	00 00                	add    %al,(%rax)
  40085c:	12 00                	adc    (%rax),%al
	...
  40086e:	00 00                	add    %al,(%rax)
  400870:	51                   	push   %rcx
  400871:	02 00                	add    (%rax),%al
  400873:	00 12                	add    %dl,(%rdx)
	...
  400885:	00 00                	add    %al,(%rax)
  400887:	00 59 04             	add    %bl,0x4(%rcx)
  40088a:	00 00                	add    %al,(%rax)
  40088c:	12 00                	adc    (%rax),%al
	...
  40089e:	00 00                	add    %al,(%rax)
  4008a0:	28 00                	sub    %al,(%rax)
  4008a2:	00 00                	add    %al,(%rax)
  4008a4:	20 00                	and    %al,(%rax)
	...
  4008b6:	00 00                	add    %al,(%rax)
  4008b8:	57                   	push   %rdi
  4008b9:	03 00                	add    (%rax),%eax
  4008bb:	00 12                	add    %dl,(%rdx)
	...
  4008cd:	00 00                	add    %al,(%rax)
  4008cf:	00 6d 01             	add    %ch,0x1(%rbp)
  4008d2:	00 00                	add    %al,(%rax)
  4008d4:	12 00                	adc    (%rax),%al
	...
  4008e6:	00 00                	add    %al,(%rax)
  4008e8:	4b 00 00             	rex.WXB add %al,(%r8)
  4008eb:	00 20                	add    %ah,(%rax)
	...
  4008fd:	00 00                	add    %al,(%rax)
  4008ff:	00 35 04 00 00 12    	add    %dh,0x12000004(%rip)        # 12400909 <_end+0x11df60f9>
	...
  400915:	00 00                	add    %al,(%rax)
  400917:	00 75 03             	add    %dh,0x3(%rbp)
  40091a:	00 00                	add    %al,(%rax)
  40091c:	12 00                	adc    (%rax),%al
  40091e:	0f 00 60 5d          	verr   0x5d(%rax)
  400922:	40 00 00             	add    %al,(%rax)
  400925:	00 00                	add    %al,(%rax)
  400927:	00 10                	add    %dl,(%rax)
  400929:	00 00                	add    %al,(%rax)
  40092b:	00 00                	add    %al,(%rax)
  40092d:	00 00                	add    %al,(%rax)
  40092f:	00 35 02 00 00 12    	add    %dh,0x12000002(%rip)        # 12400937 <_end+0x11df6127>
  400935:	00 00                	add    %al,(%rax)
  400937:	00 90 17 40 00 00    	add    %dl,0x4017(%rax)
	...
  400945:	00 00                	add    %al,(%rax)
  400947:	00 87 01 00 00 11    	add    %al,0x11000001(%rdi)
  40094d:	00 1d 00 80 a2 60    	add    %bl,0x60a28000(%rip)        # 60e28953 <_end+0x6081e143>
  400953:	00 00                	add    %al,(%rax)
  400955:	00 00                	add    %al,(%rax)
  400957:	00 20                	add    %ah,(%rax)
  400959:	00 00                	add    %al,(%rax)
  40095b:	00 00                	add    %al,(%rax)
  40095d:	00 00                	add    %al,(%rax)
  40095f:	00 c8                	add    %cl,%al
  400961:	01 00                	add    %eax,(%rax)
  400963:	00 12                	add    %dl,(%rdx)
  400965:	00 00                	add    %al,(%rax)
  400967:	00 c0                	add    %al,%al
  400969:	15 40 00 00 00       	adc    $0x40,%eax
	...
  400976:	00 00                	add    %al,(%rax)
  400978:	82                   	(bad)  
  400979:	00 00                	add    %al,(%rax)
  40097b:	00 22                	add    %ah,(%rdx)
  40097d:	00 00                	add    %al,(%rax)
  40097f:	00 a0 17 40 00 00    	add    %ah,0x4017(%rax)
	...
  40098d:	00 00                	add    %al,(%rax)
  40098f:	00 3e                	add    %bh,(%rsi)
  400991:	03 00                	add    (%rax),%eax
  400993:	00 21                	add    %ah,(%rcx)
  400995:	00 1d 00 b0 a3 60    	add    %bl,0x60a3b000(%rip)        # 60e3b99b <_end+0x6083118b>
  40099b:	00 00                	add    %al,(%rax)
  40099d:	00 00                	add    %al,(%rax)
  40099f:	00 18                	add    %bl,(%rax)
  4009a1:	00 00                	add    %al,(%rax)
  4009a3:	00 00                	add    %al,(%rax)
  4009a5:	00 00                	add    %al,(%rax)
  4009a7:	00 34 03             	add    %dh,(%rbx,%rax,1)
  4009aa:	00 00                	add    %al,(%rax)
  4009ac:	11 00                	adc    %eax,(%rax)
  4009ae:	1d 00 a0 a2 60       	sbb    $0x60a2a000,%eax
  4009b3:	00 00                	add    %al,(%rax)
  4009b5:	00 00                	add    %al,(%rax)
  4009b7:	00 10                	add    %dl,(%rax)
  4009b9:	01 00                	add    %eax,(%rax)
  4009bb:	00 00                	add    %al,(%rax)
  4009bd:	00 00                	add    %al,(%rax)
  4009bf:	00 2f                	add    %ch,(%rdi)
  4009c1:	01 00                	add    %eax,(%rax)
  4009c3:	00 12                	add    %dl,(%rdx)
  4009c5:	00 00                	add    %al,(%rax)
  4009c7:	00 80 17 40 00 00    	add    %al,0x4017(%rax)
	...
  4009d5:	00 00                	add    %al,(%rax)
  4009d7:	00 bd 00 00 00 12    	add    %bh,0x12000000(%rbp)
  4009dd:	00 00                	add    %al,(%rax)
  4009df:	00 20                	add    %ah,(%rax)
  4009e1:	18 40 00             	sbb    %al,0x0(%rax)
	...

Disassembly of section .dynstr:

00000000004009f0 <.dynstr>:
  4009f0:	00 6c 69 62          	add    %ch,0x62(%rcx,%rbp,2)
  4009f4:	72 74                	jb     400a6a <_init-0xab6>
  4009f6:	2e 73 6f             	jae,pn 400a68 <_init-0xab8>
  4009f9:	2e 31 00             	xor    %eax,%cs:(%rax)
  4009fc:	5f                   	pop    %rdi
  4009fd:	49 54                	rex.WB push %r12
  4009ff:	4d 5f                	rex.WRB pop %r15
  400a01:	64 65 72 65          	fs gs jb 400a6a <_init-0xab6>
  400a05:	67 69 73 74 65 72 54 	imul   $0x4d547265,0x74(%ebx),%esi
  400a0c:	4d 
  400a0d:	43 6c                	rex.XB insb (%dx),%es:(%rdi)
  400a0f:	6f                   	outsl  %ds:(%rsi),(%dx)
  400a10:	6e                   	outsb  %ds:(%rsi),(%dx)
  400a11:	65 54                	gs push %rsp
  400a13:	61                   	(bad)  
  400a14:	62                   	(bad)  
  400a15:	6c                   	insb   (%dx),%es:(%rdi)
  400a16:	65 00 5f 5f          	add    %bl,%gs:0x5f(%rdi)
  400a1a:	67 6d                	insl   (%dx),%es:(%edi)
  400a1c:	6f                   	outsl  %ds:(%rsi),(%dx)
  400a1d:	6e                   	outsb  %ds:(%rsi),(%dx)
  400a1e:	5f                   	pop    %rdi
  400a1f:	73 74                	jae    400a95 <_init-0xa8b>
  400a21:	61                   	(bad)  
  400a22:	72 74                	jb     400a98 <_init-0xa88>
  400a24:	5f                   	pop    %rdi
  400a25:	5f                   	pop    %rdi
  400a26:	00 5f 4a             	add    %bl,0x4a(%rdi)
  400a29:	76 5f                	jbe    400a8a <_init-0xa96>
  400a2b:	52                   	push   %rdx
  400a2c:	65 67 69 73 74 65 72 	imul   $0x6c437265,%gs:0x74(%ebx),%esi
  400a33:	43 6c 
  400a35:	61                   	(bad)  
  400a36:	73 73                	jae    400aab <_init-0xa75>
  400a38:	65 73 00             	gs jae 400a3b <_init-0xae5>
  400a3b:	5f                   	pop    %rdi
  400a3c:	49 54                	rex.WB push %r12
  400a3e:	4d 5f                	rex.WRB pop %r15
  400a40:	72 65                	jb     400aa7 <_init-0xa79>
  400a42:	67 69 73 74 65 72 54 	imul   $0x4d547265,0x74(%ebx),%esi
  400a49:	4d 
  400a4a:	43 6c                	rex.XB insb (%dx),%es:(%rdi)
  400a4c:	6f                   	outsl  %ds:(%rsi),(%dx)
  400a4d:	6e                   	outsb  %ds:(%rsi),(%dx)
  400a4e:	65 54                	gs push %rsp
  400a50:	61                   	(bad)  
  400a51:	62                   	(bad)  
  400a52:	6c                   	insb   (%dx),%es:(%rdi)
  400a53:	65 00 63 6c          	add    %ah,%gs:0x6c(%rbx)
  400a57:	6f                   	outsl  %ds:(%rsi),(%dx)
  400a58:	63 6b 5f             	movslq 0x5f(%rbx),%ebp
  400a5b:	67 65 74 74          	addr32 gs je 400ad3 <_init-0xa4d>
  400a5f:	69 6d 65 00 6c 69 62 	imul   $0x62696c00,0x65(%rbp),%ebp
  400a66:	73 74                	jae    400adc <_init-0xa44>
  400a68:	64 63 2b             	movslq %fs:(%rbx),%ebp
  400a6b:	2b 2e                	sub    (%rsi),%ebp
  400a6d:	73 6f                	jae    400ade <_init-0xa42>
  400a6f:	2e 36 00 5f 5f       	cs add %bl,%ss:0x5f(%rdi)
  400a74:	70 74                	jo     400aea <_init-0xa36>
  400a76:	68 72 65 61 64       	pushq  $0x64616572
  400a7b:	5f                   	pop    %rdi
  400a7c:	6b 65 79 5f          	imul   $0x5f,0x79(%rbp),%esp
  400a80:	63 72 65             	movslq 0x65(%rdx),%esi
  400a83:	61                   	(bad)  
  400a84:	74 65                	je     400aeb <_init-0xa35>
  400a86:	00 5f 5a             	add    %bl,0x5a(%rdi)
  400a89:	54                   	push   %rsp
  400a8a:	56                   	push   %rsi
  400a8b:	4e 31 30             	rex.WRX xor %r14,(%rax)
  400a8e:	5f                   	pop    %rdi
  400a8f:	5f                   	pop    %rdi
  400a90:	63 78 78             	movslq 0x78(%rax),%edi
  400a93:	61                   	(bad)  
  400a94:	62                   	(bad)  
  400a95:	69 76 31 31 37 5f 5f 	imul   $0x5f5f3731,0x31(%rsi),%esi
  400a9c:	63 6c 61 73          	movslq 0x73(%rcx,%riz,2),%ebp
  400aa0:	73 5f                	jae    400b01 <_init-0xa1f>
  400aa2:	74 79                	je     400b1d <_init-0xa03>
  400aa4:	70 65                	jo     400b0b <_init-0xa15>
  400aa6:	5f                   	pop    %rdi
  400aa7:	69 6e 66 6f 45 00 5f 	imul   $0x5f00456f,0x66(%rsi),%ebp
  400aae:	5a                   	pop    %rdx
  400aaf:	4e 53                	rex.WRX push %rbx
  400ab1:	74 38                	je     400aeb <_init-0xa35>
  400ab3:	69 6f 73 5f 62 61 73 	imul   $0x7361625f,0x73(%rdi),%ebp
  400aba:	65 34 49             	gs xor $0x49,%al
  400abd:	6e                   	outsb  %ds:(%rsi),(%dx)
  400abe:	69 74 44 31 45 76 00 	imul   $0x5f007645,0x31(%rsp,%rax,2),%esi
  400ac5:	5f 
  400ac6:	5a                   	pop    %rdx
  400ac7:	53                   	push   %rbx
  400ac8:	74 6c                	je     400b36 <_init-0x9ea>
  400aca:	73 49                	jae    400b15 <_init-0xa0b>
  400acc:	63 53 74             	movslq 0x74(%rbx),%edx
  400acf:	31 31                	xor    %esi,(%rcx)
  400ad1:	63 68 61             	movslq 0x61(%rax),%ebp
  400ad4:	72 5f                	jb     400b35 <_init-0x9eb>
  400ad6:	74 72                	je     400b4a <_init-0x9d6>
  400ad8:	61                   	(bad)  
  400ad9:	69 74 73 49 63 45 45 	imul   $0x52454563,0x49(%rbx,%rsi,2),%esi
  400ae0:	52 
  400ae1:	53                   	push   %rbx
  400ae2:	74 31                	je     400b15 <_init-0xa0b>
  400ae4:	33 62 61             	xor    0x61(%rdx),%esp
  400ae7:	73 69                	jae    400b52 <_init-0x9ce>
  400ae9:	63 5f 6f             	movslq 0x6f(%rdi),%ebx
  400aec:	73 74                	jae    400b62 <_init-0x9be>
  400aee:	72 65                	jb     400b55 <_init-0x9cb>
  400af0:	61                   	(bad)  
  400af1:	6d                   	insl   (%dx),%es:(%rdi)
  400af2:	49 54                	rex.WB push %r12
  400af4:	5f                   	pop    %rdi
  400af5:	54                   	push   %rsp
  400af6:	30 5f 45             	xor    %bl,0x45(%rdi)
  400af9:	53                   	push   %rbx
  400afa:	36 5f                	ss pop %rdi
  400afc:	53                   	push   %rbx
  400afd:	74 31                	je     400b30 <_init-0x9f0>
  400aff:	33 5f 53             	xor    0x53(%rdi),%ebx
  400b02:	65 74 70             	gs je  400b75 <_init-0x9ab>
  400b05:	72 65                	jb     400b6c <_init-0x9b4>
  400b07:	63 69 73             	movslq 0x73(%rcx),%ebp
  400b0a:	69 6f 6e 00 5f 5a 4e 	imul   $0x4e5a5f00,0x6e(%rdi),%ebp
  400b11:	53                   	push   %rbx
  400b12:	6f                   	outsl  %ds:(%rsi),(%dx)
  400b13:	6c                   	insb   (%dx),%es:(%rdi)
  400b14:	73 45                	jae    400b5b <_init-0x9c5>
  400b16:	50                   	push   %rax
  400b17:	46 52                	rex.RX push %rdx
  400b19:	53                   	push   %rbx
  400b1a:	6f                   	outsl  %ds:(%rsi),(%dx)
  400b1b:	53                   	push   %rbx
  400b1c:	5f                   	pop    %rdi
  400b1d:	45 00 5f 5f          	add    %r11b,0x5f(%r15)
  400b21:	67 78 78             	addr32 js 400b9c <_init-0x984>
  400b24:	5f                   	pop    %rdi
  400b25:	70 65                	jo     400b8c <_init-0x994>
  400b27:	72 73                	jb     400b9c <_init-0x984>
  400b29:	6f                   	outsl  %ds:(%rsi),(%dx)
  400b2a:	6e                   	outsb  %ds:(%rsi),(%dx)
  400b2b:	61                   	(bad)  
  400b2c:	6c                   	insb   (%dx),%es:(%rdi)
  400b2d:	69 74 79 5f 76 30 00 	imul   $0x5f003076,0x5f(%rcx,%rdi,2),%esi
  400b34:	5f 
  400b35:	5a                   	pop    %rdx
  400b36:	54                   	push   %rsp
  400b37:	56                   	push   %rsi
  400b38:	4e 31 30             	rex.WRX xor %r14,(%rax)
  400b3b:	5f                   	pop    %rdi
  400b3c:	5f                   	pop    %rdi
  400b3d:	63 78 78             	movslq 0x78(%rax),%edi
  400b40:	61                   	(bad)  
  400b41:	62                   	(bad)  
  400b42:	69 76 31 32 30 5f 5f 	imul   $0x5f5f3032,0x31(%rsi),%esi
  400b49:	73 69                	jae    400bb4 <_init-0x96c>
  400b4b:	5f                   	pop    %rdi
  400b4c:	63 6c 61 73          	movslq 0x73(%rcx,%riz,2),%ebp
  400b50:	73 5f                	jae    400bb1 <_init-0x96f>
  400b52:	74 79                	je     400bcd <_init-0x953>
  400b54:	70 65                	jo     400bbb <_init-0x965>
  400b56:	5f                   	pop    %rdi
  400b57:	69 6e 66 6f 45 00 5f 	imul   $0x5f00456f,0x66(%rsi),%ebp
  400b5e:	5f                   	pop    %rdi
  400b5f:	63 78 61             	movslq 0x61(%rax),%edi
  400b62:	5f                   	pop    %rdi
  400b63:	70 75                	jo     400bda <_init-0x946>
  400b65:	72 65                	jb     400bcc <_init-0x954>
  400b67:	5f                   	pop    %rdi
  400b68:	76 69                	jbe    400bd3 <_init-0x94d>
  400b6a:	72 74                	jb     400be0 <_init-0x940>
  400b6c:	75 61                	jne    400bcf <_init-0x951>
  400b6e:	6c                   	insb   (%dx),%es:(%rdi)
  400b6f:	00 5f 5a             	add    %bl,0x5a(%rdi)
  400b72:	64 6c                	fs insb (%dx),%es:(%rdi)
  400b74:	50                   	push   %rax
  400b75:	76 00                	jbe    400b77 <_init-0x9a9>
  400b77:	5f                   	pop    %rdi
  400b78:	5a                   	pop    %rdx
  400b79:	4e 53                	rex.WRX push %rbx
  400b7b:	73 34                	jae    400bb1 <_init-0x96f>
  400b7d:	5f                   	pop    %rdi
  400b7e:	52                   	push   %rdx
  400b7f:	65 70 32             	gs jo  400bb4 <_init-0x96c>
  400b82:	30 5f 53             	xor    %bl,0x53(%rdi)
  400b85:	5f                   	pop    %rdi
  400b86:	65 6d                	gs insl (%dx),%es:(%rdi)
  400b88:	70 74                	jo     400bfe <_init-0x922>
  400b8a:	79 5f                	jns    400beb <_init-0x935>
  400b8c:	72 65                	jb     400bf3 <_init-0x92d>
  400b8e:	70 5f                	jo     400bef <_init-0x931>
  400b90:	73 74                	jae    400c06 <_init-0x91a>
  400b92:	6f                   	outsl  %ds:(%rsi),(%dx)
  400b93:	72 61                	jb     400bf6 <_init-0x92a>
  400b95:	67 65 45 00 5f 5a    	add    %r11b,%gs:0x5a(%r15d)
  400b9b:	6e                   	outsb  %ds:(%rsi),(%dx)
  400b9c:	61                   	(bad)  
  400b9d:	6d                   	insl   (%dx),%es:(%rdi)
  400b9e:	00 5f 5f             	add    %bl,0x5f(%rdi)
  400ba1:	63 78 61             	movslq 0x61(%rax),%edi
  400ba4:	5f                   	pop    %rdi
  400ba5:	61                   	(bad)  
  400ba6:	6c                   	insb   (%dx),%es:(%rdi)
  400ba7:	6c                   	insb   (%dx),%es:(%rdi)
  400ba8:	6f                   	outsl  %ds:(%rsi),(%dx)
  400ba9:	63 61 74             	movslq 0x74(%rcx),%esp
  400bac:	65 5f                	gs pop %rdi
  400bae:	65 78 63             	gs js  400c14 <_init-0x90c>
  400bb1:	65 70 74             	gs jo  400c28 <_init-0x8f8>
  400bb4:	69 6f 6e 00 5f 5a 53 	imul   $0x535a5f00,0x6e(%rdi),%ebp
  400bbb:	74 34                	je     400bf1 <_init-0x92f>
  400bbd:	65 6e                	outsb  %gs:(%rsi),(%dx)
  400bbf:	64 6c                	fs insb (%dx),%es:(%rdi)
  400bc1:	49 63 53 74          	movslq 0x74(%r11),%rdx
  400bc5:	31 31                	xor    %esi,(%rcx)
  400bc7:	63 68 61             	movslq 0x61(%rax),%ebp
  400bca:	72 5f                	jb     400c2b <_init-0x8f5>
  400bcc:	74 72                	je     400c40 <_init-0x8e0>
  400bce:	61                   	(bad)  
  400bcf:	69 74 73 49 63 45 45 	imul   $0x52454563,0x49(%rbx,%rsi,2),%esi
  400bd6:	52 
  400bd7:	53                   	push   %rbx
  400bd8:	74 31                	je     400c0b <_init-0x915>
  400bda:	33 62 61             	xor    0x61(%rdx),%esp
  400bdd:	73 69                	jae    400c48 <_init-0x8d8>
  400bdf:	63 5f 6f             	movslq 0x6f(%rdi),%ebx
  400be2:	73 74                	jae    400c58 <_init-0x8c8>
  400be4:	72 65                	jb     400c4b <_init-0x8d5>
  400be6:	61                   	(bad)  
  400be7:	6d                   	insl   (%dx),%es:(%rdi)
  400be8:	49 54                	rex.WB push %r12
  400bea:	5f                   	pop    %rdi
  400beb:	54                   	push   %rsp
  400bec:	30 5f 45             	xor    %bl,0x45(%rdi)
  400bef:	53                   	push   %rbx
  400bf0:	36 5f                	ss pop %rdi
  400bf2:	00 5f 5a             	add    %bl,0x5a(%rdi)
  400bf5:	64 61                	fs (bad) 
  400bf7:	50                   	push   %rax
  400bf8:	76 00                	jbe    400bfa <_init-0x926>
  400bfa:	5f                   	pop    %rdi
  400bfb:	5a                   	pop    %rdx
  400bfc:	4e 53                	rex.WRX push %rbx
  400bfe:	73 43                	jae    400c43 <_init-0x8dd>
  400c00:	31 45 50             	xor    %eax,0x50(%rbp)
  400c03:	4b 63 52 4b          	rex.WXB movslq 0x4b(%r10),%rdx
  400c07:	53                   	push   %rbx
  400c08:	61                   	(bad)  
  400c09:	49 63 45 00          	movslq 0x0(%r13),%rax
  400c0d:	5f                   	pop    %rdi
  400c0e:	5a                   	pop    %rdx
  400c0f:	4e 53                	rex.WRX push %rbx
  400c11:	74 38                	je     400c4b <_init-0x8d5>
  400c13:	69 6f 73 5f 62 61 73 	imul   $0x7361625f,0x73(%rdi),%ebp
  400c1a:	65 34 49             	gs xor $0x49,%al
  400c1d:	6e                   	outsb  %ds:(%rsi),(%dx)
  400c1e:	69 74 43 31 45 76 00 	imul   $0x5f007645,0x31(%rbx,%rax,2),%esi
  400c25:	5f 
  400c26:	5a                   	pop    %rdx
  400c27:	4e 53                	rex.WRX push %rbx
  400c29:	74 31                	je     400c5c <_init-0x8c4>
  400c2b:	36 69 6e 76 61 6c 69 	imul   $0x64696c61,%ss:0x76(%rsi),%ebp
  400c32:	64 
  400c33:	5f                   	pop    %rdi
  400c34:	61                   	(bad)  
  400c35:	72 67                	jb     400c9e <_init-0x882>
  400c37:	75 6d                	jne    400ca6 <_init-0x87a>
  400c39:	65 6e                	outsb  %gs:(%rsi),(%dx)
  400c3b:	74 44                	je     400c81 <_init-0x89f>
  400c3d:	31 45 76             	xor    %eax,0x76(%rbp)
  400c40:	00 5f 5a             	add    %bl,0x5a(%rdi)
  400c43:	4e 53                	rex.WRX push %rbx
  400c45:	74 31                	je     400c78 <_init-0x8a8>
  400c47:	36 69 6e 76 61 6c 69 	imul   $0x64696c61,%ss:0x76(%rsi),%ebp
  400c4e:	64 
  400c4f:	5f                   	pop    %rdi
  400c50:	61                   	(bad)  
  400c51:	72 67                	jb     400cba <_init-0x866>
  400c53:	75 6d                	jne    400cc2 <_init-0x85e>
  400c55:	65 6e                	outsb  %gs:(%rsi),(%dx)
  400c57:	74 43                	je     400c9c <_init-0x884>
  400c59:	31 45 52             	xor    %eax,0x52(%rbp)
  400c5c:	4b 53                	rex.WXB push %r11
  400c5e:	73 00                	jae    400c60 <_init-0x8c0>
  400c60:	5f                   	pop    %rdi
  400c61:	5a                   	pop    %rdx
  400c62:	6e                   	outsb  %ds:(%rsi),(%dx)
  400c63:	77 6d                	ja     400cd2 <_init-0x84e>
  400c65:	00 5f 5a             	add    %bl,0x5a(%rdi)
  400c68:	4e 53                	rex.WRX push %rbx
  400c6a:	73 34                	jae    400ca0 <_init-0x880>
  400c6c:	5f                   	pop    %rdi
  400c6d:	52                   	push   %rdx
  400c6e:	65 70 31             	gs jo  400ca2 <_init-0x87e>
  400c71:	30 5f 4d             	xor    %bl,0x4d(%rdi)
  400c74:	5f                   	pop    %rdi
  400c75:	64 65 73 74          	fs gs jae 400ced <_init-0x833>
  400c79:	72 6f                	jb     400cea <_init-0x836>
  400c7b:	79 45                	jns    400cc2 <_init-0x85e>
  400c7d:	52                   	push   %rdx
  400c7e:	4b 53                	rex.WXB push %r11
  400c80:	61                   	(bad)  
  400c81:	49 63 45 00          	movslq 0x0(%r13),%rax
  400c85:	5f                   	pop    %rdi
  400c86:	5f                   	pop    %rdi
  400c87:	63 78 61             	movslq 0x61(%rax),%edi
  400c8a:	5f                   	pop    %rdi
  400c8b:	74 68                	je     400cf5 <_init-0x82b>
  400c8d:	72 6f                	jb     400cfe <_init-0x822>
  400c8f:	77 00                	ja     400c91 <_init-0x88f>
  400c91:	5f                   	pop    %rdi
  400c92:	5a                   	pop    %rdx
  400c93:	4e 53                	rex.WRX push %rbx
  400c95:	6f                   	outsl  %ds:(%rsi),(%dx)
  400c96:	6c                   	insb   (%dx),%es:(%rdi)
  400c97:	73 45                	jae    400cde <_init-0x842>
  400c99:	50                   	push   %rax
  400c9a:	46 52                	rex.RX push %rdx
  400c9c:	53                   	push   %rbx
  400c9d:	74 38                	je     400cd7 <_init-0x849>
  400c9f:	69 6f 73 5f 62 61 73 	imul   $0x7361625f,0x73(%rdi),%ebp
  400ca6:	65 53                	gs push %rbx
  400ca8:	30 5f 45             	xor    %bl,0x45(%rdi)
  400cab:	00 5f 5a             	add    %bl,0x5a(%rdi)
  400cae:	53                   	push   %rbx
  400caf:	74 6c                	je     400d1d <_init-0x803>
  400cb1:	73 49                	jae    400cfc <_init-0x824>
  400cb3:	53                   	push   %rbx
  400cb4:	74 31                	je     400ce7 <_init-0x839>
  400cb6:	31 63 68             	xor    %esp,0x68(%rbx)
  400cb9:	61                   	(bad)  
  400cba:	72 5f                	jb     400d1b <_init-0x805>
  400cbc:	74 72                	je     400d30 <_init-0x7f0>
  400cbe:	61                   	(bad)  
  400cbf:	69 74 73 49 63 45 45 	imul   $0x52454563,0x49(%rbx,%rsi,2),%esi
  400cc6:	52 
  400cc7:	53                   	push   %rbx
  400cc8:	74 31                	je     400cfb <_init-0x825>
  400cca:	33 62 61             	xor    0x61(%rdx),%esp
  400ccd:	73 69                	jae    400d38 <_init-0x7e8>
  400ccf:	63 5f 6f             	movslq 0x6f(%rdi),%ebx
  400cd2:	73 74                	jae    400d48 <_init-0x7d8>
  400cd4:	72 65                	jb     400d3b <_init-0x7e5>
  400cd6:	61                   	(bad)  
  400cd7:	6d                   	insl   (%dx),%es:(%rdi)
  400cd8:	49 63 54 5f 45       	movslq 0x45(%r15,%rbx,2),%rdx
  400cdd:	53                   	push   %rbx
  400cde:	35 5f 50 4b 63       	xor    $0x634b505f,%eax
  400ce3:	00 5f 5a             	add    %bl,0x5a(%rdi)
  400ce6:	53                   	push   %rbx
  400ce7:	74 6c                	je     400d55 <_init-0x7cb>
  400ce9:	73 49                	jae    400d34 <_init-0x7ec>
  400ceb:	63 53 74             	movslq 0x74(%rbx),%edx
  400cee:	31 31                	xor    %esi,(%rcx)
  400cf0:	63 68 61             	movslq 0x61(%rax),%ebp
  400cf3:	72 5f                	jb     400d54 <_init-0x7cc>
  400cf5:	74 72                	je     400d69 <_init-0x7b7>
  400cf7:	61                   	(bad)  
  400cf8:	69 74 73 49 63 45 45 	imul   $0x52454563,0x49(%rbx,%rsi,2),%esi
  400cff:	52 
  400d00:	53                   	push   %rbx
  400d01:	74 31                	je     400d34 <_init-0x7ec>
  400d03:	33 62 61             	xor    0x61(%rdx),%esp
  400d06:	73 69                	jae    400d71 <_init-0x7af>
  400d08:	63 5f 6f             	movslq 0x6f(%rdi),%ebx
  400d0b:	73 74                	jae    400d81 <_init-0x79f>
  400d0d:	72 65                	jb     400d74 <_init-0x7ac>
  400d0f:	61                   	(bad)  
  400d10:	6d                   	insl   (%dx),%es:(%rdi)
  400d11:	49 54                	rex.WB push %r12
  400d13:	5f                   	pop    %rdi
  400d14:	54                   	push   %rsp
  400d15:	30 5f 45             	xor    %bl,0x45(%rdi)
  400d18:	53                   	push   %rbx
  400d19:	36 5f                	ss pop %rdi
  400d1b:	53                   	push   %rbx
  400d1c:	74 35                	je     400d53 <_init-0x7cd>
  400d1e:	5f                   	pop    %rdi
  400d1f:	53                   	push   %rbx
  400d20:	65 74 77             	gs je  400d9a <_init-0x786>
  400d23:	00 5f 5a             	add    %bl,0x5a(%rdi)
  400d26:	53                   	push   %rbx
  400d27:	74 34                	je     400d5d <_init-0x7c3>
  400d29:	63 6f 75             	movslq 0x75(%rdi),%ebp
  400d2c:	74 00                	je     400d2e <_init-0x7f2>
  400d2e:	5f                   	pop    %rdi
  400d2f:	5a                   	pop    %rdx
  400d30:	54                   	push   %rsp
  400d31:	49 53                	rex.WB push %r11
  400d33:	74 31                	je     400d66 <_init-0x7ba>
  400d35:	36 69 6e 76 61 6c 69 	imul   $0x64696c61,%ss:0x76(%rsi),%ebp
  400d3c:	64 
  400d3d:	5f                   	pop    %rdi
  400d3e:	61                   	(bad)  
  400d3f:	72 67                	jb     400da8 <_init-0x778>
  400d41:	75 6d                	jne    400db0 <_init-0x770>
  400d43:	65 6e                	outsb  %gs:(%rsi),(%dx)
  400d45:	74 00                	je     400d47 <_init-0x7d9>
  400d47:	5f                   	pop    %rdi
  400d48:	5a                   	pop    %rdx
  400d49:	4e 53                	rex.WRX push %rbx
  400d4b:	6f                   	outsl  %ds:(%rsi),(%dx)
  400d4c:	6c                   	insb   (%dx),%es:(%rdi)
  400d4d:	73 45                	jae    400d94 <_init-0x78c>
  400d4f:	64 00 5f 5a          	add    %bl,%fs:0x5a(%rdi)
  400d53:	4e 53                	rex.WRX push %rbx
  400d55:	6f                   	outsl  %ds:(%rsi),(%dx)
  400d56:	6c                   	insb   (%dx),%es:(%rdi)
  400d57:	73 45                	jae    400d9e <_init-0x782>
  400d59:	69 00 6c 69 62 6d    	imul   $0x6d62696c,(%rax),%eax
  400d5f:	2e 73 6f             	jae,pn 400dd1 <_init-0x74f>
  400d62:	2e 36 00 66 61       	cs add %ah,%ss:0x61(%rsi)
  400d67:	62 73                	(bad)  
  400d69:	00 6c 69 62          	add    %ch,0x62(%rcx,%rbp,2)
  400d6d:	67 63 63 5f          	movslq 0x5f(%ebx),%esp
  400d71:	73 2e                	jae    400da1 <_init-0x77f>
  400d73:	73 6f                	jae    400de4 <_init-0x73c>
  400d75:	2e 31 00             	xor    %eax,%cs:(%rax)
  400d78:	5f                   	pop    %rdi
  400d79:	55                   	push   %rbp
  400d7a:	6e                   	outsb  %ds:(%rsi),(%dx)
  400d7b:	77 69                	ja     400de6 <_init-0x73a>
  400d7d:	6e                   	outsb  %ds:(%rsi),(%dx)
  400d7e:	64 5f                	fs pop %rdi
  400d80:	52                   	push   %rdx
  400d81:	65 73 75             	gs jae 400df9 <_init-0x727>
  400d84:	6d                   	insl   (%dx),%es:(%rdi)
  400d85:	65 00 6c 69 62       	add    %ch,%gs:0x62(%rcx,%rbp,2)
  400d8a:	63 2e                	movslq (%rsi),%ebp
  400d8c:	73 6f                	jae    400dfd <_init-0x723>
  400d8e:	2e 36 00 5f 5f       	cs add %bl,%ss:0x5f(%rdi)
  400d93:	70 72                	jo     400e07 <_init-0x719>
  400d95:	69 6e 74 66 5f 63 68 	imul   $0x68635f66,0x74(%rsi),%ebp
  400d9c:	6b 00 66             	imul   $0x66,(%rax),%eax
  400d9f:	6f                   	outsl  %ds:(%rsi),(%dx)
  400da0:	70 65                	jo     400e07 <_init-0x719>
  400da2:	6e                   	outsb  %ds:(%rsi),(%dx)
  400da3:	00 70 6f             	add    %dh,0x6f(%rax)
  400da6:	73 69                	jae    400e11 <_init-0x70f>
  400da8:	78 5f                	js     400e09 <_init-0x717>
  400daa:	6d                   	insl   (%dx),%es:(%rdi)
  400dab:	65 6d                	gs insl (%dx),%es:(%rdi)
  400dad:	61                   	(bad)  
  400dae:	6c                   	insb   (%dx),%es:(%rdi)
  400daf:	69 67 6e 00 73 74 72 	imul   $0x72747300,0x6e(%rdi),%esp
  400db6:	6e                   	outsb  %ds:(%rsi),(%dx)
  400db7:	63 70 79             	movslq 0x79(%rax),%esi
  400dba:	00 5f 5f             	add    %bl,0x5f(%rdi)
  400dbd:	76 73                	jbe    400e32 <_init-0x6ee>
  400dbf:	70 72                	jo     400e33 <_init-0x6ed>
  400dc1:	69 6e 74 66 5f 63 68 	imul   $0x68635f66,0x74(%rsi),%ebp
  400dc8:	6b 00 5f             	imul   $0x5f,(%rax),%eax
  400dcb:	5f                   	pop    %rdi
  400dcc:	73 74                	jae    400e42 <_init-0x6de>
  400dce:	61                   	(bad)  
  400dcf:	63 6b 5f             	movslq 0x5f(%rbx),%ebp
  400dd2:	63 68 6b             	movslq 0x6b(%rax),%ebp
  400dd5:	5f                   	pop    %rdi
  400dd6:	66 61                	data16 (bad) 
  400dd8:	69 6c 00 66 67 65 74 	imul   $0x73746567,0x66(%rax,%rax,1),%ebp
  400ddf:	73 
  400de0:	00 73 74             	add    %dh,0x74(%rbx)
  400de3:	72 6c                	jb     400e51 <_init-0x6cf>
  400de5:	65 6e                	outsb  %gs:(%rsi),(%dx)
  400de7:	00 5f 5f             	add    %bl,0x5f(%rdi)
  400dea:	63 78 61             	movslq 0x61(%rax),%edi
  400ded:	5f                   	pop    %rdi
  400dee:	61                   	(bad)  
  400def:	74 65                	je     400e56 <_init-0x6ca>
  400df1:	78 69                	js     400e5c <_init-0x6c4>
  400df3:	74 00                	je     400df5 <_init-0x72b>
  400df5:	5f                   	pop    %rdi
  400df6:	5f                   	pop    %rdi
  400df7:	66 70 72             	data16 jo 400e6c <_init-0x6b4>
  400dfa:	69 6e 74 66 5f 63 68 	imul   $0x68635f66,0x74(%rsi),%ebp
  400e01:	6b 00 63             	imul   $0x63,(%rax),%eax
  400e04:	61                   	(bad)  
  400e05:	74 6f                	je     400e76 <_init-0x6aa>
  400e07:	70 65                	jo     400e6e <_init-0x6b2>
  400e09:	6e                   	outsb  %ds:(%rsi),(%dx)
  400e0a:	00 66 63             	add    %ah,0x63(%rsi)
  400e0d:	6c                   	insb   (%dx),%es:(%rdi)
  400e0e:	6f                   	outsl  %ds:(%rsi),(%dx)
  400e0f:	73 65                	jae    400e76 <_init-0x6aa>
  400e11:	00 72 61             	add    %dh,0x61(%rdx)
  400e14:	6e                   	outsb  %ds:(%rsi),(%dx)
  400e15:	64 00 67 65          	add    %ah,%fs:0x65(%rdi)
  400e19:	74 65                	je     400e80 <_init-0x6a0>
  400e1b:	6e                   	outsb  %ds:(%rsi),(%dx)
  400e1c:	76 00                	jbe    400e1e <_init-0x702>
  400e1e:	73 74                	jae    400e94 <_init-0x68c>
  400e20:	64 65 72 72          	fs gs jb 400e96 <_init-0x68a>
  400e24:	00 66 73             	add    %ah,0x73(%rsi)
  400e27:	63 61 6e             	movslq 0x6e(%rcx),%esp
  400e2a:	66 00 5f 5f          	data16 add %bl,0x5f(%rdi)
  400e2e:	73 74                	jae    400ea4 <_init-0x67c>
  400e30:	72 6e                	jb     400ea0 <_init-0x680>
  400e32:	63 61 74             	movslq 0x74(%rcx),%esp
  400e35:	5f                   	pop    %rdi
  400e36:	63 68 6b             	movslq 0x6b(%rax),%ebp
  400e39:	00 63 61             	add    %ah,0x61(%rbx)
  400e3c:	74 67                	je     400ea5 <_init-0x67b>
  400e3e:	65 74 73             	gs je  400eb4 <_init-0x66c>
  400e41:	00 73 74             	add    %dh,0x74(%rbx)
  400e44:	72 63                	jb     400ea9 <_init-0x677>
  400e46:	68 72 00 5f 5f       	pushq  $0x5f5f0072
  400e4b:	6c                   	insb   (%dx),%es:(%rdi)
  400e4c:	69 62 63 5f 73 74 61 	imul   $0x6174735f,0x63(%rdx),%esp
  400e53:	72 74                	jb     400ec9 <_init-0x657>
  400e55:	5f                   	pop    %rdi
  400e56:	6d                   	insl   (%dx),%es:(%rdi)
  400e57:	61                   	(bad)  
  400e58:	69 6e 00 73 65 74 65 	imul   $0x65746573,0x0(%rsi),%ebp
  400e5f:	6e                   	outsb  %ds:(%rsi),(%dx)
  400e60:	76 00                	jbe    400e62 <_init-0x6be>
  400e62:	66 72 65             	data16 jb 400eca <_init-0x656>
  400e65:	65 00 6c 69 62       	add    %ch,%gs:0x62(%rcx,%rbp,2)
  400e6a:	64 6c                	fs insb (%dx),%es:(%rdi)
  400e6c:	2e 73 6f             	jae,pn 400ede <_init-0x642>
  400e6f:	2e 32 00             	xor    %cs:(%rax),%al
  400e72:	47                   	rex.RXB
  400e73:	43                   	rex.XB
  400e74:	43 5f                	rex.XB pop %r15
  400e76:	33 2e                	xor    (%rsi),%ebp
  400e78:	30 00                	xor    %al,(%rax)
  400e7a:	47                   	rex.RXB
  400e7b:	4c                   	rex.WR
  400e7c:	49                   	rex.WB
  400e7d:	42                   	rex.X
  400e7e:	43 5f                	rex.XB pop %r15
  400e80:	32 2e                	xor    (%rsi),%ch
  400e82:	32 2e                	xor    (%rsi),%ch
  400e84:	35 00 43 58 58       	xor    $0x58584300,%eax
  400e89:	41                   	rex.B
  400e8a:	42                   	rex.X
  400e8b:	49 5f                	rex.WB pop %r15
  400e8d:	31 2e                	xor    %ebp,(%rsi)
  400e8f:	33 00                	xor    (%rax),%eax
  400e91:	47                   	rex.RXB
  400e92:	4c                   	rex.WR
  400e93:	49                   	rex.WB
  400e94:	42                   	rex.X
  400e95:	43 58                	rex.XB pop %r8
  400e97:	58                   	pop    %rax
  400e98:	5f                   	pop    %rdi
  400e99:	33 2e                	xor    (%rsi),%ebp
  400e9b:	34 00                	xor    $0x0,%al
  400e9d:	47                   	rex.RXB
  400e9e:	4c                   	rex.WR
  400e9f:	49                   	rex.WB
  400ea0:	42                   	rex.X
  400ea1:	43 5f                	rex.XB pop %r15
  400ea3:	32 2e                	xor    (%rsi),%ch
  400ea5:	34 00                	xor    $0x0,%al
  400ea7:	47                   	rex.RXB
  400ea8:	4c                   	rex.WR
  400ea9:	49                   	rex.WB
  400eaa:	42                   	rex.X
  400eab:	43 5f                	rex.XB pop %r15
  400ead:	32 2e                	xor    (%rsi),%ch
  400eaf:	33 2e                	xor    (%rsi),%ebp
  400eb1:	34 00                	xor    $0x0,%al

Disassembly of section .gnu.version:

0000000000400eb4 <.gnu.version>:
  400eb4:	00 00                	add    %al,(%rax)
  400eb6:	02 00                	add    (%rax),%al
  400eb8:	03 00                	add    (%rax),%eax
  400eba:	04 00                	add    $0x0,%al
  400ebc:	03 00                	add    (%rax),%eax
  400ebe:	04 00                	add    $0x0,%al
  400ec0:	04 00                	add    $0x0,%al
  400ec2:	02 00                	add    (%rax),%al
  400ec4:	05 00 04 00 04       	add    $0x4000400,%eax
  400ec9:	00 04 00             	add    %al,(%rax,%rax,1)
  400ecc:	05 00 03 00 04       	add    $0x4000300,%eax
  400ed1:	00 03                	add    %al,(%rbx)
  400ed3:	00 03                	add    %al,(%rbx)
  400ed5:	00 04 00             	add    %al,(%rax,%rax,1)
  400ed8:	03 00                	add    (%rax),%eax
  400eda:	03 00                	add    (%rax),%eax
  400edc:	04 00                	add    $0x0,%al
  400ede:	06                   	(bad)  
  400edf:	00 03                	add    %al,(%rbx)
  400ee1:	00 03                	add    %al,(%rbx)
  400ee3:	00 00                	add    %al,(%rax)
  400ee5:	00 04 00             	add    %al,(%rax,%rax,1)
  400ee8:	04 00                	add    $0x0,%al
  400eea:	04 00                	add    $0x0,%al
  400eec:	04 00                	add    $0x0,%al
  400eee:	03 00                	add    (%rax),%eax
  400ef0:	05 00 07 00 04       	add    $0x4000700,%eax
  400ef5:	00 02                	add    %al,(%rdx)
  400ef7:	00 04 00             	add    %al,(%rax,%rax,1)
  400efa:	03 00                	add    (%rax),%eax
  400efc:	04 00                	add    $0x0,%al
  400efe:	03 00                	add    (%rax),%eax
  400f00:	02 00                	add    (%rax),%al
  400f02:	05 00 03 00 00       	add    $0x300,%eax
  400f07:	00 08                	add    %cl,(%rax)
  400f09:	00 03                	add    %al,(%rbx)
  400f0b:	00 04 00             	add    %al,(%rax,%rax,1)
  400f0e:	00 00                	add    %al,(%rax)
  400f10:	03 00                	add    (%rax),%eax
  400f12:	05 00 00 00 04       	add    $0x4000000,%eax
  400f17:	00 01                	add    %al,(%rcx)
  400f19:	00 03                	add    %al,(%rbx)
  400f1b:	00 03                	add    %al,(%rbx)
  400f1d:	00 03                	add    %al,(%rbx)
  400f1f:	00 00                	add    %al,(%rax)
  400f21:	00 03                	add    %al,(%rbx)
  400f23:	00 03                	add    %al,(%rbx)
  400f25:	00                   	.byte 0x0
  400f26:	05                   	.byte 0x5
  400f27:	00 03                	add    %al,(%rbx)
	...

Disassembly of section .gnu.version_r:

0000000000400f30 <.gnu.version_r>:
  400f30:	01 00                	add    %eax,(%rax)
  400f32:	01 00                	add    %eax,(%rax)
  400f34:	7a 03                	jp     400f39 <_init-0x5e7>
  400f36:	00 00                	add    %al,(%rax)
  400f38:	10 00                	adc    %al,(%rax)
  400f3a:	00 00                	add    %al,(%rax)
  400f3c:	20 00                	and    %al,(%rax)
  400f3e:	00 00                	add    %al,(%rax)
  400f40:	50                   	push   %rax
  400f41:	26 79 0b             	es jns 400f4f <_init-0x5d1>
  400f44:	00 00                	add    %al,(%rax)
  400f46:	08 00                	or     %al,(%rax)
  400f48:	82                   	(bad)  
  400f49:	04 00                	add    $0x0,%al
  400f4b:	00 00                	add    %al,(%rax)
  400f4d:	00 00                	add    %al,(%rax)
  400f4f:	00 01                	add    %al,(%rcx)
  400f51:	00 01                	add    %al,(%rcx)
  400f53:	00 01                	add    %al,(%rcx)
  400f55:	00 00                	add    %al,(%rax)
  400f57:	00 10                	add    %dl,(%rax)
  400f59:	00 00                	add    %al,(%rax)
  400f5b:	00 20                	add    %ah,(%rax)
  400f5d:	00 00                	add    %al,(%rax)
  400f5f:	00 75 1a             	add    %dh,0x1a(%rbp)
  400f62:	69 09 00 00 07 00    	imul   $0x70000,(%rcx),%ecx
  400f68:	8a 04 00             	mov    (%rax,%rax,1),%al
  400f6b:	00 00                	add    %al,(%rax)
  400f6d:	00 00                	add    %al,(%rax)
  400f6f:	00 01                	add    %al,(%rcx)
  400f71:	00 02                	add    %al,(%rdx)
  400f73:	00 73 00             	add    %dh,0x0(%rbx)
  400f76:	00 00                	add    %al,(%rax)
  400f78:	10 00                	adc    %al,(%rax)
  400f7a:	00 00                	add    %al,(%rax)
  400f7c:	30 00                	xor    %al,(%rax)
  400f7e:	00 00                	add    %al,(%rax)
  400f80:	d3 af 6b 05 00 00    	shrl   %cl,0x56b(%rdi)
  400f86:	05 00 96 04 00       	add    $0x49600,%eax
  400f8b:	00 10                	add    %dl,(%rax)
  400f8d:	00 00                	add    %al,(%rax)
  400f8f:	00 74 29 92          	add    %dh,-0x6e(%rcx,%rbp,1)
  400f93:	08 00                	or     %al,(%rax)
  400f95:	00 03                	add    %al,(%rbx)
  400f97:	00 a1 04 00 00 00    	add    %ah,0x4(%rcx)
  400f9d:	00 00                	add    %al,(%rax)
  400f9f:	00 01                	add    %al,(%rcx)
  400fa1:	00 03                	add    %al,(%rbx)
  400fa3:	00 97 03 00 00 10    	add    %dl,0x10000003(%rdi)
  400fa9:	00 00                	add    %al,(%rax)
  400fab:	00 00                	add    %al,(%rax)
  400fad:	00 00                	add    %al,(%rax)
  400faf:	00 14 69             	add    %dl,(%rcx,%rbp,2)
  400fb2:	69 0d 00 00 06 00 ad 	imul   $0x4ad,0x60000(%rip),%ecx        # 460fbc <_ZNK11DenseMatrix3getEii$$LSDA+0x586f0>
  400fb9:	04 00 00 
  400fbc:	10 00                	adc    %al,(%rax)
  400fbe:	00 00                	add    %al,(%rax)
  400fc0:	75 1a                	jne    400fdc <_init-0x544>
  400fc2:	69 09 00 00 04 00    	imul   $0x40000,(%rcx),%ecx
  400fc8:	8a 04 00             	mov    (%rax,%rax,1),%al
  400fcb:	00 10                	add    %dl,(%rax)
  400fcd:	00 00                	add    %al,(%rax)
  400fcf:	00 74 19 69          	add    %dh,0x69(%rcx,%rbx,1)
  400fd3:	09 00                	or     %eax,(%rax)
  400fd5:	00 02                	add    %al,(%rdx)
  400fd7:	00 b7 04 00 00 00    	add    %dh,0x4(%rdi)
  400fdd:	00 00                	add    %al,(%rax)
	...

Disassembly of section .rela.dyn:

0000000000400fe0 <.rela.dyn>:
  400fe0:	f0 9f                	lock lahf 
  400fe2:	60                   	(bad)  
  400fe3:	00 00                	add    %al,(%rax)
  400fe5:	00 00                	add    %al,(%rax)
  400fe7:	00 06                	add    %al,(%rsi)
  400fe9:	00 00                	add    %al,(%rax)
  400feb:	00 20                	add    %ah,(%rax)
	...
  400ff5:	00 00                	add    %al,(%rax)
  400ff7:	00 f8                	add    %bh,%al
  400ff9:	9f                   	lahf   
  400ffa:	60                   	(bad)  
  400ffb:	00 00                	add    %al,(%rax)
  400ffd:	00 00                	add    %al,(%rax)
  400fff:	00 06                	add    %al,(%rsi)
  401001:	00 00                	add    %al,(%rax)
  401003:	00 2d 00 00 00 00    	add    %ch,0x0(%rip)        # 401009 <_init-0x517>
  401009:	00 00                	add    %al,(%rax)
  40100b:	00 00                	add    %al,(%rax)
  40100d:	00 00                	add    %al,(%rax)
  40100f:	00 a8 a1 60 00 00    	add    %ch,0x60a1(%rax)
  401015:	00 00                	add    %al,(%rax)
  401017:	00 01                	add    %al,(%rcx)
  401019:	00 00                	add    %al,(%rax)
  40101b:	00 2f                	add    %ch,(%rdi)
	...
  401025:	00 00                	add    %al,(%rax)
  401027:	00 b0 a1 60 00 00    	add    %dh,0x60a1(%rax)
  40102d:	00 00                	add    %al,(%rax)
  40102f:	00 01                	add    %al,(%rcx)
  401031:	00 00                	add    %al,(%rax)
  401033:	00 2f                	add    %ch,(%rdi)
	...
  40103d:	00 00                	add    %al,(%rax)
  40103f:	00 b8 a1 60 00 00    	add    %bh,0x60a1(%rax)
  401045:	00 00                	add    %al,(%rax)
  401047:	00 01                	add    %al,(%rcx)
  401049:	00 00                	add    %al,(%rax)
  40104b:	00 0c 00             	add    %cl,(%rax,%rax,1)
  40104e:	00 00                	add    %al,(%rax)
  401050:	10 00                	adc    %al,(%rax)
  401052:	00 00                	add    %al,(%rax)
  401054:	00 00                	add    %al,(%rax)
  401056:	00 00                	add    %al,(%rax)
  401058:	f0 a1 60 00 00 00 00 	lock movabs 0x1000000000060,%eax
  40105f:	00 01 00 
  401062:	00 00                	add    %al,(%rax)
  401064:	1e                   	(bad)  
  401065:	00 00                	add    %al,(%rax)
  401067:	00 10                	add    %dl,(%rax)
  401069:	00 00                	add    %al,(%rax)
  40106b:	00 00                	add    %al,(%rax)
  40106d:	00 00                	add    %al,(%rax)
  40106f:	00 38                	add    %bh,(%rax)
  401071:	a2 60 00 00 00 00 00 	movabs %al,0x1000000000060
  401078:	01 00 
  40107a:	00 00                	add    %al,(%rax)
  40107c:	1e                   	(bad)  
  40107d:	00 00                	add    %al,(%rax)
  40107f:	00 10                	add    %dl,(%rax)
  401081:	00 00                	add    %al,(%rax)
  401083:	00 00                	add    %al,(%rax)
  401085:	00 00                	add    %al,(%rax)
  401087:	00 80 a2 60 00 00    	add    %al,0x60a2(%rax)
  40108d:	00 00                	add    %al,(%rax)
  40108f:	00 05 00 00 00 34    	add    %al,0x34000000(%rip)        # 34401095 <_end+0x33df6885>
	...
  40109d:	00 00                	add    %al,(%rax)
  40109f:	00 a0 a2 60 00 00    	add    %ah,0x60a2(%rax)
  4010a5:	00 00                	add    %al,(%rax)
  4010a7:	00 05 00 00 00 38    	add    %al,0x38000000(%rip)        # 384010ad <_end+0x37df689d>
	...
  4010b5:	00 00                	add    %al,(%rax)
  4010b7:	00 b0 a3 60 00 00    	add    %dh,0x60a3(%rax)
  4010bd:	00 00                	add    %al,(%rax)
  4010bf:	00 05 00 00 00 37    	add    %al,0x37000000(%rip)        # 374010c5 <_end+0x36df68b5>
	...

Disassembly of section .rela.plt:

00000000004010d0 <.rela.plt>:
  4010d0:	18 a0 60 00 00 00    	sbb    %ah,0x60(%rax)
  4010d6:	00 00                	add    %al,(%rax)
  4010d8:	07                   	(bad)  
  4010d9:	00 00                	add    %al,(%rax)
  4010db:	00 01                	add    %al,(%rcx)
	...
  4010e5:	00 00                	add    %al,(%rax)
  4010e7:	00 20                	add    %ah,(%rax)
  4010e9:	a0 60 00 00 00 00 00 	movabs 0x7000000000060,%al
  4010f0:	07 00 
  4010f2:	00 00                	add    %al,(%rax)
  4010f4:	02 00                	add    (%rax),%al
	...
  4010fe:	00 00                	add    %al,(%rax)
  401100:	28 a0 60 00 00 00    	sub    %ah,0x60(%rax)
  401106:	00 00                	add    %al,(%rax)
  401108:	07                   	(bad)  
  401109:	00 00                	add    %al,(%rax)
  40110b:	00 03                	add    %al,(%rbx)
	...
  401115:	00 00                	add    %al,(%rax)
  401117:	00 30                	add    %dh,(%rax)
  401119:	a0 60 00 00 00 00 00 	movabs 0x7000000000060,%al
  401120:	07 00 
  401122:	00 00                	add    %al,(%rax)
  401124:	04 00                	add    $0x0,%al
	...
  40112e:	00 00                	add    %al,(%rax)
  401130:	38 a0 60 00 00 00    	cmp    %ah,0x60(%rax)
  401136:	00 00                	add    %al,(%rax)
  401138:	07                   	(bad)  
  401139:	00 00                	add    %al,(%rax)
  40113b:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # 401141 <_init-0x3df>
  401141:	00 00                	add    %al,(%rax)
  401143:	00 00                	add    %al,(%rax)
  401145:	00 00                	add    %al,(%rax)
  401147:	00 40 a0             	add    %al,-0x60(%rax)
  40114a:	60                   	(bad)  
  40114b:	00 00                	add    %al,(%rax)
  40114d:	00 00                	add    %al,(%rax)
  40114f:	00 07                	add    %al,(%rdi)
  401151:	00 00                	add    %al,(%rax)
  401153:	00 06                	add    %al,(%rsi)
	...
  40115d:	00 00                	add    %al,(%rax)
  40115f:	00 48 a0             	add    %cl,-0x60(%rax)
  401162:	60                   	(bad)  
  401163:	00 00                	add    %al,(%rax)
  401165:	00 00                	add    %al,(%rax)
  401167:	00 07                	add    %al,(%rdi)
  401169:	00 00                	add    %al,(%rax)
  40116b:	00 07                	add    %al,(%rdi)
	...
  401175:	00 00                	add    %al,(%rax)
  401177:	00 50 a0             	add    %dl,-0x60(%rax)
  40117a:	60                   	(bad)  
  40117b:	00 00                	add    %al,(%rax)
  40117d:	00 00                	add    %al,(%rax)
  40117f:	00 07                	add    %al,(%rdi)
  401181:	00 00                	add    %al,(%rax)
  401183:	00 35 00 00 00 00    	add    %dh,0x0(%rip)        # 401189 <_init-0x397>
  401189:	00 00                	add    %al,(%rax)
  40118b:	00 00                	add    %al,(%rax)
  40118d:	00 00                	add    %al,(%rax)
  40118f:	00 58 a0             	add    %bl,-0x60(%rax)
  401192:	60                   	(bad)  
  401193:	00 00                	add    %al,(%rax)
  401195:	00 00                	add    %al,(%rax)
  401197:	00 07                	add    %al,(%rdi)
  401199:	00 00                	add    %al,(%rax)
  40119b:	00 08                	add    %cl,(%rax)
	...
  4011a5:	00 00                	add    %al,(%rax)
  4011a7:	00 60 a0             	add    %ah,-0x60(%rax)
  4011aa:	60                   	(bad)  
  4011ab:	00 00                	add    %al,(%rax)
  4011ad:	00 00                	add    %al,(%rax)
  4011af:	00 07                	add    %al,(%rdi)
  4011b1:	00 00                	add    %al,(%rax)
  4011b3:	00 09                	add    %cl,(%rcx)
	...
  4011bd:	00 00                	add    %al,(%rax)
  4011bf:	00 68 a0             	add    %ch,-0x60(%rax)
  4011c2:	60                   	(bad)  
  4011c3:	00 00                	add    %al,(%rax)
  4011c5:	00 00                	add    %al,(%rax)
  4011c7:	00 07                	add    %al,(%rdi)
  4011c9:	00 00                	add    %al,(%rax)
  4011cb:	00 0a                	add    %cl,(%rdx)
	...
  4011d5:	00 00                	add    %al,(%rax)
  4011d7:	00 70 a0             	add    %dh,-0x60(%rax)
  4011da:	60                   	(bad)  
  4011db:	00 00                	add    %al,(%rax)
  4011dd:	00 00                	add    %al,(%rax)
  4011df:	00 07                	add    %al,(%rdi)
  4011e1:	00 00                	add    %al,(%rax)
  4011e3:	00 0b                	add    %cl,(%rbx)
	...
  4011ed:	00 00                	add    %al,(%rax)
  4011ef:	00 78 a0             	add    %bh,-0x60(%rax)
  4011f2:	60                   	(bad)  
  4011f3:	00 00                	add    %al,(%rax)
  4011f5:	00 00                	add    %al,(%rax)
  4011f7:	00 07                	add    %al,(%rdi)
  4011f9:	00 00                	add    %al,(%rax)
  4011fb:	00 0d 00 00 00 00    	add    %cl,0x0(%rip)        # 401201 <_init-0x31f>
  401201:	00 00                	add    %al,(%rax)
  401203:	00 00                	add    %al,(%rax)
  401205:	00 00                	add    %al,(%rax)
  401207:	00 80 a0 60 00 00    	add    %al,0x60a0(%rax)
  40120d:	00 00                	add    %al,(%rax)
  40120f:	00 07                	add    %al,(%rdi)
  401211:	00 00                	add    %al,(%rax)
  401213:	00 0e                	add    %cl,(%rsi)
	...
  40121d:	00 00                	add    %al,(%rax)
  40121f:	00 88 a0 60 00 00    	add    %cl,0x60a0(%rax)
  401225:	00 00                	add    %al,(%rax)
  401227:	00 07                	add    %al,(%rdi)
  401229:	00 00                	add    %al,(%rax)
  40122b:	00 0f                	add    %cl,(%rdi)
	...
  401235:	00 00                	add    %al,(%rax)
  401237:	00 90 a0 60 00 00    	add    %dl,0x60a0(%rax)
  40123d:	00 00                	add    %al,(%rax)
  40123f:	00 07                	add    %al,(%rdi)
  401241:	00 00                	add    %al,(%rax)
  401243:	00 10                	add    %dl,(%rax)
	...
  40124d:	00 00                	add    %al,(%rax)
  40124f:	00 98 a0 60 00 00    	add    %bl,0x60a0(%rax)
  401255:	00 00                	add    %al,(%rax)
  401257:	00 07                	add    %al,(%rdi)
  401259:	00 00                	add    %al,(%rax)
  40125b:	00 11                	add    %dl,(%rcx)
	...
  401265:	00 00                	add    %al,(%rax)
  401267:	00 a0 a0 60 00 00    	add    %ah,0x60a0(%rax)
  40126d:	00 00                	add    %al,(%rax)
  40126f:	00 07                	add    %al,(%rdi)
  401271:	00 00                	add    %al,(%rax)
  401273:	00 12                	add    %dl,(%rdx)
	...
  40127d:	00 00                	add    %al,(%rax)
  40127f:	00 a8 a0 60 00 00    	add    %ch,0x60a0(%rax)
  401285:	00 00                	add    %al,(%rax)
  401287:	00 07                	add    %al,(%rdi)
  401289:	00 00                	add    %al,(%rax)
  40128b:	00 13                	add    %dl,(%rbx)
	...
  401295:	00 00                	add    %al,(%rax)
  401297:	00 b0 a0 60 00 00    	add    %dh,0x60a0(%rax)
  40129d:	00 00                	add    %al,(%rax)
  40129f:	00 07                	add    %al,(%rdi)
  4012a1:	00 00                	add    %al,(%rax)
  4012a3:	00 14 00             	add    %dl,(%rax,%rax,1)
	...
  4012ae:	00 00                	add    %al,(%rax)
  4012b0:	b8 a0 60 00 00       	mov    $0x60a0,%eax
  4012b5:	00 00                	add    %al,(%rax)
  4012b7:	00 07                	add    %al,(%rdi)
  4012b9:	00 00                	add    %al,(%rax)
  4012bb:	00 15 00 00 00 00    	add    %dl,0x0(%rip)        # 4012c1 <_init-0x25f>
  4012c1:	00 00                	add    %al,(%rax)
  4012c3:	00 00                	add    %al,(%rax)
  4012c5:	00 00                	add    %al,(%rax)
  4012c7:	00 c0                	add    %al,%al
  4012c9:	a0 60 00 00 00 00 00 	movabs 0x7000000000060,%al
  4012d0:	07 00 
  4012d2:	00 00                	add    %al,(%rax)
  4012d4:	16                   	(bad)  
	...
  4012dd:	00 00                	add    %al,(%rax)
  4012df:	00 c8                	add    %cl,%al
  4012e1:	a0 60 00 00 00 00 00 	movabs 0x7000000000060,%al
  4012e8:	07 00 
  4012ea:	00 00                	add    %al,(%rax)
  4012ec:	17                   	(bad)  
	...
  4012f5:	00 00                	add    %al,(%rax)
  4012f7:	00 d0                	add    %dl,%al
  4012f9:	a0 60 00 00 00 00 00 	movabs 0x7000000000060,%al
  401300:	07 00 
  401302:	00 00                	add    %al,(%rax)
  401304:	19 00                	sbb    %eax,(%rax)
	...
  40130e:	00 00                	add    %al,(%rax)
  401310:	d8 a0 60 00 00 00    	fsubs  0x60(%rax)
  401316:	00 00                	add    %al,(%rax)
  401318:	07                   	(bad)  
  401319:	00 00                	add    %al,(%rax)
  40131b:	00 1a                	add    %bl,(%rdx)
	...
  401325:	00 00                	add    %al,(%rax)
  401327:	00 e0                	add    %ah,%al
  401329:	a0 60 00 00 00 00 00 	movabs 0x7000000000060,%al
  401330:	07 00 
  401332:	00 00                	add    %al,(%rax)
  401334:	1b 00                	sbb    (%rax),%eax
	...
  40133e:	00 00                	add    %al,(%rax)
  401340:	e8 a0 60 00 00       	callq  4073e5 <ONE+0x5f5>
  401345:	00 00                	add    %al,(%rax)
  401347:	00 07                	add    %al,(%rdi)
  401349:	00 00                	add    %al,(%rax)
  40134b:	00 1c 00             	add    %bl,(%rax,%rax,1)
	...
  401356:	00 00                	add    %al,(%rax)
  401358:	f0 a0 60 00 00 00 00 	lock movabs 0x7000000000060,%al
  40135f:	00 07 00 
  401362:	00 00                	add    %al,(%rax)
  401364:	1d 00 00 00 00       	sbb    $0x0,%eax
  401369:	00 00                	add    %al,(%rax)
  40136b:	00 00                	add    %al,(%rax)
  40136d:	00 00                	add    %al,(%rax)
  40136f:	00 f8                	add    %bh,%al
  401371:	a0 60 00 00 00 00 00 	movabs 0x7000000000060,%al
  401378:	07 00 
  40137a:	00 00                	add    %al,(%rax)
  40137c:	1f                   	(bad)  
	...
  401389:	a1 60 00 00 00 00 00 	movabs 0x7000000000060,%eax
  401390:	07 00 
  401392:	00 00                	add    %al,(%rax)
  401394:	21 00                	and    %eax,(%rax)
	...
  40139e:	00 00                	add    %al,(%rax)
  4013a0:	08 a1 60 00 00 00    	or     %ah,0x60(%rcx)
  4013a6:	00 00                	add    %al,(%rax)
  4013a8:	07                   	(bad)  
  4013a9:	00 00                	add    %al,(%rax)
  4013ab:	00 22                	add    %ah,(%rdx)
	...
  4013b5:	00 00                	add    %al,(%rax)
  4013b7:	00 10                	add    %dl,(%rax)
  4013b9:	a1 60 00 00 00 00 00 	movabs 0x7000000000060,%eax
  4013c0:	07 00 
  4013c2:	00 00                	add    %al,(%rax)
  4013c4:	23 00                	and    (%rax),%eax
	...
  4013ce:	00 00                	add    %al,(%rax)
  4013d0:	18 a1 60 00 00 00    	sbb    %ah,0x60(%rcx)
  4013d6:	00 00                	add    %al,(%rax)
  4013d8:	07                   	(bad)  
  4013d9:	00 00                	add    %al,(%rax)
  4013db:	00 24 00             	add    %ah,(%rax,%rax,1)
	...
  4013e6:	00 00                	add    %al,(%rax)
  4013e8:	20 a1 60 00 00 00    	and    %ah,0x60(%rcx)
  4013ee:	00 00                	add    %al,(%rax)
  4013f0:	07                   	(bad)  
  4013f1:	00 00                	add    %al,(%rax)
  4013f3:	00 25 00 00 00 00    	add    %ah,0x0(%rip)        # 4013f9 <_init-0x127>
  4013f9:	00 00                	add    %al,(%rax)
  4013fb:	00 00                	add    %al,(%rax)
  4013fd:	00 00                	add    %al,(%rax)
  4013ff:	00 28                	add    %ch,(%rax)
  401401:	a1 60 00 00 00 00 00 	movabs 0x7000000000060,%eax
  401408:	07 00 
  40140a:	00 00                	add    %al,(%rax)
  40140c:	26 00 00             	add    %al,%es:(%rax)
	...
  401417:	00 30                	add    %dh,(%rax)
  401419:	a1 60 00 00 00 00 00 	movabs 0x7000000000060,%eax
  401420:	07 00 
  401422:	00 00                	add    %al,(%rax)
  401424:	39 00                	cmp    %eax,(%rax)
	...
  40142e:	00 00                	add    %al,(%rax)
  401430:	38 a1 60 00 00 00    	cmp    %ah,0x60(%rcx)
  401436:	00 00                	add    %al,(%rax)
  401438:	07                   	(bad)  
  401439:	00 00                	add    %al,(%rax)
  40143b:	00 33                	add    %dh,(%rbx)
	...
  401445:	00 00                	add    %al,(%rax)
  401447:	00 40 a1             	add    %al,-0x5f(%rax)
  40144a:	60                   	(bad)  
  40144b:	00 00                	add    %al,(%rax)
  40144d:	00 00                	add    %al,(%rax)
  40144f:	00 07                	add    %al,(%rdi)
  401451:	00 00                	add    %al,(%rax)
  401453:	00 36                	add    %dh,(%rsi)
	...
  40145d:	00 00                	add    %al,(%rax)
  40145f:	00 48 a1             	add    %cl,-0x5f(%rax)
  401462:	60                   	(bad)  
  401463:	00 00                	add    %al,(%rax)
  401465:	00 00                	add    %al,(%rax)
  401467:	00 07                	add    %al,(%rdi)
  401469:	00 00                	add    %al,(%rax)
  40146b:	00 27                	add    %ah,(%rdi)
	...
  401475:	00 00                	add    %al,(%rax)
  401477:	00 50 a1             	add    %dl,-0x5f(%rax)
  40147a:	60                   	(bad)  
  40147b:	00 00                	add    %al,(%rax)
  40147d:	00 00                	add    %al,(%rax)
  40147f:	00 07                	add    %al,(%rdi)
  401481:	00 00                	add    %al,(%rax)
  401483:	00 28                	add    %ch,(%rax)
	...
  40148d:	00 00                	add    %al,(%rax)
  40148f:	00 58 a1             	add    %bl,-0x5f(%rax)
  401492:	60                   	(bad)  
  401493:	00 00                	add    %al,(%rax)
  401495:	00 00                	add    %al,(%rax)
  401497:	00 07                	add    %al,(%rdi)
  401499:	00 00                	add    %al,(%rax)
  40149b:	00 2a                	add    %ch,(%rdx)
	...
  4014a5:	00 00                	add    %al,(%rax)
  4014a7:	00 60 a1             	add    %ah,-0x5f(%rax)
  4014aa:	60                   	(bad)  
  4014ab:	00 00                	add    %al,(%rax)
  4014ad:	00 00                	add    %al,(%rax)
  4014af:	00 07                	add    %al,(%rdi)
  4014b1:	00 00                	add    %al,(%rax)
  4014b3:	00 2b                	add    %ch,(%rbx)
	...
  4014bd:	00 00                	add    %al,(%rax)
  4014bf:	00 68 a1             	add    %ch,-0x5f(%rax)
  4014c2:	60                   	(bad)  
  4014c3:	00 00                	add    %al,(%rax)
  4014c5:	00 00                	add    %al,(%rax)
  4014c7:	00 07                	add    %al,(%rdi)
  4014c9:	00 00                	add    %al,(%rax)
  4014cb:	00 2c 00             	add    %ch,(%rax,%rax,1)
	...
  4014d6:	00 00                	add    %al,(%rax)
  4014d8:	70 a1                	jo     40147b <_init-0xa5>
  4014da:	60                   	(bad)  
  4014db:	00 00                	add    %al,(%rax)
  4014dd:	00 00                	add    %al,(%rax)
  4014df:	00 07                	add    %al,(%rdi)
  4014e1:	00 00                	add    %al,(%rax)
  4014e3:	00 2e                	add    %ch,(%rsi)
	...
  4014ed:	00 00                	add    %al,(%rax)
  4014ef:	00 78 a1             	add    %bh,-0x5f(%rax)
  4014f2:	60                   	(bad)  
  4014f3:	00 00                	add    %al,(%rax)
  4014f5:	00 00                	add    %al,(%rax)
  4014f7:	00 07                	add    %al,(%rdi)
  4014f9:	00 00                	add    %al,(%rax)
  4014fb:	00 31                	add    %dh,(%rcx)
	...
  401505:	00 00                	add    %al,(%rax)
  401507:	00 80 a1 60 00 00    	add    %al,0x60a1(%rax)
  40150d:	00 00                	add    %al,(%rax)
  40150f:	00 07                	add    %al,(%rdi)
  401511:	00 00                	add    %al,(%rax)
  401513:	00 3a                	add    %bh,(%rdx)
	...

Disassembly of section .init:

0000000000401520 <_init>:
  401520:	48 83 ec 08          	sub    $0x8,%rsp
  401524:	48 8b 05 cd 8a 20 00 	mov    0x208acd(%rip),%rax        # 609ff8 <_DYNAMIC+0x238>
  40152b:	48 85 c0             	test   %rax,%rax
  40152e:	74 05                	je     401535 <_init+0x15>
  401530:	e8 fb 02 00 00       	callq  401830 <_ZNSt8ios_base4InitD1Ev@plt+0x10>
  401535:	48 83 c4 08          	add    $0x8,%rsp
  401539:	c3                   	retq   

Disassembly of section .plt:

0000000000401540 <__printf_chk@plt-0x10>:
  401540:	ff 35 c2 8a 20 00    	pushq  0x208ac2(%rip)        # 60a008 <_GLOBAL_OFFSET_TABLE_+0x8>
  401546:	ff 25 c4 8a 20 00    	jmpq   *0x208ac4(%rip)        # 60a010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40154c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401550 <__printf_chk@plt>:
  401550:	ff 25 c2 8a 20 00    	jmpq   *0x208ac2(%rip)        # 60a018 <_GLOBAL_OFFSET_TABLE_+0x18>
  401556:	68 00 00 00 00       	pushq  $0x0
  40155b:	e9 e0 ff ff ff       	jmpq   401540 <_init+0x20>

0000000000401560 <_Znam@plt>:
  401560:	ff 25 ba 8a 20 00    	jmpq   *0x208aba(%rip)        # 60a020 <_GLOBAL_OFFSET_TABLE_+0x20>
  401566:	68 01 00 00 00       	pushq  $0x1
  40156b:	e9 d0 ff ff ff       	jmpq   401540 <_init+0x20>

0000000000401570 <rand@plt>:
  401570:	ff 25 b2 8a 20 00    	jmpq   *0x208ab2(%rip)        # 60a028 <_GLOBAL_OFFSET_TABLE_+0x28>
  401576:	68 02 00 00 00       	pushq  $0x2
  40157b:	e9 c0 ff ff ff       	jmpq   401540 <_init+0x20>

0000000000401580 <_ZNSolsEPFRSt8ios_baseS0_E@plt>:
  401580:	ff 25 aa 8a 20 00    	jmpq   *0x208aaa(%rip)        # 60a030 <_GLOBAL_OFFSET_TABLE_+0x30>
  401586:	68 03 00 00 00       	pushq  $0x3
  40158b:	e9 b0 ff ff ff       	jmpq   401540 <_init+0x20>

0000000000401590 <strchr@plt>:
  401590:	ff 25 a2 8a 20 00    	jmpq   *0x208aa2(%rip)        # 60a038 <_GLOBAL_OFFSET_TABLE_+0x38>
  401596:	68 04 00 00 00       	pushq  $0x4
  40159b:	e9 a0 ff ff ff       	jmpq   401540 <_init+0x20>

00000000004015a0 <strlen@plt>:
  4015a0:	ff 25 9a 8a 20 00    	jmpq   *0x208a9a(%rip)        # 60a040 <_GLOBAL_OFFSET_TABLE_+0x40>
  4015a6:	68 05 00 00 00       	pushq  $0x5
  4015ab:	e9 90 ff ff ff       	jmpq   401540 <_init+0x20>

00000000004015b0 <__strncat_chk@plt>:
  4015b0:	ff 25 92 8a 20 00    	jmpq   *0x208a92(%rip)        # 60a048 <_GLOBAL_OFFSET_TABLE_+0x48>
  4015b6:	68 06 00 00 00       	pushq  $0x6
  4015bb:	e9 80 ff ff ff       	jmpq   401540 <_init+0x20>

00000000004015c0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt>:
  4015c0:	ff 25 8a 8a 20 00    	jmpq   *0x208a8a(%rip)        # 60a050 <_GLOBAL_OFFSET_TABLE_+0x50>
  4015c6:	68 07 00 00 00       	pushq  $0x7
  4015cb:	e9 70 ff ff ff       	jmpq   401540 <_init+0x20>

00000000004015d0 <__cxa_allocate_exception@plt>:
  4015d0:	ff 25 82 8a 20 00    	jmpq   *0x208a82(%rip)        # 60a058 <_GLOBAL_OFFSET_TABLE_+0x58>
  4015d6:	68 08 00 00 00       	pushq  $0x8
  4015db:	e9 60 ff ff ff       	jmpq   401540 <_init+0x20>

00000000004015e0 <posix_memalign@plt>:
  4015e0:	ff 25 7a 8a 20 00    	jmpq   *0x208a7a(%rip)        # 60a060 <_GLOBAL_OFFSET_TABLE_+0x60>
  4015e6:	68 09 00 00 00       	pushq  $0x9
  4015eb:	e9 50 ff ff ff       	jmpq   401540 <_init+0x20>

00000000004015f0 <catopen@plt>:
  4015f0:	ff 25 72 8a 20 00    	jmpq   *0x208a72(%rip)        # 60a068 <_GLOBAL_OFFSET_TABLE_+0x68>
  4015f6:	68 0a 00 00 00       	pushq  $0xa
  4015fb:	e9 40 ff ff ff       	jmpq   401540 <_init+0x20>

0000000000401600 <strncpy@plt>:
  401600:	ff 25 6a 8a 20 00    	jmpq   *0x208a6a(%rip)        # 60a070 <_GLOBAL_OFFSET_TABLE_+0x70>
  401606:	68 0b 00 00 00       	pushq  $0xb
  40160b:	e9 30 ff ff ff       	jmpq   401540 <_init+0x20>

0000000000401610 <_ZNSs4_Rep10_M_destroyERKSaIcE@plt>:
  401610:	ff 25 62 8a 20 00    	jmpq   *0x208a62(%rip)        # 60a078 <_GLOBAL_OFFSET_TABLE_+0x78>
  401616:	68 0c 00 00 00       	pushq  $0xc
  40161b:	e9 20 ff ff ff       	jmpq   401540 <_init+0x20>

0000000000401620 <__cxa_atexit@plt>:
  401620:	ff 25 5a 8a 20 00    	jmpq   *0x208a5a(%rip)        # 60a080 <_GLOBAL_OFFSET_TABLE_+0x80>
  401626:	68 0d 00 00 00       	pushq  $0xd
  40162b:	e9 10 ff ff ff       	jmpq   401540 <_init+0x20>

0000000000401630 <_ZdlPv@plt>:
  401630:	ff 25 52 8a 20 00    	jmpq   *0x208a52(%rip)        # 60a088 <_GLOBAL_OFFSET_TABLE_+0x88>
  401636:	68 0e 00 00 00       	pushq  $0xe
  40163b:	e9 00 ff ff ff       	jmpq   401540 <_init+0x20>

0000000000401640 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>:
  401640:	ff 25 4a 8a 20 00    	jmpq   *0x208a4a(%rip)        # 60a090 <_GLOBAL_OFFSET_TABLE_+0x90>
  401646:	68 0f 00 00 00       	pushq  $0xf
  40164b:	e9 f0 fe ff ff       	jmpq   401540 <_init+0x20>

0000000000401650 <fclose@plt>:
  401650:	ff 25 42 8a 20 00    	jmpq   *0x208a42(%rip)        # 60a098 <_GLOBAL_OFFSET_TABLE_+0x98>
  401656:	68 10 00 00 00       	pushq  $0x10
  40165b:	e9 e0 fe ff ff       	jmpq   401540 <_init+0x20>

0000000000401660 <_Znwm@plt>:
  401660:	ff 25 3a 8a 20 00    	jmpq   *0x208a3a(%rip)        # 60a0a0 <_GLOBAL_OFFSET_TABLE_+0xa0>
  401666:	68 11 00 00 00       	pushq  $0x11
  40166b:	e9 d0 fe ff ff       	jmpq   401540 <_init+0x20>

0000000000401670 <_ZNSolsEPFRSoS_E@plt>:
  401670:	ff 25 32 8a 20 00    	jmpq   *0x208a32(%rip)        # 60a0a8 <_GLOBAL_OFFSET_TABLE_+0xa8>
  401676:	68 12 00 00 00       	pushq  $0x12
  40167b:	e9 c0 fe ff ff       	jmpq   401540 <_init+0x20>

0000000000401680 <catgets@plt>:
  401680:	ff 25 2a 8a 20 00    	jmpq   *0x208a2a(%rip)        # 60a0b0 <_GLOBAL_OFFSET_TABLE_+0xb0>
  401686:	68 13 00 00 00       	pushq  $0x13
  40168b:	e9 b0 fe ff ff       	jmpq   401540 <_init+0x20>

0000000000401690 <__stack_chk_fail@plt>:
  401690:	ff 25 22 8a 20 00    	jmpq   *0x208a22(%rip)        # 60a0b8 <_GLOBAL_OFFSET_TABLE_+0xb8>
  401696:	68 14 00 00 00       	pushq  $0x14
  40169b:	e9 a0 fe ff ff       	jmpq   401540 <_init+0x20>

00000000004016a0 <_ZNSsC1EPKcRKSaIcE@plt>:
  4016a0:	ff 25 1a 8a 20 00    	jmpq   *0x208a1a(%rip)        # 60a0c0 <_GLOBAL_OFFSET_TABLE_+0xc0>
  4016a6:	68 15 00 00 00       	pushq  $0x15
  4016ab:	e9 90 fe ff ff       	jmpq   401540 <_init+0x20>

00000000004016b0 <_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St5_Setw@plt>:
  4016b0:	ff 25 12 8a 20 00    	jmpq   *0x208a12(%rip)        # 60a0c8 <_GLOBAL_OFFSET_TABLE_+0xc8>
  4016b6:	68 16 00 00 00       	pushq  $0x16
  4016bb:	e9 80 fe ff ff       	jmpq   401540 <_init+0x20>

00000000004016c0 <fopen@plt>:
  4016c0:	ff 25 0a 8a 20 00    	jmpq   *0x208a0a(%rip)        # 60a0d0 <_GLOBAL_OFFSET_TABLE_+0xd0>
  4016c6:	68 17 00 00 00       	pushq  $0x17
  4016cb:	e9 70 fe ff ff       	jmpq   401540 <_init+0x20>

00000000004016d0 <free@plt>:
  4016d0:	ff 25 02 8a 20 00    	jmpq   *0x208a02(%rip)        # 60a0d8 <_GLOBAL_OFFSET_TABLE_+0xd8>
  4016d6:	68 18 00 00 00       	pushq  $0x18
  4016db:	e9 60 fe ff ff       	jmpq   401540 <_init+0x20>

00000000004016e0 <exit@plt>:
  4016e0:	ff 25 fa 89 20 00    	jmpq   *0x2089fa(%rip)        # 60a0e0 <_GLOBAL_OFFSET_TABLE_+0xe0>
  4016e6:	68 19 00 00 00       	pushq  $0x19
  4016eb:	e9 50 fe ff ff       	jmpq   401540 <_init+0x20>

00000000004016f0 <getenv@plt>:
  4016f0:	ff 25 f2 89 20 00    	jmpq   *0x2089f2(%rip)        # 60a0e8 <_GLOBAL_OFFSET_TABLE_+0xe8>
  4016f6:	68 1a 00 00 00       	pushq  $0x1a
  4016fb:	e9 40 fe ff ff       	jmpq   401540 <_init+0x20>

0000000000401700 <_ZdaPv@plt>:
  401700:	ff 25 ea 89 20 00    	jmpq   *0x2089ea(%rip)        # 60a0f0 <_GLOBAL_OFFSET_TABLE_+0xf0>
  401706:	68 1b 00 00 00       	pushq  $0x1b
  40170b:	e9 30 fe ff ff       	jmpq   401540 <_init+0x20>

0000000000401710 <clock_gettime@plt>:
  401710:	ff 25 e2 89 20 00    	jmpq   *0x2089e2(%rip)        # 60a0f8 <_GLOBAL_OFFSET_TABLE_+0xf8>
  401716:	68 1c 00 00 00       	pushq  $0x1c
  40171b:	e9 20 fe ff ff       	jmpq   401540 <_init+0x20>

0000000000401720 <__vsprintf_chk@plt>:
  401720:	ff 25 da 89 20 00    	jmpq   *0x2089da(%rip)        # 60a100 <_GLOBAL_OFFSET_TABLE_+0x100>
  401726:	68 1d 00 00 00       	pushq  $0x1d
  40172b:	e9 10 fe ff ff       	jmpq   401540 <_init+0x20>

0000000000401730 <setenv@plt>:
  401730:	ff 25 d2 89 20 00    	jmpq   *0x2089d2(%rip)        # 60a108 <_GLOBAL_OFFSET_TABLE_+0x108>
  401736:	68 1e 00 00 00       	pushq  $0x1e
  40173b:	e9 00 fe ff ff       	jmpq   401540 <_init+0x20>

0000000000401740 <_ZNSt8ios_base4InitC1Ev@plt>:
  401740:	ff 25 ca 89 20 00    	jmpq   *0x2089ca(%rip)        # 60a110 <_GLOBAL_OFFSET_TABLE_+0x110>
  401746:	68 1f 00 00 00       	pushq  $0x1f
  40174b:	e9 f0 fd ff ff       	jmpq   401540 <_init+0x20>

0000000000401750 <fgets@plt>:
  401750:	ff 25 c2 89 20 00    	jmpq   *0x2089c2(%rip)        # 60a118 <_GLOBAL_OFFSET_TABLE_+0x118>
  401756:	68 20 00 00 00       	pushq  $0x20
  40175b:	e9 e0 fd ff ff       	jmpq   401540 <_init+0x20>

0000000000401760 <_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St13_Setprecision@plt>:
  401760:	ff 25 ba 89 20 00    	jmpq   *0x2089ba(%rip)        # 60a120 <_GLOBAL_OFFSET_TABLE_+0x120>
  401766:	68 21 00 00 00       	pushq  $0x21
  40176b:	e9 d0 fd ff ff       	jmpq   401540 <_init+0x20>

0000000000401770 <__fprintf_chk@plt>:
  401770:	ff 25 b2 89 20 00    	jmpq   *0x2089b2(%rip)        # 60a128 <_GLOBAL_OFFSET_TABLE_+0x128>
  401776:	68 22 00 00 00       	pushq  $0x22
  40177b:	e9 c0 fd ff ff       	jmpq   401540 <_init+0x20>

0000000000401780 <__gxx_personality_v0@plt>:
  401780:	ff 25 aa 89 20 00    	jmpq   *0x2089aa(%rip)        # 60a130 <_GLOBAL_OFFSET_TABLE_+0x130>
  401786:	68 23 00 00 00       	pushq  $0x23
  40178b:	e9 b0 fd ff ff       	jmpq   401540 <_init+0x20>

0000000000401790 <_ZNSt16invalid_argumentD1Ev@plt>:
  401790:	ff 25 a2 89 20 00    	jmpq   *0x2089a2(%rip)        # 60a138 <_GLOBAL_OFFSET_TABLE_+0x138>
  401796:	68 24 00 00 00       	pushq  $0x24
  40179b:	e9 a0 fd ff ff       	jmpq   401540 <_init+0x20>

00000000004017a0 <__pthread_key_create@plt>:
  4017a0:	ff 25 9a 89 20 00    	jmpq   *0x20899a(%rip)        # 60a140 <_GLOBAL_OFFSET_TABLE_+0x140>
  4017a6:	68 25 00 00 00       	pushq  $0x25
  4017ab:	e9 90 fd ff ff       	jmpq   401540 <_init+0x20>

00000000004017b0 <__cxa_throw@plt>:
  4017b0:	ff 25 92 89 20 00    	jmpq   *0x208992(%rip)        # 60a148 <_GLOBAL_OFFSET_TABLE_+0x148>
  4017b6:	68 26 00 00 00       	pushq  $0x26
  4017bb:	e9 80 fd ff ff       	jmpq   401540 <_init+0x20>

00000000004017c0 <_ZNSolsEi@plt>:
  4017c0:	ff 25 8a 89 20 00    	jmpq   *0x20898a(%rip)        # 60a150 <_GLOBAL_OFFSET_TABLE_+0x150>
  4017c6:	68 27 00 00 00       	pushq  $0x27
  4017cb:	e9 70 fd ff ff       	jmpq   401540 <_init+0x20>

00000000004017d0 <_Unwind_Resume@plt>:
  4017d0:	ff 25 82 89 20 00    	jmpq   *0x208982(%rip)        # 60a158 <_GLOBAL_OFFSET_TABLE_+0x158>
  4017d6:	68 28 00 00 00       	pushq  $0x28
  4017db:	e9 60 fd ff ff       	jmpq   401540 <_init+0x20>

00000000004017e0 <_ZNSt16invalid_argumentC1ERKSs@plt>:
  4017e0:	ff 25 7a 89 20 00    	jmpq   *0x20897a(%rip)        # 60a160 <_GLOBAL_OFFSET_TABLE_+0x160>
  4017e6:	68 29 00 00 00       	pushq  $0x29
  4017eb:	e9 50 fd ff ff       	jmpq   401540 <_init+0x20>

00000000004017f0 <__libc_start_main@plt>:
  4017f0:	ff 25 72 89 20 00    	jmpq   *0x208972(%rip)        # 60a168 <_GLOBAL_OFFSET_TABLE_+0x168>
  4017f6:	68 2a 00 00 00       	pushq  $0x2a
  4017fb:	e9 40 fd ff ff       	jmpq   401540 <_init+0x20>

0000000000401800 <_ZNSolsEd@plt>:
  401800:	ff 25 6a 89 20 00    	jmpq   *0x20896a(%rip)        # 60a170 <_GLOBAL_OFFSET_TABLE_+0x170>
  401806:	68 2b 00 00 00       	pushq  $0x2b
  40180b:	e9 30 fd ff ff       	jmpq   401540 <_init+0x20>

0000000000401810 <fscanf@plt>:
  401810:	ff 25 62 89 20 00    	jmpq   *0x208962(%rip)        # 60a178 <_GLOBAL_OFFSET_TABLE_+0x178>
  401816:	68 2c 00 00 00       	pushq  $0x2c
  40181b:	e9 20 fd ff ff       	jmpq   401540 <_init+0x20>

0000000000401820 <_ZNSt8ios_base4InitD1Ev@plt>:
  401820:	ff 25 5a 89 20 00    	jmpq   *0x20895a(%rip)        # 60a180 <_GLOBAL_OFFSET_TABLE_+0x180>
  401826:	68 2d 00 00 00       	pushq  $0x2d
  40182b:	e9 10 fd ff ff       	jmpq   401540 <_init+0x20>

Disassembly of section .plt.got:

0000000000401830 <.plt.got>:
  401830:	ff 25 c2 87 20 00    	jmpq   *0x2087c2(%rip)        # 609ff8 <_DYNAMIC+0x238>
  401836:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000401840 <_start>:
  401840:	31 ed                	xor    %ebp,%ebp
  401842:	49 89 d1             	mov    %rdx,%r9
  401845:	5e                   	pop    %rsi
  401846:	48 89 e2             	mov    %rsp,%rdx
  401849:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40184d:	50                   	push   %rax
  40184e:	54                   	push   %rsp
  40184f:	49 c7 c0 90 6c 40 00 	mov    $0x406c90,%r8
  401856:	48 c7 c1 20 6c 40 00 	mov    $0x406c20,%rcx
  40185d:	48 c7 c7 2d 19 40 00 	mov    $0x40192d,%rdi
  401864:	e8 87 ff ff ff       	callq  4017f0 <__libc_start_main@plt>
  401869:	f4                   	hlt    
  40186a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000401870 <deregister_tm_clones>:
  401870:	b8 6f a2 60 00       	mov    $0x60a26f,%eax
  401875:	55                   	push   %rbp
  401876:	48 2d 68 a2 60 00    	sub    $0x60a268,%rax
  40187c:	48 83 f8 0e          	cmp    $0xe,%rax
  401880:	48 89 e5             	mov    %rsp,%rbp
  401883:	77 02                	ja     401887 <deregister_tm_clones+0x17>
  401885:	5d                   	pop    %rbp
  401886:	c3                   	retq   
  401887:	b8 00 00 00 00       	mov    $0x0,%eax
  40188c:	48 85 c0             	test   %rax,%rax
  40188f:	74 f4                	je     401885 <deregister_tm_clones+0x15>
  401891:	5d                   	pop    %rbp
  401892:	bf 68 a2 60 00       	mov    $0x60a268,%edi
  401897:	ff e0                	jmpq   *%rax
  401899:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004018a0 <register_tm_clones>:
  4018a0:	b8 68 a2 60 00       	mov    $0x60a268,%eax
  4018a5:	55                   	push   %rbp
  4018a6:	48 2d 68 a2 60 00    	sub    $0x60a268,%rax
  4018ac:	48 c1 f8 03          	sar    $0x3,%rax
  4018b0:	48 89 e5             	mov    %rsp,%rbp
  4018b3:	48 89 c2             	mov    %rax,%rdx
  4018b6:	48 c1 ea 3f          	shr    $0x3f,%rdx
  4018ba:	48 01 d0             	add    %rdx,%rax
  4018bd:	48 d1 f8             	sar    %rax
  4018c0:	75 02                	jne    4018c4 <register_tm_clones+0x24>
  4018c2:	5d                   	pop    %rbp
  4018c3:	c3                   	retq   
  4018c4:	ba 00 00 00 00       	mov    $0x0,%edx
  4018c9:	48 85 d2             	test   %rdx,%rdx
  4018cc:	74 f4                	je     4018c2 <register_tm_clones+0x22>
  4018ce:	5d                   	pop    %rbp
  4018cf:	48 89 c6             	mov    %rax,%rsi
  4018d2:	bf 68 a2 60 00       	mov    $0x60a268,%edi
  4018d7:	ff e2                	jmpq   *%rdx
  4018d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004018e0 <__do_global_dtors_aux>:
  4018e0:	80 3d e1 8a 20 00 00 	cmpb   $0x0,0x208ae1(%rip)        # 60a3c8 <completed.6338>
  4018e7:	75 11                	jne    4018fa <__do_global_dtors_aux+0x1a>
  4018e9:	55                   	push   %rbp
  4018ea:	48 89 e5             	mov    %rsp,%rbp
  4018ed:	e8 7e ff ff ff       	callq  401870 <deregister_tm_clones>
  4018f2:	5d                   	pop    %rbp
  4018f3:	c6 05 ce 8a 20 00 01 	movb   $0x1,0x208ace(%rip)        # 60a3c8 <completed.6338>
  4018fa:	f3 c3                	repz retq 
  4018fc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401900 <frame_dummy>:
  401900:	48 83 3d 30 7f 20 00 	cmpq   $0x0,0x207f30(%rip)        # 609838 <__JCR_END__>
  401907:	00 
  401908:	74 1e                	je     401928 <frame_dummy+0x28>
  40190a:	b8 00 00 00 00       	mov    $0x0,%eax
  40190f:	48 85 c0             	test   %rax,%rax
  401912:	74 14                	je     401928 <frame_dummy+0x28>
  401914:	55                   	push   %rbp
  401915:	bf 38 98 60 00       	mov    $0x609838,%edi
  40191a:	48 89 e5             	mov    %rsp,%rbp
  40191d:	ff d0                	callq  *%rax
  40191f:	5d                   	pop    %rbp
  401920:	e9 7b ff ff ff       	jmpq   4018a0 <register_tm_clones>
  401925:	0f 1f 00             	nopl   (%rax)
  401928:	e9 73 ff ff ff       	jmpq   4018a0 <register_tm_clones>

000000000040192d <main>:
  40192d:	56                   	push   %rsi
  40192e:	48 be fe 9f 9d 38 07 	movabs $0x7389d9ffe,%rsi
  401935:	00 00 00 
  401938:	6a 03                	pushq  $0x3
  40193a:	5f                   	pop    %rdi
  40193b:	e8 50 44 00 00       	callq  405d90 <__intel_new_feature_proc_init>
  401940:	c5 f8 ae 1c 24       	vstmxcsr (%rsp)
  401945:	81 0c 24 40 80 00 00 	orl    $0x8040,(%rsp)
  40194c:	c5 f8 ae 14 24       	vldmxcsr (%rsp)
  401951:	e8 1d 00 00 00       	callq  401973 <_Z12test_libxsmmv>
  401956:	e8 c6 0b 00 00       	callq  402521 <_Z11test_breuerv>
  40195b:	e8 f1 12 00 00       	callq  402c51 <_Z15test_unrolled_8v>
  401960:	e8 df 19 00 00       	callq  403344 <_Z16test_unrolled_40v>
  401965:	e8 e3 27 00 00       	callq  40414d <_Z14test_general_8v>
  40196a:	e8 ac 32 00 00       	callq  404c1b <_Z15test_general_40v>
  40196f:	31 c0                	xor    %eax,%eax
  401971:	59                   	pop    %rcx
  401972:	c3                   	retq   

0000000000401973 <_Z12test_libxsmmv>:
  401973:	48 81 ec b8 00 00 00 	sub    $0xb8,%rsp
  40197a:	48 89 9c 24 a8 00 00 	mov    %rbx,0xa8(%rsp)
  401981:	00 
  401982:	4c 89 bc 24 b0 00 00 	mov    %r15,0xb0(%rsp)
  401989:	00 
  40198a:	bb 28 a2 60 00       	mov    $0x60a228,%ebx
  40198f:	6a 28                	pushq  $0x28
  401991:	41 5f                	pop    %r15
  401993:	48 8d 04 24          	lea    (%rsp),%rax
  401997:	48 89 18             	mov    %rbx,(%rax)
  40199a:	48 8d 78 18          	lea    0x18(%rax),%rdi
  40199e:	44 89 78 10          	mov    %r15d,0x10(%rax)
  4019a2:	6a 40                	pushq  $0x40
  4019a4:	5e                   	pop    %rsi
  4019a5:	44 89 78 08          	mov    %r15d,0x8(%rax)
  4019a9:	ba 40 0b 00 00       	mov    $0xb40,%edx
  4019ae:	c7 40 0c 09 00 00 00 	movl   $0x9,0xc(%rax)
  4019b5:	e8 26 fc ff ff       	callq  4015e0 <posix_memalign@plt>
  4019ba:	48 8d 3c 24          	lea    (%rsp),%rdi
  4019be:	e8 59 3f 00 00       	callq  40591c <_ZN11DenseMatrix4zeroEv>
  4019c3:	48 8d 3c 24          	lea    (%rsp),%rdi
  4019c7:	e8 ac 3f 00 00       	callq  405978 <_ZN11DenseMatrix6randomEv>
  4019cc:	48 8d 7c 24 60       	lea    0x60(%rsp),%rdi
  4019d1:	be c8 6c 40 00       	mov    $0x406cc8,%esi
  4019d6:	e8 21 40 00 00       	callq  4059fc <_ZN11DenseMatrixC1EPKc>
  4019db:	48 8d 44 24 40       	lea    0x40(%rsp),%rax
  4019e0:	48 89 18             	mov    %rbx,(%rax)
  4019e3:	48 8d 78 18          	lea    0x18(%rax),%rdi
  4019e7:	44 89 78 10          	mov    %r15d,0x10(%rax)
  4019eb:	6a 40                	pushq  $0x40
  4019ed:	5e                   	pop    %rsi
  4019ee:	44 89 78 08          	mov    %r15d,0x8(%rax)
  4019f2:	ba c0 12 00 00       	mov    $0x12c0,%edx
  4019f7:	c7 40 0c 0f 00 00 00 	movl   $0xf,0xc(%rax)
  4019fe:	e8 dd fb ff ff       	callq  4015e0 <posix_memalign@plt>
  401a03:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  401a08:	e8 0f 3f 00 00       	callq  40591c <_ZN11DenseMatrix4zeroEv>
  401a0d:	48 8d 44 24 20       	lea    0x20(%rsp),%rax
  401a12:	48 89 18             	mov    %rbx,(%rax)
  401a15:	48 8d 78 18          	lea    0x18(%rax),%rdi
  401a19:	44 89 78 10          	mov    %r15d,0x10(%rax)
  401a1d:	6a 40                	pushq  $0x40
  401a1f:	5e                   	pop    %rsi
  401a20:	44 89 78 08          	mov    %r15d,0x8(%rax)
  401a24:	ba c0 12 00 00       	mov    $0x12c0,%edx
  401a29:	c7 40 0c 0f 00 00 00 	movl   $0xf,0xc(%rax)
  401a30:	e8 ab fb ff ff       	callq  4015e0 <posix_memalign@plt>
  401a35:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
  401a3a:	e8 dd 3e 00 00       	callq  40591c <_ZN11DenseMatrix4zeroEv>
  401a3f:	48 8d 3c 24          	lea    (%rsp),%rdi
  401a43:	48 8d 77 60          	lea    0x60(%rdi),%rsi
  401a47:	48 8d 56 e0          	lea    -0x20(%rsi),%rdx
  401a4b:	e8 c3 09 00 00       	callq  402413 <_Z4gemmRK6MatrixS1_RS_>
  401a50:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
  401a55:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
  401a5a:	48 8b 74 24 78       	mov    0x78(%rsp),%rsi
  401a5f:	e8 41 01 00 00       	callq  401ba5 <_Z7libxsmmPKdS0_Pd>
  401a64:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  401a69:	48 8d 77 e0          	lea    -0x20(%rdi),%rsi
  401a6d:	e8 ff 06 00 00       	callq  402171 <_Z13assert_equalsRK6MatrixS1_>
  401a72:	31 ff                	xor    %edi,%edi
  401a74:	83 c7 01             	add    $0x1,%edi
  401a77:	48 8d b4 24 80 00 00 	lea    0x80(%rsp),%rsi
  401a7e:	00 
  401a7f:	e8 8c fc ff ff       	callq  401710 <clock_gettime@plt>
  401a84:	45 31 ff             	xor    %r15d,%r15d
  401a87:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
  401a8c:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
  401a91:	48 8b 74 24 78       	mov    0x78(%rsp),%rsi
  401a96:	e8 0a 01 00 00       	callq  401ba5 <_Z7libxsmmPKdS0_Pd>
  401a9b:	41 83 c7 01          	add    $0x1,%r15d
  401a9f:	41 81 ff b8 0b 00 00 	cmp    $0xbb8,%r15d
  401aa6:	7c df                	jl     401a87 <_Z12test_libxsmmv+0x114>
  401aa8:	31 ff                	xor    %edi,%edi
  401aaa:	83 c7 01             	add    $0x1,%edi
  401aad:	48 8d b4 24 90 00 00 	lea    0x90(%rsp),%rsi
  401ab4:	00 
  401ab5:	e8 56 fc ff ff       	callq  401710 <clock_gettime@plt>
  401aba:	bf a0 a2 60 00       	mov    $0x60a2a0,%edi
  401abf:	be fc 6c 40 00       	mov    $0x406cfc,%esi
  401ac4:	e8 77 fb ff ff       	callq  401640 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  401ac9:	49 89 c7             	mov    %rax,%r15
  401acc:	48 8d 84 24 80 00 00 	lea    0x80(%rsp),%rax
  401ad3:	00 
  401ad4:	48 8d 8c 24 90 00 00 	lea    0x90(%rsp),%rcx
  401adb:	00 
  401adc:	48 8b 38             	mov    (%rax),%rdi
  401adf:	48 8b 70 08          	mov    0x8(%rax),%rsi
  401ae3:	48 8b 11             	mov    (%rcx),%rdx
  401ae6:	48 8b 49 08          	mov    0x8(%rcx),%rcx
  401aea:	e8 11 0a 00 00       	callq  402500 <_Z9microsecs8timespecS_>
  401aef:	c5 fb 5e 05 b1 51 00 	vdivsd 0x51b1(%rip),%xmm0,%xmm0        # 406ca8 <_IO_stdin_used+0x8>
  401af6:	00 
  401af7:	4c 89 ff             	mov    %r15,%rdi
  401afa:	e8 01 fd ff ff       	callq  401800 <_ZNSolsEd@plt>
  401aff:	48 89 c7             	mov    %rax,%rdi
  401b02:	be c0 15 40 00       	mov    $0x4015c0,%esi
  401b07:	e8 64 fb ff ff       	callq  401670 <_ZNSolsEPFRSoS_E@plt>
  401b0c:	48 8b 7c 24 38       	mov    0x38(%rsp),%rdi
  401b11:	48 89 5c 24 20       	mov    %rbx,0x20(%rsp)
  401b16:	e8 b5 fb ff ff       	callq  4016d0 <free@plt>
  401b1b:	48 8b 7c 24 58       	mov    0x58(%rsp),%rdi
  401b20:	48 89 5c 24 40       	mov    %rbx,0x40(%rsp)
  401b25:	e8 a6 fb ff ff       	callq  4016d0 <free@plt>
  401b2a:	48 8b 7c 24 78       	mov    0x78(%rsp),%rdi
  401b2f:	48 89 5c 24 60       	mov    %rbx,0x60(%rsp)
  401b34:	e8 97 fb ff ff       	callq  4016d0 <free@plt>
  401b39:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
  401b3e:	48 89 1c 24          	mov    %rbx,(%rsp)
  401b42:	e8 89 fb ff ff       	callq  4016d0 <free@plt>
  401b47:	48 8b 9c 24 a8 00 00 	mov    0xa8(%rsp),%rbx
  401b4e:	00 
  401b4f:	4c 8b bc 24 b0 00 00 	mov    0xb0(%rsp),%r15
  401b56:	00 
  401b57:	48 81 c4 b8 00 00 00 	add    $0xb8,%rsp
  401b5e:	c3                   	retq   
  401b5f:	48 89 84 24 a0 00 00 	mov    %rax,0xa0(%rsp)
  401b66:	00 
  401b67:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
  401b6c:	e8 f3 3d 00 00       	callq  405964 <_ZN11DenseMatrixD1Ev>
  401b71:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  401b76:	e8 e9 3d 00 00       	callq  405964 <_ZN11DenseMatrixD1Ev>
  401b7b:	48 8d 7c 24 60       	lea    0x60(%rsp),%rdi
  401b80:	e8 df 3d 00 00       	callq  405964 <_ZN11DenseMatrixD1Ev>
  401b85:	48 8d 3c 24          	lea    (%rsp),%rdi
  401b89:	e8 d6 3d 00 00       	callq  405964 <_ZN11DenseMatrixD1Ev>
  401b8e:	48 8b bc 24 a0 00 00 	mov    0xa0(%rsp),%rdi
  401b95:	00 
  401b96:	e8 35 fc ff ff       	callq  4017d0 <_Unwind_Resume@plt>
  401b9b:	48 89 84 24 a0 00 00 	mov    %rax,0xa0(%rsp)
  401ba2:	00 
  401ba3:	eb e0                	jmp    401b85 <_Z12test_libxsmmv+0x212>

0000000000401ba5 <_Z7libxsmmPKdS0_Pd>:
  401ba5:	48 89 5c 24 f0       	mov    %rbx,-0x10(%rsp)
  401baa:	48 89 6c 24 f8       	mov    %rbp,-0x8(%rsp)
  401baf:	4c 89 7c 24 d0       	mov    %r15,-0x30(%rsp)
  401bb4:	4c 89 74 24 d8       	mov    %r14,-0x28(%rsp)
  401bb9:	4c 89 6c 24 e0       	mov    %r13,-0x20(%rsp)
  401bbe:	4c 89 64 24 e8       	mov    %r12,-0x18(%rsp)
  401bc3:	48 89 7c 24 b8       	mov    %rdi,-0x48(%rsp)
  401bc8:	48 89 74 24 c0       	mov    %rsi,-0x40(%rsp)
  401bcd:	48 89 54 24 c8       	mov    %rdx,-0x38(%rsp)
  401bd2:	48 8b 7c 24 b8       	mov    -0x48(%rsp),%rdi
  401bd7:	48 8b 74 24 c0       	mov    -0x40(%rsp),%rsi
  401bdc:	48 8b 54 24 c8       	mov    -0x38(%rsp),%rdx
  401be1:	49 c7 c4 00 00 00 00 	mov    $0x0,%r12
  401be8:	49 c7 c5 00 00 00 00 	mov    $0x0,%r13
  401bef:	49 c7 c6 00 00 00 00 	mov    $0x0,%r14
  401bf6:	49 83 c4 08          	add    $0x8,%r12
  401bfa:	62 e1 fd 48 28 0a    	vmovapd (%rdx),%zmm17
  401c00:	62 e1 fd 48 28 52 05 	vmovapd 0x140(%rdx),%zmm18
  401c07:	62 e1 fd 48 28 5a 0a 	vmovapd 0x280(%rdx),%zmm19
  401c0e:	62 e1 fd 48 28 62 0f 	vmovapd 0x3c0(%rdx),%zmm20
  401c15:	62 e1 fd 48 28 6a 14 	vmovapd 0x500(%rdx),%zmm21
  401c1c:	62 e1 fd 48 28 72 19 	vmovapd 0x640(%rdx),%zmm22
  401c23:	62 e1 fd 48 28 7a 1e 	vmovapd 0x780(%rdx),%zmm23
  401c2a:	62 61 fd 48 28 42 23 	vmovapd 0x8c0(%rdx),%zmm24
  401c31:	62 61 fd 48 28 4a 28 	vmovapd 0xa00(%rdx),%zmm25
  401c38:	62 61 fd 48 28 52 2d 	vmovapd 0xb40(%rdx),%zmm26
  401c3f:	62 61 fd 48 28 5a 32 	vmovapd 0xc80(%rdx),%zmm27
  401c46:	62 61 fd 48 28 62 37 	vmovapd 0xdc0(%rdx),%zmm28
  401c4d:	62 61 fd 48 28 6a 3c 	vmovapd 0xf00(%rdx),%zmm29
  401c54:	62 61 fd 48 28 72 41 	vmovapd 0x1040(%rdx),%zmm30
  401c5b:	62 61 fd 48 28 7a 46 	vmovapd 0x1180(%rdx),%zmm31
  401c62:	49 c7 c7 48 00 00 00 	mov    $0x48,%r15
  401c69:	48 c7 c0 d8 00 00 00 	mov    $0xd8,%rax
  401c70:	48 c7 c3 68 01 00 00 	mov    $0x168,%rbx
  401c77:	49 c7 c3 f8 01 00 00 	mov    $0x1f8,%r11
  401c7e:	49 89 f2             	mov    %rsi,%r10
  401c81:	49 81 c2 88 02 00 00 	add    $0x288,%r10
  401c88:	62 f1 fd 48 28 07    	vmovapd (%rdi),%zmm0
  401c8e:	62 f1 fd 48 28 4f 05 	vmovapd 0x140(%rdi),%zmm1
  401c95:	62 e2 fd 58 b8 0e    	vfmadd231pd (%rsi){1to8},%zmm0,%zmm17
  401c9b:	62 a2 fd 58 b8 14 3e 	vfmadd231pd (%rsi,%r15,1){1to8},%zmm0,%zmm18
  401ca2:	62 a2 fd 58 b8 1c 7e 	vfmadd231pd (%rsi,%r15,2){1to8},%zmm0,%zmm19
  401ca9:	62 e2 fd 58 b8 24 06 	vfmadd231pd (%rsi,%rax,1){1to8},%zmm0,%zmm20
  401cb0:	62 a2 fd 58 b8 2c be 	vfmadd231pd (%rsi,%r15,4){1to8},%zmm0,%zmm21
  401cb7:	62 e2 fd 58 b8 34 1e 	vfmadd231pd (%rsi,%rbx,1){1to8},%zmm0,%zmm22
  401cbe:	62 e2 fd 58 b8 3c 46 	vfmadd231pd (%rsi,%rax,2){1to8},%zmm0,%zmm23
  401cc5:	62 22 fd 58 b8 04 1e 	vfmadd231pd (%rsi,%r11,1){1to8},%zmm0,%zmm24
  401ccc:	62 22 fd 58 b8 0c fe 	vfmadd231pd (%rsi,%r15,8){1to8},%zmm0,%zmm25
  401cd3:	62 42 fd 58 b8 12    	vfmadd231pd (%r10){1to8},%zmm0,%zmm26
  401cd9:	62 02 fd 58 b8 1c 3a 	vfmadd231pd (%r10,%r15,1){1to8},%zmm0,%zmm27
  401ce0:	62 02 fd 58 b8 24 7a 	vfmadd231pd (%r10,%r15,2){1to8},%zmm0,%zmm28
  401ce7:	62 42 fd 58 b8 2c 02 	vfmadd231pd (%r10,%rax,1){1to8},%zmm0,%zmm29
  401cee:	62 02 fd 58 b8 34 ba 	vfmadd231pd (%r10,%r15,4){1to8},%zmm0,%zmm30
  401cf5:	62 42 fd 58 b8 3c 1a 	vfmadd231pd (%r10,%rbx,1){1to8},%zmm0,%zmm31
  401cfc:	62 f1 fd 48 28 47 0a 	vmovapd 0x280(%rdi),%zmm0
  401d03:	62 e2 f5 58 b8 4e 01 	vfmadd231pd 0x8(%rsi){1to8},%zmm1,%zmm17
  401d0a:	62 a2 f5 58 b8 54 3e 	vfmadd231pd 0x8(%rsi,%r15,1){1to8},%zmm1,%zmm18
  401d11:	01 
  401d12:	62 a2 f5 58 b8 5c 7e 	vfmadd231pd 0x8(%rsi,%r15,2){1to8},%zmm1,%zmm19
  401d19:	01 
  401d1a:	62 e2 f5 58 b8 64 06 	vfmadd231pd 0x8(%rsi,%rax,1){1to8},%zmm1,%zmm20
  401d21:	01 
  401d22:	62 a2 f5 58 b8 6c be 	vfmadd231pd 0x8(%rsi,%r15,4){1to8},%zmm1,%zmm21
  401d29:	01 
  401d2a:	62 e2 f5 58 b8 74 1e 	vfmadd231pd 0x8(%rsi,%rbx,1){1to8},%zmm1,%zmm22
  401d31:	01 
  401d32:	62 e2 f5 58 b8 7c 46 	vfmadd231pd 0x8(%rsi,%rax,2){1to8},%zmm1,%zmm23
  401d39:	01 
  401d3a:	62 22 f5 58 b8 44 1e 	vfmadd231pd 0x8(%rsi,%r11,1){1to8},%zmm1,%zmm24
  401d41:	01 
  401d42:	62 22 f5 58 b8 4c fe 	vfmadd231pd 0x8(%rsi,%r15,8){1to8},%zmm1,%zmm25
  401d49:	01 
  401d4a:	62 42 f5 58 b8 52 01 	vfmadd231pd 0x8(%r10){1to8},%zmm1,%zmm26
  401d51:	62 02 f5 58 b8 5c 3a 	vfmadd231pd 0x8(%r10,%r15,1){1to8},%zmm1,%zmm27
  401d58:	01 
  401d59:	62 02 f5 58 b8 64 7a 	vfmadd231pd 0x8(%r10,%r15,2){1to8},%zmm1,%zmm28
  401d60:	01 
  401d61:	62 42 f5 58 b8 6c 02 	vfmadd231pd 0x8(%r10,%rax,1){1to8},%zmm1,%zmm29
  401d68:	01 
  401d69:	62 02 f5 58 b8 74 ba 	vfmadd231pd 0x8(%r10,%r15,4){1to8},%zmm1,%zmm30
  401d70:	01 
  401d71:	62 42 f5 58 b8 7c 1a 	vfmadd231pd 0x8(%r10,%rbx,1){1to8},%zmm1,%zmm31
  401d78:	01 
  401d79:	62 f1 fd 48 28 4f 0f 	vmovapd 0x3c0(%rdi),%zmm1
  401d80:	62 e2 fd 58 b8 4e 02 	vfmadd231pd 0x10(%rsi){1to8},%zmm0,%zmm17
  401d87:	62 a2 fd 58 b8 54 3e 	vfmadd231pd 0x10(%rsi,%r15,1){1to8},%zmm0,%zmm18
  401d8e:	02 
  401d8f:	62 a2 fd 58 b8 5c 7e 	vfmadd231pd 0x10(%rsi,%r15,2){1to8},%zmm0,%zmm19
  401d96:	02 
  401d97:	62 e2 fd 58 b8 64 06 	vfmadd231pd 0x10(%rsi,%rax,1){1to8},%zmm0,%zmm20
  401d9e:	02 
  401d9f:	62 a2 fd 58 b8 6c be 	vfmadd231pd 0x10(%rsi,%r15,4){1to8},%zmm0,%zmm21
  401da6:	02 
  401da7:	62 e2 fd 58 b8 74 1e 	vfmadd231pd 0x10(%rsi,%rbx,1){1to8},%zmm0,%zmm22
  401dae:	02 
  401daf:	62 e2 fd 58 b8 7c 46 	vfmadd231pd 0x10(%rsi,%rax,2){1to8},%zmm0,%zmm23
  401db6:	02 
  401db7:	62 22 fd 58 b8 44 1e 	vfmadd231pd 0x10(%rsi,%r11,1){1to8},%zmm0,%zmm24
  401dbe:	02 
  401dbf:	62 22 fd 58 b8 4c fe 	vfmadd231pd 0x10(%rsi,%r15,8){1to8},%zmm0,%zmm25
  401dc6:	02 
  401dc7:	62 42 fd 58 b8 52 02 	vfmadd231pd 0x10(%r10){1to8},%zmm0,%zmm26
  401dce:	62 02 fd 58 b8 5c 3a 	vfmadd231pd 0x10(%r10,%r15,1){1to8},%zmm0,%zmm27
  401dd5:	02 
  401dd6:	62 02 fd 58 b8 64 7a 	vfmadd231pd 0x10(%r10,%r15,2){1to8},%zmm0,%zmm28
  401ddd:	02 
  401dde:	62 42 fd 58 b8 6c 02 	vfmadd231pd 0x10(%r10,%rax,1){1to8},%zmm0,%zmm29
  401de5:	02 
  401de6:	62 02 fd 58 b8 74 ba 	vfmadd231pd 0x10(%r10,%r15,4){1to8},%zmm0,%zmm30
  401ded:	02 
  401dee:	62 42 fd 58 b8 7c 1a 	vfmadd231pd 0x10(%r10,%rbx,1){1to8},%zmm0,%zmm31
  401df5:	02 
  401df6:	62 f1 fd 48 28 47 14 	vmovapd 0x500(%rdi),%zmm0
  401dfd:	62 e2 f5 58 b8 4e 03 	vfmadd231pd 0x18(%rsi){1to8},%zmm1,%zmm17
  401e04:	62 a2 f5 58 b8 54 3e 	vfmadd231pd 0x18(%rsi,%r15,1){1to8},%zmm1,%zmm18
  401e0b:	03 
  401e0c:	62 a2 f5 58 b8 5c 7e 	vfmadd231pd 0x18(%rsi,%r15,2){1to8},%zmm1,%zmm19
  401e13:	03 
  401e14:	62 e2 f5 58 b8 64 06 	vfmadd231pd 0x18(%rsi,%rax,1){1to8},%zmm1,%zmm20
  401e1b:	03 
  401e1c:	62 a2 f5 58 b8 6c be 	vfmadd231pd 0x18(%rsi,%r15,4){1to8},%zmm1,%zmm21
  401e23:	03 
  401e24:	62 e2 f5 58 b8 74 1e 	vfmadd231pd 0x18(%rsi,%rbx,1){1to8},%zmm1,%zmm22
  401e2b:	03 
  401e2c:	62 e2 f5 58 b8 7c 46 	vfmadd231pd 0x18(%rsi,%rax,2){1to8},%zmm1,%zmm23
  401e33:	03 
  401e34:	62 22 f5 58 b8 44 1e 	vfmadd231pd 0x18(%rsi,%r11,1){1to8},%zmm1,%zmm24
  401e3b:	03 
  401e3c:	62 22 f5 58 b8 4c fe 	vfmadd231pd 0x18(%rsi,%r15,8){1to8},%zmm1,%zmm25
  401e43:	03 
  401e44:	62 42 f5 58 b8 52 03 	vfmadd231pd 0x18(%r10){1to8},%zmm1,%zmm26
  401e4b:	62 02 f5 58 b8 5c 3a 	vfmadd231pd 0x18(%r10,%r15,1){1to8},%zmm1,%zmm27
  401e52:	03 
  401e53:	62 02 f5 58 b8 64 7a 	vfmadd231pd 0x18(%r10,%r15,2){1to8},%zmm1,%zmm28
  401e5a:	03 
  401e5b:	62 42 f5 58 b8 6c 02 	vfmadd231pd 0x18(%r10,%rax,1){1to8},%zmm1,%zmm29
  401e62:	03 
  401e63:	62 02 f5 58 b8 74 ba 	vfmadd231pd 0x18(%r10,%r15,4){1to8},%zmm1,%zmm30
  401e6a:	03 
  401e6b:	62 42 f5 58 b8 7c 1a 	vfmadd231pd 0x18(%r10,%rbx,1){1to8},%zmm1,%zmm31
  401e72:	03 
  401e73:	62 f1 fd 48 28 4f 19 	vmovapd 0x640(%rdi),%zmm1
  401e7a:	62 e2 fd 58 b8 4e 04 	vfmadd231pd 0x20(%rsi){1to8},%zmm0,%zmm17
  401e81:	62 a2 fd 58 b8 54 3e 	vfmadd231pd 0x20(%rsi,%r15,1){1to8},%zmm0,%zmm18
  401e88:	04 
  401e89:	62 a2 fd 58 b8 5c 7e 	vfmadd231pd 0x20(%rsi,%r15,2){1to8},%zmm0,%zmm19
  401e90:	04 
  401e91:	62 e2 fd 58 b8 64 06 	vfmadd231pd 0x20(%rsi,%rax,1){1to8},%zmm0,%zmm20
  401e98:	04 
  401e99:	62 a2 fd 58 b8 6c be 	vfmadd231pd 0x20(%rsi,%r15,4){1to8},%zmm0,%zmm21
  401ea0:	04 
  401ea1:	62 e2 fd 58 b8 74 1e 	vfmadd231pd 0x20(%rsi,%rbx,1){1to8},%zmm0,%zmm22
  401ea8:	04 
  401ea9:	62 e2 fd 58 b8 7c 46 	vfmadd231pd 0x20(%rsi,%rax,2){1to8},%zmm0,%zmm23
  401eb0:	04 
  401eb1:	62 22 fd 58 b8 44 1e 	vfmadd231pd 0x20(%rsi,%r11,1){1to8},%zmm0,%zmm24
  401eb8:	04 
  401eb9:	62 22 fd 58 b8 4c fe 	vfmadd231pd 0x20(%rsi,%r15,8){1to8},%zmm0,%zmm25
  401ec0:	04 
  401ec1:	62 42 fd 58 b8 52 04 	vfmadd231pd 0x20(%r10){1to8},%zmm0,%zmm26
  401ec8:	62 02 fd 58 b8 5c 3a 	vfmadd231pd 0x20(%r10,%r15,1){1to8},%zmm0,%zmm27
  401ecf:	04 
  401ed0:	62 02 fd 58 b8 64 7a 	vfmadd231pd 0x20(%r10,%r15,2){1to8},%zmm0,%zmm28
  401ed7:	04 
  401ed8:	62 42 fd 58 b8 6c 02 	vfmadd231pd 0x20(%r10,%rax,1){1to8},%zmm0,%zmm29
  401edf:	04 
  401ee0:	62 02 fd 58 b8 74 ba 	vfmadd231pd 0x20(%r10,%r15,4){1to8},%zmm0,%zmm30
  401ee7:	04 
  401ee8:	62 42 fd 58 b8 7c 1a 	vfmadd231pd 0x20(%r10,%rbx,1){1to8},%zmm0,%zmm31
  401eef:	04 
  401ef0:	62 f1 fd 48 28 47 1e 	vmovapd 0x780(%rdi),%zmm0
  401ef7:	62 e2 f5 58 b8 4e 05 	vfmadd231pd 0x28(%rsi){1to8},%zmm1,%zmm17
  401efe:	62 a2 f5 58 b8 54 3e 	vfmadd231pd 0x28(%rsi,%r15,1){1to8},%zmm1,%zmm18
  401f05:	05 
  401f06:	62 a2 f5 58 b8 5c 7e 	vfmadd231pd 0x28(%rsi,%r15,2){1to8},%zmm1,%zmm19
  401f0d:	05 
  401f0e:	62 e2 f5 58 b8 64 06 	vfmadd231pd 0x28(%rsi,%rax,1){1to8},%zmm1,%zmm20
  401f15:	05 
  401f16:	62 a2 f5 58 b8 6c be 	vfmadd231pd 0x28(%rsi,%r15,4){1to8},%zmm1,%zmm21
  401f1d:	05 
  401f1e:	62 e2 f5 58 b8 74 1e 	vfmadd231pd 0x28(%rsi,%rbx,1){1to8},%zmm1,%zmm22
  401f25:	05 
  401f26:	62 e2 f5 58 b8 7c 46 	vfmadd231pd 0x28(%rsi,%rax,2){1to8},%zmm1,%zmm23
  401f2d:	05 
  401f2e:	62 22 f5 58 b8 44 1e 	vfmadd231pd 0x28(%rsi,%r11,1){1to8},%zmm1,%zmm24
  401f35:	05 
  401f36:	62 22 f5 58 b8 4c fe 	vfmadd231pd 0x28(%rsi,%r15,8){1to8},%zmm1,%zmm25
  401f3d:	05 
  401f3e:	62 42 f5 58 b8 52 05 	vfmadd231pd 0x28(%r10){1to8},%zmm1,%zmm26
  401f45:	62 02 f5 58 b8 5c 3a 	vfmadd231pd 0x28(%r10,%r15,1){1to8},%zmm1,%zmm27
  401f4c:	05 
  401f4d:	62 02 f5 58 b8 64 7a 	vfmadd231pd 0x28(%r10,%r15,2){1to8},%zmm1,%zmm28
  401f54:	05 
  401f55:	62 42 f5 58 b8 6c 02 	vfmadd231pd 0x28(%r10,%rax,1){1to8},%zmm1,%zmm29
  401f5c:	05 
  401f5d:	62 02 f5 58 b8 74 ba 	vfmadd231pd 0x28(%r10,%r15,4){1to8},%zmm1,%zmm30
  401f64:	05 
  401f65:	62 42 f5 58 b8 7c 1a 	vfmadd231pd 0x28(%r10,%rbx,1){1to8},%zmm1,%zmm31
  401f6c:	05 
  401f6d:	62 f1 fd 48 28 4f 23 	vmovapd 0x8c0(%rdi),%zmm1
  401f74:	62 e2 fd 58 b8 4e 06 	vfmadd231pd 0x30(%rsi){1to8},%zmm0,%zmm17
  401f7b:	62 a2 fd 58 b8 54 3e 	vfmadd231pd 0x30(%rsi,%r15,1){1to8},%zmm0,%zmm18
  401f82:	06 
  401f83:	62 a2 fd 58 b8 5c 7e 	vfmadd231pd 0x30(%rsi,%r15,2){1to8},%zmm0,%zmm19
  401f8a:	06 
  401f8b:	62 e2 fd 58 b8 64 06 	vfmadd231pd 0x30(%rsi,%rax,1){1to8},%zmm0,%zmm20
  401f92:	06 
  401f93:	62 a2 fd 58 b8 6c be 	vfmadd231pd 0x30(%rsi,%r15,4){1to8},%zmm0,%zmm21
  401f9a:	06 
  401f9b:	62 e2 fd 58 b8 74 1e 	vfmadd231pd 0x30(%rsi,%rbx,1){1to8},%zmm0,%zmm22
  401fa2:	06 
  401fa3:	62 e2 fd 58 b8 7c 46 	vfmadd231pd 0x30(%rsi,%rax,2){1to8},%zmm0,%zmm23
  401faa:	06 
  401fab:	62 22 fd 58 b8 44 1e 	vfmadd231pd 0x30(%rsi,%r11,1){1to8},%zmm0,%zmm24
  401fb2:	06 
  401fb3:	62 22 fd 58 b8 4c fe 	vfmadd231pd 0x30(%rsi,%r15,8){1to8},%zmm0,%zmm25
  401fba:	06 
  401fbb:	62 42 fd 58 b8 52 06 	vfmadd231pd 0x30(%r10){1to8},%zmm0,%zmm26
  401fc2:	62 02 fd 58 b8 5c 3a 	vfmadd231pd 0x30(%r10,%r15,1){1to8},%zmm0,%zmm27
  401fc9:	06 
  401fca:	62 02 fd 58 b8 64 7a 	vfmadd231pd 0x30(%r10,%r15,2){1to8},%zmm0,%zmm28
  401fd1:	06 
  401fd2:	62 42 fd 58 b8 6c 02 	vfmadd231pd 0x30(%r10,%rax,1){1to8},%zmm0,%zmm29
  401fd9:	06 
  401fda:	62 02 fd 58 b8 74 ba 	vfmadd231pd 0x30(%r10,%r15,4){1to8},%zmm0,%zmm30
  401fe1:	06 
  401fe2:	62 42 fd 58 b8 7c 1a 	vfmadd231pd 0x30(%r10,%rbx,1){1to8},%zmm0,%zmm31
  401fe9:	06 
  401fea:	62 f1 fd 48 28 47 28 	vmovapd 0xa00(%rdi),%zmm0
  401ff1:	62 e2 f5 58 b8 4e 07 	vfmadd231pd 0x38(%rsi){1to8},%zmm1,%zmm17
  401ff8:	62 a2 f5 58 b8 54 3e 	vfmadd231pd 0x38(%rsi,%r15,1){1to8},%zmm1,%zmm18
  401fff:	07 
  402000:	62 a2 f5 58 b8 5c 7e 	vfmadd231pd 0x38(%rsi,%r15,2){1to8},%zmm1,%zmm19
  402007:	07 
  402008:	62 e2 f5 58 b8 64 06 	vfmadd231pd 0x38(%rsi,%rax,1){1to8},%zmm1,%zmm20
  40200f:	07 
  402010:	62 a2 f5 58 b8 6c be 	vfmadd231pd 0x38(%rsi,%r15,4){1to8},%zmm1,%zmm21
  402017:	07 
  402018:	62 e2 f5 58 b8 74 1e 	vfmadd231pd 0x38(%rsi,%rbx,1){1to8},%zmm1,%zmm22
  40201f:	07 
  402020:	62 e2 f5 58 b8 7c 46 	vfmadd231pd 0x38(%rsi,%rax,2){1to8},%zmm1,%zmm23
  402027:	07 
  402028:	62 22 f5 58 b8 44 1e 	vfmadd231pd 0x38(%rsi,%r11,1){1to8},%zmm1,%zmm24
  40202f:	07 
  402030:	62 22 f5 58 b8 4c fe 	vfmadd231pd 0x38(%rsi,%r15,8){1to8},%zmm1,%zmm25
  402037:	07 
  402038:	62 42 f5 58 b8 52 07 	vfmadd231pd 0x38(%r10){1to8},%zmm1,%zmm26
  40203f:	62 02 f5 58 b8 5c 3a 	vfmadd231pd 0x38(%r10,%r15,1){1to8},%zmm1,%zmm27
  402046:	07 
  402047:	62 02 f5 58 b8 64 7a 	vfmadd231pd 0x38(%r10,%r15,2){1to8},%zmm1,%zmm28
  40204e:	07 
  40204f:	62 42 f5 58 b8 6c 02 	vfmadd231pd 0x38(%r10,%rax,1){1to8},%zmm1,%zmm29
  402056:	07 
  402057:	62 02 f5 58 b8 74 ba 	vfmadd231pd 0x38(%r10,%r15,4){1to8},%zmm1,%zmm30
  40205e:	07 
  40205f:	62 42 f5 58 b8 7c 1a 	vfmadd231pd 0x38(%r10,%rbx,1){1to8},%zmm1,%zmm31
  402066:	07 
  402067:	62 e2 fd 58 b8 4e 08 	vfmadd231pd 0x40(%rsi){1to8},%zmm0,%zmm17
  40206e:	62 a2 fd 58 b8 54 3e 	vfmadd231pd 0x40(%rsi,%r15,1){1to8},%zmm0,%zmm18
  402075:	08 
  402076:	62 a2 fd 58 b8 5c 7e 	vfmadd231pd 0x40(%rsi,%r15,2){1to8},%zmm0,%zmm19
  40207d:	08 
  40207e:	62 e2 fd 58 b8 64 06 	vfmadd231pd 0x40(%rsi,%rax,1){1to8},%zmm0,%zmm20
  402085:	08 
  402086:	62 a2 fd 58 b8 6c be 	vfmadd231pd 0x40(%rsi,%r15,4){1to8},%zmm0,%zmm21
  40208d:	08 
  40208e:	62 e2 fd 58 b8 74 1e 	vfmadd231pd 0x40(%rsi,%rbx,1){1to8},%zmm0,%zmm22
  402095:	08 
  402096:	62 e2 fd 58 b8 7c 46 	vfmadd231pd 0x40(%rsi,%rax,2){1to8},%zmm0,%zmm23
  40209d:	08 
  40209e:	62 22 fd 58 b8 44 1e 	vfmadd231pd 0x40(%rsi,%r11,1){1to8},%zmm0,%zmm24
  4020a5:	08 
  4020a6:	62 22 fd 58 b8 4c fe 	vfmadd231pd 0x40(%rsi,%r15,8){1to8},%zmm0,%zmm25
  4020ad:	08 
  4020ae:	62 42 fd 58 b8 52 08 	vfmadd231pd 0x40(%r10){1to8},%zmm0,%zmm26
  4020b5:	62 02 fd 58 b8 5c 3a 	vfmadd231pd 0x40(%r10,%r15,1){1to8},%zmm0,%zmm27
  4020bc:	08 
  4020bd:	62 02 fd 58 b8 64 7a 	vfmadd231pd 0x40(%r10,%r15,2){1to8},%zmm0,%zmm28
  4020c4:	08 
  4020c5:	62 42 fd 58 b8 6c 02 	vfmadd231pd 0x40(%r10,%rax,1){1to8},%zmm0,%zmm29
  4020cc:	08 
  4020cd:	62 02 fd 58 b8 74 ba 	vfmadd231pd 0x40(%r10,%r15,4){1to8},%zmm0,%zmm30
  4020d4:	08 
  4020d5:	62 42 fd 58 b8 7c 1a 	vfmadd231pd 0x40(%r10,%rbx,1){1to8},%zmm0,%zmm31
  4020dc:	08 
  4020dd:	62 e1 fd 48 29 0a    	vmovapd %zmm17,(%rdx)
  4020e3:	62 e1 fd 48 29 52 05 	vmovapd %zmm18,0x140(%rdx)
  4020ea:	62 e1 fd 48 29 5a 0a 	vmovapd %zmm19,0x280(%rdx)
  4020f1:	62 e1 fd 48 29 62 0f 	vmovapd %zmm20,0x3c0(%rdx)
  4020f8:	62 e1 fd 48 29 6a 14 	vmovapd %zmm21,0x500(%rdx)
  4020ff:	62 e1 fd 48 29 72 19 	vmovapd %zmm22,0x640(%rdx)
  402106:	62 e1 fd 48 29 7a 1e 	vmovapd %zmm23,0x780(%rdx)
  40210d:	62 61 fd 48 29 42 23 	vmovapd %zmm24,0x8c0(%rdx)
  402114:	62 61 fd 48 29 4a 28 	vmovapd %zmm25,0xa00(%rdx)
  40211b:	62 61 fd 48 29 52 2d 	vmovapd %zmm26,0xb40(%rdx)
  402122:	62 61 fd 48 29 5a 32 	vmovapd %zmm27,0xc80(%rdx)
  402129:	62 61 fd 48 29 62 37 	vmovapd %zmm28,0xdc0(%rdx)
  402130:	62 61 fd 48 29 6a 3c 	vmovapd %zmm29,0xf00(%rdx)
  402137:	62 61 fd 48 29 72 41 	vmovapd %zmm30,0x1040(%rdx)
  40213e:	62 61 fd 48 29 7a 46 	vmovapd %zmm31,0x1180(%rdx)
  402145:	48 83 c2 40          	add    $0x40,%rdx
  402149:	48 83 c7 40          	add    $0x40,%rdi
  40214d:	49 83 fc 28          	cmp    $0x28,%r12
  402151:	0f 8c 9f fa ff ff    	jl     401bf6 <_Z7libxsmmPKdS0_Pd+0x51>
  402157:	48 8b 5c 24 f0       	mov    -0x10(%rsp),%rbx
  40215c:	4c 8b 64 24 e8       	mov    -0x18(%rsp),%r12
  402161:	4c 8b 6c 24 e0       	mov    -0x20(%rsp),%r13
  402166:	4c 8b 74 24 d8       	mov    -0x28(%rsp),%r14
  40216b:	4c 8b 7c 24 d0       	mov    -0x30(%rsp),%r15
  402170:	c3                   	retq   

0000000000402171 <_Z13assert_equalsRK6MatrixS1_>:
  402171:	48 83 ec 38          	sub    $0x38,%rsp
  402175:	4c 89 74 24 20       	mov    %r14,0x20(%rsp)
  40217a:	48 89 6c 24 08       	mov    %rbp,0x8(%rsp)
  40217f:	48 89 5c 24 10       	mov    %rbx,0x10(%rsp)
  402184:	4c 89 7c 24 18       	mov    %r15,0x18(%rsp)
  402189:	4c 89 6c 24 28       	mov    %r13,0x28(%rsp)
  40218e:	49 89 fe             	mov    %rdi,%r14
  402191:	49 89 f7             	mov    %rsi,%r15
  402194:	41 8b 46 08          	mov    0x8(%r14),%eax
  402198:	45 31 ed             	xor    %r13d,%r13d
  40219b:	41 83 c5 01          	add    $0x1,%r13d
  40219f:	41 3b 47 08          	cmp    0x8(%r15),%eax
  4021a3:	74 44                	je     4021e9 <_Z13assert_equalsRK6MatrixS1_+0x78>
  4021a5:	bf a0 a2 60 00       	mov    $0x60a2a0,%edi
  4021aa:	be 24 6d 40 00       	mov    $0x406d24,%esi
  4021af:	45 31 ed             	xor    %r13d,%r13d
  4021b2:	e8 89 f4 ff ff       	callq  401640 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  4021b7:	48 89 c7             	mov    %rax,%rdi
  4021ba:	41 8b 76 08          	mov    0x8(%r14),%esi
  4021be:	e8 fd f5 ff ff       	callq  4017c0 <_ZNSolsEi@plt>
  4021c3:	48 89 c7             	mov    %rax,%rdi
  4021c6:	be 3c 6d 40 00       	mov    $0x406d3c,%esi
  4021cb:	e8 70 f4 ff ff       	callq  401640 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  4021d0:	48 89 c7             	mov    %rax,%rdi
  4021d3:	41 8b 77 08          	mov    0x8(%r15),%esi
  4021d7:	e8 e4 f5 ff ff       	callq  4017c0 <_ZNSolsEi@plt>
  4021dc:	48 89 c7             	mov    %rax,%rdi
  4021df:	be c0 15 40 00       	mov    $0x4015c0,%esi
  4021e4:	e8 87 f4 ff ff       	callq  401670 <_ZNSolsEPFRSoS_E@plt>
  4021e9:	41 8b 46 0c          	mov    0xc(%r14),%eax
  4021ed:	41 3b 47 0c          	cmp    0xc(%r15),%eax
  4021f1:	74 52                	je     402245 <_Z13assert_equalsRK6MatrixS1_+0xd4>
  4021f3:	bf a0 a2 60 00       	mov    $0x60a2a0,%edi
  4021f8:	be 44 6d 40 00       	mov    $0x406d44,%esi
  4021fd:	45 31 ed             	xor    %r13d,%r13d
  402200:	e8 3b f4 ff ff       	callq  401640 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  402205:	48 89 c7             	mov    %rax,%rdi
  402208:	41 8b 76 0c          	mov    0xc(%r14),%esi
  40220c:	e8 af f5 ff ff       	callq  4017c0 <_ZNSolsEi@plt>
  402211:	48 89 c7             	mov    %rax,%rdi
  402214:	be 3c 6d 40 00       	mov    $0x406d3c,%esi
  402219:	e8 22 f4 ff ff       	callq  401640 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  40221e:	48 89 c7             	mov    %rax,%rdi
  402221:	41 8b 77 0c          	mov    0xc(%r15),%esi
  402225:	e8 96 f5 ff ff       	callq  4017c0 <_ZNSolsEi@plt>
  40222a:	48 89 c7             	mov    %rax,%rdi
  40222d:	be c0 15 40 00       	mov    $0x4015c0,%esi
  402232:	e8 39 f4 ff ff       	callq  401670 <_ZNSolsEPFRSoS_E@plt>
  402237:	41 8b 4e 08          	mov    0x8(%r14),%ecx
  40223b:	85 c9                	test   %ecx,%ecx
  40223d:	7e 74                	jle    4022b3 <_Z13assert_equalsRK6MatrixS1_+0x142>
  40223f:	41 8b 46 0c          	mov    0xc(%r14),%eax
  402243:	eb 08                	jmp    40224d <_Z13assert_equalsRK6MatrixS1_+0xdc>
  402245:	41 8b 4e 08          	mov    0x8(%r14),%ecx
  402249:	85 c9                	test   %ecx,%ecx
  40224b:	7e 5d                	jle    4022aa <_Z13assert_equalsRK6MatrixS1_+0x139>
  40224d:	31 ed                	xor    %ebp,%ebp
  40224f:	31 db                	xor    %ebx,%ebx
  402251:	85 c0                	test   %eax,%eax
  402253:	7e 4e                	jle    4022a3 <_Z13assert_equalsRK6MatrixS1_+0x132>
  402255:	49 8b 06             	mov    (%r14),%rax
  402258:	4c 89 f7             	mov    %r14,%rdi
  40225b:	89 ee                	mov    %ebp,%esi
  40225d:	89 da                	mov    %ebx,%edx
  40225f:	ff 10                	callq  *(%rax)
  402261:	c5 fb 11 04 24       	vmovsd %xmm0,(%rsp)
  402266:	49 8b 07             	mov    (%r15),%rax
  402269:	4c 89 ff             	mov    %r15,%rdi
  40226c:	89 ee                	mov    %ebp,%esi
  40226e:	89 da                	mov    %ebx,%edx
  402270:	ff 10                	callq  *(%rax)
  402272:	c5 f9 28 c8          	vmovapd %xmm0,%xmm1
  402276:	c5 fb 10 04 24       	vmovsd (%rsp),%xmm0
  40227b:	c5 fb 5c c1          	vsubsd %xmm1,%xmm0,%xmm0
  40227f:	e8 dc 3a 00 00       	callq  405d60 <fabs>
  402284:	c5 fb c2 0d 2b 4a 00 	vcmpngtsd 0x4a2b(%rip),%xmm0,%xmm1        # 406cb8 <_IO_stdin_used+0x18>
  40228b:	00 0a 
  40228d:	c5 f9 7e c8          	vmovd  %xmm1,%eax
  402291:	83 c3 01             	add    $0x1,%ebx
  402294:	41 21 c5             	and    %eax,%r13d
  402297:	41 8b 46 0c          	mov    0xc(%r14),%eax
  40229b:	39 c3                	cmp    %eax,%ebx
  40229d:	7c b6                	jl     402255 <_Z13assert_equalsRK6MatrixS1_+0xe4>
  40229f:	41 8b 4e 08          	mov    0x8(%r14),%ecx
  4022a3:	83 c5 01             	add    $0x1,%ebp
  4022a6:	39 cd                	cmp    %ecx,%ebp
  4022a8:	7c a5                	jl     40224f <_Z13assert_equalsRK6MatrixS1_+0xde>
  4022aa:	45 85 ed             	test   %r13d,%r13d
  4022ad:	0f 85 8f 00 00 00    	jne    402342 <_Z13assert_equalsRK6MatrixS1_+0x1d1>
  4022b3:	bf a0 a2 60 00       	mov    $0x60a2a0,%edi
  4022b8:	be c0 15 40 00       	mov    $0x4015c0,%esi
  4022bd:	e8 ae f3 ff ff       	callq  401670 <_ZNSolsEPFRSoS_E@plt>
  4022c2:	48 89 c7             	mov    %rax,%rdi
  4022c5:	be c0 15 40 00       	mov    $0x4015c0,%esi
  4022ca:	e8 a1 f3 ff ff       	callq  401670 <_ZNSolsEPFRSoS_E@plt>
  4022cf:	48 89 c7             	mov    %rax,%rdi
  4022d2:	be 60 6d 40 00       	mov    $0x406d60,%esi
  4022d7:	e8 64 f3 ff ff       	callq  401640 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  4022dc:	48 89 c7             	mov    %rax,%rdi
  4022df:	be c0 15 40 00       	mov    $0x4015c0,%esi
  4022e4:	e8 87 f3 ff ff       	callq  401670 <_ZNSolsEPFRSoS_E@plt>
  4022e9:	48 89 c7             	mov    %rax,%rdi
  4022ec:	4c 89 f6             	mov    %r14,%rsi
  4022ef:	e8 6c 00 00 00       	callq  402360 <_ZlsRSoRK6Matrix>
  4022f4:	bf a0 a2 60 00       	mov    $0x60a2a0,%edi
  4022f9:	be c0 15 40 00       	mov    $0x4015c0,%esi
  4022fe:	e8 6d f3 ff ff       	callq  401670 <_ZNSolsEPFRSoS_E@plt>
  402303:	48 89 c7             	mov    %rax,%rdi
  402306:	be c0 15 40 00       	mov    $0x4015c0,%esi
  40230b:	e8 60 f3 ff ff       	callq  401670 <_ZNSolsEPFRSoS_E@plt>
  402310:	48 89 c7             	mov    %rax,%rdi
  402313:	be 6c 6d 40 00       	mov    $0x406d6c,%esi
  402318:	e8 23 f3 ff ff       	callq  401640 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  40231d:	48 89 c7             	mov    %rax,%rdi
  402320:	be c0 15 40 00       	mov    $0x4015c0,%esi
  402325:	e8 46 f3 ff ff       	callq  401670 <_ZNSolsEPFRSoS_E@plt>
  40232a:	48 89 c7             	mov    %rax,%rdi
  40232d:	4c 89 fe             	mov    %r15,%rsi
  402330:	e8 2b 00 00 00       	callq  402360 <_ZlsRSoRK6Matrix>
  402335:	48 89 c7             	mov    %rax,%rdi
  402338:	be c0 15 40 00       	mov    $0x4015c0,%esi
  40233d:	e8 2e f3 ff ff       	callq  401670 <_ZNSolsEPFRSoS_E@plt>
  402342:	48 8b 5c 24 10       	mov    0x10(%rsp),%rbx
  402347:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
  40234c:	4c 8b 6c 24 28       	mov    0x28(%rsp),%r13
  402351:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
  402356:	4c 8b 7c 24 18       	mov    0x18(%rsp),%r15
  40235b:	48 83 c4 38          	add    $0x38,%rsp
  40235f:	c3                   	retq   

0000000000402360 <_ZlsRSoRK6Matrix>:
  402360:	48 83 ec 28          	sub    $0x28,%rsp
  402364:	4c 89 3c 24          	mov    %r15,(%rsp)
  402368:	4c 89 74 24 08       	mov    %r14,0x8(%rsp)
  40236d:	4c 89 6c 24 10       	mov    %r13,0x10(%rsp)
  402372:	4c 89 64 24 18       	mov    %r12,0x18(%rsp)
  402377:	49 89 f7             	mov    %rsi,%r15
  40237a:	49 89 fe             	mov    %rdi,%r14
  40237d:	45 31 ed             	xor    %r13d,%r13d
  402380:	41 83 7f 08 00       	cmpl   $0x0,0x8(%r15)
  402385:	7e 71                	jle    4023f8 <_ZlsRSoRK6Matrix+0x98>
  402387:	45 31 e4             	xor    %r12d,%r12d
  40238a:	41 83 7f 0c 00       	cmpl   $0x0,0xc(%r15)
  40238f:	7e 50                	jle    4023e1 <_ZlsRSoRK6Matrix+0x81>
  402391:	4c 89 f7             	mov    %r14,%rdi
  402394:	be 8c 5c 40 00       	mov    $0x405c8c,%esi
  402399:	e8 e2 f1 ff ff       	callq  401580 <_ZNSolsEPFRSt8ios_baseS0_E@plt>
  40239e:	6a 0a                	pushq  $0xa
  4023a0:	5e                   	pop    %rsi
  4023a1:	48 89 c7             	mov    %rax,%rdi
  4023a4:	e8 07 f3 ff ff       	callq  4016b0 <_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St5_Setw@plt>
  4023a9:	6a 02                	pushq  $0x2
  4023ab:	5e                   	pop    %rsi
  4023ac:	48 89 c7             	mov    %rax,%rdi
  4023af:	e8 ac f3 ff ff       	callq  401760 <_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St13_Setprecision@plt>
  4023b4:	49 8b 0f             	mov    (%r15),%rcx
  4023b7:	4c 89 ff             	mov    %r15,%rdi
  4023ba:	44 89 ee             	mov    %r13d,%esi
  4023bd:	44 89 e2             	mov    %r12d,%edx
  4023c0:	ff 11                	callq  *(%rcx)
  4023c2:	4c 89 f7             	mov    %r14,%rdi
  4023c5:	e8 36 f4 ff ff       	callq  401800 <_ZNSolsEd@plt>
  4023ca:	48 89 c7             	mov    %rax,%rdi
  4023cd:	be 9c 6d 40 00       	mov    $0x406d9c,%esi
  4023d2:	e8 69 f2 ff ff       	callq  401640 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  4023d7:	41 83 c4 01          	add    $0x1,%r12d
  4023db:	45 3b 67 0c          	cmp    0xc(%r15),%r12d
  4023df:	7c b0                	jl     402391 <_ZlsRSoRK6Matrix+0x31>
  4023e1:	4c 89 f7             	mov    %r14,%rdi
  4023e4:	be c0 15 40 00       	mov    $0x4015c0,%esi
  4023e9:	e8 82 f2 ff ff       	callq  401670 <_ZNSolsEPFRSoS_E@plt>
  4023ee:	41 83 c5 01          	add    $0x1,%r13d
  4023f2:	45 3b 6f 08          	cmp    0x8(%r15),%r13d
  4023f6:	7c 8f                	jl     402387 <_ZlsRSoRK6Matrix+0x27>
  4023f8:	4c 89 f0             	mov    %r14,%rax
  4023fb:	4c 8b 64 24 18       	mov    0x18(%rsp),%r12
  402400:	4c 8b 6c 24 10       	mov    0x10(%rsp),%r13
  402405:	4c 8b 74 24 08       	mov    0x8(%rsp),%r14
  40240a:	4c 8b 3c 24          	mov    (%rsp),%r15
  40240e:	48 83 c4 28          	add    $0x28,%rsp
  402412:	c3                   	retq   

0000000000402413 <_Z4gemmRK6MatrixS1_RS_>:
  402413:	48 83 ec 58          	sub    $0x58,%rsp
  402417:	4c 89 7c 24 38       	mov    %r15,0x38(%rsp)
  40241c:	48 89 6c 24 28       	mov    %rbp,0x28(%rsp)
  402421:	48 89 5c 24 30       	mov    %rbx,0x30(%rsp)
  402426:	4c 89 74 24 40       	mov    %r14,0x40(%rsp)
  40242b:	4c 89 6c 24 48       	mov    %r13,0x48(%rsp)
  402430:	4c 89 64 24 50       	mov    %r12,0x50(%rsp)
  402435:	49 89 d7             	mov    %rdx,%r15
  402438:	49 89 fd             	mov    %rdi,%r13
  40243b:	45 8b 47 0c          	mov    0xc(%r15),%r8d
  40243f:	44 89 44 24 20       	mov    %r8d,0x20(%rsp)
  402444:	41 8b 47 08          	mov    0x8(%r15),%eax
  402448:	89 04 24             	mov    %eax,(%rsp)
  40244b:	41 8b 4d 0c          	mov    0xc(%r13),%ecx
  40244f:	89 4c 24 08          	mov    %ecx,0x8(%rsp)
  402453:	49 89 f6             	mov    %rsi,%r14
  402456:	45 31 e4             	xor    %r12d,%r12d
  402459:	45 85 c0             	test   %r8d,%r8d
  40245c:	7e 7f                	jle    4024dd <_Z4gemmRK6MatrixS1_RS_+0xca>
  40245e:	31 db                	xor    %ebx,%ebx
  402460:	83 7c 24 08 00       	cmpl   $0x0,0x8(%rsp)
  402465:	7e 6b                	jle    4024d2 <_Z4gemmRK6MatrixS1_RS_+0xbf>
  402467:	31 ed                	xor    %ebp,%ebp
  402469:	83 3c 24 00          	cmpl   $0x0,(%rsp)
  40246d:	7e 5a                	jle    4024c9 <_Z4gemmRK6MatrixS1_RS_+0xb6>
  40246f:	49 8b 07             	mov    (%r15),%rax
  402472:	4c 89 ff             	mov    %r15,%rdi
  402475:	89 ee                	mov    %ebp,%esi
  402477:	44 89 e2             	mov    %r12d,%edx
  40247a:	ff 10                	callq  *(%rax)
  40247c:	c5 fb 11 44 24 18    	vmovsd %xmm0,0x18(%rsp)
  402482:	49 8b 45 00          	mov    0x0(%r13),%rax
  402486:	4c 89 ef             	mov    %r13,%rdi
  402489:	89 ee                	mov    %ebp,%esi
  40248b:	89 da                	mov    %ebx,%edx
  40248d:	ff 10                	callq  *(%rax)
  40248f:	c5 fb 11 44 24 10    	vmovsd %xmm0,0x10(%rsp)
  402495:	49 8b 06             	mov    (%r14),%rax
  402498:	4c 89 f7             	mov    %r14,%rdi
  40249b:	89 de                	mov    %ebx,%esi
  40249d:	44 89 e2             	mov    %r12d,%edx
  4024a0:	ff 10                	callq  *(%rax)
  4024a2:	c5 fb 10 4c 24 18    	vmovsd 0x18(%rsp),%xmm1
  4024a8:	49 8b 07             	mov    (%r15),%rax
  4024ab:	4c 89 ff             	mov    %r15,%rdi
  4024ae:	89 ee                	mov    %ebp,%esi
  4024b0:	44 89 e2             	mov    %r12d,%edx
  4024b3:	c4 e2 f9 b9 4c 24 10 	vfmadd231sd 0x10(%rsp),%xmm0,%xmm1
  4024ba:	c5 f9 28 c1          	vmovapd %xmm1,%xmm0
  4024be:	ff 50 08             	callq  *0x8(%rax)
  4024c1:	83 c5 01             	add    $0x1,%ebp
  4024c4:	3b 2c 24             	cmp    (%rsp),%ebp
  4024c7:	7c a6                	jl     40246f <_Z4gemmRK6MatrixS1_RS_+0x5c>
  4024c9:	83 c3 01             	add    $0x1,%ebx
  4024cc:	3b 5c 24 08          	cmp    0x8(%rsp),%ebx
  4024d0:	7c 95                	jl     402467 <_Z4gemmRK6MatrixS1_RS_+0x54>
  4024d2:	41 83 c4 01          	add    $0x1,%r12d
  4024d6:	44 3b 64 24 20       	cmp    0x20(%rsp),%r12d
  4024db:	7c 81                	jl     40245e <_Z4gemmRK6MatrixS1_RS_+0x4b>
  4024dd:	48 8b 5c 24 30       	mov    0x30(%rsp),%rbx
  4024e2:	48 8b 6c 24 28       	mov    0x28(%rsp),%rbp
  4024e7:	4c 8b 64 24 50       	mov    0x50(%rsp),%r12
  4024ec:	4c 8b 6c 24 48       	mov    0x48(%rsp),%r13
  4024f1:	4c 8b 74 24 40       	mov    0x40(%rsp),%r14
  4024f6:	4c 8b 7c 24 38       	mov    0x38(%rsp),%r15
  4024fb:	48 83 c4 58          	add    $0x58,%rsp
  4024ff:	c3                   	retq   

0000000000402500 <_Z9microsecs8timespecS_>:
  402500:	48 29 fa             	sub    %rdi,%rdx
  402503:	48 69 c2 00 ca 9a 3b 	imul   $0x3b9aca00,%rdx,%rax
  40250a:	48 01 c8             	add    %rcx,%rax
  40250d:	48 29 f0             	sub    %rsi,%rax
  402510:	62 e1 ff 00 2a c0    	vcvtsi2sd %rax,%xmm16,%xmm16
  402516:	62 f1 ff 00 59 05 a0 	vmulsd 0x47a0(%rip),%xmm16,%xmm0        # 406cc0 <_IO_stdin_used+0x20>
  40251d:	47 00 00 
  402520:	c3                   	retq   

0000000000402521 <_Z11test_breuerv>:
  402521:	48 81 ec c8 00 00 00 	sub    $0xc8,%rsp
  402528:	48 89 ac 24 b8 00 00 	mov    %rbp,0xb8(%rsp)
  40252f:	00 
  402530:	4c 89 a4 24 b0 00 00 	mov    %r12,0xb0(%rsp)
  402537:	00 
  402538:	41 bc 28 a2 60 00    	mov    $0x60a228,%r12d
  40253e:	6a 28                	pushq  $0x28
  402540:	5d                   	pop    %rbp
  402541:	48 8d 04 24          	lea    (%rsp),%rax
  402545:	4c 89 20             	mov    %r12,(%rax)
  402548:	48 8d 78 18          	lea    0x18(%rax),%rdi
  40254c:	89 68 10             	mov    %ebp,0x10(%rax)
  40254f:	6a 40                	pushq  $0x40
  402551:	5e                   	pop    %rsi
  402552:	89 68 08             	mov    %ebp,0x8(%rax)
  402555:	ba 40 0b 00 00       	mov    $0xb40,%edx
  40255a:	c7 40 0c 09 00 00 00 	movl   $0x9,0xc(%rax)
  402561:	e8 7a f0 ff ff       	callq  4015e0 <posix_memalign@plt>
  402566:	48 8d 3c 24          	lea    (%rsp),%rdi
  40256a:	e8 ad 33 00 00       	callq  40591c <_ZN11DenseMatrix4zeroEv>
  40256f:	48 8d 3c 24          	lea    (%rsp),%rdi
  402573:	e8 00 34 00 00       	callq  405978 <_ZN11DenseMatrix6randomEv>
  402578:	48 8d 7c 24 60       	lea    0x60(%rsp),%rdi
  40257d:	be c8 6c 40 00       	mov    $0x406cc8,%esi
  402582:	e8 75 34 00 00       	callq  4059fc <_ZN11DenseMatrixC1EPKc>
  402587:	48 8d bc 24 80 00 00 	lea    0x80(%rsp),%rdi
  40258e:	00 
  40258f:	48 8d 77 e0          	lea    -0x20(%rdi),%rsi
  402593:	e8 79 05 00 00       	callq  402b11 <_Z6to_cscRK6Matrix>
  402598:	48 8d 44 24 40       	lea    0x40(%rsp),%rax
  40259d:	4c 89 20             	mov    %r12,(%rax)
  4025a0:	48 8d 78 18          	lea    0x18(%rax),%rdi
  4025a4:	89 68 10             	mov    %ebp,0x10(%rax)
  4025a7:	6a 40                	pushq  $0x40
  4025a9:	5e                   	pop    %rsi
  4025aa:	89 68 08             	mov    %ebp,0x8(%rax)
  4025ad:	ba c0 12 00 00       	mov    $0x12c0,%edx
  4025b2:	c7 40 0c 0f 00 00 00 	movl   $0xf,0xc(%rax)
  4025b9:	e8 22 f0 ff ff       	callq  4015e0 <posix_memalign@plt>
  4025be:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  4025c3:	e8 54 33 00 00       	callq  40591c <_ZN11DenseMatrix4zeroEv>
  4025c8:	48 8d 44 24 20       	lea    0x20(%rsp),%rax
  4025cd:	4c 89 20             	mov    %r12,(%rax)
  4025d0:	48 8d 78 18          	lea    0x18(%rax),%rdi
  4025d4:	89 68 10             	mov    %ebp,0x10(%rax)
  4025d7:	6a 40                	pushq  $0x40
  4025d9:	5e                   	pop    %rsi
  4025da:	89 68 08             	mov    %ebp,0x8(%rax)
  4025dd:	ba c0 12 00 00       	mov    $0x12c0,%edx
  4025e2:	c7 40 0c 0f 00 00 00 	movl   $0xf,0xc(%rax)
  4025e9:	e8 f2 ef ff ff       	callq  4015e0 <posix_memalign@plt>
  4025ee:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
  4025f3:	e8 24 33 00 00       	callq  40591c <_ZN11DenseMatrix4zeroEv>
  4025f8:	48 8d 3c 24          	lea    (%rsp),%rdi
  4025fc:	48 8d 77 60          	lea    0x60(%rdi),%rsi
  402600:	48 8d 56 e0          	lea    -0x20(%rsi),%rdx
  402604:	e8 0a fe ff ff       	callq  402413 <_Z4gemmRK6MatrixS1_RS_>
  402609:	48 8d bc 24 80 00 00 	lea    0x80(%rsp),%rdi
  402610:	00 
  402611:	e8 94 36 00 00       	callq  405caa <_ZNKSt10unique_ptrI12SparseMatrixSt14default_deleteIS0_EEptEv>
  402616:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
  40261b:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
  402620:	48 8b 70 18          	mov    0x18(%rax),%rsi
  402624:	e8 6e 01 00 00       	callq  402797 <_Z6breuerPKdS0_Pd>
  402629:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  40262e:	48 8d 77 e0          	lea    -0x20(%rdi),%rsi
  402632:	e8 3a fb ff ff       	callq  402171 <_Z13assert_equalsRK6MatrixS1_>
  402637:	31 ff                	xor    %edi,%edi
  402639:	83 c7 01             	add    $0x1,%edi
  40263c:	48 8d b4 24 90 00 00 	lea    0x90(%rsp),%rsi
  402643:	00 
  402644:	e8 c7 f0 ff ff       	callq  401710 <clock_gettime@plt>
  402649:	31 ed                	xor    %ebp,%ebp
  40264b:	48 8d bc 24 80 00 00 	lea    0x80(%rsp),%rdi
  402652:	00 
  402653:	e8 52 36 00 00       	callq  405caa <_ZNKSt10unique_ptrI12SparseMatrixSt14default_deleteIS0_EEptEv>
  402658:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
  40265d:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
  402662:	48 8b 70 18          	mov    0x18(%rax),%rsi
  402666:	e8 2c 01 00 00       	callq  402797 <_Z6breuerPKdS0_Pd>
  40266b:	83 c5 01             	add    $0x1,%ebp
  40266e:	81 fd b8 0b 00 00    	cmp    $0xbb8,%ebp
  402674:	7c d5                	jl     40264b <_Z11test_breuerv+0x12a>
  402676:	31 ff                	xor    %edi,%edi
  402678:	83 c7 01             	add    $0x1,%edi
  40267b:	48 8d b4 24 a0 00 00 	lea    0xa0(%rsp),%rsi
  402682:	00 
  402683:	e8 88 f0 ff ff       	callq  401710 <clock_gettime@plt>
  402688:	bf a0 a2 60 00       	mov    $0x60a2a0,%edi
  40268d:	be 74 6d 40 00       	mov    $0x406d74,%esi
  402692:	e8 a9 ef ff ff       	callq  401640 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  402697:	48 89 c5             	mov    %rax,%rbp
  40269a:	48 8d 84 24 90 00 00 	lea    0x90(%rsp),%rax
  4026a1:	00 
  4026a2:	48 8d 8c 24 a0 00 00 	lea    0xa0(%rsp),%rcx
  4026a9:	00 
  4026aa:	48 8b 38             	mov    (%rax),%rdi
  4026ad:	48 8b 70 08          	mov    0x8(%rax),%rsi
  4026b1:	48 8b 11             	mov    (%rcx),%rdx
  4026b4:	48 8b 49 08          	mov    0x8(%rcx),%rcx
  4026b8:	e8 43 fe ff ff       	callq  402500 <_Z9microsecs8timespecS_>
  4026bd:	c5 fb 5e 05 e3 45 00 	vdivsd 0x45e3(%rip),%xmm0,%xmm0        # 406ca8 <_IO_stdin_used+0x8>
  4026c4:	00 
  4026c5:	48 89 ef             	mov    %rbp,%rdi
  4026c8:	e8 33 f1 ff ff       	callq  401800 <_ZNSolsEd@plt>
  4026cd:	48 89 c7             	mov    %rax,%rdi
  4026d0:	be c0 15 40 00       	mov    $0x4015c0,%esi
  4026d5:	e8 96 ef ff ff       	callq  401670 <_ZNSolsEPFRSoS_E@plt>
  4026da:	48 8b 7c 24 38       	mov    0x38(%rsp),%rdi
  4026df:	4c 89 64 24 20       	mov    %r12,0x20(%rsp)
  4026e4:	e8 e7 ef ff ff       	callq  4016d0 <free@plt>
  4026e9:	48 8b 7c 24 58       	mov    0x58(%rsp),%rdi
  4026ee:	4c 89 64 24 40       	mov    %r12,0x40(%rsp)
  4026f3:	e8 d8 ef ff ff       	callq  4016d0 <free@plt>
  4026f8:	48 8d bc 24 80 00 00 	lea    0x80(%rsp),%rdi
  4026ff:	00 
  402700:	e8 b1 35 00 00       	callq  405cb6 <_ZNSt10unique_ptrI12SparseMatrixSt14default_deleteIS0_EED1Ev>
  402705:	48 8b 7c 24 78       	mov    0x78(%rsp),%rdi
  40270a:	4c 89 64 24 60       	mov    %r12,0x60(%rsp)
  40270f:	e8 bc ef ff ff       	callq  4016d0 <free@plt>
  402714:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
  402719:	4c 89 24 24          	mov    %r12,(%rsp)
  40271d:	e8 ae ef ff ff       	callq  4016d0 <free@plt>
  402722:	48 8b ac 24 b8 00 00 	mov    0xb8(%rsp),%rbp
  402729:	00 
  40272a:	4c 8b a4 24 b0 00 00 	mov    0xb0(%rsp),%r12
  402731:	00 
  402732:	48 81 c4 c8 00 00 00 	add    $0xc8,%rsp
  402739:	c3                   	retq   
  40273a:	48 89 84 24 88 00 00 	mov    %rax,0x88(%rsp)
  402741:	00 
  402742:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
  402747:	e8 18 32 00 00       	callq  405964 <_ZN11DenseMatrixD1Ev>
  40274c:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  402751:	e8 0e 32 00 00       	callq  405964 <_ZN11DenseMatrixD1Ev>
  402756:	48 8d bc 24 80 00 00 	lea    0x80(%rsp),%rdi
  40275d:	00 
  40275e:	e8 53 35 00 00       	callq  405cb6 <_ZNSt10unique_ptrI12SparseMatrixSt14default_deleteIS0_EED1Ev>
  402763:	48 8d 7c 24 60       	lea    0x60(%rsp),%rdi
  402768:	e8 f7 31 00 00       	callq  405964 <_ZN11DenseMatrixD1Ev>
  40276d:	48 8d 3c 24          	lea    (%rsp),%rdi
  402771:	e8 ee 31 00 00       	callq  405964 <_ZN11DenseMatrixD1Ev>
  402776:	48 8b bc 24 88 00 00 	mov    0x88(%rsp),%rdi
  40277d:	00 
  40277e:	e8 4d f0 ff ff       	callq  4017d0 <_Unwind_Resume@plt>
  402783:	48 89 84 24 88 00 00 	mov    %rax,0x88(%rsp)
  40278a:	00 
  40278b:	eb d6                	jmp    402763 <_Z11test_breuerv+0x242>
  40278d:	48 89 84 24 88 00 00 	mov    %rax,0x88(%rsp)
  402794:	00 
  402795:	eb d6                	jmp    40276d <_Z11test_breuerv+0x24c>

0000000000402797 <_Z6breuerPKdS0_Pd>:
  402797:	4c 89 7c 24 d8       	mov    %r15,-0x28(%rsp)
  40279c:	4c 89 74 24 e0       	mov    %r14,-0x20(%rsp)
  4027a1:	4c 89 6c 24 e8       	mov    %r13,-0x18(%rsp)
  4027a6:	4c 89 64 24 f0       	mov    %r12,-0x10(%rsp)
  4027ab:	45 31 d2             	xor    %r10d,%r10d
  4027ae:	49 89 f5             	mov    %rsi,%r13
  4027b1:	49 89 fc             	mov    %rdi,%r12
  4027b4:	45 8d 9a f0 00 00 00 	lea    0xf0(%r10),%r11d
  4027bb:	c4 81 7b 10 1c dc    	vmovsd (%r12,%r11,8),%xmm3
  4027c1:	c4 c1 7b 10 45 00    	vmovsd 0x0(%r13),%xmm0
  4027c7:	45 8d 8a 18 01 00 00 	lea    0x118(%r10),%r9d
  4027ce:	c4 a2 f9 a9 1c d2    	vfmadd213sd (%rdx,%r10,8),%xmm0,%xmm3
  4027d4:	c4 a1 7b 11 1c d2    	vmovsd %xmm3,(%rdx,%r10,8)
  4027da:	c4 c1 7b 10 4d 08    	vmovsd 0x8(%r13),%xmm1
  4027e0:	4f 8d 34 cc          	lea    (%r12,%r9,8),%r14
  4027e4:	45 8d 82 40 01 00 00 	lea    0x140(%r10),%r8d
  4027eb:	c4 c2 f1 b9 1e       	vfmadd231sd (%r14),%xmm1,%xmm3
  4027f0:	c4 a1 7b 11 1c d2    	vmovsd %xmm3,(%rdx,%r10,8)
  4027f6:	c4 c1 7b 10 55 10    	vmovsd 0x10(%r13),%xmm2
  4027fc:	4f 8d 3c c4          	lea    (%r12,%r8,8),%r15
  402800:	41 8d 7a 28          	lea    0x28(%r10),%edi
  402804:	c4 c2 e9 b9 1f       	vfmadd231sd (%r15),%xmm2,%xmm3
  402809:	c4 a1 7b 11 1c d2    	vmovsd %xmm3,(%rdx,%r10,8)
  40280f:	c4 81 7b 10 3c dc    	vmovsd (%r12,%r11,8),%xmm7
  402815:	c4 c1 7b 10 65 18    	vmovsd 0x18(%r13),%xmm4
  40281b:	41 8d 72 50          	lea    0x50(%r10),%esi
  40281f:	41 8d 4a 78          	lea    0x78(%r10),%ecx
  402823:	41 8d 82 a0 00 00 00 	lea    0xa0(%r10),%eax
  40282a:	c4 e2 d9 a9 3c fa    	vfmadd213sd (%rdx,%rdi,8),%xmm4,%xmm7
  402830:	c5 fb 11 3c fa       	vmovsd %xmm7,(%rdx,%rdi,8)
  402835:	c4 c1 7b 10 6d 20    	vmovsd 0x20(%r13),%xmm5
  40283b:	c4 c2 d1 b9 3e       	vfmadd231sd (%r14),%xmm5,%xmm7
  402840:	c5 fb 11 3c fa       	vmovsd %xmm7,(%rdx,%rdi,8)
  402845:	c4 c1 7b 10 75 28    	vmovsd 0x28(%r13),%xmm6
  40284b:	c4 c2 c9 b9 3f       	vfmadd231sd (%r15),%xmm6,%xmm7
  402850:	c5 fb 11 3c fa       	vmovsd %xmm7,(%rdx,%rdi,8)
  402855:	c4 01 7b 10 1c dc    	vmovsd (%r12,%r11,8),%xmm11
  40285b:	c4 41 7b 10 45 30    	vmovsd 0x30(%r13),%xmm8
  402861:	c4 62 b9 a9 1c f2    	vfmadd213sd (%rdx,%rsi,8),%xmm8,%xmm11
  402867:	c5 7b 11 1c f2       	vmovsd %xmm11,(%rdx,%rsi,8)
  40286c:	c4 41 7b 10 4d 38    	vmovsd 0x38(%r13),%xmm9
  402872:	c4 42 b1 b9 1e       	vfmadd231sd (%r14),%xmm9,%xmm11
  402877:	c5 7b 11 1c f2       	vmovsd %xmm11,(%rdx,%rsi,8)
  40287c:	c4 41 7b 10 55 40    	vmovsd 0x40(%r13),%xmm10
  402882:	c4 42 a9 b9 1f       	vfmadd231sd (%r15),%xmm10,%xmm11
  402887:	c5 7b 11 1c f2       	vmovsd %xmm11,(%rdx,%rsi,8)
  40288c:	c4 01 7b 10 34 dc    	vmovsd (%r12,%r11,8),%xmm14
  402892:	c4 41 7b 10 65 48    	vmovsd 0x48(%r13),%xmm12
  402898:	c4 62 99 a9 34 ca    	vfmadd213sd (%rdx,%rcx,8),%xmm12,%xmm14
  40289e:	c5 7b 11 34 ca       	vmovsd %xmm14,(%rdx,%rcx,8)
  4028a3:	c4 41 7b 10 6d 50    	vmovsd 0x50(%r13),%xmm13
  4028a9:	c4 42 91 b9 36       	vfmadd231sd (%r14),%xmm13,%xmm14
  4028ae:	c5 7b 11 34 ca       	vmovsd %xmm14,(%rdx,%rcx,8)
  4028b3:	62 c1 ff 08 10 0e    	vmovsd (%r14),%xmm17
  4028b9:	c4 41 7b 10 7d 58    	vmovsd 0x58(%r13),%xmm15
  4028bf:	45 8d b2 c8 00 00 00 	lea    0xc8(%r10),%r14d
  4028c6:	62 e2 85 08 a9 0c c2 	vfmadd213sd (%rdx,%rax,8),%xmm15,%xmm17
  4028cd:	62 e1 ff 08 11 0c c2 	vmovsd %xmm17,(%rdx,%rax,8)
  4028d4:	62 c1 ff 08 10 45 0c 	vmovsd 0x60(%r13),%xmm16
  4028db:	62 c2 fd 00 b9 0f    	vfmadd231sd (%r15),%xmm16,%xmm17
  4028e1:	62 e1 ff 08 11 0c c2 	vmovsd %xmm17,(%rdx,%rax,8)
  4028e8:	62 81 ff 08 10 24 dc 	vmovsd (%r12,%r11,8),%xmm20
  4028ef:	62 c1 ff 08 10 55 0d 	vmovsd 0x68(%r13),%xmm18
  4028f6:	62 a2 ed 00 a9 24 f2 	vfmadd213sd (%rdx,%r14,8),%xmm18,%xmm20
  4028fd:	62 a1 ff 08 11 24 f2 	vmovsd %xmm20,(%rdx,%r14,8)
  402904:	62 c1 ff 08 10 5d 0e 	vmovsd 0x70(%r13),%xmm19
  40290b:	62 c2 e5 00 b9 27    	vfmadd231sd (%r15),%xmm19,%xmm20
  402911:	62 a1 ff 08 11 24 f2 	vmovsd %xmm20,(%rdx,%r14,8)
  402918:	62 01 ff 08 10 04 d4 	vmovsd (%r12,%r10,8),%xmm24
  40291f:	62 c1 ff 08 10 6d 0f 	vmovsd 0x78(%r13),%xmm21
  402926:	45 8d ba 68 01 00 00 	lea    0x168(%r10),%r15d
  40292d:	62 22 d5 00 a9 04 da 	vfmadd213sd (%rdx,%r11,8),%xmm21,%xmm24
  402934:	62 21 ff 08 11 04 da 	vmovsd %xmm24,(%rdx,%r11,8)
  40293b:	62 c1 ff 08 10 75 10 	vmovsd 0x80(%r13),%xmm22
  402942:	62 42 cd 00 b9 04 cc 	vfmadd231sd (%r12,%rcx,8),%xmm22,%xmm24
  402949:	62 21 ff 08 11 04 da 	vmovsd %xmm24,(%rdx,%r11,8)
  402950:	62 c1 ff 08 10 7d 11 	vmovsd 0x88(%r13),%xmm23
  402957:	62 02 c5 00 b9 04 f4 	vfmadd231sd (%r12,%r14,8),%xmm23,%xmm24
  40295e:	62 21 ff 08 11 04 da 	vmovsd %xmm24,(%rdx,%r11,8)
  402965:	62 41 ff 08 10 24 fc 	vmovsd (%r12,%rdi,8),%xmm28
  40296c:	49 8d bd 90 00 00 00 	lea    0x90(%r13),%rdi
  402973:	62 61 ff 08 10 0f    	vmovsd (%rdi),%xmm25
  402979:	62 22 b5 00 a9 24 ca 	vfmadd213sd (%rdx,%r9,8),%xmm25,%xmm28
  402980:	62 21 ff 08 11 24 ca 	vmovsd %xmm28,(%rdx,%r9,8)
  402987:	62 61 ff 08 10 57 01 	vmovsd 0x8(%rdi),%xmm26
  40298e:	62 42 ad 00 b9 24 cc 	vfmadd231sd (%r12,%rcx,8),%xmm26,%xmm28
  402995:	62 21 ff 08 11 24 ca 	vmovsd %xmm28,(%rdx,%r9,8)
  40299c:	62 61 ff 08 10 5f 02 	vmovsd 0x10(%rdi),%xmm27
  4029a3:	62 42 a5 00 b9 24 c4 	vfmadd231sd (%r12,%rax,8),%xmm27,%xmm28
  4029aa:	62 21 ff 08 11 24 ca 	vmovsd %xmm28,(%rdx,%r9,8)
  4029b1:	c4 c1 7b 10 04 f4    	vmovsd (%r12,%rsi,8),%xmm0
  4029b7:	62 61 ff 08 10 6f 03 	vmovsd 0x18(%rdi),%xmm29
  4029be:	4a 8d 34 c2          	lea    (%rdx,%r8,8),%rsi
  4029c2:	62 f2 95 00 a9 06    	vfmadd213sd (%rsi),%xmm29,%xmm0
  4029c8:	c5 fb 11 06          	vmovsd %xmm0,(%rsi)
  4029cc:	62 61 ff 08 10 77 04 	vmovsd 0x20(%rdi),%xmm30
  4029d3:	62 d2 8d 00 b9 04 cc 	vfmadd231sd (%r12,%rcx,8),%xmm30,%xmm0
  4029da:	c5 fb 11 06          	vmovsd %xmm0,(%rsi)
  4029de:	49 8d 8d b8 00 00 00 	lea    0xb8(%r13),%rcx
  4029e5:	62 61 ff 08 10 39    	vmovsd (%rcx),%xmm31
  4029eb:	41 8d ba 08 02 00 00 	lea    0x208(%r10),%edi
  4029f2:	62 d2 85 00 b9 04 c4 	vfmadd231sd (%r12,%rax,8),%xmm31,%xmm0
  4029f9:	c5 fb 11 06          	vmovsd %xmm0,(%rsi)
  4029fd:	62 61 ff 08 10 69 01 	vmovsd 0x8(%rcx),%xmm29
  402a04:	62 92 95 00 b9 04 f4 	vfmadd231sd (%r12,%r14,8),%xmm29,%xmm0
  402a0b:	c5 fb 11 06          	vmovsd %xmm0,(%rsi)
  402a0f:	c4 81 7b 10 14 dc    	vmovsd (%r12,%r11,8),%xmm2
  402a15:	c5 fb 10 49 10       	vmovsd 0x10(%rcx),%xmm1
  402a1a:	41 8d 82 90 01 00 00 	lea    0x190(%r10),%eax
  402a21:	41 8d b2 e0 01 00 00 	lea    0x1e0(%r10),%esi
  402a28:	c4 a2 f1 a9 14 fa    	vfmadd213sd (%rdx,%r15,8),%xmm1,%xmm2
  402a2e:	c4 a1 7b 11 14 fa    	vmovsd %xmm2,(%rdx,%r15,8)
  402a34:	c4 81 7b 10 24 cc    	vmovsd (%r12,%r9,8),%xmm4
  402a3a:	c5 fb 10 59 18       	vmovsd 0x18(%rcx),%xmm3
  402a3f:	41 8d 8a b8 01 00 00 	lea    0x1b8(%r10),%ecx
  402a46:	c4 e2 e1 a9 24 c2    	vfmadd213sd (%rdx,%rax,8),%xmm3,%xmm4
  402a4c:	c5 fb 11 24 c2       	vmovsd %xmm4,(%rdx,%rax,8)
  402a51:	49 8d 85 d8 00 00 00 	lea    0xd8(%r13),%rax
  402a58:	c4 81 7b 10 34 c4    	vmovsd (%r12,%r8,8),%xmm6
  402a5e:	c5 fb 10 28          	vmovsd (%rax),%xmm5
  402a62:	c4 e2 d1 a9 34 ca    	vfmadd213sd (%rdx,%rcx,8),%xmm5,%xmm6
  402a68:	c5 fb 11 34 ca       	vmovsd %xmm6,(%rdx,%rcx,8)
  402a6d:	c4 01 7b 10 0c dc    	vmovsd (%r12,%r11,8),%xmm9
  402a73:	c5 fb 10 78 08       	vmovsd 0x8(%rax),%xmm7
  402a78:	c4 62 c1 a9 0c f2    	vfmadd213sd (%rdx,%rsi,8),%xmm7,%xmm9
  402a7e:	c5 7b 11 0c f2       	vmovsd %xmm9,(%rdx,%rsi,8)
  402a83:	c5 7b 10 40 10       	vmovsd 0x10(%rax),%xmm8
  402a88:	c4 02 b9 b9 0c cc    	vfmadd231sd (%r12,%r9,8),%xmm8,%xmm9
  402a8e:	c5 7b 11 0c f2       	vmovsd %xmm9,(%rdx,%rsi,8)
  402a93:	49 8d b5 f0 00 00 00 	lea    0xf0(%r13),%rsi
  402a9a:	c4 01 7b 10 24 cc    	vmovsd (%r12,%r9,8),%xmm12
  402aa0:	c5 7b 10 16          	vmovsd (%rsi),%xmm10
  402aa4:	45 8d 8a 30 02 00 00 	lea    0x230(%r10),%r9d
  402aab:	41 83 c2 01          	add    $0x1,%r10d
  402aaf:	c4 62 a9 a9 24 fa    	vfmadd213sd (%rdx,%rdi,8),%xmm10,%xmm12
  402ab5:	c5 7b 11 24 fa       	vmovsd %xmm12,(%rdx,%rdi,8)
  402aba:	c5 7b 10 5e 08       	vmovsd 0x8(%rsi),%xmm11
  402abf:	c4 02 a1 b9 24 c4    	vfmadd231sd (%r12,%r8,8),%xmm11,%xmm12
  402ac5:	c5 7b 11 24 fa       	vmovsd %xmm12,(%rdx,%rdi,8)
  402aca:	c4 01 7b 10 3c dc    	vmovsd (%r12,%r11,8),%xmm15
  402ad0:	c5 7b 10 6e 10       	vmovsd 0x10(%rsi),%xmm13
  402ad5:	c4 22 91 a9 3c ca    	vfmadd213sd (%rdx,%r9,8),%xmm13,%xmm15
  402adb:	c4 21 7b 11 3c ca    	vmovsd %xmm15,(%rdx,%r9,8)
  402ae1:	c5 7b 10 76 18       	vmovsd 0x18(%rsi),%xmm14
  402ae6:	c4 02 89 b9 3c c4    	vfmadd231sd (%r12,%r8,8),%xmm14,%xmm15
  402aec:	c4 21 7b 11 3c ca    	vmovsd %xmm15,(%rdx,%r9,8)
  402af2:	41 83 fa 28          	cmp    $0x28,%r10d
  402af6:	0f 82 b8 fc ff ff    	jb     4027b4 <_Z6breuerPKdS0_Pd+0x1d>
  402afc:	4c 8b 64 24 f0       	mov    -0x10(%rsp),%r12
  402b01:	4c 8b 6c 24 e8       	mov    -0x18(%rsp),%r13
  402b06:	4c 8b 74 24 e0       	mov    -0x20(%rsp),%r14
  402b0b:	4c 8b 7c 24 d8       	mov    -0x28(%rsp),%r15
  402b10:	c3                   	retq   

0000000000402b11 <_Z6to_cscRK6Matrix>:
  402b11:	48 83 ec 28          	sub    $0x28,%rsp
  402b15:	48 89 5c 24 20       	mov    %rbx,0x20(%rsp)
  402b1a:	48 89 6c 24 18       	mov    %rbp,0x18(%rsp)
  402b1f:	4c 89 6c 24 08       	mov    %r13,0x8(%rsp)
  402b24:	4c 89 64 24 10       	mov    %r12,0x10(%rsp)
  402b29:	48 89 fb             	mov    %rdi,%rbx
  402b2c:	6a 30                	pushq  $0x30
  402b2e:	5f                   	pop    %rdi
  402b2f:	48 89 f5             	mov    %rsi,%rbp
  402b32:	e8 29 eb ff ff       	callq  401660 <_Znwm@plt>
  402b37:	49 89 c5             	mov    %rax,%r13
  402b3a:	8b 55 08             	mov    0x8(%rbp),%edx
  402b3d:	41 c7 45 10 00 00 00 	movl   $0x0,0x10(%r13)
  402b44:	00 
  402b45:	8b 4d 0c             	mov    0xc(%rbp),%ecx
  402b48:	41 89 55 08          	mov    %edx,0x8(%r13)
  402b4c:	41 89 d4             	mov    %edx,%r12d
  402b4f:	41 89 4d 0c          	mov    %ecx,0xc(%r13)
  402b53:	44 0f af e1          	imul   %ecx,%r12d
  402b57:	48 8d 05 82 76 20 00 	lea    0x207682(%rip),%rax        # 60a1e0 <_ZTV12SparseMatrix+0x10>
  402b5e:	49 89 45 00          	mov    %rax,0x0(%r13)
  402b62:	4d 63 e4             	movslq %r12d,%r12
  402b65:	45 89 65 14          	mov    %r12d,0x14(%r13)
  402b69:	4a 8d 3c e5 00 00 00 	lea    0x0(,%r12,8),%rdi
  402b70:	00 
  402b71:	e8 ea e9 ff ff       	callq  401560 <_Znam@plt>
  402b76:	49 c1 e4 02          	shl    $0x2,%r12
  402b7a:	49 89 45 18          	mov    %rax,0x18(%r13)
  402b7e:	4c 89 e7             	mov    %r12,%rdi
  402b81:	e8 da e9 ff ff       	callq  401560 <_Znam@plt>
  402b86:	4c 89 e7             	mov    %r12,%rdi
  402b89:	49 89 45 20          	mov    %rax,0x20(%r13)
  402b8d:	e8 ce e9 ff ff       	callq  401560 <_Znam@plt>
  402b92:	48 89 df             	mov    %rbx,%rdi
  402b95:	49 89 45 28          	mov    %rax,0x28(%r13)
  402b99:	4c 89 ee             	mov    %r13,%rsi
  402b9c:	e8 83 31 00 00       	callq  405d24 <_ZNSt10unique_ptrI12SparseMatrixSt14default_deleteIS0_EEC1EPS0_>
  402ba1:	8b 4d 0c             	mov    0xc(%rbp),%ecx
  402ba4:	45 31 e4             	xor    %r12d,%r12d
  402ba7:	85 c9                	test   %ecx,%ecx
  402ba9:	7e 4c                	jle    402bf7 <_Z6to_cscRK6Matrix+0xe6>
  402bab:	8b 45 08             	mov    0x8(%rbp),%eax
  402bae:	45 31 ed             	xor    %r13d,%r13d
  402bb1:	85 c0                	test   %eax,%eax
  402bb3:	7e 39                	jle    402bee <_Z6to_cscRK6Matrix+0xdd>
  402bb5:	48 8b 45 00          	mov    0x0(%rbp),%rax
  402bb9:	48 89 ef             	mov    %rbp,%rdi
  402bbc:	44 89 ee             	mov    %r13d,%esi
  402bbf:	44 89 e2             	mov    %r12d,%edx
  402bc2:	ff 10                	callq  *(%rax)
  402bc4:	c5 fb 11 04 24       	vmovsd %xmm0,(%rsp)
  402bc9:	e8 92 31 00 00       	callq  405d60 <fabs>
  402bce:	62 f1 ff 08 c2 05 df 	vcmpgtsd 0x40df(%rip),%xmm0,%k0        # 406cb8 <_IO_stdin_used+0x18>
  402bd5:	40 00 00 0e 
  402bd9:	c5 f8 98 c0          	kortestw %k0,%k0
  402bdd:	75 31                	jne    402c10 <_Z6to_cscRK6Matrix+0xff>
  402bdf:	8b 45 08             	mov    0x8(%rbp),%eax
  402be2:	41 83 c5 01          	add    $0x1,%r13d
  402be6:	41 39 c5             	cmp    %eax,%r13d
  402be9:	7c ca                	jl     402bb5 <_Z6to_cscRK6Matrix+0xa4>
  402beb:	8b 4d 0c             	mov    0xc(%rbp),%ecx
  402bee:	41 83 c4 01          	add    $0x1,%r12d
  402bf2:	41 39 cc             	cmp    %ecx,%r12d
  402bf5:	7c b7                	jl     402bae <_Z6to_cscRK6Matrix+0x9d>
  402bf7:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
  402bfc:	48 8b 6c 24 18       	mov    0x18(%rsp),%rbp
  402c01:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
  402c06:	4c 8b 6c 24 08       	mov    0x8(%rsp),%r13
  402c0b:	48 83 c4 28          	add    $0x28,%rsp
  402c0f:	c3                   	retq   
  402c10:	48 89 df             	mov    %rbx,%rdi
  402c13:	e8 92 30 00 00       	callq  405caa <_ZNKSt10unique_ptrI12SparseMatrixSt14default_deleteIS0_EEptEv>
  402c18:	48 8b 08             	mov    (%rax),%rcx
  402c1b:	48 89 c7             	mov    %rax,%rdi
  402c1e:	44 89 ee             	mov    %r13d,%esi
  402c21:	c5 fb 10 04 24       	vmovsd (%rsp),%xmm0
  402c26:	44 89 e2             	mov    %r12d,%edx
  402c29:	ff 51 08             	callq  *0x8(%rcx)
  402c2c:	eb b1                	jmp    402bdf <_Z6to_cscRK6Matrix+0xce>
  402c2e:	48 89 04 24          	mov    %rax,(%rsp)
  402c32:	48 89 df             	mov    %rbx,%rdi
  402c35:	e8 7c 30 00 00       	callq  405cb6 <_ZNSt10unique_ptrI12SparseMatrixSt14default_deleteIS0_EED1Ev>
  402c3a:	eb 0c                	jmp    402c48 <_Z6to_cscRK6Matrix+0x137>
  402c3c:	48 89 04 24          	mov    %rax,(%rsp)
  402c40:	4c 89 ef             	mov    %r13,%rdi
  402c43:	e8 e8 e9 ff ff       	callq  401630 <_ZdlPv@plt>
  402c48:	48 8b 3c 24          	mov    (%rsp),%rdi
  402c4c:	e8 7f eb ff ff       	callq  4017d0 <_Unwind_Resume@plt>

0000000000402c51 <_Z15test_unrolled_8v>:
  402c51:	48 81 ec c8 00 00 00 	sub    $0xc8,%rsp
  402c58:	48 89 ac 24 b8 00 00 	mov    %rbp,0xb8(%rsp)
  402c5f:	00 
  402c60:	4c 89 a4 24 b0 00 00 	mov    %r12,0xb0(%rsp)
  402c67:	00 
  402c68:	41 bc 28 a2 60 00    	mov    $0x60a228,%r12d
  402c6e:	6a 28                	pushq  $0x28
  402c70:	5d                   	pop    %rbp
  402c71:	48 8d 04 24          	lea    (%rsp),%rax
  402c75:	4c 89 20             	mov    %r12,(%rax)
  402c78:	48 8d 78 18          	lea    0x18(%rax),%rdi
  402c7c:	89 68 10             	mov    %ebp,0x10(%rax)
  402c7f:	6a 40                	pushq  $0x40
  402c81:	5e                   	pop    %rsi
  402c82:	89 68 08             	mov    %ebp,0x8(%rax)
  402c85:	ba 40 0b 00 00       	mov    $0xb40,%edx
  402c8a:	c7 40 0c 09 00 00 00 	movl   $0x9,0xc(%rax)
  402c91:	e8 4a e9 ff ff       	callq  4015e0 <posix_memalign@plt>
  402c96:	48 8d 3c 24          	lea    (%rsp),%rdi
  402c9a:	e8 7d 2c 00 00       	callq  40591c <_ZN11DenseMatrix4zeroEv>
  402c9f:	48 8d 3c 24          	lea    (%rsp),%rdi
  402ca3:	e8 d0 2c 00 00       	callq  405978 <_ZN11DenseMatrix6randomEv>
  402ca8:	48 8d 7c 24 60       	lea    0x60(%rsp),%rdi
  402cad:	be c8 6c 40 00       	mov    $0x406cc8,%esi
  402cb2:	e8 45 2d 00 00       	callq  4059fc <_ZN11DenseMatrixC1EPKc>
  402cb7:	48 8d bc 24 80 00 00 	lea    0x80(%rsp),%rdi
  402cbe:	00 
  402cbf:	6a 03                	pushq  $0x3
  402cc1:	5a                   	pop    %rdx
  402cc2:	48 8d 77 e0          	lea    -0x20(%rdi),%rsi
  402cc6:	89 d1                	mov    %edx,%ecx
  402cc8:	e8 96 04 00 00       	callq  403163 <_Z7to_bcscRK6Matrixii>
  402ccd:	48 8d 44 24 40       	lea    0x40(%rsp),%rax
  402cd2:	4c 89 20             	mov    %r12,(%rax)
  402cd5:	48 8d 78 18          	lea    0x18(%rax),%rdi
  402cd9:	89 68 10             	mov    %ebp,0x10(%rax)
  402cdc:	6a 40                	pushq  $0x40
  402cde:	5e                   	pop    %rsi
  402cdf:	89 68 08             	mov    %ebp,0x8(%rax)
  402ce2:	ba c0 12 00 00       	mov    $0x12c0,%edx
  402ce7:	c7 40 0c 0f 00 00 00 	movl   $0xf,0xc(%rax)
  402cee:	e8 ed e8 ff ff       	callq  4015e0 <posix_memalign@plt>
  402cf3:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  402cf8:	e8 1f 2c 00 00       	callq  40591c <_ZN11DenseMatrix4zeroEv>
  402cfd:	48 8d 44 24 20       	lea    0x20(%rsp),%rax
  402d02:	4c 89 20             	mov    %r12,(%rax)
  402d05:	48 8d 78 18          	lea    0x18(%rax),%rdi
  402d09:	89 68 10             	mov    %ebp,0x10(%rax)
  402d0c:	6a 40                	pushq  $0x40
  402d0e:	5e                   	pop    %rsi
  402d0f:	89 68 08             	mov    %ebp,0x8(%rax)
  402d12:	ba c0 12 00 00       	mov    $0x12c0,%edx
  402d17:	c7 40 0c 0f 00 00 00 	movl   $0xf,0xc(%rax)
  402d1e:	e8 bd e8 ff ff       	callq  4015e0 <posix_memalign@plt>
  402d23:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
  402d28:	e8 ef 2b 00 00       	callq  40591c <_ZN11DenseMatrix4zeroEv>
  402d2d:	48 8d 3c 24          	lea    (%rsp),%rdi
  402d31:	48 8d 77 60          	lea    0x60(%rdi),%rsi
  402d35:	48 8d 56 e0          	lea    -0x20(%rsi),%rdx
  402d39:	e8 d5 f6 ff ff       	callq  402413 <_Z4gemmRK6MatrixS1_RS_>
  402d3e:	48 8d bc 24 80 00 00 	lea    0x80(%rsp),%rdi
  402d45:	00 
  402d46:	e8 5f 2f 00 00       	callq  405caa <_ZNKSt10unique_ptrI12SparseMatrixSt14default_deleteIS0_EEptEv>
  402d4b:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
  402d50:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
  402d55:	48 8b 70 18          	mov    0x18(%rax),%rsi
  402d59:	e8 6e 01 00 00       	callq  402ecc <_Z10unrolled_8PKdS0_Pd>
  402d5e:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  402d63:	48 8d 77 e0          	lea    -0x20(%rdi),%rsi
  402d67:	e8 05 f4 ff ff       	callq  402171 <_Z13assert_equalsRK6MatrixS1_>
  402d6c:	31 ff                	xor    %edi,%edi
  402d6e:	83 c7 01             	add    $0x1,%edi
  402d71:	48 8d b4 24 90 00 00 	lea    0x90(%rsp),%rsi
  402d78:	00 
  402d79:	e8 92 e9 ff ff       	callq  401710 <clock_gettime@plt>
  402d7e:	31 ed                	xor    %ebp,%ebp
  402d80:	48 8d bc 24 80 00 00 	lea    0x80(%rsp),%rdi
  402d87:	00 
  402d88:	e8 1d 2f 00 00       	callq  405caa <_ZNKSt10unique_ptrI12SparseMatrixSt14default_deleteIS0_EEptEv>
  402d8d:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
  402d92:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
  402d97:	48 8b 70 18          	mov    0x18(%rax),%rsi
  402d9b:	e8 2c 01 00 00       	callq  402ecc <_Z10unrolled_8PKdS0_Pd>
  402da0:	83 c5 01             	add    $0x1,%ebp
  402da3:	81 fd b8 0b 00 00    	cmp    $0xbb8,%ebp
  402da9:	7c d5                	jl     402d80 <_Z15test_unrolled_8v+0x12f>
  402dab:	31 ff                	xor    %edi,%edi
  402dad:	83 c7 01             	add    $0x1,%edi
  402db0:	48 8d b4 24 a0 00 00 	lea    0xa0(%rsp),%rsi
  402db7:	00 
  402db8:	e8 53 e9 ff ff       	callq  401710 <clock_gettime@plt>
  402dbd:	bf a0 a2 60 00       	mov    $0x60a2a0,%edi
  402dc2:	be 80 6d 40 00       	mov    $0x406d80,%esi
  402dc7:	e8 74 e8 ff ff       	callq  401640 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  402dcc:	48 89 c5             	mov    %rax,%rbp
  402dcf:	48 8d 84 24 90 00 00 	lea    0x90(%rsp),%rax
  402dd6:	00 
  402dd7:	48 8d 8c 24 a0 00 00 	lea    0xa0(%rsp),%rcx
  402dde:	00 
  402ddf:	48 8b 38             	mov    (%rax),%rdi
  402de2:	48 8b 70 08          	mov    0x8(%rax),%rsi
  402de6:	48 8b 11             	mov    (%rcx),%rdx
  402de9:	48 8b 49 08          	mov    0x8(%rcx),%rcx
  402ded:	e8 0e f7 ff ff       	callq  402500 <_Z9microsecs8timespecS_>
  402df2:	c5 fb 5e 05 ae 3e 00 	vdivsd 0x3eae(%rip),%xmm0,%xmm0        # 406ca8 <_IO_stdin_used+0x8>
  402df9:	00 
  402dfa:	48 89 ef             	mov    %rbp,%rdi
  402dfd:	e8 fe e9 ff ff       	callq  401800 <_ZNSolsEd@plt>
  402e02:	48 89 c7             	mov    %rax,%rdi
  402e05:	be c0 15 40 00       	mov    $0x4015c0,%esi
  402e0a:	e8 61 e8 ff ff       	callq  401670 <_ZNSolsEPFRSoS_E@plt>
  402e0f:	48 8b 7c 24 38       	mov    0x38(%rsp),%rdi
  402e14:	4c 89 64 24 20       	mov    %r12,0x20(%rsp)
  402e19:	e8 b2 e8 ff ff       	callq  4016d0 <free@plt>
  402e1e:	48 8b 7c 24 58       	mov    0x58(%rsp),%rdi
  402e23:	4c 89 64 24 40       	mov    %r12,0x40(%rsp)
  402e28:	e8 a3 e8 ff ff       	callq  4016d0 <free@plt>
  402e2d:	48 8d bc 24 80 00 00 	lea    0x80(%rsp),%rdi
  402e34:	00 
  402e35:	e8 7c 2e 00 00       	callq  405cb6 <_ZNSt10unique_ptrI12SparseMatrixSt14default_deleteIS0_EED1Ev>
  402e3a:	48 8b 7c 24 78       	mov    0x78(%rsp),%rdi
  402e3f:	4c 89 64 24 60       	mov    %r12,0x60(%rsp)
  402e44:	e8 87 e8 ff ff       	callq  4016d0 <free@plt>
  402e49:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
  402e4e:	4c 89 24 24          	mov    %r12,(%rsp)
  402e52:	e8 79 e8 ff ff       	callq  4016d0 <free@plt>
  402e57:	48 8b ac 24 b8 00 00 	mov    0xb8(%rsp),%rbp
  402e5e:	00 
  402e5f:	4c 8b a4 24 b0 00 00 	mov    0xb0(%rsp),%r12
  402e66:	00 
  402e67:	48 81 c4 c8 00 00 00 	add    $0xc8,%rsp
  402e6e:	c3                   	retq   
  402e6f:	48 89 84 24 88 00 00 	mov    %rax,0x88(%rsp)
  402e76:	00 
  402e77:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
  402e7c:	e8 e3 2a 00 00       	callq  405964 <_ZN11DenseMatrixD1Ev>
  402e81:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  402e86:	e8 d9 2a 00 00       	callq  405964 <_ZN11DenseMatrixD1Ev>
  402e8b:	48 8d bc 24 80 00 00 	lea    0x80(%rsp),%rdi
  402e92:	00 
  402e93:	e8 1e 2e 00 00       	callq  405cb6 <_ZNSt10unique_ptrI12SparseMatrixSt14default_deleteIS0_EED1Ev>
  402e98:	48 8d 7c 24 60       	lea    0x60(%rsp),%rdi
  402e9d:	e8 c2 2a 00 00       	callq  405964 <_ZN11DenseMatrixD1Ev>
  402ea2:	48 8d 3c 24          	lea    (%rsp),%rdi
  402ea6:	e8 b9 2a 00 00       	callq  405964 <_ZN11DenseMatrixD1Ev>
  402eab:	48 8b bc 24 88 00 00 	mov    0x88(%rsp),%rdi
  402eb2:	00 
  402eb3:	e8 18 e9 ff ff       	callq  4017d0 <_Unwind_Resume@plt>
  402eb8:	48 89 84 24 88 00 00 	mov    %rax,0x88(%rsp)
  402ebf:	00 
  402ec0:	eb d6                	jmp    402e98 <_Z15test_unrolled_8v+0x247>
  402ec2:	48 89 84 24 88 00 00 	mov    %rax,0x88(%rsp)
  402ec9:	00 
  402eca:	eb d6                	jmp    402ea2 <_Z15test_unrolled_8v+0x251>

0000000000402ecc <_Z10unrolled_8PKdS0_Pd>:
  402ecc:	4c 89 64 24 f0       	mov    %r12,-0x10(%rsp)
  402ed1:	48 89 7c 24 d8       	mov    %rdi,-0x28(%rsp)
  402ed6:	48 89 74 24 e0       	mov    %rsi,-0x20(%rsp)
  402edb:	48 89 54 24 e8       	mov    %rdx,-0x18(%rsp)
  402ee0:	48 8b 7c 24 d8       	mov    -0x28(%rsp),%rdi
  402ee5:	48 8b 74 24 e0       	mov    -0x20(%rsp),%rsi
  402eea:	48 8b 54 24 e8       	mov    -0x18(%rsp),%rdx
  402eef:	49 c7 c4 00 00 00 00 	mov    $0x0,%r12

0000000000402ef6 <LOOP_TOP_0_1>:
  402ef6:	62 61 fd 48 28 2a    	vmovapd (%rdx),%zmm29
  402efc:	62 61 fd 48 28 72 05 	vmovapd 0x140(%rdx),%zmm30
  402f03:	62 61 fd 48 28 7a 0a 	vmovapd 0x280(%rdx),%zmm31
  402f0a:	62 f1 fd 48 28 47 1e 	vmovapd 0x780(%rdi),%zmm0
  402f11:	62 f1 fd 48 28 4f 23 	vmovapd 0x8c0(%rdi),%zmm1
  402f18:	62 f1 fd 48 28 57 28 	vmovapd 0xa00(%rdi),%zmm2
  402f1f:	62 62 fd 58 b8 2e    	vfmadd231pd (%rsi){1to8},%zmm0,%zmm29
  402f25:	62 62 fd 58 b8 76 03 	vfmadd231pd 0x18(%rsi){1to8},%zmm0,%zmm30
  402f2c:	62 62 fd 58 b8 7e 06 	vfmadd231pd 0x30(%rsi){1to8},%zmm0,%zmm31
  402f33:	62 62 f5 58 b8 6e 01 	vfmadd231pd 0x8(%rsi){1to8},%zmm1,%zmm29
  402f3a:	62 62 f5 58 b8 76 04 	vfmadd231pd 0x20(%rsi){1to8},%zmm1,%zmm30
  402f41:	62 62 f5 58 b8 7e 07 	vfmadd231pd 0x38(%rsi){1to8},%zmm1,%zmm31
  402f48:	62 62 ed 58 b8 6e 02 	vfmadd231pd 0x10(%rsi){1to8},%zmm2,%zmm29
  402f4f:	62 62 ed 58 b8 76 05 	vfmadd231pd 0x28(%rsi){1to8},%zmm2,%zmm30
  402f56:	62 62 ed 58 b8 7e 08 	vfmadd231pd 0x40(%rsi){1to8},%zmm2,%zmm31
  402f5d:	62 61 fd 48 29 2a    	vmovapd %zmm29,(%rdx)
  402f63:	62 61 fd 48 29 72 05 	vmovapd %zmm30,0x140(%rdx)
  402f6a:	62 61 fd 48 29 7a 0a 	vmovapd %zmm31,0x280(%rdx)
  402f71:	48 81 c2 c0 03 00 00 	add    $0x3c0,%rdx
  402f78:	62 61 fd 48 28 2a    	vmovapd (%rdx),%zmm29
  402f7e:	62 61 fd 48 28 72 05 	vmovapd 0x140(%rdx),%zmm30
  402f85:	62 61 fd 48 28 7a 0a 	vmovapd 0x280(%rdx),%zmm31
  402f8c:	62 f1 fd 48 28 47 1e 	vmovapd 0x780(%rdi),%zmm0
  402f93:	62 f1 fd 48 28 4f 23 	vmovapd 0x8c0(%rdi),%zmm1
  402f9a:	62 f1 fd 48 28 57 28 	vmovapd 0xa00(%rdi),%zmm2
  402fa1:	62 62 fd 58 b8 6e 09 	vfmadd231pd 0x48(%rsi){1to8},%zmm0,%zmm29
  402fa8:	62 62 fd 58 b8 7e 0d 	vfmadd231pd 0x68(%rsi){1to8},%zmm0,%zmm31
  402faf:	62 62 f5 58 b8 6e 0a 	vfmadd231pd 0x50(%rsi){1to8},%zmm1,%zmm29
  402fb6:	62 62 f5 58 b8 76 0b 	vfmadd231pd 0x58(%rsi){1to8},%zmm1,%zmm30
  402fbd:	62 62 ed 58 b8 76 0c 	vfmadd231pd 0x60(%rsi){1to8},%zmm2,%zmm30
  402fc4:	62 62 ed 58 b8 7e 0e 	vfmadd231pd 0x70(%rsi){1to8},%zmm2,%zmm31
  402fcb:	62 61 fd 48 29 2a    	vmovapd %zmm29,(%rdx)
  402fd1:	62 61 fd 48 29 72 05 	vmovapd %zmm30,0x140(%rdx)
  402fd8:	62 61 fd 48 29 7a 0a 	vmovapd %zmm31,0x280(%rdx)
  402fdf:	48 81 c2 c0 03 00 00 	add    $0x3c0,%rdx
  402fe6:	62 61 fd 48 28 2a    	vmovapd (%rdx),%zmm29
  402fec:	62 61 fd 48 28 72 05 	vmovapd 0x140(%rdx),%zmm30
  402ff3:	62 61 fd 48 28 7a 0a 	vmovapd 0x280(%rdx),%zmm31
  402ffa:	62 f1 fd 48 28 07    	vmovapd (%rdi),%zmm0
  403000:	62 f1 fd 48 28 4f 05 	vmovapd 0x140(%rdi),%zmm1
  403007:	62 f1 fd 48 28 57 0a 	vmovapd 0x280(%rdi),%zmm2
  40300e:	62 62 fd 58 b8 6e 0f 	vfmadd231pd 0x78(%rsi){1to8},%zmm0,%zmm29
  403015:	62 62 f5 58 b8 76 10 	vfmadd231pd 0x80(%rsi){1to8},%zmm1,%zmm30
  40301c:	62 62 ed 58 b8 7e 11 	vfmadd231pd 0x88(%rsi){1to8},%zmm2,%zmm31
  403023:	62 f1 fd 48 28 47 0f 	vmovapd 0x3c0(%rdi),%zmm0
  40302a:	62 f1 fd 48 28 4f 14 	vmovapd 0x500(%rdi),%zmm1
  403031:	62 f1 fd 48 28 57 19 	vmovapd 0x640(%rdi),%zmm2
  403038:	62 62 fd 58 b8 6e 12 	vfmadd231pd 0x90(%rsi){1to8},%zmm0,%zmm29
  40303f:	62 62 fd 58 b8 76 14 	vfmadd231pd 0xa0(%rsi){1to8},%zmm0,%zmm30
  403046:	62 62 fd 58 b8 7e 16 	vfmadd231pd 0xb0(%rsi){1to8},%zmm0,%zmm31
  40304d:	62 62 f5 58 b8 76 15 	vfmadd231pd 0xa8(%rsi){1to8},%zmm1,%zmm30
  403054:	62 62 f5 58 b8 7e 17 	vfmadd231pd 0xb8(%rsi){1to8},%zmm1,%zmm31
  40305b:	62 62 ed 58 b8 6e 13 	vfmadd231pd 0x98(%rsi){1to8},%zmm2,%zmm29
  403062:	62 62 ed 58 b8 7e 18 	vfmadd231pd 0xc0(%rsi){1to8},%zmm2,%zmm31
  403069:	62 61 fd 48 29 2a    	vmovapd %zmm29,(%rdx)
  40306f:	62 61 fd 48 29 72 05 	vmovapd %zmm30,0x140(%rdx)
  403076:	62 61 fd 48 29 7a 0a 	vmovapd %zmm31,0x280(%rdx)
  40307d:	48 81 c2 c0 03 00 00 	add    $0x3c0,%rdx
  403084:	62 61 fd 48 28 2a    	vmovapd (%rdx),%zmm29
  40308a:	62 61 fd 48 28 72 05 	vmovapd 0x140(%rdx),%zmm30
  403091:	62 61 fd 48 28 7a 0a 	vmovapd 0x280(%rdx),%zmm31
  403098:	62 f1 fd 48 28 47 1e 	vmovapd 0x780(%rdi),%zmm0
  40309f:	62 f1 fd 48 28 4f 23 	vmovapd 0x8c0(%rdi),%zmm1
  4030a6:	62 f1 fd 48 28 57 28 	vmovapd 0xa00(%rdi),%zmm2
  4030ad:	62 62 fd 58 b8 6e 19 	vfmadd231pd 0xc8(%rsi){1to8},%zmm0,%zmm29
  4030b4:	62 62 f5 58 b8 76 1a 	vfmadd231pd 0xd0(%rsi){1to8},%zmm1,%zmm30
  4030bb:	62 62 ed 58 b8 7e 1b 	vfmadd231pd 0xd8(%rsi){1to8},%zmm2,%zmm31
  4030c2:	62 61 fd 48 29 2a    	vmovapd %zmm29,(%rdx)
  4030c8:	62 61 fd 48 29 72 05 	vmovapd %zmm30,0x140(%rdx)
  4030cf:	62 61 fd 48 29 7a 0a 	vmovapd %zmm31,0x280(%rdx)
  4030d6:	48 81 c2 c0 03 00 00 	add    $0x3c0,%rdx
  4030dd:	62 61 fd 48 28 2a    	vmovapd (%rdx),%zmm29
  4030e3:	62 61 fd 48 28 72 05 	vmovapd 0x140(%rdx),%zmm30
  4030ea:	62 61 fd 48 28 7a 0a 	vmovapd 0x280(%rdx),%zmm31
  4030f1:	62 f1 fd 48 28 47 1e 	vmovapd 0x780(%rdi),%zmm0
  4030f8:	62 f1 fd 48 28 4f 23 	vmovapd 0x8c0(%rdi),%zmm1
  4030ff:	62 f1 fd 48 28 57 28 	vmovapd 0xa00(%rdi),%zmm2
  403106:	62 62 fd 58 b8 6e 1c 	vfmadd231pd 0xe0(%rsi){1to8},%zmm0,%zmm29
  40310d:	62 62 fd 58 b8 7e 20 	vfmadd231pd 0x100(%rsi){1to8},%zmm0,%zmm31
  403114:	62 62 f5 58 b8 6e 1d 	vfmadd231pd 0xe8(%rsi){1to8},%zmm1,%zmm29
  40311b:	62 62 f5 58 b8 76 1e 	vfmadd231pd 0xf0(%rsi){1to8},%zmm1,%zmm30
  403122:	62 62 ed 58 b8 76 1f 	vfmadd231pd 0xf8(%rsi){1to8},%zmm2,%zmm30
  403129:	62 62 ed 58 b8 7e 21 	vfmadd231pd 0x108(%rsi){1to8},%zmm2,%zmm31
  403130:	62 61 fd 48 29 2a    	vmovapd %zmm29,(%rdx)
  403136:	62 61 fd 48 29 72 05 	vmovapd %zmm30,0x140(%rdx)
  40313d:	62 61 fd 48 29 7a 0a 	vmovapd %zmm31,0x280(%rdx)
  403144:	48 83 c7 40          	add    $0x40,%rdi
  403148:	48 81 c2 40 f1 ff ff 	add    $0xfffffffffffff140,%rdx
  40314f:	49 83 c4 01          	add    $0x1,%r12
  403153:	49 83 fc 05          	cmp    $0x5,%r12
  403157:	0f 8c 99 fd ff ff    	jl     402ef6 <LOOP_TOP_0_1>
  40315d:	4c 8b 64 24 f0       	mov    -0x10(%rsp),%r12
  403162:	c3                   	retq   

0000000000403163 <_Z7to_bcscRK6Matrixii>:
  403163:	48 83 ec 78          	sub    $0x78,%rsp
  403167:	48 89 5c 24 60       	mov    %rbx,0x60(%rsp)
  40316c:	48 89 6c 24 58       	mov    %rbp,0x58(%rsp)
  403171:	4c 89 7c 24 68       	mov    %r15,0x68(%rsp)
  403176:	4c 89 74 24 70       	mov    %r14,0x70(%rsp)
  40317b:	4c 89 6c 24 48       	mov    %r13,0x48(%rsp)
  403180:	4c 89 64 24 50       	mov    %r12,0x50(%rsp)
  403185:	48 89 f3             	mov    %rsi,%rbx
  403188:	48 89 7c 24 18       	mov    %rdi,0x18(%rsp)
  40318d:	8b 43 08             	mov    0x8(%rbx),%eax
  403190:	89 4c 24 08          	mov    %ecx,0x8(%rsp)
  403194:	41 89 d0             	mov    %edx,%r8d
  403197:	44 89 04 24          	mov    %r8d,(%rsp)
  40319b:	99                   	cltd   
  40319c:	6a 30                	pushq  $0x30
  40319e:	5f                   	pop    %rdi
  40319f:	41 f7 f8             	idiv   %r8d
  4031a2:	89 44 24 20          	mov    %eax,0x20(%rsp)
  4031a6:	8b 43 0c             	mov    0xc(%rbx),%eax
  4031a9:	99                   	cltd   
  4031aa:	f7 f9                	idiv   %ecx
  4031ac:	89 44 24 30          	mov    %eax,0x30(%rsp)
  4031b0:	e8 ab e4 ff ff       	callq  401660 <_Znwm@plt>
  4031b5:	49 89 c4             	mov    %rax,%r12
  4031b8:	8b 53 08             	mov    0x8(%rbx),%edx
  4031bb:	8b 4b 0c             	mov    0xc(%rbx),%ecx
  4031be:	89 d5                	mov    %edx,%ebp
  4031c0:	48 8d 05 19 70 20 00 	lea    0x207019(%rip),%rax        # 60a1e0 <_ZTV12SparseMatrix+0x10>
  4031c7:	49 89 04 24          	mov    %rax,(%r12)
  4031cb:	0f af e9             	imul   %ecx,%ebp
  4031ce:	49 8d 44 24 14       	lea    0x14(%r12),%rax
  4031d3:	c7 40 fc 00 00 00 00 	movl   $0x0,-0x4(%rax)
  4031da:	48 63 ed             	movslq %ebp,%rbp
  4031dd:	89 50 f4             	mov    %edx,-0xc(%rax)
  4031e0:	48 8d 3c ed 00 00 00 	lea    0x0(,%rbp,8),%rdi
  4031e7:	00 
  4031e8:	89 28                	mov    %ebp,(%rax)
  4031ea:	89 48 f8             	mov    %ecx,-0x8(%rax)
  4031ed:	e8 6e e3 ff ff       	callq  401560 <_Znam@plt>
  4031f2:	48 c1 e5 02          	shl    $0x2,%rbp
  4031f6:	49 89 44 24 18       	mov    %rax,0x18(%r12)
  4031fb:	48 89 ef             	mov    %rbp,%rdi
  4031fe:	e8 5d e3 ff ff       	callq  401560 <_Znam@plt>
  403203:	48 89 ef             	mov    %rbp,%rdi
  403206:	49 89 44 24 20       	mov    %rax,0x20(%r12)
  40320b:	e8 50 e3 ff ff       	callq  401560 <_Znam@plt>
  403210:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
  403215:	49 89 44 24 28       	mov    %rax,0x28(%r12)
  40321a:	4c 89 e6             	mov    %r12,%rsi
  40321d:	e8 02 2b 00 00       	callq  405d24 <_ZNSt10unique_ptrI12SparseMatrixSt14default_deleteIS0_EEC1EPS0_>
  403222:	31 c0                	xor    %eax,%eax
  403224:	89 44 24 38          	mov    %eax,0x38(%rsp)
  403228:	83 7c 24 30 00       	cmpl   $0x0,0x30(%rsp)
  40322d:	89 44 24 10          	mov    %eax,0x10(%rsp)
  403231:	0f 8e a2 00 00 00    	jle    4032d9 <_Z7to_bcscRK6Matrixii+0x176>
  403237:	45 31 ff             	xor    %r15d,%r15d
  40323a:	44 89 7c 24 28       	mov    %r15d,0x28(%rsp)
  40323f:	83 7c 24 20 00       	cmpl   $0x0,0x20(%rsp)
  403244:	7e 72                	jle    4032b8 <_Z7to_bcscRK6Matrixii+0x155>
  403246:	45 31 f6             	xor    %r14d,%r14d
  403249:	83 7c 24 08 00       	cmpl   $0x0,0x8(%rsp)
  40324e:	7e 53                	jle    4032a3 <_Z7to_bcscRK6Matrixii+0x140>
  403250:	45 31 ed             	xor    %r13d,%r13d
  403253:	83 3c 24 00          	cmpl   $0x0,(%rsp)
  403257:	7e 3f                	jle    403298 <_Z7to_bcscRK6Matrixii+0x135>
  403259:	8b 44 24 10          	mov    0x10(%rsp),%eax
  40325d:	42 8d 2c 30          	lea    (%rax,%r14,1),%ebp
  403261:	47 8d 24 2f          	lea    (%r15,%r13,1),%r12d
  403265:	48 8b 03             	mov    (%rbx),%rax
  403268:	48 89 df             	mov    %rbx,%rdi
  40326b:	89 ea                	mov    %ebp,%edx
  40326d:	44 89 e6             	mov    %r12d,%esi
  403270:	ff 10                	callq  *(%rax)
  403272:	c5 fb 11 44 24 40    	vmovsd %xmm0,0x40(%rsp)
  403278:	e8 e3 2a 00 00       	callq  405d60 <fabs>
  40327d:	62 f1 ff 08 c2 05 30 	vcmpgtsd 0x3a30(%rip),%xmm0,%k0        # 406cb8 <_IO_stdin_used+0x18>
  403284:	3a 00 00 0e 
  403288:	c5 f8 98 c0          	kortestw %k0,%k0
  40328c:	75 6e                	jne    4032fc <_Z7to_bcscRK6Matrixii+0x199>
  40328e:	41 83 c5 01          	add    $0x1,%r13d
  403292:	44 3b 2c 24          	cmp    (%rsp),%r13d
  403296:	7c c9                	jl     403261 <_Z7to_bcscRK6Matrixii+0xfe>
  403298:	41 83 c6 01          	add    $0x1,%r14d
  40329c:	44 3b 74 24 08       	cmp    0x8(%rsp),%r14d
  4032a1:	7c ad                	jl     403250 <_Z7to_bcscRK6Matrixii+0xed>
  4032a3:	8b 44 24 28          	mov    0x28(%rsp),%eax
  4032a7:	44 03 3c 24          	add    (%rsp),%r15d
  4032ab:	83 c0 01             	add    $0x1,%eax
  4032ae:	89 44 24 28          	mov    %eax,0x28(%rsp)
  4032b2:	3b 44 24 20          	cmp    0x20(%rsp),%eax
  4032b6:	7c 8e                	jl     403246 <_Z7to_bcscRK6Matrixii+0xe3>
  4032b8:	8b 54 24 38          	mov    0x38(%rsp),%edx
  4032bc:	8b 44 24 10          	mov    0x10(%rsp),%eax
  4032c0:	83 c2 01             	add    $0x1,%edx
  4032c3:	89 54 24 38          	mov    %edx,0x38(%rsp)
  4032c7:	03 44 24 08          	add    0x8(%rsp),%eax
  4032cb:	89 44 24 10          	mov    %eax,0x10(%rsp)
  4032cf:	3b 54 24 30          	cmp    0x30(%rsp),%edx
  4032d3:	0f 8c 5e ff ff ff    	jl     403237 <_Z7to_bcscRK6Matrixii+0xd4>
  4032d9:	48 8b 5c 24 60       	mov    0x60(%rsp),%rbx
  4032de:	48 8b 6c 24 58       	mov    0x58(%rsp),%rbp
  4032e3:	4c 8b 64 24 50       	mov    0x50(%rsp),%r12
  4032e8:	4c 8b 6c 24 48       	mov    0x48(%rsp),%r13
  4032ed:	4c 8b 74 24 70       	mov    0x70(%rsp),%r14
  4032f2:	4c 8b 7c 24 68       	mov    0x68(%rsp),%r15
  4032f7:	48 83 c4 78          	add    $0x78,%rsp
  4032fb:	c3                   	retq   
  4032fc:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
  403301:	e8 a4 29 00 00       	callq  405caa <_ZNKSt10unique_ptrI12SparseMatrixSt14default_deleteIS0_EEptEv>
  403306:	48 8b 08             	mov    (%rax),%rcx
  403309:	48 89 c7             	mov    %rax,%rdi
  40330c:	44 89 e6             	mov    %r12d,%esi
  40330f:	c5 fb 10 44 24 40    	vmovsd 0x40(%rsp),%xmm0
  403315:	89 ea                	mov    %ebp,%edx
  403317:	ff 51 08             	callq  *0x8(%rcx)
  40331a:	e9 6f ff ff ff       	jmpq   40328e <_Z7to_bcscRK6Matrixii+0x12b>
  40331f:	48 89 04 24          	mov    %rax,(%rsp)
  403323:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
  403328:	e8 89 29 00 00       	callq  405cb6 <_ZNSt10unique_ptrI12SparseMatrixSt14default_deleteIS0_EED1Ev>
  40332d:	eb 0c                	jmp    40333b <_Z7to_bcscRK6Matrixii+0x1d8>
  40332f:	48 89 04 24          	mov    %rax,(%rsp)
  403333:	4c 89 e7             	mov    %r12,%rdi
  403336:	e8 f5 e2 ff ff       	callq  401630 <_ZdlPv@plt>
  40333b:	48 8b 3c 24          	mov    (%rsp),%rdi
  40333f:	e8 8c e4 ff ff       	callq  4017d0 <_Unwind_Resume@plt>

0000000000403344 <_Z16test_unrolled_40v>:
  403344:	48 81 ec c8 00 00 00 	sub    $0xc8,%rsp
  40334b:	48 89 ac 24 b8 00 00 	mov    %rbp,0xb8(%rsp)
  403352:	00 
  403353:	4c 89 a4 24 b0 00 00 	mov    %r12,0xb0(%rsp)
  40335a:	00 
  40335b:	41 bc 28 a2 60 00    	mov    $0x60a228,%r12d
  403361:	6a 28                	pushq  $0x28
  403363:	5d                   	pop    %rbp
  403364:	48 8d 04 24          	lea    (%rsp),%rax
  403368:	4c 89 20             	mov    %r12,(%rax)
  40336b:	48 8d 78 18          	lea    0x18(%rax),%rdi
  40336f:	89 68 10             	mov    %ebp,0x10(%rax)
  403372:	6a 40                	pushq  $0x40
  403374:	5e                   	pop    %rsi
  403375:	89 68 08             	mov    %ebp,0x8(%rax)
  403378:	ba 40 0b 00 00       	mov    $0xb40,%edx
  40337d:	c7 40 0c 09 00 00 00 	movl   $0x9,0xc(%rax)
  403384:	e8 57 e2 ff ff       	callq  4015e0 <posix_memalign@plt>
  403389:	48 8d 3c 24          	lea    (%rsp),%rdi
  40338d:	e8 8a 25 00 00       	callq  40591c <_ZN11DenseMatrix4zeroEv>
  403392:	48 8d 3c 24          	lea    (%rsp),%rdi
  403396:	e8 dd 25 00 00       	callq  405978 <_ZN11DenseMatrix6randomEv>
  40339b:	48 8d 7c 24 60       	lea    0x60(%rsp),%rdi
  4033a0:	be c8 6c 40 00       	mov    $0x406cc8,%esi
  4033a5:	e8 52 26 00 00       	callq  4059fc <_ZN11DenseMatrixC1EPKc>
  4033aa:	48 8d bc 24 80 00 00 	lea    0x80(%rsp),%rdi
  4033b1:	00 
  4033b2:	6a 03                	pushq  $0x3
  4033b4:	5a                   	pop    %rdx
  4033b5:	48 8d 77 e0          	lea    -0x20(%rdi),%rsi
  4033b9:	89 d1                	mov    %edx,%ecx
  4033bb:	e8 a3 fd ff ff       	callq  403163 <_Z7to_bcscRK6Matrixii>
  4033c0:	48 8d 44 24 40       	lea    0x40(%rsp),%rax
  4033c5:	4c 89 20             	mov    %r12,(%rax)
  4033c8:	48 8d 78 18          	lea    0x18(%rax),%rdi
  4033cc:	89 68 10             	mov    %ebp,0x10(%rax)
  4033cf:	6a 40                	pushq  $0x40
  4033d1:	5e                   	pop    %rsi
  4033d2:	89 68 08             	mov    %ebp,0x8(%rax)
  4033d5:	ba c0 12 00 00       	mov    $0x12c0,%edx
  4033da:	c7 40 0c 0f 00 00 00 	movl   $0xf,0xc(%rax)
  4033e1:	e8 fa e1 ff ff       	callq  4015e0 <posix_memalign@plt>
  4033e6:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  4033eb:	e8 2c 25 00 00       	callq  40591c <_ZN11DenseMatrix4zeroEv>
  4033f0:	48 8d 44 24 20       	lea    0x20(%rsp),%rax
  4033f5:	4c 89 20             	mov    %r12,(%rax)
  4033f8:	48 8d 78 18          	lea    0x18(%rax),%rdi
  4033fc:	89 68 10             	mov    %ebp,0x10(%rax)
  4033ff:	6a 40                	pushq  $0x40
  403401:	5e                   	pop    %rsi
  403402:	89 68 08             	mov    %ebp,0x8(%rax)
  403405:	ba c0 12 00 00       	mov    $0x12c0,%edx
  40340a:	c7 40 0c 0f 00 00 00 	movl   $0xf,0xc(%rax)
  403411:	e8 ca e1 ff ff       	callq  4015e0 <posix_memalign@plt>
  403416:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
  40341b:	e8 fc 24 00 00       	callq  40591c <_ZN11DenseMatrix4zeroEv>
  403420:	48 8d 3c 24          	lea    (%rsp),%rdi
  403424:	48 8d 77 60          	lea    0x60(%rdi),%rsi
  403428:	48 8d 56 e0          	lea    -0x20(%rsi),%rdx
  40342c:	e8 e2 ef ff ff       	callq  402413 <_Z4gemmRK6MatrixS1_RS_>
  403431:	48 8d bc 24 80 00 00 	lea    0x80(%rsp),%rdi
  403438:	00 
  403439:	e8 6c 28 00 00       	callq  405caa <_ZNKSt10unique_ptrI12SparseMatrixSt14default_deleteIS0_EEptEv>
  40343e:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
  403443:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
  403448:	48 8b 70 18          	mov    0x18(%rax),%rsi
  40344c:	e8 6e 01 00 00       	callq  4035bf <_Z11unrolled_40PKdS0_Pd>
  403451:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  403456:	48 8d 77 e0          	lea    -0x20(%rdi),%rsi
  40345a:	e8 12 ed ff ff       	callq  402171 <_Z13assert_equalsRK6MatrixS1_>
  40345f:	31 ff                	xor    %edi,%edi
  403461:	83 c7 01             	add    $0x1,%edi
  403464:	48 8d b4 24 90 00 00 	lea    0x90(%rsp),%rsi
  40346b:	00 
  40346c:	e8 9f e2 ff ff       	callq  401710 <clock_gettime@plt>
  403471:	31 ed                	xor    %ebp,%ebp
  403473:	48 8d bc 24 80 00 00 	lea    0x80(%rsp),%rdi
  40347a:	00 
  40347b:	e8 2a 28 00 00       	callq  405caa <_ZNKSt10unique_ptrI12SparseMatrixSt14default_deleteIS0_EEptEv>
  403480:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
  403485:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
  40348a:	48 8b 70 18          	mov    0x18(%rax),%rsi
  40348e:	e8 2c 01 00 00       	callq  4035bf <_Z11unrolled_40PKdS0_Pd>
  403493:	83 c5 01             	add    $0x1,%ebp
  403496:	81 fd b8 0b 00 00    	cmp    $0xbb8,%ebp
  40349c:	7c d5                	jl     403473 <_Z16test_unrolled_40v+0x12f>
  40349e:	31 ff                	xor    %edi,%edi
  4034a0:	83 c7 01             	add    $0x1,%edi
  4034a3:	48 8d b4 24 a0 00 00 	lea    0xa0(%rsp),%rsi
  4034aa:	00 
  4034ab:	e8 60 e2 ff ff       	callq  401710 <clock_gettime@plt>
  4034b0:	bf a0 a2 60 00       	mov    $0x60a2a0,%edi
  4034b5:	be 90 6d 40 00       	mov    $0x406d90,%esi
  4034ba:	e8 81 e1 ff ff       	callq  401640 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  4034bf:	48 89 c5             	mov    %rax,%rbp
  4034c2:	48 8d 84 24 90 00 00 	lea    0x90(%rsp),%rax
  4034c9:	00 
  4034ca:	48 8d 8c 24 a0 00 00 	lea    0xa0(%rsp),%rcx
  4034d1:	00 
  4034d2:	48 8b 38             	mov    (%rax),%rdi
  4034d5:	48 8b 70 08          	mov    0x8(%rax),%rsi
  4034d9:	48 8b 11             	mov    (%rcx),%rdx
  4034dc:	48 8b 49 08          	mov    0x8(%rcx),%rcx
  4034e0:	e8 1b f0 ff ff       	callq  402500 <_Z9microsecs8timespecS_>
  4034e5:	c5 fb 5e 05 bb 37 00 	vdivsd 0x37bb(%rip),%xmm0,%xmm0        # 406ca8 <_IO_stdin_used+0x8>
  4034ec:	00 
  4034ed:	48 89 ef             	mov    %rbp,%rdi
  4034f0:	e8 0b e3 ff ff       	callq  401800 <_ZNSolsEd@plt>
  4034f5:	48 89 c7             	mov    %rax,%rdi
  4034f8:	be c0 15 40 00       	mov    $0x4015c0,%esi
  4034fd:	e8 6e e1 ff ff       	callq  401670 <_ZNSolsEPFRSoS_E@plt>
  403502:	48 8b 7c 24 38       	mov    0x38(%rsp),%rdi
  403507:	4c 89 64 24 20       	mov    %r12,0x20(%rsp)
  40350c:	e8 bf e1 ff ff       	callq  4016d0 <free@plt>
  403511:	48 8b 7c 24 58       	mov    0x58(%rsp),%rdi
  403516:	4c 89 64 24 40       	mov    %r12,0x40(%rsp)
  40351b:	e8 b0 e1 ff ff       	callq  4016d0 <free@plt>
  403520:	48 8d bc 24 80 00 00 	lea    0x80(%rsp),%rdi
  403527:	00 
  403528:	e8 89 27 00 00       	callq  405cb6 <_ZNSt10unique_ptrI12SparseMatrixSt14default_deleteIS0_EED1Ev>
  40352d:	48 8b 7c 24 78       	mov    0x78(%rsp),%rdi
  403532:	4c 89 64 24 60       	mov    %r12,0x60(%rsp)
  403537:	e8 94 e1 ff ff       	callq  4016d0 <free@plt>
  40353c:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
  403541:	4c 89 24 24          	mov    %r12,(%rsp)
  403545:	e8 86 e1 ff ff       	callq  4016d0 <free@plt>
  40354a:	48 8b ac 24 b8 00 00 	mov    0xb8(%rsp),%rbp
  403551:	00 
  403552:	4c 8b a4 24 b0 00 00 	mov    0xb0(%rsp),%r12
  403559:	00 
  40355a:	48 81 c4 c8 00 00 00 	add    $0xc8,%rsp
  403561:	c3                   	retq   
  403562:	48 89 84 24 88 00 00 	mov    %rax,0x88(%rsp)
  403569:	00 
  40356a:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
  40356f:	e8 f0 23 00 00       	callq  405964 <_ZN11DenseMatrixD1Ev>
  403574:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  403579:	e8 e6 23 00 00       	callq  405964 <_ZN11DenseMatrixD1Ev>
  40357e:	48 8d bc 24 80 00 00 	lea    0x80(%rsp),%rdi
  403585:	00 
  403586:	e8 2b 27 00 00       	callq  405cb6 <_ZNSt10unique_ptrI12SparseMatrixSt14default_deleteIS0_EED1Ev>
  40358b:	48 8d 7c 24 60       	lea    0x60(%rsp),%rdi
  403590:	e8 cf 23 00 00       	callq  405964 <_ZN11DenseMatrixD1Ev>
  403595:	48 8d 3c 24          	lea    (%rsp),%rdi
  403599:	e8 c6 23 00 00       	callq  405964 <_ZN11DenseMatrixD1Ev>
  40359e:	48 8b bc 24 88 00 00 	mov    0x88(%rsp),%rdi
  4035a5:	00 
  4035a6:	e8 25 e2 ff ff       	callq  4017d0 <_Unwind_Resume@plt>
  4035ab:	48 89 84 24 88 00 00 	mov    %rax,0x88(%rsp)
  4035b2:	00 
  4035b3:	eb d6                	jmp    40358b <_Z16test_unrolled_40v+0x247>
  4035b5:	48 89 84 24 88 00 00 	mov    %rax,0x88(%rsp)
  4035bc:	00 
  4035bd:	eb d6                	jmp    403595 <_Z16test_unrolled_40v+0x251>

00000000004035bf <_Z11unrolled_40PKdS0_Pd>:
  4035bf:	4c 89 64 24 f0       	mov    %r12,-0x10(%rsp)
  4035c4:	48 89 7c 24 d8       	mov    %rdi,-0x28(%rsp)
  4035c9:	48 89 74 24 e0       	mov    %rsi,-0x20(%rsp)
  4035ce:	48 89 54 24 e8       	mov    %rdx,-0x18(%rsp)
  4035d3:	48 8b 7c 24 d8       	mov    -0x28(%rsp),%rdi
  4035d8:	48 8b 74 24 e0       	mov    -0x20(%rsp),%rsi
  4035dd:	48 8b 54 24 e8       	mov    -0x18(%rsp),%rdx
  4035e2:	49 c7 c4 00 00 00 00 	mov    $0x0,%r12

00000000004035e9 <LOOP_TOP_1_2>:
  4035e9:	62 e1 fd 48 28 0a    	vmovapd (%rdx),%zmm17
  4035ef:	62 e1 fd 48 28 52 01 	vmovapd 0x40(%rdx),%zmm18
  4035f6:	62 e1 fd 48 28 5a 02 	vmovapd 0x80(%rdx),%zmm19
  4035fd:	62 e1 fd 48 28 62 03 	vmovapd 0xc0(%rdx),%zmm20
  403604:	62 e1 fd 48 28 6a 04 	vmovapd 0x100(%rdx),%zmm21
  40360b:	62 e1 fd 48 28 72 05 	vmovapd 0x140(%rdx),%zmm22
  403612:	62 e1 fd 48 28 7a 06 	vmovapd 0x180(%rdx),%zmm23
  403619:	62 61 fd 48 28 42 07 	vmovapd 0x1c0(%rdx),%zmm24
  403620:	62 61 fd 48 28 4a 08 	vmovapd 0x200(%rdx),%zmm25
  403627:	62 61 fd 48 28 52 09 	vmovapd 0x240(%rdx),%zmm26
  40362e:	62 61 fd 48 28 5a 0a 	vmovapd 0x280(%rdx),%zmm27
  403635:	62 61 fd 48 28 62 0b 	vmovapd 0x2c0(%rdx),%zmm28
  40363c:	62 61 fd 48 28 6a 0c 	vmovapd 0x300(%rdx),%zmm29
  403643:	62 61 fd 48 28 72 0d 	vmovapd 0x340(%rdx),%zmm30
  40364a:	62 61 fd 48 28 7a 0e 	vmovapd 0x380(%rdx),%zmm31
  403651:	62 f1 fd 48 28 47 1e 	vmovapd 0x780(%rdi),%zmm0
  403658:	62 f1 fd 48 28 4f 1f 	vmovapd 0x7c0(%rdi),%zmm1
  40365f:	62 f1 fd 48 28 57 20 	vmovapd 0x800(%rdi),%zmm2
  403666:	62 f1 fd 48 28 5f 21 	vmovapd 0x840(%rdi),%zmm3
  40366d:	62 f1 fd 48 28 67 22 	vmovapd 0x880(%rdi),%zmm4
  403674:	62 f1 fd 48 28 6f 23 	vmovapd 0x8c0(%rdi),%zmm5
  40367b:	62 f1 fd 48 28 77 24 	vmovapd 0x900(%rdi),%zmm6
  403682:	62 f1 fd 48 28 7f 25 	vmovapd 0x940(%rdi),%zmm7
  403689:	62 71 fd 48 28 47 26 	vmovapd 0x980(%rdi),%zmm8
  403690:	62 71 fd 48 28 4f 27 	vmovapd 0x9c0(%rdi),%zmm9
  403697:	62 71 fd 48 28 57 28 	vmovapd 0xa00(%rdi),%zmm10
  40369e:	62 71 fd 48 28 5f 29 	vmovapd 0xa40(%rdi),%zmm11
  4036a5:	62 71 fd 48 28 67 2a 	vmovapd 0xa80(%rdi),%zmm12
  4036ac:	62 71 fd 48 28 6f 2b 	vmovapd 0xac0(%rdi),%zmm13
  4036b3:	62 71 fd 48 28 77 2c 	vmovapd 0xb00(%rdi),%zmm14
  4036ba:	62 e2 fd 58 b8 0e    	vfmadd231pd (%rsi){1to8},%zmm0,%zmm17
  4036c0:	62 e2 fd 58 b8 76 03 	vfmadd231pd 0x18(%rsi){1to8},%zmm0,%zmm22
  4036c7:	62 62 fd 58 b8 5e 06 	vfmadd231pd 0x30(%rsi){1to8},%zmm0,%zmm27
  4036ce:	62 e2 d5 58 b8 4e 01 	vfmadd231pd 0x8(%rsi){1to8},%zmm5,%zmm17
  4036d5:	62 e2 d5 58 b8 76 04 	vfmadd231pd 0x20(%rsi){1to8},%zmm5,%zmm22
  4036dc:	62 62 d5 58 b8 5e 07 	vfmadd231pd 0x38(%rsi){1to8},%zmm5,%zmm27
  4036e3:	62 e2 ad 58 b8 4e 02 	vfmadd231pd 0x10(%rsi){1to8},%zmm10,%zmm17
  4036ea:	62 e2 ad 58 b8 76 05 	vfmadd231pd 0x28(%rsi){1to8},%zmm10,%zmm22
  4036f1:	62 62 ad 58 b8 5e 08 	vfmadd231pd 0x40(%rsi){1to8},%zmm10,%zmm27
  4036f8:	62 e2 f5 58 b8 16    	vfmadd231pd (%rsi){1to8},%zmm1,%zmm18
  4036fe:	62 e2 f5 58 b8 7e 03 	vfmadd231pd 0x18(%rsi){1to8},%zmm1,%zmm23
  403705:	62 62 f5 58 b8 66 06 	vfmadd231pd 0x30(%rsi){1to8},%zmm1,%zmm28
  40370c:	62 e2 cd 58 b8 56 01 	vfmadd231pd 0x8(%rsi){1to8},%zmm6,%zmm18
  403713:	62 e2 cd 58 b8 7e 04 	vfmadd231pd 0x20(%rsi){1to8},%zmm6,%zmm23
  40371a:	62 62 cd 58 b8 66 07 	vfmadd231pd 0x38(%rsi){1to8},%zmm6,%zmm28
  403721:	62 e2 a5 58 b8 56 02 	vfmadd231pd 0x10(%rsi){1to8},%zmm11,%zmm18
  403728:	62 e2 a5 58 b8 7e 05 	vfmadd231pd 0x28(%rsi){1to8},%zmm11,%zmm23
  40372f:	62 62 a5 58 b8 66 08 	vfmadd231pd 0x40(%rsi){1to8},%zmm11,%zmm28
  403736:	62 e2 ed 58 b8 1e    	vfmadd231pd (%rsi){1to8},%zmm2,%zmm19
  40373c:	62 62 ed 58 b8 46 03 	vfmadd231pd 0x18(%rsi){1to8},%zmm2,%zmm24
  403743:	62 62 ed 58 b8 6e 06 	vfmadd231pd 0x30(%rsi){1to8},%zmm2,%zmm29
  40374a:	62 e2 c5 58 b8 5e 01 	vfmadd231pd 0x8(%rsi){1to8},%zmm7,%zmm19
  403751:	62 62 c5 58 b8 46 04 	vfmadd231pd 0x20(%rsi){1to8},%zmm7,%zmm24
  403758:	62 62 c5 58 b8 6e 07 	vfmadd231pd 0x38(%rsi){1to8},%zmm7,%zmm29
  40375f:	62 e2 9d 58 b8 5e 02 	vfmadd231pd 0x10(%rsi){1to8},%zmm12,%zmm19
  403766:	62 62 9d 58 b8 46 05 	vfmadd231pd 0x28(%rsi){1to8},%zmm12,%zmm24
  40376d:	62 62 9d 58 b8 6e 08 	vfmadd231pd 0x40(%rsi){1to8},%zmm12,%zmm29
  403774:	62 e2 e5 58 b8 26    	vfmadd231pd (%rsi){1to8},%zmm3,%zmm20
  40377a:	62 62 e5 58 b8 4e 03 	vfmadd231pd 0x18(%rsi){1to8},%zmm3,%zmm25
  403781:	62 62 e5 58 b8 76 06 	vfmadd231pd 0x30(%rsi){1to8},%zmm3,%zmm30
  403788:	62 e2 bd 58 b8 66 01 	vfmadd231pd 0x8(%rsi){1to8},%zmm8,%zmm20
  40378f:	62 62 bd 58 b8 4e 04 	vfmadd231pd 0x20(%rsi){1to8},%zmm8,%zmm25
  403796:	62 62 bd 58 b8 76 07 	vfmadd231pd 0x38(%rsi){1to8},%zmm8,%zmm30
  40379d:	62 e2 95 58 b8 66 02 	vfmadd231pd 0x10(%rsi){1to8},%zmm13,%zmm20
  4037a4:	62 62 95 58 b8 4e 05 	vfmadd231pd 0x28(%rsi){1to8},%zmm13,%zmm25
  4037ab:	62 62 95 58 b8 76 08 	vfmadd231pd 0x40(%rsi){1to8},%zmm13,%zmm30
  4037b2:	62 e2 dd 58 b8 2e    	vfmadd231pd (%rsi){1to8},%zmm4,%zmm21
  4037b8:	62 62 dd 58 b8 56 03 	vfmadd231pd 0x18(%rsi){1to8},%zmm4,%zmm26
  4037bf:	62 62 dd 58 b8 7e 06 	vfmadd231pd 0x30(%rsi){1to8},%zmm4,%zmm31
  4037c6:	62 e2 b5 58 b8 6e 01 	vfmadd231pd 0x8(%rsi){1to8},%zmm9,%zmm21
  4037cd:	62 62 b5 58 b8 56 04 	vfmadd231pd 0x20(%rsi){1to8},%zmm9,%zmm26
  4037d4:	62 62 b5 58 b8 7e 07 	vfmadd231pd 0x38(%rsi){1to8},%zmm9,%zmm31
  4037db:	62 e2 8d 58 b8 6e 02 	vfmadd231pd 0x10(%rsi){1to8},%zmm14,%zmm21
  4037e2:	62 62 8d 58 b8 56 05 	vfmadd231pd 0x28(%rsi){1to8},%zmm14,%zmm26
  4037e9:	62 62 8d 58 b8 7e 08 	vfmadd231pd 0x40(%rsi){1to8},%zmm14,%zmm31
  4037f0:	62 e1 fd 48 29 0a    	vmovapd %zmm17,(%rdx)
  4037f6:	62 e1 fd 48 29 52 01 	vmovapd %zmm18,0x40(%rdx)
  4037fd:	62 e1 fd 48 29 5a 02 	vmovapd %zmm19,0x80(%rdx)
  403804:	62 e1 fd 48 29 62 03 	vmovapd %zmm20,0xc0(%rdx)
  40380b:	62 e1 fd 48 29 6a 04 	vmovapd %zmm21,0x100(%rdx)
  403812:	62 e1 fd 48 29 72 05 	vmovapd %zmm22,0x140(%rdx)
  403819:	62 e1 fd 48 29 7a 06 	vmovapd %zmm23,0x180(%rdx)
  403820:	62 61 fd 48 29 42 07 	vmovapd %zmm24,0x1c0(%rdx)
  403827:	62 61 fd 48 29 4a 08 	vmovapd %zmm25,0x200(%rdx)
  40382e:	62 61 fd 48 29 52 09 	vmovapd %zmm26,0x240(%rdx)
  403835:	62 61 fd 48 29 5a 0a 	vmovapd %zmm27,0x280(%rdx)
  40383c:	62 61 fd 48 29 62 0b 	vmovapd %zmm28,0x2c0(%rdx)
  403843:	62 61 fd 48 29 6a 0c 	vmovapd %zmm29,0x300(%rdx)
  40384a:	62 61 fd 48 29 72 0d 	vmovapd %zmm30,0x340(%rdx)
  403851:	62 61 fd 48 29 7a 0e 	vmovapd %zmm31,0x380(%rdx)
  403858:	48 81 c2 c0 03 00 00 	add    $0x3c0,%rdx
  40385f:	62 e1 fd 48 28 0a    	vmovapd (%rdx),%zmm17
  403865:	62 e1 fd 48 28 52 01 	vmovapd 0x40(%rdx),%zmm18
  40386c:	62 e1 fd 48 28 5a 02 	vmovapd 0x80(%rdx),%zmm19
  403873:	62 e1 fd 48 28 62 03 	vmovapd 0xc0(%rdx),%zmm20
  40387a:	62 e1 fd 48 28 6a 04 	vmovapd 0x100(%rdx),%zmm21
  403881:	62 e1 fd 48 28 72 05 	vmovapd 0x140(%rdx),%zmm22
  403888:	62 e1 fd 48 28 7a 06 	vmovapd 0x180(%rdx),%zmm23
  40388f:	62 61 fd 48 28 42 07 	vmovapd 0x1c0(%rdx),%zmm24
  403896:	62 61 fd 48 28 4a 08 	vmovapd 0x200(%rdx),%zmm25
  40389d:	62 61 fd 48 28 52 09 	vmovapd 0x240(%rdx),%zmm26
  4038a4:	62 61 fd 48 28 5a 0a 	vmovapd 0x280(%rdx),%zmm27
  4038ab:	62 61 fd 48 28 62 0b 	vmovapd 0x2c0(%rdx),%zmm28
  4038b2:	62 61 fd 48 28 6a 0c 	vmovapd 0x300(%rdx),%zmm29
  4038b9:	62 61 fd 48 28 72 0d 	vmovapd 0x340(%rdx),%zmm30
  4038c0:	62 61 fd 48 28 7a 0e 	vmovapd 0x380(%rdx),%zmm31
  4038c7:	62 f1 fd 48 28 47 1e 	vmovapd 0x780(%rdi),%zmm0
  4038ce:	62 f1 fd 48 28 4f 1f 	vmovapd 0x7c0(%rdi),%zmm1
  4038d5:	62 f1 fd 48 28 57 20 	vmovapd 0x800(%rdi),%zmm2
  4038dc:	62 f1 fd 48 28 5f 21 	vmovapd 0x840(%rdi),%zmm3
  4038e3:	62 f1 fd 48 28 67 22 	vmovapd 0x880(%rdi),%zmm4
  4038ea:	62 f1 fd 48 28 6f 23 	vmovapd 0x8c0(%rdi),%zmm5
  4038f1:	62 f1 fd 48 28 77 24 	vmovapd 0x900(%rdi),%zmm6
  4038f8:	62 f1 fd 48 28 7f 25 	vmovapd 0x940(%rdi),%zmm7
  4038ff:	62 71 fd 48 28 47 26 	vmovapd 0x980(%rdi),%zmm8
  403906:	62 71 fd 48 28 4f 27 	vmovapd 0x9c0(%rdi),%zmm9
  40390d:	62 71 fd 48 28 57 28 	vmovapd 0xa00(%rdi),%zmm10
  403914:	62 71 fd 48 28 5f 29 	vmovapd 0xa40(%rdi),%zmm11
  40391b:	62 71 fd 48 28 67 2a 	vmovapd 0xa80(%rdi),%zmm12
  403922:	62 71 fd 48 28 6f 2b 	vmovapd 0xac0(%rdi),%zmm13
  403929:	62 71 fd 48 28 77 2c 	vmovapd 0xb00(%rdi),%zmm14
  403930:	62 e2 fd 58 b8 4e 09 	vfmadd231pd 0x48(%rsi){1to8},%zmm0,%zmm17
  403937:	62 62 fd 58 b8 5e 0d 	vfmadd231pd 0x68(%rsi){1to8},%zmm0,%zmm27
  40393e:	62 e2 d5 58 b8 4e 0a 	vfmadd231pd 0x50(%rsi){1to8},%zmm5,%zmm17
  403945:	62 e2 d5 58 b8 76 0b 	vfmadd231pd 0x58(%rsi){1to8},%zmm5,%zmm22
  40394c:	62 e2 ad 58 b8 76 0c 	vfmadd231pd 0x60(%rsi){1to8},%zmm10,%zmm22
  403953:	62 62 ad 58 b8 5e 0e 	vfmadd231pd 0x70(%rsi){1to8},%zmm10,%zmm27
  40395a:	62 e2 f5 58 b8 56 09 	vfmadd231pd 0x48(%rsi){1to8},%zmm1,%zmm18
  403961:	62 62 f5 58 b8 66 0d 	vfmadd231pd 0x68(%rsi){1to8},%zmm1,%zmm28
  403968:	62 e2 cd 58 b8 56 0a 	vfmadd231pd 0x50(%rsi){1to8},%zmm6,%zmm18
  40396f:	62 e2 cd 58 b8 7e 0b 	vfmadd231pd 0x58(%rsi){1to8},%zmm6,%zmm23
  403976:	62 e2 a5 58 b8 7e 0c 	vfmadd231pd 0x60(%rsi){1to8},%zmm11,%zmm23
  40397d:	62 62 a5 58 b8 66 0e 	vfmadd231pd 0x70(%rsi){1to8},%zmm11,%zmm28
  403984:	62 e2 ed 58 b8 5e 09 	vfmadd231pd 0x48(%rsi){1to8},%zmm2,%zmm19
  40398b:	62 62 ed 58 b8 6e 0d 	vfmadd231pd 0x68(%rsi){1to8},%zmm2,%zmm29
  403992:	62 e2 c5 58 b8 5e 0a 	vfmadd231pd 0x50(%rsi){1to8},%zmm7,%zmm19
  403999:	62 62 c5 58 b8 46 0b 	vfmadd231pd 0x58(%rsi){1to8},%zmm7,%zmm24
  4039a0:	62 62 9d 58 b8 46 0c 	vfmadd231pd 0x60(%rsi){1to8},%zmm12,%zmm24
  4039a7:	62 62 9d 58 b8 6e 0e 	vfmadd231pd 0x70(%rsi){1to8},%zmm12,%zmm29
  4039ae:	62 e2 e5 58 b8 66 09 	vfmadd231pd 0x48(%rsi){1to8},%zmm3,%zmm20
  4039b5:	62 62 e5 58 b8 76 0d 	vfmadd231pd 0x68(%rsi){1to8},%zmm3,%zmm30
  4039bc:	62 e2 bd 58 b8 66 0a 	vfmadd231pd 0x50(%rsi){1to8},%zmm8,%zmm20
  4039c3:	62 62 bd 58 b8 4e 0b 	vfmadd231pd 0x58(%rsi){1to8},%zmm8,%zmm25
  4039ca:	62 62 95 58 b8 4e 0c 	vfmadd231pd 0x60(%rsi){1to8},%zmm13,%zmm25
  4039d1:	62 62 95 58 b8 76 0e 	vfmadd231pd 0x70(%rsi){1to8},%zmm13,%zmm30
  4039d8:	62 e2 dd 58 b8 6e 09 	vfmadd231pd 0x48(%rsi){1to8},%zmm4,%zmm21
  4039df:	62 62 dd 58 b8 7e 0d 	vfmadd231pd 0x68(%rsi){1to8},%zmm4,%zmm31
  4039e6:	62 e2 b5 58 b8 6e 0a 	vfmadd231pd 0x50(%rsi){1to8},%zmm9,%zmm21
  4039ed:	62 62 b5 58 b8 56 0b 	vfmadd231pd 0x58(%rsi){1to8},%zmm9,%zmm26
  4039f4:	62 62 8d 58 b8 56 0c 	vfmadd231pd 0x60(%rsi){1to8},%zmm14,%zmm26
  4039fb:	62 62 8d 58 b8 7e 0e 	vfmadd231pd 0x70(%rsi){1to8},%zmm14,%zmm31
  403a02:	62 e1 fd 48 29 0a    	vmovapd %zmm17,(%rdx)
  403a08:	62 e1 fd 48 29 52 01 	vmovapd %zmm18,0x40(%rdx)
  403a0f:	62 e1 fd 48 29 5a 02 	vmovapd %zmm19,0x80(%rdx)
  403a16:	62 e1 fd 48 29 62 03 	vmovapd %zmm20,0xc0(%rdx)
  403a1d:	62 e1 fd 48 29 6a 04 	vmovapd %zmm21,0x100(%rdx)
  403a24:	62 e1 fd 48 29 72 05 	vmovapd %zmm22,0x140(%rdx)
  403a2b:	62 e1 fd 48 29 7a 06 	vmovapd %zmm23,0x180(%rdx)
  403a32:	62 61 fd 48 29 42 07 	vmovapd %zmm24,0x1c0(%rdx)
  403a39:	62 61 fd 48 29 4a 08 	vmovapd %zmm25,0x200(%rdx)
  403a40:	62 61 fd 48 29 52 09 	vmovapd %zmm26,0x240(%rdx)
  403a47:	62 61 fd 48 29 5a 0a 	vmovapd %zmm27,0x280(%rdx)
  403a4e:	62 61 fd 48 29 62 0b 	vmovapd %zmm28,0x2c0(%rdx)
  403a55:	62 61 fd 48 29 6a 0c 	vmovapd %zmm29,0x300(%rdx)
  403a5c:	62 61 fd 48 29 72 0d 	vmovapd %zmm30,0x340(%rdx)
  403a63:	62 61 fd 48 29 7a 0e 	vmovapd %zmm31,0x380(%rdx)
  403a6a:	48 81 c2 c0 03 00 00 	add    $0x3c0,%rdx
  403a71:	62 e1 fd 48 28 0a    	vmovapd (%rdx),%zmm17
  403a77:	62 e1 fd 48 28 52 01 	vmovapd 0x40(%rdx),%zmm18
  403a7e:	62 e1 fd 48 28 5a 02 	vmovapd 0x80(%rdx),%zmm19
  403a85:	62 e1 fd 48 28 62 03 	vmovapd 0xc0(%rdx),%zmm20
  403a8c:	62 e1 fd 48 28 6a 04 	vmovapd 0x100(%rdx),%zmm21
  403a93:	62 e1 fd 48 28 72 05 	vmovapd 0x140(%rdx),%zmm22
  403a9a:	62 e1 fd 48 28 7a 06 	vmovapd 0x180(%rdx),%zmm23
  403aa1:	62 61 fd 48 28 42 07 	vmovapd 0x1c0(%rdx),%zmm24
  403aa8:	62 61 fd 48 28 4a 08 	vmovapd 0x200(%rdx),%zmm25
  403aaf:	62 61 fd 48 28 52 09 	vmovapd 0x240(%rdx),%zmm26
  403ab6:	62 61 fd 48 28 5a 0a 	vmovapd 0x280(%rdx),%zmm27
  403abd:	62 61 fd 48 28 62 0b 	vmovapd 0x2c0(%rdx),%zmm28
  403ac4:	62 61 fd 48 28 6a 0c 	vmovapd 0x300(%rdx),%zmm29
  403acb:	62 61 fd 48 28 72 0d 	vmovapd 0x340(%rdx),%zmm30
  403ad2:	62 61 fd 48 28 7a 0e 	vmovapd 0x380(%rdx),%zmm31
  403ad9:	62 f1 fd 48 28 07    	vmovapd (%rdi),%zmm0
  403adf:	62 f1 fd 48 28 4f 01 	vmovapd 0x40(%rdi),%zmm1
  403ae6:	62 f1 fd 48 28 57 02 	vmovapd 0x80(%rdi),%zmm2
  403aed:	62 f1 fd 48 28 5f 03 	vmovapd 0xc0(%rdi),%zmm3
  403af4:	62 f1 fd 48 28 67 04 	vmovapd 0x100(%rdi),%zmm4
  403afb:	62 f1 fd 48 28 6f 05 	vmovapd 0x140(%rdi),%zmm5
  403b02:	62 f1 fd 48 28 77 06 	vmovapd 0x180(%rdi),%zmm6
  403b09:	62 f1 fd 48 28 7f 07 	vmovapd 0x1c0(%rdi),%zmm7
  403b10:	62 71 fd 48 28 47 08 	vmovapd 0x200(%rdi),%zmm8
  403b17:	62 71 fd 48 28 4f 09 	vmovapd 0x240(%rdi),%zmm9
  403b1e:	62 71 fd 48 28 57 0a 	vmovapd 0x280(%rdi),%zmm10
  403b25:	62 71 fd 48 28 5f 0b 	vmovapd 0x2c0(%rdi),%zmm11
  403b2c:	62 71 fd 48 28 67 0c 	vmovapd 0x300(%rdi),%zmm12
  403b33:	62 71 fd 48 28 6f 0d 	vmovapd 0x340(%rdi),%zmm13
  403b3a:	62 71 fd 48 28 77 0e 	vmovapd 0x380(%rdi),%zmm14
  403b41:	62 e2 fd 58 b8 4e 0f 	vfmadd231pd 0x78(%rsi){1to8},%zmm0,%zmm17
  403b48:	62 e2 d5 58 b8 76 10 	vfmadd231pd 0x80(%rsi){1to8},%zmm5,%zmm22
  403b4f:	62 62 ad 58 b8 5e 11 	vfmadd231pd 0x88(%rsi){1to8},%zmm10,%zmm27
  403b56:	62 e2 f5 58 b8 56 0f 	vfmadd231pd 0x78(%rsi){1to8},%zmm1,%zmm18
  403b5d:	62 e2 cd 58 b8 7e 10 	vfmadd231pd 0x80(%rsi){1to8},%zmm6,%zmm23
  403b64:	62 62 a5 58 b8 66 11 	vfmadd231pd 0x88(%rsi){1to8},%zmm11,%zmm28
  403b6b:	62 e2 ed 58 b8 5e 0f 	vfmadd231pd 0x78(%rsi){1to8},%zmm2,%zmm19
  403b72:	62 62 c5 58 b8 46 10 	vfmadd231pd 0x80(%rsi){1to8},%zmm7,%zmm24
  403b79:	62 62 9d 58 b8 6e 11 	vfmadd231pd 0x88(%rsi){1to8},%zmm12,%zmm29
  403b80:	62 e2 e5 58 b8 66 0f 	vfmadd231pd 0x78(%rsi){1to8},%zmm3,%zmm20
  403b87:	62 62 bd 58 b8 4e 10 	vfmadd231pd 0x80(%rsi){1to8},%zmm8,%zmm25
  403b8e:	62 62 95 58 b8 76 11 	vfmadd231pd 0x88(%rsi){1to8},%zmm13,%zmm30
  403b95:	62 e2 dd 58 b8 6e 0f 	vfmadd231pd 0x78(%rsi){1to8},%zmm4,%zmm21
  403b9c:	62 62 b5 58 b8 56 10 	vfmadd231pd 0x80(%rsi){1to8},%zmm9,%zmm26
  403ba3:	62 62 8d 58 b8 7e 11 	vfmadd231pd 0x88(%rsi){1to8},%zmm14,%zmm31
  403baa:	62 f1 fd 48 28 47 0f 	vmovapd 0x3c0(%rdi),%zmm0
  403bb1:	62 f1 fd 48 28 4f 10 	vmovapd 0x400(%rdi),%zmm1
  403bb8:	62 f1 fd 48 28 57 11 	vmovapd 0x440(%rdi),%zmm2
  403bbf:	62 f1 fd 48 28 5f 12 	vmovapd 0x480(%rdi),%zmm3
  403bc6:	62 f1 fd 48 28 67 13 	vmovapd 0x4c0(%rdi),%zmm4
  403bcd:	62 f1 fd 48 28 6f 14 	vmovapd 0x500(%rdi),%zmm5
  403bd4:	62 f1 fd 48 28 77 15 	vmovapd 0x540(%rdi),%zmm6
  403bdb:	62 f1 fd 48 28 7f 16 	vmovapd 0x580(%rdi),%zmm7
  403be2:	62 71 fd 48 28 47 17 	vmovapd 0x5c0(%rdi),%zmm8
  403be9:	62 71 fd 48 28 4f 18 	vmovapd 0x600(%rdi),%zmm9
  403bf0:	62 71 fd 48 28 57 19 	vmovapd 0x640(%rdi),%zmm10
  403bf7:	62 71 fd 48 28 5f 1a 	vmovapd 0x680(%rdi),%zmm11
  403bfe:	62 71 fd 48 28 67 1b 	vmovapd 0x6c0(%rdi),%zmm12
  403c05:	62 71 fd 48 28 6f 1c 	vmovapd 0x700(%rdi),%zmm13
  403c0c:	62 71 fd 48 28 77 1d 	vmovapd 0x740(%rdi),%zmm14
  403c13:	62 e2 fd 58 b8 4e 12 	vfmadd231pd 0x90(%rsi){1to8},%zmm0,%zmm17
  403c1a:	62 e2 fd 58 b8 76 14 	vfmadd231pd 0xa0(%rsi){1to8},%zmm0,%zmm22
  403c21:	62 62 fd 58 b8 5e 16 	vfmadd231pd 0xb0(%rsi){1to8},%zmm0,%zmm27
  403c28:	62 e2 d5 58 b8 76 15 	vfmadd231pd 0xa8(%rsi){1to8},%zmm5,%zmm22
  403c2f:	62 62 d5 58 b8 5e 17 	vfmadd231pd 0xb8(%rsi){1to8},%zmm5,%zmm27
  403c36:	62 e2 ad 58 b8 4e 13 	vfmadd231pd 0x98(%rsi){1to8},%zmm10,%zmm17
  403c3d:	62 62 ad 58 b8 5e 18 	vfmadd231pd 0xc0(%rsi){1to8},%zmm10,%zmm27
  403c44:	62 e2 f5 58 b8 56 12 	vfmadd231pd 0x90(%rsi){1to8},%zmm1,%zmm18
  403c4b:	62 e2 f5 58 b8 7e 14 	vfmadd231pd 0xa0(%rsi){1to8},%zmm1,%zmm23
  403c52:	62 62 f5 58 b8 66 16 	vfmadd231pd 0xb0(%rsi){1to8},%zmm1,%zmm28
  403c59:	62 e2 cd 58 b8 7e 15 	vfmadd231pd 0xa8(%rsi){1to8},%zmm6,%zmm23
  403c60:	62 62 cd 58 b8 66 17 	vfmadd231pd 0xb8(%rsi){1to8},%zmm6,%zmm28
  403c67:	62 e2 a5 58 b8 56 13 	vfmadd231pd 0x98(%rsi){1to8},%zmm11,%zmm18
  403c6e:	62 62 a5 58 b8 66 18 	vfmadd231pd 0xc0(%rsi){1to8},%zmm11,%zmm28
  403c75:	62 e2 ed 58 b8 5e 12 	vfmadd231pd 0x90(%rsi){1to8},%zmm2,%zmm19
  403c7c:	62 62 ed 58 b8 46 14 	vfmadd231pd 0xa0(%rsi){1to8},%zmm2,%zmm24
  403c83:	62 62 ed 58 b8 6e 16 	vfmadd231pd 0xb0(%rsi){1to8},%zmm2,%zmm29
  403c8a:	62 62 c5 58 b8 46 15 	vfmadd231pd 0xa8(%rsi){1to8},%zmm7,%zmm24
  403c91:	62 62 c5 58 b8 6e 17 	vfmadd231pd 0xb8(%rsi){1to8},%zmm7,%zmm29
  403c98:	62 e2 9d 58 b8 5e 13 	vfmadd231pd 0x98(%rsi){1to8},%zmm12,%zmm19
  403c9f:	62 62 9d 58 b8 6e 18 	vfmadd231pd 0xc0(%rsi){1to8},%zmm12,%zmm29
  403ca6:	62 e2 e5 58 b8 66 12 	vfmadd231pd 0x90(%rsi){1to8},%zmm3,%zmm20
  403cad:	62 62 e5 58 b8 4e 14 	vfmadd231pd 0xa0(%rsi){1to8},%zmm3,%zmm25
  403cb4:	62 62 e5 58 b8 76 16 	vfmadd231pd 0xb0(%rsi){1to8},%zmm3,%zmm30
  403cbb:	62 62 bd 58 b8 4e 15 	vfmadd231pd 0xa8(%rsi){1to8},%zmm8,%zmm25
  403cc2:	62 62 bd 58 b8 76 17 	vfmadd231pd 0xb8(%rsi){1to8},%zmm8,%zmm30
  403cc9:	62 e2 95 58 b8 66 13 	vfmadd231pd 0x98(%rsi){1to8},%zmm13,%zmm20
  403cd0:	62 62 95 58 b8 76 18 	vfmadd231pd 0xc0(%rsi){1to8},%zmm13,%zmm30
  403cd7:	62 e2 dd 58 b8 6e 12 	vfmadd231pd 0x90(%rsi){1to8},%zmm4,%zmm21
  403cde:	62 62 dd 58 b8 56 14 	vfmadd231pd 0xa0(%rsi){1to8},%zmm4,%zmm26
  403ce5:	62 62 dd 58 b8 7e 16 	vfmadd231pd 0xb0(%rsi){1to8},%zmm4,%zmm31
  403cec:	62 62 b5 58 b8 56 15 	vfmadd231pd 0xa8(%rsi){1to8},%zmm9,%zmm26
  403cf3:	62 62 b5 58 b8 7e 17 	vfmadd231pd 0xb8(%rsi){1to8},%zmm9,%zmm31
  403cfa:	62 e2 8d 58 b8 6e 13 	vfmadd231pd 0x98(%rsi){1to8},%zmm14,%zmm21
  403d01:	62 62 8d 58 b8 7e 18 	vfmadd231pd 0xc0(%rsi){1to8},%zmm14,%zmm31
  403d08:	62 e1 fd 48 29 0a    	vmovapd %zmm17,(%rdx)
  403d0e:	62 e1 fd 48 29 52 01 	vmovapd %zmm18,0x40(%rdx)
  403d15:	62 e1 fd 48 29 5a 02 	vmovapd %zmm19,0x80(%rdx)
  403d1c:	62 e1 fd 48 29 62 03 	vmovapd %zmm20,0xc0(%rdx)
  403d23:	62 e1 fd 48 29 6a 04 	vmovapd %zmm21,0x100(%rdx)
  403d2a:	62 e1 fd 48 29 72 05 	vmovapd %zmm22,0x140(%rdx)
  403d31:	62 e1 fd 48 29 7a 06 	vmovapd %zmm23,0x180(%rdx)
  403d38:	62 61 fd 48 29 42 07 	vmovapd %zmm24,0x1c0(%rdx)
  403d3f:	62 61 fd 48 29 4a 08 	vmovapd %zmm25,0x200(%rdx)
  403d46:	62 61 fd 48 29 52 09 	vmovapd %zmm26,0x240(%rdx)
  403d4d:	62 61 fd 48 29 5a 0a 	vmovapd %zmm27,0x280(%rdx)
  403d54:	62 61 fd 48 29 62 0b 	vmovapd %zmm28,0x2c0(%rdx)
  403d5b:	62 61 fd 48 29 6a 0c 	vmovapd %zmm29,0x300(%rdx)
  403d62:	62 61 fd 48 29 72 0d 	vmovapd %zmm30,0x340(%rdx)
  403d69:	62 61 fd 48 29 7a 0e 	vmovapd %zmm31,0x380(%rdx)
  403d70:	48 81 c2 c0 03 00 00 	add    $0x3c0,%rdx
  403d77:	62 e1 fd 48 28 0a    	vmovapd (%rdx),%zmm17
  403d7d:	62 e1 fd 48 28 52 01 	vmovapd 0x40(%rdx),%zmm18
  403d84:	62 e1 fd 48 28 5a 02 	vmovapd 0x80(%rdx),%zmm19
  403d8b:	62 e1 fd 48 28 62 03 	vmovapd 0xc0(%rdx),%zmm20
  403d92:	62 e1 fd 48 28 6a 04 	vmovapd 0x100(%rdx),%zmm21
  403d99:	62 e1 fd 48 28 72 05 	vmovapd 0x140(%rdx),%zmm22
  403da0:	62 e1 fd 48 28 7a 06 	vmovapd 0x180(%rdx),%zmm23
  403da7:	62 61 fd 48 28 42 07 	vmovapd 0x1c0(%rdx),%zmm24
  403dae:	62 61 fd 48 28 4a 08 	vmovapd 0x200(%rdx),%zmm25
  403db5:	62 61 fd 48 28 52 09 	vmovapd 0x240(%rdx),%zmm26
  403dbc:	62 61 fd 48 28 5a 0a 	vmovapd 0x280(%rdx),%zmm27
  403dc3:	62 61 fd 48 28 62 0b 	vmovapd 0x2c0(%rdx),%zmm28
  403dca:	62 61 fd 48 28 6a 0c 	vmovapd 0x300(%rdx),%zmm29
  403dd1:	62 61 fd 48 28 72 0d 	vmovapd 0x340(%rdx),%zmm30
  403dd8:	62 61 fd 48 28 7a 0e 	vmovapd 0x380(%rdx),%zmm31
  403ddf:	62 f1 fd 48 28 47 1e 	vmovapd 0x780(%rdi),%zmm0
  403de6:	62 f1 fd 48 28 4f 1f 	vmovapd 0x7c0(%rdi),%zmm1
  403ded:	62 f1 fd 48 28 57 20 	vmovapd 0x800(%rdi),%zmm2
  403df4:	62 f1 fd 48 28 5f 21 	vmovapd 0x840(%rdi),%zmm3
  403dfb:	62 f1 fd 48 28 67 22 	vmovapd 0x880(%rdi),%zmm4
  403e02:	62 f1 fd 48 28 6f 23 	vmovapd 0x8c0(%rdi),%zmm5
  403e09:	62 f1 fd 48 28 77 24 	vmovapd 0x900(%rdi),%zmm6
  403e10:	62 f1 fd 48 28 7f 25 	vmovapd 0x940(%rdi),%zmm7
  403e17:	62 71 fd 48 28 47 26 	vmovapd 0x980(%rdi),%zmm8
  403e1e:	62 71 fd 48 28 4f 27 	vmovapd 0x9c0(%rdi),%zmm9
  403e25:	62 71 fd 48 28 57 28 	vmovapd 0xa00(%rdi),%zmm10
  403e2c:	62 71 fd 48 28 5f 29 	vmovapd 0xa40(%rdi),%zmm11
  403e33:	62 71 fd 48 28 67 2a 	vmovapd 0xa80(%rdi),%zmm12
  403e3a:	62 71 fd 48 28 6f 2b 	vmovapd 0xac0(%rdi),%zmm13
  403e41:	62 71 fd 48 28 77 2c 	vmovapd 0xb00(%rdi),%zmm14
  403e48:	62 e2 fd 58 b8 4e 19 	vfmadd231pd 0xc8(%rsi){1to8},%zmm0,%zmm17
  403e4f:	62 e2 d5 58 b8 76 1a 	vfmadd231pd 0xd0(%rsi){1to8},%zmm5,%zmm22
  403e56:	62 62 ad 58 b8 5e 1b 	vfmadd231pd 0xd8(%rsi){1to8},%zmm10,%zmm27
  403e5d:	62 e2 f5 58 b8 56 19 	vfmadd231pd 0xc8(%rsi){1to8},%zmm1,%zmm18
  403e64:	62 e2 cd 58 b8 7e 1a 	vfmadd231pd 0xd0(%rsi){1to8},%zmm6,%zmm23
  403e6b:	62 62 a5 58 b8 66 1b 	vfmadd231pd 0xd8(%rsi){1to8},%zmm11,%zmm28
  403e72:	62 e2 ed 58 b8 5e 19 	vfmadd231pd 0xc8(%rsi){1to8},%zmm2,%zmm19
  403e79:	62 62 c5 58 b8 46 1a 	vfmadd231pd 0xd0(%rsi){1to8},%zmm7,%zmm24
  403e80:	62 62 9d 58 b8 6e 1b 	vfmadd231pd 0xd8(%rsi){1to8},%zmm12,%zmm29
  403e87:	62 e2 e5 58 b8 66 19 	vfmadd231pd 0xc8(%rsi){1to8},%zmm3,%zmm20
  403e8e:	62 62 bd 58 b8 4e 1a 	vfmadd231pd 0xd0(%rsi){1to8},%zmm8,%zmm25
  403e95:	62 62 95 58 b8 76 1b 	vfmadd231pd 0xd8(%rsi){1to8},%zmm13,%zmm30
  403e9c:	62 e2 dd 58 b8 6e 19 	vfmadd231pd 0xc8(%rsi){1to8},%zmm4,%zmm21
  403ea3:	62 62 b5 58 b8 56 1a 	vfmadd231pd 0xd0(%rsi){1to8},%zmm9,%zmm26
  403eaa:	62 62 8d 58 b8 7e 1b 	vfmadd231pd 0xd8(%rsi){1to8},%zmm14,%zmm31
  403eb1:	62 e1 fd 48 29 0a    	vmovapd %zmm17,(%rdx)
  403eb7:	62 e1 fd 48 29 52 01 	vmovapd %zmm18,0x40(%rdx)
  403ebe:	62 e1 fd 48 29 5a 02 	vmovapd %zmm19,0x80(%rdx)
  403ec5:	62 e1 fd 48 29 62 03 	vmovapd %zmm20,0xc0(%rdx)
  403ecc:	62 e1 fd 48 29 6a 04 	vmovapd %zmm21,0x100(%rdx)
  403ed3:	62 e1 fd 48 29 72 05 	vmovapd %zmm22,0x140(%rdx)
  403eda:	62 e1 fd 48 29 7a 06 	vmovapd %zmm23,0x180(%rdx)
  403ee1:	62 61 fd 48 29 42 07 	vmovapd %zmm24,0x1c0(%rdx)
  403ee8:	62 61 fd 48 29 4a 08 	vmovapd %zmm25,0x200(%rdx)
  403eef:	62 61 fd 48 29 52 09 	vmovapd %zmm26,0x240(%rdx)
  403ef6:	62 61 fd 48 29 5a 0a 	vmovapd %zmm27,0x280(%rdx)
  403efd:	62 61 fd 48 29 62 0b 	vmovapd %zmm28,0x2c0(%rdx)
  403f04:	62 61 fd 48 29 6a 0c 	vmovapd %zmm29,0x300(%rdx)
  403f0b:	62 61 fd 48 29 72 0d 	vmovapd %zmm30,0x340(%rdx)
  403f12:	62 61 fd 48 29 7a 0e 	vmovapd %zmm31,0x380(%rdx)
  403f19:	48 81 c2 c0 03 00 00 	add    $0x3c0,%rdx
  403f20:	62 e1 fd 48 28 0a    	vmovapd (%rdx),%zmm17
  403f26:	62 e1 fd 48 28 52 01 	vmovapd 0x40(%rdx),%zmm18
  403f2d:	62 e1 fd 48 28 5a 02 	vmovapd 0x80(%rdx),%zmm19
  403f34:	62 e1 fd 48 28 62 03 	vmovapd 0xc0(%rdx),%zmm20
  403f3b:	62 e1 fd 48 28 6a 04 	vmovapd 0x100(%rdx),%zmm21
  403f42:	62 e1 fd 48 28 72 05 	vmovapd 0x140(%rdx),%zmm22
  403f49:	62 e1 fd 48 28 7a 06 	vmovapd 0x180(%rdx),%zmm23
  403f50:	62 61 fd 48 28 42 07 	vmovapd 0x1c0(%rdx),%zmm24
  403f57:	62 61 fd 48 28 4a 08 	vmovapd 0x200(%rdx),%zmm25
  403f5e:	62 61 fd 48 28 52 09 	vmovapd 0x240(%rdx),%zmm26
  403f65:	62 61 fd 48 28 5a 0a 	vmovapd 0x280(%rdx),%zmm27
  403f6c:	62 61 fd 48 28 62 0b 	vmovapd 0x2c0(%rdx),%zmm28
  403f73:	62 61 fd 48 28 6a 0c 	vmovapd 0x300(%rdx),%zmm29
  403f7a:	62 61 fd 48 28 72 0d 	vmovapd 0x340(%rdx),%zmm30
  403f81:	62 61 fd 48 28 7a 0e 	vmovapd 0x380(%rdx),%zmm31
  403f88:	62 f1 fd 48 28 47 1e 	vmovapd 0x780(%rdi),%zmm0
  403f8f:	62 f1 fd 48 28 4f 1f 	vmovapd 0x7c0(%rdi),%zmm1
  403f96:	62 f1 fd 48 28 57 20 	vmovapd 0x800(%rdi),%zmm2
  403f9d:	62 f1 fd 48 28 5f 21 	vmovapd 0x840(%rdi),%zmm3
  403fa4:	62 f1 fd 48 28 67 22 	vmovapd 0x880(%rdi),%zmm4
  403fab:	62 f1 fd 48 28 6f 23 	vmovapd 0x8c0(%rdi),%zmm5
  403fb2:	62 f1 fd 48 28 77 24 	vmovapd 0x900(%rdi),%zmm6
  403fb9:	62 f1 fd 48 28 7f 25 	vmovapd 0x940(%rdi),%zmm7
  403fc0:	62 71 fd 48 28 47 26 	vmovapd 0x980(%rdi),%zmm8
  403fc7:	62 71 fd 48 28 4f 27 	vmovapd 0x9c0(%rdi),%zmm9
  403fce:	62 71 fd 48 28 57 28 	vmovapd 0xa00(%rdi),%zmm10
  403fd5:	62 71 fd 48 28 5f 29 	vmovapd 0xa40(%rdi),%zmm11
  403fdc:	62 71 fd 48 28 67 2a 	vmovapd 0xa80(%rdi),%zmm12
  403fe3:	62 71 fd 48 28 6f 2b 	vmovapd 0xac0(%rdi),%zmm13
  403fea:	62 71 fd 48 28 77 2c 	vmovapd 0xb00(%rdi),%zmm14
  403ff1:	62 e2 fd 58 b8 4e 1c 	vfmadd231pd 0xe0(%rsi){1to8},%zmm0,%zmm17
  403ff8:	62 62 fd 58 b8 5e 20 	vfmadd231pd 0x100(%rsi){1to8},%zmm0,%zmm27
  403fff:	62 e2 d5 58 b8 4e 1d 	vfmadd231pd 0xe8(%rsi){1to8},%zmm5,%zmm17
  404006:	62 e2 d5 58 b8 76 1e 	vfmadd231pd 0xf0(%rsi){1to8},%zmm5,%zmm22
  40400d:	62 e2 ad 58 b8 76 1f 	vfmadd231pd 0xf8(%rsi){1to8},%zmm10,%zmm22
  404014:	62 62 ad 58 b8 5e 21 	vfmadd231pd 0x108(%rsi){1to8},%zmm10,%zmm27
  40401b:	62 e2 f5 58 b8 56 1c 	vfmadd231pd 0xe0(%rsi){1to8},%zmm1,%zmm18
  404022:	62 62 f5 58 b8 66 20 	vfmadd231pd 0x100(%rsi){1to8},%zmm1,%zmm28
  404029:	62 e2 cd 58 b8 56 1d 	vfmadd231pd 0xe8(%rsi){1to8},%zmm6,%zmm18
  404030:	62 e2 cd 58 b8 7e 1e 	vfmadd231pd 0xf0(%rsi){1to8},%zmm6,%zmm23
  404037:	62 e2 a5 58 b8 7e 1f 	vfmadd231pd 0xf8(%rsi){1to8},%zmm11,%zmm23
  40403e:	62 62 a5 58 b8 66 21 	vfmadd231pd 0x108(%rsi){1to8},%zmm11,%zmm28
  404045:	62 e2 ed 58 b8 5e 1c 	vfmadd231pd 0xe0(%rsi){1to8},%zmm2,%zmm19
  40404c:	62 62 ed 58 b8 6e 20 	vfmadd231pd 0x100(%rsi){1to8},%zmm2,%zmm29
  404053:	62 e2 c5 58 b8 5e 1d 	vfmadd231pd 0xe8(%rsi){1to8},%zmm7,%zmm19
  40405a:	62 62 c5 58 b8 46 1e 	vfmadd231pd 0xf0(%rsi){1to8},%zmm7,%zmm24
  404061:	62 62 9d 58 b8 46 1f 	vfmadd231pd 0xf8(%rsi){1to8},%zmm12,%zmm24
  404068:	62 62 9d 58 b8 6e 21 	vfmadd231pd 0x108(%rsi){1to8},%zmm12,%zmm29
  40406f:	62 e2 e5 58 b8 66 1c 	vfmadd231pd 0xe0(%rsi){1to8},%zmm3,%zmm20
  404076:	62 62 e5 58 b8 76 20 	vfmadd231pd 0x100(%rsi){1to8},%zmm3,%zmm30
  40407d:	62 e2 bd 58 b8 66 1d 	vfmadd231pd 0xe8(%rsi){1to8},%zmm8,%zmm20
  404084:	62 62 bd 58 b8 4e 1e 	vfmadd231pd 0xf0(%rsi){1to8},%zmm8,%zmm25
  40408b:	62 62 95 58 b8 4e 1f 	vfmadd231pd 0xf8(%rsi){1to8},%zmm13,%zmm25
  404092:	62 62 95 58 b8 76 21 	vfmadd231pd 0x108(%rsi){1to8},%zmm13,%zmm30
  404099:	62 e2 dd 58 b8 6e 1c 	vfmadd231pd 0xe0(%rsi){1to8},%zmm4,%zmm21
  4040a0:	62 62 dd 58 b8 7e 20 	vfmadd231pd 0x100(%rsi){1to8},%zmm4,%zmm31
  4040a7:	62 e2 b5 58 b8 6e 1d 	vfmadd231pd 0xe8(%rsi){1to8},%zmm9,%zmm21
  4040ae:	62 62 b5 58 b8 56 1e 	vfmadd231pd 0xf0(%rsi){1to8},%zmm9,%zmm26
  4040b5:	62 62 8d 58 b8 56 1f 	vfmadd231pd 0xf8(%rsi){1to8},%zmm14,%zmm26
  4040bc:	62 62 8d 58 b8 7e 21 	vfmadd231pd 0x108(%rsi){1to8},%zmm14,%zmm31
  4040c3:	62 e1 fd 48 29 0a    	vmovapd %zmm17,(%rdx)
  4040c9:	62 e1 fd 48 29 52 01 	vmovapd %zmm18,0x40(%rdx)
  4040d0:	62 e1 fd 48 29 5a 02 	vmovapd %zmm19,0x80(%rdx)
  4040d7:	62 e1 fd 48 29 62 03 	vmovapd %zmm20,0xc0(%rdx)
  4040de:	62 e1 fd 48 29 6a 04 	vmovapd %zmm21,0x100(%rdx)
  4040e5:	62 e1 fd 48 29 72 05 	vmovapd %zmm22,0x140(%rdx)
  4040ec:	62 e1 fd 48 29 7a 06 	vmovapd %zmm23,0x180(%rdx)
  4040f3:	62 61 fd 48 29 42 07 	vmovapd %zmm24,0x1c0(%rdx)
  4040fa:	62 61 fd 48 29 4a 08 	vmovapd %zmm25,0x200(%rdx)
  404101:	62 61 fd 48 29 52 09 	vmovapd %zmm26,0x240(%rdx)
  404108:	62 61 fd 48 29 5a 0a 	vmovapd %zmm27,0x280(%rdx)
  40410f:	62 61 fd 48 29 62 0b 	vmovapd %zmm28,0x2c0(%rdx)
  404116:	62 61 fd 48 29 6a 0c 	vmovapd %zmm29,0x300(%rdx)
  40411d:	62 61 fd 48 29 72 0d 	vmovapd %zmm30,0x340(%rdx)
  404124:	62 61 fd 48 29 7a 0e 	vmovapd %zmm31,0x380(%rdx)
  40412b:	48 81 c7 40 01 00 00 	add    $0x140,%rdi
  404132:	48 81 c2 40 f2 ff ff 	add    $0xfffffffffffff240,%rdx
  404139:	49 83 c4 01          	add    $0x1,%r12
  40413d:	49 83 fc 01          	cmp    $0x1,%r12
  404141:	0f 8c a2 f4 ff ff    	jl     4035e9 <LOOP_TOP_1_2>
  404147:	4c 8b 64 24 f0       	mov    -0x10(%rsp),%r12
  40414c:	c3                   	retq   

000000000040414d <_Z14test_general_8v>:
  40414d:	48 81 ec c8 00 00 00 	sub    $0xc8,%rsp
  404154:	48 89 ac 24 b8 00 00 	mov    %rbp,0xb8(%rsp)
  40415b:	00 
  40415c:	4c 89 a4 24 b0 00 00 	mov    %r12,0xb0(%rsp)
  404163:	00 
  404164:	41 bc 28 a2 60 00    	mov    $0x60a228,%r12d
  40416a:	6a 28                	pushq  $0x28
  40416c:	5d                   	pop    %rbp
  40416d:	48 8d 04 24          	lea    (%rsp),%rax
  404171:	4c 89 20             	mov    %r12,(%rax)
  404174:	48 8d 78 18          	lea    0x18(%rax),%rdi
  404178:	89 68 10             	mov    %ebp,0x10(%rax)
  40417b:	6a 40                	pushq  $0x40
  40417d:	5e                   	pop    %rsi
  40417e:	89 68 08             	mov    %ebp,0x8(%rax)
  404181:	ba 40 0b 00 00       	mov    $0xb40,%edx
  404186:	c7 40 0c 09 00 00 00 	movl   $0x9,0xc(%rax)
  40418d:	e8 4e d4 ff ff       	callq  4015e0 <posix_memalign@plt>
  404192:	48 8d 3c 24          	lea    (%rsp),%rdi
  404196:	e8 81 17 00 00       	callq  40591c <_ZN11DenseMatrix4zeroEv>
  40419b:	48 8d 3c 24          	lea    (%rsp),%rdi
  40419f:	e8 d4 17 00 00       	callq  405978 <_ZN11DenseMatrix6randomEv>
  4041a4:	48 8d 7c 24 60       	lea    0x60(%rsp),%rdi
  4041a9:	be c8 6c 40 00       	mov    $0x406cc8,%esi
  4041ae:	e8 49 18 00 00       	callq  4059fc <_ZN11DenseMatrixC1EPKc>
  4041b3:	48 8d bc 24 80 00 00 	lea    0x80(%rsp),%rdi
  4041ba:	00 
  4041bb:	6a 03                	pushq  $0x3
  4041bd:	5a                   	pop    %rdx
  4041be:	48 8d 77 e0          	lea    -0x20(%rdi),%rsi
  4041c2:	89 d1                	mov    %edx,%ecx
  4041c4:	e8 9a ef ff ff       	callq  403163 <_Z7to_bcscRK6Matrixii>
  4041c9:	48 8d 44 24 40       	lea    0x40(%rsp),%rax
  4041ce:	4c 89 20             	mov    %r12,(%rax)
  4041d1:	48 8d 78 18          	lea    0x18(%rax),%rdi
  4041d5:	89 68 10             	mov    %ebp,0x10(%rax)
  4041d8:	6a 40                	pushq  $0x40
  4041da:	5e                   	pop    %rsi
  4041db:	89 68 08             	mov    %ebp,0x8(%rax)
  4041de:	ba c0 12 00 00       	mov    $0x12c0,%edx
  4041e3:	c7 40 0c 0f 00 00 00 	movl   $0xf,0xc(%rax)
  4041ea:	e8 f1 d3 ff ff       	callq  4015e0 <posix_memalign@plt>
  4041ef:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  4041f4:	e8 23 17 00 00       	callq  40591c <_ZN11DenseMatrix4zeroEv>
  4041f9:	48 8d 44 24 20       	lea    0x20(%rsp),%rax
  4041fe:	4c 89 20             	mov    %r12,(%rax)
  404201:	48 8d 78 18          	lea    0x18(%rax),%rdi
  404205:	89 68 10             	mov    %ebp,0x10(%rax)
  404208:	6a 40                	pushq  $0x40
  40420a:	5e                   	pop    %rsi
  40420b:	89 68 08             	mov    %ebp,0x8(%rax)
  40420e:	ba c0 12 00 00       	mov    $0x12c0,%edx
  404213:	c7 40 0c 0f 00 00 00 	movl   $0xf,0xc(%rax)
  40421a:	e8 c1 d3 ff ff       	callq  4015e0 <posix_memalign@plt>
  40421f:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
  404224:	e8 f3 16 00 00       	callq  40591c <_ZN11DenseMatrix4zeroEv>
  404229:	48 8d 3c 24          	lea    (%rsp),%rdi
  40422d:	48 8d 77 60          	lea    0x60(%rdi),%rsi
  404231:	48 8d 56 e0          	lea    -0x20(%rsi),%rdx
  404235:	e8 d9 e1 ff ff       	callq  402413 <_Z4gemmRK6MatrixS1_RS_>
  40423a:	48 8d bc 24 80 00 00 	lea    0x80(%rsp),%rdi
  404241:	00 
  404242:	e8 63 1a 00 00       	callq  405caa <_ZNKSt10unique_ptrI12SparseMatrixSt14default_deleteIS0_EEptEv>
  404247:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
  40424c:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
  404251:	48 8b 70 18          	mov    0x18(%rax),%rsi
  404255:	e8 6e 01 00 00       	callq  4043c8 <_Z9general_8PKdS0_Pd>
  40425a:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  40425f:	48 8d 77 e0          	lea    -0x20(%rdi),%rsi
  404263:	e8 09 df ff ff       	callq  402171 <_Z13assert_equalsRK6MatrixS1_>
  404268:	31 ff                	xor    %edi,%edi
  40426a:	83 c7 01             	add    $0x1,%edi
  40426d:	48 8d b4 24 90 00 00 	lea    0x90(%rsp),%rsi
  404274:	00 
  404275:	e8 96 d4 ff ff       	callq  401710 <clock_gettime@plt>
  40427a:	31 ed                	xor    %ebp,%ebp
  40427c:	48 8d bc 24 80 00 00 	lea    0x80(%rsp),%rdi
  404283:	00 
  404284:	e8 21 1a 00 00       	callq  405caa <_ZNKSt10unique_ptrI12SparseMatrixSt14default_deleteIS0_EEptEv>
  404289:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
  40428e:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
  404293:	48 8b 70 18          	mov    0x18(%rax),%rsi
  404297:	e8 2c 01 00 00       	callq  4043c8 <_Z9general_8PKdS0_Pd>
  40429c:	83 c5 01             	add    $0x1,%ebp
  40429f:	81 fd b8 0b 00 00    	cmp    $0xbb8,%ebp
  4042a5:	7c d5                	jl     40427c <_Z14test_general_8v+0x12f>
  4042a7:	31 ff                	xor    %edi,%edi
  4042a9:	83 c7 01             	add    $0x1,%edi
  4042ac:	48 8d b4 24 a0 00 00 	lea    0xa0(%rsp),%rsi
  4042b3:	00 
  4042b4:	e8 57 d4 ff ff       	callq  401710 <clock_gettime@plt>
  4042b9:	bf a0 a2 60 00       	mov    $0x60a2a0,%edi
  4042be:	be a0 6d 40 00       	mov    $0x406da0,%esi
  4042c3:	e8 78 d3 ff ff       	callq  401640 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  4042c8:	48 89 c5             	mov    %rax,%rbp
  4042cb:	48 8d 84 24 90 00 00 	lea    0x90(%rsp),%rax
  4042d2:	00 
  4042d3:	48 8d 8c 24 a0 00 00 	lea    0xa0(%rsp),%rcx
  4042da:	00 
  4042db:	48 8b 38             	mov    (%rax),%rdi
  4042de:	48 8b 70 08          	mov    0x8(%rax),%rsi
  4042e2:	48 8b 11             	mov    (%rcx),%rdx
  4042e5:	48 8b 49 08          	mov    0x8(%rcx),%rcx
  4042e9:	e8 12 e2 ff ff       	callq  402500 <_Z9microsecs8timespecS_>
  4042ee:	c5 fb 5e 05 b2 29 00 	vdivsd 0x29b2(%rip),%xmm0,%xmm0        # 406ca8 <_IO_stdin_used+0x8>
  4042f5:	00 
  4042f6:	48 89 ef             	mov    %rbp,%rdi
  4042f9:	e8 02 d5 ff ff       	callq  401800 <_ZNSolsEd@plt>
  4042fe:	48 89 c7             	mov    %rax,%rdi
  404301:	be c0 15 40 00       	mov    $0x4015c0,%esi
  404306:	e8 65 d3 ff ff       	callq  401670 <_ZNSolsEPFRSoS_E@plt>
  40430b:	48 8b 7c 24 38       	mov    0x38(%rsp),%rdi
  404310:	4c 89 64 24 20       	mov    %r12,0x20(%rsp)
  404315:	e8 b6 d3 ff ff       	callq  4016d0 <free@plt>
  40431a:	48 8b 7c 24 58       	mov    0x58(%rsp),%rdi
  40431f:	4c 89 64 24 40       	mov    %r12,0x40(%rsp)
  404324:	e8 a7 d3 ff ff       	callq  4016d0 <free@plt>
  404329:	48 8d bc 24 80 00 00 	lea    0x80(%rsp),%rdi
  404330:	00 
  404331:	e8 80 19 00 00       	callq  405cb6 <_ZNSt10unique_ptrI12SparseMatrixSt14default_deleteIS0_EED1Ev>
  404336:	48 8b 7c 24 78       	mov    0x78(%rsp),%rdi
  40433b:	4c 89 64 24 60       	mov    %r12,0x60(%rsp)
  404340:	e8 8b d3 ff ff       	callq  4016d0 <free@plt>
  404345:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
  40434a:	4c 89 24 24          	mov    %r12,(%rsp)
  40434e:	e8 7d d3 ff ff       	callq  4016d0 <free@plt>
  404353:	48 8b ac 24 b8 00 00 	mov    0xb8(%rsp),%rbp
  40435a:	00 
  40435b:	4c 8b a4 24 b0 00 00 	mov    0xb0(%rsp),%r12
  404362:	00 
  404363:	48 81 c4 c8 00 00 00 	add    $0xc8,%rsp
  40436a:	c3                   	retq   
  40436b:	48 89 84 24 88 00 00 	mov    %rax,0x88(%rsp)
  404372:	00 
  404373:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
  404378:	e8 e7 15 00 00       	callq  405964 <_ZN11DenseMatrixD1Ev>
  40437d:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  404382:	e8 dd 15 00 00       	callq  405964 <_ZN11DenseMatrixD1Ev>
  404387:	48 8d bc 24 80 00 00 	lea    0x80(%rsp),%rdi
  40438e:	00 
  40438f:	e8 22 19 00 00       	callq  405cb6 <_ZNSt10unique_ptrI12SparseMatrixSt14default_deleteIS0_EED1Ev>
  404394:	48 8d 7c 24 60       	lea    0x60(%rsp),%rdi
  404399:	e8 c6 15 00 00       	callq  405964 <_ZN11DenseMatrixD1Ev>
  40439e:	48 8d 3c 24          	lea    (%rsp),%rdi
  4043a2:	e8 bd 15 00 00       	callq  405964 <_ZN11DenseMatrixD1Ev>
  4043a7:	48 8b bc 24 88 00 00 	mov    0x88(%rsp),%rdi
  4043ae:	00 
  4043af:	e8 1c d4 ff ff       	callq  4017d0 <_Unwind_Resume@plt>
  4043b4:	48 89 84 24 88 00 00 	mov    %rax,0x88(%rsp)
  4043bb:	00 
  4043bc:	eb d6                	jmp    404394 <_Z14test_general_8v+0x247>
  4043be:	48 89 84 24 88 00 00 	mov    %rax,0x88(%rsp)
  4043c5:	00 
  4043c6:	eb d6                	jmp    40439e <_Z14test_general_8v+0x251>

00000000004043c8 <_Z9general_8PKdS0_Pd>:
  4043c8:	48 89 7c 24 e8       	mov    %rdi,-0x18(%rsp)
  4043cd:	48 89 74 24 f0       	mov    %rsi,-0x10(%rsp)
  4043d2:	48 89 54 24 f8       	mov    %rdx,-0x8(%rsp)
  4043d7:	48 8b 7c 24 e8       	mov    -0x18(%rsp),%rdi
  4043dc:	48 8b 74 24 f0       	mov    -0x10(%rsp),%rsi
  4043e1:	48 8b 54 24 f8       	mov    -0x8(%rsp),%rdx
  4043e6:	e9 07 01 00 00       	jmpq   4044f2 <END_SWITCH_3>

00000000004043eb <CASE_1_3>:
  4043eb:	62 f1 fd 48 28 07    	vmovapd (%rdi),%zmm0
  4043f1:	62 f1 fd 48 28 4f 05 	vmovapd 0x140(%rdi),%zmm1
  4043f8:	62 f1 fd 48 28 57 0a 	vmovapd 0x280(%rdi),%zmm2
  4043ff:	62 62 fd 58 b8 2e    	vfmadd231pd (%rsi){1to8},%zmm0,%zmm29
  404405:	62 62 fd 58 b8 76 03 	vfmadd231pd 0x18(%rsi){1to8},%zmm0,%zmm30
  40440c:	62 62 fd 58 b8 7e 06 	vfmadd231pd 0x30(%rsi){1to8},%zmm0,%zmm31
  404413:	62 62 f5 58 b8 6e 01 	vfmadd231pd 0x8(%rsi){1to8},%zmm1,%zmm29
  40441a:	62 62 f5 58 b8 76 04 	vfmadd231pd 0x20(%rsi){1to8},%zmm1,%zmm30
  404421:	62 62 f5 58 b8 7e 07 	vfmadd231pd 0x38(%rsi){1to8},%zmm1,%zmm31
  404428:	62 62 ed 58 b8 6e 02 	vfmadd231pd 0x10(%rsi){1to8},%zmm2,%zmm29
  40442f:	62 62 ed 58 b8 76 05 	vfmadd231pd 0x28(%rsi){1to8},%zmm2,%zmm30
  404436:	62 62 ed 58 b8 7e 08 	vfmadd231pd 0x40(%rsi){1to8},%zmm2,%zmm31
  40443d:	41 ff e2             	jmpq   *%r10

0000000000404440 <CASE_2_3>:
  404440:	62 f1 fd 48 28 07    	vmovapd (%rdi),%zmm0
  404446:	62 f1 fd 48 28 4f 05 	vmovapd 0x140(%rdi),%zmm1
  40444d:	62 f1 fd 48 28 57 0a 	vmovapd 0x280(%rdi),%zmm2
  404454:	62 62 fd 58 b8 2e    	vfmadd231pd (%rsi){1to8},%zmm0,%zmm29
  40445a:	62 62 fd 58 b8 7e 04 	vfmadd231pd 0x20(%rsi){1to8},%zmm0,%zmm31
  404461:	62 62 f5 58 b8 6e 01 	vfmadd231pd 0x8(%rsi){1to8},%zmm1,%zmm29
  404468:	62 62 f5 58 b8 76 02 	vfmadd231pd 0x10(%rsi){1to8},%zmm1,%zmm30
  40446f:	62 62 ed 58 b8 76 03 	vfmadd231pd 0x18(%rsi){1to8},%zmm2,%zmm30
  404476:	62 62 ed 58 b8 7e 05 	vfmadd231pd 0x28(%rsi){1to8},%zmm2,%zmm31
  40447d:	41 ff e2             	jmpq   *%r10

0000000000404480 <CASE_3_3>:
  404480:	62 f1 fd 48 28 07    	vmovapd (%rdi),%zmm0
  404486:	62 f1 fd 48 28 4f 05 	vmovapd 0x140(%rdi),%zmm1
  40448d:	62 f1 fd 48 28 57 0a 	vmovapd 0x280(%rdi),%zmm2
  404494:	62 62 fd 58 b8 2e    	vfmadd231pd (%rsi){1to8},%zmm0,%zmm29
  40449a:	62 62 f5 58 b8 76 01 	vfmadd231pd 0x8(%rsi){1to8},%zmm1,%zmm30
  4044a1:	62 62 ed 58 b8 7e 02 	vfmadd231pd 0x10(%rsi){1to8},%zmm2,%zmm31
  4044a8:	41 ff e2             	jmpq   *%r10

00000000004044ab <CASE_4_3>:
  4044ab:	62 f1 fd 48 28 07    	vmovapd (%rdi),%zmm0
  4044b1:	62 f1 fd 48 28 4f 05 	vmovapd 0x140(%rdi),%zmm1
  4044b8:	62 f1 fd 48 28 57 0a 	vmovapd 0x280(%rdi),%zmm2
  4044bf:	62 62 fd 58 b8 2e    	vfmadd231pd (%rsi){1to8},%zmm0,%zmm29
  4044c5:	62 62 fd 58 b8 76 02 	vfmadd231pd 0x10(%rsi){1to8},%zmm0,%zmm30
  4044cc:	62 62 fd 58 b8 7e 04 	vfmadd231pd 0x20(%rsi){1to8},%zmm0,%zmm31
  4044d3:	62 62 f5 58 b8 76 03 	vfmadd231pd 0x18(%rsi){1to8},%zmm1,%zmm30
  4044da:	62 62 f5 58 b8 7e 05 	vfmadd231pd 0x28(%rsi){1to8},%zmm1,%zmm31
  4044e1:	62 62 ed 58 b8 6e 01 	vfmadd231pd 0x8(%rsi){1to8},%zmm2,%zmm29
  4044e8:	62 62 ed 58 b8 7e 06 	vfmadd231pd 0x30(%rsi){1to8},%zmm2,%zmm31
  4044ef:	41 ff e2             	jmpq   *%r10

00000000004044f2 <END_SWITCH_3>:
  4044f2:	48 83 c2 00          	add    $0x0,%rdx
  4044f6:	62 61 fd 48 28 2a    	vmovapd (%rdx),%zmm29
  4044fc:	62 61 fd 48 28 72 05 	vmovapd 0x140(%rdx),%zmm30
  404503:	62 61 fd 48 28 7a 0a 	vmovapd 0x280(%rdx),%zmm31
  40450a:	49 c7 c2 21 45 40 00 	mov    $0x404521,%r10
  404511:	48 83 c6 00          	add    $0x0,%rsi
  404515:	48 81 c7 80 07 00 00 	add    $0x780,%rdi
  40451c:	e9 ca fe ff ff       	jmpq   4043eb <CASE_1_3>

0000000000404521 <BLOCK_0_0_2_3>:
  404521:	62 61 fd 48 29 2a    	vmovapd %zmm29,(%rdx)
  404527:	62 61 fd 48 29 72 05 	vmovapd %zmm30,0x140(%rdx)
  40452e:	62 61 fd 48 29 7a 0a 	vmovapd %zmm31,0x280(%rdx)
  404535:	48 81 c2 c0 03 00 00 	add    $0x3c0,%rdx
  40453c:	62 61 fd 48 28 2a    	vmovapd (%rdx),%zmm29
  404542:	62 61 fd 48 28 72 05 	vmovapd 0x140(%rdx),%zmm30
  404549:	62 61 fd 48 28 7a 0a 	vmovapd 0x280(%rdx),%zmm31
  404550:	49 c7 c2 64 45 40 00 	mov    $0x404564,%r10
  404557:	48 83 c6 48          	add    $0x48,%rsi
  40455b:	48 83 c7 00          	add    $0x0,%rdi
  40455f:	e9 dc fe ff ff       	jmpq   404440 <CASE_2_3>

0000000000404564 <BLOCK_0_1_2_3>:
  404564:	62 61 fd 48 29 2a    	vmovapd %zmm29,(%rdx)
  40456a:	62 61 fd 48 29 72 05 	vmovapd %zmm30,0x140(%rdx)
  404571:	62 61 fd 48 29 7a 0a 	vmovapd %zmm31,0x280(%rdx)
  404578:	48 81 c2 c0 03 00 00 	add    $0x3c0,%rdx
  40457f:	62 61 fd 48 28 2a    	vmovapd (%rdx),%zmm29
  404585:	62 61 fd 48 28 72 05 	vmovapd 0x140(%rdx),%zmm30
  40458c:	62 61 fd 48 28 7a 0a 	vmovapd 0x280(%rdx),%zmm31
  404593:	49 c7 c2 aa 45 40 00 	mov    $0x4045aa,%r10
  40459a:	48 83 c6 30          	add    $0x30,%rsi
  40459e:	48 81 c7 80 f8 ff ff 	add    $0xfffffffffffff880,%rdi
  4045a5:	e9 d6 fe ff ff       	jmpq   404480 <CASE_3_3>

00000000004045aa <BLOCK_0_2_0_3>:
  4045aa:	49 c7 c2 c1 45 40 00 	mov    $0x4045c1,%r10
  4045b1:	48 83 c6 18          	add    $0x18,%rsi
  4045b5:	48 81 c7 c0 03 00 00 	add    $0x3c0,%rdi
  4045bc:	e9 ea fe ff ff       	jmpq   4044ab <CASE_4_3>

00000000004045c1 <BLOCK_0_2_1_3>:
  4045c1:	62 61 fd 48 29 2a    	vmovapd %zmm29,(%rdx)
  4045c7:	62 61 fd 48 29 72 05 	vmovapd %zmm30,0x140(%rdx)
  4045ce:	62 61 fd 48 29 7a 0a 	vmovapd %zmm31,0x280(%rdx)
  4045d5:	48 81 c2 c0 03 00 00 	add    $0x3c0,%rdx
  4045dc:	62 61 fd 48 28 2a    	vmovapd (%rdx),%zmm29
  4045e2:	62 61 fd 48 28 72 05 	vmovapd 0x140(%rdx),%zmm30
  4045e9:	62 61 fd 48 28 7a 0a 	vmovapd 0x280(%rdx),%zmm31
  4045f0:	49 c7 c2 07 46 40 00 	mov    $0x404607,%r10
  4045f7:	48 83 c6 38          	add    $0x38,%rsi
  4045fb:	48 81 c7 c0 03 00 00 	add    $0x3c0,%rdi
  404602:	e9 79 fe ff ff       	jmpq   404480 <CASE_3_3>

0000000000404607 <BLOCK_0_3_2_3>:
  404607:	62 61 fd 48 29 2a    	vmovapd %zmm29,(%rdx)
  40460d:	62 61 fd 48 29 72 05 	vmovapd %zmm30,0x140(%rdx)
  404614:	62 61 fd 48 29 7a 0a 	vmovapd %zmm31,0x280(%rdx)
  40461b:	48 81 c2 c0 03 00 00 	add    $0x3c0,%rdx
  404622:	62 61 fd 48 28 2a    	vmovapd (%rdx),%zmm29
  404628:	62 61 fd 48 28 72 05 	vmovapd 0x140(%rdx),%zmm30
  40462f:	62 61 fd 48 28 7a 0a 	vmovapd 0x280(%rdx),%zmm31
  404636:	49 c7 c2 4a 46 40 00 	mov    $0x40464a,%r10
  40463d:	48 83 c6 18          	add    $0x18,%rsi
  404641:	48 83 c7 00          	add    $0x0,%rdi
  404645:	e9 f6 fd ff ff       	jmpq   404440 <CASE_2_3>

000000000040464a <BLOCK_0_4_2_3>:
  40464a:	62 61 fd 48 29 2a    	vmovapd %zmm29,(%rdx)
  404650:	62 61 fd 48 29 72 05 	vmovapd %zmm30,0x140(%rdx)
  404657:	62 61 fd 48 29 7a 0a 	vmovapd %zmm31,0x280(%rdx)
  40465e:	48 81 c2 40 f1 ff ff 	add    $0xfffffffffffff140,%rdx
  404665:	62 61 fd 48 28 2a    	vmovapd (%rdx),%zmm29
  40466b:	62 61 fd 48 28 72 05 	vmovapd 0x140(%rdx),%zmm30
  404672:	62 61 fd 48 28 7a 0a 	vmovapd 0x280(%rdx),%zmm31
  404679:	49 c7 c2 90 46 40 00 	mov    $0x404690,%r10
  404680:	48 81 c6 20 ff ff ff 	add    $0xffffffffffffff20,%rsi
  404687:	48 83 c7 40          	add    $0x40,%rdi
  40468b:	e9 5b fd ff ff       	jmpq   4043eb <CASE_1_3>

0000000000404690 <BLOCK_1_0_2_3>:
  404690:	62 61 fd 48 29 2a    	vmovapd %zmm29,(%rdx)
  404696:	62 61 fd 48 29 72 05 	vmovapd %zmm30,0x140(%rdx)
  40469d:	62 61 fd 48 29 7a 0a 	vmovapd %zmm31,0x280(%rdx)
  4046a4:	48 81 c2 c0 03 00 00 	add    $0x3c0,%rdx
  4046ab:	62 61 fd 48 28 2a    	vmovapd (%rdx),%zmm29
  4046b1:	62 61 fd 48 28 72 05 	vmovapd 0x140(%rdx),%zmm30
  4046b8:	62 61 fd 48 28 7a 0a 	vmovapd 0x280(%rdx),%zmm31
  4046bf:	49 c7 c2 d3 46 40 00 	mov    $0x4046d3,%r10
  4046c6:	48 83 c6 48          	add    $0x48,%rsi
  4046ca:	48 83 c7 00          	add    $0x0,%rdi
  4046ce:	e9 6d fd ff ff       	jmpq   404440 <CASE_2_3>

00000000004046d3 <BLOCK_1_1_2_3>:
  4046d3:	62 61 fd 48 29 2a    	vmovapd %zmm29,(%rdx)
  4046d9:	62 61 fd 48 29 72 05 	vmovapd %zmm30,0x140(%rdx)
  4046e0:	62 61 fd 48 29 7a 0a 	vmovapd %zmm31,0x280(%rdx)
  4046e7:	48 81 c2 c0 03 00 00 	add    $0x3c0,%rdx
  4046ee:	62 61 fd 48 28 2a    	vmovapd (%rdx),%zmm29
  4046f4:	62 61 fd 48 28 72 05 	vmovapd 0x140(%rdx),%zmm30
  4046fb:	62 61 fd 48 28 7a 0a 	vmovapd 0x280(%rdx),%zmm31
  404702:	49 c7 c2 19 47 40 00 	mov    $0x404719,%r10
  404709:	48 83 c6 30          	add    $0x30,%rsi
  40470d:	48 81 c7 80 f8 ff ff 	add    $0xfffffffffffff880,%rdi
  404714:	e9 67 fd ff ff       	jmpq   404480 <CASE_3_3>

0000000000404719 <BLOCK_1_2_0_3>:
  404719:	49 c7 c2 30 47 40 00 	mov    $0x404730,%r10
  404720:	48 83 c6 18          	add    $0x18,%rsi
  404724:	48 81 c7 c0 03 00 00 	add    $0x3c0,%rdi
  40472b:	e9 7b fd ff ff       	jmpq   4044ab <CASE_4_3>

0000000000404730 <BLOCK_1_2_1_3>:
  404730:	62 61 fd 48 29 2a    	vmovapd %zmm29,(%rdx)
  404736:	62 61 fd 48 29 72 05 	vmovapd %zmm30,0x140(%rdx)
  40473d:	62 61 fd 48 29 7a 0a 	vmovapd %zmm31,0x280(%rdx)
  404744:	48 81 c2 c0 03 00 00 	add    $0x3c0,%rdx
  40474b:	62 61 fd 48 28 2a    	vmovapd (%rdx),%zmm29
  404751:	62 61 fd 48 28 72 05 	vmovapd 0x140(%rdx),%zmm30
  404758:	62 61 fd 48 28 7a 0a 	vmovapd 0x280(%rdx),%zmm31
  40475f:	49 c7 c2 76 47 40 00 	mov    $0x404776,%r10
  404766:	48 83 c6 38          	add    $0x38,%rsi
  40476a:	48 81 c7 c0 03 00 00 	add    $0x3c0,%rdi
  404771:	e9 0a fd ff ff       	jmpq   404480 <CASE_3_3>

0000000000404776 <BLOCK_1_3_2_3>:
  404776:	62 61 fd 48 29 2a    	vmovapd %zmm29,(%rdx)
  40477c:	62 61 fd 48 29 72 05 	vmovapd %zmm30,0x140(%rdx)
  404783:	62 61 fd 48 29 7a 0a 	vmovapd %zmm31,0x280(%rdx)
  40478a:	48 81 c2 c0 03 00 00 	add    $0x3c0,%rdx
  404791:	62 61 fd 48 28 2a    	vmovapd (%rdx),%zmm29
  404797:	62 61 fd 48 28 72 05 	vmovapd 0x140(%rdx),%zmm30
  40479e:	62 61 fd 48 28 7a 0a 	vmovapd 0x280(%rdx),%zmm31
  4047a5:	49 c7 c2 b9 47 40 00 	mov    $0x4047b9,%r10
  4047ac:	48 83 c6 18          	add    $0x18,%rsi
  4047b0:	48 83 c7 00          	add    $0x0,%rdi
  4047b4:	e9 87 fc ff ff       	jmpq   404440 <CASE_2_3>

00000000004047b9 <BLOCK_1_4_2_3>:
  4047b9:	62 61 fd 48 29 2a    	vmovapd %zmm29,(%rdx)
  4047bf:	62 61 fd 48 29 72 05 	vmovapd %zmm30,0x140(%rdx)
  4047c6:	62 61 fd 48 29 7a 0a 	vmovapd %zmm31,0x280(%rdx)
  4047cd:	48 81 c2 40 f1 ff ff 	add    $0xfffffffffffff140,%rdx
  4047d4:	62 61 fd 48 28 2a    	vmovapd (%rdx),%zmm29
  4047da:	62 61 fd 48 28 72 05 	vmovapd 0x140(%rdx),%zmm30
  4047e1:	62 61 fd 48 28 7a 0a 	vmovapd 0x280(%rdx),%zmm31
  4047e8:	49 c7 c2 ff 47 40 00 	mov    $0x4047ff,%r10
  4047ef:	48 81 c6 20 ff ff ff 	add    $0xffffffffffffff20,%rsi
  4047f6:	48 83 c7 40          	add    $0x40,%rdi
  4047fa:	e9 ec fb ff ff       	jmpq   4043eb <CASE_1_3>

00000000004047ff <BLOCK_2_0_2_3>:
  4047ff:	62 61 fd 48 29 2a    	vmovapd %zmm29,(%rdx)
  404805:	62 61 fd 48 29 72 05 	vmovapd %zmm30,0x140(%rdx)
  40480c:	62 61 fd 48 29 7a 0a 	vmovapd %zmm31,0x280(%rdx)
  404813:	48 81 c2 c0 03 00 00 	add    $0x3c0,%rdx
  40481a:	62 61 fd 48 28 2a    	vmovapd (%rdx),%zmm29
  404820:	62 61 fd 48 28 72 05 	vmovapd 0x140(%rdx),%zmm30
  404827:	62 61 fd 48 28 7a 0a 	vmovapd 0x280(%rdx),%zmm31
  40482e:	49 c7 c2 42 48 40 00 	mov    $0x404842,%r10
  404835:	48 83 c6 48          	add    $0x48,%rsi
  404839:	48 83 c7 00          	add    $0x0,%rdi
  40483d:	e9 fe fb ff ff       	jmpq   404440 <CASE_2_3>

0000000000404842 <BLOCK_2_1_2_3>:
  404842:	62 61 fd 48 29 2a    	vmovapd %zmm29,(%rdx)
  404848:	62 61 fd 48 29 72 05 	vmovapd %zmm30,0x140(%rdx)
  40484f:	62 61 fd 48 29 7a 0a 	vmovapd %zmm31,0x280(%rdx)
  404856:	48 81 c2 c0 03 00 00 	add    $0x3c0,%rdx
  40485d:	62 61 fd 48 28 2a    	vmovapd (%rdx),%zmm29
  404863:	62 61 fd 48 28 72 05 	vmovapd 0x140(%rdx),%zmm30
  40486a:	62 61 fd 48 28 7a 0a 	vmovapd 0x280(%rdx),%zmm31
  404871:	49 c7 c2 88 48 40 00 	mov    $0x404888,%r10
  404878:	48 83 c6 30          	add    $0x30,%rsi
  40487c:	48 81 c7 80 f8 ff ff 	add    $0xfffffffffffff880,%rdi
  404883:	e9 f8 fb ff ff       	jmpq   404480 <CASE_3_3>

0000000000404888 <BLOCK_2_2_0_3>:
  404888:	49 c7 c2 9f 48 40 00 	mov    $0x40489f,%r10
  40488f:	48 83 c6 18          	add    $0x18,%rsi
  404893:	48 81 c7 c0 03 00 00 	add    $0x3c0,%rdi
  40489a:	e9 0c fc ff ff       	jmpq   4044ab <CASE_4_3>

000000000040489f <BLOCK_2_2_1_3>:
  40489f:	62 61 fd 48 29 2a    	vmovapd %zmm29,(%rdx)
  4048a5:	62 61 fd 48 29 72 05 	vmovapd %zmm30,0x140(%rdx)
  4048ac:	62 61 fd 48 29 7a 0a 	vmovapd %zmm31,0x280(%rdx)
  4048b3:	48 81 c2 c0 03 00 00 	add    $0x3c0,%rdx
  4048ba:	62 61 fd 48 28 2a    	vmovapd (%rdx),%zmm29
  4048c0:	62 61 fd 48 28 72 05 	vmovapd 0x140(%rdx),%zmm30
  4048c7:	62 61 fd 48 28 7a 0a 	vmovapd 0x280(%rdx),%zmm31
  4048ce:	49 c7 c2 e5 48 40 00 	mov    $0x4048e5,%r10
  4048d5:	48 83 c6 38          	add    $0x38,%rsi
  4048d9:	48 81 c7 c0 03 00 00 	add    $0x3c0,%rdi
  4048e0:	e9 9b fb ff ff       	jmpq   404480 <CASE_3_3>

00000000004048e5 <BLOCK_2_3_2_3>:
  4048e5:	62 61 fd 48 29 2a    	vmovapd %zmm29,(%rdx)
  4048eb:	62 61 fd 48 29 72 05 	vmovapd %zmm30,0x140(%rdx)
  4048f2:	62 61 fd 48 29 7a 0a 	vmovapd %zmm31,0x280(%rdx)
  4048f9:	48 81 c2 c0 03 00 00 	add    $0x3c0,%rdx
  404900:	62 61 fd 48 28 2a    	vmovapd (%rdx),%zmm29
  404906:	62 61 fd 48 28 72 05 	vmovapd 0x140(%rdx),%zmm30
  40490d:	62 61 fd 48 28 7a 0a 	vmovapd 0x280(%rdx),%zmm31
  404914:	49 c7 c2 28 49 40 00 	mov    $0x404928,%r10
  40491b:	48 83 c6 18          	add    $0x18,%rsi
  40491f:	48 83 c7 00          	add    $0x0,%rdi
  404923:	e9 18 fb ff ff       	jmpq   404440 <CASE_2_3>

0000000000404928 <BLOCK_2_4_2_3>:
  404928:	62 61 fd 48 29 2a    	vmovapd %zmm29,(%rdx)
  40492e:	62 61 fd 48 29 72 05 	vmovapd %zmm30,0x140(%rdx)
  404935:	62 61 fd 48 29 7a 0a 	vmovapd %zmm31,0x280(%rdx)
  40493c:	48 81 c2 40 f1 ff ff 	add    $0xfffffffffffff140,%rdx
  404943:	62 61 fd 48 28 2a    	vmovapd (%rdx),%zmm29
  404949:	62 61 fd 48 28 72 05 	vmovapd 0x140(%rdx),%zmm30
  404950:	62 61 fd 48 28 7a 0a 	vmovapd 0x280(%rdx),%zmm31
  404957:	49 c7 c2 6e 49 40 00 	mov    $0x40496e,%r10
  40495e:	48 81 c6 20 ff ff ff 	add    $0xffffffffffffff20,%rsi
  404965:	48 83 c7 40          	add    $0x40,%rdi
  404969:	e9 7d fa ff ff       	jmpq   4043eb <CASE_1_3>

000000000040496e <BLOCK_3_0_2_3>:
  40496e:	62 61 fd 48 29 2a    	vmovapd %zmm29,(%rdx)
  404974:	62 61 fd 48 29 72 05 	vmovapd %zmm30,0x140(%rdx)
  40497b:	62 61 fd 48 29 7a 0a 	vmovapd %zmm31,0x280(%rdx)
  404982:	48 81 c2 c0 03 00 00 	add    $0x3c0,%rdx
  404989:	62 61 fd 48 28 2a    	vmovapd (%rdx),%zmm29
  40498f:	62 61 fd 48 28 72 05 	vmovapd 0x140(%rdx),%zmm30
  404996:	62 61 fd 48 28 7a 0a 	vmovapd 0x280(%rdx),%zmm31
  40499d:	49 c7 c2 b1 49 40 00 	mov    $0x4049b1,%r10
  4049a4:	48 83 c6 48          	add    $0x48,%rsi
  4049a8:	48 83 c7 00          	add    $0x0,%rdi
  4049ac:	e9 8f fa ff ff       	jmpq   404440 <CASE_2_3>

00000000004049b1 <BLOCK_3_1_2_3>:
  4049b1:	62 61 fd 48 29 2a    	vmovapd %zmm29,(%rdx)
  4049b7:	62 61 fd 48 29 72 05 	vmovapd %zmm30,0x140(%rdx)
  4049be:	62 61 fd 48 29 7a 0a 	vmovapd %zmm31,0x280(%rdx)
  4049c5:	48 81 c2 c0 03 00 00 	add    $0x3c0,%rdx
  4049cc:	62 61 fd 48 28 2a    	vmovapd (%rdx),%zmm29
  4049d2:	62 61 fd 48 28 72 05 	vmovapd 0x140(%rdx),%zmm30
  4049d9:	62 61 fd 48 28 7a 0a 	vmovapd 0x280(%rdx),%zmm31
  4049e0:	49 c7 c2 f7 49 40 00 	mov    $0x4049f7,%r10
  4049e7:	48 83 c6 30          	add    $0x30,%rsi
  4049eb:	48 81 c7 80 f8 ff ff 	add    $0xfffffffffffff880,%rdi
  4049f2:	e9 89 fa ff ff       	jmpq   404480 <CASE_3_3>

00000000004049f7 <BLOCK_3_2_0_3>:
  4049f7:	49 c7 c2 0e 4a 40 00 	mov    $0x404a0e,%r10
  4049fe:	48 83 c6 18          	add    $0x18,%rsi
  404a02:	48 81 c7 c0 03 00 00 	add    $0x3c0,%rdi
  404a09:	e9 9d fa ff ff       	jmpq   4044ab <CASE_4_3>

0000000000404a0e <BLOCK_3_2_1_3>:
  404a0e:	62 61 fd 48 29 2a    	vmovapd %zmm29,(%rdx)
  404a14:	62 61 fd 48 29 72 05 	vmovapd %zmm30,0x140(%rdx)
  404a1b:	62 61 fd 48 29 7a 0a 	vmovapd %zmm31,0x280(%rdx)
  404a22:	48 81 c2 c0 03 00 00 	add    $0x3c0,%rdx
  404a29:	62 61 fd 48 28 2a    	vmovapd (%rdx),%zmm29
  404a2f:	62 61 fd 48 28 72 05 	vmovapd 0x140(%rdx),%zmm30
  404a36:	62 61 fd 48 28 7a 0a 	vmovapd 0x280(%rdx),%zmm31
  404a3d:	49 c7 c2 54 4a 40 00 	mov    $0x404a54,%r10
  404a44:	48 83 c6 38          	add    $0x38,%rsi
  404a48:	48 81 c7 c0 03 00 00 	add    $0x3c0,%rdi
  404a4f:	e9 2c fa ff ff       	jmpq   404480 <CASE_3_3>

0000000000404a54 <BLOCK_3_3_2_3>:
  404a54:	62 61 fd 48 29 2a    	vmovapd %zmm29,(%rdx)
  404a5a:	62 61 fd 48 29 72 05 	vmovapd %zmm30,0x140(%rdx)
  404a61:	62 61 fd 48 29 7a 0a 	vmovapd %zmm31,0x280(%rdx)
  404a68:	48 81 c2 c0 03 00 00 	add    $0x3c0,%rdx
  404a6f:	62 61 fd 48 28 2a    	vmovapd (%rdx),%zmm29
  404a75:	62 61 fd 48 28 72 05 	vmovapd 0x140(%rdx),%zmm30
  404a7c:	62 61 fd 48 28 7a 0a 	vmovapd 0x280(%rdx),%zmm31
  404a83:	49 c7 c2 97 4a 40 00 	mov    $0x404a97,%r10
  404a8a:	48 83 c6 18          	add    $0x18,%rsi
  404a8e:	48 83 c7 00          	add    $0x0,%rdi
  404a92:	e9 a9 f9 ff ff       	jmpq   404440 <CASE_2_3>

0000000000404a97 <BLOCK_3_4_2_3>:
  404a97:	62 61 fd 48 29 2a    	vmovapd %zmm29,(%rdx)
  404a9d:	62 61 fd 48 29 72 05 	vmovapd %zmm30,0x140(%rdx)
  404aa4:	62 61 fd 48 29 7a 0a 	vmovapd %zmm31,0x280(%rdx)
  404aab:	48 81 c2 40 f1 ff ff 	add    $0xfffffffffffff140,%rdx
  404ab2:	62 61 fd 48 28 2a    	vmovapd (%rdx),%zmm29
  404ab8:	62 61 fd 48 28 72 05 	vmovapd 0x140(%rdx),%zmm30
  404abf:	62 61 fd 48 28 7a 0a 	vmovapd 0x280(%rdx),%zmm31
  404ac6:	49 c7 c2 dd 4a 40 00 	mov    $0x404add,%r10
  404acd:	48 81 c6 20 ff ff ff 	add    $0xffffffffffffff20,%rsi
  404ad4:	48 83 c7 40          	add    $0x40,%rdi
  404ad8:	e9 0e f9 ff ff       	jmpq   4043eb <CASE_1_3>

0000000000404add <BLOCK_4_0_2_3>:
  404add:	62 61 fd 48 29 2a    	vmovapd %zmm29,(%rdx)
  404ae3:	62 61 fd 48 29 72 05 	vmovapd %zmm30,0x140(%rdx)
  404aea:	62 61 fd 48 29 7a 0a 	vmovapd %zmm31,0x280(%rdx)
  404af1:	48 81 c2 c0 03 00 00 	add    $0x3c0,%rdx
  404af8:	62 61 fd 48 28 2a    	vmovapd (%rdx),%zmm29
  404afe:	62 61 fd 48 28 72 05 	vmovapd 0x140(%rdx),%zmm30
  404b05:	62 61 fd 48 28 7a 0a 	vmovapd 0x280(%rdx),%zmm31
  404b0c:	49 c7 c2 20 4b 40 00 	mov    $0x404b20,%r10
  404b13:	48 83 c6 48          	add    $0x48,%rsi
  404b17:	48 83 c7 00          	add    $0x0,%rdi
  404b1b:	e9 20 f9 ff ff       	jmpq   404440 <CASE_2_3>

0000000000404b20 <BLOCK_4_1_2_3>:
  404b20:	62 61 fd 48 29 2a    	vmovapd %zmm29,(%rdx)
  404b26:	62 61 fd 48 29 72 05 	vmovapd %zmm30,0x140(%rdx)
  404b2d:	62 61 fd 48 29 7a 0a 	vmovapd %zmm31,0x280(%rdx)
  404b34:	48 81 c2 c0 03 00 00 	add    $0x3c0,%rdx
  404b3b:	62 61 fd 48 28 2a    	vmovapd (%rdx),%zmm29
  404b41:	62 61 fd 48 28 72 05 	vmovapd 0x140(%rdx),%zmm30
  404b48:	62 61 fd 48 28 7a 0a 	vmovapd 0x280(%rdx),%zmm31
  404b4f:	49 c7 c2 66 4b 40 00 	mov    $0x404b66,%r10
  404b56:	48 83 c6 30          	add    $0x30,%rsi
  404b5a:	48 81 c7 80 f8 ff ff 	add    $0xfffffffffffff880,%rdi
  404b61:	e9 1a f9 ff ff       	jmpq   404480 <CASE_3_3>

0000000000404b66 <BLOCK_4_2_0_3>:
  404b66:	49 c7 c2 7d 4b 40 00 	mov    $0x404b7d,%r10
  404b6d:	48 83 c6 18          	add    $0x18,%rsi
  404b71:	48 81 c7 c0 03 00 00 	add    $0x3c0,%rdi
  404b78:	e9 2e f9 ff ff       	jmpq   4044ab <CASE_4_3>

0000000000404b7d <BLOCK_4_2_1_3>:
  404b7d:	62 61 fd 48 29 2a    	vmovapd %zmm29,(%rdx)
  404b83:	62 61 fd 48 29 72 05 	vmovapd %zmm30,0x140(%rdx)
  404b8a:	62 61 fd 48 29 7a 0a 	vmovapd %zmm31,0x280(%rdx)
  404b91:	48 81 c2 c0 03 00 00 	add    $0x3c0,%rdx
  404b98:	62 61 fd 48 28 2a    	vmovapd (%rdx),%zmm29
  404b9e:	62 61 fd 48 28 72 05 	vmovapd 0x140(%rdx),%zmm30
  404ba5:	62 61 fd 48 28 7a 0a 	vmovapd 0x280(%rdx),%zmm31
  404bac:	49 c7 c2 c3 4b 40 00 	mov    $0x404bc3,%r10
  404bb3:	48 83 c6 38          	add    $0x38,%rsi
  404bb7:	48 81 c7 c0 03 00 00 	add    $0x3c0,%rdi
  404bbe:	e9 bd f8 ff ff       	jmpq   404480 <CASE_3_3>

0000000000404bc3 <BLOCK_4_3_2_3>:
  404bc3:	62 61 fd 48 29 2a    	vmovapd %zmm29,(%rdx)
  404bc9:	62 61 fd 48 29 72 05 	vmovapd %zmm30,0x140(%rdx)
  404bd0:	62 61 fd 48 29 7a 0a 	vmovapd %zmm31,0x280(%rdx)
  404bd7:	48 81 c2 c0 03 00 00 	add    $0x3c0,%rdx
  404bde:	62 61 fd 48 28 2a    	vmovapd (%rdx),%zmm29
  404be4:	62 61 fd 48 28 72 05 	vmovapd 0x140(%rdx),%zmm30
  404beb:	62 61 fd 48 28 7a 0a 	vmovapd 0x280(%rdx),%zmm31
  404bf2:	49 c7 c2 06 4c 40 00 	mov    $0x404c06,%r10
  404bf9:	48 83 c6 18          	add    $0x18,%rsi
  404bfd:	48 83 c7 00          	add    $0x0,%rdi
  404c01:	e9 3a f8 ff ff       	jmpq   404440 <CASE_2_3>

0000000000404c06 <BLOCK_4_4_2_3>:
  404c06:	62 61 fd 48 29 2a    	vmovapd %zmm29,(%rdx)
  404c0c:	62 61 fd 48 29 72 05 	vmovapd %zmm30,0x140(%rdx)
  404c13:	62 61 fd 48 29 7a 0a 	vmovapd %zmm31,0x280(%rdx)
  404c1a:	c3                   	retq   

0000000000404c1b <_Z15test_general_40v>:
  404c1b:	48 81 ec c8 00 00 00 	sub    $0xc8,%rsp
  404c22:	48 89 ac 24 b8 00 00 	mov    %rbp,0xb8(%rsp)
  404c29:	00 
  404c2a:	4c 89 a4 24 b0 00 00 	mov    %r12,0xb0(%rsp)
  404c31:	00 
  404c32:	41 bc 28 a2 60 00    	mov    $0x60a228,%r12d
  404c38:	6a 28                	pushq  $0x28
  404c3a:	5d                   	pop    %rbp
  404c3b:	48 8d 04 24          	lea    (%rsp),%rax
  404c3f:	4c 89 20             	mov    %r12,(%rax)
  404c42:	48 8d 78 18          	lea    0x18(%rax),%rdi
  404c46:	89 68 10             	mov    %ebp,0x10(%rax)
  404c49:	6a 40                	pushq  $0x40
  404c4b:	5e                   	pop    %rsi
  404c4c:	89 68 08             	mov    %ebp,0x8(%rax)
  404c4f:	ba 40 0b 00 00       	mov    $0xb40,%edx
  404c54:	c7 40 0c 09 00 00 00 	movl   $0x9,0xc(%rax)
  404c5b:	e8 80 c9 ff ff       	callq  4015e0 <posix_memalign@plt>
  404c60:	48 8d 3c 24          	lea    (%rsp),%rdi
  404c64:	e8 b3 0c 00 00       	callq  40591c <_ZN11DenseMatrix4zeroEv>
  404c69:	48 8d 3c 24          	lea    (%rsp),%rdi
  404c6d:	e8 06 0d 00 00       	callq  405978 <_ZN11DenseMatrix6randomEv>
  404c72:	48 8d 7c 24 60       	lea    0x60(%rsp),%rdi
  404c77:	be c8 6c 40 00       	mov    $0x406cc8,%esi
  404c7c:	e8 7b 0d 00 00       	callq  4059fc <_ZN11DenseMatrixC1EPKc>
  404c81:	48 8d bc 24 80 00 00 	lea    0x80(%rsp),%rdi
  404c88:	00 
  404c89:	6a 03                	pushq  $0x3
  404c8b:	5a                   	pop    %rdx
  404c8c:	48 8d 77 e0          	lea    -0x20(%rdi),%rsi
  404c90:	89 d1                	mov    %edx,%ecx
  404c92:	e8 cc e4 ff ff       	callq  403163 <_Z7to_bcscRK6Matrixii>
  404c97:	48 8d 44 24 40       	lea    0x40(%rsp),%rax
  404c9c:	4c 89 20             	mov    %r12,(%rax)
  404c9f:	48 8d 78 18          	lea    0x18(%rax),%rdi
  404ca3:	89 68 10             	mov    %ebp,0x10(%rax)
  404ca6:	6a 40                	pushq  $0x40
  404ca8:	5e                   	pop    %rsi
  404ca9:	89 68 08             	mov    %ebp,0x8(%rax)
  404cac:	ba c0 12 00 00       	mov    $0x12c0,%edx
  404cb1:	c7 40 0c 0f 00 00 00 	movl   $0xf,0xc(%rax)
  404cb8:	e8 23 c9 ff ff       	callq  4015e0 <posix_memalign@plt>
  404cbd:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  404cc2:	e8 55 0c 00 00       	callq  40591c <_ZN11DenseMatrix4zeroEv>
  404cc7:	48 8d 44 24 20       	lea    0x20(%rsp),%rax
  404ccc:	4c 89 20             	mov    %r12,(%rax)
  404ccf:	48 8d 78 18          	lea    0x18(%rax),%rdi
  404cd3:	89 68 10             	mov    %ebp,0x10(%rax)
  404cd6:	6a 40                	pushq  $0x40
  404cd8:	5e                   	pop    %rsi
  404cd9:	89 68 08             	mov    %ebp,0x8(%rax)
  404cdc:	ba c0 12 00 00       	mov    $0x12c0,%edx
  404ce1:	c7 40 0c 0f 00 00 00 	movl   $0xf,0xc(%rax)
  404ce8:	e8 f3 c8 ff ff       	callq  4015e0 <posix_memalign@plt>
  404ced:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
  404cf2:	e8 25 0c 00 00       	callq  40591c <_ZN11DenseMatrix4zeroEv>
  404cf7:	48 8d 3c 24          	lea    (%rsp),%rdi
  404cfb:	48 8d 77 60          	lea    0x60(%rdi),%rsi
  404cff:	48 8d 56 e0          	lea    -0x20(%rsi),%rdx
  404d03:	e8 0b d7 ff ff       	callq  402413 <_Z4gemmRK6MatrixS1_RS_>
  404d08:	48 8d bc 24 80 00 00 	lea    0x80(%rsp),%rdi
  404d0f:	00 
  404d10:	e8 95 0f 00 00       	callq  405caa <_ZNKSt10unique_ptrI12SparseMatrixSt14default_deleteIS0_EEptEv>
  404d15:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
  404d1a:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
  404d1f:	48 8b 70 18          	mov    0x18(%rax),%rsi
  404d23:	e8 6e 01 00 00       	callq  404e96 <_Z10general_40PKdS0_Pd>
  404d28:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  404d2d:	48 8d 77 e0          	lea    -0x20(%rdi),%rsi
  404d31:	e8 3b d4 ff ff       	callq  402171 <_Z13assert_equalsRK6MatrixS1_>
  404d36:	31 ff                	xor    %edi,%edi
  404d38:	83 c7 01             	add    $0x1,%edi
  404d3b:	48 8d b4 24 90 00 00 	lea    0x90(%rsp),%rsi
  404d42:	00 
  404d43:	e8 c8 c9 ff ff       	callq  401710 <clock_gettime@plt>
  404d48:	31 ed                	xor    %ebp,%ebp
  404d4a:	48 8d bc 24 80 00 00 	lea    0x80(%rsp),%rdi
  404d51:	00 
  404d52:	e8 53 0f 00 00       	callq  405caa <_ZNKSt10unique_ptrI12SparseMatrixSt14default_deleteIS0_EEptEv>
  404d57:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
  404d5c:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
  404d61:	48 8b 70 18          	mov    0x18(%rax),%rsi
  404d65:	e8 2c 01 00 00       	callq  404e96 <_Z10general_40PKdS0_Pd>
  404d6a:	83 c5 01             	add    $0x1,%ebp
  404d6d:	81 fd b8 0b 00 00    	cmp    $0xbb8,%ebp
  404d73:	7c d5                	jl     404d4a <_Z15test_general_40v+0x12f>
  404d75:	31 ff                	xor    %edi,%edi
  404d77:	83 c7 01             	add    $0x1,%edi
  404d7a:	48 8d b4 24 a0 00 00 	lea    0xa0(%rsp),%rsi
  404d81:	00 
  404d82:	e8 89 c9 ff ff       	callq  401710 <clock_gettime@plt>
  404d87:	bf a0 a2 60 00       	mov    $0x60a2a0,%edi
  404d8c:	be ac 6d 40 00       	mov    $0x406dac,%esi
  404d91:	e8 aa c8 ff ff       	callq  401640 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  404d96:	48 89 c5             	mov    %rax,%rbp
  404d99:	48 8d 84 24 90 00 00 	lea    0x90(%rsp),%rax
  404da0:	00 
  404da1:	48 8d 8c 24 a0 00 00 	lea    0xa0(%rsp),%rcx
  404da8:	00 
  404da9:	48 8b 38             	mov    (%rax),%rdi
  404dac:	48 8b 70 08          	mov    0x8(%rax),%rsi
  404db0:	48 8b 11             	mov    (%rcx),%rdx
  404db3:	48 8b 49 08          	mov    0x8(%rcx),%rcx
  404db7:	e8 44 d7 ff ff       	callq  402500 <_Z9microsecs8timespecS_>
  404dbc:	c5 fb 5e 05 e4 1e 00 	vdivsd 0x1ee4(%rip),%xmm0,%xmm0        # 406ca8 <_IO_stdin_used+0x8>
  404dc3:	00 
  404dc4:	48 89 ef             	mov    %rbp,%rdi
  404dc7:	e8 34 ca ff ff       	callq  401800 <_ZNSolsEd@plt>
  404dcc:	48 89 c7             	mov    %rax,%rdi
  404dcf:	be c0 15 40 00       	mov    $0x4015c0,%esi
  404dd4:	e8 97 c8 ff ff       	callq  401670 <_ZNSolsEPFRSoS_E@plt>
  404dd9:	48 8b 7c 24 38       	mov    0x38(%rsp),%rdi
  404dde:	4c 89 64 24 20       	mov    %r12,0x20(%rsp)
  404de3:	e8 e8 c8 ff ff       	callq  4016d0 <free@plt>
  404de8:	48 8b 7c 24 58       	mov    0x58(%rsp),%rdi
  404ded:	4c 89 64 24 40       	mov    %r12,0x40(%rsp)
  404df2:	e8 d9 c8 ff ff       	callq  4016d0 <free@plt>
  404df7:	48 8d bc 24 80 00 00 	lea    0x80(%rsp),%rdi
  404dfe:	00 
  404dff:	e8 b2 0e 00 00       	callq  405cb6 <_ZNSt10unique_ptrI12SparseMatrixSt14default_deleteIS0_EED1Ev>
  404e04:	48 8b 7c 24 78       	mov    0x78(%rsp),%rdi
  404e09:	4c 89 64 24 60       	mov    %r12,0x60(%rsp)
  404e0e:	e8 bd c8 ff ff       	callq  4016d0 <free@plt>
  404e13:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
  404e18:	4c 89 24 24          	mov    %r12,(%rsp)
  404e1c:	e8 af c8 ff ff       	callq  4016d0 <free@plt>
  404e21:	48 8b ac 24 b8 00 00 	mov    0xb8(%rsp),%rbp
  404e28:	00 
  404e29:	4c 8b a4 24 b0 00 00 	mov    0xb0(%rsp),%r12
  404e30:	00 
  404e31:	48 81 c4 c8 00 00 00 	add    $0xc8,%rsp
  404e38:	c3                   	retq   
  404e39:	48 89 84 24 88 00 00 	mov    %rax,0x88(%rsp)
  404e40:	00 
  404e41:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
  404e46:	e8 19 0b 00 00       	callq  405964 <_ZN11DenseMatrixD1Ev>
  404e4b:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  404e50:	e8 0f 0b 00 00       	callq  405964 <_ZN11DenseMatrixD1Ev>
  404e55:	48 8d bc 24 80 00 00 	lea    0x80(%rsp),%rdi
  404e5c:	00 
  404e5d:	e8 54 0e 00 00       	callq  405cb6 <_ZNSt10unique_ptrI12SparseMatrixSt14default_deleteIS0_EED1Ev>
  404e62:	48 8d 7c 24 60       	lea    0x60(%rsp),%rdi
  404e67:	e8 f8 0a 00 00       	callq  405964 <_ZN11DenseMatrixD1Ev>
  404e6c:	48 8d 3c 24          	lea    (%rsp),%rdi
  404e70:	e8 ef 0a 00 00       	callq  405964 <_ZN11DenseMatrixD1Ev>
  404e75:	48 8b bc 24 88 00 00 	mov    0x88(%rsp),%rdi
  404e7c:	00 
  404e7d:	e8 4e c9 ff ff       	callq  4017d0 <_Unwind_Resume@plt>
  404e82:	48 89 84 24 88 00 00 	mov    %rax,0x88(%rsp)
  404e89:	00 
  404e8a:	eb d6                	jmp    404e62 <_Z15test_general_40v+0x247>
  404e8c:	48 89 84 24 88 00 00 	mov    %rax,0x88(%rsp)
  404e93:	00 
  404e94:	eb d6                	jmp    404e6c <_Z15test_general_40v+0x251>

0000000000404e96 <_Z10general_40PKdS0_Pd>:
  404e96:	48 89 7c 24 e8       	mov    %rdi,-0x18(%rsp)
  404e9b:	48 89 74 24 f0       	mov    %rsi,-0x10(%rsp)
  404ea0:	48 89 54 24 f8       	mov    %rdx,-0x8(%rsp)
  404ea5:	48 8b 7c 24 e8       	mov    -0x18(%rsp),%rdi
  404eaa:	48 8b 74 24 f0       	mov    -0x10(%rsp),%rsi
  404eaf:	48 8b 54 24 f8       	mov    -0x8(%rsp),%rdx
  404eb4:	e9 03 05 00 00       	jmpq   4053bc <END_SWITCH_4>

0000000000404eb9 <CASE_1_4>:
  404eb9:	62 f1 fd 48 28 07    	vmovapd (%rdi),%zmm0
  404ebf:	62 f1 fd 48 28 4f 01 	vmovapd 0x40(%rdi),%zmm1
  404ec6:	62 f1 fd 48 28 57 02 	vmovapd 0x80(%rdi),%zmm2
  404ecd:	62 f1 fd 48 28 5f 03 	vmovapd 0xc0(%rdi),%zmm3
  404ed4:	62 f1 fd 48 28 67 04 	vmovapd 0x100(%rdi),%zmm4
  404edb:	62 f1 fd 48 28 6f 05 	vmovapd 0x140(%rdi),%zmm5
  404ee2:	62 f1 fd 48 28 77 06 	vmovapd 0x180(%rdi),%zmm6
  404ee9:	62 f1 fd 48 28 7f 07 	vmovapd 0x1c0(%rdi),%zmm7
  404ef0:	62 71 fd 48 28 47 08 	vmovapd 0x200(%rdi),%zmm8
  404ef7:	62 71 fd 48 28 4f 09 	vmovapd 0x240(%rdi),%zmm9
  404efe:	62 71 fd 48 28 57 0a 	vmovapd 0x280(%rdi),%zmm10
  404f05:	62 71 fd 48 28 5f 0b 	vmovapd 0x2c0(%rdi),%zmm11
  404f0c:	62 71 fd 48 28 67 0c 	vmovapd 0x300(%rdi),%zmm12
  404f13:	62 71 fd 48 28 6f 0d 	vmovapd 0x340(%rdi),%zmm13
  404f1a:	62 71 fd 48 28 77 0e 	vmovapd 0x380(%rdi),%zmm14
  404f21:	62 e2 fd 58 b8 0e    	vfmadd231pd (%rsi){1to8},%zmm0,%zmm17
  404f27:	62 e2 fd 58 b8 76 03 	vfmadd231pd 0x18(%rsi){1to8},%zmm0,%zmm22
  404f2e:	62 62 fd 58 b8 5e 06 	vfmadd231pd 0x30(%rsi){1to8},%zmm0,%zmm27
  404f35:	62 e2 d5 58 b8 4e 01 	vfmadd231pd 0x8(%rsi){1to8},%zmm5,%zmm17
  404f3c:	62 e2 d5 58 b8 76 04 	vfmadd231pd 0x20(%rsi){1to8},%zmm5,%zmm22
  404f43:	62 62 d5 58 b8 5e 07 	vfmadd231pd 0x38(%rsi){1to8},%zmm5,%zmm27
  404f4a:	62 e2 ad 58 b8 4e 02 	vfmadd231pd 0x10(%rsi){1to8},%zmm10,%zmm17
  404f51:	62 e2 ad 58 b8 76 05 	vfmadd231pd 0x28(%rsi){1to8},%zmm10,%zmm22
  404f58:	62 62 ad 58 b8 5e 08 	vfmadd231pd 0x40(%rsi){1to8},%zmm10,%zmm27
  404f5f:	62 e2 f5 58 b8 16    	vfmadd231pd (%rsi){1to8},%zmm1,%zmm18
  404f65:	62 e2 f5 58 b8 7e 03 	vfmadd231pd 0x18(%rsi){1to8},%zmm1,%zmm23
  404f6c:	62 62 f5 58 b8 66 06 	vfmadd231pd 0x30(%rsi){1to8},%zmm1,%zmm28
  404f73:	62 e2 cd 58 b8 56 01 	vfmadd231pd 0x8(%rsi){1to8},%zmm6,%zmm18
  404f7a:	62 e2 cd 58 b8 7e 04 	vfmadd231pd 0x20(%rsi){1to8},%zmm6,%zmm23
  404f81:	62 62 cd 58 b8 66 07 	vfmadd231pd 0x38(%rsi){1to8},%zmm6,%zmm28
  404f88:	62 e2 a5 58 b8 56 02 	vfmadd231pd 0x10(%rsi){1to8},%zmm11,%zmm18
  404f8f:	62 e2 a5 58 b8 7e 05 	vfmadd231pd 0x28(%rsi){1to8},%zmm11,%zmm23
  404f96:	62 62 a5 58 b8 66 08 	vfmadd231pd 0x40(%rsi){1to8},%zmm11,%zmm28
  404f9d:	62 e2 ed 58 b8 1e    	vfmadd231pd (%rsi){1to8},%zmm2,%zmm19
  404fa3:	62 62 ed 58 b8 46 03 	vfmadd231pd 0x18(%rsi){1to8},%zmm2,%zmm24
  404faa:	62 62 ed 58 b8 6e 06 	vfmadd231pd 0x30(%rsi){1to8},%zmm2,%zmm29
  404fb1:	62 e2 c5 58 b8 5e 01 	vfmadd231pd 0x8(%rsi){1to8},%zmm7,%zmm19
  404fb8:	62 62 c5 58 b8 46 04 	vfmadd231pd 0x20(%rsi){1to8},%zmm7,%zmm24
  404fbf:	62 62 c5 58 b8 6e 07 	vfmadd231pd 0x38(%rsi){1to8},%zmm7,%zmm29
  404fc6:	62 e2 9d 58 b8 5e 02 	vfmadd231pd 0x10(%rsi){1to8},%zmm12,%zmm19
  404fcd:	62 62 9d 58 b8 46 05 	vfmadd231pd 0x28(%rsi){1to8},%zmm12,%zmm24
  404fd4:	62 62 9d 58 b8 6e 08 	vfmadd231pd 0x40(%rsi){1to8},%zmm12,%zmm29
  404fdb:	62 e2 e5 58 b8 26    	vfmadd231pd (%rsi){1to8},%zmm3,%zmm20
  404fe1:	62 62 e5 58 b8 4e 03 	vfmadd231pd 0x18(%rsi){1to8},%zmm3,%zmm25
  404fe8:	62 62 e5 58 b8 76 06 	vfmadd231pd 0x30(%rsi){1to8},%zmm3,%zmm30
  404fef:	62 e2 bd 58 b8 66 01 	vfmadd231pd 0x8(%rsi){1to8},%zmm8,%zmm20
  404ff6:	62 62 bd 58 b8 4e 04 	vfmadd231pd 0x20(%rsi){1to8},%zmm8,%zmm25
  404ffd:	62 62 bd 58 b8 76 07 	vfmadd231pd 0x38(%rsi){1to8},%zmm8,%zmm30
  405004:	62 e2 95 58 b8 66 02 	vfmadd231pd 0x10(%rsi){1to8},%zmm13,%zmm20
  40500b:	62 62 95 58 b8 4e 05 	vfmadd231pd 0x28(%rsi){1to8},%zmm13,%zmm25
  405012:	62 62 95 58 b8 76 08 	vfmadd231pd 0x40(%rsi){1to8},%zmm13,%zmm30
  405019:	62 e2 dd 58 b8 2e    	vfmadd231pd (%rsi){1to8},%zmm4,%zmm21
  40501f:	62 62 dd 58 b8 56 03 	vfmadd231pd 0x18(%rsi){1to8},%zmm4,%zmm26
  405026:	62 62 dd 58 b8 7e 06 	vfmadd231pd 0x30(%rsi){1to8},%zmm4,%zmm31
  40502d:	62 e2 b5 58 b8 6e 01 	vfmadd231pd 0x8(%rsi){1to8},%zmm9,%zmm21
  405034:	62 62 b5 58 b8 56 04 	vfmadd231pd 0x20(%rsi){1to8},%zmm9,%zmm26
  40503b:	62 62 b5 58 b8 7e 07 	vfmadd231pd 0x38(%rsi){1to8},%zmm9,%zmm31
  405042:	62 e2 8d 58 b8 6e 02 	vfmadd231pd 0x10(%rsi){1to8},%zmm14,%zmm21
  405049:	62 62 8d 58 b8 56 05 	vfmadd231pd 0x28(%rsi){1to8},%zmm14,%zmm26
  405050:	62 62 8d 58 b8 7e 08 	vfmadd231pd 0x40(%rsi){1to8},%zmm14,%zmm31
  405057:	41 ff e2             	jmpq   *%r10

000000000040505a <CASE_2_4>:
  40505a:	62 f1 fd 48 28 07    	vmovapd (%rdi),%zmm0
  405060:	62 f1 fd 48 28 4f 01 	vmovapd 0x40(%rdi),%zmm1
  405067:	62 f1 fd 48 28 57 02 	vmovapd 0x80(%rdi),%zmm2
  40506e:	62 f1 fd 48 28 5f 03 	vmovapd 0xc0(%rdi),%zmm3
  405075:	62 f1 fd 48 28 67 04 	vmovapd 0x100(%rdi),%zmm4
  40507c:	62 f1 fd 48 28 6f 05 	vmovapd 0x140(%rdi),%zmm5
  405083:	62 f1 fd 48 28 77 06 	vmovapd 0x180(%rdi),%zmm6
  40508a:	62 f1 fd 48 28 7f 07 	vmovapd 0x1c0(%rdi),%zmm7
  405091:	62 71 fd 48 28 47 08 	vmovapd 0x200(%rdi),%zmm8
  405098:	62 71 fd 48 28 4f 09 	vmovapd 0x240(%rdi),%zmm9
  40509f:	62 71 fd 48 28 57 0a 	vmovapd 0x280(%rdi),%zmm10
  4050a6:	62 71 fd 48 28 5f 0b 	vmovapd 0x2c0(%rdi),%zmm11
  4050ad:	62 71 fd 48 28 67 0c 	vmovapd 0x300(%rdi),%zmm12
  4050b4:	62 71 fd 48 28 6f 0d 	vmovapd 0x340(%rdi),%zmm13
  4050bb:	62 71 fd 48 28 77 0e 	vmovapd 0x380(%rdi),%zmm14
  4050c2:	62 e2 fd 58 b8 0e    	vfmadd231pd (%rsi){1to8},%zmm0,%zmm17
  4050c8:	62 62 fd 58 b8 5e 04 	vfmadd231pd 0x20(%rsi){1to8},%zmm0,%zmm27
  4050cf:	62 e2 d5 58 b8 4e 01 	vfmadd231pd 0x8(%rsi){1to8},%zmm5,%zmm17
  4050d6:	62 e2 d5 58 b8 76 02 	vfmadd231pd 0x10(%rsi){1to8},%zmm5,%zmm22
  4050dd:	62 e2 ad 58 b8 76 03 	vfmadd231pd 0x18(%rsi){1to8},%zmm10,%zmm22
  4050e4:	62 62 ad 58 b8 5e 05 	vfmadd231pd 0x28(%rsi){1to8},%zmm10,%zmm27
  4050eb:	62 e2 f5 58 b8 16    	vfmadd231pd (%rsi){1to8},%zmm1,%zmm18
  4050f1:	62 62 f5 58 b8 66 04 	vfmadd231pd 0x20(%rsi){1to8},%zmm1,%zmm28
  4050f8:	62 e2 cd 58 b8 56 01 	vfmadd231pd 0x8(%rsi){1to8},%zmm6,%zmm18
  4050ff:	62 e2 cd 58 b8 7e 02 	vfmadd231pd 0x10(%rsi){1to8},%zmm6,%zmm23
  405106:	62 e2 a5 58 b8 7e 03 	vfmadd231pd 0x18(%rsi){1to8},%zmm11,%zmm23
  40510d:	62 62 a5 58 b8 66 05 	vfmadd231pd 0x28(%rsi){1to8},%zmm11,%zmm28
  405114:	62 e2 ed 58 b8 1e    	vfmadd231pd (%rsi){1to8},%zmm2,%zmm19
  40511a:	62 62 ed 58 b8 6e 04 	vfmadd231pd 0x20(%rsi){1to8},%zmm2,%zmm29
  405121:	62 e2 c5 58 b8 5e 01 	vfmadd231pd 0x8(%rsi){1to8},%zmm7,%zmm19
  405128:	62 62 c5 58 b8 46 02 	vfmadd231pd 0x10(%rsi){1to8},%zmm7,%zmm24
  40512f:	62 62 9d 58 b8 46 03 	vfmadd231pd 0x18(%rsi){1to8},%zmm12,%zmm24
  405136:	62 62 9d 58 b8 6e 05 	vfmadd231pd 0x28(%rsi){1to8},%zmm12,%zmm29
  40513d:	62 e2 e5 58 b8 26    	vfmadd231pd (%rsi){1to8},%zmm3,%zmm20
  405143:	62 62 e5 58 b8 76 04 	vfmadd231pd 0x20(%rsi){1to8},%zmm3,%zmm30
  40514a:	62 e2 bd 58 b8 66 01 	vfmadd231pd 0x8(%rsi){1to8},%zmm8,%zmm20
  405151:	62 62 bd 58 b8 4e 02 	vfmadd231pd 0x10(%rsi){1to8},%zmm8,%zmm25
  405158:	62 62 95 58 b8 4e 03 	vfmadd231pd 0x18(%rsi){1to8},%zmm13,%zmm25
  40515f:	62 62 95 58 b8 76 05 	vfmadd231pd 0x28(%rsi){1to8},%zmm13,%zmm30
  405166:	62 e2 dd 58 b8 2e    	vfmadd231pd (%rsi){1to8},%zmm4,%zmm21
  40516c:	62 62 dd 58 b8 7e 04 	vfmadd231pd 0x20(%rsi){1to8},%zmm4,%zmm31
  405173:	62 e2 b5 58 b8 6e 01 	vfmadd231pd 0x8(%rsi){1to8},%zmm9,%zmm21
  40517a:	62 62 b5 58 b8 56 02 	vfmadd231pd 0x10(%rsi){1to8},%zmm9,%zmm26
  405181:	62 62 8d 58 b8 56 03 	vfmadd231pd 0x18(%rsi){1to8},%zmm14,%zmm26
  405188:	62 62 8d 58 b8 7e 05 	vfmadd231pd 0x28(%rsi){1to8},%zmm14,%zmm31
  40518f:	41 ff e2             	jmpq   *%r10

0000000000405192 <CASE_3_4>:
  405192:	62 f1 fd 48 28 07    	vmovapd (%rdi),%zmm0
  405198:	62 f1 fd 48 28 4f 01 	vmovapd 0x40(%rdi),%zmm1
  40519f:	62 f1 fd 48 28 57 02 	vmovapd 0x80(%rdi),%zmm2
  4051a6:	62 f1 fd 48 28 5f 03 	vmovapd 0xc0(%rdi),%zmm3
  4051ad:	62 f1 fd 48 28 67 04 	vmovapd 0x100(%rdi),%zmm4
  4051b4:	62 f1 fd 48 28 6f 05 	vmovapd 0x140(%rdi),%zmm5
  4051bb:	62 f1 fd 48 28 77 06 	vmovapd 0x180(%rdi),%zmm6
  4051c2:	62 f1 fd 48 28 7f 07 	vmovapd 0x1c0(%rdi),%zmm7
  4051c9:	62 71 fd 48 28 47 08 	vmovapd 0x200(%rdi),%zmm8
  4051d0:	62 71 fd 48 28 4f 09 	vmovapd 0x240(%rdi),%zmm9
  4051d7:	62 71 fd 48 28 57 0a 	vmovapd 0x280(%rdi),%zmm10
  4051de:	62 71 fd 48 28 5f 0b 	vmovapd 0x2c0(%rdi),%zmm11
  4051e5:	62 71 fd 48 28 67 0c 	vmovapd 0x300(%rdi),%zmm12
  4051ec:	62 71 fd 48 28 6f 0d 	vmovapd 0x340(%rdi),%zmm13
  4051f3:	62 71 fd 48 28 77 0e 	vmovapd 0x380(%rdi),%zmm14
  4051fa:	62 e2 fd 58 b8 0e    	vfmadd231pd (%rsi){1to8},%zmm0,%zmm17
  405200:	62 e2 d5 58 b8 76 01 	vfmadd231pd 0x8(%rsi){1to8},%zmm5,%zmm22
  405207:	62 62 ad 58 b8 5e 02 	vfmadd231pd 0x10(%rsi){1to8},%zmm10,%zmm27
  40520e:	62 e2 f5 58 b8 16    	vfmadd231pd (%rsi){1to8},%zmm1,%zmm18
  405214:	62 e2 cd 58 b8 7e 01 	vfmadd231pd 0x8(%rsi){1to8},%zmm6,%zmm23
  40521b:	62 62 a5 58 b8 66 02 	vfmadd231pd 0x10(%rsi){1to8},%zmm11,%zmm28
  405222:	62 e2 ed 58 b8 1e    	vfmadd231pd (%rsi){1to8},%zmm2,%zmm19
  405228:	62 62 c5 58 b8 46 01 	vfmadd231pd 0x8(%rsi){1to8},%zmm7,%zmm24
  40522f:	62 62 9d 58 b8 6e 02 	vfmadd231pd 0x10(%rsi){1to8},%zmm12,%zmm29
  405236:	62 e2 e5 58 b8 26    	vfmadd231pd (%rsi){1to8},%zmm3,%zmm20
  40523c:	62 62 bd 58 b8 4e 01 	vfmadd231pd 0x8(%rsi){1to8},%zmm8,%zmm25
  405243:	62 62 95 58 b8 76 02 	vfmadd231pd 0x10(%rsi){1to8},%zmm13,%zmm30
  40524a:	62 e2 dd 58 b8 2e    	vfmadd231pd (%rsi){1to8},%zmm4,%zmm21
  405250:	62 62 b5 58 b8 56 01 	vfmadd231pd 0x8(%rsi){1to8},%zmm9,%zmm26
  405257:	62 62 8d 58 b8 7e 02 	vfmadd231pd 0x10(%rsi){1to8},%zmm14,%zmm31
  40525e:	41 ff e2             	jmpq   *%r10

0000000000405261 <CASE_4_4>:
  405261:	62 f1 fd 48 28 07    	vmovapd (%rdi),%zmm0
  405267:	62 f1 fd 48 28 4f 01 	vmovapd 0x40(%rdi),%zmm1
  40526e:	62 f1 fd 48 28 57 02 	vmovapd 0x80(%rdi),%zmm2
  405275:	62 f1 fd 48 28 5f 03 	vmovapd 0xc0(%rdi),%zmm3
  40527c:	62 f1 fd 48 28 67 04 	vmovapd 0x100(%rdi),%zmm4
  405283:	62 f1 fd 48 28 6f 05 	vmovapd 0x140(%rdi),%zmm5
  40528a:	62 f1 fd 48 28 77 06 	vmovapd 0x180(%rdi),%zmm6
  405291:	62 f1 fd 48 28 7f 07 	vmovapd 0x1c0(%rdi),%zmm7
  405298:	62 71 fd 48 28 47 08 	vmovapd 0x200(%rdi),%zmm8
  40529f:	62 71 fd 48 28 4f 09 	vmovapd 0x240(%rdi),%zmm9
  4052a6:	62 71 fd 48 28 57 0a 	vmovapd 0x280(%rdi),%zmm10
  4052ad:	62 71 fd 48 28 5f 0b 	vmovapd 0x2c0(%rdi),%zmm11
  4052b4:	62 71 fd 48 28 67 0c 	vmovapd 0x300(%rdi),%zmm12
  4052bb:	62 71 fd 48 28 6f 0d 	vmovapd 0x340(%rdi),%zmm13
  4052c2:	62 71 fd 48 28 77 0e 	vmovapd 0x380(%rdi),%zmm14
  4052c9:	62 e2 fd 58 b8 0e    	vfmadd231pd (%rsi){1to8},%zmm0,%zmm17
  4052cf:	62 e2 fd 58 b8 76 02 	vfmadd231pd 0x10(%rsi){1to8},%zmm0,%zmm22
  4052d6:	62 62 fd 58 b8 5e 04 	vfmadd231pd 0x20(%rsi){1to8},%zmm0,%zmm27
  4052dd:	62 e2 d5 58 b8 76 03 	vfmadd231pd 0x18(%rsi){1to8},%zmm5,%zmm22
  4052e4:	62 62 d5 58 b8 5e 05 	vfmadd231pd 0x28(%rsi){1to8},%zmm5,%zmm27
  4052eb:	62 e2 ad 58 b8 4e 01 	vfmadd231pd 0x8(%rsi){1to8},%zmm10,%zmm17
  4052f2:	62 62 ad 58 b8 5e 06 	vfmadd231pd 0x30(%rsi){1to8},%zmm10,%zmm27
  4052f9:	62 e2 f5 58 b8 16    	vfmadd231pd (%rsi){1to8},%zmm1,%zmm18
  4052ff:	62 e2 f5 58 b8 7e 02 	vfmadd231pd 0x10(%rsi){1to8},%zmm1,%zmm23
  405306:	62 62 f5 58 b8 66 04 	vfmadd231pd 0x20(%rsi){1to8},%zmm1,%zmm28
  40530d:	62 e2 cd 58 b8 7e 03 	vfmadd231pd 0x18(%rsi){1to8},%zmm6,%zmm23
  405314:	62 62 cd 58 b8 66 05 	vfmadd231pd 0x28(%rsi){1to8},%zmm6,%zmm28
  40531b:	62 e2 a5 58 b8 56 01 	vfmadd231pd 0x8(%rsi){1to8},%zmm11,%zmm18
  405322:	62 62 a5 58 b8 66 06 	vfmadd231pd 0x30(%rsi){1to8},%zmm11,%zmm28
  405329:	62 e2 ed 58 b8 1e    	vfmadd231pd (%rsi){1to8},%zmm2,%zmm19
  40532f:	62 62 ed 58 b8 46 02 	vfmadd231pd 0x10(%rsi){1to8},%zmm2,%zmm24
  405336:	62 62 ed 58 b8 6e 04 	vfmadd231pd 0x20(%rsi){1to8},%zmm2,%zmm29
  40533d:	62 62 c5 58 b8 46 03 	vfmadd231pd 0x18(%rsi){1to8},%zmm7,%zmm24
  405344:	62 62 c5 58 b8 6e 05 	vfmadd231pd 0x28(%rsi){1to8},%zmm7,%zmm29
  40534b:	62 e2 9d 58 b8 5e 01 	vfmadd231pd 0x8(%rsi){1to8},%zmm12,%zmm19
  405352:	62 62 9d 58 b8 6e 06 	vfmadd231pd 0x30(%rsi){1to8},%zmm12,%zmm29
  405359:	62 e2 e5 58 b8 26    	vfmadd231pd (%rsi){1to8},%zmm3,%zmm20
  40535f:	62 62 e5 58 b8 4e 02 	vfmadd231pd 0x10(%rsi){1to8},%zmm3,%zmm25
  405366:	62 62 e5 58 b8 76 04 	vfmadd231pd 0x20(%rsi){1to8},%zmm3,%zmm30
  40536d:	62 62 bd 58 b8 4e 03 	vfmadd231pd 0x18(%rsi){1to8},%zmm8,%zmm25
  405374:	62 62 bd 58 b8 76 05 	vfmadd231pd 0x28(%rsi){1to8},%zmm8,%zmm30
  40537b:	62 e2 95 58 b8 66 01 	vfmadd231pd 0x8(%rsi){1to8},%zmm13,%zmm20
  405382:	62 62 95 58 b8 76 06 	vfmadd231pd 0x30(%rsi){1to8},%zmm13,%zmm30
  405389:	62 e2 dd 58 b8 2e    	vfmadd231pd (%rsi){1to8},%zmm4,%zmm21
  40538f:	62 62 dd 58 b8 56 02 	vfmadd231pd 0x10(%rsi){1to8},%zmm4,%zmm26
  405396:	62 62 dd 58 b8 7e 04 	vfmadd231pd 0x20(%rsi){1to8},%zmm4,%zmm31
  40539d:	62 62 b5 58 b8 56 03 	vfmadd231pd 0x18(%rsi){1to8},%zmm9,%zmm26
  4053a4:	62 62 b5 58 b8 7e 05 	vfmadd231pd 0x28(%rsi){1to8},%zmm9,%zmm31
  4053ab:	62 e2 8d 58 b8 6e 01 	vfmadd231pd 0x8(%rsi){1to8},%zmm14,%zmm21
  4053b2:	62 62 8d 58 b8 7e 06 	vfmadd231pd 0x30(%rsi){1to8},%zmm14,%zmm31
  4053b9:	41 ff e2             	jmpq   *%r10

00000000004053bc <END_SWITCH_4>:
  4053bc:	48 83 c2 00          	add    $0x0,%rdx
  4053c0:	62 e1 fd 48 28 0a    	vmovapd (%rdx),%zmm17
  4053c6:	62 e1 fd 48 28 52 01 	vmovapd 0x40(%rdx),%zmm18
  4053cd:	62 e1 fd 48 28 5a 02 	vmovapd 0x80(%rdx),%zmm19
  4053d4:	62 e1 fd 48 28 62 03 	vmovapd 0xc0(%rdx),%zmm20
  4053db:	62 e1 fd 48 28 6a 04 	vmovapd 0x100(%rdx),%zmm21
  4053e2:	62 e1 fd 48 28 72 05 	vmovapd 0x140(%rdx),%zmm22
  4053e9:	62 e1 fd 48 28 7a 06 	vmovapd 0x180(%rdx),%zmm23
  4053f0:	62 61 fd 48 28 42 07 	vmovapd 0x1c0(%rdx),%zmm24
  4053f7:	62 61 fd 48 28 4a 08 	vmovapd 0x200(%rdx),%zmm25
  4053fe:	62 61 fd 48 28 52 09 	vmovapd 0x240(%rdx),%zmm26
  405405:	62 61 fd 48 28 5a 0a 	vmovapd 0x280(%rdx),%zmm27
  40540c:	62 61 fd 48 28 62 0b 	vmovapd 0x2c0(%rdx),%zmm28
  405413:	62 61 fd 48 28 6a 0c 	vmovapd 0x300(%rdx),%zmm29
  40541a:	62 61 fd 48 28 72 0d 	vmovapd 0x340(%rdx),%zmm30
  405421:	62 61 fd 48 28 7a 0e 	vmovapd 0x380(%rdx),%zmm31
  405428:	49 c7 c2 3f 54 40 00 	mov    $0x40543f,%r10
  40542f:	48 83 c6 00          	add    $0x0,%rsi
  405433:	48 81 c7 80 07 00 00 	add    $0x780,%rdi
  40543a:	e9 7a fa ff ff       	jmpq   404eb9 <CASE_1_4>

000000000040543f <BLOCK_0_0_2_4>:
  40543f:	62 e1 fd 48 29 0a    	vmovapd %zmm17,(%rdx)
  405445:	62 e1 fd 48 29 52 01 	vmovapd %zmm18,0x40(%rdx)
  40544c:	62 e1 fd 48 29 5a 02 	vmovapd %zmm19,0x80(%rdx)
  405453:	62 e1 fd 48 29 62 03 	vmovapd %zmm20,0xc0(%rdx)
  40545a:	62 e1 fd 48 29 6a 04 	vmovapd %zmm21,0x100(%rdx)
  405461:	62 e1 fd 48 29 72 05 	vmovapd %zmm22,0x140(%rdx)
  405468:	62 e1 fd 48 29 7a 06 	vmovapd %zmm23,0x180(%rdx)
  40546f:	62 61 fd 48 29 42 07 	vmovapd %zmm24,0x1c0(%rdx)
  405476:	62 61 fd 48 29 4a 08 	vmovapd %zmm25,0x200(%rdx)
  40547d:	62 61 fd 48 29 52 09 	vmovapd %zmm26,0x240(%rdx)
  405484:	62 61 fd 48 29 5a 0a 	vmovapd %zmm27,0x280(%rdx)
  40548b:	62 61 fd 48 29 62 0b 	vmovapd %zmm28,0x2c0(%rdx)
  405492:	62 61 fd 48 29 6a 0c 	vmovapd %zmm29,0x300(%rdx)
  405499:	62 61 fd 48 29 72 0d 	vmovapd %zmm30,0x340(%rdx)
  4054a0:	62 61 fd 48 29 7a 0e 	vmovapd %zmm31,0x380(%rdx)
  4054a7:	48 81 c2 c0 03 00 00 	add    $0x3c0,%rdx
  4054ae:	62 e1 fd 48 28 0a    	vmovapd (%rdx),%zmm17
  4054b4:	62 e1 fd 48 28 52 01 	vmovapd 0x40(%rdx),%zmm18
  4054bb:	62 e1 fd 48 28 5a 02 	vmovapd 0x80(%rdx),%zmm19
  4054c2:	62 e1 fd 48 28 62 03 	vmovapd 0xc0(%rdx),%zmm20
  4054c9:	62 e1 fd 48 28 6a 04 	vmovapd 0x100(%rdx),%zmm21
  4054d0:	62 e1 fd 48 28 72 05 	vmovapd 0x140(%rdx),%zmm22
  4054d7:	62 e1 fd 48 28 7a 06 	vmovapd 0x180(%rdx),%zmm23
  4054de:	62 61 fd 48 28 42 07 	vmovapd 0x1c0(%rdx),%zmm24
  4054e5:	62 61 fd 48 28 4a 08 	vmovapd 0x200(%rdx),%zmm25
  4054ec:	62 61 fd 48 28 52 09 	vmovapd 0x240(%rdx),%zmm26
  4054f3:	62 61 fd 48 28 5a 0a 	vmovapd 0x280(%rdx),%zmm27
  4054fa:	62 61 fd 48 28 62 0b 	vmovapd 0x2c0(%rdx),%zmm28
  405501:	62 61 fd 48 28 6a 0c 	vmovapd 0x300(%rdx),%zmm29
  405508:	62 61 fd 48 28 72 0d 	vmovapd 0x340(%rdx),%zmm30
  40550f:	62 61 fd 48 28 7a 0e 	vmovapd 0x380(%rdx),%zmm31
  405516:	49 c7 c2 2a 55 40 00 	mov    $0x40552a,%r10
  40551d:	48 83 c6 48          	add    $0x48,%rsi
  405521:	48 83 c7 00          	add    $0x0,%rdi
  405525:	e9 30 fb ff ff       	jmpq   40505a <CASE_2_4>

000000000040552a <BLOCK_0_1_2_4>:
  40552a:	62 e1 fd 48 29 0a    	vmovapd %zmm17,(%rdx)
  405530:	62 e1 fd 48 29 52 01 	vmovapd %zmm18,0x40(%rdx)
  405537:	62 e1 fd 48 29 5a 02 	vmovapd %zmm19,0x80(%rdx)
  40553e:	62 e1 fd 48 29 62 03 	vmovapd %zmm20,0xc0(%rdx)
  405545:	62 e1 fd 48 29 6a 04 	vmovapd %zmm21,0x100(%rdx)
  40554c:	62 e1 fd 48 29 72 05 	vmovapd %zmm22,0x140(%rdx)
  405553:	62 e1 fd 48 29 7a 06 	vmovapd %zmm23,0x180(%rdx)
  40555a:	62 61 fd 48 29 42 07 	vmovapd %zmm24,0x1c0(%rdx)
  405561:	62 61 fd 48 29 4a 08 	vmovapd %zmm25,0x200(%rdx)
  405568:	62 61 fd 48 29 52 09 	vmovapd %zmm26,0x240(%rdx)
  40556f:	62 61 fd 48 29 5a 0a 	vmovapd %zmm27,0x280(%rdx)
  405576:	62 61 fd 48 29 62 0b 	vmovapd %zmm28,0x2c0(%rdx)
  40557d:	62 61 fd 48 29 6a 0c 	vmovapd %zmm29,0x300(%rdx)
  405584:	62 61 fd 48 29 72 0d 	vmovapd %zmm30,0x340(%rdx)
  40558b:	62 61 fd 48 29 7a 0e 	vmovapd %zmm31,0x380(%rdx)
  405592:	48 81 c2 c0 03 00 00 	add    $0x3c0,%rdx
  405599:	62 e1 fd 48 28 0a    	vmovapd (%rdx),%zmm17
  40559f:	62 e1 fd 48 28 52 01 	vmovapd 0x40(%rdx),%zmm18
  4055a6:	62 e1 fd 48 28 5a 02 	vmovapd 0x80(%rdx),%zmm19
  4055ad:	62 e1 fd 48 28 62 03 	vmovapd 0xc0(%rdx),%zmm20
  4055b4:	62 e1 fd 48 28 6a 04 	vmovapd 0x100(%rdx),%zmm21
  4055bb:	62 e1 fd 48 28 72 05 	vmovapd 0x140(%rdx),%zmm22
  4055c2:	62 e1 fd 48 28 7a 06 	vmovapd 0x180(%rdx),%zmm23
  4055c9:	62 61 fd 48 28 42 07 	vmovapd 0x1c0(%rdx),%zmm24
  4055d0:	62 61 fd 48 28 4a 08 	vmovapd 0x200(%rdx),%zmm25
  4055d7:	62 61 fd 48 28 52 09 	vmovapd 0x240(%rdx),%zmm26
  4055de:	62 61 fd 48 28 5a 0a 	vmovapd 0x280(%rdx),%zmm27
  4055e5:	62 61 fd 48 28 62 0b 	vmovapd 0x2c0(%rdx),%zmm28
  4055ec:	62 61 fd 48 28 6a 0c 	vmovapd 0x300(%rdx),%zmm29
  4055f3:	62 61 fd 48 28 72 0d 	vmovapd 0x340(%rdx),%zmm30
  4055fa:	62 61 fd 48 28 7a 0e 	vmovapd 0x380(%rdx),%zmm31
  405601:	49 c7 c2 18 56 40 00 	mov    $0x405618,%r10
  405608:	48 83 c6 30          	add    $0x30,%rsi
  40560c:	48 81 c7 80 f8 ff ff 	add    $0xfffffffffffff880,%rdi
  405613:	e9 7a fb ff ff       	jmpq   405192 <CASE_3_4>

0000000000405618 <BLOCK_0_2_0_4>:
  405618:	49 c7 c2 2f 56 40 00 	mov    $0x40562f,%r10
  40561f:	48 83 c6 18          	add    $0x18,%rsi
  405623:	48 81 c7 c0 03 00 00 	add    $0x3c0,%rdi
  40562a:	e9 32 fc ff ff       	jmpq   405261 <CASE_4_4>

000000000040562f <BLOCK_0_2_1_4>:
  40562f:	62 e1 fd 48 29 0a    	vmovapd %zmm17,(%rdx)
  405635:	62 e1 fd 48 29 52 01 	vmovapd %zmm18,0x40(%rdx)
  40563c:	62 e1 fd 48 29 5a 02 	vmovapd %zmm19,0x80(%rdx)
  405643:	62 e1 fd 48 29 62 03 	vmovapd %zmm20,0xc0(%rdx)
  40564a:	62 e1 fd 48 29 6a 04 	vmovapd %zmm21,0x100(%rdx)
  405651:	62 e1 fd 48 29 72 05 	vmovapd %zmm22,0x140(%rdx)
  405658:	62 e1 fd 48 29 7a 06 	vmovapd %zmm23,0x180(%rdx)
  40565f:	62 61 fd 48 29 42 07 	vmovapd %zmm24,0x1c0(%rdx)
  405666:	62 61 fd 48 29 4a 08 	vmovapd %zmm25,0x200(%rdx)
  40566d:	62 61 fd 48 29 52 09 	vmovapd %zmm26,0x240(%rdx)
  405674:	62 61 fd 48 29 5a 0a 	vmovapd %zmm27,0x280(%rdx)
  40567b:	62 61 fd 48 29 62 0b 	vmovapd %zmm28,0x2c0(%rdx)
  405682:	62 61 fd 48 29 6a 0c 	vmovapd %zmm29,0x300(%rdx)
  405689:	62 61 fd 48 29 72 0d 	vmovapd %zmm30,0x340(%rdx)
  405690:	62 61 fd 48 29 7a 0e 	vmovapd %zmm31,0x380(%rdx)
  405697:	48 81 c2 c0 03 00 00 	add    $0x3c0,%rdx
  40569e:	62 e1 fd 48 28 0a    	vmovapd (%rdx),%zmm17
  4056a4:	62 e1 fd 48 28 52 01 	vmovapd 0x40(%rdx),%zmm18
  4056ab:	62 e1 fd 48 28 5a 02 	vmovapd 0x80(%rdx),%zmm19
  4056b2:	62 e1 fd 48 28 62 03 	vmovapd 0xc0(%rdx),%zmm20
  4056b9:	62 e1 fd 48 28 6a 04 	vmovapd 0x100(%rdx),%zmm21
  4056c0:	62 e1 fd 48 28 72 05 	vmovapd 0x140(%rdx),%zmm22
  4056c7:	62 e1 fd 48 28 7a 06 	vmovapd 0x180(%rdx),%zmm23
  4056ce:	62 61 fd 48 28 42 07 	vmovapd 0x1c0(%rdx),%zmm24
  4056d5:	62 61 fd 48 28 4a 08 	vmovapd 0x200(%rdx),%zmm25
  4056dc:	62 61 fd 48 28 52 09 	vmovapd 0x240(%rdx),%zmm26
  4056e3:	62 61 fd 48 28 5a 0a 	vmovapd 0x280(%rdx),%zmm27
  4056ea:	62 61 fd 48 28 62 0b 	vmovapd 0x2c0(%rdx),%zmm28
  4056f1:	62 61 fd 48 28 6a 0c 	vmovapd 0x300(%rdx),%zmm29
  4056f8:	62 61 fd 48 28 72 0d 	vmovapd 0x340(%rdx),%zmm30
  4056ff:	62 61 fd 48 28 7a 0e 	vmovapd 0x380(%rdx),%zmm31
  405706:	49 c7 c2 1d 57 40 00 	mov    $0x40571d,%r10
  40570d:	48 83 c6 38          	add    $0x38,%rsi
  405711:	48 81 c7 c0 03 00 00 	add    $0x3c0,%rdi
  405718:	e9 75 fa ff ff       	jmpq   405192 <CASE_3_4>

000000000040571d <BLOCK_0_3_2_4>:
  40571d:	62 e1 fd 48 29 0a    	vmovapd %zmm17,(%rdx)
  405723:	62 e1 fd 48 29 52 01 	vmovapd %zmm18,0x40(%rdx)
  40572a:	62 e1 fd 48 29 5a 02 	vmovapd %zmm19,0x80(%rdx)
  405731:	62 e1 fd 48 29 62 03 	vmovapd %zmm20,0xc0(%rdx)
  405738:	62 e1 fd 48 29 6a 04 	vmovapd %zmm21,0x100(%rdx)
  40573f:	62 e1 fd 48 29 72 05 	vmovapd %zmm22,0x140(%rdx)
  405746:	62 e1 fd 48 29 7a 06 	vmovapd %zmm23,0x180(%rdx)
  40574d:	62 61 fd 48 29 42 07 	vmovapd %zmm24,0x1c0(%rdx)
  405754:	62 61 fd 48 29 4a 08 	vmovapd %zmm25,0x200(%rdx)
  40575b:	62 61 fd 48 29 52 09 	vmovapd %zmm26,0x240(%rdx)
  405762:	62 61 fd 48 29 5a 0a 	vmovapd %zmm27,0x280(%rdx)
  405769:	62 61 fd 48 29 62 0b 	vmovapd %zmm28,0x2c0(%rdx)
  405770:	62 61 fd 48 29 6a 0c 	vmovapd %zmm29,0x300(%rdx)
  405777:	62 61 fd 48 29 72 0d 	vmovapd %zmm30,0x340(%rdx)
  40577e:	62 61 fd 48 29 7a 0e 	vmovapd %zmm31,0x380(%rdx)
  405785:	48 81 c2 c0 03 00 00 	add    $0x3c0,%rdx
  40578c:	62 e1 fd 48 28 0a    	vmovapd (%rdx),%zmm17
  405792:	62 e1 fd 48 28 52 01 	vmovapd 0x40(%rdx),%zmm18
  405799:	62 e1 fd 48 28 5a 02 	vmovapd 0x80(%rdx),%zmm19
  4057a0:	62 e1 fd 48 28 62 03 	vmovapd 0xc0(%rdx),%zmm20
  4057a7:	62 e1 fd 48 28 6a 04 	vmovapd 0x100(%rdx),%zmm21
  4057ae:	62 e1 fd 48 28 72 05 	vmovapd 0x140(%rdx),%zmm22
  4057b5:	62 e1 fd 48 28 7a 06 	vmovapd 0x180(%rdx),%zmm23
  4057bc:	62 61 fd 48 28 42 07 	vmovapd 0x1c0(%rdx),%zmm24
  4057c3:	62 61 fd 48 28 4a 08 	vmovapd 0x200(%rdx),%zmm25
  4057ca:	62 61 fd 48 28 52 09 	vmovapd 0x240(%rdx),%zmm26
  4057d1:	62 61 fd 48 28 5a 0a 	vmovapd 0x280(%rdx),%zmm27
  4057d8:	62 61 fd 48 28 62 0b 	vmovapd 0x2c0(%rdx),%zmm28
  4057df:	62 61 fd 48 28 6a 0c 	vmovapd 0x300(%rdx),%zmm29
  4057e6:	62 61 fd 48 28 72 0d 	vmovapd 0x340(%rdx),%zmm30
  4057ed:	62 61 fd 48 28 7a 0e 	vmovapd 0x380(%rdx),%zmm31
  4057f4:	49 c7 c2 08 58 40 00 	mov    $0x405808,%r10
  4057fb:	48 83 c6 18          	add    $0x18,%rsi
  4057ff:	48 83 c7 00          	add    $0x0,%rdi
  405803:	e9 52 f8 ff ff       	jmpq   40505a <CASE_2_4>

0000000000405808 <BLOCK_0_4_2_4>:
  405808:	62 e1 fd 48 29 0a    	vmovapd %zmm17,(%rdx)
  40580e:	62 e1 fd 48 29 52 01 	vmovapd %zmm18,0x40(%rdx)
  405815:	62 e1 fd 48 29 5a 02 	vmovapd %zmm19,0x80(%rdx)
  40581c:	62 e1 fd 48 29 62 03 	vmovapd %zmm20,0xc0(%rdx)
  405823:	62 e1 fd 48 29 6a 04 	vmovapd %zmm21,0x100(%rdx)
  40582a:	62 e1 fd 48 29 72 05 	vmovapd %zmm22,0x140(%rdx)
  405831:	62 e1 fd 48 29 7a 06 	vmovapd %zmm23,0x180(%rdx)
  405838:	62 61 fd 48 29 42 07 	vmovapd %zmm24,0x1c0(%rdx)
  40583f:	62 61 fd 48 29 4a 08 	vmovapd %zmm25,0x200(%rdx)
  405846:	62 61 fd 48 29 52 09 	vmovapd %zmm26,0x240(%rdx)
  40584d:	62 61 fd 48 29 5a 0a 	vmovapd %zmm27,0x280(%rdx)
  405854:	62 61 fd 48 29 62 0b 	vmovapd %zmm28,0x2c0(%rdx)
  40585b:	62 61 fd 48 29 6a 0c 	vmovapd %zmm29,0x300(%rdx)
  405862:	62 61 fd 48 29 72 0d 	vmovapd %zmm30,0x340(%rdx)
  405869:	62 61 fd 48 29 7a 0e 	vmovapd %zmm31,0x380(%rdx)
  405870:	c3                   	retq   

0000000000405871 <_ZlsRSoRK12SparseMatrix>:
  405871:	48 83 ec 18          	sub    $0x18,%rsp
  405875:	4c 89 3c 24          	mov    %r15,(%rsp)
  405879:	4c 89 74 24 08       	mov    %r14,0x8(%rsp)
  40587e:	4c 89 6c 24 10       	mov    %r13,0x10(%rsp)
  405883:	49 89 f7             	mov    %rsi,%r15
  405886:	49 89 fd             	mov    %rdi,%r13
  405889:	45 31 f6             	xor    %r14d,%r14d
  40588c:	41 83 7f 10 00       	cmpl   $0x0,0x10(%r15)
  405891:	7e 2c                	jle    4058bf <_ZlsRSoRK12SparseMatrix+0x4e>
  405893:	49 8b 57 18          	mov    0x18(%r15),%rdx
  405897:	4c 89 ef             	mov    %r13,%rdi
  40589a:	c4 a1 7b 10 04 f2    	vmovsd (%rdx,%r14,8),%xmm0
  4058a0:	e8 5b bf ff ff       	callq  401800 <_ZNSolsEd@plt>
  4058a5:	48 89 c7             	mov    %rax,%rdi
  4058a8:	be 9c 6d 40 00       	mov    $0x406d9c,%esi
  4058ad:	e8 8e bd ff ff       	callq  401640 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  4058b2:	49 63 57 10          	movslq 0x10(%r15),%rdx
  4058b6:	49 83 c6 01          	add    $0x1,%r14
  4058ba:	49 39 d6             	cmp    %rdx,%r14
  4058bd:	7c d4                	jl     405893 <_ZlsRSoRK12SparseMatrix+0x22>
  4058bf:	4c 89 e8             	mov    %r13,%rax
  4058c2:	4c 8b 6c 24 10       	mov    0x10(%rsp),%r13
  4058c7:	4c 8b 74 24 08       	mov    0x8(%rsp),%r14
  4058cc:	4c 8b 3c 24          	mov    (%rsp),%r15
  4058d0:	48 83 c4 18          	add    $0x18,%rsp
  4058d4:	c3                   	retq   

00000000004058d5 <_Z6cyclesl>:
  4058d5:	6a 16                	pushq  $0x16
  4058d7:	58                   	pop    %rax
  4058d8:	c3                   	retq   

00000000004058d9 <_Z6gflopslli>:
  4058d9:	6a 16                	pushq  $0x16
  4058db:	58                   	pop    %rax
  4058dc:	c3                   	retq   

00000000004058dd <_ZN17_INTERNALa880ec899__gnu_cxx27__exchange_and_add_dispatchEPii>:
  4058dd:	b8 a0 17 40 00       	mov    $0x4017a0,%eax
  4058e2:	48 85 c0             	test   %rax,%rax
  4058e5:	74 0c                	je     4058f3 <_ZN17_INTERNALa880ec899__gnu_cxx27__exchange_and_add_dispatchEPii+0x16>
  4058e7:	31 c9                	xor    %ecx,%ecx
  4058e9:	83 c1 ff             	add    $0xffffffff,%ecx
  4058ec:	f0 0f c1 0f          	lock xadd %ecx,(%rdi)
  4058f0:	89 c8                	mov    %ecx,%eax
  4058f2:	c3                   	retq   
  4058f3:	8b 07                	mov    (%rdi),%eax
  4058f5:	83 07 ff             	addl   $0xffffffff,(%rdi)
  4058f8:	c3                   	retq   

00000000004058f9 <__sti__$E>:
  4058f9:	56                   	push   %rsi
  4058fa:	bf c9 a3 60 00       	mov    $0x60a3c9,%edi
  4058ff:	e8 3c be ff ff       	callq  401740 <_ZNSt8ios_base4InitC1Ev@plt>
  405904:	bf 20 18 40 00       	mov    $0x401820,%edi
  405909:	be c9 a3 60 00       	mov    $0x60a3c9,%esi
  40590e:	ba 90 a1 60 00       	mov    $0x60a190,%edx
  405913:	48 83 c4 08          	add    $0x8,%rsp
  405917:	e9 04 bd ff ff       	jmpq   401620 <__cxa_atexit@plt>

000000000040591c <_ZN11DenseMatrix4zeroEv>:
  40591c:	49 89 f9             	mov    %rdi,%r9
  40591f:	41 8b 79 0c          	mov    0xc(%r9),%edi
  405923:	45 31 c0             	xor    %r8d,%r8d
  405926:	85 ff                	test   %edi,%edi
  405928:	7e 39                	jle    405963 <_ZN11DenseMatrix4zeroEv+0x47>
  40592a:	41 8b 71 08          	mov    0x8(%r9),%esi
  40592e:	31 d2                	xor    %edx,%edx
  405930:	48 63 ce             	movslq %esi,%rcx
  405933:	48 89 d0             	mov    %rdx,%rax
  405936:	85 f6                	test   %esi,%esi
  405938:	7e 20                	jle    40595a <_ZN11DenseMatrix4zeroEv+0x3e>
  40593a:	45 89 c2             	mov    %r8d,%r10d
  40593d:	4d 8b 59 18          	mov    0x18(%r9),%r11
  405941:	45 0f af 51 10       	imul   0x10(%r9),%r10d
  405946:	4d 63 d2             	movslq %r10d,%r10
  405949:	4f 8d 14 d3          	lea    (%r11,%r10,8),%r10
  40594d:	49 89 14 c2          	mov    %rdx,(%r10,%rax,8)
  405951:	48 83 c0 01          	add    $0x1,%rax
  405955:	48 39 c8             	cmp    %rcx,%rax
  405958:	7c f3                	jl     40594d <_ZN11DenseMatrix4zeroEv+0x31>
  40595a:	41 83 c0 01          	add    $0x1,%r8d
  40595e:	41 39 f8             	cmp    %edi,%r8d
  405961:	7c d0                	jl     405933 <_ZN11DenseMatrix4zeroEv+0x17>
  405963:	c3                   	retq   

0000000000405964 <_ZN11DenseMatrixD1Ev>:
  405964:	48 8d 05 bd 48 20 00 	lea    0x2048bd(%rip),%rax        # 60a228 <_ZTV11DenseMatrix+0x10>
  40596b:	48 89 07             	mov    %rax,(%rdi)
  40596e:	48 8b 7f 18          	mov    0x18(%rdi),%rdi
  405972:	e9 59 bd ff ff       	jmpq   4016d0 <free@plt>
  405977:	90                   	nop

0000000000405978 <_ZN11DenseMatrix6randomEv>:
  405978:	48 83 ec 18          	sub    $0x18,%rsp
  40597c:	4c 89 34 24          	mov    %r14,(%rsp)
  405980:	4c 89 6c 24 08       	mov    %r13,0x8(%rsp)
  405985:	4c 89 64 24 10       	mov    %r12,0x10(%rsp)
  40598a:	49 89 fe             	mov    %rdi,%r14
  40598d:	45 31 ed             	xor    %r13d,%r13d
  405990:	41 8b 56 0c          	mov    0xc(%r14),%edx
  405994:	85 d2                	test   %edx,%edx
  405996:	7e 51                	jle    4059e9 <_ZN11DenseMatrix6randomEv+0x71>
  405998:	49 63 46 08          	movslq 0x8(%r14),%rax
  40599c:	45 31 e4             	xor    %r12d,%r12d
  40599f:	48 85 c0             	test   %rax,%rax
  4059a2:	7e 3c                	jle    4059e0 <_ZN11DenseMatrix6randomEv+0x68>
  4059a4:	e8 c7 bb ff ff       	callq  401570 <rand@plt>
  4059a9:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
  4059ad:	c5 fb 2a c0          	vcvtsi2sd %eax,%xmm0,%xmm0
  4059b1:	44 89 e8             	mov    %r13d,%eax
  4059b4:	49 8b 56 18          	mov    0x18(%r14),%rdx
  4059b8:	c5 fb 5e 0d f0 12 00 	vdivsd 0x12f0(%rip),%xmm0,%xmm1        # 406cb0 <_IO_stdin_used+0x10>
  4059bf:	00 
  4059c0:	41 0f af 46 10       	imul   0x10(%r14),%eax
  4059c5:	48 98                	cltq   
  4059c7:	4c 01 e0             	add    %r12,%rax
  4059ca:	c5 fb 11 0c c2       	vmovsd %xmm1,(%rdx,%rax,8)
  4059cf:	49 63 46 08          	movslq 0x8(%r14),%rax
  4059d3:	49 83 c4 01          	add    $0x1,%r12
  4059d7:	49 39 c4             	cmp    %rax,%r12
  4059da:	7c c8                	jl     4059a4 <_ZN11DenseMatrix6randomEv+0x2c>
  4059dc:	41 8b 56 0c          	mov    0xc(%r14),%edx
  4059e0:	41 83 c5 01          	add    $0x1,%r13d
  4059e4:	41 39 d5             	cmp    %edx,%r13d
  4059e7:	7c b3                	jl     40599c <_ZN11DenseMatrix6randomEv+0x24>
  4059e9:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
  4059ee:	4c 8b 6c 24 08       	mov    0x8(%rsp),%r13
  4059f3:	4c 8b 34 24          	mov    (%rsp),%r14
  4059f7:	48 83 c4 18          	add    $0x18,%rsp
  4059fb:	c3                   	retq   

00000000004059fc <_ZN11DenseMatrixC1EPKc>:
  4059fc:	48 81 ec 18 04 00 00 	sub    $0x418,%rsp
  405a03:	4c 89 7c 24 20       	mov    %r15,0x20(%rsp)
  405a08:	48 89 5c 24 18       	mov    %rbx,0x18(%rsp)
  405a0d:	4c 89 74 24 28       	mov    %r14,0x28(%rsp)
  405a12:	49 89 ff             	mov    %rdi,%r15
  405a15:	48 8d 05 0c 48 20 00 	lea    0x20480c(%rip),%rax        # 60a228 <_ZTV11DenseMatrix+0x10>
  405a1c:	49 89 07             	mov    %rax,(%r15)
  405a1f:	48 89 f7             	mov    %rsi,%rdi
  405a22:	be 08 6d 40 00       	mov    $0x406d08,%esi
  405a27:	e8 94 bc ff ff       	callq  4016c0 <fopen@plt>
  405a2c:	49 89 c6             	mov    %rax,%r14
  405a2f:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  405a34:	be e8 03 00 00       	mov    $0x3e8,%esi
  405a39:	4c 89 f2             	mov    %r14,%rdx
  405a3c:	e8 0f bd ff ff       	callq  401750 <fgets@plt>
  405a41:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  405a46:	be e8 03 00 00       	mov    $0x3e8,%esi
  405a4b:	4c 89 f2             	mov    %r14,%rdx
  405a4e:	e8 fd bc ff ff       	callq  401750 <fgets@plt>
  405a53:	49 8d 57 08          	lea    0x8(%r15),%rdx
  405a57:	49 8d 4f 0c          	lea    0xc(%r15),%rcx
  405a5b:	4c 89 f7             	mov    %r14,%rdi
  405a5e:	be 0c 6d 40 00       	mov    $0x406d0c,%esi
  405a63:	4c 8d 04 24          	lea    (%rsp),%r8
  405a67:	31 c0                	xor    %eax,%eax
  405a69:	e8 a2 bd ff ff       	callq  401810 <fscanf@plt>
  405a6e:	49 8d 7f 18          	lea    0x18(%r15),%rdi
  405a72:	41 8b 57 08          	mov    0x8(%r15),%edx
  405a76:	41 89 57 10          	mov    %edx,0x10(%r15)
  405a7a:	8b 47 f4             	mov    -0xc(%rdi),%eax
  405a7d:	6a 40                	pushq  $0x40
  405a7f:	5e                   	pop    %rsi
  405a80:	0f af d0             	imul   %eax,%edx
  405a83:	48 63 d2             	movslq %edx,%rdx
  405a86:	48 c1 e2 03          	shl    $0x3,%rdx
  405a8a:	e8 51 bb ff ff       	callq  4015e0 <posix_memalign@plt>
  405a8f:	4c 89 ff             	mov    %r15,%rdi
  405a92:	e8 85 fe ff ff       	callq  40591c <_ZN11DenseMatrix4zeroEv>
  405a97:	31 db                	xor    %ebx,%ebx
  405a99:	83 3c 24 00          	cmpl   $0x0,(%rsp)
  405a9d:	7e 44                	jle    405ae3 <_ZN11DenseMatrixC1EPKc+0xe7>
  405a9f:	48 8d 54 24 04       	lea    0x4(%rsp),%rdx
  405aa4:	4c 89 f7             	mov    %r14,%rdi
  405aa7:	be 18 6d 40 00       	mov    $0x406d18,%esi
  405aac:	48 8d 4a 04          	lea    0x4(%rdx),%rcx
  405ab0:	4c 8d 42 0c          	lea    0xc(%rdx),%r8
  405ab4:	31 c0                	xor    %eax,%eax
  405ab6:	e8 55 bd ff ff       	callq  401810 <fscanf@plt>
  405abb:	8b 44 24 08          	mov    0x8(%rsp),%eax
  405abf:	48 8b 4c 24 10       	mov    0x10(%rsp),%rcx
  405ac4:	83 c3 01             	add    $0x1,%ebx
  405ac7:	83 c0 ff             	add    $0xffffffff,%eax
  405aca:	49 8b 77 18          	mov    0x18(%r15),%rsi
  405ace:	41 0f af 47 10       	imul   0x10(%r15),%eax
  405ad3:	03 44 24 04          	add    0x4(%rsp),%eax
  405ad7:	48 98                	cltq   
  405ad9:	48 89 4c c6 f8       	mov    %rcx,-0x8(%rsi,%rax,8)
  405ade:	3b 1c 24             	cmp    (%rsp),%ebx
  405ae1:	7c bc                	jl     405a9f <_ZN11DenseMatrixC1EPKc+0xa3>
  405ae3:	4c 89 f7             	mov    %r14,%rdi
  405ae6:	e8 65 bb ff ff       	callq  401650 <fclose@plt>
  405aeb:	48 8b 5c 24 18       	mov    0x18(%rsp),%rbx
  405af0:	4c 8b 74 24 28       	mov    0x28(%rsp),%r14
  405af5:	4c 8b 7c 24 20       	mov    0x20(%rsp),%r15
  405afa:	48 81 c4 18 04 00 00 	add    $0x418,%rsp
  405b01:	c3                   	retq   

0000000000405b02 <_ZNSt11char_traitsIcE6lengthEPKc>:
  405b02:	e9 99 ba ff ff       	jmpq   4015a0 <strlen@plt>
  405b07:	90                   	nop

0000000000405b08 <_ZNSt8ios_base9precisionEl>:
  405b08:	48 8b 47 08          	mov    0x8(%rdi),%rax
  405b0c:	48 89 77 08          	mov    %rsi,0x8(%rdi)
  405b10:	c3                   	retq   
  405b11:	90                   	nop

0000000000405b12 <_ZNSt8ios_base5widthEl>:
  405b12:	48 8b 47 10          	mov    0x10(%rdi),%rax
  405b16:	48 89 77 10          	mov    %rsi,0x10(%rdi)
  405b1a:	c3                   	retq   
  405b1b:	90                   	nop

0000000000405b1c <_ZNK12SparseMatrix3getEii>:
  405b1c:	48 63 4f 10          	movslq 0x10(%rdi),%rcx
  405b20:	41 89 d0             	mov    %edx,%r8d
  405b23:	45 31 c9             	xor    %r9d,%r9d
  405b26:	48 85 c9             	test   %rcx,%rcx
  405b29:	7e 1d                	jle    405b48 <_ZNK12SparseMatrix3getEii+0x2c>
  405b2b:	48 8b 57 20          	mov    0x20(%rdi),%rdx
  405b2f:	42 3b 34 8a          	cmp    (%rdx,%r9,4),%esi
  405b33:	75 0a                	jne    405b3f <_ZNK12SparseMatrix3getEii+0x23>
  405b35:	48 8b 47 28          	mov    0x28(%rdi),%rax
  405b39:	46 3b 04 88          	cmp    (%rax,%r9,4),%r8d
  405b3d:	74 0e                	je     405b4d <_ZNK12SparseMatrix3getEii+0x31>
  405b3f:	49 83 c1 01          	add    $0x1,%r9
  405b43:	49 39 c9             	cmp    %rcx,%r9
  405b46:	7c e7                	jl     405b2f <_ZNK12SparseMatrix3getEii+0x13>
  405b48:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
  405b4c:	c3                   	retq   
  405b4d:	48 8b 47 18          	mov    0x18(%rdi),%rax
  405b51:	c4 a1 7b 10 04 c8    	vmovsd (%rax,%r9,8),%xmm0
  405b57:	c3                   	retq   

0000000000405b58 <_ZN12SparseMatrix3setEiid>:
  405b58:	89 d1                	mov    %edx,%ecx
  405b5a:	48 63 57 10          	movslq 0x10(%rdi),%rdx
  405b5e:	48 8b 47 20          	mov    0x20(%rdi),%rax
  405b62:	45 30 d2             	xor    %r10b,%r10b
  405b65:	45 31 c9             	xor    %r9d,%r9d
  405b68:	48 85 d2             	test   %rdx,%rdx
  405b6b:	7e 36                	jle    405ba3 <_ZN12SparseMatrix3setEiid+0x4b>
  405b6d:	42 3b 34 88          	cmp    (%rax,%r9,4),%esi
  405b71:	75 22                	jne    405b95 <_ZN12SparseMatrix3setEiid+0x3d>
  405b73:	4c 8b 47 28          	mov    0x28(%rdi),%r8
  405b77:	43 3b 0c 88          	cmp    (%r8,%r9,4),%ecx
  405b7b:	75 18                	jne    405b95 <_ZN12SparseMatrix3setEiid+0x3d>
  405b7d:	4c 8b 47 18          	mov    0x18(%rdi),%r8
  405b81:	c4 81 7b 11 04 c8    	vmovsd %xmm0,(%r8,%r9,8)
  405b87:	49 83 c1 01          	add    $0x1,%r9
  405b8b:	41 b2 01             	mov    $0x1,%r10b
  405b8e:	49 39 d1             	cmp    %rdx,%r9
  405b91:	7c da                	jl     405b6d <_ZN12SparseMatrix3setEiid+0x15>
  405b93:	eb 2a                	jmp    405bbf <_ZN12SparseMatrix3setEiid+0x67>
  405b95:	49 83 c1 01          	add    $0x1,%r9
  405b99:	49 39 d1             	cmp    %rdx,%r9
  405b9c:	7c cf                	jl     405b6d <_ZN12SparseMatrix3setEiid+0x15>
  405b9e:	45 84 d2             	test   %r10b,%r10b
  405ba1:	75 1c                	jne    405bbf <_ZN12SparseMatrix3setEiid+0x67>
  405ba3:	4c 8b 47 18          	mov    0x18(%rdi),%r8
  405ba7:	89 34 90             	mov    %esi,(%rax,%rdx,4)
  405baa:	48 8b 47 28          	mov    0x28(%rdi),%rax
  405bae:	c4 c1 7b 11 04 d0    	vmovsd %xmm0,(%r8,%rdx,8)
  405bb4:	48 63 57 10          	movslq 0x10(%rdi),%rdx
  405bb8:	89 0c 90             	mov    %ecx,(%rax,%rdx,4)
  405bbb:	83 47 10 01          	addl   $0x1,0x10(%rdi)
  405bbf:	c3                   	retq   

0000000000405bc0 <_ZNK11DenseMatrix3getEii>:
  405bc0:	48 83 ec 28          	sub    $0x28,%rsp
  405bc4:	4c 89 7c 24 18       	mov    %r15,0x18(%rsp)
  405bc9:	3b 77 08             	cmp    0x8(%rdi),%esi
  405bcc:	7d 05                	jge    405bd3 <_ZNK11DenseMatrix3getEii+0x13>
  405bce:	3b 57 0c             	cmp    0xc(%rdi),%edx
  405bd1:	7c 3b                	jl     405c0e <_ZNK11DenseMatrix3getEii+0x4e>
  405bd3:	6a 10                	pushq  $0x10
  405bd5:	5f                   	pop    %rdi
  405bd6:	e8 f5 b9 ff ff       	callq  4015d0 <__cxa_allocate_exception@plt>
  405bdb:	49 89 c7             	mov    %rax,%r15
  405bde:	48 8d 3c 24          	lea    (%rsp),%rdi
  405be2:	be bc 6d 40 00       	mov    $0x406dbc,%esi
  405be7:	48 8d 57 10          	lea    0x10(%rdi),%rdx
  405beb:	e8 b0 ba ff ff       	callq  4016a0 <_ZNSsC1EPKcRKSaIcE@plt>
  405bf0:	4c 89 ff             	mov    %r15,%rdi
  405bf3:	48 8d 34 24          	lea    (%rsp),%rsi
  405bf7:	e8 e4 bb ff ff       	callq  4017e0 <_ZNSt16invalid_argumentC1ERKSs@plt>
  405bfc:	4c 89 ff             	mov    %r15,%rdi
  405bff:	be b0 a3 60 00       	mov    $0x60a3b0,%esi
  405c04:	ba 90 17 40 00       	mov    $0x401790,%edx
  405c09:	e8 a2 bb ff ff       	callq  4017b0 <__cxa_throw@plt>
  405c0e:	8b 47 10             	mov    0x10(%rdi),%eax
  405c11:	48 63 f6             	movslq %esi,%rsi
  405c14:	0f af c2             	imul   %edx,%eax
  405c17:	48 8b 57 18          	mov    0x18(%rdi),%rdx
  405c1b:	48 98                	cltq   
  405c1d:	48 01 c6             	add    %rax,%rsi
  405c20:	c5 fb 10 04 f2       	vmovsd (%rdx,%rsi,8),%xmm0
  405c25:	48 83 c4 28          	add    $0x28,%rsp
  405c29:	c3                   	retq   
  405c2a:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  405c2f:	48 8b 3c 24          	mov    (%rsp),%rdi
  405c33:	b8 80 a2 60 00       	mov    $0x60a280,%eax
  405c38:	4c 8d 7f e8          	lea    -0x18(%rdi),%r15
  405c3c:	49 39 c7             	cmp    %rax,%r15
  405c3f:	75 0a                	jne    405c4b <_ZNK11DenseMatrix3getEii+0x8b>
  405c41:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  405c46:	e8 85 bb ff ff       	callq  4017d0 <_Unwind_Resume@plt>
  405c4b:	48 83 c7 f8          	add    $0xfffffffffffffff8,%rdi
  405c4f:	31 f6                	xor    %esi,%esi
  405c51:	83 c6 ff             	add    $0xffffffff,%esi
  405c54:	e8 84 fc ff ff       	callq  4058dd <_ZN17_INTERNALa880ec899__gnu_cxx27__exchange_and_add_dispatchEPii>
  405c59:	85 c0                	test   %eax,%eax
  405c5b:	7f e4                	jg     405c41 <_ZNK11DenseMatrix3getEii+0x81>
  405c5d:	4c 89 ff             	mov    %r15,%rdi
  405c60:	48 8d 74 24 11       	lea    0x11(%rsp),%rsi
  405c65:	e8 a6 b9 ff ff       	callq  401610 <_ZNSs4_Rep10_M_destroyERKSaIcE@plt>
  405c6a:	eb d5                	jmp    405c41 <_ZNK11DenseMatrix3getEii+0x81>
  405c6c:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  405c71:	eb ce                	jmp    405c41 <_ZNK11DenseMatrix3getEii+0x81>
  405c73:	90                   	nop

0000000000405c74 <_ZN11DenseMatrix3setEiid>:
  405c74:	0f af 57 10          	imul   0x10(%rdi),%edx
  405c78:	48 8b 47 18          	mov    0x18(%rdi),%rax
  405c7c:	48 63 f6             	movslq %esi,%rsi
  405c7f:	48 63 d2             	movslq %edx,%rdx
  405c82:	48 01 f2             	add    %rsi,%rdx
  405c85:	c5 fb 11 04 d0       	vmovsd %xmm0,(%rax,%rdx,8)
  405c8a:	c3                   	retq   
  405c8b:	90                   	nop

0000000000405c8c <_ZSt5fixedRSt8ios_base>:
  405c8c:	8b 57 18             	mov    0x18(%rdi),%edx
  405c8f:	48 89 f8             	mov    %rdi,%rax
  405c92:	81 e2 fb fe ff ff    	and    $0xfffffefb,%edx
  405c98:	83 c2 04             	add    $0x4,%edx
  405c9b:	89 57 18             	mov    %edx,0x18(%rdi)
  405c9e:	c3                   	retq   

0000000000405c9f <_ZSt3getILm1EIP12SparseMatrixSt14default_deleteIS0_EEENSt9__add_refINSt13tuple_elementIXT_ESt5tupleIIDpT0_EEE4typeEE4typeERS9_>:
  405c9f:	e9 aa 00 00 00       	jmpq   405d4e <_ZNSt11_Tuple_implILm1EISt14default_deleteI12SparseMatrixEEE7_M_headERS3_>

0000000000405ca4 <_ZSt3getILm0EIP12SparseMatrixSt14default_deleteIS0_EEENSt11__add_c_refINSt13tuple_elementIXT_ESt5tupleIIDpT0_EEE4typeEE4typeERKS9_>:
  405ca4:	e9 9d 00 00 00       	jmpq   405d46 <_ZNSt11_Tuple_implILm0EIP12SparseMatrixSt14default_deleteIS0_EEE7_M_headERKS4_>
  405ca9:	90                   	nop

0000000000405caa <_ZNKSt10unique_ptrI12SparseMatrixSt14default_deleteIS0_EEptEv>:
  405caa:	56                   	push   %rsi
  405cab:	e8 f4 ff ff ff       	callq  405ca4 <_ZSt3getILm0EIP12SparseMatrixSt14default_deleteIS0_EEENSt11__add_c_refINSt13tuple_elementIXT_ESt5tupleIIDpT0_EEE4typeEE4typeERKS9_>
  405cb0:	48 8b 00             	mov    (%rax),%rax
  405cb3:	59                   	pop    %rcx
  405cb4:	c3                   	retq   
  405cb5:	90                   	nop

0000000000405cb6 <_ZNSt10unique_ptrI12SparseMatrixSt14default_deleteIS0_EED1Ev>:
  405cb6:	48 83 ec 18          	sub    $0x18,%rsp
  405cba:	4c 89 3c 24          	mov    %r15,(%rsp)
  405cbe:	4c 89 74 24 08       	mov    %r14,0x8(%rsp)
  405cc3:	e8 82 00 00 00       	callq  405d4a <_ZNSt11_Tuple_implILm0EIP12SparseMatrixSt14default_deleteIS0_EEE7_M_headERS4_>
  405cc8:	49 89 c7             	mov    %rax,%r15
  405ccb:	4d 8b 37             	mov    (%r15),%r14
  405cce:	4d 85 f6             	test   %r14,%r14
  405cd1:	74 3c                	je     405d0f <_ZNSt10unique_ptrI12SparseMatrixSt14default_deleteIS0_EED1Ev+0x59>
  405cd3:	49 8b 7e 18          	mov    0x18(%r14),%rdi
  405cd7:	48 8d 05 02 45 20 00 	lea    0x204502(%rip),%rax        # 60a1e0 <_ZTV12SparseMatrix+0x10>
  405cde:	49 89 06             	mov    %rax,(%r14)
  405ce1:	48 85 ff             	test   %rdi,%rdi
  405ce4:	74 05                	je     405ceb <_ZNSt10unique_ptrI12SparseMatrixSt14default_deleteIS0_EED1Ev+0x35>
  405ce6:	e8 15 ba ff ff       	callq  401700 <_ZdaPv@plt>
  405ceb:	49 8b 7e 20          	mov    0x20(%r14),%rdi
  405cef:	48 85 ff             	test   %rdi,%rdi
  405cf2:	74 05                	je     405cf9 <_ZNSt10unique_ptrI12SparseMatrixSt14default_deleteIS0_EED1Ev+0x43>
  405cf4:	e8 07 ba ff ff       	callq  401700 <_ZdaPv@plt>
  405cf9:	49 8b 7e 28          	mov    0x28(%r14),%rdi
  405cfd:	48 85 ff             	test   %rdi,%rdi
  405d00:	74 05                	je     405d07 <_ZNSt10unique_ptrI12SparseMatrixSt14default_deleteIS0_EED1Ev+0x51>
  405d02:	e8 f9 b9 ff ff       	callq  401700 <_ZdaPv@plt>
  405d07:	4c 89 f7             	mov    %r14,%rdi
  405d0a:	e8 21 b9 ff ff       	callq  401630 <_ZdlPv@plt>
  405d0f:	49 c7 07 00 00 00 00 	movq   $0x0,(%r15)
  405d16:	4c 8b 74 24 08       	mov    0x8(%rsp),%r14
  405d1b:	4c 8b 3c 24          	mov    (%rsp),%r15
  405d1f:	48 83 c4 18          	add    $0x18,%rsp
  405d23:	c3                   	retq   

0000000000405d24 <_ZNSt10unique_ptrI12SparseMatrixSt14default_deleteIS0_EEC1EPS0_>:
  405d24:	48 83 ec 18          	sub    $0x18,%rsp
  405d28:	48 89 34 24          	mov    %rsi,(%rsp)
  405d2c:	48 8d 34 24          	lea    (%rsp),%rsi
  405d30:	48 8d 56 08          	lea    0x8(%rsi),%rdx
  405d34:	e8 05 00 00 00       	callq  405d3e <_ZNSt11_Tuple_implILm0EIP12SparseMatrixSt14default_deleteIS0_EEEC1IRS1_IS3_EvEEOT_DpOT0_>
  405d39:	48 83 c4 18          	add    $0x18,%rsp
  405d3d:	c3                   	retq   

0000000000405d3e <_ZNSt11_Tuple_implILm0EIP12SparseMatrixSt14default_deleteIS0_EEEC1IRS1_IS3_EvEEOT_DpOT0_>:
  405d3e:	48 8b 06             	mov    (%rsi),%rax
  405d41:	48 89 07             	mov    %rax,(%rdi)
  405d44:	c3                   	retq   
  405d45:	90                   	nop

0000000000405d46 <_ZNSt11_Tuple_implILm0EIP12SparseMatrixSt14default_deleteIS0_EEE7_M_headERKS4_>:
  405d46:	48 89 f8             	mov    %rdi,%rax
  405d49:	c3                   	retq   

0000000000405d4a <_ZNSt11_Tuple_implILm0EIP12SparseMatrixSt14default_deleteIS0_EEE7_M_headERS4_>:
  405d4a:	48 89 f8             	mov    %rdi,%rax
  405d4d:	c3                   	retq   

0000000000405d4e <_ZNSt11_Tuple_implILm1EISt14default_deleteI12SparseMatrixEEE7_M_headERS3_>:
  405d4e:	48 89 f8             	mov    %rdi,%rax
  405d51:	c3                   	retq   
  405d52:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  405d59:	00 00 00 
  405d5c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000405d60 <fabs>:
  405d60:	e9 0b 00 00 00       	jmpq   405d70 <__libm_fabs_ex>
  405d65:	0f 1f 40 00          	nopl   0x0(%rax)
  405d69:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000405d70 <__libm_fabs_ex>:
  405d70:	f3 0f 7e 0d 68 10 00 	movq   0x1068(%rip),%xmm1        # 406de0 <MASK>
  405d77:	00 
  405d78:	f3 0f 7e 15 70 10 00 	movq   0x1070(%rip),%xmm2        # 406df0 <ONE>
  405d7f:	00 
  405d80:	66 0f 54 c1          	andpd  %xmm1,%xmm0
  405d84:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
  405d88:	c3                   	retq   
  405d89:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000405d90 <__intel_new_feature_proc_init>:
  405d90:	41 54                	push   %r12
  405d92:	41 55                	push   %r13
  405d94:	41 56                	push   %r14
  405d96:	41 57                	push   %r15
  405d98:	48 81 ec 38 04 00 00 	sub    $0x438,%rsp
  405d9f:	49 89 f6             	mov    %rsi,%r14
  405da2:	4c 8d 3d 57 4a 20 00 	lea    0x204a57(%rip),%r15        # 60a800 <__intel_cpu_feature_indicator>
  405da9:	41 89 fd             	mov    %edi,%r13d
  405dac:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  405db3:	00 00 
  405db5:	48 33 c4             	xor    %rsp,%rax
  405db8:	4d 8b 27             	mov    (%r15),%r12
  405dbb:	48 89 84 24 28 04 00 	mov    %rax,0x428(%rsp)
  405dc2:	00 
  405dc3:	4d 85 e4             	test   %r12,%r12
  405dc6:	0f 84 f8 02 00 00    	je     4060c4 <__intel_new_feature_proc_init+0x334>
  405dcc:	4c 89 e0             	mov    %r12,%rax
  405dcf:	49 23 c6             	and    %r14,%rax
  405dd2:	49 3b c6             	cmp    %r14,%rax
  405dd5:	0f 84 4c 02 00 00    	je     406027 <__intel_new_feature_proc_init+0x297>
  405ddb:	49 f7 c6 01 00 00 00 	test   $0x1,%r14
  405de2:	0f 85 b3 02 00 00    	jne    40609b <__intel_new_feature_proc_init+0x30b>
  405de8:	45 33 ff             	xor    %r15d,%r15d
  405deb:	49 f7 d4             	not    %r12
  405dee:	bf 39 00 00 00       	mov    $0x39,%edi
  405df3:	33 f6                	xor    %esi,%esi
  405df5:	33 c0                	xor    %eax,%eax
  405df7:	4d 23 e6             	and    %r14,%r12
  405dfa:	45 33 f6             	xor    %r14d,%r14d
  405dfd:	e8 fe 02 00 00       	callq  406100 <__libirc_get_msg>
  405e02:	c6 44 24 28 00       	movb   $0x0,0x28(%rsp)
  405e07:	4c 89 f2             	mov    %r14,%rdx
  405e0a:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
  405e0f:	41 bd 01 00 00 00    	mov    $0x1,%r13d
  405e15:	48 89 5c 24 18       	mov    %rbx,0x18(%rsp)
  405e1a:	48 89 6c 24 10       	mov    %rbp,0x10(%rsp)
  405e1f:	4c 89 f5             	mov    %r14,%rbp
  405e22:	b8 01 00 00 00       	mov    $0x1,%eax
  405e27:	41 8d 4d 3f          	lea    0x3f(%r13),%ecx
  405e2b:	48 d3 e0             	shl    %cl,%rax
  405e2e:	41 83 fd 2b          	cmp    $0x2b,%r13d
  405e32:	48 0f 47 c5          	cmova  %rbp,%rax
  405e36:	4c 85 e0             	test   %r12,%rax
  405e39:	0f 84 ff 00 00 00    	je     405f3e <__intel_new_feature_proc_init+0x1ae>
  405e3f:	48 8d 05 fa 39 20 00 	lea    0x2039fa(%rip),%rax        # 609840 <c_feature_names>
  405e46:	4a 8b 1c e8          	mov    (%rax,%r13,8),%rbx
  405e4a:	48 85 db             	test   %rbx,%rbx
  405e4d:	0f 84 39 02 00 00    	je     40608c <__intel_new_feature_proc_init+0x2fc>
  405e53:	80 3b 00             	cmpb   $0x0,(%rbx)
  405e56:	0f 84 30 02 00 00    	je     40608c <__intel_new_feature_proc_init+0x2fc>
  405e5c:	80 7c 24 28 00       	cmpb   $0x0,0x28(%rsp)
  405e61:	0f 84 ab 00 00 00    	je     405f12 <__intel_new_feature_proc_init+0x182>
  405e67:	4d 85 ff             	test   %r15,%r15
  405e6a:	0f 84 9d 00 00 00    	je     405f0d <__intel_new_feature_proc_init+0x17d>
  405e70:	4c 89 ff             	mov    %r15,%rdi
  405e73:	e8 28 b7 ff ff       	callq  4015a0 <strlen@plt>
  405e78:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
  405e7d:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  405e82:	e8 19 b7 ff ff       	callq  4015a0 <strlen@plt>
  405e87:	48 89 df             	mov    %rbx,%rdi
  405e8a:	48 89 04 24          	mov    %rax,(%rsp)
  405e8e:	e8 0d b7 ff ff       	callq  4015a0 <strlen@plt>
  405e93:	48 89 c1             	mov    %rax,%rcx
  405e96:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  405e9b:	49 03 c6             	add    %r14,%rax
  405e9e:	48 03 04 24          	add    (%rsp),%rax
  405ea2:	4c 8d 44 08 02       	lea    0x2(%rax,%rcx,1),%r8
  405ea7:	49 81 f8 00 04 00 00 	cmp    $0x400,%r8
  405eae:	0f 83 a6 01 00 00    	jae    40605a <__intel_new_feature_proc_init+0x2ca>
  405eb4:	49 f7 de             	neg    %r14
  405eb7:	48 8d 7c 24 28       	lea    0x28(%rsp),%rdi
  405ebc:	49 81 c6 ff 03 00 00 	add    $0x3ff,%r14
  405ec3:	48 8d 35 b2 10 00 00 	lea    0x10b2(%rip),%rsi        # 406f7c <ONE+0x18c>
  405eca:	4c 89 f2             	mov    %r14,%rdx
  405ecd:	b9 00 04 00 00       	mov    $0x400,%ecx
  405ed2:	e8 d9 b6 ff ff       	callq  4015b0 <__strncat_chk@plt>
  405ed7:	48 8d 7c 24 28       	lea    0x28(%rsp),%rdi
  405edc:	e8 bf b6 ff ff       	callq  4015a0 <strlen@plt>
  405ee1:	48 63 d0             	movslq %eax,%rdx
  405ee4:	48 8d 7c 24 28       	lea    0x28(%rsp),%rdi
  405ee9:	48 f7 da             	neg    %rdx
  405eec:	4c 89 fe             	mov    %r15,%rsi
  405eef:	48 81 c2 ff 03 00 00 	add    $0x3ff,%rdx
  405ef6:	b9 00 04 00 00       	mov    $0x400,%ecx
  405efb:	e8 b0 b6 ff ff       	callq  4015b0 <__strncat_chk@plt>
  405f00:	48 8d 7c 24 28       	lea    0x28(%rsp),%rdi
  405f05:	e8 96 b6 ff ff       	callq  4015a0 <strlen@plt>
  405f0a:	4c 63 f0             	movslq %eax,%r14
  405f0d:	49 89 df             	mov    %rbx,%r15
  405f10:	eb 2c                	jmp    405f3e <__intel_new_feature_proc_init+0x1ae>
  405f12:	49 f7 de             	neg    %r14
  405f15:	48 8d 7c 24 28       	lea    0x28(%rsp),%rdi
  405f1a:	49 81 c6 ff 03 00 00 	add    $0x3ff,%r14
  405f21:	48 89 de             	mov    %rbx,%rsi
  405f24:	4c 89 f2             	mov    %r14,%rdx
  405f27:	b9 00 04 00 00       	mov    $0x400,%ecx
  405f2c:	e8 7f b6 ff ff       	callq  4015b0 <__strncat_chk@plt>
  405f31:	48 8d 7c 24 28       	lea    0x28(%rsp),%rdi
  405f36:	e8 65 b6 ff ff       	callq  4015a0 <strlen@plt>
  405f3b:	4c 63 f0             	movslq %eax,%r14
  405f3e:	41 ff c5             	inc    %r13d
  405f41:	41 83 fd 2b          	cmp    $0x2b,%r13d
  405f45:	0f 8e d7 fe ff ff    	jle    405e22 <__intel_new_feature_proc_init+0x92>
  405f4b:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
  405f50:	4c 89 f2             	mov    %r14,%rdx
  405f53:	48 8b 5c 24 18       	mov    0x18(%rsp),%rbx
  405f58:	48 8b 6c 24 10       	mov    0x10(%rsp),%rbp
  405f5d:	4d 85 ff             	test   %r15,%r15
  405f60:	74 45                	je     405fa7 <__intel_new_feature_proc_init+0x217>
  405f62:	48 f7 da             	neg    %rdx
  405f65:	48 8d 7c 24 28       	lea    0x28(%rsp),%rdi
  405f6a:	48 81 c2 ff 03 00 00 	add    $0x3ff,%rdx
  405f71:	48 89 c6             	mov    %rax,%rsi
  405f74:	b9 00 04 00 00       	mov    $0x400,%ecx
  405f79:	e8 32 b6 ff ff       	callq  4015b0 <__strncat_chk@plt>
  405f7e:	48 8d 7c 24 28       	lea    0x28(%rsp),%rdi
  405f83:	e8 18 b6 ff ff       	callq  4015a0 <strlen@plt>
  405f88:	48 63 d0             	movslq %eax,%rdx
  405f8b:	48 8d 7c 24 28       	lea    0x28(%rsp),%rdi
  405f90:	48 f7 da             	neg    %rdx
  405f93:	4c 89 fe             	mov    %r15,%rsi
  405f96:	48 81 c2 ff 03 00 00 	add    $0x3ff,%rdx
  405f9d:	b9 00 04 00 00       	mov    $0x400,%ecx
  405fa2:	e8 09 b6 ff ff       	callq  4015b0 <__strncat_chk@plt>
  405fa7:	80 7c 24 28 00       	cmpb   $0x0,0x28(%rsp)
  405fac:	75 3d                	jne    405feb <__intel_new_feature_proc_init+0x25b>
  405fae:	33 f6                	xor    %esi,%esi
  405fb0:	bf 01 00 00 00       	mov    $0x1,%edi
  405fb5:	33 d2                	xor    %edx,%edx
  405fb7:	33 c0                	xor    %eax,%eax
  405fb9:	e8 c2 03 00 00       	callq  406380 <__libirc_print>
  405fbe:	bf 01 00 00 00       	mov    $0x1,%edi
  405fc3:	be 3a 00 00 00       	mov    $0x3a,%esi
  405fc8:	33 d2                	xor    %edx,%edx
  405fca:	33 c0                	xor    %eax,%eax
  405fcc:	e8 af 03 00 00       	callq  406380 <__libirc_print>
  405fd1:	33 f6                	xor    %esi,%esi
  405fd3:	bf 01 00 00 00       	mov    $0x1,%edi
  405fd8:	33 d2                	xor    %edx,%edx
  405fda:	33 c0                	xor    %eax,%eax
  405fdc:	e8 9f 03 00 00       	callq  406380 <__libirc_print>
  405fe1:	bf 01 00 00 00       	mov    $0x1,%edi
  405fe6:	e8 f5 b6 ff ff       	callq  4016e0 <exit@plt>
  405feb:	33 f6                	xor    %esi,%esi
  405fed:	bf 01 00 00 00       	mov    $0x1,%edi
  405ff2:	33 d2                	xor    %edx,%edx
  405ff4:	33 c0                	xor    %eax,%eax
  405ff6:	e8 85 03 00 00       	callq  406380 <__libirc_print>
  405ffb:	bf 01 00 00 00       	mov    $0x1,%edi
  406000:	be 38 00 00 00       	mov    $0x38,%esi
  406005:	89 fa                	mov    %edi,%edx
  406007:	48 8d 4c 24 28       	lea    0x28(%rsp),%rcx
  40600c:	33 c0                	xor    %eax,%eax
  40600e:	e8 6d 03 00 00       	callq  406380 <__libirc_print>
  406013:	eb bc                	jmp    405fd1 <__intel_new_feature_proc_init+0x241>
  406015:	33 f6                	xor    %esi,%esi
  406017:	bf 01 00 00 00       	mov    $0x1,%edi
  40601c:	33 d2                	xor    %edx,%edx
  40601e:	33 c0                	xor    %eax,%eax
  406020:	e8 5b 03 00 00       	callq  406380 <__libirc_print>
  406025:	eb 97                	jmp    405fbe <__intel_new_feature_proc_init+0x22e>
  406027:	49 f7 c4 20 00 00 00 	test   $0x20,%r12
  40602e:	0f 85 81 00 00 00    	jne    4060b5 <__intel_new_feature_proc_init+0x325>
  406034:	48 8b 84 24 28 04 00 	mov    0x428(%rsp),%rax
  40603b:	00 
  40603c:	48 33 c4             	xor    %rsp,%rax
  40603f:	64 48 3b 04 25 28 00 	cmp    %fs:0x28,%rax
  406046:	00 00 
  406048:	75 66                	jne    4060b0 <__intel_new_feature_proc_init+0x320>
  40604a:	48 81 c4 38 04 00 00 	add    $0x438,%rsp
  406051:	41 5f                	pop    %r15
  406053:	41 5e                	pop    %r14
  406055:	41 5d                	pop    %r13
  406057:	41 5c                	pop    %r12
  406059:	c3                   	retq   
  40605a:	4c 89 f2             	mov    %r14,%rdx
  40605d:	48 8d 7c 24 28       	lea    0x28(%rsp),%rdi
  406062:	48 f7 da             	neg    %rdx
  406065:	b9 00 04 00 00       	mov    $0x400,%ecx
  40606a:	48 8b 47 f8          	mov    -0x8(%rdi),%rax
  40606e:	48 81 c2 ff 03 00 00 	add    $0x3ff,%rdx
  406075:	48 89 c6             	mov    %rax,%rsi
  406078:	48 8b 5c 24 18       	mov    0x18(%rsp),%rbx
  40607d:	48 8b 6c 24 10       	mov    0x10(%rsp),%rbp
  406082:	e8 29 b5 ff ff       	callq  4015b0 <__strncat_chk@plt>
  406087:	e9 f2 fe ff ff       	jmpq   405f7e <__intel_new_feature_proc_init+0x1ee>
  40608c:	48 8b 5c 24 18       	mov    0x18(%rsp),%rbx
  406091:	48 8b 6c 24 10       	mov    0x10(%rsp),%rbp
  406096:	e9 7a ff ff ff       	jmpq   406015 <__intel_new_feature_proc_init+0x285>
  40609b:	33 f6                	xor    %esi,%esi
  40609d:	bf 01 00 00 00       	mov    $0x1,%edi
  4060a2:	33 d2                	xor    %edx,%edx
  4060a4:	33 c0                	xor    %eax,%eax
  4060a6:	e8 d5 02 00 00       	callq  406380 <__libirc_print>
  4060ab:	e9 0e ff ff ff       	jmpq   405fbe <__intel_new_feature_proc_init+0x22e>
  4060b0:	e8 db b5 ff ff       	callq  401690 <__stack_chk_fail@plt>
  4060b5:	33 ff                	xor    %edi,%edi
  4060b7:	44 89 ee             	mov    %r13d,%esi
  4060ba:	e8 71 0a 00 00       	callq  406b30 <__intel_proc_init_ftzdazule>
  4060bf:	e9 70 ff ff ff       	jmpq   406034 <__intel_new_feature_proc_init+0x2a4>
  4060c4:	33 c0                	xor    %eax,%eax
  4060c6:	e8 c5 05 00 00       	callq  406690 <__intel_cpu_features_init>
  4060cb:	4d 8b 27             	mov    (%r15),%r12
  4060ce:	4d 85 e4             	test   %r12,%r12
  4060d1:	0f 85 f5 fc ff ff    	jne    405dcc <__intel_new_feature_proc_init+0x3c>
  4060d7:	33 f6                	xor    %esi,%esi
  4060d9:	bf 01 00 00 00       	mov    $0x1,%edi
  4060de:	33 d2                	xor    %edx,%edx
  4060e0:	33 c0                	xor    %eax,%eax
  4060e2:	e8 99 02 00 00       	callq  406380 <__libirc_print>
  4060e7:	bf 01 00 00 00       	mov    $0x1,%edi
  4060ec:	be 3b 00 00 00       	mov    $0x3b,%esi
  4060f1:	33 d2                	xor    %edx,%edx
  4060f3:	33 c0                	xor    %eax,%eax
  4060f5:	e8 86 02 00 00       	callq  406380 <__libirc_print>
  4060fa:	e9 d2 fe ff ff       	jmpq   405fd1 <__intel_new_feature_proc_init+0x241>
  4060ff:	90                   	nop

0000000000406100 <__libirc_get_msg>:
  406100:	41 54                	push   %r12
  406102:	41 55                	push   %r13
  406104:	41 56                	push   %r14
  406106:	48 81 ec 50 01 00 00 	sub    $0x150,%rsp
  40610d:	48 89 54 24 10       	mov    %rdx,0x10(%rsp)
  406112:	48 89 4c 24 18       	mov    %rcx,0x18(%rsp)
  406117:	4c 89 44 24 20       	mov    %r8,0x20(%rsp)
  40611c:	4c 89 4c 24 28       	mov    %r9,0x28(%rsp)
  406121:	44 0f b6 d8          	movzbl %al,%r11d
  406125:	4a 8d 04 9d 00 00 00 	lea    0x0(,%r11,4),%rax
  40612c:	00 
  40612d:	4c 8d 1d 2e 00 00 00 	lea    0x2e(%rip),%r11        # 406162 <__libirc_get_msg+0x62>
  406134:	4c 2b d8             	sub    %rax,%r11
  406137:	48 8d 84 24 af 00 00 	lea    0xaf(%rsp),%rax
  40613e:	00 
  40613f:	41 ff e3             	jmpq   *%r11
  406142:	0f 29 78 f1          	movaps %xmm7,-0xf(%rax)
  406146:	0f 29 70 e1          	movaps %xmm6,-0x1f(%rax)
  40614a:	0f 29 68 d1          	movaps %xmm5,-0x2f(%rax)
  40614e:	0f 29 60 c1          	movaps %xmm4,-0x3f(%rax)
  406152:	0f 29 58 b1          	movaps %xmm3,-0x4f(%rax)
  406156:	0f 29 50 a1          	movaps %xmm2,-0x5f(%rax)
  40615a:	0f 29 48 91          	movaps %xmm1,-0x6f(%rax)
  40615e:	0f 29 40 81          	movaps %xmm0,-0x7f(%rax)
  406162:	41 89 fd             	mov    %edi,%r13d
  406165:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40616c:	00 00 
  40616e:	41 89 f6             	mov    %esi,%r14d
  406171:	48 33 c4             	xor    %rsp,%rax
  406174:	48 89 84 24 48 01 00 	mov    %rax,0x148(%rsp)
  40617b:	00 
  40617c:	45 85 ed             	test   %r13d,%r13d
  40617f:	0f 84 87 00 00 00    	je     40620c <__libirc_get_msg+0x10c>
  406185:	83 3d d4 40 20 00 00 	cmpl   $0x0,0x2040d4(%rip)        # 60a260 <first_msg>
  40618c:	74 5b                	je     4061e9 <__libirc_get_msg+0xe9>
  40618e:	48 8d 3d eb 0d 00 00 	lea    0xdeb(%rip),%rdi        # 406f80 <ONE+0x190>
  406195:	33 f6                	xor    %esi,%esi
  406197:	c7 05 bf 40 20 00 00 	movl   $0x0,0x2040bf(%rip)        # 60a260 <first_msg>
  40619e:	00 00 00 
  4061a1:	e8 4a b4 ff ff       	callq  4015f0 <catopen@plt>
  4061a6:	48 89 05 33 46 20 00 	mov    %rax,0x204633(%rip)        # 60a7e0 <message_catalog>
  4061ad:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  4061b1:	0f 84 0d 01 00 00    	je     4062c4 <__libirc_get_msg+0x1c4>
  4061b7:	48 8b 3d 22 46 20 00 	mov    0x204622(%rip),%rdi        # 60a7e0 <message_catalog>
  4061be:	c7 05 9c 40 20 00 00 	movl   $0x0,0x20409c(%rip)        # 60a264 <use_internal_msg>
  4061c5:	00 00 00 
  4061c8:	49 63 c5             	movslq %r13d,%rax
  4061cb:	4c 8d 05 16 38 20 00 	lea    0x203816(%rip),%r8        # 6099e8 <irc_msgtab+0x8>
  4061d2:	48 c1 e0 04          	shl    $0x4,%rax
  4061d6:	be 01 00 00 00       	mov    $0x1,%esi
  4061db:	44 89 ea             	mov    %r13d,%edx
  4061de:	4a 8b 0c 00          	mov    (%rax,%r8,1),%rcx
  4061e2:	e8 99 b4 ff ff       	callq  401680 <catgets@plt>
  4061e7:	eb 2a                	jmp    406213 <__libirc_get_msg+0x113>
  4061e9:	8b 05 75 40 20 00    	mov    0x204075(%rip),%eax        # 60a264 <use_internal_msg>
  4061ef:	85 c0                	test   %eax,%eax
  4061f1:	0f 84 7d 01 00 00    	je     406374 <__libirc_get_msg+0x274>
  4061f7:	4d 63 ed             	movslq %r13d,%r13
  4061fa:	48 8d 05 e7 37 20 00 	lea    0x2037e7(%rip),%rax        # 6099e8 <irc_msgtab+0x8>
  406201:	49 c1 e5 04          	shl    $0x4,%r13
  406205:	49 8b 44 05 00       	mov    0x0(%r13,%rax,1),%rax
  40620a:	eb 07                	jmp    406213 <__libirc_get_msg+0x113>
  40620c:	48 8d 05 a5 0b 00 00 	lea    0xba5(%rip),%rax        # 406db8 <_IO_stdin_used+0x118>
  406213:	45 85 f6             	test   %r14d,%r14d
  406216:	0f 8e 80 00 00 00    	jle    40629c <__libirc_get_msg+0x19c>
  40621c:	c7 84 24 b0 00 00 00 	movl   $0x10,0xb0(%rsp)
  406223:	10 00 00 00 
  406227:	48 8d 94 24 70 01 00 	lea    0x170(%rsp),%rdx
  40622e:	00 
  40622f:	c7 84 24 b4 00 00 00 	movl   $0x30,0xb4(%rsp)
  406236:	30 00 00 00 
  40623a:	48 8d 34 24          	lea    (%rsp),%rsi
  40623e:	48 89 96 b8 00 00 00 	mov    %rdx,0xb8(%rsi)
  406245:	48 89 b6 c0 00 00 00 	mov    %rsi,0xc0(%rsi)
  40624c:	48 8d 3d 8d 41 20 00 	lea    0x20418d(%rip),%rdi        # 60a3e0 <get_msg_buf>
  406253:	be 01 00 00 00       	mov    $0x1,%esi
  406258:	ba 00 02 00 00       	mov    $0x200,%edx
  40625d:	48 89 c1             	mov    %rax,%rcx
  406260:	4c 8d 84 24 b0 00 00 	lea    0xb0(%rsp),%r8
  406267:	00 
  406268:	e8 b3 b4 ff ff       	callq  401720 <__vsprintf_chk@plt>
  40626d:	48 8b 84 24 48 01 00 	mov    0x148(%rsp),%rax
  406274:	00 
  406275:	48 33 c4             	xor    %rsp,%rax
  406278:	64 48 3b 04 25 28 00 	cmp    %fs:0x28,%rax
  40627f:	00 00 
  406281:	0f 85 e8 00 00 00    	jne    40636f <__libirc_get_msg+0x26f>
  406287:	48 8d 05 52 41 20 00 	lea    0x204152(%rip),%rax        # 60a3e0 <get_msg_buf>
  40628e:	48 81 c4 50 01 00 00 	add    $0x150,%rsp
  406295:	41 5e                	pop    %r14
  406297:	41 5d                	pop    %r13
  406299:	41 5c                	pop    %r12
  40629b:	c3                   	retq   
  40629c:	48 8b 94 24 48 01 00 	mov    0x148(%rsp),%rdx
  4062a3:	00 
  4062a4:	48 33 d4             	xor    %rsp,%rdx
  4062a7:	64 48 3b 14 25 28 00 	cmp    %fs:0x28,%rdx
  4062ae:	00 00 
  4062b0:	0f 85 b9 00 00 00    	jne    40636f <__libirc_get_msg+0x26f>
  4062b6:	48 81 c4 50 01 00 00 	add    $0x150,%rsp
  4062bd:	41 5e                	pop    %r14
  4062bf:	41 5d                	pop    %r13
  4062c1:	41 5c                	pop    %r12
  4062c3:	c3                   	retq   
  4062c4:	48 8d 3d 55 12 00 00 	lea    0x1255(%rip),%rdi        # 407520 <ONE+0x730>
  4062cb:	e8 20 b4 ff ff       	callq  4016f0 <getenv@plt>
  4062d0:	48 85 c0             	test   %rax,%rax
  4062d3:	0f 84 80 00 00 00    	je     406359 <__libirc_get_msg+0x259>
  4062d9:	48 89 c6             	mov    %rax,%rsi
  4062dc:	48 8d bc 24 c8 00 00 	lea    0xc8(%rsp),%rdi
  4062e3:	00 
  4062e4:	ba 80 00 00 00       	mov    $0x80,%edx
  4062e9:	e8 12 b3 ff ff       	callq  401600 <strncpy@plt>
  4062ee:	be 2e 00 00 00       	mov    $0x2e,%esi
  4062f3:	48 8d bc 24 c8 00 00 	lea    0xc8(%rsp),%rdi
  4062fa:	00 
  4062fb:	e8 90 b2 ff ff       	callq  401590 <strchr@plt>
  406300:	49 89 c4             	mov    %rax,%r12
  406303:	4d 85 e4             	test   %r12,%r12
  406306:	74 51                	je     406359 <__libirc_get_msg+0x259>
  406308:	48 8d 3d 11 12 00 00 	lea    0x1211(%rip),%rdi        # 407520 <ONE+0x730>
  40630f:	48 8d b4 24 c8 00 00 	lea    0xc8(%rsp),%rsi
  406316:	00 
  406317:	ba 01 00 00 00       	mov    $0x1,%edx
  40631c:	41 c6 04 24 00       	movb   $0x0,(%r12)
  406321:	e8 0a b4 ff ff       	callq  401730 <setenv@plt>
  406326:	48 8d 3d 53 0c 00 00 	lea    0xc53(%rip),%rdi        # 406f80 <ONE+0x190>
  40632d:	33 f6                	xor    %esi,%esi
  40632f:	e8 bc b2 ff ff       	callq  4015f0 <catopen@plt>
  406334:	48 8d 3d e5 11 00 00 	lea    0x11e5(%rip),%rdi        # 407520 <ONE+0x730>
  40633b:	48 8d b4 24 c8 00 00 	lea    0xc8(%rsp),%rsi
  406342:	00 
  406343:	ba 01 00 00 00       	mov    $0x1,%edx
  406348:	48 89 05 91 44 20 00 	mov    %rax,0x204491(%rip)        # 60a7e0 <message_catalog>
  40634f:	41 c6 04 24 2e       	movb   $0x2e,(%r12)
  406354:	e8 d7 b3 ff ff       	callq  401730 <setenv@plt>
  406359:	48 8b 3d 80 44 20 00 	mov    0x204480(%rip),%rdi        # 60a7e0 <message_catalog>
  406360:	48 83 ff ff          	cmp    $0xffffffffffffffff,%rdi
  406364:	0f 85 54 fe ff ff    	jne    4061be <__libirc_get_msg+0xbe>
  40636a:	e9 7a fe ff ff       	jmpq   4061e9 <__libirc_get_msg+0xe9>
  40636f:	e8 1c b3 ff ff       	callq  401690 <__stack_chk_fail@plt>
  406374:	48 8b 3d 65 44 20 00 	mov    0x204465(%rip),%rdi        # 60a7e0 <message_catalog>
  40637b:	e9 48 fe ff ff       	jmpq   4061c8 <__libirc_get_msg+0xc8>

0000000000406380 <__libirc_print>:
  406380:	41 56                	push   %r14
  406382:	41 57                	push   %r15
  406384:	53                   	push   %rbx
  406385:	55                   	push   %rbp
  406386:	48 81 ec 58 01 00 00 	sub    $0x158,%rsp
  40638d:	48 89 4c 24 18       	mov    %rcx,0x18(%rsp)
  406392:	4c 89 44 24 20       	mov    %r8,0x20(%rsp)
  406397:	4c 89 4c 24 28       	mov    %r9,0x28(%rsp)
  40639c:	44 0f b6 d8          	movzbl %al,%r11d
  4063a0:	4a 8d 04 9d 00 00 00 	lea    0x0(,%r11,4),%rax
  4063a7:	00 
  4063a8:	4c 8d 1d 2e 00 00 00 	lea    0x2e(%rip),%r11        # 4063dd <__libirc_print+0x5d>
  4063af:	4c 2b d8             	sub    %rax,%r11
  4063b2:	48 8d 84 24 af 00 00 	lea    0xaf(%rsp),%rax
  4063b9:	00 
  4063ba:	41 ff e3             	jmpq   *%r11
  4063bd:	0f 29 78 f1          	movaps %xmm7,-0xf(%rax)
  4063c1:	0f 29 70 e1          	movaps %xmm6,-0x1f(%rax)
  4063c5:	0f 29 68 d1          	movaps %xmm5,-0x2f(%rax)
  4063c9:	0f 29 60 c1          	movaps %xmm4,-0x3f(%rax)
  4063cd:	0f 29 58 b1          	movaps %xmm3,-0x4f(%rax)
  4063d1:	0f 29 50 a1          	movaps %xmm2,-0x5f(%rax)
  4063d5:	0f 29 48 91          	movaps %xmm1,-0x6f(%rax)
  4063d9:	0f 29 40 81          	movaps %xmm0,-0x7f(%rax)
  4063dd:	41 89 f6             	mov    %esi,%r14d
  4063e0:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4063e7:	00 00 
  4063e9:	41 89 d7             	mov    %edx,%r15d
  4063ec:	48 33 c4             	xor    %rsp,%rax
  4063ef:	89 fd                	mov    %edi,%ebp
  4063f1:	48 89 84 24 48 01 00 	mov    %rax,0x148(%rsp)
  4063f8:	00 
  4063f9:	45 85 f6             	test   %r14d,%r14d
  4063fc:	75 44                	jne    406442 <__libirc_print+0xc2>
  4063fe:	83 fd 01             	cmp    $0x1,%ebp
  406401:	0f 84 72 01 00 00    	je     406579 <__libirc_print+0x1f9>
  406407:	bf 01 00 00 00       	mov    $0x1,%edi
  40640c:	48 8d 35 01 09 00 00 	lea    0x901(%rip),%rsi        # 406d14 <_IO_stdin_used+0x74>
  406413:	33 c0                	xor    %eax,%eax
  406415:	e8 36 b1 ff ff       	callq  401550 <__printf_chk@plt>
  40641a:	48 8b 84 24 48 01 00 	mov    0x148(%rsp),%rax
  406421:	00 
  406422:	48 33 c4             	xor    %rsp,%rax
  406425:	64 48 3b 04 25 28 00 	cmp    %fs:0x28,%rax
  40642c:	00 00 
  40642e:	0f 85 40 01 00 00    	jne    406574 <__libirc_print+0x1f4>
  406434:	48 81 c4 58 01 00 00 	add    $0x158,%rsp
  40643b:	5d                   	pop    %rbp
  40643c:	5b                   	pop    %rbx
  40643d:	41 5f                	pop    %r15
  40643f:	41 5e                	pop    %r14
  406441:	c3                   	retq   
  406442:	83 3d 17 3e 20 00 00 	cmpl   $0x0,0x203e17(%rip)        # 60a260 <first_msg>
  406449:	74 3c                	je     406487 <__libirc_print+0x107>
  40644b:	48 8d 3d 2e 0b 00 00 	lea    0xb2e(%rip),%rdi        # 406f80 <ONE+0x190>
  406452:	33 f6                	xor    %esi,%esi
  406454:	c7 05 02 3e 20 00 00 	movl   $0x0,0x203e02(%rip)        # 60a260 <first_msg>
  40645b:	00 00 00 
  40645e:	e8 8d b1 ff ff       	callq  4015f0 <catopen@plt>
  406463:	48 89 05 76 43 20 00 	mov    %rax,0x204376(%rip)        # 60a7e0 <message_catalog>
  40646a:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  40646e:	0f 84 27 01 00 00    	je     40659b <__libirc_print+0x21b>
  406474:	48 8b 3d 65 43 20 00 	mov    0x204365(%rip),%rdi        # 60a7e0 <message_catalog>
  40647b:	c7 05 df 3d 20 00 00 	movl   $0x0,0x203ddf(%rip)        # 60a264 <use_internal_msg>
  406482:	00 00 00 
  406485:	eb 22                	jmp    4064a9 <__libirc_print+0x129>
  406487:	8b 05 d7 3d 20 00    	mov    0x203dd7(%rip),%eax        # 60a264 <use_internal_msg>
  40648d:	85 c0                	test   %eax,%eax
  40648f:	0f 84 dd 01 00 00    	je     406672 <__libirc_print+0x2f2>
  406495:	4d 63 f6             	movslq %r14d,%r14
  406498:	48 8d 05 49 35 20 00 	lea    0x203549(%rip),%rax        # 6099e8 <irc_msgtab+0x8>
  40649f:	49 c1 e6 04          	shl    $0x4,%r14
  4064a3:	49 8b 0c 06          	mov    (%r14,%rax,1),%rcx
  4064a7:	eb 22                	jmp    4064cb <__libirc_print+0x14b>
  4064a9:	49 63 c6             	movslq %r14d,%rax
  4064ac:	48 8d 1d 35 35 20 00 	lea    0x203535(%rip),%rbx        # 6099e8 <irc_msgtab+0x8>
  4064b3:	48 c1 e0 04          	shl    $0x4,%rax
  4064b7:	be 01 00 00 00       	mov    $0x1,%esi
  4064bc:	44 89 f2             	mov    %r14d,%edx
  4064bf:	48 8b 0c 18          	mov    (%rax,%rbx,1),%rcx
  4064c3:	e8 b8 b1 ff ff       	callq  401680 <catgets@plt>
  4064c8:	48 89 c1             	mov    %rax,%rcx
  4064cb:	45 85 ff             	test   %r15d,%r15d
  4064ce:	7e 55                	jle    406525 <__libirc_print+0x1a5>
  4064d0:	c7 84 24 b0 00 00 00 	movl   $0x18,0xb0(%rsp)
  4064d7:	18 00 00 00 
  4064db:	48 8d 84 24 80 01 00 	lea    0x180(%rsp),%rax
  4064e2:	00 
  4064e3:	c7 84 24 b4 00 00 00 	movl   $0x30,0xb4(%rsp)
  4064ea:	30 00 00 00 
  4064ee:	48 8d 1c 24          	lea    (%rsp),%rbx
  4064f2:	48 89 83 b8 00 00 00 	mov    %rax,0xb8(%rbx)
  4064f9:	48 89 9b c0 00 00 00 	mov    %rbx,0xc0(%rbx)
  406500:	48 8d 3d d9 40 20 00 	lea    0x2040d9(%rip),%rdi        # 60a5e0 <print_buf>
  406507:	be 01 00 00 00       	mov    $0x1,%esi
  40650c:	ba 00 02 00 00       	mov    $0x200,%edx
  406511:	4c 8d 84 24 b0 00 00 	lea    0xb0(%rsp),%r8
  406518:	00 
  406519:	e8 02 b2 ff ff       	callq  401720 <__vsprintf_chk@plt>
  40651e:	48 8d 0d bb 40 20 00 	lea    0x2040bb(%rip),%rcx        # 60a5e0 <print_buf>
  406525:	83 fd 01             	cmp    $0x1,%ebp
  406528:	0f 84 10 01 00 00    	je     40663e <__libirc_print+0x2be>
  40652e:	bf 01 00 00 00       	mov    $0x1,%edi
  406533:	48 89 ce             	mov    %rcx,%rsi
  406536:	33 c0                	xor    %eax,%eax
  406538:	e8 13 b0 ff ff       	callq  401550 <__printf_chk@plt>
  40653d:	bf 01 00 00 00       	mov    $0x1,%edi
  406542:	48 8d 35 cb 07 00 00 	lea    0x7cb(%rip),%rsi        # 406d14 <_IO_stdin_used+0x74>
  406549:	33 c0                	xor    %eax,%eax
  40654b:	e8 00 b0 ff ff       	callq  401550 <__printf_chk@plt>
  406550:	48 8b 84 24 48 01 00 	mov    0x148(%rsp),%rax
  406557:	00 
  406558:	48 33 c4             	xor    %rsp,%rax
  40655b:	64 48 3b 04 25 28 00 	cmp    %fs:0x28,%rax
  406562:	00 00 
  406564:	75 0e                	jne    406574 <__libirc_print+0x1f4>
  406566:	48 81 c4 58 01 00 00 	add    $0x158,%rsp
  40656d:	5d                   	pop    %rbp
  40656e:	5b                   	pop    %rbx
  40656f:	41 5f                	pop    %r15
  406571:	41 5e                	pop    %r14
  406573:	c3                   	retq   
  406574:	e8 17 b1 ff ff       	callq  401690 <__stack_chk_fail@plt>
  406579:	48 8b 05 70 3a 20 00 	mov    0x203a70(%rip),%rax        # 609ff0 <_DYNAMIC+0x230>
  406580:	be 01 00 00 00       	mov    $0x1,%esi
  406585:	48 8d 15 88 07 00 00 	lea    0x788(%rip),%rdx        # 406d14 <_IO_stdin_used+0x74>
  40658c:	48 8b 38             	mov    (%rax),%rdi
  40658f:	33 c0                	xor    %eax,%eax
  406591:	e8 da b1 ff ff       	callq  401770 <__fprintf_chk@plt>
  406596:	e9 7f fe ff ff       	jmpq   40641a <__libirc_print+0x9a>
  40659b:	48 8d 3d 7e 0f 00 00 	lea    0xf7e(%rip),%rdi        # 407520 <ONE+0x730>
  4065a2:	e8 49 b1 ff ff       	callq  4016f0 <getenv@plt>
  4065a7:	48 85 c0             	test   %rax,%rax
  4065aa:	74 7c                	je     406628 <__libirc_print+0x2a8>
  4065ac:	48 89 c6             	mov    %rax,%rsi
  4065af:	48 8d bc 24 c8 00 00 	lea    0xc8(%rsp),%rdi
  4065b6:	00 
  4065b7:	ba 80 00 00 00       	mov    $0x80,%edx
  4065bc:	e8 3f b0 ff ff       	callq  401600 <strncpy@plt>
  4065c1:	be 2e 00 00 00       	mov    $0x2e,%esi
  4065c6:	48 8d bc 24 c8 00 00 	lea    0xc8(%rsp),%rdi
  4065cd:	00 
  4065ce:	e8 bd af ff ff       	callq  401590 <strchr@plt>
  4065d3:	48 89 c3             	mov    %rax,%rbx
  4065d6:	48 85 db             	test   %rbx,%rbx
  4065d9:	74 4d                	je     406628 <__libirc_print+0x2a8>
  4065db:	48 8d 3d 3e 0f 00 00 	lea    0xf3e(%rip),%rdi        # 407520 <ONE+0x730>
  4065e2:	48 8d b4 24 c8 00 00 	lea    0xc8(%rsp),%rsi
  4065e9:	00 
  4065ea:	ba 01 00 00 00       	mov    $0x1,%edx
  4065ef:	c6 03 00             	movb   $0x0,(%rbx)
  4065f2:	e8 39 b1 ff ff       	callq  401730 <setenv@plt>
  4065f7:	48 8d 3d 82 09 00 00 	lea    0x982(%rip),%rdi        # 406f80 <ONE+0x190>
  4065fe:	33 f6                	xor    %esi,%esi
  406600:	e8 eb af ff ff       	callq  4015f0 <catopen@plt>
  406605:	48 8d 3d 14 0f 00 00 	lea    0xf14(%rip),%rdi        # 407520 <ONE+0x730>
  40660c:	48 8d b4 24 c8 00 00 	lea    0xc8(%rsp),%rsi
  406613:	00 
  406614:	ba 01 00 00 00       	mov    $0x1,%edx
  406619:	48 89 05 c0 41 20 00 	mov    %rax,0x2041c0(%rip)        # 60a7e0 <message_catalog>
  406620:	c6 03 2e             	movb   $0x2e,(%rbx)
  406623:	e8 08 b1 ff ff       	callq  401730 <setenv@plt>
  406628:	48 8b 3d b1 41 20 00 	mov    0x2041b1(%rip),%rdi        # 60a7e0 <message_catalog>
  40662f:	48 83 ff ff          	cmp    $0xffffffffffffffff,%rdi
  406633:	0f 85 42 fe ff ff    	jne    40647b <__libirc_print+0xfb>
  406639:	e9 49 fe ff ff       	jmpq   406487 <__libirc_print+0x107>
  40663e:	48 8b 1d ab 39 20 00 	mov    0x2039ab(%rip),%rbx        # 609ff0 <_DYNAMIC+0x230>
  406645:	be 01 00 00 00       	mov    $0x1,%esi
  40664a:	48 89 ca             	mov    %rcx,%rdx
  40664d:	33 c0                	xor    %eax,%eax
  40664f:	48 8b 3b             	mov    (%rbx),%rdi
  406652:	e8 19 b1 ff ff       	callq  401770 <__fprintf_chk@plt>
  406657:	be 01 00 00 00       	mov    $0x1,%esi
  40665c:	48 8d 15 b1 06 00 00 	lea    0x6b1(%rip),%rdx        # 406d14 <_IO_stdin_used+0x74>
  406663:	33 c0                	xor    %eax,%eax
  406665:	48 8b 3b             	mov    (%rbx),%rdi
  406668:	e8 03 b1 ff ff       	callq  401770 <__fprintf_chk@plt>
  40666d:	e9 de fe ff ff       	jmpq   406550 <__libirc_print+0x1d0>
  406672:	48 8b 3d 67 41 20 00 	mov    0x204167(%rip),%rdi        # 60a7e0 <message_catalog>
  406679:	e9 2b fe ff ff       	jmpq   4064a9 <__libirc_print+0x129>
  40667e:	66 90                	xchg   %ax,%ax

0000000000406680 <__intel_cpu_features_init_x>:
  406680:	50                   	push   %rax
  406681:	33 c0                	xor    %eax,%eax
  406683:	e8 18 00 00 00       	callq  4066a0 <__intel_cpu_features_init_body>
  406688:	58                   	pop    %rax
  406689:	c3                   	retq   
  40668a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000406690 <__intel_cpu_features_init>:
  406690:	50                   	push   %rax
  406691:	b8 01 00 00 00       	mov    $0x1,%eax
  406696:	e8 05 00 00 00       	callq  4066a0 <__intel_cpu_features_init_body>
  40669b:	58                   	pop    %rax
  40669c:	c3                   	retq   
  40669d:	0f 1f 00             	nopl   (%rax)

00000000004066a0 <__intel_cpu_features_init_body>:
  4066a0:	52                   	push   %rdx
  4066a1:	51                   	push   %rcx
  4066a2:	53                   	push   %rbx
  4066a3:	56                   	push   %rsi
  4066a4:	41 51                	push   %r9
  4066a6:	41 54                	push   %r12
  4066a8:	41 56                	push   %r14
  4066aa:	55                   	push   %rbp
  4066ab:	41 89 c6             	mov    %eax,%r14d
  4066ae:	33 c0                	xor    %eax,%eax
  4066b0:	0f a2                	cpuid  
  4066b2:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  4066b6:	89 5c 24 ec          	mov    %ebx,-0x14(%rsp)
  4066ba:	89 4c 24 f0          	mov    %ecx,-0x10(%rsp)
  4066be:	89 54 24 f4          	mov    %edx,-0xc(%rsp)
  4066c2:	83 7c 24 e8 00       	cmpl   $0x0,-0x18(%rsp)
  4066c7:	0f 84 21 04 00 00    	je     406aee <__intel_cpu_features_init_body+0x44e>
  4066cd:	41 83 fe 01          	cmp    $0x1,%r14d
  4066d1:	0f 84 2e 04 00 00    	je     406b05 <__intel_cpu_features_init_body+0x465>
  4066d7:	b8 01 00 00 00       	mov    $0x1,%eax
  4066dc:	0f a2                	cpuid  
  4066de:	89 d6                	mov    %edx,%esi
  4066e0:	89 cd                	mov    %ecx,%ebp
  4066e2:	83 e6 01             	and    $0x1,%esi
  4066e5:	f7 c2 00 80 00 00    	test   $0x8000,%edx
  4066eb:	41 89 c4             	mov    %eax,%r12d
  4066ee:	48 8d 34 75 01 00 00 	lea    0x1(,%rsi,2),%rsi
  4066f5:	00 
  4066f6:	4c 8d 4e 04          	lea    0x4(%rsi),%r9
  4066fa:	49 0f 45 f1          	cmovne %r9,%rsi
  4066fe:	f7 c2 00 00 80 00    	test   $0x800000,%edx
  406704:	4c 8d 56 08          	lea    0x8(%rsi),%r10
  406708:	49 0f 45 f2          	cmovne %r10,%rsi
  40670c:	f7 c2 00 00 00 01    	test   $0x1000000,%edx
  406712:	75 28                	jne    40673c <__intel_cpu_features_init_body+0x9c>
  406714:	f7 c5 00 00 00 40    	test   $0x40000000,%ebp
  40671a:	4c 8d 8e 00 00 02 00 	lea    0x20000(%rsi),%r9
  406721:	49 0f 45 f1          	cmovne %r9,%rsi
  406725:	b8 07 00 00 00       	mov    $0x7,%eax
  40672a:	33 c9                	xor    %ecx,%ecx
  40672c:	0f a2                	cpuid  
  40672e:	41 89 d3             	mov    %edx,%r11d
  406731:	41 89 ca             	mov    %ecx,%r10d
  406734:	41 89 d9             	mov    %ebx,%r9d
  406737:	e9 03 01 00 00       	jmpq   40683f <__intel_cpu_features_init_body+0x19f>
  40673c:	48 83 c6 10          	add    $0x10,%rsi
  406740:	49 89 f1             	mov    %rsi,%r9
  406743:	49 83 c9 20          	or     $0x20,%r9
  406747:	f7 c2 00 00 00 02    	test   $0x2000000,%edx
  40674d:	49 0f 45 f1          	cmovne %r9,%rsi
  406751:	49 89 f2             	mov    %rsi,%r10
  406754:	49 83 ca 40          	or     $0x40,%r10
  406758:	f7 c2 00 00 00 04    	test   $0x4000000,%edx
  40675e:	49 0f 45 f2          	cmovne %r10,%rsi
  406762:	49 89 f3             	mov    %rsi,%r11
  406765:	49 81 cb 80 00 00 00 	or     $0x80,%r11
  40676c:	f7 c5 01 00 00 00    	test   $0x1,%ebp
  406772:	49 0f 45 f3          	cmovne %r11,%rsi
  406776:	49 89 f1             	mov    %rsi,%r9
  406779:	49 81 c9 00 01 00 00 	or     $0x100,%r9
  406780:	f7 c5 00 02 00 00    	test   $0x200,%ebp
  406786:	49 0f 45 f1          	cmovne %r9,%rsi
  40678a:	49 89 f2             	mov    %rsi,%r10
  40678d:	49 81 ca 00 08 00 00 	or     $0x800,%r10
  406794:	f7 c5 00 00 40 00    	test   $0x400000,%ebp
  40679a:	49 0f 45 f2          	cmovne %r10,%rsi
  40679e:	48 89 f0             	mov    %rsi,%rax
  4067a1:	48 0d 00 02 00 00    	or     $0x200,%rax
  4067a7:	f7 c5 00 00 08 00    	test   $0x80000,%ebp
  4067ad:	48 0f 45 f0          	cmovne %rax,%rsi
  4067b1:	48 89 f2             	mov    %rsi,%rdx
  4067b4:	48 81 ca 00 04 00 00 	or     $0x400,%rdx
  4067bb:	f7 c5 00 00 10 00    	test   $0x100000,%ebp
  4067c1:	48 0f 45 f2          	cmovne %rdx,%rsi
  4067c5:	48 89 f1             	mov    %rsi,%rcx
  4067c8:	48 81 c9 00 10 00 00 	or     $0x1000,%rcx
  4067cf:	f7 c5 00 00 80 00    	test   $0x800000,%ebp
  4067d5:	48 0f 45 f1          	cmovne %rcx,%rsi
  4067d9:	48 89 f3             	mov    %rsi,%rbx
  4067dc:	48 81 cb 00 20 00 00 	or     $0x2000,%rbx
  4067e3:	f7 c5 02 00 00 00    	test   $0x2,%ebp
  4067e9:	48 0f 45 f3          	cmovne %rbx,%rsi
  4067ed:	49 89 f1             	mov    %rsi,%r9
  4067f0:	49 81 c9 00 40 00 00 	or     $0x4000,%r9
  4067f7:	f7 c5 00 00 00 02    	test   $0x2000000,%ebp
  4067fd:	49 0f 45 f1          	cmovne %r9,%rsi
  406801:	b8 07 00 00 00       	mov    $0x7,%eax
  406806:	33 c9                	xor    %ecx,%ecx
  406808:	0f a2                	cpuid  
  40680a:	41 89 d3             	mov    %edx,%r11d
  40680d:	41 89 d9             	mov    %ebx,%r9d
  406810:	48 ba 00 00 00 00 08 	movabs $0x800000000,%rdx
  406817:	00 00 00 
  40681a:	41 89 ca             	mov    %ecx,%r10d
  40681d:	48 0b d6             	or     %rsi,%rdx
  406820:	41 f7 c1 00 00 00 20 	test   $0x20000000,%r9d
  406827:	48 0f 45 f2          	cmovne %rdx,%rsi
  40682b:	48 89 f1             	mov    %rsi,%rcx
  40682e:	48 81 c9 00 00 02 00 	or     $0x20000,%rcx
  406835:	f7 c5 00 00 00 40    	test   $0x40000000,%ebp
  40683b:	48 0f 45 f1          	cmovne %rcx,%rsi
  40683f:	44 89 c8             	mov    %r9d,%eax
  406842:	48 89 f3             	mov    %rsi,%rbx
  406845:	25 08 01 00 00       	and    $0x108,%eax
  40684a:	48 81 cb 00 00 08 00 	or     $0x80000,%rbx
  406851:	3d 08 01 00 00       	cmp    $0x108,%eax
  406856:	48 0f 44 f3          	cmove  %rbx,%rsi
  40685a:	b8 01 00 00 80       	mov    $0x80000001,%eax
  40685f:	0f a2                	cpuid  
  406861:	48 89 f2             	mov    %rsi,%rdx
  406864:	48 81 ca 00 00 10 00 	or     $0x100000,%rdx
  40686b:	f6 c1 20             	test   $0x20,%cl
  40686e:	48 0f 45 f2          	cmovne %rdx,%rsi
  406872:	48 89 f1             	mov    %rsi,%rcx
  406875:	48 81 c9 00 00 20 00 	or     $0x200000,%rcx
  40687c:	41 f7 c1 10 00 00 00 	test   $0x10,%r9d
  406883:	48 0f 45 f1          	cmovne %rcx,%rsi
  406887:	48 89 f0             	mov    %rsi,%rax
  40688a:	48 0d 00 00 40 00    	or     $0x400000,%rax
  406890:	41 f7 c1 00 08 00 00 	test   $0x800,%r9d
  406897:	48 0f 45 f0          	cmovne %rax,%rsi
  40689b:	48 89 f2             	mov    %rsi,%rdx
  40689e:	48 81 ca 00 00 00 10 	or     $0x10000000,%rdx
  4068a5:	41 f7 c1 00 00 08 00 	test   $0x80000,%r9d
  4068ac:	48 0f 45 f2          	cmovne %rdx,%rsi
  4068b0:	48 89 f3             	mov    %rsi,%rbx
  4068b3:	48 81 cb 00 00 00 20 	or     $0x20000000,%rbx
  4068ba:	41 f7 c1 00 00 04 00 	test   $0x40000,%r9d
  4068c1:	48 0f 45 f3          	cmovne %rbx,%rsi
  4068c5:	f7 c5 00 00 00 08    	test   $0x8000000,%ebp
  4068cb:	0f 84 c0 01 00 00    	je     406a91 <__intel_cpu_features_init_body+0x3f1>
  4068d1:	33 c9                	xor    %ecx,%ecx
  4068d3:	0f 01 d0             	xgetbv 
  4068d6:	48 83 ce 01          	or     $0x1,%rsi
  4068da:	89 c2                	mov    %eax,%edx
  4068dc:	83 e2 06             	and    $0x6,%edx
  4068df:	83 fa 06             	cmp    $0x6,%edx
  4068e2:	0f 85 a9 01 00 00    	jne    406a91 <__intel_cpu_features_init_body+0x3f1>
  4068e8:	48 89 f2             	mov    %rsi,%rdx
  4068eb:	48 81 ca 00 00 01 00 	or     $0x10000,%rdx
  4068f2:	f7 c5 00 00 00 10    	test   $0x10000000,%ebp
  4068f8:	48 0f 45 f2          	cmovne %rdx,%rsi
  4068fc:	48 89 f1             	mov    %rsi,%rcx
  4068ff:	48 81 c9 00 80 00 00 	or     $0x8000,%rcx
  406906:	f7 c5 00 00 00 20    	test   $0x20000000,%ebp
  40690c:	48 0f 45 f1          	cmovne %rcx,%rsi
  406910:	48 89 f3             	mov    %rsi,%rbx
  406913:	48 81 cb 00 00 80 00 	or     $0x800000,%rbx
  40691a:	41 f7 c1 20 00 00 00 	test   $0x20,%r9d
  406921:	48 0f 45 f3          	cmovne %rbx,%rsi
  406925:	48 89 f2             	mov    %rsi,%rdx
  406928:	48 81 ca 00 00 04 00 	or     $0x40000,%rdx
  40692f:	f7 c5 00 10 00 00    	test   $0x1000,%ebp
  406935:	89 c5                	mov    %eax,%ebp
  406937:	48 0f 45 f2          	cmovne %rdx,%rsi
  40693b:	83 e5 18             	and    $0x18,%ebp
  40693e:	83 fd 18             	cmp    $0x18,%ebp
  406941:	75 1c                	jne    40695f <__intel_cpu_features_init_body+0x2bf>
  406943:	48 83 ce 01          	or     $0x1,%rsi
  406947:	48 ba 00 00 00 00 10 	movabs $0x1000000000,%rdx
  40694e:	00 00 00 
  406951:	48 0b d6             	or     %rsi,%rdx
  406954:	41 f7 c1 00 40 00 00 	test   $0x4000,%r9d
  40695b:	48 0f 45 f2          	cmovne %rdx,%rsi
  40695f:	25 e0 00 00 00       	and    $0xe0,%eax
  406964:	3d e0 00 00 00       	cmp    $0xe0,%eax
  406969:	0f 85 22 01 00 00    	jne    406a91 <__intel_cpu_features_init_body+0x3f1>
  40696f:	48 83 ce 01          	or     $0x1,%rsi
  406973:	48 ba 00 00 00 00 04 	movabs $0x400000000,%rdx
  40697a:	00 00 00 
  40697d:	48 89 f0             	mov    %rsi,%rax
  406980:	48 b9 00 00 00 00 01 	movabs $0x100000000,%rcx
  406987:	00 00 00 
  40698a:	48 0d 00 00 00 08    	or     $0x8000000,%rax
  406990:	41 f7 c1 00 00 01 00 	test   $0x10000,%r9d
  406997:	48 bb 00 00 00 00 02 	movabs $0x200000000,%rbx
  40699e:	00 00 00 
  4069a1:	48 0f 45 f0          	cmovne %rax,%rsi
  4069a5:	48 b8 00 00 00 00 20 	movabs $0x2000000000,%rax
  4069ac:	00 00 00 
  4069af:	48 0b d6             	or     %rsi,%rdx
  4069b2:	41 f7 c1 00 00 00 10 	test   $0x10000000,%r9d
  4069b9:	48 0f 45 f2          	cmovne %rdx,%rsi
  4069bd:	44 89 ca             	mov    %r9d,%edx
  4069c0:	48 0b ce             	or     %rsi,%rcx
  4069c3:	41 f7 c1 00 00 00 08 	test   $0x8000000,%r9d
  4069ca:	48 0f 45 f1          	cmovne %rcx,%rsi
  4069ce:	48 b9 00 00 00 00 40 	movabs $0x4000000000,%rcx
  4069d5:	00 00 00 
  4069d8:	48 0b de             	or     %rsi,%rbx
  4069db:	41 f7 c1 00 00 00 04 	test   $0x4000000,%r9d
  4069e2:	48 0f 45 f3          	cmovne %rbx,%rsi
  4069e6:	81 e2 00 00 00 80    	and    $0x80000000,%edx
  4069ec:	48 89 f5             	mov    %rsi,%rbp
  4069ef:	48 81 cd 00 00 00 01 	or     $0x1000000,%rbp
  4069f6:	41 f7 c1 00 00 02 00 	test   $0x20000,%r9d
  4069fd:	48 0f 45 f5          	cmovne %rbp,%rsi
  406a01:	48 0b c6             	or     %rsi,%rax
  406a04:	41 f7 c1 00 00 00 40 	test   $0x40000000,%r9d
  406a0b:	48 0f 45 f0          	cmovne %rax,%rsi
  406a0f:	48 b8 00 00 00 00 00 	movabs $0x40000000000,%rax
  406a16:	04 00 00 
  406a19:	48 0b ce             	or     %rsi,%rcx
  406a1c:	81 fa 00 00 00 80    	cmp    $0x80000000,%edx
  406a22:	48 0f 44 f1          	cmove  %rcx,%rsi
  406a26:	48 89 f3             	mov    %rsi,%rbx
  406a29:	48 81 cb 00 00 00 40 	or     $0x40000000,%rbx
  406a30:	41 f7 c1 00 00 20 00 	test   $0x200000,%r9d
  406a37:	49 b9 00 00 00 00 80 	movabs $0x8000000000,%r9
  406a3e:	00 00 00 
  406a41:	48 0f 45 f3          	cmovne %rbx,%rsi
  406a45:	4c 0b ce             	or     %rsi,%r9
  406a48:	41 f7 c2 02 00 00 00 	test   $0x2,%r10d
  406a4f:	49 0f 45 f1          	cmovne %r9,%rsi
  406a53:	48 0b c6             	or     %rsi,%rax
  406a56:	41 f7 c2 00 40 00 00 	test   $0x4000,%r10d
  406a5d:	49 ba 00 00 00 00 00 	movabs $0x20000000000,%r10
  406a64:	02 00 00 
  406a67:	48 0f 45 f0          	cmovne %rax,%rsi
  406a6b:	48 b8 00 00 00 00 00 	movabs $0x10000000000,%rax
  406a72:	01 00 00 
  406a75:	4c 0b d6             	or     %rsi,%r10
  406a78:	41 f7 c3 04 00 00 00 	test   $0x4,%r11d
  406a7f:	49 0f 45 f2          	cmovne %r10,%rsi
  406a83:	48 0b c6             	or     %rsi,%rax
  406a86:	41 f7 c3 08 00 00 00 	test   $0x8,%r11d
  406a8d:	48 0f 45 f0          	cmovne %rax,%rsi
  406a91:	44 89 e0             	mov    %r12d,%eax
  406a94:	c1 e8 0c             	shr    $0xc,%eax
  406a97:	41 c1 ec 04          	shr    $0x4,%r12d
  406a9b:	25 f0 00 00 00       	and    $0xf0,%eax
  406aa0:	41 83 e4 0f          	and    $0xf,%r12d
  406aa4:	41 03 c4             	add    %r12d,%eax
  406aa7:	83 f8 1c             	cmp    $0x1c,%eax
  406aaa:	74 0a                	je     406ab6 <__intel_cpu_features_init_body+0x416>
  406aac:	83 f8 26             	cmp    $0x26,%eax
  406aaf:	74 05                	je     406ab6 <__intel_cpu_features_init_body+0x416>
  406ab1:	83 f8 27             	cmp    $0x27,%eax
  406ab4:	75 05                	jne    406abb <__intel_cpu_features_init_body+0x41b>
  406ab6:	48 0f ba ee 1f       	bts    $0x1f,%rsi
  406abb:	41 83 fe 01          	cmp    $0x1,%r14d
  406abf:	74 13                	je     406ad4 <__intel_cpu_features_init_body+0x434>
  406ac1:	48 89 35 40 3d 20 00 	mov    %rsi,0x203d40(%rip)        # 60a808 <__intel_cpu_feature_indicator_x>
  406ac8:	5d                   	pop    %rbp
  406ac9:	41 5e                	pop    %r14
  406acb:	41 5c                	pop    %r12
  406acd:	41 59                	pop    %r9
  406acf:	5e                   	pop    %rsi
  406ad0:	5b                   	pop    %rbx
  406ad1:	59                   	pop    %rcx
  406ad2:	5a                   	pop    %rdx
  406ad3:	c3                   	retq   
  406ad4:	48 89 35 25 3d 20 00 	mov    %rsi,0x203d25(%rip)        # 60a800 <__intel_cpu_feature_indicator>
  406adb:	48 89 35 26 3d 20 00 	mov    %rsi,0x203d26(%rip)        # 60a808 <__intel_cpu_feature_indicator_x>
  406ae2:	5d                   	pop    %rbp
  406ae3:	41 5e                	pop    %r14
  406ae5:	41 5c                	pop    %r12
  406ae7:	41 59                	pop    %r9
  406ae9:	5e                   	pop    %rsi
  406aea:	5b                   	pop    %rbx
  406aeb:	59                   	pop    %rcx
  406aec:	5a                   	pop    %rdx
  406aed:	c3                   	retq   
  406aee:	48 c7 05 07 3d 20 00 	movq   $0x1,0x203d07(%rip)        # 60a800 <__intel_cpu_feature_indicator>
  406af5:	01 00 00 00 
  406af9:	5d                   	pop    %rbp
  406afa:	41 5e                	pop    %r14
  406afc:	41 5c                	pop    %r12
  406afe:	41 59                	pop    %r9
  406b00:	5e                   	pop    %rsi
  406b01:	5b                   	pop    %rbx
  406b02:	59                   	pop    %rcx
  406b03:	5a                   	pop    %rdx
  406b04:	c3                   	retq   
  406b05:	81 7c 24 ec 47 65 6e 	cmpl   $0x756e6547,-0x14(%rsp)
  406b0c:	75 
  406b0d:	75 df                	jne    406aee <__intel_cpu_features_init_body+0x44e>
  406b0f:	81 7c 24 f4 69 6e 65 	cmpl   $0x49656e69,-0xc(%rsp)
  406b16:	49 
  406b17:	75 d5                	jne    406aee <__intel_cpu_features_init_body+0x44e>
  406b19:	81 7c 24 f0 6e 74 65 	cmpl   $0x6c65746e,-0x10(%rsp)
  406b20:	6c 
  406b21:	75 cb                	jne    406aee <__intel_cpu_features_init_body+0x44e>
  406b23:	e9 af fb ff ff       	jmpq   4066d7 <__intel_cpu_features_init_body+0x37>
  406b28:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  406b2f:	00 

0000000000406b30 <__intel_proc_init_ftzdazule>:
  406b30:	48 81 ec 08 02 00 00 	sub    $0x208,%rsp
  406b37:	89 f2                	mov    %esi,%edx
  406b39:	89 f1                	mov    %esi,%ecx
  406b3b:	83 e2 04             	and    $0x4,%edx
  406b3e:	83 e1 02             	and    $0x2,%ecx
  406b41:	74 22                	je     406b65 <__intel_proc_init_ftzdazule+0x35>
  406b43:	f7 c7 02 00 00 00    	test   $0x2,%edi
  406b49:	74 38                	je     406b83 <__intel_proc_init_ftzdazule+0x53>
  406b4b:	85 d2                	test   %edx,%edx
  406b4d:	74 08                	je     406b57 <__intel_proc_init_ftzdazule+0x27>
  406b4f:	f7 c7 04 00 00 00    	test   $0x4,%edi
  406b55:	74 2c                	je     406b83 <__intel_proc_init_ftzdazule+0x53>
  406b57:	f7 c6 01 00 00 00    	test   $0x1,%esi
  406b5d:	0f 85 a6 00 00 00    	jne    406c09 <__intel_proc_init_ftzdazule+0xd9>
  406b63:	eb 64                	jmp    406bc9 <__intel_proc_init_ftzdazule+0x99>
  406b65:	85 d2                	test   %edx,%edx
  406b67:	0f 84 8c 00 00 00    	je     406bf9 <__intel_proc_init_ftzdazule+0xc9>
  406b6d:	f7 c7 04 00 00 00    	test   $0x4,%edi
  406b73:	74 0e                	je     406b83 <__intel_proc_init_ftzdazule+0x53>
  406b75:	f7 c6 01 00 00 00    	test   $0x1,%esi
  406b7b:	0f 85 88 00 00 00    	jne    406c09 <__intel_proc_init_ftzdazule+0xd9>
  406b81:	eb 5b                	jmp    406bde <__intel_proc_init_ftzdazule+0xae>
  406b83:	b8 00 02 00 00       	mov    $0x200,%eax
  406b88:	66 0f ef c0          	pxor   %xmm0,%xmm0
  406b8c:	0f 11 44 04 f0       	movups %xmm0,-0x10(%rsp,%rax,1)
  406b91:	0f 11 44 04 e0       	movups %xmm0,-0x20(%rsp,%rax,1)
  406b96:	0f 11 44 04 d0       	movups %xmm0,-0x30(%rsp,%rax,1)
  406b9b:	0f 11 44 04 c0       	movups %xmm0,-0x40(%rsp,%rax,1)
  406ba0:	48 83 e8 40          	sub    $0x40,%rax
  406ba4:	75 e6                	jne    406b8c <__intel_proc_init_ftzdazule+0x5c>
  406ba6:	0f ae 04 24          	fxsave (%rsp)
  406baa:	33 ff                	xor    %edi,%edi
  406bac:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  406bb0:	a8 40                	test   $0x40,%al
  406bb2:	0f 44 cf             	cmove  %edi,%ecx
  406bb5:	a9 00 00 02 00       	test   $0x20000,%eax
  406bba:	0f 44 d7             	cmove  %edi,%edx
  406bbd:	f7 c6 01 00 00 00    	test   $0x1,%esi
  406bc3:	75 44                	jne    406c09 <__intel_proc_init_ftzdazule+0xd9>
  406bc5:	85 c9                	test   %ecx,%ecx
  406bc7:	74 11                	je     406bda <__intel_proc_init_ftzdazule+0xaa>
  406bc9:	0f ae 1c 24          	stmxcsr (%rsp)
  406bcd:	8b 04 24             	mov    (%rsp),%eax
  406bd0:	83 c8 40             	or     $0x40,%eax
  406bd3:	89 04 24             	mov    %eax,(%rsp)
  406bd6:	0f ae 14 24          	ldmxcsr (%rsp)
  406bda:	85 d2                	test   %edx,%edx
  406bdc:	74 23                	je     406c01 <__intel_proc_init_ftzdazule+0xd1>
  406bde:	0f ae 1c 24          	stmxcsr (%rsp)
  406be2:	8b 04 24             	mov    (%rsp),%eax
  406be5:	0d 00 00 02 00       	or     $0x20000,%eax
  406bea:	89 04 24             	mov    %eax,(%rsp)
  406bed:	0f ae 14 24          	ldmxcsr (%rsp)
  406bf1:	48 81 c4 08 02 00 00 	add    $0x208,%rsp
  406bf8:	c3                   	retq   
  406bf9:	f7 c6 01 00 00 00    	test   $0x1,%esi
  406bff:	75 08                	jne    406c09 <__intel_proc_init_ftzdazule+0xd9>
  406c01:	48 81 c4 08 02 00 00 	add    $0x208,%rsp
  406c08:	c3                   	retq   
  406c09:	0f ae 1c 24          	stmxcsr (%rsp)
  406c0d:	8b 04 24             	mov    (%rsp),%eax
  406c10:	0d 00 80 00 00       	or     $0x8000,%eax
  406c15:	89 04 24             	mov    %eax,(%rsp)
  406c18:	0f ae 14 24          	ldmxcsr (%rsp)
  406c1c:	eb a7                	jmp    406bc5 <__intel_proc_init_ftzdazule+0x95>
  406c1e:	66 90                	xchg   %ax,%ax

0000000000406c20 <__libc_csu_init>:
  406c20:	41 57                	push   %r15
  406c22:	41 89 ff             	mov    %edi,%r15d
  406c25:	41 56                	push   %r14
  406c27:	49 89 f6             	mov    %rsi,%r14
  406c2a:	41 55                	push   %r13
  406c2c:	49 89 d5             	mov    %rdx,%r13
  406c2f:	41 54                	push   %r12
  406c31:	4c 8d 25 e8 2b 20 00 	lea    0x202be8(%rip),%r12        # 609820 <__frame_dummy_init_array_entry>
  406c38:	55                   	push   %rbp
  406c39:	48 8d 2d f0 2b 20 00 	lea    0x202bf0(%rip),%rbp        # 609830 <__init_array_end>
  406c40:	53                   	push   %rbx
  406c41:	4c 29 e5             	sub    %r12,%rbp
  406c44:	31 db                	xor    %ebx,%ebx
  406c46:	48 c1 fd 03          	sar    $0x3,%rbp
  406c4a:	48 83 ec 08          	sub    $0x8,%rsp
  406c4e:	e8 cd a8 ff ff       	callq  401520 <_init>
  406c53:	48 85 ed             	test   %rbp,%rbp
  406c56:	74 1e                	je     406c76 <__libc_csu_init+0x56>
  406c58:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  406c5f:	00 
  406c60:	4c 89 ea             	mov    %r13,%rdx
  406c63:	4c 89 f6             	mov    %r14,%rsi
  406c66:	44 89 ff             	mov    %r15d,%edi
  406c69:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  406c6d:	48 83 c3 01          	add    $0x1,%rbx
  406c71:	48 39 eb             	cmp    %rbp,%rbx
  406c74:	75 ea                	jne    406c60 <__libc_csu_init+0x40>
  406c76:	48 83 c4 08          	add    $0x8,%rsp
  406c7a:	5b                   	pop    %rbx
  406c7b:	5d                   	pop    %rbp
  406c7c:	41 5c                	pop    %r12
  406c7e:	41 5d                	pop    %r13
  406c80:	41 5e                	pop    %r14
  406c82:	41 5f                	pop    %r15
  406c84:	c3                   	retq   
  406c85:	90                   	nop
  406c86:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  406c8d:	00 00 00 

0000000000406c90 <__libc_csu_fini>:
  406c90:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000406c94 <_fini>:
  406c94:	48 83 ec 08          	sub    $0x8,%rsp
  406c98:	48 83 c4 08          	add    $0x8,%rsp
  406c9c:	c3                   	retq   

Disassembly of section .rodata:

0000000000406ca0 <_IO_stdin_used>:
  406ca0:	01 00                	add    %eax,(%rax)
  406ca2:	02 00                	add    (%rax),%al
	...
  406cac:	00 70 a7             	add    %dh,-0x59(%rax)
  406caf:	40 00 00             	add    %al,(%rax)
  406cb2:	c0 ff ff             	sar    $0xff,%bh
  406cb5:	ff                   	(bad)  
  406cb6:	df 41 bb             	fild   -0x45(%rcx)
  406cb9:	bd d7 d9 df 7c       	mov    $0x7cdfd9d7,%ebp
  406cbe:	db 3d fc a9 f1 d2    	fstpt  -0x2d0e5604(%rip)        # ffffffffd33216c0 <_end+0xffffffffd2d16eb0>
  406cc4:	4d 62                	rex.WRB (bad) 
  406cc6:	50                   	push   %rax
  406cc7:	3f                   	(bad)  
  406cc8:	65 78 70             	gs js  406d3b <_IO_stdin_used+0x9b>
  406ccb:	65 72 69             	gs jb  406d37 <_IO_stdin_used+0x97>
  406cce:	6d                   	insl   (%dx),%es:(%rdi)
  406ccf:	65 6e                	outsb  %gs:(%rsi),(%dx)
  406cd1:	74 73                	je     406d46 <_IO_stdin_used+0xa6>
  406cd3:	2f                   	(bad)  
  406cd4:	73 65                	jae    406d3b <_IO_stdin_used+0x9b>
  406cd6:	69 73 73 6f 6c 5f 73 	imul   $0x735f6c6f,0x73(%rbx),%esi
  406cdd:	74 61                	je     406d40 <_IO_stdin_used+0xa0>
  406cdf:	72 2f                	jb     406d10 <_IO_stdin_used+0x70>
  406ce1:	67 65 6e             	outsb  %gs:(%esi),(%dx)
  406ce4:	65 72 61             	gs jb  406d48 <_IO_stdin_used+0xa8>
  406ce7:	74 65                	je     406d4e <_IO_stdin_used+0xae>
  406ce9:	64 2f                	fs (bad) 
  406ceb:	73 65                	jae    406d52 <_IO_stdin_used+0xb2>
  406ced:	69 73 73 6f 6c 5f 73 	imul   $0x735f6c6f,0x73(%rbx),%esi
  406cf4:	74 61                	je     406d57 <_IO_stdin_used+0xb7>
  406cf6:	72 2e                	jb     406d26 <_IO_stdin_used+0x86>
  406cf8:	6d                   	insl   (%dx),%es:(%rdi)
  406cf9:	74 78                	je     406d73 <_IO_stdin_used+0xd3>
  406cfb:	00 6c 69 62          	add    %ch,0x62(%rcx,%rbp,2)
  406cff:	78 73                	js     406d74 <_IO_stdin_used+0xd4>
  406d01:	6d                   	insl   (%dx),%es:(%rdi)
  406d02:	6d                   	insl   (%dx),%es:(%rdi)
  406d03:	2c 20                	sub    $0x20,%al
  406d05:	00 00                	add    %al,(%rax)
  406d07:	00 72 00             	add    %dh,0x0(%rdx)
  406d0a:	00 00                	add    %al,(%rax)
  406d0c:	25 64 20 25 64       	and    $0x64252064,%eax
  406d11:	20 25 64 0a 00 00    	and    %ah,0xa64(%rip)        # 40777b <ONE+0x98b>
  406d17:	00 25 64 20 25 64    	add    %ah,0x64252064(%rip)        # 64658d81 <_end+0x6404e571>
  406d1d:	20 25 6c 67 0a 00    	and    %ah,0xa676c(%rip)        # 4ad48f <_ZNK11DenseMatrix3getEii$$LSDA+0xa4bc3>
  406d23:	00 52 6f             	add    %dl,0x6f(%rdx)
  406d26:	77 20                	ja     406d48 <_IO_stdin_used+0xa8>
  406d28:	6d                   	insl   (%dx),%es:(%rdi)
  406d29:	69 73 6d 61 74 63 68 	imul   $0x68637461,0x6d(%rbx),%esi
  406d30:	21 20                	and    %esp,(%rax)
  406d32:	45 78 70             	rex.RB js 406da5 <_IO_stdin_used+0x105>
  406d35:	65 63 74 65 64       	movslq %gs:0x64(%rbp,%riz,2),%esi
  406d3a:	20 00                	and    %al,(%rax)
  406d3c:	2c 20                	sub    $0x20,%al
  406d3e:	67 6f                	outsl  %ds:(%esi),(%dx)
  406d40:	74 20                	je     406d62 <_IO_stdin_used+0xc2>
  406d42:	00 00                	add    %al,(%rax)
  406d44:	43 6f                	rex.XB outsl %ds:(%rsi),(%dx)
  406d46:	6c                   	insb   (%dx),%es:(%rdi)
  406d47:	75 6d                	jne    406db6 <_IO_stdin_used+0x116>
  406d49:	6e                   	outsb  %ds:(%rsi),(%dx)
  406d4a:	20 6d 69             	and    %ch,0x69(%rbp)
  406d4d:	73 6d                	jae    406dbc <_IO_stdin_used+0x11c>
  406d4f:	61                   	(bad)  
  406d50:	74 63                	je     406db5 <_IO_stdin_used+0x115>
  406d52:	68 21 20 45 78       	pushq  $0x78452021
  406d57:	70 65                	jo     406dbe <_IO_stdin_used+0x11e>
  406d59:	63 74 65 64          	movslq 0x64(%rbp,%riz,2),%esi
  406d5d:	20 00                	and    %al,(%rax)
  406d5f:	00 45 58             	add    %al,0x58(%rbp)
  406d62:	50                   	push   %rax
  406d63:	45                   	rex.RB
  406d64:	43 54                	rex.XB push %r12
  406d66:	45                   	rex.RB
  406d67:	44 3a 00             	cmp    (%rax),%r8b
  406d6a:	00 00                	add    %al,(%rax)
  406d6c:	41                   	rex.B
  406d6d:	43 54                	rex.XB push %r12
  406d6f:	55                   	push   %rbp
  406d70:	41                   	rex.B
  406d71:	4c 3a 00             	rex.WR cmp (%rax),%r8b
  406d74:	62 72 65 75 65       	(bad)  {%k5}
  406d79:	72 2c                	jb     406da7 <_IO_stdin_used+0x107>
  406d7b:	20 00                	and    %al,(%rax)
  406d7d:	00 00                	add    %al,(%rax)
  406d7f:	00 75 6e             	add    %dh,0x6e(%rbp)
  406d82:	72 6f                	jb     406df3 <ONE+0x3>
  406d84:	6c                   	insb   (%dx),%es:(%rdi)
  406d85:	6c                   	insb   (%dx),%es:(%rdi)
  406d86:	65 64 5f             	gs fs pop %rdi
  406d89:	38 2c 20             	cmp    %ch,(%rax,%riz,1)
  406d8c:	00 00                	add    %al,(%rax)
  406d8e:	00 00                	add    %al,(%rax)
  406d90:	75 6e                	jne    406e00 <ONE+0x10>
  406d92:	72 6f                	jb     406e03 <ONE+0x13>
  406d94:	6c                   	insb   (%dx),%es:(%rdi)
  406d95:	6c                   	insb   (%dx),%es:(%rdi)
  406d96:	65 64 5f             	gs fs pop %rdi
  406d99:	34 30                	xor    $0x30,%al
  406d9b:	2c 20                	sub    $0x20,%al
  406d9d:	00 00                	add    %al,(%rax)
  406d9f:	00 67 65             	add    %ah,0x65(%rdi)
  406da2:	6e                   	outsb  %ds:(%rsi),(%dx)
  406da3:	65 72 61             	gs jb  406e07 <ONE+0x17>
  406da6:	6c                   	insb   (%dx),%es:(%rdi)
  406da7:	5f                   	pop    %rdi
  406da8:	38 2c 20             	cmp    %ch,(%rax,%riz,1)
  406dab:	00 67 65             	add    %ah,0x65(%rdi)
  406dae:	6e                   	outsb  %ds:(%rsi),(%dx)
  406daf:	65 72 61             	gs jb  406e13 <ONE+0x23>
  406db2:	6c                   	insb   (%dx),%es:(%rdi)
  406db3:	5f                   	pop    %rdi
  406db4:	34 30                	xor    $0x30,%al
  406db6:	2c 20                	sub    $0x20,%al
  406db8:	00 00                	add    %al,(%rax)
  406dba:	00 00                	add    %al,(%rax)
  406dbc:	4f 75 74             	rex.WRXB jne 406e33 <ONE+0x43>
  406dbf:	20 6f 66             	and    %ch,0x66(%rdi)
  406dc2:	20 62 6f             	and    %ah,0x6f(%rdx)
  406dc5:	75 6e                	jne    406e35 <ONE+0x45>
  406dc7:	64 73 20             	fs jae 406dea <MASK+0xa>
  406dca:	6d                   	insl   (%dx),%es:(%rdi)
  406dcb:	61                   	(bad)  
  406dcc:	74 72                	je     406e40 <ONE+0x50>
  406dce:	69 78 20 72 65 61 64 	imul   $0x64616572,0x20(%rax),%edi
	...

0000000000406de0 <MASK>:
  406de0:	ff                   	(bad)  
  406de1:	ff                   	(bad)  
  406de2:	ff                   	(bad)  
  406de3:	ff                   	(bad)  
  406de4:	ff                   	(bad)  
  406de5:	ff                   	(bad)  
  406de6:	ff                   	(bad)  
  406de7:	7f 00                	jg     406de9 <MASK+0x9>
  406de9:	00 00                	add    %al,(%rax)
  406deb:	00 00                	add    %al,(%rax)
  406ded:	00 00                	add    %al,(%rax)
	...

0000000000406df0 <ONE>:
  406df0:	00 00                	add    %al,(%rax)
  406df2:	00 00                	add    %al,(%rax)
  406df4:	00 00                	add    %al,(%rax)
  406df6:	f0 3f                	lock (bad) 
	...
  406e00:	47                   	rex.RXB
  406e01:	45                   	rex.RB
  406e02:	4e                   	rex.WRX
  406e03:	45 52                	rex.RB push %r10
  406e05:	49                   	rex.WB
  406e06:	43 5f                	rex.XB pop %r15
  406e08:	49                   	rex.WB
  406e09:	41 33 32             	xor    (%r10),%esi
  406e0c:	00 00                	add    %al,(%rax)
  406e0e:	00 00                	add    %al,(%rax)
  406e10:	58                   	pop    %rax
  406e11:	38 37                	cmp    %dh,(%rdi)
  406e13:	00 43 4d             	add    %al,0x4d(%rbx)
  406e16:	4f 56                	rex.WRXB push %r14
  406e18:	00 00                	add    %al,(%rax)
  406e1a:	00 00                	add    %al,(%rax)
  406e1c:	4d                   	rex.WRB
  406e1d:	4d 58                	rex.WRB pop %r8
  406e1f:	00 46 58             	add    %al,0x58(%rsi)
  406e22:	53                   	push   %rbx
  406e23:	41 56                	push   %r14
  406e25:	45 00 00             	add    %r8b,(%r8)
  406e28:	53                   	push   %rbx
  406e29:	53                   	push   %rbx
  406e2a:	45 00 53 53          	add    %r10b,0x53(%r11)
  406e2e:	45 32 00             	xor    (%r8),%r8b
  406e31:	00 00                	add    %al,(%rax)
  406e33:	00 53 53             	add    %dl,0x53(%rbx)
  406e36:	45 33 00             	xor    (%r8),%r8d
  406e39:	00 00                	add    %al,(%rax)
  406e3b:	00 53 53             	add    %dl,0x53(%rbx)
  406e3e:	53                   	push   %rbx
  406e3f:	45 33 00             	xor    (%r8),%r8d
  406e42:	00 00                	add    %al,(%rax)
  406e44:	53                   	push   %rbx
  406e45:	53                   	push   %rbx
  406e46:	45 34 5f             	rex.RB xor $0x5f,%al
  406e49:	31 00                	xor    %eax,(%rax)
  406e4b:	00 53 53             	add    %dl,0x53(%rbx)
  406e4e:	45 34 5f             	rex.RB xor $0x5f,%al
  406e51:	32 00                	xor    (%rax),%al
  406e53:	00 4d 4f             	add    %cl,0x4f(%rbp)
  406e56:	56                   	push   %rsi
  406e57:	42                   	rex.X
  406e58:	45 00 00             	add    %r8b,(%r8)
  406e5b:	00 50 4f             	add    %dl,0x4f(%rax)
  406e5e:	50                   	push   %rax
  406e5f:	43                   	rex.XB
  406e60:	4e 54                	rex.WRX push %rsp
  406e62:	00 00                	add    %al,(%rax)
  406e64:	50                   	push   %rax
  406e65:	43                   	rex.XB
  406e66:	4c                   	rex.WR
  406e67:	4d 55                	rex.WRB push %r13
  406e69:	4c 51                	rex.WR push %rcx
  406e6b:	44 51                	rex.R push %rcx
  406e6d:	00 00                	add    %al,(%rax)
  406e6f:	00 41 45             	add    %al,0x45(%rcx)
  406e72:	53                   	push   %rbx
  406e73:	00 46 31             	add    %al,0x31(%rsi)
  406e76:	36 43 00 00          	rex.XB add %al,%ss:(%r8)
  406e7a:	00 00                	add    %al,(%rax)
  406e7c:	41 56                	push   %r14
  406e7e:	58                   	pop    %rax
  406e7f:	00 52 44             	add    %dl,0x44(%rdx)
  406e82:	52                   	push   %rdx
  406e83:	4e                   	rex.WRX
  406e84:	44 00 00             	add    %r8b,(%rax)
  406e87:	00 46 4d             	add    %al,0x4d(%rsi)
  406e8a:	41 00 42 4d          	add    %al,0x4d(%r10)
  406e8e:	49 00 4c 5a 43       	rex.WB add %cl,0x43(%r10,%rbx,2)
  406e93:	4e 54                	rex.WRX push %rsp
  406e95:	00 00                	add    %al,(%rax)
  406e97:	00 48 4c             	add    %cl,0x4c(%rax)
  406e9a:	45 00 52 54          	add    %r10b,0x54(%r10)
  406e9e:	4d 00 41 56          	rex.WRB add %r8b,0x56(%r9)
  406ea2:	58                   	pop    %rax
  406ea3:	32 00                	xor    (%rax),%al
  406ea5:	00 00                	add    %al,(%rax)
  406ea7:	00 41 56             	add    %al,0x56(%rcx)
  406eaa:	58                   	pop    %rax
  406eab:	35 31 32 44 51       	xor    $0x51443231,%eax
  406eb0:	00 00                	add    %al,(%rax)
  406eb2:	00 00                	add    %al,(%rax)
  406eb4:	4b                   	rex.WXB
  406eb5:	4e                   	rex.WRX
  406eb6:	43                   	rex.XB
  406eb7:	4e                   	rex.WRX
  406eb8:	49 00 00             	rex.WB add %al,(%r8)
  406ebb:	00 41 56             	add    %al,0x56(%rcx)
  406ebe:	58                   	pop    %rax
  406ebf:	35 31 32 46 00       	xor    $0x463231,%eax
  406ec4:	41                   	rex.B
  406ec5:	44 58                	rex.R pop %rax
  406ec7:	00 52 44             	add    %dl,0x44(%rdx)
  406eca:	53                   	push   %rbx
  406ecb:	45                   	rex.RB
  406ecc:	45                   	rex.RB
  406ecd:	44 00 00             	add    %r8b,(%rax)
  406ed0:	41 56                	push   %r14
  406ed2:	58                   	pop    %rax
  406ed3:	35 31 32 49 46       	xor    $0x46493231,%eax
  406ed8:	4d                   	rex.WRB
  406ed9:	41 35 32 00 00 00    	rex.B xor $0x32,%eax
  406edf:	00 46 55             	add    %al,0x55(%rsi)
  406ee2:	4c                   	rex.WR
  406ee3:	4c 59                	rex.WR pop %rcx
  406ee5:	20 49 4e             	and    %cl,0x4e(%rcx)
  406ee8:	4f 52                	rex.WRXB push %r10
  406eea:	44                   	rex.R
  406eeb:	45 52                	rex.RB push %r10
  406eed:	20 50 52             	and    %dl,0x52(%rax)
  406ef0:	4f                   	rex.WRXB
  406ef1:	43                   	rex.XB
  406ef2:	45 53                	rex.RB push %r11
  406ef4:	53                   	push   %rbx
  406ef5:	4f 52                	rex.WRXB push %r10
  406ef7:	00 41 56             	add    %al,0x56(%rcx)
  406efa:	58                   	pop    %rax
  406efb:	35 31 32 45 52       	xor    $0x52453231,%eax
  406f00:	00 00                	add    %al,(%rax)
  406f02:	00 00                	add    %al,(%rax)
  406f04:	41 56                	push   %r14
  406f06:	58                   	pop    %rax
  406f07:	35 31 32 50 46       	xor    $0x46503231,%eax
  406f0c:	00 00                	add    %al,(%rax)
  406f0e:	00 00                	add    %al,(%rax)
  406f10:	41 56                	push   %r14
  406f12:	58                   	pop    %rax
  406f13:	35 31 32 43 44       	xor    $0x44433231,%eax
  406f18:	00 00                	add    %al,(%rax)
  406f1a:	00 00                	add    %al,(%rax)
  406f1c:	53                   	push   %rbx
  406f1d:	48                   	rex.W
  406f1e:	41 00 4d 50          	add    %cl,0x50(%r13)
  406f22:	58                   	pop    %rax
  406f23:	00 41 56             	add    %al,0x56(%rcx)
  406f26:	58                   	pop    %rax
  406f27:	35 31 32 42 57       	xor    $0x57423231,%eax
  406f2c:	00 00                	add    %al,(%rax)
  406f2e:	00 00                	add    %al,(%rax)
  406f30:	41 56                	push   %r14
  406f32:	58                   	pop    %rax
  406f33:	35 31 32 56 4c       	xor    $0x4c563231,%eax
  406f38:	00 00                	add    %al,(%rax)
  406f3a:	00 00                	add    %al,(%rax)
  406f3c:	41 56                	push   %r14
  406f3e:	58                   	pop    %rax
  406f3f:	35 31 32 56 42       	xor    $0x42563231,%eax
  406f44:	4d                   	rex.WRB
  406f45:	49 00 00             	rex.WB add %al,(%r8)
  406f48:	41 56                	push   %r14
  406f4a:	58                   	pop    %rax
  406f4b:	35 31 32 5f 34       	xor    $0x345f3231,%eax
  406f50:	46                   	rex.RX
  406f51:	4d                   	rex.WRB
  406f52:	41 50                	push   %r8
  406f54:	53                   	push   %rbx
  406f55:	00 00                	add    %al,(%rax)
  406f57:	00 41 56             	add    %al,0x56(%rcx)
  406f5a:	58                   	pop    %rax
  406f5b:	35 31 32 5f 34       	xor    $0x345f3231,%eax
  406f60:	56                   	push   %rsi
  406f61:	4e                   	rex.WRX
  406f62:	4e                   	rex.WRX
  406f63:	49 57                	rex.WB push %r15
  406f65:	00 00                	add    %al,(%rax)
  406f67:	00 41 56             	add    %al,0x56(%rcx)
  406f6a:	58                   	pop    %rax
  406f6b:	35 31 32 5f 56       	xor    $0x565f3231,%eax
  406f70:	50                   	push   %rax
  406f71:	4f 50                	rex.WRXB push %r8
  406f73:	43                   	rex.XB
  406f74:	4e 54                	rex.WRX push %rsp
  406f76:	44 51                	rex.R push %rcx
  406f78:	00 00                	add    %al,(%rax)
  406f7a:	00 00                	add    %al,(%rax)
  406f7c:	2c 20                	sub    $0x20,%al
  406f7e:	00 00                	add    %al,(%rax)
  406f80:	69 72 63 5f 6d 73 67 	imul   $0x67736d5f,0x63(%rdx),%esi
  406f87:	2e 63 61 74          	movslq %cs:0x74(%rcx),%esp
  406f8b:	00 43 6f             	add    %al,0x6f(%rbx)
  406f8e:	6e                   	outsb  %ds:(%rsi),(%dx)
  406f8f:	73 74                	jae    407005 <ONE+0x215>
  406f91:	61                   	(bad)  
  406f92:	6e                   	outsb  %ds:(%rsi),(%dx)
  406f93:	74 20                	je     406fb5 <ONE+0x1c5>
  406f95:	70 72                	jo     407009 <ONE+0x219>
  406f97:	6f                   	outsl  %ds:(%rsi),(%dx)
  406f98:	70 61                	jo     406ffb <ONE+0x20b>
  406f9a:	67 61                	addr32 (bad) 
  406f9c:	74 69                	je     407007 <ONE+0x217>
  406f9e:	6f                   	outsl  %ds:(%rsi),(%dx)
  406f9f:	6e                   	outsb  %ds:(%rsi),(%dx)
  406fa0:	20 65 72             	and    %ah,0x72(%rbp)
  406fa3:	72 6f                	jb     407014 <ONE+0x224>
  406fa5:	72 20                	jb     406fc7 <ONE+0x1d7>
  406fa7:	28 25 73 20 73 75    	sub    %ah,0x75732073(%rip)        # 75b39020 <_end+0x7552e810>
  406fad:	62 73 74 69 74       	(bad)  {%k1}
  406fb2:	75 74                	jne    407028 <ONE+0x238>
  406fb4:	69 6f 6e 29 3a 00 00 	imul   $0x3a29,0x6e(%rdi),%ebp
  406fbb:	00 46 4f             	add    %al,0x4f(%rsi)
  406fbe:	52                   	push   %rdx
  406fbf:	4d                   	rex.WRB
  406fc0:	41                   	rex.B
  406fc1:	4c 00 00             	rex.WR add %r8b,(%rax)
  406fc4:	52                   	push   %rdx
  406fc5:	45 54                	rex.RB push %r12
  406fc7:	55                   	push   %rbp
  406fc8:	52                   	push   %rdx
  406fc9:	4e 00 00             	rex.WRX add %r8b,(%rax)
  406fcc:	47                   	rex.RXB
  406fcd:	4c                   	rex.WR
  406fce:	4f                   	rex.WRXB
  406fcf:	42                   	rex.X
  406fd0:	41                   	rex.B
  406fd1:	4c 00 00             	rex.WR add %r8b,(%rax)
  406fd4:	09 49 33             	or     %ecx,0x33(%rcx)
  406fd7:	32 20                	xor    (%rax),%ah
  406fd9:	25 6c 78 20 21       	and    $0x2120786c,%eax
  406fde:	3d 20 25 6c 78       	cmp    $0x786c2520,%eax
  406fe3:	00 09                	add    %cl,(%rcx)
  406fe5:	53                   	push   %rbx
  406fe6:	49 33 32             	xor    (%r10),%rsi
  406fe9:	20 25 6c 64 20 21    	and    %ah,0x2120646c(%rip)        # 2160d45b <_end+0x21002c4b>
  406fef:	3d 20 25 6c 64       	cmp    $0x646c2520,%eax
  406ff4:	00 00                	add    %al,(%rax)
  406ff6:	00 00                	add    %al,(%rax)
  406ff8:	09 46 33             	or     %eax,0x33(%rsi)
  406ffb:	32 20                	xor    (%rax),%ah
  406ffd:	25 66 20 21 3d       	and    $0x3d212066,%eax
  407002:	20 25 66 00 00 00    	and    %ah,0x66(%rip)        # 40706e <ONE+0x27e>
  407008:	09 49 36             	or     %ecx,0x36(%rcx)
  40700b:	34 20                	xor    $0x20,%al
  40700d:	25 6c 78 3a 25       	and    $0x253a786c,%eax
  407012:	6c                   	insb   (%dx),%es:(%rdi)
  407013:	78 20                	js     407035 <ONE+0x245>
  407015:	21 3d 20 25 6c 78    	and    %edi,0x786c2520(%rip)        # 78ac953b <_end+0x784bed2b>
  40701b:	3a 25 6c 78 00 09    	cmp    0x900786c(%rip),%ah        # 940e88d <_end+0x8e0407d>
  407021:	53                   	push   %rbx
  407022:	49                   	rex.WB
  407023:	36 34 20             	ss xor $0x20,%al
  407026:	25 6c 64 3a 25       	and    $0x253a646c,%eax
  40702b:	6c                   	insb   (%dx),%es:(%rdi)
  40702c:	64 20 21             	and    %ah,%fs:(%rcx)
  40702f:	3d 20 25 6c 64       	cmp    $0x646c2520,%eax
  407034:	3a 25 6c 64 00 00    	cmp    0x646c(%rip),%ah        # 40d4a6 <_ZNK11DenseMatrix3getEii$$LSDA+0x4bda>
  40703a:	00 00                	add    %al,(%rax)
  40703c:	09 46 36             	or     %eax,0x36(%rsi)
  40703f:	34 20                	xor    $0x20,%al
  407041:	25 66 20 21 3d       	and    $0x3d212066,%eax
  407046:	20 25 66 00 00 00    	and    %ah,0x66(%rip)        # 4070b2 <ONE+0x2c2>
  40704c:	42 61                	rex.X (bad) 
  40704e:	64 20 73 65          	and    %dh,%fs:0x65(%rbx)
  407052:	63 6f 6e             	movslq 0x6e(%rdi),%ebp
  407055:	64 20 61 72          	and    %ah,%fs:0x72(%rcx)
  407059:	67 75 6d             	addr32 jne 4070c9 <ONE+0x2d9>
  40705c:	65 6e                	outsb  %gs:(%rsi),(%dx)
  40705e:	74 00                	je     407060 <ONE+0x270>
  407060:	46 61                	rex.RX (bad) 
  407062:	74 61                	je     4070c5 <ONE+0x2d5>
  407064:	6c                   	insb   (%dx),%es:(%rdi)
  407065:	20 45 72             	and    %al,0x72(%rbp)
  407068:	72 6f                	jb     4070d9 <ONE+0x2e9>
  40706a:	72 3a                	jb     4070a6 <ONE+0x2b6>
  40706c:	20 43 61             	and    %al,0x61(%rbx)
  40706f:	6e                   	outsb  %ds:(%rsi),(%dx)
  407070:	20 6e 6f             	and    %ch,0x6f(%rsi)
  407073:	74 20                	je     407095 <ONE+0x2a5>
  407075:	69 6e 69 74 69 61 74 	imul   $0x74616974,0x69(%rsi),%ebp
  40707c:	65 20 74 68 65       	and    %dh,%gs:0x65(%rax,%rbp,2)
  407081:	20 48 65             	and    %cl,0x65(%rax)
  407084:	61                   	(bad)  
  407085:	70 00                	jo     407087 <ONE+0x297>
  407087:	00 55 73             	add    %dl,0x73(%rbp)
  40708a:	61                   	(bad)  
  40708b:	67 65 3a 20          	cmp    %gs:(%eax),%ah
  40708f:	25 73 20 69 6e       	and    $0x6e692073,%eax
  407094:	70 75                	jo     40710b <ONE+0x31b>
  407096:	74 5f                	je     4070f7 <ONE+0x307>
  407098:	66 69 6c 65 20 6f 75 	imul   $0x756f,0x20(%rbp,%riz,2),%bp
  40709f:	74 70                	je     407111 <ONE+0x321>
  4070a1:	75 74                	jne    407117 <ONE+0x327>
  4070a3:	5f                   	pop    %rdi
  4070a4:	66 69 6c 65 00 00 00 	imul   $0x0,0x0(%rbp,%riz,2),%bp
  4070ab:	00 55 73             	add    %dl,0x73(%rbp)
  4070ae:	61                   	(bad)  
  4070af:	67 65 3a 20          	cmp    %gs:(%eax),%ah
  4070b3:	25 73 20 73 65       	and    $0x65732073,%eax
  4070b8:	67 6d                	insl   (%dx),%es:(%edi)
  4070ba:	65 6e                	outsb  %gs:(%rsi),(%dx)
  4070bc:	74 5f                	je     40711d <ONE+0x32d>
  4070be:	73 69                	jae    407129 <ONE+0x339>
  4070c0:	7a 65                	jp     407127 <ONE+0x337>
  4070c2:	20 69 6e             	and    %ch,0x6e(%rcx)
  4070c5:	70 75                	jo     40713c <ONE+0x34c>
  4070c7:	74 5f                	je     407128 <ONE+0x338>
  4070c9:	66 69 6c 65 20 5b 2d 	imul   $0x2d5b,0x20(%rbp,%riz,2),%bp
  4070d0:	74 72                	je     407144 <ONE+0x354>
  4070d2:	61                   	(bad)  
  4070d3:	63 65 5d             	movslq 0x5d(%rbp),%esp
  4070d6:	00 00                	add    %al,(%rax)
  4070d8:	43 6f                	rex.XB outsl %ds:(%rsi),(%dx)
  4070da:	6e                   	outsb  %ds:(%rsi),(%dx)
  4070db:	76 65                	jbe    407142 <ONE+0x352>
  4070dd:	72 73                	jb     407152 <ONE+0x362>
  4070df:	69 6f 6e 20 66 72 6f 	imul   $0x6f726620,0x6e(%rdi),%ebp
  4070e6:	6d                   	insl   (%dx),%es:(%rdi)
  4070e7:	20 74 65 78          	and    %dh,0x78(%rbp,%riz,2)
  4070eb:	74 20                	je     40710d <ONE+0x31d>
  4070ed:	66 69 6c 65 20 25 73 	imul   $0x7325,0x20(%rbp,%riz,2),%bp
  4070f4:	20 74 6f 20          	and    %dh,0x20(%rdi,%rbp,2)
  4070f8:	62                   	(bad)  {%k1}
  4070f9:	69 6e 61 72 79 20 25 	imul   $0x25207972,0x61(%rsi),%ebp
  407100:	73 20                	jae    407122 <ONE+0x332>
  407102:	63 6f 6d             	movslq 0x6d(%rdi),%ebp
  407105:	70 6c                	jo     407173 <ONE+0x383>
  407107:	65 74 65             	gs je  40716f <ONE+0x37f>
  40710a:	64 00 73 65          	add    %dh,%fs:0x65(%rbx)
  40710e:	67 6d                	insl   (%dx),%es:(%edi)
  407110:	65 6e                	outsb  %gs:(%rsi),(%dx)
  407112:	74 5f                	je     407173 <ONE+0x383>
  407114:	73 69                	jae    40717f <ONE+0x38f>
  407116:	7a 65                	jp     40717d <ONE+0x38d>
  407118:	20 3d 20 30 78 25    	and    %bh,0x25783020(%rip)        # 25b8a13e <_end+0x2557f92e>
  40711e:	78 20                	js     407140 <ONE+0x350>
  407120:	3d 20 25 64 00       	cmp    $0x642520,%eax
  407125:	00 00                	add    %al,(%rax)
  407127:	00 43 61             	add    %al,0x61(%rbx)
  40712a:	6e                   	outsb  %ds:(%rsi),(%dx)
  40712b:	6e                   	outsb  %ds:(%rsi),(%dx)
  40712c:	6f                   	outsl  %ds:(%rsi),(%dx)
  40712d:	74 20                	je     40714f <ONE+0x35f>
  40712f:	61                   	(bad)  
  407130:	6c                   	insb   (%dx),%es:(%rdi)
  407131:	6c                   	insb   (%dx),%es:(%rdi)
  407132:	6f                   	outsl  %ds:(%rsi),(%dx)
  407133:	63 61 74             	movslq 0x74(%rcx),%esp
  407136:	65 20 6d 65          	and    %ch,%gs:0x65(%rbp)
  40713a:	6d                   	insl   (%dx),%es:(%rdi)
  40713b:	6f                   	outsl  %ds:(%rsi),(%dx)
  40713c:	72 79                	jb     4071b7 <ONE+0x3c7>
  40713e:	20 74 6f 20          	and    %dh,0x20(%rdi,%rbp,2)
  407142:	68 6f 6c 64 20       	pushq  $0x20646c6f
  407147:	73 65                	jae    4071ae <ONE+0x3be>
  407149:	67 6d                	insl   (%dx),%es:(%edi)
  40714b:	65 6e                	outsb  %gs:(%rsi),(%dx)
  40714d:	74 20                	je     40716f <ONE+0x37f>
  40714f:	28 73 69             	sub    %dh,0x69(%rbx)
  407152:	7a 65                	jp     4071b9 <ONE+0x3c9>
  407154:	20 3d 20 30 78 25    	and    %bh,0x25783020(%rip)        # 25b8a17a <_end+0x2557f96a>
  40715a:	78 29                	js     407185 <ONE+0x395>
  40715c:	00 00                	add    %al,(%rax)
  40715e:	00 00                	add    %al,(%rax)
  407160:	49 6e                	rex.WB outsb %ds:(%rsi),(%dx)
  407162:	70 75                	jo     4071d9 <ONE+0x3e9>
  407164:	74 20                	je     407186 <ONE+0x396>
  407166:	66 69 6c 65 3a 20 25 	imul   $0x2520,0x3a(%rbp,%riz,2),%bp
  40716d:	73 20                	jae    40718f <ONE+0x39f>
  40716f:	63 6f 72             	movslq 0x72(%rdi),%ebp
  407172:	72 75                	jb     4071e9 <ONE+0x3f9>
  407174:	70 74                	jo     4071ea <ONE+0x3fa>
  407176:	65 64 00 00          	gs add %al,%fs:(%rax)
  40717a:	00 00                	add    %al,(%rax)
  40717c:	72 6f                	jb     4071ed <ONE+0x3fd>
  40717e:	75 74                	jne    4071f4 <ONE+0x404>
  407180:	69 6e 65 5f 6e 61 6d 	imul   $0x6d616e5f,0x65(%rsi),%ebp
  407187:	65 20 3d 20 27 25 73 	and    %bh,%gs:0x73252720(%rip)        # 736598ae <_end+0x7304f09e>
  40718e:	27                   	(bad)  
  40718f:	00 66 69             	add    %ah,0x69(%rsi)
  407192:	6c                   	insb   (%dx),%es:(%rdi)
  407193:	65 5f                	gs pop %rdi
  407195:	6e                   	outsb  %ds:(%rsi),(%dx)
  407196:	61                   	(bad)  
  407197:	6d                   	insl   (%dx),%es:(%rdi)
  407198:	65 20 20             	and    %ah,%gs:(%rax)
  40719b:	20 20                	and    %ah,(%rax)
  40719d:	3d 20 27 25 73       	cmp    $0x73252720,%eax
  4071a2:	27                   	(bad)  
  4071a3:	00 70 72             	add    %dh,0x72(%rax)
  4071a6:	6f                   	outsl  %ds:(%rsi),(%dx)
  4071a7:	66 5f                	pop    %di
  4071a9:	64 69 72 20 20 20 20 	imul   $0x20202020,%fs:0x20(%rdx),%esi
  4071b0:	20 
  4071b1:	3d 20 27 25 73       	cmp    $0x73252720,%eax
  4071b6:	27                   	(bad)  
  4071b7:	00 44 79 6e          	add    %al,0x6e(%rcx,%rdi,2)
  4071bb:	61                   	(bad)  
  4071bc:	6d                   	insl   (%dx),%es:(%rdi)
  4071bd:	69 63 20 70 72 6f 66 	imul   $0x666f7270,0x20(%rbx),%esp
  4071c4:	69 6c 65 20 63 72 65 	imul   $0x61657263,0x20(%rbp,%riz,2),%ebp
  4071cb:	61 
  4071cc:	74 65                	je     407233 <ONE+0x443>
  4071ce:	64 20 66 72          	and    %ah,%fs:0x72(%rsi)
  4071d2:	6f                   	outsl  %ds:(%rsi),(%dx)
  4071d3:	6d                   	insl   (%dx),%es:(%rdi)
  4071d4:	20 66 69             	and    %ah,0x69(%rsi)
  4071d7:	6c                   	insb   (%dx),%es:(%rdi)
  4071d8:	65 20 25 73 20 63 6f 	and    %ah,%gs:0x6f632073(%rip)        # 6fa39252 <_end+0x6f42ea42>
  4071df:	6d                   	insl   (%dx),%es:(%rdi)
  4071e0:	70 6c                	jo     40724e <ONE+0x45e>
  4071e2:	65 74 65             	gs je  40724a <ONE+0x45a>
  4071e5:	64 00 00             	add    %al,%fs:(%rax)
  4071e8:	54                   	push   %rsp
  4071e9:	68 65 20 61 6c       	pushq  $0x6c612065
  4071ee:	6c                   	insb   (%dx),%es:(%rdi)
  4071ef:	6f                   	outsl  %ds:(%rsi),(%dx)
  4071f0:	77 65                	ja     407257 <ONE+0x467>
  4071f2:	64 20 70 72          	and    %dh,%fs:0x72(%rax)
  4071f6:	6f                   	outsl  %ds:(%rsi),(%dx)
  4071f7:	63 65 73             	movslq 0x73(%rbp),%esp
  4071fa:	73 6f                	jae    40726b <ONE+0x47b>
  4071fc:	72 73                	jb     407271 <ONE+0x481>
  4071fe:	20 61 72             	and    %ah,0x72(%rcx)
  407201:	65 3a 20             	cmp    %gs:(%rax),%ah
  407204:	25 73 2e 00 45       	and    $0x45002e73,%eax
  407209:	72 72                	jb     40727d <ONE+0x48d>
  40720b:	6f                   	outsl  %ds:(%rsi),(%dx)
  40720c:	72 3a                	jb     407248 <ONE+0x458>
  40720e:	20 20                	and    %ah,(%rax)
  407210:	42 75 66             	rex.X jne 407279 <ONE+0x489>
  407213:	66 65 72 20          	data16 gs jb 407237 <ONE+0x447>
  407217:	6f                   	outsl  %ds:(%rsi),(%dx)
  407218:	76 65                	jbe    40727f <ONE+0x48f>
  40721a:	72 72                	jb     40728e <ONE+0x49e>
  40721c:	75 6e                	jne    40728c <ONE+0x49c>
  40721e:	20 6f 63             	and    %ch,0x63(%rdi)
  407221:	63 75 72             	movslq 0x72(%rbp),%esi
  407224:	72 65                	jb     40728b <ONE+0x49b>
  407226:	64 2c 20             	fs sub $0x20,%al
  407229:	66 6f                	outsw  %ds:(%rsi),(%dx)
  40722b:	72 63                	jb     407290 <ONE+0x4a0>
  40722d:	65 64 20 65 78       	gs and %ah,%fs:0x78(%rbp)
  407232:	69 74 00 00 00 00 49 	imul   $0x6e490000,0x0(%rax,%rax,1),%esi
  407239:	6e 
  40723a:	69 74 69 61 6c 69 7a 	imul   $0x617a696c,0x61(%rcx,%rbp,2),%esi
  407241:	61 
  407242:	74 69                	je     4072ad <ONE+0x4bd>
  407244:	6f                   	outsl  %ds:(%rsi),(%dx)
  407245:	6e                   	outsb  %ds:(%rsi),(%dx)
  407246:	20 6f 66             	and    %ch,0x66(%rdi)
  407249:	20 73 79             	and    %dh,0x79(%rbx)
  40724c:	6d                   	insl   (%dx),%es:(%rdi)
  40724d:	62                   	(bad)  {%k1}
  40724e:	6f                   	outsl  %ds:(%rsi),(%dx)
  40724f:	6c                   	insb   (%dx),%es:(%rdi)
  407250:	20 68 61             	and    %ch,0x61(%rax)
  407253:	6e                   	outsb  %ds:(%rsi),(%dx)
  407254:	64 6c                	fs insb (%dx),%es:(%rdi)
  407256:	65 72 20             	gs jb  407279 <ONE+0x489>
  407259:	66 61                	data16 (bad) 
  40725b:	69 6c 65 64 2e 20 45 	imul   $0x7245202e,0x64(%rbp,%riz,2),%ebp
  407262:	72 
  407263:	72 6f                	jb     4072d4 <ONE+0x4e4>
  407265:	72 20                	jb     407287 <ONE+0x497>
  407267:	63 6f 64             	movslq 0x64(%rdi),%ebp
  40726a:	65 20 25 64 00 00 4e 	and    %ah,%gs:0x4e000064(%rip)        # 4e4072d5 <_end+0x4ddfcac5>
  407271:	54                   	push   %rsp
  407272:	44                   	rex.R
  407273:	4c                   	rex.WR
  407274:	4c 20 6d 6f          	rex.WR and %r13b,0x6f(%rbp)
  407278:	64 75 6c             	fs jne 4072e7 <ONE+0x4f7>
  40727b:	65 20 6e 6f          	and    %ch,%gs:0x6f(%rsi)
  40727f:	74 20                	je     4072a1 <ONE+0x4b1>
  407281:	66 6f                	outsw  %ds:(%rsi),(%dx)
  407283:	75 6e                	jne    4072f3 <ONE+0x503>
  407285:	64 00 00             	add    %al,%fs:(%rax)
  407288:	52                   	push   %rdx
  407289:	74 6c                	je     4072f7 <ONE+0x507>
  40728b:	43 61                	rex.XB (bad) 
  40728d:	70 74                	jo     407303 <ONE+0x513>
  40728f:	75 72                	jne    407303 <ONE+0x513>
  407291:	65 43 6f             	rex.XB outsl %gs:(%rsi),(%dx)
  407294:	6e                   	outsb  %ds:(%rsi),(%dx)
  407295:	74 65                	je     4072fc <ONE+0x50c>
  407297:	78 74                	js     40730d <ONE+0x51d>
  407299:	20 66 75             	and    %ah,0x75(%rsi)
  40729c:	6e                   	outsb  %ds:(%rsi),(%dx)
  40729d:	63 74 69 6f          	movslq 0x6f(%rcx,%rbp,2),%esi
  4072a1:	6e                   	outsb  %ds:(%rsi),(%dx)
  4072a2:	20 6e 6f             	and    %ch,0x6f(%rsi)
  4072a5:	74 20                	je     4072c7 <ONE+0x4d7>
  4072a7:	66 6f                	outsw  %ds:(%rsi),(%dx)
  4072a9:	75 6e                	jne    407319 <ONE+0x529>
  4072ab:	64 20 69 6e          	and    %ch,%fs:0x6e(%rcx)
  4072af:	20 6e 74             	and    %ch,0x74(%rsi)
  4072b2:	64 6c                	fs insb (%dx),%es:(%rdi)
  4072b4:	6c                   	insb   (%dx),%es:(%rdi)
  4072b5:	2e 64 6c             	cs fs insb (%dx),%es:(%rdi)
  4072b8:	6c                   	insb   (%dx),%es:(%rdi)
  4072b9:	00 00                	add    %al,(%rax)
  4072bb:	00 53 74             	add    %dl,0x74(%rbx)
  4072be:	61                   	(bad)  
  4072bf:	63 6b 57             	movslq 0x57(%rbx),%ebp
  4072c2:	61                   	(bad)  
  4072c3:	6c                   	insb   (%dx),%es:(%rdi)
  4072c4:	6b 20 69             	imul   $0x69,(%rax),%esp
  4072c7:	73 20                	jae    4072e9 <ONE+0x4f9>
  4072c9:	74 65                	je     407330 <ONE+0x540>
  4072cb:	72 6d                	jb     40733a <ONE+0x54a>
  4072cd:	69 6e 61 74 65 64 20 	imul   $0x20646574,0x61(%rsi),%ebp
  4072d4:	61                   	(bad)  
  4072d5:	62                   	(bad)  {%k1}
  4072d6:	6e                   	outsb  %ds:(%rsi),(%dx)
  4072d7:	6f                   	outsl  %ds:(%rsi),(%dx)
  4072d8:	72 6d                	jb     407347 <ONE+0x557>
  4072da:	61                   	(bad)  
  4072db:	6c                   	insb   (%dx),%es:(%rdi)
  4072dc:	6c                   	insb   (%dx),%es:(%rdi)
  4072dd:	79 2e                	jns    40730d <ONE+0x51d>
  4072df:	20 45 72             	and    %al,0x72(%rbp)
  4072e2:	72 6f                	jb     407353 <ONE+0x563>
  4072e4:	72 20                	jb     407306 <ONE+0x516>
  4072e6:	63 6f 64             	movslq 0x64(%rdi),%ebp
  4072e9:	65 20 25 64 00 00 00 	and    %ah,%gs:0x64(%rip)        # 407354 <ONE+0x564>
  4072f0:	45 78 63             	rex.RB js 407356 <ONE+0x566>
  4072f3:	65 70 74             	gs jo  40736a <ONE+0x57a>
  4072f6:	69 6f 6e 20 69 73 20 	imul   $0x20736920,0x6e(%rdi),%ebp
  4072fd:	72 61                	jb     407360 <ONE+0x570>
  4072ff:	69 73 65 64 20 64 75 	imul   $0x75642064,0x65(%rbx),%esi
  407306:	72 69                	jb     407371 <ONE+0x581>
  407308:	6e                   	outsb  %ds:(%rsi),(%dx)
  407309:	67 20 73 74          	and    %dh,0x74(%ebx)
  40730d:	61                   	(bad)  
  40730e:	63 6b 20             	movslq 0x20(%rbx),%ebp
  407311:	77 61                	ja     407374 <ONE+0x584>
  407313:	6c                   	insb   (%dx),%es:(%rdi)
  407314:	6b 69 6e 67          	imul   $0x67,0x6e(%rcx),%ebp
  407318:	00 00                	add    %al,(%rax)
  40731a:	00 00                	add    %al,(%rax)
  40731c:	53                   	push   %rbx
  40731d:	69 67 6e 61 6c 20 25 	imul   $0x25206c61,0x6e(%rdi),%esp
  407324:	73 20                	jae    407346 <ONE+0x556>
  407326:	69 73 20 72 61 69 73 	imul   $0x73696172,0x20(%rbx),%esi
  40732d:	65 64 00 53 69       	gs add %dl,%fs:0x69(%rbx)
  407332:	67 6e                	outsb  %ds:(%esi),(%dx)
  407334:	61                   	(bad)  
  407335:	6c                   	insb   (%dx),%es:(%rdi)
  407336:	20 25 73 20 69 73    	and    %ah,0x73692073(%rip)        # 73a993af <_end+0x7348eb9f>
  40733c:	20 72 61             	and    %dh,0x61(%rdx)
  40733f:	69 73 65 64 20 61 74 	imul   $0x74612064,0x65(%rbx),%esi
  407346:	20 30                	and    %dh,(%rax)
  407348:	78 25                	js     40736f <ONE+0x57f>
  40734a:	70 00                	jo     40734c <ONE+0x55c>
  40734c:	53                   	push   %rbx
  40734d:	49                   	rex.WB
  40734e:	47 53                	rex.RXB push %r11
  407350:	45                   	rex.RB
  407351:	47 56                	rex.RXB push %r14
  407353:	00 53 49             	add    %dl,0x49(%rbx)
  407356:	47                   	rex.RXB
  407357:	49                   	rex.WB
  407358:	4c                   	rex.WR
  407359:	4c 00 00             	rex.WR add %r8b,(%rax)
  40735c:	53                   	push   %rbx
  40735d:	49                   	rex.WB
  40735e:	47                   	rex.RXB
  40735f:	42 55                	rex.X push %rbp
  407361:	53                   	push   %rbx
  407362:	00 00                	add    %al,(%rax)
  407364:	53                   	push   %rbx
  407365:	49                   	rex.WB
  407366:	47                   	rex.RXB
  407367:	46 50                	rex.RX push %rax
  407369:	45 00 00             	add    %r8b,(%r8)
  40736c:	75 6e                	jne    4073dc <ONE+0x5ec>
  40736e:	6b 6e 6f 77          	imul   $0x77,0x6f(%rsi),%ebp
  407372:	6e                   	outsb  %ds:(%rsi),(%dx)
  407373:	00 4e 6f             	add    %cl,0x6f(%rsi)
  407376:	20 65 72             	and    %ah,0x72(%rbp)
  407379:	72 6f                	jb     4073ea <ONE+0x5fa>
  40737b:	72 00                	jb     40737d <ONE+0x58d>
  40737d:	00 00                	add    %al,(%rax)
  40737f:	00 59 6f             	add    %bl,0x6f(%rcx)
  407382:	75 20                	jne    4073a4 <ONE+0x5b4>
  407384:	6d                   	insl   (%dx),%es:(%rdi)
  407385:	75 73                	jne    4073fa <ONE+0x60a>
  407387:	74 20                	je     4073a9 <ONE+0x5b9>
  407389:	6c                   	insb   (%dx),%es:(%rdi)
  40738a:	69 6e 6b 20 77 69 74 	imul   $0x74697720,0x6b(%rsi),%ebp
  407391:	68 20 6c 69 62       	pushq  $0x62696c20
  407396:	75 6e                	jne    407406 <ONE+0x616>
  407398:	77 69                	ja     407403 <ONE+0x613>
  40739a:	6e                   	outsb  %ds:(%rsi),(%dx)
  40739b:	64 20 74 6f 20       	and    %dh,%fs:0x20(%rdi,%rbp,2)
  4073a0:	75 73                	jne    407415 <ONE+0x625>
  4073a2:	65 20 74 72 61       	and    %dh,%gs:0x61(%rdx,%rsi,2)
  4073a7:	63 65 62             	movslq 0x62(%rbp),%esp
  4073aa:	61                   	(bad)  
  4073ab:	63 6b 20             	movslq 0x20(%rbx),%ebp
  4073ae:	66 75 6e             	data16 jne 40741f <ONE+0x62f>
  4073b1:	63 74 69 6f          	movslq 0x6f(%rcx,%rbp,2),%esi
  4073b5:	6e                   	outsb  %ds:(%rsi),(%dx)
  4073b6:	61                   	(bad)  
  4073b7:	6c                   	insb   (%dx),%es:(%rdi)
  4073b8:	69 74 79 00 49 6e 74 	imul   $0x65746e49,0x0(%rcx,%rdi,2),%esi
  4073bf:	65 
  4073c0:	6c                   	insb   (%dx),%es:(%rdi)
  4073c1:	28 52 29             	sub    %dl,0x29(%rdx)
  4073c4:	20 50 65             	and    %dl,0x65(%rax)
  4073c7:	6e                   	outsb  %ds:(%rsi),(%dx)
  4073c8:	74 69                	je     407433 <ONE+0x643>
  4073ca:	75 6d                	jne    407439 <ONE+0x649>
  4073cc:	28 52 29             	sub    %dl,0x29(%rdx)
  4073cf:	20 4d 20             	and    %cl,0x20(%rbp)
  4073d2:	61                   	(bad)  
  4073d3:	6e                   	outsb  %ds:(%rsi),(%dx)
  4073d4:	64 20 63 6f          	and    %ah,%fs:0x6f(%rbx)
  4073d8:	6d                   	insl   (%dx),%es:(%rdi)
  4073d9:	70 61                	jo     40743c <ONE+0x64c>
  4073db:	74 69                	je     407446 <ONE+0x656>
  4073dd:	62                   	(bad)  {%k1}
  4073de:	6c                   	insb   (%dx),%es:(%rdi)
  4073df:	65 20 49 6e          	and    %cl,%gs:0x6e(%rcx)
  4073e3:	74 65                	je     40744a <ONE+0x65a>
  4073e5:	6c                   	insb   (%dx),%es:(%rdi)
  4073e6:	20 70 72             	and    %dh,0x72(%rax)
  4073e9:	6f                   	outsl  %ds:(%rsi),(%dx)
  4073ea:	63 65 73             	movslq 0x73(%rbp),%esp
  4073ed:	73 6f                	jae    40745e <ONE+0x66e>
  4073ef:	72 73                	jb     407464 <ONE+0x674>
  4073f1:	00 00                	add    %al,(%rax)
  4073f3:	00 49 6e             	add    %cl,0x6e(%rcx)
  4073f6:	74 65                	je     40745d <ONE+0x66d>
  4073f8:	6c                   	insb   (%dx),%es:(%rdi)
  4073f9:	28 52 29             	sub    %dl,0x29(%rdx)
  4073fc:	20 70 72             	and    %dh,0x72(%rax)
  4073ff:	6f                   	outsl  %ds:(%rsi),(%dx)
  407400:	63 65 73             	movslq 0x73(%rbp),%esp
  407403:	73 6f                	jae    407474 <ONE+0x684>
  407405:	72 73                	jb     40747a <ONE+0x68a>
  407407:	20 77 69             	and    %dh,0x69(%rdi)
  40740a:	74 68                	je     407474 <ONE+0x684>
  40740c:	20 53 77             	and    %dl,0x77(%rbx)
  40740f:	69 6e 67 20 4e 65 77 	imul   $0x77654e20,0x67(%rsi),%ebp
  407416:	20 49 6e             	and    %cl,0x6e(%rcx)
  407419:	73 74                	jae    40748f <ONE+0x69f>
  40741b:	72 75                	jb     407492 <ONE+0x6a2>
  40741d:	63 74 69 6f          	movslq 0x6f(%rcx,%rbp,2),%esi
  407421:	6e                   	outsb  %ds:(%rsi),(%dx)
  407422:	73 20                	jae    407444 <ONE+0x654>
  407424:	73 75                	jae    40749b <ONE+0x6ab>
  407426:	70 70                	jo     407498 <ONE+0x6a8>
  407428:	6f                   	outsl  %ds:(%rsi),(%dx)
  407429:	72 74                	jb     40749f <ONE+0x6af>
  40742b:	00 49 6e             	add    %cl,0x6e(%rcx)
  40742e:	74 65                	je     407495 <ONE+0x6a5>
  407430:	6c                   	insb   (%dx),%es:(%rdi)
  407431:	28 52 29             	sub    %dl,0x29(%rdx)
  407434:	20 70 72             	and    %dh,0x72(%rax)
  407437:	6f                   	outsl  %ds:(%rsi),(%dx)
  407438:	63 65 73             	movslq 0x73(%rbp),%esp
  40743b:	73 6f                	jae    4074ac <ONE+0x6bc>
  40743d:	72 73                	jb     4074b2 <ONE+0x6c2>
  40743f:	20 77 69             	and    %dh,0x69(%rdi)
  407442:	74 68                	je     4074ac <ONE+0x6bc>
  407444:	20 4d 4f             	and    %cl,0x4f(%rbp)
  407447:	56                   	push   %rsi
  407448:	42                   	rex.X
  407449:	45 20 69 6e          	and    %r13b,0x6e(%r9)
  40744d:	73 74                	jae    4074c3 <ONE+0x6d3>
  40744f:	72 75                	jb     4074c6 <ONE+0x6d6>
  407451:	63 74 69 6f          	movslq 0x6f(%rcx,%rbp,2),%esi
  407455:	6e                   	outsb  %ds:(%rsi),(%dx)
  407456:	73 20                	jae    407478 <ONE+0x688>
  407458:	73 75                	jae    4074cf <ONE+0x6df>
  40745a:	70 70                	jo     4074cc <ONE+0x6dc>
  40745c:	6f                   	outsl  %ds:(%rsi),(%dx)
  40745d:	72 74                	jb     4074d3 <ONE+0x6e3>
  40745f:	00 46 61             	add    %al,0x61(%rsi)
  407462:	74 61                	je     4074c5 <ONE+0x6d5>
  407464:	6c                   	insb   (%dx),%es:(%rdi)
  407465:	20 45 72             	and    %al,0x72(%rbp)
  407468:	72 6f                	jb     4074d9 <ONE+0x6e9>
  40746a:	72 3a                	jb     4074a6 <ONE+0x6b6>
  40746c:	20 54 68 69          	and    %dl,0x69(%rax,%rbp,2)
  407470:	73 20                	jae    407492 <ONE+0x6a2>
  407472:	70 72                	jo     4074e6 <ONE+0x6f6>
  407474:	6f                   	outsl  %ds:(%rsi),(%dx)
  407475:	67 72 61             	addr32 jb 4074d9 <ONE+0x6e9>
  407478:	6d                   	insl   (%dx),%es:(%rdi)
  407479:	20 77 61             	and    %dh,0x61(%rdi)
  40747c:	73 20                	jae    40749e <ONE+0x6ae>
  40747e:	6e                   	outsb  %ds:(%rsi),(%dx)
  40747f:	6f                   	outsl  %ds:(%rsi),(%dx)
  407480:	74 20                	je     4074a2 <ONE+0x6b2>
  407482:	62                   	(bad)  {%k1}
  407483:	75 69                	jne    4074ee <ONE+0x6fe>
  407485:	6c                   	insb   (%dx),%es:(%rdi)
  407486:	74 20                	je     4074a8 <ONE+0x6b8>
  407488:	74 6f                	je     4074f9 <ONE+0x709>
  40748a:	20 72 75             	and    %dh,0x75(%rdx)
  40748d:	6e                   	outsb  %ds:(%rsi),(%dx)
  40748e:	20 69 6e             	and    %ch,0x6e(%rcx)
  407491:	20 79 6f             	and    %bh,0x6f(%rcx)
  407494:	75 72                	jne    407508 <ONE+0x718>
  407496:	20 73 79             	and    %dh,0x79(%rbx)
  407499:	73 74                	jae    40750f <ONE+0x71f>
  40749b:	65 6d                	gs insl (%dx),%es:(%rdi)
  40749d:	2e 00 00             	add    %al,%cs:(%rax)
  4074a0:	42 6f                	rex.X outsl %ds:(%rsi),(%dx)
  4074a2:	75 6e                	jne    407512 <ONE+0x722>
  4074a4:	64 61                	fs (bad) 
  4074a6:	72 79                	jb     407521 <ONE+0x731>
  4074a8:	20 52 75             	and    %dl,0x75(%rdx)
  4074ab:	6e                   	outsb  %ds:(%rsi),(%dx)
  4074ac:	2d 54 69 6d 65       	sub    $0x656d6954,%eax
  4074b1:	20 43 68             	and    %al,0x68(%rbx)
  4074b4:	65 63 6b 20          	movslq %gs:0x20(%rbx),%ebp
  4074b8:	46 61                	rex.RX (bad) 
  4074ba:	69 6c 75 72 65 20 66 	imul   $0x6f662065,0x72(%rbp,%rsi,2),%ebp
  4074c1:	6f 
  4074c2:	72 20                	jb     4074e4 <ONE+0x6f4>
  4074c4:	76 61                	jbe    407527 <ONE+0x737>
  4074c6:	72 69                	jb     407531 <ONE+0x741>
  4074c8:	61                   	(bad)  
  4074c9:	62                   	(bad)  {%k1}
  4074ca:	6c                   	insb   (%dx),%es:(%rdi)
  4074cb:	65 20 27             	and    %ah,%gs:(%rdi)
  4074ce:	25 73 27 00 00       	and    $0x2773,%eax
  4074d3:	00 42 6f             	add    %al,0x6f(%rdx)
  4074d6:	75 6e                	jne    407546 <ONE+0x756>
  4074d8:	64 61                	fs (bad) 
  4074da:	72 79                	jb     407555 <ONE+0x765>
  4074dc:	20 52 75             	and    %dl,0x75(%rdx)
  4074df:	6e                   	outsb  %ds:(%rsi),(%dx)
  4074e0:	2d 54 69 6d 65       	sub    $0x656d6954,%eax
  4074e5:	20 43 68             	and    %al,0x68(%rbx)
  4074e8:	65 63 6b 20          	movslq %gs:0x20(%rbx),%ebp
  4074ec:	46 61                	rex.RX (bad) 
  4074ee:	69 6c 75 72 65 00 43 	imul   $0x6f430065,0x72(%rbp,%rsi,2),%ebp
  4074f5:	6f 
  4074f6:	6e                   	outsb  %ds:(%rsi),(%dx)
  4074f7:	76 65                	jbe    40755e <ONE+0x76e>
  4074f9:	72 73                	jb     40756e <ONE+0x77e>
  4074fb:	69 6f 6e 20 52 75 6e 	imul   $0x6e755220,0x6e(%rdi),%ebp
  407502:	2d 54 69 6d 65       	sub    $0x656d6954,%eax
  407507:	20 43 68             	and    %al,0x68(%rbx)
  40750a:	65 63 6b 20          	movslq %gs:0x20(%rbx),%ebp
  40750e:	46 61                	rex.RX (bad) 
  407510:	69 6c 75 72 65 00 00 	imul   $0x65,0x72(%rbp,%rsi,2),%ebp
  407517:	00 
  407518:	20 61 6e             	and    %ah,0x6e(%rcx)
  40751b:	64 20 00             	and    %al,%fs:(%rax)
  40751e:	00 00                	add    %al,(%rax)
  407520:	4c                   	rex.WR
  407521:	41                   	rex.B
  407522:	4e                   	rex.WRX
  407523:	47 00 00             	rex.RXB add %r8b,(%r8)
	...
  40753e:	00 00                	add    %al,(%rax)
  407540:	46 61                	rex.RX (bad) 
  407542:	74 61                	je     4075a5 <ONE+0x7b5>
  407544:	6c                   	insb   (%dx),%es:(%rdi)
  407545:	20 45 72             	and    %al,0x72(%rbp)
  407548:	72 6f                	jb     4075b9 <ONE+0x7c9>
  40754a:	72 3a                	jb     407586 <ONE+0x796>
  40754c:	20 54 68 69          	and    %dl,0x69(%rax,%rbp,2)
  407550:	73 20                	jae    407572 <ONE+0x782>
  407552:	70 72                	jo     4075c6 <ONE+0x7d6>
  407554:	6f                   	outsl  %ds:(%rsi),(%dx)
  407555:	67 72 61             	addr32 jb 4075b9 <ONE+0x7c9>
  407558:	6d                   	insl   (%dx),%es:(%rdi)
  407559:	20 77 61             	and    %dh,0x61(%rdi)
  40755c:	73 20                	jae    40757e <ONE+0x78e>
  40755e:	6e                   	outsb  %ds:(%rsi),(%dx)
  40755f:	6f                   	outsl  %ds:(%rsi),(%dx)
  407560:	74 20                	je     407582 <ONE+0x792>
  407562:	62                   	(bad)  {%k1}
  407563:	75 69                	jne    4075ce <ONE+0x7de>
  407565:	6c                   	insb   (%dx),%es:(%rdi)
  407566:	74 20                	je     407588 <ONE+0x798>
  407568:	74 6f                	je     4075d9 <ONE+0x7e9>
  40756a:	20 72 75             	and    %dh,0x75(%rdx)
  40756d:	6e                   	outsb  %ds:(%rsi),(%dx)
  40756e:	20 6f 6e             	and    %ch,0x6e(%rdi)
  407571:	20 74 68 65          	and    %dh,0x65(%rax,%rbp,2)
  407575:	20 70 72             	and    %dh,0x72(%rax)
  407578:	6f                   	outsl  %ds:(%rsi),(%dx)
  407579:	63 65 73             	movslq 0x73(%rbp),%esp
  40757c:	73 6f                	jae    4075ed <ONE+0x7fd>
  40757e:	72 20                	jb     4075a0 <ONE+0x7b0>
  407580:	69 6e 20 79 6f 75 72 	imul   $0x72756f79,0x20(%rsi),%ebp
  407587:	20 73 79             	and    %dh,0x79(%rbx)
  40758a:	73 74                	jae    407600 <ONE+0x810>
  40758c:	65 6d                	gs insl (%dx),%es:(%rdi)
  40758e:	2e 00 00             	add    %al,%cs:(%rax)
	...
  40759d:	00 00                	add    %al,(%rax)
  40759f:	00 52 75             	add    %dl,0x75(%rdx)
  4075a2:	6e                   	outsb  %ds:(%rsi),(%dx)
  4075a3:	2d 54 69 6d 65       	sub    $0x656d6954,%eax
  4075a8:	20 43 68             	and    %al,0x68(%rbx)
  4075ab:	65 63 6b 20          	movslq %gs:0x20(%rbx),%ebp
  4075af:	46 61                	rex.RX (bad) 
  4075b1:	69 6c 75 72 65 3a 20 	imul   $0x54203a65,0x72(%rbp,%rsi,2),%ebp
  4075b8:	54 
  4075b9:	68 65 20 76 61       	pushq  $0x61762065
  4075be:	72 69                	jb     407629 <ONE+0x839>
  4075c0:	61                   	(bad)  
  4075c1:	62                   	(bad)  {%k1}
  4075c2:	6c                   	insb   (%dx),%es:(%rdi)
  4075c3:	65 20 27             	and    %ah,%gs:(%rdi)
  4075c6:	25 73 27 20 69       	and    $0x69202773,%eax
  4075cb:	73 20                	jae    4075ed <ONE+0x7fd>
  4075cd:	62                   	(bad)  {%k1}
  4075ce:	65 69 6e 67 20 75 73 	imul   $0x65737520,%gs:0x67(%rsi),%ebp
  4075d5:	65 
  4075d6:	64 20 77 69          	and    %dh,%fs:0x69(%rdi)
  4075da:	74 68                	je     407644 <ONE+0x854>
  4075dc:	6f                   	outsl  %ds:(%rsi),(%dx)
  4075dd:	75 74                	jne    407653 <ONE+0x863>
  4075df:	20 62 65             	and    %ah,0x65(%rdx)
  4075e2:	69 6e 67 20 69 6e 69 	imul   $0x696e6920,0x67(%rsi),%ebp
  4075e9:	74 69                	je     407654 <ONE+0x864>
  4075eb:	61                   	(bad)  
  4075ec:	6c                   	insb   (%dx),%es:(%rdi)
  4075ed:	69 7a 65 64 00 00 00 	imul   $0x64,0x65(%rdx),%edi
	...
  407600:	20 57 69             	and    %dl,0x69(%rdi)
  407603:	6e                   	outsb  %ds:(%rsi),(%dx)
  407604:	64 6f                	outsl  %fs:(%rsi),(%dx)
  407606:	77 73                	ja     40767b <ONE+0x88b>
  407608:	20 58 50             	and    %bl,0x50(%rax)
  40760b:	20 36                	and    %dh,(%rsi)
  40760d:	34 2d                	xor    $0x2d,%al
  40760f:	62                   	(bad)  {%k1}
  407610:	69 74 20 45 64 69 74 	imul   $0x69746964,0x45(%rax,%riz,1),%esi
  407617:	69 
  407618:	6f                   	outsl  %ds:(%rsi),(%dx)
  407619:	6e                   	outsb  %ds:(%rsi),(%dx)
  40761a:	20 56 65             	and    %dl,0x65(%rsi)
  40761d:	72 73                	jb     407692 <ONE+0x8a2>
  40761f:	69 6f 6e 20 32 30 30 	imul   $0x30303220,0x6e(%rdi),%ebp
  407626:	33 20                	xor    (%rax),%esp
  407628:	6f                   	outsl  %ds:(%rsi),(%dx)
  407629:	72 20                	jb     40764b <ONE+0x85b>
  40762b:	6e                   	outsb  %ds:(%rsi),(%dx)
  40762c:	65 77 65             	gs ja  407694 <ONE+0x8a4>
  40762f:	72 20                	jb     407651 <ONE+0x861>
  407631:	73 68                	jae    40769b <ONE+0x8ab>
  407633:	6f                   	outsl  %ds:(%rsi),(%dx)
  407634:	75 6c                	jne    4076a2 <ONE+0x8b2>
  407636:	64 20 62 65          	and    %ah,%fs:0x65(%rdx)
  40763a:	20 75 73             	and    %dh,0x73(%rbp)
  40763d:	65 64 2e 00 00       	gs fs add %al,%cs:(%rax)
	...
  40765e:	00 00                	add    %al,(%rax)
  407660:	49 6e                	rex.WB outsb %ds:(%rsi),(%dx)
  407662:	74 65                	je     4076c9 <ONE+0x8d9>
  407664:	6c                   	insb   (%dx),%es:(%rdi)
  407665:	28 52 29             	sub    %dl,0x29(%rdx)
  407668:	20 43 6f             	and    %al,0x6f(%rbx)
  40766b:	72 65                	jb     4076d2 <ONE+0x8e2>
  40766d:	28 54 4d 29          	sub    %dl,0x29(%rbp,%rcx,2)
  407671:	20 44 75 6f          	and    %al,0x6f(%rbp,%rsi,2)
  407675:	20 70 72             	and    %dh,0x72(%rax)
  407678:	6f                   	outsl  %ds:(%rsi),(%dx)
  407679:	63 65 73             	movslq 0x73(%rbp),%esp
  40767c:	73 6f                	jae    4076ed <ONE+0x8fd>
  40767e:	72 73                	jb     4076f3 <ONE+0x903>
  407680:	20 61 6e             	and    %ah,0x6e(%rcx)
  407683:	64 20 63 6f          	and    %ah,%fs:0x6f(%rbx)
  407687:	6d                   	insl   (%dx),%es:(%rdi)
  407688:	70 61                	jo     4076eb <ONE+0x8fb>
  40768a:	74 69                	je     4076f5 <ONE+0x905>
  40768c:	62                   	(bad)  {%k1}
  40768d:	6c                   	insb   (%dx),%es:(%rdi)
  40768e:	65 20 49 6e          	and    %cl,%gs:0x6e(%rcx)
  407692:	74 65                	je     4076f9 <ONE+0x909>
  407694:	6c                   	insb   (%dx),%es:(%rdi)
  407695:	20 70 72             	and    %dh,0x72(%rax)
  407698:	6f                   	outsl  %ds:(%rsi),(%dx)
  407699:	63 65 73             	movslq 0x73(%rbp),%esp
  40769c:	73 6f                	jae    40770d <ONE+0x91d>
  40769e:	72 73                	jb     407713 <ONE+0x923>
  4076a0:	20 77 69             	and    %dh,0x69(%rdi)
  4076a3:	74 68                	je     40770d <ONE+0x91d>
  4076a5:	20 73 75             	and    %dh,0x75(%rbx)
  4076a8:	70 70                	jo     40771a <ONE+0x92a>
  4076aa:	6c                   	insb   (%dx),%es:(%rdi)
  4076ab:	65 6d                	gs insl (%dx),%es:(%rdi)
  4076ad:	65 6e                	outsb  %gs:(%rsi),(%dx)
  4076af:	74 61                	je     407712 <ONE+0x922>
  4076b1:	6c                   	insb   (%dx),%es:(%rdi)
  4076b2:	20 53 74             	and    %dl,0x74(%rbx)
  4076b5:	72 65                	jb     40771c <ONE+0x92c>
  4076b7:	61                   	(bad)  
  4076b8:	6d                   	insl   (%dx),%es:(%rdi)
  4076b9:	69 6e 67 20 53 49 4d 	imul   $0x4d495320,0x67(%rsi),%ebp
  4076c0:	44 20 45 78          	and    %r8b,0x78(%rbp)
  4076c4:	74 65                	je     40772b <ONE+0x93b>
  4076c6:	6e                   	outsb  %ds:(%rsi),(%dx)
  4076c7:	73 69                	jae    407732 <ONE+0x942>
  4076c9:	6f                   	outsl  %ds:(%rsi),(%dx)
  4076ca:	6e                   	outsb  %ds:(%rsi),(%dx)
  4076cb:	73 20                	jae    4076ed <ONE+0x8fd>
  4076cd:	33 20                	xor    (%rax),%esp
  4076cf:	28 53 53             	sub    %dl,0x53(%rbx)
  4076d2:	53                   	push   %rbx
  4076d3:	45 33 29             	xor    (%r9),%r13d
  4076d6:	20 69 6e             	and    %ch,0x6e(%rcx)
  4076d9:	73 74                	jae    40774f <ONE+0x95f>
  4076db:	72 75                	jb     407752 <ONE+0x962>
  4076dd:	63 74 69 6f          	movslq 0x6f(%rcx,%rbp,2),%esi
  4076e1:	6e                   	outsb  %ds:(%rsi),(%dx)
  4076e2:	20 73 75             	and    %dh,0x75(%rbx)
  4076e5:	70 70                	jo     407757 <ONE+0x967>
  4076e7:	6f                   	outsl  %ds:(%rsi),(%dx)
  4076e8:	72 74                	jb     40775e <ONE+0x96e>
	...
  4076fe:	00 00                	add    %al,(%rax)
  407700:	49 6e                	rex.WB outsb %ds:(%rsi),(%dx)
  407702:	74 65                	je     407769 <ONE+0x979>
  407704:	6c                   	insb   (%dx),%es:(%rdi)
  407705:	28 52 29             	sub    %dl,0x29(%rdx)
  407708:	20 50 65             	and    %dl,0x65(%rax)
  40770b:	6e                   	outsb  %ds:(%rsi),(%dx)
  40770c:	74 69                	je     407777 <ONE+0x987>
  40770e:	75 6d                	jne    40777d <ONE+0x98d>
  407710:	28 52 29             	sub    %dl,0x29(%rdx)
  407713:	20 34 20             	and    %dh,(%rax,%riz,1)
  407716:	61                   	(bad)  
  407717:	6e                   	outsb  %ds:(%rsi),(%dx)
  407718:	64 20 63 6f          	and    %ah,%fs:0x6f(%rbx)
  40771c:	6d                   	insl   (%dx),%es:(%rdi)
  40771d:	70 61                	jo     407780 <ONE+0x990>
  40771f:	74 69                	je     40778a <ONE+0x99a>
  407721:	62                   	(bad)  {%k1}
  407722:	6c                   	insb   (%dx),%es:(%rdi)
  407723:	65 20 49 6e          	and    %cl,%gs:0x6e(%rcx)
  407727:	74 65                	je     40778e <ONE+0x99e>
  407729:	6c                   	insb   (%dx),%es:(%rdi)
  40772a:	20 70 72             	and    %dh,0x72(%rax)
  40772d:	6f                   	outsl  %ds:(%rsi),(%dx)
  40772e:	63 65 73             	movslq 0x73(%rbp),%esp
  407731:	73 6f                	jae    4077a2 <ONE+0x9b2>
  407733:	72 73                	jb     4077a8 <ONE+0x9b8>
  407735:	20 77 69             	and    %dh,0x69(%rdi)
  407738:	74 68                	je     4077a2 <ONE+0x9b2>
  40773a:	20 49 6e             	and    %cl,0x6e(%rcx)
  40773d:	74 65                	je     4077a4 <ONE+0x9b4>
  40773f:	6c                   	insb   (%dx),%es:(%rdi)
  407740:	28 52 29             	sub    %dl,0x29(%rdx)
  407743:	20 53 74             	and    %dl,0x74(%rbx)
  407746:	72 65                	jb     4077ad <ONE+0x9bd>
  407748:	61                   	(bad)  
  407749:	6d                   	insl   (%dx),%es:(%rdi)
  40774a:	69 6e 67 20 53 49 4d 	imul   $0x4d495320,0x67(%rsi),%ebp
  407751:	44 20 45 78          	and    %r8b,0x78(%rbp)
  407755:	74 65                	je     4077bc <ONE+0x9cc>
  407757:	6e                   	outsb  %ds:(%rsi),(%dx)
  407758:	73 69                	jae    4077c3 <ONE+0x9d3>
  40775a:	6f                   	outsl  %ds:(%rsi),(%dx)
  40775b:	6e                   	outsb  %ds:(%rsi),(%dx)
  40775c:	73 20                	jae    40777e <ONE+0x98e>
  40775e:	33 20                	xor    (%rax),%esp
  407760:	28 49 6e             	sub    %cl,0x6e(%rcx)
  407763:	74 65                	je     4077ca <ONE+0x9da>
  407765:	6c                   	insb   (%dx),%es:(%rdi)
  407766:	28 52 29             	sub    %dl,0x29(%rdx)
  407769:	20 53 53             	and    %dl,0x53(%rbx)
  40776c:	45 33 29             	xor    (%r9),%r13d
  40776f:	20 69 6e             	and    %ch,0x6e(%rcx)
  407772:	73 74                	jae    4077e8 <ONE+0x9f8>
  407774:	72 75                	jb     4077eb <ONE+0x9fb>
  407776:	63 74 69 6f          	movslq 0x6f(%rcx,%rbp,2),%esi
  40777a:	6e                   	outsb  %ds:(%rsi),(%dx)
  40777b:	20 73 75             	and    %dh,0x75(%rbx)
  40777e:	70 70                	jo     4077f0 <ONE+0xa00>
  407780:	6f                   	outsl  %ds:(%rsi),(%dx)
  407781:	72 74                	jb     4077f7 <ONE+0xa07>
	...
  40779f:	00 49 6e             	add    %cl,0x6e(%rcx)
  4077a2:	74 65                	je     407809 <ONE+0xa19>
  4077a4:	6c                   	insb   (%dx),%es:(%rdi)
  4077a5:	28 52 29             	sub    %dl,0x29(%rdx)
  4077a8:	20 50 65             	and    %dl,0x65(%rax)
  4077ab:	6e                   	outsb  %ds:(%rsi),(%dx)
  4077ac:	74 69                	je     407817 <ONE+0xa27>
  4077ae:	75 6d                	jne    40781d <ONE+0xa2d>
  4077b0:	28 52 29             	sub    %dl,0x29(%rdx)
  4077b3:	20 34 20             	and    %dh,(%rax,%riz,1)
  4077b6:	61                   	(bad)  
  4077b7:	6e                   	outsb  %ds:(%rsi),(%dx)
  4077b8:	64 20 63 6f          	and    %ah,%fs:0x6f(%rbx)
  4077bc:	6d                   	insl   (%dx),%es:(%rdi)
  4077bd:	70 61                	jo     407820 <ONE+0xa30>
  4077bf:	74 69                	je     40782a <ONE+0xa3a>
  4077c1:	62                   	(bad)  {%k1}
  4077c2:	6c                   	insb   (%dx),%es:(%rdi)
  4077c3:	65 20 49 6e          	and    %cl,%gs:0x6e(%rcx)
  4077c7:	74 65                	je     40782e <ONE+0xa3e>
  4077c9:	6c                   	insb   (%dx),%es:(%rdi)
  4077ca:	20 70 72             	and    %dh,0x72(%rax)
  4077cd:	6f                   	outsl  %ds:(%rsi),(%dx)
  4077ce:	63 65 73             	movslq 0x73(%rbp),%esp
  4077d1:	73 6f                	jae    407842 <ONE+0xa52>
  4077d3:	72 73                	jb     407848 <ONE+0xa58>
  4077d5:	2e 20 45 6e          	and    %al,%cs:0x6e(%rbp)
  4077d9:	61                   	(bad)  
  4077da:	62                   	(bad)  {%k1}
  4077db:	6c                   	insb   (%dx),%es:(%rdi)
  4077dc:	65 73 20             	gs jae 4077ff <ONE+0xa0f>
  4077df:	6e                   	outsb  %ds:(%rsi),(%dx)
  4077e0:	65 77 20             	gs ja  407803 <ONE+0xa13>
  4077e3:	6f                   	outsl  %ds:(%rsi),(%dx)
  4077e4:	70 74                	jo     40785a <ONE+0xa6a>
  4077e6:	69 6d 69 7a 61 74 69 	imul   $0x6974617a,0x69(%rbp),%ebp
  4077ed:	6f                   	outsl  %ds:(%rsi),(%dx)
  4077ee:	6e                   	outsb  %ds:(%rsi),(%dx)
  4077ef:	73 20                	jae    407811 <ONE+0xa21>
  4077f1:	69 6e 20 61 64 64 69 	imul   $0x69646461,0x20(%rsi),%ebp
  4077f8:	74 69                	je     407863 <ONE+0xa73>
  4077fa:	6f                   	outsl  %ds:(%rsi),(%dx)
  4077fb:	6e                   	outsb  %ds:(%rsi),(%dx)
  4077fc:	20 74 6f 20          	and    %dh,0x20(%rdi,%rbp,2)
  407800:	49 6e                	rex.WB outsb %ds:(%rsi),(%dx)
  407802:	74 65                	je     407869 <ONE+0xa79>
  407804:	6c                   	insb   (%dx),%es:(%rdi)
  407805:	20 70 72             	and    %dh,0x72(%rax)
  407808:	6f                   	outsl  %ds:(%rsi),(%dx)
  407809:	63 65 73             	movslq 0x73(%rbp),%esp
  40780c:	73 6f                	jae    40787d <ONE+0xa8d>
  40780e:	72 2d                	jb     40783d <ONE+0xa4d>
  407810:	73 70                	jae    407882 <ONE+0xa92>
  407812:	65 63 69 66          	movslq %gs:0x66(%rcx),%ebp
  407816:	69 63 20 6f 70 74 69 	imul   $0x6974706f,0x20(%rbx),%esp
  40781d:	6d                   	insl   (%dx),%es:(%rdi)
  40781e:	69 7a 61 74 69 6f 6e 	imul   $0x6e6f6974,0x61(%rdx),%edi
  407825:	73 00                	jae    407827 <ONE+0xa37>
	...
  40783f:	00 49 6e             	add    %cl,0x6e(%rcx)
  407842:	74 65                	je     4078a9 <ONE+0xab9>
  407844:	6c                   	insb   (%dx),%es:(%rdi)
  407845:	28 52 29             	sub    %dl,0x29(%rdx)
  407848:	20 70 72             	and    %dh,0x72(%rax)
  40784b:	6f                   	outsl  %ds:(%rsi),(%dx)
  40784c:	63 65 73             	movslq 0x73(%rbp),%esp
  40784f:	73 6f                	jae    4078c0 <ONE+0xad0>
  407851:	72 73                	jb     4078c6 <ONE+0xad6>
  407853:	20 77 69             	and    %dh,0x69(%rdi)
  407856:	74 68                	je     4078c0 <ONE+0xad0>
  407858:	20 53 53             	and    %dl,0x53(%rbx)
  40785b:	45 34 2e             	rex.RB xor $0x2e,%al
  40785e:	32 20                	xor    (%rax),%ah
  407860:	61                   	(bad)  
  407861:	6e                   	outsb  %ds:(%rsi),(%dx)
  407862:	64 20 50 4f          	and    %dl,%fs:0x4f(%rax)
  407866:	50                   	push   %rax
  407867:	43                   	rex.XB
  407868:	4e 54                	rex.WRX push %rsp
  40786a:	20 69 6e             	and    %ch,0x6e(%rcx)
  40786d:	73 74                	jae    4078e3 <ONE+0xaf3>
  40786f:	72 75                	jb     4078e6 <ONE+0xaf6>
  407871:	63 74 69 6f          	movslq 0x6f(%rcx,%rbp,2),%esi
  407875:	6e                   	outsb  %ds:(%rsi),(%dx)
  407876:	73 20                	jae    407898 <ONE+0xaa8>
  407878:	73 75                	jae    4078ef <ONE+0xaff>
  40787a:	70 70                	jo     4078ec <ONE+0xafc>
  40787c:	6f                   	outsl  %ds:(%rsi),(%dx)
  40787d:	72 74                	jb     4078f3 <ONE+0xb03>
  40787f:	00 50 6c             	add    %dl,0x6c(%rax)
  407882:	65 61                	gs (bad) 
  407884:	73 65                	jae    4078eb <ONE+0xafb>
  407886:	20 76 65             	and    %dh,0x65(%rsi)
  407889:	72 69                	jb     4078f4 <ONE+0xb04>
  40788b:	66 79 20             	data16 jns 4078ae <ONE+0xabe>
  40788e:	74 68                	je     4078f8 <ONE+0xb08>
  407890:	61                   	(bad)  
  407891:	74 20                	je     4078b3 <ONE+0xac3>
  407893:	62                   	(bad)  {%k1}
  407894:	6f                   	outsl  %ds:(%rsi),(%dx)
  407895:	74 68                	je     4078ff <ONE+0xb0f>
  407897:	20 74 68 65          	and    %dh,0x65(%rax,%rbp,2)
  40789b:	20 6f 70             	and    %ch,0x70(%rdi)
  40789e:	65 72 61             	gs jb  407902 <ONE+0xb12>
  4078a1:	74 69                	je     40790c <ONE+0xb1c>
  4078a3:	6e                   	outsb  %ds:(%rsi),(%dx)
  4078a4:	67 20 73 79          	and    %dh,0x79(%ebx)
  4078a8:	73 74                	jae    40791e <ONE+0xb2e>
  4078aa:	65 6d                	gs insl (%dx),%es:(%rdi)
  4078ac:	20 61 6e             	and    %ah,0x6e(%rcx)
  4078af:	64 20 74 68 65       	and    %dh,%fs:0x65(%rax,%rbp,2)
  4078b4:	20 70 72             	and    %dh,0x72(%rax)
  4078b7:	6f                   	outsl  %ds:(%rsi),(%dx)
  4078b8:	63 65 73             	movslq 0x73(%rbp),%esp
  4078bb:	73 6f                	jae    40792c <ONE+0xb3c>
  4078bd:	72 20                	jb     4078df <ONE+0xaef>
  4078bf:	73 75                	jae    407936 <ONE+0xb46>
  4078c1:	70 70                	jo     407933 <ONE+0xb43>
  4078c3:	6f                   	outsl  %ds:(%rsi),(%dx)
  4078c4:	72 74                	jb     40793a <ONE+0xb4a>
  4078c6:	20 49 6e             	and    %cl,0x6e(%rcx)
  4078c9:	74 65                	je     407930 <ONE+0xb40>
  4078cb:	6c                   	insb   (%dx),%es:(%rdi)
  4078cc:	28 52 29             	sub    %dl,0x29(%rdx)
  4078cf:	20 41 56             	and    %al,0x56(%rcx)
  4078d2:	58                   	pop    %rax
  4078d3:	2e 00 00             	add    %al,%cs:(%rax)
	...
  4078de:	00 00                	add    %al,(%rax)
  4078e0:	50                   	push   %rax
  4078e1:	6c                   	insb   (%dx),%es:(%rdi)
  4078e2:	65 61                	gs (bad) 
  4078e4:	73 65                	jae    40794b <ONE+0xb5b>
  4078e6:	20 76 65             	and    %dh,0x65(%rsi)
  4078e9:	72 69                	jb     407954 <ONE+0xb64>
  4078eb:	66 79 20             	data16 jns 40790e <ONE+0xb1e>
  4078ee:	74 68                	je     407958 <ONE+0xb68>
  4078f0:	61                   	(bad)  
  4078f1:	74 20                	je     407913 <ONE+0xb23>
  4078f3:	62                   	(bad)  {%k1}
  4078f4:	6f                   	outsl  %ds:(%rsi),(%dx)
  4078f5:	74 68                	je     40795f <ONE+0xb6f>
  4078f7:	20 74 68 65          	and    %dh,0x65(%rax,%rbp,2)
  4078fb:	20 6f 70             	and    %ch,0x70(%rdi)
  4078fe:	65 72 61             	gs jb  407962 <ONE+0xb72>
  407901:	74 69                	je     40796c <ONE+0xb7c>
  407903:	6e                   	outsb  %ds:(%rsi),(%dx)
  407904:	67 20 73 79          	and    %dh,0x79(%ebx)
  407908:	73 74                	jae    40797e <ONE+0xb8e>
  40790a:	65 6d                	gs insl (%dx),%es:(%rdi)
  40790c:	20 61 6e             	and    %ah,0x6e(%rcx)
  40790f:	64 20 74 68 65       	and    %dh,%fs:0x65(%rax,%rbp,2)
  407914:	20 70 72             	and    %dh,0x72(%rax)
  407917:	6f                   	outsl  %ds:(%rsi),(%dx)
  407918:	63 65 73             	movslq 0x73(%rbp),%esp
  40791b:	73 6f                	jae    40798c <ONE+0xb9c>
  40791d:	72 20                	jb     40793f <ONE+0xb4f>
  40791f:	73 75                	jae    407996 <ONE+0xba6>
  407921:	70 70                	jo     407993 <ONE+0xba3>
  407923:	6f                   	outsl  %ds:(%rsi),(%dx)
  407924:	72 74                	jb     40799a <ONE+0xbaa>
  407926:	20 49 6e             	and    %cl,0x6e(%rcx)
  407929:	74 65                	je     407990 <ONE+0xba0>
  40792b:	6c                   	insb   (%dx),%es:(%rdi)
  40792c:	28 52 29             	sub    %dl,0x29(%rdx)
  40792f:	20 41 56             	and    %al,0x56(%rcx)
  407932:	58                   	pop    %rax
  407933:	2c 20                	sub    $0x20,%al
  407935:	46 31 36             	rex.RX xor %r14d,(%rsi)
  407938:	43 20 61 6e          	rex.XB and %spl,0x6e(%r9)
  40793c:	64 20 52 44          	and    %dl,%fs:0x44(%rdx)
  407940:	52                   	push   %rdx
  407941:	41                   	rex.B
  407942:	4e                   	rex.WRX
  407943:	44 20 69 6e          	and    %r13b,0x6e(%rcx)
  407947:	73 74                	jae    4079bd <ONE+0xbcd>
  407949:	72 75                	jb     4079c0 <ONE+0xbd0>
  40794b:	63 74 69 6f          	movslq 0x6f(%rcx,%rbp,2),%esi
  40794f:	6e                   	outsb  %ds:(%rsi),(%dx)
  407950:	73 2e                	jae    407980 <ONE+0xb90>
	...
  40795e:	00 00                	add    %al,(%rax)
  407960:	50                   	push   %rax
  407961:	6c                   	insb   (%dx),%es:(%rdi)
  407962:	65 61                	gs (bad) 
  407964:	73 65                	jae    4079cb <ONE+0xbdb>
  407966:	20 76 65             	and    %dh,0x65(%rsi)
  407969:	72 69                	jb     4079d4 <ONE+0xbe4>
  40796b:	66 79 20             	data16 jns 40798e <ONE+0xb9e>
  40796e:	74 68                	je     4079d8 <ONE+0xbe8>
  407970:	61                   	(bad)  
  407971:	74 20                	je     407993 <ONE+0xba3>
  407973:	62                   	(bad)  {%k1}
  407974:	6f                   	outsl  %ds:(%rsi),(%dx)
  407975:	74 68                	je     4079df <ONE+0xbef>
  407977:	20 74 68 65          	and    %dh,0x65(%rax,%rbp,2)
  40797b:	20 6f 70             	and    %ch,0x70(%rdi)
  40797e:	65 72 61             	gs jb  4079e2 <ONE+0xbf2>
  407981:	74 69                	je     4079ec <ONE+0xbfc>
  407983:	6e                   	outsb  %ds:(%rsi),(%dx)
  407984:	67 20 73 79          	and    %dh,0x79(%ebx)
  407988:	73 74                	jae    4079fe <ONE+0xc0e>
  40798a:	65 6d                	gs insl (%dx),%es:(%rdi)
  40798c:	20 61 6e             	and    %ah,0x6e(%rcx)
  40798f:	64 20 74 68 65       	and    %dh,%fs:0x65(%rax,%rbp,2)
  407994:	20 70 72             	and    %dh,0x72(%rax)
  407997:	6f                   	outsl  %ds:(%rsi),(%dx)
  407998:	63 65 73             	movslq 0x73(%rbp),%esp
  40799b:	73 6f                	jae    407a0c <ONE+0xc1c>
  40799d:	72 20                	jb     4079bf <ONE+0xbcf>
  40799f:	73 75                	jae    407a16 <ONE+0xc26>
  4079a1:	70 70                	jo     407a13 <ONE+0xc23>
  4079a3:	6f                   	outsl  %ds:(%rsi),(%dx)
  4079a4:	72 74                	jb     407a1a <ONE+0xc2a>
  4079a6:	20 49 6e             	and    %cl,0x6e(%rcx)
  4079a9:	74 65                	je     407a10 <ONE+0xc20>
  4079ab:	6c                   	insb   (%dx),%es:(%rdi)
  4079ac:	28 52 29             	sub    %dl,0x29(%rdx)
  4079af:	20 41 56             	and    %al,0x56(%rcx)
  4079b2:	58                   	pop    %rax
  4079b3:	32 2c 20             	xor    (%rax,%riz,1),%ch
  4079b6:	42                   	rex.X
  4079b7:	4d                   	rex.WRB
  4079b8:	49 2c 20             	rex.WB sub $0x20,%al
  4079bb:	4c 5a                	rex.WR pop %rdx
  4079bd:	43                   	rex.XB
  4079be:	4e 54                	rex.WRX push %rsp
  4079c0:	2c 20                	sub    $0x20,%al
  4079c2:	48                   	rex.W
  4079c3:	4c                   	rex.WR
  4079c4:	45 2c 20             	rex.RB sub $0x20,%al
  4079c7:	52                   	push   %rdx
  4079c8:	54                   	push   %rsp
  4079c9:	4d 20 61 6e          	rex.WRB and %r12b,0x6e(%r9)
  4079cd:	64 20 46 4d          	and    %al,%fs:0x4d(%rsi)
  4079d1:	41 20 69 6e          	and    %bpl,0x6e(%r9)
  4079d5:	73 74                	jae    407a4b <ONE+0xc5b>
  4079d7:	72 75                	jb     407a4e <ONE+0xc5e>
  4079d9:	63 74 69 6f          	movslq 0x6f(%rcx,%rbp,2),%esi
  4079dd:	6e                   	outsb  %ds:(%rsi),(%dx)
  4079de:	73 2e                	jae    407a0e <ONE+0xc1e>
	...
  407a00:	50                   	push   %rax
  407a01:	6c                   	insb   (%dx),%es:(%rdi)
  407a02:	65 61                	gs (bad) 
  407a04:	73 65                	jae    407a6b <ONE+0xc7b>
  407a06:	20 76 65             	and    %dh,0x65(%rsi)
  407a09:	72 69                	jb     407a74 <ONE+0xc84>
  407a0b:	66 79 20             	data16 jns 407a2e <ONE+0xc3e>
  407a0e:	74 68                	je     407a78 <ONE+0xc88>
  407a10:	61                   	(bad)  
  407a11:	74 20                	je     407a33 <ONE+0xc43>
  407a13:	62                   	(bad)  {%k1}
  407a14:	6f                   	outsl  %ds:(%rsi),(%dx)
  407a15:	74 68                	je     407a7f <ONE+0xc8f>
  407a17:	20 74 68 65          	and    %dh,0x65(%rax,%rbp,2)
  407a1b:	20 6f 70             	and    %ch,0x70(%rdi)
  407a1e:	65 72 61             	gs jb  407a82 <ONE+0xc92>
  407a21:	74 69                	je     407a8c <ONE+0xc9c>
  407a23:	6e                   	outsb  %ds:(%rsi),(%dx)
  407a24:	67 20 73 79          	and    %dh,0x79(%ebx)
  407a28:	73 74                	jae    407a9e <ONE+0xcae>
  407a2a:	65 6d                	gs insl (%dx),%es:(%rdi)
  407a2c:	20 61 6e             	and    %ah,0x6e(%rcx)
  407a2f:	64 20 74 68 65       	and    %dh,%fs:0x65(%rax,%rbp,2)
  407a34:	20 70 72             	and    %dh,0x72(%rax)
  407a37:	6f                   	outsl  %ds:(%rsi),(%dx)
  407a38:	63 65 73             	movslq 0x73(%rbp),%esp
  407a3b:	73 6f                	jae    407aac <ONE+0xcbc>
  407a3d:	72 20                	jb     407a5f <ONE+0xc6f>
  407a3f:	73 75                	jae    407ab6 <ONE+0xcc6>
  407a41:	70 70                	jo     407ab3 <ONE+0xcc3>
  407a43:	6f                   	outsl  %ds:(%rsi),(%dx)
  407a44:	72 74                	jb     407aba <ONE+0xcca>
  407a46:	20 49 6e             	and    %cl,0x6e(%rcx)
  407a49:	74 65                	je     407ab0 <ONE+0xcc0>
  407a4b:	6c                   	insb   (%dx),%es:(%rdi)
  407a4c:	28 52 29             	sub    %dl,0x29(%rdx)
  407a4f:	20 25 73 20 69 6e    	and    %ah,0x6e692073(%rip)        # 6ea99ac8 <_end+0x6e48f2b8>
  407a55:	73 74                	jae    407acb <ONE+0xcdb>
  407a57:	72 75                	jb     407ace <ONE+0xcde>
  407a59:	63 74 69 6f          	movslq 0x6f(%rcx,%rbp,2),%esi
  407a5d:	6e                   	outsb  %ds:(%rsi),(%dx)
  407a5e:	73 2e                	jae    407a8e <ONE+0xc9e>
	...
  407a80:	50                   	push   %rax
  407a81:	6c                   	insb   (%dx),%es:(%rdi)
  407a82:	65 61                	gs (bad) 
  407a84:	73 65                	jae    407aeb <ONE+0xcfb>
  407a86:	20 76 65             	and    %dh,0x65(%rsi)
  407a89:	72 69                	jb     407af4 <ONE+0xd04>
  407a8b:	66 79 20             	data16 jns 407aae <ONE+0xcbe>
  407a8e:	74 68                	je     407af8 <ONE+0xd08>
  407a90:	61                   	(bad)  
  407a91:	74 20                	je     407ab3 <ONE+0xcc3>
  407a93:	79 6f                	jns    407b04 <ONE+0xd14>
  407a95:	75 72                	jne    407b09 <ONE+0xd19>
  407a97:	20 61 70             	and    %ah,0x70(%rcx)
  407a9a:	70 6c                	jo     407b08 <ONE+0xd18>
  407a9c:	69 63 61 74 69 6f 6e 	imul   $0x6e6f6974,0x61(%rbx),%esp
  407aa3:	20 77 61             	and    %dh,0x61(%rdi)
  407aa6:	73 20                	jae    407ac8 <ONE+0xcd8>
  407aa8:	62                   	(bad)  {%k1}
  407aa9:	75 69                	jne    407b14 <ONE+0xd24>
  407aab:	6c                   	insb   (%dx),%es:(%rdi)
  407aac:	74 20                	je     407ace <ONE+0xcde>
  407aae:	77 69                	ja     407b19 <ONE+0xd29>
  407ab0:	74 68                	je     407b1a <ONE+0xd2a>
  407ab2:	20 63 6f             	and    %ah,0x6f(%rbx)
  407ab5:	6d                   	insl   (%dx),%es:(%rdi)
  407ab6:	70 61                	jo     407b19 <ONE+0xd29>
  407ab8:	74 69                	je     407b23 <ONE+0xd33>
  407aba:	62                   	(bad)  {%k1}
  407abb:	6c                   	insb   (%dx),%es:(%rdi)
  407abc:	65 20 49 6e          	and    %cl,%gs:0x6e(%rcx)
  407ac0:	74 65                	je     407b27 <ONE+0xd37>
  407ac2:	6c                   	insb   (%dx),%es:(%rdi)
  407ac3:	28 52 29             	sub    %dl,0x29(%rdx)
  407ac6:	20 6c 69 62          	and    %ch,0x62(%rcx,%rbp,2)
  407aca:	69 72 63 20 6c 69 62 	imul   $0x62696c20,0x63(%rdx),%esi
  407ad1:	72 61                	jb     407b34 <ONE+0xd44>
  407ad3:	72 79                	jb     407b4e <ONE+0xd5e>
	...
  407add:	00 00                	add    %al,(%rax)
  407adf:	00 55 73             	add    %dl,0x73(%rbp)
  407ae2:	65 20 6f 66          	and    %ch,%gs:0x66(%rdi)
  407ae6:	20 69 6e             	and    %ch,0x6e(%rcx)
  407ae9:	63 6f 6d             	movslq 0x6d(%rdi),%ebp
  407aec:	70 61                	jo     407b4f <ONE+0xd5f>
  407aee:	74 69                	je     407b59 <ONE+0xd69>
  407af0:	62                   	(bad)  {%k1}
  407af1:	6c                   	insb   (%dx),%es:(%rdi)
  407af2:	65 20 6f 72          	and    %ch,%gs:0x72(%rdi)
  407af6:	20 69 6e             	and    %ch,0x6e(%rcx)
  407af9:	74 65                	je     407b60 <ONE+0xd70>
  407afb:	72 6e                	jb     407b6b <ONE+0xd7b>
  407afd:	61                   	(bad)  
  407afe:	6c                   	insb   (%dx),%es:(%rdi)
  407aff:	6c                   	insb   (%dx),%es:(%rdi)
  407b00:	79 20                	jns    407b22 <ONE+0xd32>
  407b02:	69 6e 63 6f 6e 73 69 	imul   $0x69736e6f,0x63(%rsi),%ebp
  407b09:	73 74                	jae    407b7f <ONE+0xd8f>
  407b0b:	65 6e                	outsb  %gs:(%rsi),(%dx)
  407b0d:	74 20                	je     407b2f <ONE+0xd3f>
  407b0f:	49 6e                	rex.WB outsb %ds:(%rsi),(%dx)
  407b11:	74 65                	je     407b78 <ONE+0xd88>
  407b13:	6c                   	insb   (%dx),%es:(%rdi)
  407b14:	28 52 29             	sub    %dl,0x29(%rdx)
  407b17:	20 6c 69 62          	and    %ch,0x62(%rcx,%rbp,2)
  407b1b:	69 72 63 20 6c 69 62 	imul   $0x62696c20,0x63(%rdx),%esi
  407b22:	72 61                	jb     407b85 <ONE+0xd95>
  407b24:	72 79                	jb     407b9f <ONE+0xdaf>
	...
  407b3e:	00 00                	add    %al,(%rax)
  407b40:	52                   	push   %rdx
  407b41:	75 6e                	jne    407bb1 <__GNU_EH_FRAME_HDR+0x11>
  407b43:	2d 54 69 6d 65       	sub    $0x656d6954,%eax
  407b48:	20 43 68             	and    %al,0x68(%rbx)
  407b4b:	65 63 6b 20          	movslq %gs:0x20(%rbx),%ebp
  407b4f:	46 61                	rex.RX (bad) 
  407b51:	69 6c 75 72 65 3a 20 	imul   $0x54203a65,0x72(%rbp,%rsi,2),%ebp
  407b58:	54 
  407b59:	68 65 20 76 61       	pushq  $0x61762065
  407b5e:	72 69                	jb     407bc9 <__GNU_EH_FRAME_HDR+0x29>
  407b60:	61                   	(bad)  
  407b61:	62                   	(bad)  {%k1}
  407b62:	6c                   	insb   (%dx),%es:(%rdi)
  407b63:	65 20 27             	and    %ah,%gs:(%rdi)
  407b66:	25 73 27 20 69       	and    $0x69202773,%eax
  407b6b:	73 20                	jae    407b8d <ONE+0xd9d>
  407b6d:	62                   	(bad)  {%k1}
  407b6e:	65 69 6e 67 20 75 73 	imul   $0x65737520,%gs:0x67(%rsi),%ebp
  407b75:	65 
  407b76:	64 20 69 6e          	and    %ch,%fs:0x6e(%rcx)
  407b7a:	20 25 73 20 77 69    	and    %ah,0x69772073(%rip)        # 69b79bf3 <_end+0x6956f3e3>
  407b80:	74 68                	je     407bea <__GNU_EH_FRAME_HDR+0x4a>
  407b82:	6f                   	outsl  %ds:(%rsi),(%dx)
  407b83:	75 74                	jne    407bf9 <__GNU_EH_FRAME_HDR+0x59>
  407b85:	20 62 65             	and    %ah,0x65(%rdx)
  407b88:	69 6e 67 20 69 6e 69 	imul   $0x696e6920,0x67(%rsi),%ebp
  407b8f:	74 69                	je     407bfa <__GNU_EH_FRAME_HDR+0x5a>
  407b91:	61                   	(bad)  
  407b92:	6c                   	insb   (%dx),%es:(%rdi)
  407b93:	69 7a 65 64 00 00 00 	imul   $0x64,0x65(%rdx),%edi
  407b9a:	00 00                	add    %al,(%rax)
  407b9c:	00 00                	add    %al,(%rax)
	...

Disassembly of section .eh_frame_hdr:

0000000000407ba0 <__GNU_EH_FRAME_HDR>:
  407ba0:	01 1b                	add    %ebx,(%rbx)
  407ba2:	03 3b                	add    (%rbx),%edi
  407ba4:	dc 01                	faddl  (%rcx)
  407ba6:	00 00                	add    %al,(%rax)
  407ba8:	3a 00                	cmp    (%rax),%al
  407baa:	00 00                	add    %al,(%rax)
  407bac:	a0 99 ff ff 28 02 00 	movabs 0xa000000228ffff99,%al
  407bb3:	00 a0 
  407bb5:	9c                   	pushfq 
  407bb6:	ff                   	(bad)  
  407bb7:	ff                   	(bad)  
  407bb8:	f8                   	clc    
  407bb9:	01 00                	add    %eax,(%rax)
  407bbb:	00 8d 9d ff ff 70    	add    %cl,0x70ffff9d(%rbp)
  407bc1:	02 00                	add    (%rax),%al
  407bc3:	00 d3                	add    %dl,%bl
  407bc5:	9d                   	popfq  
  407bc6:	ff                   	(bad)  
  407bc7:	ff a8 02 00 00 05    	ljmp   *0x5000002(%rax)
  407bcd:	a0 ff ff d0 02 00 00 	movabs 0xa5d1000002d0ffff,%al
  407bd4:	d1 a5 
  407bd6:	ff                   	(bad)  
  407bd7:	ff 68 03             	ljmp   *0x3(%rax)
  407bda:	00 00                	add    %al,(%rax)
  407bdc:	c0 a7 ff ff 90 03 00 	shlb   $0x0,0x390ffff(%rdi)
  407be3:	00 73 a8             	add    %dh,-0x58(%rbx)
  407be6:	ff                   	(bad)  
  407be7:	ff 00                	incl   (%rax)
  407be9:	04 00                	add    $0x0,%al
  407beb:	00 60 a9             	add    %ah,-0x57(%rax)
  407bee:	ff                   	(bad)  
  407bef:	ff 28                	ljmp   *(%rax)
  407bf1:	04 00                	add    $0x0,%al
  407bf3:	00 81 a9 ff ff 40    	add    %al,0x40ffffa9(%rcx)
  407bf9:	04 00                	add    $0x0,%al
  407bfb:	00 f7                	add    %dh,%bh
  407bfd:	ab                   	stos   %eax,%es:(%rdi)
  407bfe:	ff                   	(bad)  
  407bff:	ff 68 04             	ljmp   *0x4(%rax)
  407c02:	00 00                	add    %al,(%rax)
  407c04:	71 af                	jno    407bb5 <__GNU_EH_FRAME_HDR+0x15>
  407c06:	ff                   	(bad)  
  407c07:	ff 88 04 00 00 b1    	decl   -0x4efffffc(%rax)
  407c0d:	b0 ff                	mov    $0xff,%al
  407c0f:	ff b0 04 00 00 2c    	pushq  0x2c000004(%rax)
  407c15:	b3 ff                	mov    $0xff,%bl
  407c17:	ff                   	(bad)  
  407c18:	d8 04 00             	fadds  (%rax,%rax,1)
  407c1b:	00 c3                	add    %al,%bl
  407c1d:	b5 ff                	mov    $0xff,%ch
  407c1f:	ff f0                	push   %rax
  407c21:	04 00                	add    $0x0,%al
  407c23:	00 a4 b7 ff ff 20 05 	add    %ah,0x520ffff(%rdi,%rsi,4)
  407c2a:	00 00                	add    %al,(%rax)
  407c2c:	1f                   	(bad)  
  407c2d:	ba ff ff 48 05       	mov    $0x548ffff,%edx
  407c32:	00 00                	add    %al,(%rax)
  407c34:	ad                   	lods   %ds:(%rsi),%eax
  407c35:	c5 ff ff             	(bad)  
  407c38:	60                   	(bad)  
  407c39:	05 00 00 28 c8       	add    $0xc8280000,%eax
  407c3e:	ff                   	(bad)  
  407c3f:	ff 88 05 00 00 7b    	decl   0x7b000005(%rax)
  407c45:	d0 ff                	sar    %bh
  407c47:	ff a0 05 00 00 f6    	jmpq   *-0x9fffffb(%rax)
  407c4d:	d2 ff                	sar    %cl,%bh
  407c4f:	ff c8                	dec    %eax
  407c51:	05 00 00 d1 dc       	add    $0xdcd10000,%eax
  407c56:	ff                   	(bad)  
  407c57:	ff e0                	jmpq   *%rax
  407c59:	05 00 00 35 dd       	add    $0xdd350000,%eax
  407c5e:	ff                   	(bad)  
  407c5f:	ff 00                	incl   (%rax)
  407c61:	06                   	(bad)  
  407c62:	00 00                	add    %al,(%rax)
  407c64:	39 dd                	cmp    %ebx,%ebp
  407c66:	ff                   	(bad)  
  407c67:	ff 18                	lcall  *(%rax)
  407c69:	06                   	(bad)  
  407c6a:	00 00                	add    %al,(%rax)
  407c6c:	3d dd ff ff 88       	cmp    $0x88ffffdd,%eax
  407c71:	06                   	(bad)  
  407c72:	00 00                	add    %al,(%rax)
  407c74:	59                   	pop    %rcx
  407c75:	dd ff                	(bad)  
  407c77:	ff d0                	callq  *%rax
  407c79:	06                   	(bad)  
  407c7a:	00 00                	add    %al,(%rax)
  407c7c:	7c dd                	jl     407c5b <__GNU_EH_FRAME_HDR+0xbb>
  407c7e:	ff                   	(bad)  
  407c7f:	ff f0                	push   %rax
  407c81:	02 00                	add    (%rax),%al
  407c83:	00 c4                	add    %al,%ah
  407c85:	dd ff                	(bad)  
  407c87:	ff 08                	decl   (%rax)
  407c89:	03 00                	add    (%rax),%eax
  407c8b:	00 d8                	add    %bl,%al
  407c8d:	dd ff                	(bad)  
  407c8f:	ff 20                	jmpq   *(%rax)
  407c91:	03 00                	add    (%rax),%eax
  407c93:	00 5c de ff          	add    %bl,-0x1(%rsi,%rbx,8)
  407c97:	ff 40 03             	incl   0x3(%rax)
  407c9a:	00 00                	add    %al,(%rax)
  407c9c:	62                   	(bad)  {%k1}
  407c9d:	df ff                	(bad)  
  407c9f:	ff                   	(bad)  
  407ca0:	b8 03 00 00 68       	mov    $0x68000003,%eax
  407ca5:	df ff                	(bad)  
  407ca7:	ff d0                	callq  *%rax
  407ca9:	03 00                	add    (%rax),%eax
  407cab:	00 72 df             	add    %dh,-0x21(%rdx)
  407cae:	ff                   	(bad)  
  407caf:	ff                   	(bad)  
  407cb0:	e8 03 00 00 7c       	callq  7c407cb8 <_end+0x7bdfd4a8>
  407cb5:	df ff                	(bad)  
  407cb7:	ff 30                	pushq  (%rax)
  407cb9:	06                   	(bad)  
  407cba:	00 00                	add    %al,(%rax)
  407cbc:	b8 df ff ff 48       	mov    $0x48ffffdf,%eax
  407cc1:	06                   	(bad)  
  407cc2:	00 00                	add    %al,(%rax)
  407cc4:	20 e0                	and    %ah,%al
  407cc6:	ff                   	(bad)  
  407cc7:	ff 60 06             	jmpq   *0x6(%rax)
  407cca:	00 00                	add    %al,(%rax)
  407ccc:	d4                   	(bad)  
  407ccd:	e0 ff                	loopne 407cce <__GNU_EH_FRAME_HDR+0x12e>
  407ccf:	ff a0 06 00 00 ec    	jmpq   *-0x13fffffa(%rax)
  407cd5:	e0 ff                	loopne 407cd6 <__GNU_EH_FRAME_HDR+0x136>
  407cd7:	ff                   	(bad)  
  407cd8:	b8 06 00 00 ff       	mov    $0xff000006,%eax
  407cdd:	e0 ff                	loopne 407cde <__GNU_EH_FRAME_HDR+0x13e>
  407cdf:	ff                   	(bad)  
  407ce0:	e8 06 00 00 04       	callq  4407ceb <_end+0x3dfd4db>
  407ce5:	e1 ff                	loope  407ce6 <__GNU_EH_FRAME_HDR+0x146>
  407ce7:	ff 00                	incl   (%rax)
  407ce9:	07                   	(bad)  
  407cea:	00 00                	add    %al,(%rax)
  407cec:	0a e1                	or     %cl,%ah
  407cee:	ff                   	(bad)  
  407cef:	ff 18                	lcall  *(%rax)
  407cf1:	07                   	(bad)  
  407cf2:	00 00                	add    %al,(%rax)
  407cf4:	16                   	(bad)  
  407cf5:	e1 ff                	loope  407cf6 <__GNU_EH_FRAME_HDR+0x156>
  407cf7:	ff 30                	pushq  (%rax)
  407cf9:	07                   	(bad)  
  407cfa:	00 00                	add    %al,(%rax)
  407cfc:	84 e1                	test   %ah,%cl
  407cfe:	ff                   	(bad)  
  407cff:	ff 50 07             	callq  *0x7(%rax)
  407d02:	00 00                	add    %al,(%rax)
  407d04:	9e                   	sahf   
  407d05:	e1 ff                	loope  407d06 <__GNU_EH_FRAME_HDR+0x166>
  407d07:	ff 68 07             	ljmp   *0x7(%rax)
  407d0a:	00 00                	add    %al,(%rax)
  407d0c:	a6                   	cmpsb  %es:(%rdi),%ds:(%rsi)
  407d0d:	e1 ff                	loope  407d0e <__GNU_EH_FRAME_HDR+0x16e>
  407d0f:	ff 80 07 00 00 aa    	incl   -0x55fffff9(%rax)
  407d15:	e1 ff                	loope  407d16 <__GNU_EH_FRAME_HDR+0x176>
  407d17:	ff 98 07 00 00 ae    	lcall  *-0x51fffff9(%rax)
  407d1d:	e1 ff                	loope  407d1e <__GNU_EH_FRAME_HDR+0x17e>
  407d1f:	ff b0 07 00 00 c0    	pushq  -0x3ffffff9(%rax)
  407d25:	e1 ff                	loope  407d26 <__GNU_EH_FRAME_HDR+0x186>
  407d27:	ff c8                	dec    %eax
  407d29:	07                   	(bad)  
  407d2a:	00 00                	add    %al,(%rax)
  407d2c:	d0 e1                	shl    %cl
  407d2e:	ff                   	(bad)  
  407d2f:	ff e0                	jmpq   *%rax
  407d31:	07                   	(bad)  
  407d32:	00 00                	add    %al,(%rax)
  407d34:	f0 e1 ff             	lock loope 407d36 <__GNU_EH_FRAME_HDR+0x196>
  407d37:	ff                   	(bad)  
  407d38:	f8                   	clc    
  407d39:	07                   	(bad)  
  407d3a:	00 00                	add    %al,(%rax)
  407d3c:	60                   	(bad)  
  407d3d:	e5 ff                	in     $0xff,%eax
  407d3f:	ff                   	(bad)  
  407d40:	78 08                	js     407d4a <__GNU_EH_FRAME_HDR+0x1aa>
  407d42:	00 00                	add    %al,(%rax)
  407d44:	e0 e7                	loopne 407d2d <__GNU_EH_FRAME_HDR+0x18d>
  407d46:	ff                   	(bad)  
  407d47:	ff d0                	callq  *%rax
  407d49:	08 00                	or     %al,(%rax)
  407d4b:	00 e0                	add    %ah,%al
  407d4d:	ea                   	(bad)  
  407d4e:	ff                   	(bad)  
  407d4f:	ff 40 09             	incl   0x9(%rax)
  407d52:	00 00                	add    %al,(%rax)
  407d54:	f0 ea                	lock (bad) 
  407d56:	ff                   	(bad)  
  407d57:	ff 68 09             	ljmp   *0x9(%rax)
  407d5a:	00 00                	add    %al,(%rax)
  407d5c:	00 eb                	add    %ch,%bl
  407d5e:	ff                   	(bad)  
  407d5f:	ff 90 09 00 00 90    	callq  *-0x6ffffff7(%rax)
  407d65:	ef                   	out    %eax,(%dx)
  407d66:	ff                   	(bad)  
  407d67:	ff 00                	incl   (%rax)
  407d69:	0b 00                	or     (%rax),%eax
  407d6b:	00 80 f0 ff ff 38    	add    %al,0x38fffff0(%rax)
  407d71:	0b 00                	or     (%rax),%eax
  407d73:	00 f0                	add    %dh,%al
  407d75:	f0 ff                	lock (bad) 
  407d77:	ff                   	.byte 0xff
  407d78:	80 0b 00             	orb    $0x0,(%rbx)
	...

Disassembly of section .eh_frame:

0000000000407d80 <.eh_frame_seg-0x70>:
  407d80:	14 00                	adc    $0x0,%al
  407d82:	00 00                	add    %al,(%rax)
  407d84:	00 00                	add    %al,(%rax)
  407d86:	00 00                	add    %al,(%rax)
  407d88:	01 7a 52             	add    %edi,0x52(%rdx)
  407d8b:	00 01                	add    %al,(%rcx)
  407d8d:	78 10                	js     407d9f <__GNU_EH_FRAME_HDR+0x1ff>
  407d8f:	01 1b                	add    %ebx,(%rbx)
  407d91:	0c 07                	or     $0x7,%al
  407d93:	08 90 01 07 10 14    	or     %dl,0x14100701(%rax)
  407d99:	00 00                	add    %al,(%rax)
  407d9b:	00 1c 00             	add    %bl,(%rax,%rax,1)
  407d9e:	00 00                	add    %al,(%rax)
  407da0:	a0 9a ff ff 2a 00 00 	movabs 0x2affff9a,%al
  407da7:	00 00 
  407da9:	00 00                	add    %al,(%rax)
  407dab:	00 00                	add    %al,(%rax)
  407dad:	00 00                	add    %al,(%rax)
  407daf:	00 14 00             	add    %dl,(%rax,%rax,1)
  407db2:	00 00                	add    %al,(%rax)
  407db4:	00 00                	add    %al,(%rax)
  407db6:	00 00                	add    %al,(%rax)
  407db8:	01 7a 52             	add    %edi,0x52(%rdx)
  407dbb:	00 01                	add    %al,(%rcx)
  407dbd:	78 10                	js     407dcf <__GNU_EH_FRAME_HDR+0x22f>
  407dbf:	01 1b                	add    %ebx,(%rbx)
  407dc1:	0c 07                	or     $0x7,%al
  407dc3:	08 90 01 00 00 24    	or     %dl,0x24000001(%rax)
  407dc9:	00 00                	add    %al,(%rax)
  407dcb:	00 1c 00             	add    %bl,(%rax,%rax,1)
  407dce:	00 00                	add    %al,(%rax)
  407dd0:	70 97                	jo     407d69 <__GNU_EH_FRAME_HDR+0x1c9>
  407dd2:	ff                   	(bad)  
  407dd3:	ff f0                	push   %rax
  407dd5:	02 00                	add    (%rax),%al
  407dd7:	00 00                	add    %al,(%rax)
  407dd9:	0e                   	(bad)  
  407dda:	10 46 0e             	adc    %al,0xe(%rsi)
  407ddd:	18 4a 0f             	sbb    %cl,0xf(%rdx)
  407de0:	0b 77 08             	or     0x8(%rdi),%esi
  407de3:	80 00 3f             	addb   $0x3f,(%rax)
  407de6:	1a 3b                	sbb    (%rbx),%bh
  407de8:	2a 33                	sub    (%rbx),%dh
  407dea:	24 22                	and    $0x22,%al
  407dec:	00 00                	add    %al,(%rax)
	...

0000000000407df0 <.eh_frame_seg>:
  407df0:	1c 00                	sbb    $0x0,%al
  407df2:	00 00                	add    %al,(%rax)
  407df4:	00 00                	add    %al,(%rax)
  407df6:	00 00                	add    %al,(%rax)
  407df8:	01 7a 50             	add    %edi,0x50(%rdx)
  407dfb:	52                   	push   %rdx
  407dfc:	00 01                	add    %al,(%rcx)
  407dfe:	78 10                	js     407e10 <.eh_frame_seg+0x20>
  407e00:	06                   	(bad)  
  407e01:	03 80 17 40 00 1b    	add    0x1b004017(%rax),%eax
  407e07:	0c 07                	or     $0x7,%al
  407e09:	08 90 01 00 00 00    	or     %dl,0x1(%rax)
  407e0f:	00 14 00             	add    %dl,(%rax,%rax,1)
  407e12:	00 00                	add    %al,(%rax)
  407e14:	24 00                	and    $0x0,%al
  407e16:	00 00                	add    %al,(%rax)
  407e18:	15 9b ff ff 46       	adc    $0x46ffff9b,%eax
  407e1d:	00 00                	add    %al,(%rax)
  407e1f:	00 00                	add    %al,(%rax)
  407e21:	41 0e                	rex.B (bad) 
  407e23:	10 02                	adc    %al,(%rdx)
  407e25:	44 0e                	rex.R (bad) 
  407e27:	08 1c 00             	or     %bl,(%rax,%rax,1)
  407e2a:	00 00                	add    %al,(%rax)
  407e2c:	00 00                	add    %al,(%rax)
  407e2e:	00 00                	add    %al,(%rax)
  407e30:	01 7a 50             	add    %edi,0x50(%rdx)
  407e33:	4c 52                	rex.WR push %rdx
  407e35:	00 01                	add    %al,(%rcx)
  407e37:	78 10                	js     407e49 <.eh_frame_seg+0x59>
  407e39:	07                   	(bad)  
  407e3a:	03 80 17 40 00 0b    	add    0xb004017(%rax),%eax
  407e40:	1b 0c 07             	sbb    (%rdi,%rax,1),%ecx
  407e43:	08 90 01 00 00 24    	or     %dl,0x24000001(%rax)
  407e49:	00 00                	add    %al,(%rax)
  407e4b:	00 24 00             	add    %ah,(%rax,%rax,1)
  407e4e:	00 00                	add    %al,(%rax)
  407e50:	23 9b ff ff 32 02    	and    0x232ffff(%rbx),%ebx
  407e56:	00 00                	add    %al,(%rax)
  407e58:	04 3c                	add    $0x3c,%al
  407e5a:	87 40 00             	xchg   %eax,0x0(%rax)
  407e5d:	47 0e                	rex.RXB (bad) 
  407e5f:	c0 01 50             	rolb   $0x50,(%rcx)
  407e62:	83 03 8f             	addl   $0xffffff8f,(%rbx)
  407e65:	02 03                	add    (%rbx),%al
  407e67:	d4                   	(bad)  
  407e68:	01 0e                	add    %ecx,(%rsi)
  407e6a:	08 41 0e             	or     %al,0xe(%rcx)
  407e6d:	c0 01 00             	rolb   $0x0,(%rcx)
  407e70:	1c 00                	sbb    $0x0,%al
  407e72:	00 00                	add    %al,(%rax)
  407e74:	84 00                	test   %al,(%rax)
  407e76:	00 00                	add    %al,(%rax)
  407e78:	2d 9d ff ff cc       	sub    $0xccffff9d,%eax
  407e7d:	05 00 00 00 6d       	add    $0x6d000000,%eax
  407e82:	83 03 86             	addl   $0xffffff86,(%rbx)
  407e85:	02 8c 04 8d 05 8e 06 	add    0x68e058d(%rsp,%rax,1),%cl
  407e8c:	8f 07                	popq   (%rdi)
  407e8e:	00 00                	add    %al,(%rax)
  407e90:	14 00                	adc    $0x0,%al
  407e92:	00 00                	add    %al,(%rax)
  407e94:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
  407e95:	00 00                	add    %al,(%rax)
  407e97:	00 84 da ff ff 48 00 	add    %al,0x48ffff(%rdx,%rbx,8)
	...
  407ea6:	00 00                	add    %al,(%rax)
  407ea8:	14 00                	adc    $0x0,%al
  407eaa:	00 00                	add    %al,(%rax)
  407eac:	bc 00 00 00 b4       	mov    $0xb4000000,%esp
  407eb1:	da ff                	(bad)  
  407eb3:	ff 14 00             	callq  *(%rax,%rax,1)
	...
  407ebe:	00 00                	add    %al,(%rax)
  407ec0:	1c 00                	sbb    $0x0,%al
  407ec2:	00 00                	add    %al,(%rax)
  407ec4:	d4                   	(bad)  
  407ec5:	00 00                	add    %al,(%rax)
  407ec7:	00 b0 da ff ff 84    	add    %dh,-0x7b000026(%rax)
  407ecd:	00 00                	add    %al,(%rax)
  407ecf:	00 00                	add    %al,(%rax)
  407ed1:	44 0e                	rex.R (bad) 
  407ed3:	20 4e 8c             	and    %cl,-0x74(%rsi)
  407ed6:	02 8d 03 8e 04 02    	add    0x2048e03(%rbp),%cl
  407edc:	71 0e                	jno    407eec <.eh_frame_seg+0xfc>
  407ede:	08 00                	or     %al,(%rax)
  407ee0:	24 00                	and    $0x0,%al
  407ee2:	00 00                	add    %al,(%rax)
  407ee4:	f4                   	hlt    
  407ee5:	00 00                	add    %al,(%rax)
  407ee7:	00 14 db             	add    %dl,(%rbx,%rbx,8)
  407eea:	ff                   	(bad)  
  407eeb:	ff 06                	incl   (%rsi)
  407eed:	01 00                	add    %eax,(%rax)
  407eef:	00 00                	add    %al,(%rax)
  407ef1:	47 0e                	rex.RXB (bad) 
  407ef3:	a0 08 4f 83 81 01 8e 	movabs 0x8f7f8e0181834f08,%al
  407efa:	7f 8f 
  407efc:	80 01 02             	addb   $0x2,(%rcx)
  407eff:	ef                   	out    %eax,(%dx)
  407f00:	0e                   	(bad)  
  407f01:	08 00                	or     %al,(%rax)
  407f03:	00 00                	add    %al,(%rax)
  407f05:	00 00                	add    %al,(%rax)
  407f07:	00 24 00             	add    %ah,(%rax,%rax,1)
  407f0a:	00 00                	add    %al,(%rax)
  407f0c:	1c 01                	sbb    $0x1,%al
  407f0e:	00 00                	add    %al,(%rax)
  407f10:	61                   	(bad)  
  407f11:	a2 ff ff ef 01 00 00 	movabs %al,0x4400000001efffff
  407f18:	00 44 
  407f1a:	0e                   	(bad)  
  407f1b:	40 59                	rex pop %rcx
  407f1d:	83 06 86             	addl   $0xffffff86,(%rsi)
  407f20:	07                   	(bad)  
  407f21:	8d 03                	lea    (%rbx),%eax
  407f23:	8e 04 8f             	mov    (%rdi,%rcx,4),%es
  407f26:	05 03 d1 01 0e       	add    $0xe01d103,%eax
  407f2b:	08 00                	or     %al,(%rax)
  407f2d:	00 00                	add    %al,(%rax)
  407f2f:	00 24 00             	add    %ah,(%rax,%rax,1)
  407f32:	00 00                	add    %al,(%rax)
  407f34:	44 01 00             	add    %r8d,(%rax)
  407f37:	00 28                	add    %ch,(%rax)
  407f39:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
  407f3a:	ff                   	(bad)  
  407f3b:	ff b3 00 00 00 00    	pushq  0x0(%rbx)
  407f41:	44 0e                	rex.R (bad) 
  407f43:	30 53 8c             	xor    %dl,-0x74(%rbx)
  407f46:	03 8d 04 8e 05 8f    	add    -0x70fa71fc(%rbp),%ecx
  407f4c:	06                   	(bad)  
  407f4d:	02 9b 0e 08 00 00    	add    0x80e(%rbx),%bl
  407f53:	00 00                	add    %al,(%rax)
  407f55:	00 00                	add    %al,(%rax)
  407f57:	00 14 00             	add    %dl,(%rax,%rax,1)
  407f5a:	00 00                	add    %al,(%rax)
  407f5c:	6c                   	insb   (%dx),%es:(%rdi)
  407f5d:	01 00                	add    %eax,(%rax)
  407f5f:	00 a2 db ff ff 06    	add    %ah,0x6ffffdb(%rdx)
	...
  407f6d:	00 00                	add    %al,(%rax)
  407f6f:	00 14 00             	add    %dl,(%rax,%rax,1)
  407f72:	00 00                	add    %al,(%rax)
  407f74:	84 01                	test   %al,(%rcx)
  407f76:	00 00                	add    %al,(%rax)
  407f78:	90                   	nop
  407f79:	db ff                	(bad)  
  407f7b:	ff 0a                	decl   (%rdx)
	...
  407f85:	00 00                	add    %al,(%rax)
  407f87:	00 14 00             	add    %dl,(%rax,%rax,1)
  407f8a:	00 00                	add    %al,(%rax)
  407f8c:	9c                   	pushfq 
  407f8d:	01 00                	add    %eax,(%rax)
  407f8f:	00 82 db ff ff 0a    	add    %al,0xaffffdb(%rdx)
	...
  407f9d:	00 00                	add    %al,(%rax)
  407f9f:	00 24 00             	add    %ah,(%rax,%rax,1)
  407fa2:	00 00                	add    %al,(%rax)
  407fa4:	b4 01                	mov    $0x1,%ah
  407fa6:	00 00                	add    %al,(%rax)
  407fa8:	6b a4 ff ff ed 00 00 	imul   $0x0,0xedff(%rdi,%rdi,8),%esp
  407faf:	00 
  407fb0:	00 44 0e 60          	add    %al,0x60(%rsi,%rcx,1)
  407fb4:	5e                   	pop    %rsi
  407fb5:	83 06 86             	addl   $0xffffff86,(%rsi)
  407fb8:	07                   	(bad)  
  407fb9:	8c 02                	mov    %es,(%rdx)
  407fbb:	8d 03                	lea    (%rbx),%eax
  407fbd:	8e 04 8f             	mov    (%rdi,%rcx,4),%es
  407fc0:	05 02 ca 0e 08       	add    $0x80eca02,%eax
  407fc5:	00 00                	add    %al,(%rax)
  407fc7:	00 14 00             	add    %dl,(%rax,%rax,1)
  407fca:	00 00                	add    %al,(%rax)
  407fcc:	dc 01                	faddl  (%rcx)
  407fce:	00 00                	add    %al,(%rax)
  407fd0:	30 a5 ff ff 21 00    	xor    %ah,0x21ffff(%rbp)
	...
  407fde:	00 00                	add    %al,(%rax)
  407fe0:	24 00                	and    $0x0,%al
  407fe2:	00 00                	add    %al,(%rax)
  407fe4:	bc 01 00 00 39       	mov    $0x39000001,%esp
  407fe9:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
  407fea:	ff                   	(bad)  
  407feb:	ff 76 02             	pushq  0x2(%rsi)
  407fee:	00 00                	add    %al,(%rax)
  407ff0:	04 6c                	add    $0x6c,%al
  407ff2:	87 40 00             	xchg   %eax,0x0(%rax)
  407ff5:	47 0e                	rex.RXB (bad) 
  407ff7:	d0 01                	rolb   (%rcx)
  407ff9:	50                   	push   %rax
  407ffa:	86 03                	xchg   %al,(%rbx)
  407ffc:	8c 04 03             	mov    %es,(%rbx,%rax,1)
  407fff:	01 02                	add    %eax,(%rdx)
  408001:	0e                   	(bad)  
  408002:	08 41 0e             	or     %al,0xe(%rcx)
  408005:	d0 01                	rolb   (%rcx)
  408007:	00 1c 00             	add    %bl,(%rax,%rax,1)
  40800a:	00 00                	add    %al,(%rax)
  40800c:	1c 02                	sbb    $0x2,%al
  40800e:	00 00                	add    %al,(%rax)
  408010:	87 a7 ff ff 7a 03    	xchg   %esp,0x37affff(%rdi)
  408016:	00 00                	add    %al,(%rax)
  408018:	00 57 8c             	add    %dl,-0x74(%rdi)
  40801b:	03 8d 04 8e 05 8f    	add    -0x70fa71fc(%rbp),%ecx
  408021:	06                   	(bad)  
  408022:	00 00                	add    %al,(%rax)
  408024:	00 00                	add    %al,(%rax)
  408026:	00 00                	add    %al,(%rax)
  408028:	24 00                	and    $0x0,%al
  40802a:	00 00                	add    %al,(%rax)
  40802c:	04 02                	add    $0x2,%al
  40802e:	00 00                	add    %al,(%rax)
  408030:	e1 aa                	loope  407fdc <.eh_frame_seg+0x1ec>
  408032:	ff                   	(bad)  
  408033:	ff 40 01             	incl   0x1(%rax)
  408036:	00 00                	add    %al,(%rax)
  408038:	04 a4                	add    $0xa4,%al
  40803a:	87 40 00             	xchg   %eax,0x0(%rax)
  40803d:	44 0e                	rex.R (bad) 
  40803f:	30 54 83 02          	xor    %dl,0x2(%rbx,%rax,4)
  408043:	86 03                	xchg   %al,(%rbx)
  408045:	8c 04 8d 05 02 e6 0e 	mov    %es,0xee60205(,%rcx,4)
  40804c:	08 41 0e             	or     %al,0xe(%rcx)
  40804f:	30 24 00             	xor    %ah,(%rax,%rax,1)
  408052:	00 00                	add    %al,(%rax)
  408054:	2c 02                	sub    $0x2,%al
  408056:	00 00                	add    %al,(%rax)
  408058:	f9                   	stc    
  408059:	ab                   	stos   %eax,%es:(%rdi)
  40805a:	ff                   	(bad)  
  40805b:	ff                   	(bad)  
  40805c:	7b 02                	jnp    408060 <.eh_frame_seg+0x270>
  40805e:	00 00                	add    %al,(%rax)
  408060:	04 c8                	add    $0xc8,%al
  408062:	87 40 00             	xchg   %eax,0x0(%rax)
  408065:	47 0e                	rex.RXB (bad) 
  408067:	d0 01                	rolb   (%rcx)
  408069:	50                   	push   %rax
  40806a:	86 03                	xchg   %al,(%rbx)
  40806c:	8c 04 03             	mov    %es,(%rbx,%rax,1)
  40806f:	06                   	(bad)  
  408070:	02 0e                	add    (%rsi),%cl
  408072:	08 41 0e             	or     %al,0xe(%rcx)
  408075:	d0 01                	rolb   (%rcx)
  408077:	00 14 00             	add    %dl,(%rax,%rax,1)
  40807a:	00 00                	add    %al,(%rax)
  40807c:	8c 02                	mov    %es,(%rdx)
  40807e:	00 00                	add    %al,(%rax)
  408080:	4c ae                	rex.WR scas %es:(%rdi),%al
  408082:	ff                   	(bad)  
  408083:	ff 97 02 00 00 00    	callq  *0x2(%rdi)
  408089:	54                   	push   %rsp
  40808a:	8c 03                	mov    %es,(%rbx)
  40808c:	00 00                	add    %al,(%rax)
  40808e:	00 00                	add    %al,(%rax)
  408090:	2c 00                	sub    $0x0,%al
  408092:	00 00                	add    %al,(%rax)
  408094:	6c                   	insb   (%dx),%es:(%rdi)
  408095:	02 00                	add    (%rax),%al
  408097:	00 cb                	add    %cl,%bl
  408099:	b0 ff                	mov    $0xff,%al
  40809b:	ff e1                	jmpq   *%rcx
  40809d:	01 00                	add    %eax,(%rax)
  40809f:	00 04 00             	add    %al,(%rax,%rax,1)
  4080a2:	88 40 00             	mov    %al,0x0(%rax)
  4080a5:	44 0e                	rex.R (bad) 
  4080a7:	80 01 5e             	addb   $0x5e,(%rcx)
  4080aa:	83 04 86 05          	addl   $0x5,(%rsi,%rax,4)
  4080ae:	8c 06                	mov    %es,(%rsi)
  4080b0:	8d 07                	lea    (%rdi),%eax
  4080b2:	8e 02                	mov    (%rdx),%es
  4080b4:	8f 03                	popq   (%rbx)
  4080b6:	03 76 01             	add    0x1(%rsi),%esi
  4080b9:	0e                   	(bad)  
  4080ba:	08 41 0e             	or     %al,0xe(%rcx)
  4080bd:	80 01 00             	addb   $0x0,(%rcx)
  4080c0:	24 00                	and    $0x0,%al
  4080c2:	00 00                	add    %al,(%rax)
  4080c4:	9c                   	pushfq 
  4080c5:	02 00                	add    (%rax),%al
  4080c7:	00 7c b2 ff          	add    %bh,-0x1(%rdx,%rsi,4)
  4080cb:	ff                   	(bad)  
  4080cc:	7b 02                	jnp    4080d0 <.eh_frame_seg+0x2e0>
  4080ce:	00 00                	add    %al,(%rax)
  4080d0:	04 24                	add    $0x24,%al
  4080d2:	88 40 00             	mov    %al,0x0(%rax)
  4080d5:	47 0e                	rex.RXB (bad) 
  4080d7:	d0 01                	rolb   (%rcx)
  4080d9:	50                   	push   %rax
  4080da:	86 03                	xchg   %al,(%rbx)
  4080dc:	8c 04 03             	mov    %es,(%rbx,%rax,1)
  4080df:	06                   	(bad)  
  4080e0:	02 0e                	add    (%rsi),%cl
  4080e2:	08 41 0e             	or     %al,0xe(%rcx)
  4080e5:	d0 01                	rolb   (%rcx)
  4080e7:	00 14 00             	add    %dl,(%rax,%rax,1)
  4080ea:	00 00                	add    %al,(%rax)
  4080ec:	fc                   	cld    
  4080ed:	02 00                	add    (%rax),%al
  4080ef:	00 cf                	add    %cl,%bh
  4080f1:	b4 ff                	mov    $0xff,%ah
  4080f3:	ff 8e 0b 00 00 00    	decl   0xb(%rsi)
  4080f9:	54                   	push   %rsp
  4080fa:	8c 03                	mov    %es,(%rbx)
  4080fc:	00 00                	add    %al,(%rax)
  4080fe:	00 00                	add    %al,(%rax)
  408100:	24 00                	and    $0x0,%al
  408102:	00 00                	add    %al,(%rax)
  408104:	dc 02                	faddl  (%rdx)
  408106:	00 00                	add    %al,(%rax)
  408108:	45 c0 ff ff          	rex.RB sar $0xff,%r15b
  40810c:	7b 02                	jnp    408110 <.eh_frame_seg+0x320>
  40810e:	00 00                	add    %al,(%rax)
  408110:	04 5c                	add    $0x5c,%al
  408112:	88 40 00             	mov    %al,0x0(%rax)
  408115:	47 0e                	rex.RXB (bad) 
  408117:	d0 01                	rolb   (%rcx)
  408119:	50                   	push   %rax
  40811a:	86 03                	xchg   %al,(%rbx)
  40811c:	8c 04 03             	mov    %es,(%rbx,%rax,1)
  40811f:	06                   	(bad)  
  408120:	02 0e                	add    (%rsi),%cl
  408122:	08 41 0e             	or     %al,0xe(%rcx)
  408125:	d0 01                	rolb   (%rcx)
  408127:	00 14 00             	add    %dl,(%rax,%rax,1)
  40812a:	00 00                	add    %al,(%rax)
  40812c:	3c 03                	cmp    $0x3,%al
  40812e:	00 00                	add    %al,(%rax)
  408130:	98                   	cwtl   
  408131:	c2 ff ff             	retq   $0xffff
  408134:	53                   	push   %rbx
  408135:	08 00                	or     %al,(%rax)
	...
  40813f:	00 24 00             	add    %ah,(%rax,%rax,1)
  408142:	00 00                	add    %al,(%rax)
  408144:	1c 03                	sbb    $0x3,%al
  408146:	00 00                	add    %al,(%rax)
  408148:	d3 ca                	ror    %cl,%edx
  40814a:	ff                   	(bad)  
  40814b:	ff                   	(bad)  
  40814c:	7b 02                	jnp    408150 <.eh_frame_seg+0x360>
  40814e:	00 00                	add    %al,(%rax)
  408150:	04 94                	add    $0x94,%al
  408152:	88 40 00             	mov    %al,0x0(%rax)
  408155:	47 0e                	rex.RXB (bad) 
  408157:	d0 01                	rolb   (%rcx)
  408159:	50                   	push   %rax
  40815a:	86 03                	xchg   %al,(%rbx)
  40815c:	8c 04 03             	mov    %es,(%rbx,%rax,1)
  40815f:	06                   	(bad)  
  408160:	02 0e                	add    (%rsi),%cl
  408162:	08 41 0e             	or     %al,0xe(%rcx)
  408165:	d0 01                	rolb   (%rcx)
  408167:	00 14 00             	add    %dl,(%rax,%rax,1)
  40816a:	00 00                	add    %al,(%rax)
  40816c:	7c 03                	jl     408171 <.eh_frame_seg+0x381>
  40816e:	00 00                	add    %al,(%rax)
  408170:	26 cd ff             	es int $0xff
  408173:	ff                   	(bad)  
  408174:	db 09                	fisttpl (%rcx)
	...
  40817e:	00 00                	add    %al,(%rax)
  408180:	1c 00                	sbb    $0x0,%al
  408182:	00 00                	add    %al,(%rax)
  408184:	94                   	xchg   %eax,%esp
  408185:	03 00                	add    (%rax),%eax
  408187:	00 e9                	add    %ch,%cl
  408189:	d6                   	(bad)  
  40818a:	ff                   	(bad)  
  40818b:	ff 64 00 00          	jmpq   *0x0(%rax,%rax,1)
  40818f:	00 00                	add    %al,(%rax)
  408191:	44 0e                	rex.R (bad) 
  408193:	20 4e 8d             	and    %cl,-0x73(%rsi)
  408196:	02 8e 03 8f 04 02    	add    0x2048f03(%rsi),%cl
  40819c:	51                   	push   %rcx
  40819d:	0e                   	(bad)  
  40819e:	08 00                	or     %al,(%rax)
  4081a0:	14 00                	adc    $0x0,%al
  4081a2:	00 00                	add    %al,(%rax)
  4081a4:	b4 03                	mov    $0x3,%ah
  4081a6:	00 00                	add    %al,(%rax)
  4081a8:	2d d7 ff ff 04       	sub    $0x4ffffd7,%eax
	...
  4081b5:	00 00                	add    %al,(%rax)
  4081b7:	00 14 00             	add    %dl,(%rax,%rax,1)
  4081ba:	00 00                	add    %al,(%rax)
  4081bc:	cc                   	int3   
  4081bd:	03 00                	add    (%rax),%eax
  4081bf:	00 19                	add    %bl,(%rcx)
  4081c1:	d7                   	xlat   %ds:(%rbx)
  4081c2:	ff                   	(bad)  
  4081c3:	ff 04 00             	incl   (%rax,%rax,1)
	...
  4081ce:	00 00                	add    %al,(%rax)
  4081d0:	14 00                	adc    $0x0,%al
  4081d2:	00 00                	add    %al,(%rax)
  4081d4:	e4 03                	in     $0x3,%al
  4081d6:	00 00                	add    %al,(%rax)
  4081d8:	44 d9 ff             	rex.R fcos 
  4081db:	ff                   	(bad)  
  4081dc:	3c 00                	cmp    $0x0,%al
	...
  4081e6:	00 00                	add    %al,(%rax)
  4081e8:	14 00                	adc    $0x0,%al
  4081ea:	00 00                	add    %al,(%rax)
  4081ec:	fc                   	cld    
  4081ed:	03 00                	add    (%rax),%eax
  4081ef:	00 68 d9             	add    %ch,-0x27(%rax)
  4081f2:	ff                   	(bad)  
  4081f3:	ff 68 00             	ljmp   *0x0(%rax)
	...
  4081fe:	00 00                	add    %al,(%rax)
  408200:	24 00                	and    $0x0,%al
  408202:	00 00                	add    %al,(%rax)
  408204:	dc 03                	faddl  (%rbx)
  408206:	00 00                	add    %al,(%rax)
  408208:	b8 d9 ff ff b4       	mov    $0xb4ffffd9,%eax
  40820d:	00 00                	add    %al,(%rax)
  40820f:	00 04 cc             	add    %al,(%rsp,%rcx,8)
  408212:	88 40 00             	mov    %al,0x0(%rax)
  408215:	44 0e                	rex.R (bad) 
  408217:	30 4a 8f             	xor    %cl,-0x71(%rdx)
  40821a:	03 02                	add    (%rdx),%eax
  40821c:	5b                   	pop    %rbx
  40821d:	0e                   	(bad)  
  40821e:	08 41 0e             	or     %al,0xe(%rcx)
  408221:	30 00                	xor    %al,(%rax)
  408223:	00 00                	add    %al,(%rax)
  408225:	00 00                	add    %al,(%rax)
  408227:	00 14 00             	add    %dl,(%rax,%rax,1)
  40822a:	00 00                	add    %al,(%rax)
  40822c:	3c 04                	cmp    $0x4,%al
  40822e:	00 00                	add    %al,(%rax)
  408230:	ad                   	lods   %ds:(%rsi),%eax
  408231:	d6                   	(bad)  
  408232:	ff                   	(bad)  
  408233:	ff 1c 00             	lcall  *(%rax,%rax,1)
	...
  40823e:	00 00                	add    %al,(%rax)
  408240:	14 00                	adc    $0x0,%al
  408242:	00 00                	add    %al,(%rax)
  408244:	54                   	push   %rsp
  408245:	04 00                	add    $0x0,%al
  408247:	00 2c da             	add    %ch,(%rdx,%rbx,8)
  40824a:	ff                   	(bad)  
  40824b:	ff 18                	lcall  *(%rax)
	...
  408255:	00 00                	add    %al,(%rax)
  408257:	00 14 00             	add    %dl,(%rax,%rax,1)
  40825a:	00 00                	add    %al,(%rax)
  40825c:	6c                   	insb   (%dx),%es:(%rdi)
  40825d:	04 00                	add    $0x0,%al
  40825f:	00 2c da             	add    %ch,(%rdx,%rbx,8)
  408262:	ff                   	(bad)  
  408263:	ff 13                	callq  *(%rbx)
	...
  40826d:	00 00                	add    %al,(%rax)
  40826f:	00 14 00             	add    %dl,(%rax,%rax,1)
  408272:	00 00                	add    %al,(%rax)
  408274:	84 04 00             	test   %al,(%rax,%rax,1)
  408277:	00 81 d6 ff ff 23    	add    %al,0x23ffffd6(%rcx)
  40827d:	00 00                	add    %al,(%rax)
  40827f:	00 00                	add    %al,(%rax)
  408281:	41 0e                	rex.B (bad) 
  408283:	10 5d 0e             	adc    %bl,0xe(%rbp)
  408286:	08 00                	or     %al,(%rax)
  408288:	14 00                	adc    $0x0,%al
  40828a:	00 00                	add    %al,(%rax)
  40828c:	9c                   	pushfq 
  40828d:	04 00                	add    $0x0,%al
  40828f:	00 0f                	add    %cl,(%rdi)
  408291:	da ff                	(bad)  
  408293:	ff 05 00 00 00 00    	incl   0x0(%rip)        # 408299 <.eh_frame_seg+0x4a9>
  408299:	00 00                	add    %al,(%rax)
  40829b:	00 00                	add    %al,(%rax)
  40829d:	00 00                	add    %al,(%rax)
  40829f:	00 14 00             	add    %dl,(%rax,%rax,1)
  4082a2:	00 00                	add    %al,(%rax)
  4082a4:	b4 04                	mov    $0x4,%ah
  4082a6:	00 00                	add    %al,(%rax)
  4082a8:	fc                   	cld    
  4082a9:	d9 ff                	fcos   
  4082ab:	ff 05 00 00 00 00    	incl   0x0(%rip)        # 4082b1 <.eh_frame_seg+0x4c1>
  4082b1:	00 00                	add    %al,(%rax)
  4082b3:	00 00                	add    %al,(%rax)
  4082b5:	00 00                	add    %al,(%rax)
  4082b7:	00 14 00             	add    %dl,(%rax,%rax,1)
  4082ba:	00 00                	add    %al,(%rax)
  4082bc:	cc                   	int3   
  4082bd:	04 00                	add    $0x0,%al
  4082bf:	00 ea                	add    %ch,%dl
  4082c1:	d9 ff                	fcos   
  4082c3:	ff 0c 00             	decl   (%rax,%rax,1)
  4082c6:	00 00                	add    %al,(%rax)
  4082c8:	00 41 0e             	add    %al,0xe(%rcx)
  4082cb:	10 49 0e             	adc    %cl,0xe(%rcx)
  4082ce:	08 00                	or     %al,(%rax)
  4082d0:	1c 00                	sbb    $0x0,%al
  4082d2:	00 00                	add    %al,(%rax)
  4082d4:	e4 04                	in     $0x4,%al
  4082d6:	00 00                	add    %al,(%rax)
  4082d8:	de d9                	fcompp 
  4082da:	ff                   	(bad)  
  4082db:	ff 6e 00             	ljmp   *0x0(%rsi)
  4082de:	00 00                	add    %al,(%rax)
  4082e0:	00 44 0e 20          	add    %al,0x20(%rsi,%rcx,1)
  4082e4:	4e 8e 03             	rex.WRX mov (%rbx),%es
  4082e7:	8f 04 02             	popq   (%rdx,%rax,1)
  4082ea:	5b                   	pop    %rbx
  4082eb:	0e                   	(bad)  
  4082ec:	08 00                	or     %al,(%rax)
  4082ee:	00 00                	add    %al,(%rax)
  4082f0:	14 00                	adc    $0x0,%al
  4082f2:	00 00                	add    %al,(%rax)
  4082f4:	04 05                	add    $0x5,%al
  4082f6:	00 00                	add    %al,(%rax)
  4082f8:	2c da                	sub    $0xda,%al
  4082fa:	ff                   	(bad)  
  4082fb:	ff 1a                	lcall  *(%rdx)
  4082fd:	00 00                	add    %al,(%rax)
  4082ff:	00 00                	add    %al,(%rax)
  408301:	44 0e                	rex.R (bad) 
  408303:	20 55 0e             	and    %dl,0xe(%rbp)
  408306:	08 00                	or     %al,(%rax)
  408308:	14 00                	adc    $0x0,%al
  40830a:	00 00                	add    %al,(%rax)
  40830c:	1c 05                	sbb    $0x5,%al
  40830e:	00 00                	add    %al,(%rax)
  408310:	2e da ff             	cs (bad) 
  408313:	ff 08                	decl   (%rax)
	...
  40831d:	00 00                	add    %al,(%rax)
  40831f:	00 14 00             	add    %dl,(%rax,%rax,1)
  408322:	00 00                	add    %al,(%rax)
  408324:	34 05                	xor    $0x5,%al
  408326:	00 00                	add    %al,(%rax)
  408328:	1e                   	(bad)  
  408329:	da ff                	(bad)  
  40832b:	ff 04 00             	incl   (%rax,%rax,1)
	...
  408336:	00 00                	add    %al,(%rax)
  408338:	14 00                	adc    $0x0,%al
  40833a:	00 00                	add    %al,(%rax)
  40833c:	4c 05 00 00 0a da    	rex.WR add $0xffffffffda0a0000,%rax
  408342:	ff                   	(bad)  
  408343:	ff 04 00             	incl   (%rax,%rax,1)
	...
  40834e:	00 00                	add    %al,(%rax)
  408350:	14 00                	adc    $0x0,%al
  408352:	00 00                	add    %al,(%rax)
  408354:	64 05 00 00 f6 d9    	fs add $0xd9f60000,%eax
  40835a:	ff                   	(bad)  
  40835b:	ff 04 00             	incl   (%rax,%rax,1)
	...
  408366:	00 00                	add    %al,(%rax)
  408368:	14 00                	adc    $0x0,%al
  40836a:	00 00                	add    %al,(%rax)
  40836c:	bc 05 00 00 f0       	mov    $0xf0000005,%esp
  408371:	d9 ff                	fcos   
  408373:	ff 10                	callq  *(%rax)
	...
  40837d:	00 00                	add    %al,(%rax)
  40837f:	00 14 00             	add    %dl,(%rax,%rax,1)
  408382:	00 00                	add    %al,(%rax)
  408384:	d4                   	(bad)  
  408385:	05 00 00 e8 d9       	add    $0xd9e80000,%eax
  40838a:	ff                   	(bad)  
  40838b:	ff 20                	jmpq   *(%rax)
	...
  408395:	00 00                	add    %al,(%rax)
  408397:	00 7c 00 00          	add    %bh,0x0(%rax,%rax,1)
  40839b:	00 ec                	add    %ch,%ah
  40839d:	05 00 00 f0 d9       	add    $0xd9f00000,%eax
  4083a2:	ff                   	(bad)  
  4083a3:	ff 70 03             	pushq  0x3(%rax)
  4083a6:	00 00                	add    %al,(%rax)
  4083a8:	00 42 0e             	add    %al,0xe(%rdx)
  4083ab:	10 8c 02 42 0e 18 8d 	adc    %cl,-0x72e7f1be(%rdx,%rax,1)
  4083b2:	03 42 0e             	add    0xe(%rdx),%eax
  4083b5:	20 8e 04 42 0e 28    	and    %cl,0x280e4204(%rsi)
  4083bb:	8f 05 47 0e e0 08    	popq   0x8e00e47(%rip)        # 9209208 <_end+0x8bfe9f8>
  4083c1:	02 80 83 89 01 86    	add    -0x79fe767d(%rax),%al
  4083c7:	8a 01                	mov    (%rcx),%al
  4083c9:	03 39                	add    (%rcx),%edi
  4083cb:	01 c3                	add    %eax,%ebx
  4083cd:	45 c6 45 83 89       	rex.RB movb $0x89,-0x7d(%r13)
  4083d2:	01 86 8a 01 02 5c    	add    %eax,0x5c02018a(%rsi)
  4083d8:	c3                   	retq   
  4083d9:	c6                   	(bad)  
  4083da:	6d                   	insl   (%dx),%es:(%rdi)
  4083db:	83 89 01 86 8a 01 7c 	orl    $0x7c,0x18a8601(%rcx)
  4083e2:	c3                   	retq   
  4083e3:	c6                   	(bad)  
  4083e4:	6a 0e                	pushq  $0xe
  4083e6:	28 cf                	sub    %cl,%bh
  4083e8:	42 0e                	rex.X (bad) 
  4083ea:	20 ce                	and    %cl,%dh
  4083ec:	42 0e                	rex.X (bad) 
  4083ee:	18 cd                	sbb    %cl,%ch
  4083f0:	42 0e                	rex.X (bad) 
  4083f2:	10 cc                	adc    %cl,%ah
  4083f4:	42 0e                	rex.X (bad) 
  4083f6:	08 41 0e             	or     %al,0xe(%rcx)
  4083f9:	e0 08                	loopne 408403 <.eh_frame_seg+0x613>
  4083fb:	83 89 01 86 8a 01 8c 	orl    $0xffffff8c,0x18a8601(%rcx)
  408402:	02 8d 03 8e 04 8f    	add    -0x70fb71fd(%rbp),%cl
  408408:	05 63 c3 45 c6       	add    $0xc645c363,%eax
  40840d:	4a 83 89 01 86 8a 01 	rex.WX orq $0x45,0x18a8601(%rcx)
  408414:	45 
  408415:	c3                   	retq   
  408416:	45 c6                	rex.RB (bad) 
  408418:	54                   	push   %rsp
  408419:	00 00                	add    %al,(%rax)
  40841b:	00 6c 06 00          	add    %ch,0x0(%rsi,%rax,1)
  40841f:	00 e0                	add    %ah,%al
  408421:	dc ff                	fdivr  %st,%st(7)
  408423:	ff 80 02 00 00 00    	incl   0x2(%rax)
  408429:	42 0e                	rex.X (bad) 
  40842b:	10 8c 02 42 0e 18 8d 	adc    %cl,-0x72e7f1be(%rdx,%rax,1)
  408432:	03 42 0e             	add    0xe(%rdx),%eax
  408435:	20 8e 04 47 0e f0    	and    %cl,-0xff1b8fc(%rsi)
  40843b:	02 03                	add    (%rbx),%al
  40843d:	88 01                	mov    %al,(%rcx)
  40843f:	0e                   	(bad)  
  408440:	20 ce                	and    %cl,%dh
  408442:	42 0e                	rex.X (bad) 
  408444:	18 cd                	sbb    %cl,%ch
  408446:	42 0e                	rex.X (bad) 
  408448:	10 cc                	adc    %cl,%ah
  40844a:	42 0e                	rex.X (bad) 
  40844c:	08 41 0e             	or     %al,0xe(%rcx)
  40844f:	f0 02 8c 02 8d 03 8e 	lock add 0x48e038d(%rdx,%rax,1),%cl
  408456:	04 
  408457:	61                   	(bad)  
  408458:	0e                   	(bad)  
  408459:	20 ce                	and    %cl,%dh
  40845b:	42 0e                	rex.X (bad) 
  40845d:	18 cd                	sbb    %cl,%ch
  40845f:	42 0e                	rex.X (bad) 
  408461:	10 cc                	adc    %cl,%ah
  408463:	42 0e                	rex.X (bad) 
  408465:	08 41 0e             	or     %al,0xe(%rcx)
  408468:	f0 02 8c 02 8d 03 8e 	lock add 0x48e038d(%rdx,%rax,1),%cl
  40846f:	04 
  408470:	6c                   	insb   (%dx),%es:(%rdi)
  408471:	00 00                	add    %al,(%rax)
  408473:	00 c4                	add    %al,%ah
  408475:	06                   	(bad)  
  408476:	00 00                	add    %al,(%rax)
  408478:	08 df                	or     %bl,%bh
  40847a:	ff                   	(bad)  
  40847b:	ff 00                	incl   (%rax)
  40847d:	03 00                	add    (%rax),%eax
  40847f:	00 00                	add    %al,(%rax)
  408481:	42 0e                	rex.X (bad) 
  408483:	10 8e 02 42 0e 18    	adc    %cl,0x180e4202(%rsi)
  408489:	8f 03                	popq   (%rbx)
  40848b:	41 0e                	rex.B (bad) 
  40848d:	20 83 04 41 0e 28    	and    %al,0x280e4104(%rbx)
  408493:	86 05 47 0e 80 03    	xchg   %al,0x3800e47(%rip)        # 3c092e0 <_end+0x35fead0>
  408499:	02 ae 0e 28 c6 41    	add    0x41c6280e(%rsi),%ch
  40849f:	0e                   	(bad)  
  4084a0:	20 c3                	and    %al,%bl
  4084a2:	41 0e                	rex.B (bad) 
  4084a4:	18 cf                	sbb    %cl,%bh
  4084a6:	42 0e                	rex.X (bad) 
  4084a8:	10 ce                	adc    %cl,%dh
  4084aa:	42 0e                	rex.X (bad) 
  4084ac:	08 41 0e             	or     %al,0xe(%rcx)
  4084af:	80 03 83             	addb   $0x83,(%rbx)
  4084b2:	04 86                	add    $0x86,%al
  4084b4:	05 8e 02 8f 03       	add    $0x38f028e,%eax
  4084b9:	03 2b                	add    (%rbx),%ebp
  4084bb:	01 0e                	add    %ecx,(%rsi)
  4084bd:	28 c6                	sub    %al,%dh
  4084bf:	41 0e                	rex.B (bad) 
  4084c1:	20 c3                	and    %al,%bl
  4084c3:	41 0e                	rex.B (bad) 
  4084c5:	18 cf                	sbb    %cl,%bh
  4084c7:	42 0e                	rex.X (bad) 
  4084c9:	10 ce                	adc    %cl,%dh
  4084cb:	42 0e                	rex.X (bad) 
  4084cd:	08 41 0e             	or     %al,0xe(%rcx)
  4084d0:	80 03 83             	addb   $0x83,(%rbx)
  4084d3:	04 86                	add    $0x86,%al
  4084d5:	05 8e 02 8f 03       	add    $0x38f028e,%eax
  4084da:	00 00                	add    %al,(%rax)
  4084dc:	00 00                	add    %al,(%rax)
  4084de:	00 00                	add    %al,(%rax)
  4084e0:	24 00                	and    $0x0,%al
  4084e2:	00 00                	add    %al,(%rax)
  4084e4:	34 07                	xor    $0x7,%al
  4084e6:	00 00                	add    %al,(%rax)
  4084e8:	98                   	cwtl   
  4084e9:	e1 ff                	loope  4084ea <.eh_frame_seg+0x6fa>
  4084eb:	ff 10                	callq  *(%rax)
  4084ed:	00 00                	add    %al,(%rax)
  4084ef:	00 00                	add    %al,(%rax)
  4084f1:	04 01                	add    $0x1,%al
  4084f3:	00 00                	add    %al,(%rax)
  4084f5:	00 0e                	add    %cl,(%rsi)
  4084f7:	10 80 02 04 07 00    	adc    %al,0x70402(%rax)
  4084fd:	00 00                	add    %al,(%rax)
  4084ff:	c0 04 01 00          	rolb   $0x0,(%rcx,%rax,1)
  408503:	00 00                	add    %al,(%rax)
  408505:	0e                   	(bad)  
  408506:	08 00                	or     %al,(%rax)
  408508:	24 00                	and    $0x0,%al
  40850a:	00 00                	add    %al,(%rax)
  40850c:	5c                   	pop    %rsp
  40850d:	07                   	(bad)  
  40850e:	00 00                	add    %al,(%rax)
  408510:	80 e1 ff             	and    $0xff,%cl
  408513:	ff 10                	callq  *(%rax)
  408515:	00 00                	add    %al,(%rax)
  408517:	00 00                	add    %al,(%rax)
  408519:	04 01                	add    $0x1,%al
  40851b:	00 00                	add    %al,(%rax)
  40851d:	00 0e                	add    %cl,(%rsi)
  40851f:	10 80 02 04 0a 00    	adc    %al,0xa0402(%rax)
  408525:	00 00                	add    %al,(%rax)
  408527:	c0 04 01 00          	rolb   $0x0,(%rcx,%rax,1)
  40852b:	00 00                	add    %al,(%rax)
  40852d:	0e                   	(bad)  
  40852e:	08 00                	or     %al,(%rax)
  408530:	6c                   	insb   (%dx),%es:(%rdi)
  408531:	01 00                	add    %eax,(%rax)
  408533:	00 84 07 00 00 68 e1 	add    %al,-0x1e980000(%rdi,%rax,1)
  40853a:	ff                   	(bad)  
  40853b:	ff 90 04 00 00 00    	callq  *0x4(%rax)
  408541:	04 01                	add    $0x1,%al
  408543:	00 00                	add    %al,(%rax)
  408545:	00 0e                	add    %cl,(%rsi)
  408547:	10 81 02 04 01 00    	adc    %al,0x10402(%rcx)
  40854d:	00 00                	add    %al,(%rax)
  40854f:	0e                   	(bad)  
  408550:	18 82 03 04 01 00    	sbb    %al,0x10403(%rdx)
  408556:	00 00                	add    %al,(%rax)
  408558:	0e                   	(bad)  
  408559:	20 83 04 04 01 00    	and    %al,0x10404(%rbx)
  40855f:	00 00                	add    %al,(%rax)
  408561:	0e                   	(bad)  
  408562:	28 84 05 04 02 00 00 	sub    %al,0x204(%rbp,%rax,1)
  408569:	00 0e                	add    %cl,(%rsi)
  40856b:	30 89 06 04 02 00    	xor    %cl,0x20406(%rcx)
  408571:	00 00                	add    %al,(%rax)
  408573:	0e                   	(bad)  
  408574:	38 8c 07 04 02 00 00 	cmp    %cl,0x204(%rdi,%rax,1)
  40857b:	00 0e                	add    %cl,(%rsi)
  40857d:	40 8e 08             	rex mov (%rax),%cs
  408580:	04 01                	add    $0x1,%al
  408582:	00 00                	add    %al,(%rax)
  408584:	00 0e                	add    %cl,(%rsi)
  408586:	48 86 09             	rex.W xchg %cl,(%rcx)
  408589:	04 1d                	add    $0x1d,%al
  40858b:	04 00                	add    $0x0,%al
  40858d:	00 c6                	add    %al,%dh
  40858f:	04 01                	add    $0x1,%al
  408591:	00 00                	add    %al,(%rax)
  408593:	00 0e                	add    %cl,(%rsi)
  408595:	40 ce                	rex (bad) 
  408597:	04 02                	add    $0x2,%al
  408599:	00 00                	add    %al,(%rax)
  40859b:	00 0e                	add    %cl,(%rsi)
  40859d:	38 cc                	cmp    %cl,%ah
  40859f:	04 02                	add    $0x2,%al
  4085a1:	00 00                	add    %al,(%rax)
  4085a3:	00 0e                	add    %cl,(%rsi)
  4085a5:	30 c9                	xor    %cl,%cl
  4085a7:	04 02                	add    $0x2,%al
  4085a9:	00 00                	add    %al,(%rax)
  4085ab:	00 0e                	add    %cl,(%rsi)
  4085ad:	28 c4                	sub    %al,%ah
  4085af:	04 01                	add    $0x1,%al
  4085b1:	00 00                	add    %al,(%rax)
  4085b3:	00 0e                	add    %cl,(%rsi)
  4085b5:	20 c3                	and    %al,%bl
  4085b7:	04 01                	add    $0x1,%al
  4085b9:	00 00                	add    %al,(%rax)
  4085bb:	00 0e                	add    %cl,(%rsi)
  4085bd:	18 c2                	sbb    %al,%dl
  4085bf:	04 01                	add    $0x1,%al
  4085c1:	00 00                	add    %al,(%rax)
  4085c3:	00 0e                	add    %cl,(%rsi)
  4085c5:	10 c1                	adc    %al,%cl
  4085c7:	04 01                	add    $0x1,%al
  4085c9:	00 00                	add    %al,(%rax)
  4085cb:	00 0e                	add    %cl,(%rsi)
  4085cd:	08 04 01             	or     %al,(%rcx,%rax,1)
  4085d0:	00 00                	add    %al,(%rax)
  4085d2:	00 0e                	add    %cl,(%rsi)
  4085d4:	48 81 02 82 03 83 04 	addq   $0x4830382,(%rdx)
  4085db:	86 09                	xchg   %cl,(%rcx)
  4085dd:	84 05 89 06 8c 07    	test   %al,0x78c0689(%rip)        # 7cc8c6c <_end+0x76be45c>
  4085e3:	8e 08                	mov    (%rax),%cs
  4085e5:	04 0e                	add    $0xe,%al
  4085e7:	00 00                	add    %al,(%rax)
  4085e9:	00 c6                	add    %al,%dh
  4085eb:	04 01                	add    $0x1,%al
  4085ed:	00 00                	add    %al,(%rax)
  4085ef:	00 0e                	add    %cl,(%rsi)
  4085f1:	40 ce                	rex (bad) 
  4085f3:	04 02                	add    $0x2,%al
  4085f5:	00 00                	add    %al,(%rax)
  4085f7:	00 0e                	add    %cl,(%rsi)
  4085f9:	38 cc                	cmp    %cl,%ah
  4085fb:	04 02                	add    $0x2,%al
  4085fd:	00 00                	add    %al,(%rax)
  4085ff:	00 0e                	add    %cl,(%rsi)
  408601:	30 c9                	xor    %cl,%cl
  408603:	04 02                	add    $0x2,%al
  408605:	00 00                	add    %al,(%rax)
  408607:	00 0e                	add    %cl,(%rsi)
  408609:	28 c4                	sub    %al,%ah
  40860b:	04 01                	add    $0x1,%al
  40860d:	00 00                	add    %al,(%rax)
  40860f:	00 0e                	add    %cl,(%rsi)
  408611:	20 c3                	and    %al,%bl
  408613:	04 01                	add    $0x1,%al
  408615:	00 00                	add    %al,(%rax)
  408617:	00 0e                	add    %cl,(%rsi)
  408619:	18 c2                	sbb    %al,%dl
  40861b:	04 01                	add    $0x1,%al
  40861d:	00 00                	add    %al,(%rax)
  40861f:	00 0e                	add    %cl,(%rsi)
  408621:	10 c1                	adc    %al,%cl
  408623:	04 01                	add    $0x1,%al
  408625:	00 00                	add    %al,(%rax)
  408627:	00 0e                	add    %cl,(%rsi)
  408629:	08 04 01             	or     %al,(%rcx,%rax,1)
  40862c:	00 00                	add    %al,(%rax)
  40862e:	00 0e                	add    %cl,(%rsi)
  408630:	48 81 02 82 03 83 04 	addq   $0x4830382,(%rdx)
  408637:	86 09                	xchg   %cl,(%rcx)
  408639:	84 05 89 06 8c 07    	test   %al,0x78c0689(%rip)        # 7cc8cc8 <_end+0x76be4b8>
  40863f:	8e 08                	mov    (%rax),%cs
  408641:	04 0b                	add    $0xb,%al
  408643:	00 00                	add    %al,(%rax)
  408645:	00 c6                	add    %al,%dh
  408647:	04 01                	add    $0x1,%al
  408649:	00 00                	add    %al,(%rax)
  40864b:	00 0e                	add    %cl,(%rsi)
  40864d:	40 ce                	rex (bad) 
  40864f:	04 02                	add    $0x2,%al
  408651:	00 00                	add    %al,(%rax)
  408653:	00 0e                	add    %cl,(%rsi)
  408655:	38 cc                	cmp    %cl,%ah
  408657:	04 02                	add    $0x2,%al
  408659:	00 00                	add    %al,(%rax)
  40865b:	00 0e                	add    %cl,(%rsi)
  40865d:	30 c9                	xor    %cl,%cl
  40865f:	04 02                	add    $0x2,%al
  408661:	00 00                	add    %al,(%rax)
  408663:	00 0e                	add    %cl,(%rsi)
  408665:	28 c4                	sub    %al,%ah
  408667:	04 01                	add    $0x1,%al
  408669:	00 00                	add    %al,(%rax)
  40866b:	00 0e                	add    %cl,(%rsi)
  40866d:	20 c3                	and    %al,%bl
  40866f:	04 01                	add    $0x1,%al
  408671:	00 00                	add    %al,(%rax)
  408673:	00 0e                	add    %cl,(%rsi)
  408675:	18 c2                	sbb    %al,%dl
  408677:	04 01                	add    $0x1,%al
  408679:	00 00                	add    %al,(%rax)
  40867b:	00 0e                	add    %cl,(%rsi)
  40867d:	10 c1                	adc    %al,%cl
  40867f:	04 01                	add    $0x1,%al
  408681:	00 00                	add    %al,(%rax)
  408683:	00 0e                	add    %cl,(%rsi)
  408685:	08 04 01             	or     %al,(%rcx,%rax,1)
  408688:	00 00                	add    %al,(%rax)
  40868a:	00 0e                	add    %cl,(%rsi)
  40868c:	48 81 02 82 03 83 04 	addq   $0x4830382,(%rdx)
  408693:	86 09                	xchg   %cl,(%rcx)
  408695:	84 05 89 06 8c 07    	test   %al,0x78c0689(%rip)        # 7cc8d24 <_end+0x76be514>
  40869b:	8e 08                	mov    (%rax),%cs
  40869d:	00 00                	add    %al,(%rax)
  40869f:	00 34 00             	add    %dh,(%rax,%rax,1)
  4086a2:	00 00                	add    %al,(%rax)
  4086a4:	f4                   	hlt    
  4086a5:	08 00                	or     %al,(%rax)
  4086a7:	00 88 e4 ff ff f0    	add    %cl,-0xf00001c(%rax)
  4086ad:	00 00                	add    %al,(%rax)
  4086af:	00 00                	add    %al,(%rax)
  4086b1:	04 07                	add    $0x7,%al
  4086b3:	00 00                	add    %al,(%rax)
  4086b5:	00 0e                	add    %cl,(%rsi)
  4086b7:	90                   	nop
  4086b8:	04 04                	add    $0x4,%al
  4086ba:	c1 00 00             	roll   $0x0,(%rax)
  4086bd:	00 0e                	add    %cl,(%rsi)
  4086bf:	08 04 01             	or     %al,(%rcx,%rax,1)
  4086c2:	00 00                	add    %al,(%rax)
  4086c4:	00 0e                	add    %cl,(%rsi)
  4086c6:	90                   	nop
  4086c7:	04 04                	add    $0x4,%al
  4086c9:	0f 00 00             	sldt   (%rax)
  4086cc:	00 0e                	add    %cl,(%rsi)
  4086ce:	08 04 01             	or     %al,(%rcx,%rax,1)
  4086d1:	00 00                	add    %al,(%rax)
  4086d3:	00 0e                	add    %cl,(%rsi)
  4086d5:	90                   	nop
  4086d6:	04 00                	add    $0x0,%al
  4086d8:	44 00 00             	add    %r8b,(%rax)
  4086db:	00 2c 09             	add    %ch,(%rcx,%rcx,1)
  4086de:	00 00                	add    %al,(%rax)
  4086e0:	40 e5 ff             	rex in $0xff,%eax
  4086e3:	ff 65 00             	jmpq   *0x0(%rbp)
  4086e6:	00 00                	add    %al,(%rax)
  4086e8:	00 42 0e             	add    %al,0xe(%rdx)
  4086eb:	10 8f 02 45 0e 18    	adc    %cl,0x180e4502(%rdi)
  4086f1:	8e 03                	mov    (%rbx),%es
  4086f3:	45 0e                	rex.RB (bad) 
  4086f5:	20 8d 04 45 0e 28    	and    %cl,0x280e4504(%rbp)
  4086fb:	8c 05 48 0e 30 86    	mov    %es,-0x79cff1b8(%rip)        # ffffffff86709549 <_end+0xffffffff860fed39>
  408701:	06                   	(bad)  
  408702:	48 0e                	rex.W (bad) 
  408704:	38 83 07 4d 0e 40    	cmp    %al,0x400e4d07(%rbx)
  40870a:	6c                   	insb   (%dx),%es:(%rdi)
  40870b:	0e                   	(bad)  
  40870c:	38 41 0e             	cmp    %al,0xe(%rcx)
  40870f:	30 41 0e             	xor    %al,0xe(%rcx)
  408712:	28 42 0e             	sub    %al,0xe(%rdx)
  408715:	20 42 0e             	and    %al,0xe(%rdx)
  408718:	18 42 0e             	sbb    %al,0xe(%rdx)
  40871b:	10 42 0e             	adc    %al,0xe(%rdx)
  40871e:	08 00                	or     %al,(%rax)
  408720:	14 00                	adc    $0x0,%al
  408722:	00 00                	add    %al,(%rax)
  408724:	74 09                	je     40872f <.eh_frame_seg+0x93f>
  408726:	00 00                	add    %al,(%rax)
  408728:	68 e5 ff ff 02       	pushq  $0x2ffffe5
	...

0000000000408738 <__FRAME_END__>:
  408738:	00 00                	add    %al,(%rax)
	...

Disassembly of section .gcc_except_table:

000000000040873c <_Z12test_libxsmmv$$LSDA>:
  40873c:	ff 00                	incl   (%rax)
  40873e:	2a 01                	sub    (%rcx),%al
  408740:	20 42 0e             	and    %al,0xe(%rdx)
  408743:	00 00                	add    %al,(%rax)
  408745:	54                   	push   %rsp
  408746:	78 a8                	js     4086f0 <.eh_frame_seg+0x900>
  408748:	04 00                	add    $0x0,%al
  40874a:	d8 01                	fadds  (%rcx)
  40874c:	c1 01 ec             	roll   $0xec,(%rcx)
  40874f:	03 00                	add    (%rax),%eax
  408751:	a3 03 23 a8 04 00 cf 	movabs %eax,0x503cf0004a82303
  408758:	03 05 
  40875a:	00 00                	add    %al,(%rax)
  40875c:	a3 04 05 00 00 00 00 	movabs %eax,0x504
  408763:	00 00 
  408765:	00 00                	add    %al,(%rax)
  408767:	00 00                	add    %al,(%rax)
  408769:	00 00                	add    %al,(%rax)
	...

000000000040876c <_Z11test_breuerv$$LSDA>:
  40876c:	ff 00                	incl   (%rax)
  40876e:	35 01 2b 40 0e       	xor    $0xe402b01,%eax
  408773:	00 00                	add    %al,(%rax)
  408775:	52                   	push   %rdx
  408776:	14 ec                	adc    $0xec,%al
  408778:	04 00                	add    $0x0,%al
  40877a:	72 65                	jb     4087e1 <_Z15test_unrolled_8v$$LSDA+0x19>
  40877c:	e2 04                	loop   408782 <_Z11test_breuerv$$LSDA+0x16>
  40877e:	00 e3                	add    %ah,%bl
  408780:	01 d6                	add    %edx,%esi
  408782:	01 99 04 00 c3 03    	add    %ebx,0x3c30004(%rcx)
  408788:	21 e2                	and    %esp,%edx
  40878a:	04 00                	add    $0x0,%al
  40878c:	ee                   	out    %al,(%dx)
  40878d:	03 05 ec 04 00 fc    	add    -0x3fffb14(%rip),%eax        # fffffffffc408c7f <_end+0xfffffffffbdfe46f>
  408793:	03 05 00 00 dd 04    	add    0x4dd0000(%rip),%eax        # 51d8799 <_end+0x4bcdf89>
  408799:	05 00 00 00 00       	add    $0x0,%eax
  40879e:	00 00                	add    %al,(%rax)
  4087a0:	00 00                	add    %al,(%rax)
	...

00000000004087a4 <_Z6to_cscRK6Matrix$$LSDA>:
  4087a4:	ff 00                	incl   (%rax)
  4087a6:	1e                   	(bad)  
  4087a7:	01 14 21             	add    %edx,(%rcx,%riz,1)
  4087aa:	05 00 00 60 30       	add    $0x30600000,%eax
  4087af:	ab                   	stos   %eax,%es:(%rdi)
  4087b0:	02 00                	add    (%rax),%al
  4087b2:	b1 01                	mov    $0x1,%cl
  4087b4:	6a 9d                	pushq  $0xffffffffffffff9d
  4087b6:	02 00                	add    (%rax),%al
  4087b8:	bb 02 05 00 00       	mov    $0x502,%ebx
	...

00000000004087c8 <_Z15test_unrolled_8v$$LSDA>:
  4087c8:	ff 00                	incl   (%rax)
  4087ca:	35 01 2b 40 0e       	xor    $0xe402b01,%eax
  4087cf:	00 00                	add    %al,(%rax)
  4087d1:	52                   	push   %rdx
  4087d2:	14 f1                	adc    $0xf1,%al
  4087d4:	04 00                	add    $0x0,%al
  4087d6:	77 65                	ja     40883d <_Z16test_unrolled_40v$$LSDA+0x19>
  4087d8:	e7 04                	out    %eax,$0x4
  4087da:	00 e8                	add    %ch,%al
  4087dc:	01 d6                	add    %edx,%esi
  4087de:	01 9e 04 00 c8 03    	add    %ebx,0x3c80004(%rsi)
  4087e4:	21 e7                	and    %esp,%edi
  4087e6:	04 00                	add    $0x0,%al
  4087e8:	f3 03 05 f1 04 00 81 	repz add -0x7efffb0f(%rip),%eax        # ffffffff81408ce0 <_end+0xffffffff80dfe4d0>
  4087ef:	04 05                	add    $0x5,%al
  4087f1:	00 00                	add    %al,(%rax)
  4087f3:	e2 04                	loop   4087f9 <_Z15test_unrolled_8v$$LSDA+0x31>
  4087f5:	05 00 00 00 00       	add    $0x0,%eax
  4087fa:	00 00                	add    %al,(%rax)
  4087fc:	00 00                	add    %al,(%rax)
	...

0000000000408800 <_Z7to_bcscRK6Matrixii$$LSDA>:
  408800:	ff 00                	incl   (%rax)
  408802:	20 01                	and    %al,(%rcx)
  408804:	16                   	(bad)  
  408805:	4d 05 00 00 8a 01    	rex.WRB add $0x18a0000,%rax
  40880b:	35 cc 03 00 8d       	xor    $0x8d0003cc,%eax
  408810:	02 aa 01 bc 03 00    	add    0x3bc01(%rdx),%ch
  408816:	dc 03                	faddl  (%rbx)
  408818:	05 00 00 00 00       	add    $0x0,%eax
  40881d:	00 00                	add    %al,(%rax)
  40881f:	00 00                	add    %al,(%rax)
  408821:	00 00                	add    %al,(%rax)
	...

0000000000408824 <_Z16test_unrolled_40v$$LSDA>:
  408824:	ff 00                	incl   (%rax)
  408826:	35 01 2b 40 0e       	xor    $0xe402b01,%eax
  40882b:	00 00                	add    %al,(%rax)
  40882d:	52                   	push   %rdx
  40882e:	14 f1                	adc    $0xf1,%al
  408830:	04 00                	add    $0x0,%al
  408832:	77 65                	ja     408899 <_Z15test_general_40v$$LSDA+0x5>
  408834:	e7 04                	out    %eax,$0x4
  408836:	00 e8                	add    %ch,%al
  408838:	01 d6                	add    %edx,%esi
  40883a:	01 9e 04 00 c8 03    	add    %ebx,0x3c80004(%rsi)
  408840:	21 e7                	and    %esp,%edi
  408842:	04 00                	add    $0x0,%al
  408844:	f3 03 05 f1 04 00 81 	repz add -0x7efffb0f(%rip),%eax        # ffffffff81408d3c <_end+0xffffffff80dfe52c>
  40884b:	04 05                	add    $0x5,%al
  40884d:	00 00                	add    %al,(%rax)
  40884f:	e2 04                	loop   408855 <_Z16test_unrolled_40v$$LSDA+0x31>
  408851:	05 00 00 00 00       	add    $0x0,%eax
  408856:	00 00                	add    %al,(%rax)
  408858:	00 00                	add    %al,(%rax)
	...

000000000040885c <_Z14test_general_8v$$LSDA>:
  40885c:	ff 00                	incl   (%rax)
  40885e:	35 01 2b 40 0e       	xor    $0xe402b01,%eax
  408863:	00 00                	add    %al,(%rax)
  408865:	52                   	push   %rdx
  408866:	14 f1                	adc    $0xf1,%al
  408868:	04 00                	add    $0x0,%al
  40886a:	77 65                	ja     4088d1 <_ZNK11DenseMatrix3getEii$$LSDA+0x5>
  40886c:	e7 04                	out    %eax,$0x4
  40886e:	00 e8                	add    %ch,%al
  408870:	01 d6                	add    %edx,%esi
  408872:	01 9e 04 00 c8 03    	add    %ebx,0x3c80004(%rsi)
  408878:	21 e7                	and    %esp,%edi
  40887a:	04 00                	add    $0x0,%al
  40887c:	f3 03 05 f1 04 00 81 	repz add -0x7efffb0f(%rip),%eax        # ffffffff81408d74 <_end+0xffffffff80dfe564>
  408883:	04 05                	add    $0x5,%al
  408885:	00 00                	add    %al,(%rax)
  408887:	e2 04                	loop   40888d <_Z14test_general_8v$$LSDA+0x31>
  408889:	05 00 00 00 00       	add    $0x0,%eax
  40888e:	00 00                	add    %al,(%rax)
  408890:	00 00                	add    %al,(%rax)
	...

0000000000408894 <_Z15test_general_40v$$LSDA>:
  408894:	ff 00                	incl   (%rax)
  408896:	35 01 2b 40 0e       	xor    $0xe402b01,%eax
  40889b:	00 00                	add    %al,(%rax)
  40889d:	52                   	push   %rdx
  40889e:	14 f1                	adc    $0xf1,%al
  4088a0:	04 00                	add    $0x0,%al
  4088a2:	77 65                	ja     408909 <_ZNK11DenseMatrix3getEii$$LSDA+0x3d>
  4088a4:	e7 04                	out    %eax,$0x4
  4088a6:	00 e8                	add    %ch,%al
  4088a8:	01 d6                	add    %edx,%esi
  4088aa:	01 9e 04 00 c8 03    	add    %ebx,0x3c80004(%rsi)
  4088b0:	21 e7                	and    %esp,%edi
  4088b2:	04 00                	add    $0x0,%al
  4088b4:	f3 03 05 f1 04 00 81 	repz add -0x7efffb0f(%rip),%eax        # ffffffff81408dac <_end+0xffffffff80dfe59c>
  4088bb:	04 05                	add    $0x5,%al
  4088bd:	00 00                	add    %al,(%rax)
  4088bf:	e2 04                	loop   4088c5 <_Z15test_general_40v$$LSDA+0x31>
  4088c1:	05 00 00 00 00       	add    $0x0,%eax
  4088c6:	00 00                	add    %al,(%rax)
  4088c8:	00 00                	add    %al,(%rax)
	...

00000000004088cc <_ZNK11DenseMatrix3getEii$$LSDA>:
  4088cc:	ff 00                	incl   (%rax)
  4088ce:	1e                   	(bad)  
  4088cf:	01 12                	add    %edx,(%rdx)
  4088d1:	16                   	(bad)  
  4088d2:	05 00 00 2b 05       	add    $0x52b0000,%eax
  4088d7:	ac                   	lods   %ds:(%rsi),%al
  4088d8:	01 00                	add    %eax,(%rax)
  4088da:	37                   	(bad)  
  4088db:	17                   	(bad)  
  4088dc:	6a 00                	pushq  $0x0
  4088de:	86 01                	xchg   %al,(%rcx)
  4088e0:	05 00 00 7f 00       	add    $0x7f0000,%eax
	...

Disassembly of section .init_array:

0000000000609820 <__frame_dummy_init_array_entry>:
  609820:	00 19                	add    %bl,(%rcx)
  609822:	40 00 00             	add    %al,(%rax)
  609825:	00 00                	add    %al,(%rax)
	...

0000000000609828 <__init_0>:
  609828:	f9                   	stc    
  609829:	58                   	pop    %rax
  60982a:	40 00 00             	add    %al,(%rax)
  60982d:	00 00                	add    %al,(%rax)
	...

Disassembly of section .fini_array:

0000000000609830 <__do_global_dtors_aux_fini_array_entry>:
  609830:	e0 18                	loopne 60984a <c_feature_names+0xa>
  609832:	40 00 00             	add    %al,(%rax)
  609835:	00 00                	add    %al,(%rax)
	...

Disassembly of section .jcr:

0000000000609838 <__JCR_END__>:
	...

Disassembly of section .data.rel.ro:

0000000000609840 <c_feature_names>:
  609840:	b8 6d 40 00 00       	mov    $0x406d,%eax
  609845:	00 00                	add    %al,(%rax)
  609847:	00 00                	add    %al,(%rax)
  609849:	6e                   	outsb  %ds:(%rsi),(%dx)
  60984a:	40 00 00             	add    %al,(%rax)
  60984d:	00 00                	add    %al,(%rax)
  60984f:	00 10                	add    %dl,(%rax)
  609851:	6e                   	outsb  %ds:(%rsi),(%dx)
  609852:	40 00 00             	add    %al,(%rax)
  609855:	00 00                	add    %al,(%rax)
  609857:	00 14 6e             	add    %dl,(%rsi,%rbp,2)
  60985a:	40 00 00             	add    %al,(%rax)
  60985d:	00 00                	add    %al,(%rax)
  60985f:	00 1c 6e             	add    %bl,(%rsi,%rbp,2)
  609862:	40 00 00             	add    %al,(%rax)
  609865:	00 00                	add    %al,(%rax)
  609867:	00 20                	add    %ah,(%rax)
  609869:	6e                   	outsb  %ds:(%rsi),(%dx)
  60986a:	40 00 00             	add    %al,(%rax)
  60986d:	00 00                	add    %al,(%rax)
  60986f:	00 28                	add    %ch,(%rax)
  609871:	6e                   	outsb  %ds:(%rsi),(%dx)
  609872:	40 00 00             	add    %al,(%rax)
  609875:	00 00                	add    %al,(%rax)
  609877:	00 2c 6e             	add    %ch,(%rsi,%rbp,2)
  60987a:	40 00 00             	add    %al,(%rax)
  60987d:	00 00                	add    %al,(%rax)
  60987f:	00 34 6e             	add    %dh,(%rsi,%rbp,2)
  609882:	40 00 00             	add    %al,(%rax)
  609885:	00 00                	add    %al,(%rax)
  609887:	00 3c 6e             	add    %bh,(%rsi,%rbp,2)
  60988a:	40 00 00             	add    %al,(%rax)
  60988d:	00 00                	add    %al,(%rax)
  60988f:	00 44 6e 40          	add    %al,0x40(%rsi,%rbp,2)
  609893:	00 00                	add    %al,(%rax)
  609895:	00 00                	add    %al,(%rax)
  609897:	00 4c 6e 40          	add    %cl,0x40(%rsi,%rbp,2)
  60989b:	00 00                	add    %al,(%rax)
  60989d:	00 00                	add    %al,(%rax)
  60989f:	00 54 6e 40          	add    %dl,0x40(%rsi,%rbp,2)
  6098a3:	00 00                	add    %al,(%rax)
  6098a5:	00 00                	add    %al,(%rax)
  6098a7:	00 5c 6e 40          	add    %bl,0x40(%rsi,%rbp,2)
  6098ab:	00 00                	add    %al,(%rax)
  6098ad:	00 00                	add    %al,(%rax)
  6098af:	00 64 6e 40          	add    %ah,0x40(%rsi,%rbp,2)
  6098b3:	00 00                	add    %al,(%rax)
  6098b5:	00 00                	add    %al,(%rax)
  6098b7:	00 70 6e             	add    %dh,0x6e(%rax)
  6098ba:	40 00 00             	add    %al,(%rax)
  6098bd:	00 00                	add    %al,(%rax)
  6098bf:	00 74 6e 40          	add    %dh,0x40(%rsi,%rbp,2)
  6098c3:	00 00                	add    %al,(%rax)
  6098c5:	00 00                	add    %al,(%rax)
  6098c7:	00 7c 6e 40          	add    %bh,0x40(%rsi,%rbp,2)
  6098cb:	00 00                	add    %al,(%rax)
  6098cd:	00 00                	add    %al,(%rax)
  6098cf:	00 80 6e 40 00 00    	add    %al,0x406e(%rax)
  6098d5:	00 00                	add    %al,(%rax)
  6098d7:	00 88 6e 40 00 00    	add    %cl,0x406e(%rax)
  6098dd:	00 00                	add    %al,(%rax)
  6098df:	00 8c 6e 40 00 00 00 	add    %cl,0x40(%rsi,%rbp,2)
  6098e6:	00 00                	add    %al,(%rax)
  6098e8:	90                   	nop
  6098e9:	6e                   	outsb  %ds:(%rsi),(%dx)
  6098ea:	40 00 00             	add    %al,(%rax)
  6098ed:	00 00                	add    %al,(%rax)
  6098ef:	00 98 6e 40 00 00    	add    %bl,0x406e(%rax)
  6098f5:	00 00                	add    %al,(%rax)
  6098f7:	00 9c 6e 40 00 00 00 	add    %bl,0x40(%rsi,%rbp,2)
  6098fe:	00 00                	add    %al,(%rax)
  609900:	a0 6e 40 00 00 00 00 	movabs 0xa80000000000406e,%al
  609907:	00 a8 
  609909:	6e                   	outsb  %ds:(%rsi),(%dx)
  60990a:	40 00 00             	add    %al,(%rax)
  60990d:	00 00                	add    %al,(%rax)
  60990f:	00 b8 6d 40 00 00    	add    %bh,0x406d(%rax)
  609915:	00 00                	add    %al,(%rax)
  609917:	00 b4 6e 40 00 00 00 	add    %dh,0x40(%rsi,%rbp,2)
  60991e:	00 00                	add    %al,(%rax)
  609920:	bc 6e 40 00 00       	mov    $0x406e,%esp
  609925:	00 00                	add    %al,(%rax)
  609927:	00 c4                	add    %al,%ah
  609929:	6e                   	outsb  %ds:(%rsi),(%dx)
  60992a:	40 00 00             	add    %al,(%rax)
  60992d:	00 00                	add    %al,(%rax)
  60992f:	00 c8                	add    %cl,%al
  609931:	6e                   	outsb  %ds:(%rsi),(%dx)
  609932:	40 00 00             	add    %al,(%rax)
  609935:	00 00                	add    %al,(%rax)
  609937:	00 d0                	add    %dl,%al
  609939:	6e                   	outsb  %ds:(%rsi),(%dx)
  60993a:	40 00 00             	add    %al,(%rax)
  60993d:	00 00                	add    %al,(%rax)
  60993f:	00 e0                	add    %ah,%al
  609941:	6e                   	outsb  %ds:(%rsi),(%dx)
  609942:	40 00 00             	add    %al,(%rax)
  609945:	00 00                	add    %al,(%rax)
  609947:	00 f8                	add    %bh,%al
  609949:	6e                   	outsb  %ds:(%rsi),(%dx)
  60994a:	40 00 00             	add    %al,(%rax)
  60994d:	00 00                	add    %al,(%rax)
  60994f:	00 04 6f             	add    %al,(%rdi,%rbp,2)
  609952:	40 00 00             	add    %al,(%rax)
  609955:	00 00                	add    %al,(%rax)
  609957:	00 10                	add    %dl,(%rax)
  609959:	6f                   	outsl  %ds:(%rsi),(%dx)
  60995a:	40 00 00             	add    %al,(%rax)
  60995d:	00 00                	add    %al,(%rax)
  60995f:	00 1c 6f             	add    %bl,(%rdi,%rbp,2)
  609962:	40 00 00             	add    %al,(%rax)
  609965:	00 00                	add    %al,(%rax)
  609967:	00 20                	add    %ah,(%rax)
  609969:	6f                   	outsl  %ds:(%rsi),(%dx)
  60996a:	40 00 00             	add    %al,(%rax)
  60996d:	00 00                	add    %al,(%rax)
  60996f:	00 24 6f             	add    %ah,(%rdi,%rbp,2)
  609972:	40 00 00             	add    %al,(%rax)
  609975:	00 00                	add    %al,(%rax)
  609977:	00 30                	add    %dh,(%rax)
  609979:	6f                   	outsl  %ds:(%rsi),(%dx)
  60997a:	40 00 00             	add    %al,(%rax)
  60997d:	00 00                	add    %al,(%rax)
  60997f:	00 3c 6f             	add    %bh,(%rdi,%rbp,2)
  609982:	40 00 00             	add    %al,(%rax)
  609985:	00 00                	add    %al,(%rax)
  609987:	00 48 6f             	add    %cl,0x6f(%rax)
  60998a:	40 00 00             	add    %al,(%rax)
  60998d:	00 00                	add    %al,(%rax)
  60998f:	00 58 6f             	add    %bl,0x6f(%rax)
  609992:	40 00 00             	add    %al,(%rax)
  609995:	00 00                	add    %al,(%rax)
  609997:	00 68 6f             	add    %ch,0x6f(%rax)
  60999a:	40 00 00             	add    %al,(%rax)
  60999d:	00 00                	add    %al,(%rax)
  60999f:	00 b8 6d 40 00 00    	add    %bh,0x406d(%rax)
  6099a5:	00 00                	add    %al,(%rax)
  6099a7:	00 b8 6d 40 00 00    	add    %bh,0x406d(%rax)
  6099ad:	00 00                	add    %al,(%rax)
  6099af:	00 b8 6d 40 00 00    	add    %bh,0x406d(%rax)
  6099b5:	00 00                	add    %al,(%rax)
  6099b7:	00 b8 6d 40 00 00    	add    %bh,0x406d(%rax)
  6099bd:	00 00                	add    %al,(%rax)
  6099bf:	00 b8 6d 40 00 00    	add    %bh,0x406d(%rax)
  6099c5:	00 00                	add    %al,(%rax)
  6099c7:	00 b8 6d 40 00 00    	add    %bh,0x406d(%rax)
  6099cd:	00 00                	add    %al,(%rax)
  6099cf:	00 b8 6d 40 00 00    	add    %bh,0x406d(%rax)
	...

00000000006099e0 <irc_msgtab>:
  6099e0:	00 00                	add    %al,(%rax)
  6099e2:	00 00                	add    %al,(%rax)
  6099e4:	01 00                	add    %eax,(%rax)
  6099e6:	00 00                	add    %al,(%rax)
  6099e8:	14 6d                	adc    $0x6d,%al
  6099ea:	40 00 00             	add    %al,(%rax)
  6099ed:	00 00                	add    %al,(%rax)
  6099ef:	00 01                	add    %al,(%rcx)
  6099f1:	00 00                	add    %al,(%rax)
  6099f3:	00 04 00             	add    %al,(%rax,%rax,1)
  6099f6:	00 00                	add    %al,(%rax)
  6099f8:	8c 6f 40             	mov    %gs,0x40(%rdi)
  6099fb:	00 00                	add    %al,(%rax)
  6099fd:	00 00                	add    %al,(%rax)
  6099ff:	00 02                	add    %al,(%rdx)
  609a01:	00 00                	add    %al,(%rax)
  609a03:	00 01                	add    %al,(%rcx)
  609a05:	00 00                	add    %al,(%rax)
  609a07:	00 bc 6f 40 00 00 00 	add    %bh,0x40(%rdi,%rbp,2)
  609a0e:	00 00                	add    %al,(%rax)
  609a10:	03 00                	add    (%rax),%eax
  609a12:	00 00                	add    %al,(%rax)
  609a14:	01 00                	add    %eax,(%rax)
  609a16:	00 00                	add    %al,(%rax)
  609a18:	c4                   	(bad)  
  609a19:	6f                   	outsl  %ds:(%rsi),(%dx)
  609a1a:	40 00 00             	add    %al,(%rax)
  609a1d:	00 00                	add    %al,(%rax)
  609a1f:	00 04 00             	add    %al,(%rax,%rax,1)
  609a22:	00 00                	add    %al,(%rax)
  609a24:	01 00                	add    %eax,(%rax)
  609a26:	00 00                	add    %al,(%rax)
  609a28:	cc                   	int3   
  609a29:	6f                   	outsl  %ds:(%rsi),(%dx)
  609a2a:	40 00 00             	add    %al,(%rax)
  609a2d:	00 00                	add    %al,(%rax)
  609a2f:	00 05 00 00 00 01    	add    %al,0x1000000(%rip)        # 1609a35 <_end+0xfff225>
  609a35:	00 00                	add    %al,(%rax)
  609a37:	00 d4                	add    %dl,%ah
  609a39:	6f                   	outsl  %ds:(%rsi),(%dx)
  609a3a:	40 00 00             	add    %al,(%rax)
  609a3d:	00 00                	add    %al,(%rax)
  609a3f:	00 06                	add    %al,(%rsi)
  609a41:	00 00                	add    %al,(%rax)
  609a43:	00 01                	add    %al,(%rcx)
  609a45:	00 00                	add    %al,(%rax)
  609a47:	00 e4                	add    %ah,%ah
  609a49:	6f                   	outsl  %ds:(%rsi),(%dx)
  609a4a:	40 00 00             	add    %al,(%rax)
  609a4d:	00 00                	add    %al,(%rax)
  609a4f:	00 07                	add    %al,(%rdi)
  609a51:	00 00                	add    %al,(%rax)
  609a53:	00 01                	add    %al,(%rcx)
  609a55:	00 00                	add    %al,(%rax)
  609a57:	00 f8                	add    %bh,%al
  609a59:	6f                   	outsl  %ds:(%rsi),(%dx)
  609a5a:	40 00 00             	add    %al,(%rax)
  609a5d:	00 00                	add    %al,(%rax)
  609a5f:	00 08                	add    %cl,(%rax)
  609a61:	00 00                	add    %al,(%rax)
  609a63:	00 01                	add    %al,(%rcx)
  609a65:	00 00                	add    %al,(%rax)
  609a67:	00 08                	add    %cl,(%rax)
  609a69:	70 40                	jo     609aab <irc_msgtab+0xcb>
  609a6b:	00 00                	add    %al,(%rax)
  609a6d:	00 00                	add    %al,(%rax)
  609a6f:	00 09                	add    %cl,(%rcx)
  609a71:	00 00                	add    %al,(%rax)
  609a73:	00 01                	add    %al,(%rcx)
  609a75:	00 00                	add    %al,(%rax)
  609a77:	00 20                	add    %ah,(%rax)
  609a79:	70 40                	jo     609abb <irc_msgtab+0xdb>
  609a7b:	00 00                	add    %al,(%rax)
  609a7d:	00 00                	add    %al,(%rax)
  609a7f:	00 0a                	add    %cl,(%rdx)
  609a81:	00 00                	add    %al,(%rax)
  609a83:	00 01                	add    %al,(%rcx)
  609a85:	00 00                	add    %al,(%rax)
  609a87:	00 3c 70             	add    %bh,(%rax,%rsi,2)
  609a8a:	40 00 00             	add    %al,(%rax)
  609a8d:	00 00                	add    %al,(%rax)
  609a8f:	00 0b                	add    %cl,(%rbx)
  609a91:	00 00                	add    %al,(%rax)
  609a93:	00 04 00             	add    %al,(%rax,%rax,1)
  609a96:	00 00                	add    %al,(%rax)
  609a98:	4c 70 40             	rex.WR jo 609adb <irc_msgtab+0xfb>
  609a9b:	00 00                	add    %al,(%rax)
  609a9d:	00 00                	add    %al,(%rax)
  609a9f:	00 0c 00             	add    %cl,(%rax,%rax,1)
  609aa2:	00 00                	add    %al,(%rax)
  609aa4:	04 00                	add    $0x0,%al
  609aa6:	00 00                	add    %al,(%rax)
  609aa8:	60                   	(bad)  
  609aa9:	70 40                	jo     609aeb <irc_msgtab+0x10b>
  609aab:	00 00                	add    %al,(%rax)
  609aad:	00 00                	add    %al,(%rax)
  609aaf:	00 0d 00 00 00 04    	add    %cl,0x4000000(%rip)        # 4609ab5 <_end+0x3fff2a5>
  609ab5:	00 00                	add    %al,(%rax)
  609ab7:	00 88 70 40 00 00    	add    %cl,0x4070(%rax)
  609abd:	00 00                	add    %al,(%rax)
  609abf:	00 0e                	add    %cl,(%rsi)
  609ac1:	00 00                	add    %al,(%rax)
  609ac3:	00 04 00             	add    %al,(%rax,%rax,1)
  609ac6:	00 00                	add    %al,(%rax)
  609ac8:	ac                   	lods   %ds:(%rsi),%al
  609ac9:	70 40                	jo     609b0b <irc_msgtab+0x12b>
  609acb:	00 00                	add    %al,(%rax)
  609acd:	00 00                	add    %al,(%rax)
  609acf:	00 0f                	add    %cl,(%rdi)
  609ad1:	00 00                	add    %al,(%rax)
  609ad3:	00 04 00             	add    %al,(%rax,%rax,1)
  609ad6:	00 00                	add    %al,(%rax)
  609ad8:	d8 70 40             	fdivs  0x40(%rax)
  609adb:	00 00                	add    %al,(%rax)
  609add:	00 00                	add    %al,(%rax)
  609adf:	00 10                	add    %dl,(%rax)
  609ae1:	00 00                	add    %al,(%rax)
  609ae3:	00 04 00             	add    %al,(%rax,%rax,1)
  609ae6:	00 00                	add    %al,(%rax)
  609ae8:	0c 71                	or     $0x71,%al
  609aea:	40 00 00             	add    %al,(%rax)
  609aed:	00 00                	add    %al,(%rax)
  609aef:	00 11                	add    %dl,(%rcx)
  609af1:	00 00                	add    %al,(%rax)
  609af3:	00 04 00             	add    %al,(%rax,%rax,1)
  609af6:	00 00                	add    %al,(%rax)
  609af8:	28 71 40             	sub    %dh,0x40(%rcx)
  609afb:	00 00                	add    %al,(%rax)
  609afd:	00 00                	add    %al,(%rax)
  609aff:	00 12                	add    %dl,(%rdx)
  609b01:	00 00                	add    %al,(%rax)
  609b03:	00 04 00             	add    %al,(%rax,%rax,1)
  609b06:	00 00                	add    %al,(%rax)
  609b08:	60                   	(bad)  
  609b09:	71 40                	jno    609b4b <irc_msgtab+0x16b>
  609b0b:	00 00                	add    %al,(%rax)
  609b0d:	00 00                	add    %al,(%rax)
  609b0f:	00 13                	add    %dl,(%rbx)
  609b11:	00 00                	add    %al,(%rax)
  609b13:	00 04 00             	add    %al,(%rax,%rax,1)
  609b16:	00 00                	add    %al,(%rax)
  609b18:	7c 71                	jl     609b8b <irc_msgtab+0x1ab>
  609b1a:	40 00 00             	add    %al,(%rax)
  609b1d:	00 00                	add    %al,(%rax)
  609b1f:	00 14 00             	add    %dl,(%rax,%rax,1)
  609b22:	00 00                	add    %al,(%rax)
  609b24:	04 00                	add    $0x0,%al
  609b26:	00 00                	add    %al,(%rax)
  609b28:	90                   	nop
  609b29:	71 40                	jno    609b6b <irc_msgtab+0x18b>
  609b2b:	00 00                	add    %al,(%rax)
  609b2d:	00 00                	add    %al,(%rax)
  609b2f:	00 15 00 00 00 04    	add    %dl,0x4000000(%rip)        # 4609b35 <_end+0x3fff325>
  609b35:	00 00                	add    %al,(%rax)
  609b37:	00 a4 71 40 00 00 00 	add    %ah,0x40(%rcx,%rsi,2)
  609b3e:	00 00                	add    %al,(%rax)
  609b40:	16                   	(bad)  
  609b41:	00 00                	add    %al,(%rax)
  609b43:	00 04 00             	add    %al,(%rax,%rax,1)
  609b46:	00 00                	add    %al,(%rax)
  609b48:	b8 71 40 00 00       	mov    $0x4071,%eax
  609b4d:	00 00                	add    %al,(%rax)
  609b4f:	00 17                	add    %dl,(%rdi)
  609b51:	00 00                	add    %al,(%rax)
  609b53:	00 04 00             	add    %al,(%rax,%rax,1)
  609b56:	00 00                	add    %al,(%rax)
  609b58:	40 75 40             	rex jne 609b9b <irc_msgtab+0x1bb>
  609b5b:	00 00                	add    %al,(%rax)
  609b5d:	00 00                	add    %al,(%rax)
  609b5f:	00 18                	add    %bl,(%rax)
  609b61:	00 00                	add    %al,(%rax)
  609b63:	00 04 00             	add    %al,(%rax,%rax,1)
  609b66:	00 00                	add    %al,(%rax)
  609b68:	e8 71 40 00 00       	callq  60dbde <_end+0x33ce>
  609b6d:	00 00                	add    %al,(%rax)
  609b6f:	00 19                	add    %bl,(%rcx)
  609b71:	00 00                	add    %al,(%rax)
  609b73:	00 04 00             	add    %al,(%rax,%rax,1)
  609b76:	00 00                	add    %al,(%rax)
  609b78:	a0 75 40 00 00 00 00 	movabs 0x1a00000000004075,%al
  609b7f:	00 1a 
  609b81:	00 00                	add    %al,(%rax)
  609b83:	00 04 00             	add    %al,(%rax,%rax,1)
  609b86:	00 00                	add    %al,(%rax)
  609b88:	08 72 40             	or     %dh,0x40(%rdx)
  609b8b:	00 00                	add    %al,(%rax)
  609b8d:	00 00                	add    %al,(%rax)
  609b8f:	00 1b                	add    %bl,(%rbx)
  609b91:	00 00                	add    %al,(%rax)
  609b93:	00 04 00             	add    %al,(%rax,%rax,1)
  609b96:	00 00                	add    %al,(%rax)
  609b98:	38 72 40             	cmp    %dh,0x40(%rdx)
  609b9b:	00 00                	add    %al,(%rax)
  609b9d:	00 00                	add    %al,(%rax)
  609b9f:	00 1c 00             	add    %bl,(%rax,%rax,1)
  609ba2:	00 00                	add    %al,(%rax)
  609ba4:	04 00                	add    $0x0,%al
  609ba6:	00 00                	add    %al,(%rax)
  609ba8:	70 72                	jo     609c1c <irc_msgtab+0x23c>
  609baa:	40 00 00             	add    %al,(%rax)
  609bad:	00 00                	add    %al,(%rax)
  609baf:	00 1d 00 00 00 04    	add    %bl,0x4000000(%rip)        # 4609bb5 <_end+0x3fff3a5>
  609bb5:	00 00                	add    %al,(%rax)
  609bb7:	00 88 72 40 00 00    	add    %cl,0x4072(%rax)
  609bbd:	00 00                	add    %al,(%rax)
  609bbf:	00 1e                	add    %bl,(%rsi)
  609bc1:	00 00                	add    %al,(%rax)
  609bc3:	00 04 00             	add    %al,(%rax,%rax,1)
  609bc6:	00 00                	add    %al,(%rax)
  609bc8:	00 76 40             	add    %dh,0x40(%rsi)
  609bcb:	00 00                	add    %al,(%rax)
  609bcd:	00 00                	add    %al,(%rax)
  609bcf:	00 1f                	add    %bl,(%rdi)
  609bd1:	00 00                	add    %al,(%rax)
  609bd3:	00 04 00             	add    %al,(%rax,%rax,1)
  609bd6:	00 00                	add    %al,(%rax)
  609bd8:	bc 72 40 00 00       	mov    $0x4072,%esp
  609bdd:	00 00                	add    %al,(%rax)
  609bdf:	00 20                	add    %ah,(%rax)
  609be1:	00 00                	add    %al,(%rax)
  609be3:	00 04 00             	add    %al,(%rax,%rax,1)
  609be6:	00 00                	add    %al,(%rax)
  609be8:	f0 72 40             	lock jb 609c2b <irc_msgtab+0x24b>
  609beb:	00 00                	add    %al,(%rax)
  609bed:	00 00                	add    %al,(%rax)
  609bef:	00 21                	add    %ah,(%rcx)
  609bf1:	00 00                	add    %al,(%rax)
  609bf3:	00 04 00             	add    %al,(%rax,%rax,1)
  609bf6:	00 00                	add    %al,(%rax)
  609bf8:	1c 73                	sbb    $0x73,%al
  609bfa:	40 00 00             	add    %al,(%rax)
  609bfd:	00 00                	add    %al,(%rax)
  609bff:	00 22                	add    %ah,(%rdx)
  609c01:	00 00                	add    %al,(%rax)
  609c03:	00 04 00             	add    %al,(%rax,%rax,1)
  609c06:	00 00                	add    %al,(%rax)
  609c08:	30 73 40             	xor    %dh,0x40(%rbx)
  609c0b:	00 00                	add    %al,(%rax)
  609c0d:	00 00                	add    %al,(%rax)
  609c0f:	00 23                	add    %ah,(%rbx)
  609c11:	00 00                	add    %al,(%rax)
  609c13:	00 01                	add    %al,(%rcx)
  609c15:	00 00                	add    %al,(%rax)
  609c17:	00 4c 73 40          	add    %cl,0x40(%rbx,%rsi,2)
  609c1b:	00 00                	add    %al,(%rax)
  609c1d:	00 00                	add    %al,(%rax)
  609c1f:	00 24 00             	add    %ah,(%rax,%rax,1)
  609c22:	00 00                	add    %al,(%rax)
  609c24:	01 00                	add    %eax,(%rax)
  609c26:	00 00                	add    %al,(%rax)
  609c28:	54                   	push   %rsp
  609c29:	73 40                	jae    609c6b <irc_msgtab+0x28b>
  609c2b:	00 00                	add    %al,(%rax)
  609c2d:	00 00                	add    %al,(%rax)
  609c2f:	00 25 00 00 00 01    	add    %ah,0x1000000(%rip)        # 1609c35 <_end+0xfff425>
  609c35:	00 00                	add    %al,(%rax)
  609c37:	00 5c 73 40          	add    %bl,0x40(%rbx,%rsi,2)
  609c3b:	00 00                	add    %al,(%rax)
  609c3d:	00 00                	add    %al,(%rax)
  609c3f:	00 26                	add    %ah,(%rsi)
  609c41:	00 00                	add    %al,(%rax)
  609c43:	00 01                	add    %al,(%rcx)
  609c45:	00 00                	add    %al,(%rax)
  609c47:	00 64 73 40          	add    %ah,0x40(%rbx,%rsi,2)
  609c4b:	00 00                	add    %al,(%rax)
  609c4d:	00 00                	add    %al,(%rax)
  609c4f:	00 27                	add    %ah,(%rdi)
  609c51:	00 00                	add    %al,(%rax)
  609c53:	00 01                	add    %al,(%rcx)
  609c55:	00 00                	add    %al,(%rax)
  609c57:	00 6c 73 40          	add    %ch,0x40(%rbx,%rsi,2)
  609c5b:	00 00                	add    %al,(%rax)
  609c5d:	00 00                	add    %al,(%rax)
  609c5f:	00 28                	add    %ch,(%rax)
  609c61:	00 00                	add    %al,(%rax)
  609c63:	00 01                	add    %al,(%rcx)
  609c65:	00 00                	add    %al,(%rax)
  609c67:	00 74 73 40          	add    %dh,0x40(%rbx,%rsi,2)
  609c6b:	00 00                	add    %al,(%rax)
  609c6d:	00 00                	add    %al,(%rax)
  609c6f:	00 29                	add    %ch,(%rcx)
  609c71:	00 00                	add    %al,(%rax)
  609c73:	00 01                	add    %al,(%rcx)
  609c75:	00 00                	add    %al,(%rax)
  609c77:	00 80 73 40 00 00    	add    %al,0x4073(%rax)
  609c7d:	00 00                	add    %al,(%rax)
  609c7f:	00 2a                	add    %ch,(%rdx)
  609c81:	00 00                	add    %al,(%rax)
  609c83:	00 04 00             	add    %al,(%rax,%rax,1)
  609c86:	00 00                	add    %al,(%rax)
  609c88:	60                   	(bad)  
  609c89:	76 40                	jbe    609ccb <irc_msgtab+0x2eb>
  609c8b:	00 00                	add    %al,(%rax)
  609c8d:	00 00                	add    %al,(%rax)
  609c8f:	00 2b                	add    %ch,(%rbx)
  609c91:	00 00                	add    %al,(%rax)
  609c93:	00 04 00             	add    %al,(%rax,%rax,1)
  609c96:	00 00                	add    %al,(%rax)
  609c98:	00 77 40             	add    %dh,0x40(%rdi)
  609c9b:	00 00                	add    %al,(%rax)
  609c9d:	00 00                	add    %al,(%rax)
  609c9f:	00 2c 00             	add    %ch,(%rax,%rax,1)
  609ca2:	00 00                	add    %al,(%rax)
  609ca4:	04 00                	add    $0x0,%al
  609ca6:	00 00                	add    %al,(%rax)
  609ca8:	bc 73 40 00 00       	mov    $0x4073,%esp
  609cad:	00 00                	add    %al,(%rax)
  609caf:	00 2d 00 00 00 04    	add    %ch,0x4000000(%rip)        # 4609cb5 <_end+0x3fff4a5>
  609cb5:	00 00                	add    %al,(%rax)
  609cb7:	00 a0 77 40 00 00    	add    %ah,0x4077(%rax)
  609cbd:	00 00                	add    %al,(%rax)
  609cbf:	00 2e                	add    %ch,(%rsi)
  609cc1:	00 00                	add    %al,(%rax)
  609cc3:	00 04 00             	add    %al,(%rax,%rax,1)
  609cc6:	00 00                	add    %al,(%rax)
  609cc8:	f4                   	hlt    
  609cc9:	73 40                	jae    609d0b <irc_msgtab+0x32b>
  609ccb:	00 00                	add    %al,(%rax)
  609ccd:	00 00                	add    %al,(%rax)
  609ccf:	00 2f                	add    %ch,(%rdi)
  609cd1:	00 00                	add    %al,(%rax)
  609cd3:	00 04 00             	add    %al,(%rax,%rax,1)
  609cd6:	00 00                	add    %al,(%rax)
  609cd8:	40 78 40             	rex js 609d1b <irc_msgtab+0x33b>
  609cdb:	00 00                	add    %al,(%rax)
  609cdd:	00 00                	add    %al,(%rax)
  609cdf:	00 30                	add    %dh,(%rax)
  609ce1:	00 00                	add    %al,(%rax)
  609ce3:	00 04 00             	add    %al,(%rax,%rax,1)
  609ce6:	00 00                	add    %al,(%rax)
  609ce8:	2c 74                	sub    $0x74,%al
  609cea:	40 00 00             	add    %al,(%rax)
  609ced:	00 00                	add    %al,(%rax)
  609cef:	00 31                	add    %dh,(%rcx)
  609cf1:	00 00                	add    %al,(%rax)
  609cf3:	00 04 00             	add    %al,(%rax,%rax,1)
  609cf6:	00 00                	add    %al,(%rax)
  609cf8:	60                   	(bad)  
  609cf9:	74 40                	je     609d3b <irc_msgtab+0x35b>
  609cfb:	00 00                	add    %al,(%rax)
  609cfd:	00 00                	add    %al,(%rax)
  609cff:	00 32                	add    %dh,(%rdx)
  609d01:	00 00                	add    %al,(%rax)
  609d03:	00 04 00             	add    %al,(%rax,%rax,1)
  609d06:	00 00                	add    %al,(%rax)
  609d08:	80 78 40 00          	cmpb   $0x0,0x40(%rax)
  609d0c:	00 00                	add    %al,(%rax)
  609d0e:	00 00                	add    %al,(%rax)
  609d10:	33 00                	xor    (%rax),%eax
  609d12:	00 00                	add    %al,(%rax)
  609d14:	04 00                	add    $0x0,%al
  609d16:	00 00                	add    %al,(%rax)
  609d18:	e0 78                	loopne 609d92 <irc_msgtab+0x3b2>
  609d1a:	40 00 00             	add    %al,(%rax)
  609d1d:	00 00                	add    %al,(%rax)
  609d1f:	00 34 00             	add    %dh,(%rax,%rax,1)
  609d22:	00 00                	add    %al,(%rax)
  609d24:	04 00                	add    $0x0,%al
  609d26:	00 00                	add    %al,(%rax)
  609d28:	60                   	(bad)  
  609d29:	79 40                	jns    609d6b <irc_msgtab+0x38b>
  609d2b:	00 00                	add    %al,(%rax)
  609d2d:	00 00                	add    %al,(%rax)
  609d2f:	00 35 00 00 00 04    	add    %dh,0x4000000(%rip)        # 4609d35 <_end+0x3fff525>
  609d35:	00 00                	add    %al,(%rax)
  609d37:	00 a0 74 40 00 00    	add    %ah,0x4074(%rax)
  609d3d:	00 00                	add    %al,(%rax)
  609d3f:	00 36                	add    %dh,(%rsi)
  609d41:	00 00                	add    %al,(%rax)
  609d43:	00 04 00             	add    %al,(%rax,%rax,1)
  609d46:	00 00                	add    %al,(%rax)
  609d48:	d4                   	(bad)  
  609d49:	74 40                	je     609d8b <irc_msgtab+0x3ab>
  609d4b:	00 00                	add    %al,(%rax)
  609d4d:	00 00                	add    %al,(%rax)
  609d4f:	00 37                	add    %dh,(%rdi)
  609d51:	00 00                	add    %al,(%rax)
  609d53:	00 04 00             	add    %al,(%rax,%rax,1)
  609d56:	00 00                	add    %al,(%rax)
  609d58:	f4                   	hlt    
  609d59:	74 40                	je     609d9b <irc_msgtab+0x3bb>
  609d5b:	00 00                	add    %al,(%rax)
  609d5d:	00 00                	add    %al,(%rax)
  609d5f:	00 38                	add    %bh,(%rax)
  609d61:	00 00                	add    %al,(%rax)
  609d63:	00 04 00             	add    %al,(%rax,%rax,1)
  609d66:	00 00                	add    %al,(%rax)
  609d68:	00 7a 40             	add    %bh,0x40(%rdx)
  609d6b:	00 00                	add    %al,(%rax)
  609d6d:	00 00                	add    %al,(%rax)
  609d6f:	00 39                	add    %bh,(%rcx)
  609d71:	00 00                	add    %al,(%rax)
  609d73:	00 04 00             	add    %al,(%rax,%rax,1)
  609d76:	00 00                	add    %al,(%rax)
  609d78:	18 75 40             	sbb    %dh,0x40(%rbp)
  609d7b:	00 00                	add    %al,(%rax)
  609d7d:	00 00                	add    %al,(%rax)
  609d7f:	00 3a                	add    %bh,(%rdx)
  609d81:	00 00                	add    %al,(%rax)
  609d83:	00 04 00             	add    %al,(%rax,%rax,1)
  609d86:	00 00                	add    %al,(%rax)
  609d88:	80 7a 40 00          	cmpb   $0x0,0x40(%rdx)
  609d8c:	00 00                	add    %al,(%rax)
  609d8e:	00 00                	add    %al,(%rax)
  609d90:	3b 00                	cmp    (%rax),%eax
  609d92:	00 00                	add    %al,(%rax)
  609d94:	04 00                	add    $0x0,%al
  609d96:	00 00                	add    %al,(%rax)
  609d98:	e0 7a                	loopne 609e14 <_DYNAMIC+0x54>
  609d9a:	40 00 00             	add    %al,(%rax)
  609d9d:	00 00                	add    %al,(%rax)
  609d9f:	00 3c 00             	add    %bh,(%rax,%rax,1)
  609da2:	00 00                	add    %al,(%rax)
  609da4:	04 00                	add    $0x0,%al
  609da6:	00 00                	add    %al,(%rax)
  609da8:	40 7b 40             	rex jnp 609deb <_DYNAMIC+0x2b>
	...

Disassembly of section .dynamic:

0000000000609dc0 <_DYNAMIC>:
  609dc0:	01 00                	add    %eax,(%rax)
  609dc2:	00 00                	add    %al,(%rax)
  609dc4:	00 00                	add    %al,(%rax)
  609dc6:	00 00                	add    %al,(%rax)
  609dc8:	01 00                	add    %eax,(%rax)
  609dca:	00 00                	add    %al,(%rax)
  609dcc:	00 00                	add    %al,(%rax)
  609dce:	00 00                	add    %al,(%rax)
  609dd0:	01 00                	add    %eax,(%rax)
  609dd2:	00 00                	add    %al,(%rax)
  609dd4:	00 00                	add    %al,(%rax)
  609dd6:	00 00                	add    %al,(%rax)
  609dd8:	73 00                	jae    609dda <_DYNAMIC+0x1a>
  609dda:	00 00                	add    %al,(%rax)
  609ddc:	00 00                	add    %al,(%rax)
  609dde:	00 00                	add    %al,(%rax)
  609de0:	01 00                	add    %eax,(%rax)
  609de2:	00 00                	add    %al,(%rax)
  609de4:	00 00                	add    %al,(%rax)
  609de6:	00 00                	add    %al,(%rax)
  609de8:	6b 03 00             	imul   $0x0,(%rbx),%eax
  609deb:	00 00                	add    %al,(%rax)
  609ded:	00 00                	add    %al,(%rax)
  609def:	00 01                	add    %al,(%rcx)
  609df1:	00 00                	add    %al,(%rax)
  609df3:	00 00                	add    %al,(%rax)
  609df5:	00 00                	add    %al,(%rax)
  609df7:	00 7a 03             	add    %bh,0x3(%rdx)
  609dfa:	00 00                	add    %al,(%rax)
  609dfc:	00 00                	add    %al,(%rax)
  609dfe:	00 00                	add    %al,(%rax)
  609e00:	01 00                	add    %eax,(%rax)
  609e02:	00 00                	add    %al,(%rax)
  609e04:	00 00                	add    %al,(%rax)
  609e06:	00 00                	add    %al,(%rax)
  609e08:	97                   	xchg   %eax,%edi
  609e09:	03 00                	add    (%rax),%eax
  609e0b:	00 00                	add    %al,(%rax)
  609e0d:	00 00                	add    %al,(%rax)
  609e0f:	00 01                	add    %al,(%rcx)
  609e11:	00 00                	add    %al,(%rax)
  609e13:	00 00                	add    %al,(%rax)
  609e15:	00 00                	add    %al,(%rax)
  609e17:	00 77 04             	add    %dh,0x4(%rdi)
  609e1a:	00 00                	add    %al,(%rax)
  609e1c:	00 00                	add    %al,(%rax)
  609e1e:	00 00                	add    %al,(%rax)
  609e20:	0c 00                	or     $0x0,%al
  609e22:	00 00                	add    %al,(%rax)
  609e24:	00 00                	add    %al,(%rax)
  609e26:	00 00                	add    %al,(%rax)
  609e28:	20 15 40 00 00 00    	and    %dl,0x40(%rip)        # 609e6e <_DYNAMIC+0xae>
  609e2e:	00 00                	add    %al,(%rax)
  609e30:	0d 00 00 00 00       	or     $0x0,%eax
  609e35:	00 00                	add    %al,(%rax)
  609e37:	00 94 6c 40 00 00 00 	add    %dl,0x40(%rsp,%rbp,2)
  609e3e:	00 00                	add    %al,(%rax)
  609e40:	19 00                	sbb    %eax,(%rax)
  609e42:	00 00                	add    %al,(%rax)
  609e44:	00 00                	add    %al,(%rax)
  609e46:	00 00                	add    %al,(%rax)
  609e48:	20 98 60 00 00 00    	and    %bl,0x60(%rax)
  609e4e:	00 00                	add    %al,(%rax)
  609e50:	1b 00                	sbb    (%rax),%eax
  609e52:	00 00                	add    %al,(%rax)
  609e54:	00 00                	add    %al,(%rax)
  609e56:	00 00                	add    %al,(%rax)
  609e58:	10 00                	adc    %al,(%rax)
  609e5a:	00 00                	add    %al,(%rax)
  609e5c:	00 00                	add    %al,(%rax)
  609e5e:	00 00                	add    %al,(%rax)
  609e60:	1a 00                	sbb    (%rax),%al
  609e62:	00 00                	add    %al,(%rax)
  609e64:	00 00                	add    %al,(%rax)
  609e66:	00 00                	add    %al,(%rax)
  609e68:	30 98 60 00 00 00    	xor    %bl,0x60(%rax)
  609e6e:	00 00                	add    %al,(%rax)
  609e70:	1c 00                	sbb    $0x0,%al
  609e72:	00 00                	add    %al,(%rax)
  609e74:	00 00                	add    %al,(%rax)
  609e76:	00 00                	add    %al,(%rax)
  609e78:	08 00                	or     %al,(%rax)
  609e7a:	00 00                	add    %al,(%rax)
  609e7c:	00 00                	add    %al,(%rax)
  609e7e:	00 00                	add    %al,(%rax)
  609e80:	04 00                	add    $0x0,%al
  609e82:	00 00                	add    %al,(%rax)
  609e84:	00 00                	add    %al,(%rax)
  609e86:	00 00                	add    %al,(%rax)
  609e88:	98                   	cwtl   
  609e89:	02 40 00             	add    0x0(%rax),%al
  609e8c:	00 00                	add    %al,(%rax)
  609e8e:	00 00                	add    %al,(%rax)
  609e90:	f5                   	cmc    
  609e91:	fe                   	(bad)  
  609e92:	ff 6f 00             	ljmp   *0x0(%rdi)
  609e95:	00 00                	add    %al,(%rax)
  609e97:	00 20                	add    %ah,(%rax)
  609e99:	04 40                	add    $0x40,%al
  609e9b:	00 00                	add    %al,(%rax)
  609e9d:	00 00                	add    %al,(%rax)
  609e9f:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # 609ea5 <_DYNAMIC+0xe5>
  609ea5:	00 00                	add    %al,(%rax)
  609ea7:	00 f0                	add    %dh,%al
  609ea9:	09 40 00             	or     %eax,0x0(%rax)
  609eac:	00 00                	add    %al,(%rax)
  609eae:	00 00                	add    %al,(%rax)
  609eb0:	06                   	(bad)  
  609eb1:	00 00                	add    %al,(%rax)
  609eb3:	00 00                	add    %al,(%rax)
  609eb5:	00 00                	add    %al,(%rax)
  609eb7:	00 68 04             	add    %ch,0x4(%rax)
  609eba:	40 00 00             	add    %al,(%rax)
  609ebd:	00 00                	add    %al,(%rax)
  609ebf:	00 0a                	add    %cl,(%rdx)
  609ec1:	00 00                	add    %al,(%rax)
  609ec3:	00 00                	add    %al,(%rax)
  609ec5:	00 00                	add    %al,(%rax)
  609ec7:	00 c3                	add    %al,%bl
  609ec9:	04 00                	add    $0x0,%al
  609ecb:	00 00                	add    %al,(%rax)
  609ecd:	00 00                	add    %al,(%rax)
  609ecf:	00 0b                	add    %cl,(%rbx)
  609ed1:	00 00                	add    %al,(%rax)
  609ed3:	00 00                	add    %al,(%rax)
  609ed5:	00 00                	add    %al,(%rax)
  609ed7:	00 18                	add    %bl,(%rax)
  609ed9:	00 00                	add    %al,(%rax)
  609edb:	00 00                	add    %al,(%rax)
  609edd:	00 00                	add    %al,(%rax)
  609edf:	00 15 00 00 00 00    	add    %dl,0x0(%rip)        # 609ee5 <_DYNAMIC+0x125>
	...
  609eed:	00 00                	add    %al,(%rax)
  609eef:	00 03                	add    %al,(%rbx)
	...
  609ef9:	a0 60 00 00 00 00 00 	movabs 0x2000000000060,%al
  609f00:	02 00 
  609f02:	00 00                	add    %al,(%rax)
  609f04:	00 00                	add    %al,(%rax)
  609f06:	00 00                	add    %al,(%rax)
  609f08:	50                   	push   %rax
  609f09:	04 00                	add    $0x0,%al
  609f0b:	00 00                	add    %al,(%rax)
  609f0d:	00 00                	add    %al,(%rax)
  609f0f:	00 14 00             	add    %dl,(%rax,%rax,1)
  609f12:	00 00                	add    %al,(%rax)
  609f14:	00 00                	add    %al,(%rax)
  609f16:	00 00                	add    %al,(%rax)
  609f18:	07                   	(bad)  
  609f19:	00 00                	add    %al,(%rax)
  609f1b:	00 00                	add    %al,(%rax)
  609f1d:	00 00                	add    %al,(%rax)
  609f1f:	00 17                	add    %dl,(%rdi)
  609f21:	00 00                	add    %al,(%rax)
  609f23:	00 00                	add    %al,(%rax)
  609f25:	00 00                	add    %al,(%rax)
  609f27:	00 d0                	add    %dl,%al
  609f29:	10 40 00             	adc    %al,0x0(%rax)
  609f2c:	00 00                	add    %al,(%rax)
  609f2e:	00 00                	add    %al,(%rax)
  609f30:	07                   	(bad)  
  609f31:	00 00                	add    %al,(%rax)
  609f33:	00 00                	add    %al,(%rax)
  609f35:	00 00                	add    %al,(%rax)
  609f37:	00 e0                	add    %ah,%al
  609f39:	0f 40 00             	cmovo  (%rax),%eax
  609f3c:	00 00                	add    %al,(%rax)
  609f3e:	00 00                	add    %al,(%rax)
  609f40:	08 00                	or     %al,(%rax)
  609f42:	00 00                	add    %al,(%rax)
  609f44:	00 00                	add    %al,(%rax)
  609f46:	00 00                	add    %al,(%rax)
  609f48:	f0 00 00             	lock add %al,(%rax)
  609f4b:	00 00                	add    %al,(%rax)
  609f4d:	00 00                	add    %al,(%rax)
  609f4f:	00 09                	add    %cl,(%rcx)
  609f51:	00 00                	add    %al,(%rax)
  609f53:	00 00                	add    %al,(%rax)
  609f55:	00 00                	add    %al,(%rax)
  609f57:	00 18                	add    %bl,(%rax)
  609f59:	00 00                	add    %al,(%rax)
  609f5b:	00 00                	add    %al,(%rax)
  609f5d:	00 00                	add    %al,(%rax)
  609f5f:	00 fe                	add    %bh,%dh
  609f61:	ff                   	(bad)  
  609f62:	ff 6f 00             	ljmp   *0x0(%rdi)
  609f65:	00 00                	add    %al,(%rax)
  609f67:	00 30                	add    %dh,(%rax)
  609f69:	0f 40 00             	cmovo  (%rax),%eax
  609f6c:	00 00                	add    %al,(%rax)
  609f6e:	00 00                	add    %al,(%rax)
  609f70:	ff                   	(bad)  
  609f71:	ff                   	(bad)  
  609f72:	ff 6f 00             	ljmp   *0x0(%rdi)
  609f75:	00 00                	add    %al,(%rax)
  609f77:	00 04 00             	add    %al,(%rax,%rax,1)
  609f7a:	00 00                	add    %al,(%rax)
  609f7c:	00 00                	add    %al,(%rax)
  609f7e:	00 00                	add    %al,(%rax)
  609f80:	f0 ff                	lock (bad) 
  609f82:	ff 6f 00             	ljmp   *0x0(%rdi)
  609f85:	00 00                	add    %al,(%rax)
  609f87:	00 b4 0e 40 00 00 00 	add    %dh,0x40(%rsi,%rcx,1)
	...

Disassembly of section .got:

0000000000609ff0 <.got>:
	...

Disassembly of section .got.plt:

000000000060a000 <_GLOBAL_OFFSET_TABLE_>:
  60a000:	c0 9d 60 00 00 00 00 	rcrb   $0x0,0x60(%rbp)
	...
  60a017:	00 56 15             	add    %dl,0x15(%rsi)
  60a01a:	40 00 00             	add    %al,(%rax)
  60a01d:	00 00                	add    %al,(%rax)
  60a01f:	00 66 15             	add    %ah,0x15(%rsi)
  60a022:	40 00 00             	add    %al,(%rax)
  60a025:	00 00                	add    %al,(%rax)
  60a027:	00 76 15             	add    %dh,0x15(%rsi)
  60a02a:	40 00 00             	add    %al,(%rax)
  60a02d:	00 00                	add    %al,(%rax)
  60a02f:	00 86 15 40 00 00    	add    %al,0x4015(%rsi)
  60a035:	00 00                	add    %al,(%rax)
  60a037:	00 96 15 40 00 00    	add    %dl,0x4015(%rsi)
  60a03d:	00 00                	add    %al,(%rax)
  60a03f:	00 a6 15 40 00 00    	add    %ah,0x4015(%rsi)
  60a045:	00 00                	add    %al,(%rax)
  60a047:	00 b6 15 40 00 00    	add    %dh,0x4015(%rsi)
  60a04d:	00 00                	add    %al,(%rax)
  60a04f:	00 c6                	add    %al,%dh
  60a051:	15 40 00 00 00       	adc    $0x40,%eax
  60a056:	00 00                	add    %al,(%rax)
  60a058:	d6                   	(bad)  
  60a059:	15 40 00 00 00       	adc    $0x40,%eax
  60a05e:	00 00                	add    %al,(%rax)
  60a060:	e6 15                	out    %al,$0x15
  60a062:	40 00 00             	add    %al,(%rax)
  60a065:	00 00                	add    %al,(%rax)
  60a067:	00 f6                	add    %dh,%dh
  60a069:	15 40 00 00 00       	adc    $0x40,%eax
  60a06e:	00 00                	add    %al,(%rax)
  60a070:	06                   	(bad)  
  60a071:	16                   	(bad)  
  60a072:	40 00 00             	add    %al,(%rax)
  60a075:	00 00                	add    %al,(%rax)
  60a077:	00 16                	add    %dl,(%rsi)
  60a079:	16                   	(bad)  
  60a07a:	40 00 00             	add    %al,(%rax)
  60a07d:	00 00                	add    %al,(%rax)
  60a07f:	00 26                	add    %ah,(%rsi)
  60a081:	16                   	(bad)  
  60a082:	40 00 00             	add    %al,(%rax)
  60a085:	00 00                	add    %al,(%rax)
  60a087:	00 36                	add    %dh,(%rsi)
  60a089:	16                   	(bad)  
  60a08a:	40 00 00             	add    %al,(%rax)
  60a08d:	00 00                	add    %al,(%rax)
  60a08f:	00 46 16             	add    %al,0x16(%rsi)
  60a092:	40 00 00             	add    %al,(%rax)
  60a095:	00 00                	add    %al,(%rax)
  60a097:	00 56 16             	add    %dl,0x16(%rsi)
  60a09a:	40 00 00             	add    %al,(%rax)
  60a09d:	00 00                	add    %al,(%rax)
  60a09f:	00 66 16             	add    %ah,0x16(%rsi)
  60a0a2:	40 00 00             	add    %al,(%rax)
  60a0a5:	00 00                	add    %al,(%rax)
  60a0a7:	00 76 16             	add    %dh,0x16(%rsi)
  60a0aa:	40 00 00             	add    %al,(%rax)
  60a0ad:	00 00                	add    %al,(%rax)
  60a0af:	00 86 16 40 00 00    	add    %al,0x4016(%rsi)
  60a0b5:	00 00                	add    %al,(%rax)
  60a0b7:	00 96 16 40 00 00    	add    %dl,0x4016(%rsi)
  60a0bd:	00 00                	add    %al,(%rax)
  60a0bf:	00 a6 16 40 00 00    	add    %ah,0x4016(%rsi)
  60a0c5:	00 00                	add    %al,(%rax)
  60a0c7:	00 b6 16 40 00 00    	add    %dh,0x4016(%rsi)
  60a0cd:	00 00                	add    %al,(%rax)
  60a0cf:	00 c6                	add    %al,%dh
  60a0d1:	16                   	(bad)  
  60a0d2:	40 00 00             	add    %al,(%rax)
  60a0d5:	00 00                	add    %al,(%rax)
  60a0d7:	00 d6                	add    %dl,%dh
  60a0d9:	16                   	(bad)  
  60a0da:	40 00 00             	add    %al,(%rax)
  60a0dd:	00 00                	add    %al,(%rax)
  60a0df:	00 e6                	add    %ah,%dh
  60a0e1:	16                   	(bad)  
  60a0e2:	40 00 00             	add    %al,(%rax)
  60a0e5:	00 00                	add    %al,(%rax)
  60a0e7:	00 f6                	add    %dh,%dh
  60a0e9:	16                   	(bad)  
  60a0ea:	40 00 00             	add    %al,(%rax)
  60a0ed:	00 00                	add    %al,(%rax)
  60a0ef:	00 06                	add    %al,(%rsi)
  60a0f1:	17                   	(bad)  
  60a0f2:	40 00 00             	add    %al,(%rax)
  60a0f5:	00 00                	add    %al,(%rax)
  60a0f7:	00 16                	add    %dl,(%rsi)
  60a0f9:	17                   	(bad)  
  60a0fa:	40 00 00             	add    %al,(%rax)
  60a0fd:	00 00                	add    %al,(%rax)
  60a0ff:	00 26                	add    %ah,(%rsi)
  60a101:	17                   	(bad)  
  60a102:	40 00 00             	add    %al,(%rax)
  60a105:	00 00                	add    %al,(%rax)
  60a107:	00 36                	add    %dh,(%rsi)
  60a109:	17                   	(bad)  
  60a10a:	40 00 00             	add    %al,(%rax)
  60a10d:	00 00                	add    %al,(%rax)
  60a10f:	00 46 17             	add    %al,0x17(%rsi)
  60a112:	40 00 00             	add    %al,(%rax)
  60a115:	00 00                	add    %al,(%rax)
  60a117:	00 56 17             	add    %dl,0x17(%rsi)
  60a11a:	40 00 00             	add    %al,(%rax)
  60a11d:	00 00                	add    %al,(%rax)
  60a11f:	00 66 17             	add    %ah,0x17(%rsi)
  60a122:	40 00 00             	add    %al,(%rax)
  60a125:	00 00                	add    %al,(%rax)
  60a127:	00 76 17             	add    %dh,0x17(%rsi)
  60a12a:	40 00 00             	add    %al,(%rax)
  60a12d:	00 00                	add    %al,(%rax)
  60a12f:	00 86 17 40 00 00    	add    %al,0x4017(%rsi)
  60a135:	00 00                	add    %al,(%rax)
  60a137:	00 96 17 40 00 00    	add    %dl,0x4017(%rsi)
  60a13d:	00 00                	add    %al,(%rax)
  60a13f:	00 a6 17 40 00 00    	add    %ah,0x4017(%rsi)
  60a145:	00 00                	add    %al,(%rax)
  60a147:	00 b6 17 40 00 00    	add    %dh,0x4017(%rsi)
  60a14d:	00 00                	add    %al,(%rax)
  60a14f:	00 c6                	add    %al,%dh
  60a151:	17                   	(bad)  
  60a152:	40 00 00             	add    %al,(%rax)
  60a155:	00 00                	add    %al,(%rax)
  60a157:	00 d6                	add    %dl,%dh
  60a159:	17                   	(bad)  
  60a15a:	40 00 00             	add    %al,(%rax)
  60a15d:	00 00                	add    %al,(%rax)
  60a15f:	00 e6                	add    %ah,%dh
  60a161:	17                   	(bad)  
  60a162:	40 00 00             	add    %al,(%rax)
  60a165:	00 00                	add    %al,(%rax)
  60a167:	00 f6                	add    %dh,%dh
  60a169:	17                   	(bad)  
  60a16a:	40 00 00             	add    %al,(%rax)
  60a16d:	00 00                	add    %al,(%rax)
  60a16f:	00 06                	add    %al,(%rsi)
  60a171:	18 40 00             	sbb    %al,0x0(%rax)
  60a174:	00 00                	add    %al,(%rax)
  60a176:	00 00                	add    %al,(%rax)
  60a178:	16                   	(bad)  
  60a179:	18 40 00             	sbb    %al,0x0(%rax)
  60a17c:	00 00                	add    %al,(%rax)
  60a17e:	00 00                	add    %al,(%rax)
  60a180:	26 18 40 00          	sbb    %al,%es:0x0(%rax)
  60a184:	00 00                	add    %al,(%rax)
	...

Disassembly of section .data:

000000000060a188 <__data_start>:
	...

000000000060a190 <__dso_handle>:
	...

000000000060a198 <_ZTV6Matrix>:
	...
  60a1a0:	b8 a1 60 00 00       	mov    $0x60a1,%eax
	...

000000000060a1b8 <_ZTI6Matrix>:
	...
  60a1c0:	c8 a1 60 00          	enterq $0x60a1,$0x0
  60a1c4:	00 00                	add    %al,(%rax)
	...

000000000060a1c8 <_ZTS6Matrix>:
  60a1c8:	36 4d 61             	ss rex.WRB (bad) 
  60a1cb:	74 72                	je     60a23f <_ZTI11DenseMatrix+0x7>
  60a1cd:	69 78 00 00 00 00 00 	imul   $0x0,0x0(%rax),%edi

000000000060a1d0 <_ZTV12SparseMatrix>:
	...
  60a1d8:	f0 a1 60 00 00 00 00 	lock movabs 0x5b1c000000000060,%eax
  60a1df:	00 1c 5b 
  60a1e2:	40 00 00             	add    %al,(%rax)
  60a1e5:	00 00                	add    %al,(%rax)
  60a1e7:	00 58 5b             	add    %bl,0x5b(%rax)
  60a1ea:	40 00 00             	add    %al,(%rax)
  60a1ed:	00 00                	add    %al,(%rax)
	...

000000000060a1f0 <_ZTI12SparseMatrix>:
	...
  60a1f8:	08 a2 60 00 00 00    	or     %ah,0x60(%rdx)
  60a1fe:	00 00                	add    %al,(%rax)
  60a200:	b8 a1 60 00 00       	mov    $0x60a1,%eax
  60a205:	00 00                	add    %al,(%rax)
	...

000000000060a208 <_ZTS12SparseMatrix>:
  60a208:	31 32                	xor    %esi,(%rdx)
  60a20a:	53                   	push   %rbx
  60a20b:	70 61                	jo     60a26e <__TMC_END__+0x6>
  60a20d:	72 73                	jb     60a282 <_ZNSs4_Rep20_S_empty_rep_storageE@@GLIBCXX_3.4+0x2>
  60a20f:	65 4d 61             	gs rex.WRB (bad) 
  60a212:	74 72                	je     60a286 <_ZNSs4_Rep20_S_empty_rep_storageE@@GLIBCXX_3.4+0x6>
  60a214:	69 78 00 00 00 00 00 	imul   $0x0,0x0(%rax),%edi

000000000060a218 <_ZTV11DenseMatrix>:
	...
  60a220:	38 a2 60 00 00 00    	cmp    %ah,0x60(%rdx)
  60a226:	00 00                	add    %al,(%rax)
  60a228:	c0 5b 40 00          	rcrb   $0x0,0x40(%rbx)
  60a22c:	00 00                	add    %al,(%rax)
  60a22e:	00 00                	add    %al,(%rax)
  60a230:	74 5c                	je     60a28e <_ZNSs4_Rep20_S_empty_rep_storageE@@GLIBCXX_3.4+0xe>
  60a232:	40 00 00             	add    %al,(%rax)
  60a235:	00 00                	add    %al,(%rax)
	...

000000000060a238 <_ZTI11DenseMatrix>:
	...
  60a240:	50                   	push   %rax
  60a241:	a2 60 00 00 00 00 00 	movabs %al,0xa1b8000000000060
  60a248:	b8 a1 
  60a24a:	60                   	(bad)  
  60a24b:	00 00                	add    %al,(%rax)
  60a24d:	00 00                	add    %al,(%rax)
	...

000000000060a250 <_ZTS11DenseMatrix>:
  60a250:	31 31                	xor    %esi,(%rcx)
  60a252:	44                   	rex.R
  60a253:	65 6e                	outsb  %gs:(%rsi),(%dx)
  60a255:	73 65                	jae    60a2bc <_ZSt4cout@@GLIBCXX_3.4+0x1c>
  60a257:	4d 61                	rex.WRB (bad) 
  60a259:	74 72                	je     60a2cd <_ZSt4cout@@GLIBCXX_3.4+0x2d>
  60a25b:	69 78 00 00 00 01 00 	imul   $0x10000,0x0(%rax),%edi

000000000060a260 <first_msg>:
  60a260:	01 00                	add    %eax,(%rax)
	...

000000000060a264 <use_internal_msg>:
  60a264:	01 00                	add    %eax,(%rax)
	...

Disassembly of section .bss:

000000000060a280 <_ZNSs4_Rep20_S_empty_rep_storageE@@GLIBCXX_3.4>:
	...

000000000060a2a0 <_ZSt4cout@@GLIBCXX_3.4>:
	...

000000000060a3b0 <_ZTISt16invalid_argument@@GLIBCXX_3.4>:
	...

000000000060a3c8 <completed.6338>:
	...

000000000060a3c9 <_ZN17_INTERNALa880ec89St8__ioinitE>:
	...

000000000060a3e0 <get_msg_buf>:
	...

000000000060a5e0 <print_buf>:
	...

000000000060a7e0 <message_catalog>:
	...

000000000060a800 <__intel_cpu_feature_indicator>:
	...

000000000060a808 <__intel_cpu_feature_indicator_x>:
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	47                   	rex.RXB
   1:	43                   	rex.XB
   2:	43 3a 20             	rex.XB cmp (%r8),%spl
   5:	28 53 55             	sub    %dl,0x55(%rbx)
   8:	53                   	push   %rbx
   9:	45 20 4c 69 6e       	and    %r9b,0x6e(%r9,%rbp,2)
   e:	75 78                	jne    88 <_init-0x401498>
  10:	29 20                	sub    %esp,(%rax)
  12:	34 2e                	xor    $0x2e,%al
  14:	38 2e                	cmp    %ch,(%rsi)
  16:	35                   	.byte 0x35
	...

Disassembly of section .debug_aranges:

0000000000000000 <.debug_aranges>:
   0:	2c 00                	sub    $0x0,%al
   2:	00 00                	add    %al,(%rax)
   4:	02 00                	add    (%rax),%al
   6:	00 00                	add    %al,(%rax)
   8:	00 00                	add    %al,(%rax)
   a:	08 00                	or     %al,(%rax)
   c:	00 00                	add    %al,(%rax)
   e:	00 00                	add    %al,(%rax)
  10:	40 18 40 00          	sbb    %al,0x0(%rax)
  14:	00 00                	add    %al,(%rax)
  16:	00 00                	add    %al,(%rax)
  18:	2a 00                	sub    (%rax),%al
	...
  2e:	00 00                	add    %al,(%rax)
  30:	1c 00                	sbb    $0x0,%al
  32:	00 00                	add    %al,(%rax)
  34:	02 00                	add    (%rax),%al
  36:	75 00                	jne    38 <_init-0x4014e8>
  38:	00 00                	add    %al,(%rax)
  3a:	08 00                	or     %al,(%rax)
	...
  50:	3c 00                	cmp    $0x0,%al
  52:	00 00                	add    %al,(%rax)
  54:	02 00                	add    (%rax),%al
  56:	f3 00 00             	repz add %al,(%rax)
  59:	00 08                	add    %cl,(%rax)
  5b:	00 00                	add    %al,(%rax)
  5d:	00 00                	add    %al,(%rax)
  5f:	00 20                	add    %ah,(%rax)
  61:	15 40 00 00 00       	adc    $0x40,%eax
  66:	00 00                	add    %al,(%rax)
  68:	15 00 00 00 00       	adc    $0x0,%eax
  6d:	00 00                	add    %al,(%rax)
  6f:	00 94 6c 40 00 00 00 	add    %dl,0x40(%rsp,%rbp,2)
  76:	00 00                	add    %al,(%rax)
  78:	04 00                	add    $0x0,%al
	...
  8e:	00 00                	add    %al,(%rax)
  90:	2c 00                	sub    $0x0,%al
  92:	00 00                	add    %al,(%rax)
  94:	02 00                	add    (%rax),%al
  96:	5b                   	pop    %rbx
  97:	01 00                	add    %eax,(%rax)
  99:	00 08                	add    %cl,(%rax)
  9b:	00 00                	add    %al,(%rax)
  9d:	00 00                	add    %al,(%rax)
  9f:	00 20                	add    %ah,(%rax)
  a1:	6c                   	insb   (%dx),%es:(%rdi)
  a2:	40 00 00             	add    %al,(%rax)
  a5:	00 00                	add    %al,(%rax)
  a7:	00 72 00             	add    %dh,0x0(%rdx)
	...
  be:	00 00                	add    %al,(%rax)
  c0:	3c 00                	cmp    $0x0,%al
  c2:	00 00                	add    %al,(%rax)
  c4:	02 00                	add    (%rax),%al
  c6:	b3 02                	mov    $0x2,%bl
  c8:	00 00                	add    %al,(%rax)
  ca:	08 00                	or     %al,(%rax)
  cc:	00 00                	add    %al,(%rax)
  ce:	00 00                	add    %al,(%rax)
  d0:	35 15 40 00 00       	xor    $0x4015,%eax
  d5:	00 00                	add    %al,(%rax)
  d7:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # dd <_init-0x401443>
  dd:	00 00                	add    %al,(%rax)
  df:	00 98 6c 40 00 00    	add    %bl,0x406c(%rax)
  e5:	00 00                	add    %al,(%rax)
  e7:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # ed <_init-0x401433>
	...

Disassembly of section .debug_info:

0000000000000000 <.debug_info>:
   0:	71 00                	jno    2 <_init-0x40151e>
   2:	00 00                	add    %al,(%rax)
   4:	02 00                	add    (%rax),%al
   6:	00 00                	add    %al,(%rax)
   8:	00 00                	add    %al,(%rax)
   a:	08 01                	or     %al,(%rcx)
   c:	00 00                	add    %al,(%rax)
   e:	00 00                	add    %al,(%rax)
  10:	40 18 40 00          	sbb    %al,0x0(%rax)
  14:	00 00                	add    %al,(%rax)
  16:	00 00                	add    %al,(%rax)
  18:	6a 18                	pushq  $0x18
  1a:	40 00 00             	add    %al,(%rax)
  1d:	00 00                	add    %al,(%rax)
  1f:	00 2e                	add    %ch,(%rsi)
  21:	2e 2f                	cs (bad) 
  23:	73 79                	jae    9e <_init-0x401482>
  25:	73 64                	jae    8b <_init-0x401495>
  27:	65 70 73             	gs jo  9d <_init-0x401483>
  2a:	2f                   	(bad)  
  2b:	78 38                	js     65 <_init-0x4014bb>
  2d:	36 5f                	ss pop %rdi
  2f:	36 34 2f             	ss xor $0x2f,%al
  32:	73 74                	jae    a8 <_init-0x401478>
  34:	61                   	(bad)  
  35:	72 74                	jb     ab <_init-0x401475>
  37:	2e 53                	cs push %rbx
  39:	00 2f                	add    %ch,(%rdi)
  3b:	68 6f 6d 65 2f       	pushq  $0x2f656d6f
  40:	61                   	(bad)  
  41:	62                   	(bad)  {%k1}
  42:	75 69                	jne    ad <_init-0x401473>
  44:	6c                   	insb   (%dx),%es:(%rdi)
  45:	64 2f                	fs (bad) 
  47:	72 70                	jb     b9 <_init-0x401467>
  49:	6d                   	insl   (%dx),%es:(%rdi)
  4a:	62                   	(bad)  {%k1}
  4b:	75 69                	jne    b6 <_init-0x40146a>
  4d:	6c                   	insb   (%dx),%es:(%rdi)
  4e:	64 2f                	fs (bad) 
  50:	42 55                	rex.X push %rbp
  52:	49                   	rex.WB
  53:	4c                   	rex.WR
  54:	44 2f                	rex.R (bad) 
  56:	67 6c                	insb   (%dx),%es:(%edi)
  58:	69 62 63 2d 32 2e 32 	imul   $0x322e322d,0x63(%rdx),%esp
  5f:	32 2f                	xor    (%rdi),%ch
  61:	63 73 75             	movslq 0x75(%rbx),%esi
  64:	00 47 4e             	add    %al,0x4e(%rdi)
  67:	55                   	push   %rbp
  68:	20 41 53             	and    %al,0x53(%rcx)
  6b:	20 32                	and    %dh,(%rdx)
  6d:	2e 32 36             	xor    %cs:(%rsi),%dh
  70:	2e 31 00             	xor    %eax,%cs:(%rax)
  73:	01 80 7a 00 00 00    	add    %eax,0x7a(%rax)
  79:	04 00                	add    $0x0,%al
  7b:	14 00                	adc    $0x0,%al
  7d:	00 00                	add    %al,(%rax)
  7f:	08 01                	or     %al,(%rcx)
  81:	77 00                	ja     83 <_init-0x40149d>
  83:	00 00                	add    %al,(%rax)
  85:	01 7c 01 00          	add    %edi,0x0(%rcx,%rax,1)
  89:	00 4c 00 00          	add    %cl,0x0(%rax,%rax,1)
  8d:	00 5c 00 00          	add    %bl,0x0(%rax,%rax,1)
  91:	00 02                	add    %al,(%rdx)
  93:	01 08                	add    %ecx,(%rax)
  95:	12 00                	adc    (%rax),%al
  97:	00 00                	add    %al,(%rax)
  99:	02 02                	add    (%rdx),%al
  9b:	07                   	(bad)  
  9c:	20 00                	and    %al,(%rax)
  9e:	00 00                	add    %al,(%rax)
  a0:	02 04 07             	add    (%rdi,%rax,1),%al
  a3:	05 00 00 00 02       	add    $0x2000000,%eax
  a8:	08 07                	or     %al,(%rdi)
  aa:	00 00                	add    %al,(%rax)
  ac:	00 00                	add    %al,(%rax)
  ae:	02 01                	add    (%rcx),%al
  b0:	06                   	(bad)  
  b1:	14 00                	adc    $0x0,%al
  b3:	00 00                	add    %al,(%rax)
  b5:	02 02                	add    (%rdx),%al
  b7:	05 33 00 00 00       	add    $0x33,%eax
  bc:	03 04 05 69 6e 74 00 	add    0x746e69(,%rax,1),%eax
  c3:	02 08                	add    (%rax),%cl
  c5:	05 40 01 00 00       	add    $0x140,%eax
  ca:	02 08                	add    (%rax),%cl
  cc:	07                   	(bad)  
  cd:	49 01 00             	add    %rax,(%r8)
  d0:	00 02                	add    %al,(%rdx)
  d2:	01 06                	add    %eax,(%rsi)
  d4:	1b 00                	sbb    (%rax),%eax
  d6:	00 00                	add    %al,(%rax)
  d8:	04 3d                	add    $0x3d,%al
  da:	00 00                	add    %al,(%rax)
  dc:	00 01                	add    %al,(%rcx)
  de:	18 78 00             	sbb    %bh,0x0(%rax)
  e1:	00 00                	add    %al,(%rax)
  e3:	09 03                	or     %eax,(%rbx)
  e5:	a0 6c 40 00 00 00 00 	movabs 0x50000000000406c,%al
  ec:	00 05 
  ee:	47 00 00             	rex.RXB add %r8b,(%r8)
  f1:	00 00                	add    %al,(%rax)
  f3:	64 00 00             	add    %al,%fs:(%rax)
  f6:	00 02                	add    %al,(%rdx)
  f8:	00 52 00             	add    %dl,0x0(%rdx)
  fb:	00 00                	add    %al,(%rax)
  fd:	08 01                	or     %al,(%rcx)
  ff:	83 00 00             	addl   $0x0,(%rax)
 102:	00 00                	add    %al,(%rax)
 104:	00 00                	add    %al,(%rax)
 106:	00 2e                	add    %ch,(%rsi)
 108:	2e 2f                	cs (bad) 
 10a:	73 79                	jae    185 <_init-0x40139b>
 10c:	73 64                	jae    172 <_init-0x4013ae>
 10e:	65 70 73             	gs jo  184 <_init-0x40139c>
 111:	2f                   	(bad)  
 112:	78 38                	js     14c <_init-0x4013d4>
 114:	36 5f                	ss pop %rdi
 116:	36 34 2f             	ss xor $0x2f,%al
 119:	63 72 74             	movslq 0x74(%rdx),%esi
 11c:	69 2e 53 00 2f 68    	imul   $0x682f0053,(%rsi),%ebp
 122:	6f                   	outsl  %ds:(%rsi),(%dx)
 123:	6d                   	insl   (%dx),%es:(%rdi)
 124:	65 2f                	gs (bad) 
 126:	61                   	(bad)  
 127:	62                   	(bad)  {%k1}
 128:	75 69                	jne    193 <_init-0x40138d>
 12a:	6c                   	insb   (%dx),%es:(%rdi)
 12b:	64 2f                	fs (bad) 
 12d:	72 70                	jb     19f <_init-0x401381>
 12f:	6d                   	insl   (%dx),%es:(%rdi)
 130:	62                   	(bad)  {%k1}
 131:	75 69                	jne    19c <_init-0x401384>
 133:	6c                   	insb   (%dx),%es:(%rdi)
 134:	64 2f                	fs (bad) 
 136:	42 55                	rex.X push %rbp
 138:	49                   	rex.WB
 139:	4c                   	rex.WR
 13a:	44 2f                	rex.R (bad) 
 13c:	67 6c                	insb   (%dx),%es:(%edi)
 13e:	69 62 63 2d 32 2e 32 	imul   $0x322e322d,0x63(%rdx),%esp
 145:	32 2f                	xor    (%rdi),%ch
 147:	63 73 75             	movslq 0x75(%rbx),%esi
 14a:	00 47 4e             	add    %al,0x4e(%rdi)
 14d:	55                   	push   %rbp
 14e:	20 41 53             	and    %al,0x53(%rcx)
 151:	20 32                	and    %dh,(%rdx)
 153:	2e 32 36             	xor    %cs:(%rsi),%dh
 156:	2e 31 00             	xor    %eax,%cs:(%rax)
 159:	01 80 54 01 00 00    	add    %eax,0x154(%rax)
 15f:	04 00                	add    $0x0,%al
 161:	64 00 00             	add    %al,%fs:(%rax)
 164:	00 08                	add    %cl,(%rax)
 166:	01 bc 01 00 00 01 78 	add    %edi,0x78010000(%rcx,%rax,1)
 16d:	01 00                	add    %eax,(%rax)
 16f:	00 4c 00 00          	add    %cl,0x0(%rax,%rax,1)
 173:	00 20                	add    %ah,(%rax)
 175:	6c                   	insb   (%dx),%es:(%rdi)
 176:	40 00 00             	add    %al,(%rax)
 179:	00 00                	add    %al,(%rax)
 17b:	00 72 00             	add    %dh,0x0(%rdx)
 17e:	00 00                	add    %al,(%rax)
 180:	00 00                	add    %al,(%rax)
 182:	00 00                	add    %al,(%rax)
 184:	e7 00                	out    %eax,$0x0
 186:	00 00                	add    %al,(%rax)
 188:	02 08                	add    (%rax),%cl
 18a:	05 40 01 00 00       	add    $0x140,%eax
 18f:	03 52 01             	add    0x1(%rdx),%edx
 192:	00 00                	add    %al,(%rax)
 194:	02 d4                	add    %ah,%dl
 196:	3f                   	(bad)  
 197:	00 00                	add    %al,(%rax)
 199:	00 02                	add    %al,(%rdx)
 19b:	08 07                	or     %al,(%rdi)
 19d:	00 00                	add    %al,(%rax)
 19f:	00 00                	add    %al,(%rax)
 1a1:	04 04                	add    $0x4,%al
 1a3:	05 69 6e 74 00       	add    $0x746e69,%eax
 1a8:	05 68 01 00 00       	add    $0x168,%eax
 1ad:	01 43 20             	add    %eax,0x20(%rbx)
 1b0:	6c                   	insb   (%dx),%es:(%rdi)
 1b1:	40 00 00             	add    %al,(%rax)
 1b4:	00 00                	add    %al,(%rax)
 1b6:	00 65 00             	add    %ah,0x0(%rbp)
 1b9:	00 00                	add    %al,(%rax)
 1bb:	00 00                	add    %al,(%rax)
 1bd:	00 00                	add    %al,(%rax)
 1bf:	01 9c e3 00 00 00 06 	add    %ebx,0x6000000(%rbx,%riz,8)
 1c6:	63 01                	movslq (%rcx),%eax
 1c8:	00 00                	add    %al,(%rax)
 1ca:	01 43 46             	add    %eax,0x46(%rbx)
 1cd:	00 00                	add    %al,(%rax)
 1cf:	00 00                	add    %al,(%rax)
 1d1:	00 00                	add    %al,(%rax)
 1d3:	00 06                	add    %al,(%rsi)
 1d5:	5e                   	pop    %rsi
 1d6:	01 00                	add    %eax,(%rax)
 1d8:	00 01                	add    %al,(%rcx)
 1da:	43 e3 00             	rex.XB jrcxz 1dd <_init-0x401343>
 1dd:	00 00                	add    %al,(%rax)
 1df:	4c 00 00             	rex.WR add %r8b,(%rax)
 1e2:	00 06                	add    %al,(%rsi)
 1e4:	59                   	pop    %rcx
 1e5:	01 00                	add    %eax,(%rax)
 1e7:	00 01                	add    %al,(%rcx)
 1e9:	43 e3 00             	rex.XB jrcxz 1ec <_init-0x401334>
 1ec:	00 00                	add    %al,(%rax)
 1ee:	98                   	cwtl   
 1ef:	00 00                	add    %al,(%rax)
 1f1:	00 07                	add    %al,(%rdi)
 1f3:	96                   	xchg   %eax,%esi
 1f4:	01 00                	add    %eax,(%rax)
 1f6:	00 01                	add    %al,(%rcx)
 1f8:	56                   	push   %rsi
 1f9:	f6 00 00             	testb  $0x0,(%rax)
 1fc:	00 08                	add    %cl,(%rax)
 1fe:	40 00 00             	add    %al,(%rax)
 201:	00 d5                	add    %dl,%ch
 203:	00 00                	add    %al,(%rax)
 205:	00 09                	add    %cl,(%rcx)
 207:	69 00 01 57 34 00    	imul   $0x345701,(%rax),%eax
 20d:	00 00                	add    %al,(%rax)
 20f:	e4 00                	in     $0x0,%al
 211:	00 00                	add    %al,(%rax)
 213:	0a 6d 6c             	or     0x6c(%rbp),%ch
 216:	40 00 00             	add    %al,(%rax)
 219:	00 00                	add    %al,(%rax)
 21b:	00 0b                	add    %cl,(%rbx)
 21d:	01 55 02             	add    %edx,0x2(%rbp)
 220:	7f 00                	jg     222 <_init-0x4012fe>
 222:	0b 01                	or     (%rcx),%eax
 224:	54                   	push   %rsp
 225:	02 7e 00             	add    0x0(%rsi),%bh
 228:	0b 01                	or     (%rcx),%eax
 22a:	51                   	push   %rcx
 22b:	02 7d 00             	add    0x0(%rbp),%bh
 22e:	00 00                	add    %al,(%rax)
 230:	0c 53                	or     $0x53,%al
 232:	6c                   	insb   (%dx),%es:(%rdi)
 233:	40 00 00             	add    %al,(%rax)
 236:	00 00                	add    %al,(%rax)
 238:	00 50 01             	add    %dl,0x1(%rax)
 23b:	00 00                	add    %al,(%rax)
 23d:	00 0d 08 e9 00 00    	add    %cl,0xe908(%rip)        # eb4b <_init-0x3f29d5>
 243:	00 0d 08 ef 00 00    	add    %cl,0xef08(%rip)        # f151 <_init-0x3f23cf>
 249:	00 02                	add    %al,(%rdx)
 24b:	01 06                	add    %eax,(%rsi)
 24d:	1b 00                	sbb    (%rax),%eax
 24f:	00 00                	add    %al,(%rax)
 251:	0e                   	(bad)  
 252:	34 00                	xor    $0x0,%al
 254:	00 00                	add    %al,(%rax)
 256:	0f ac 01 00          	shrd   $0x0,%eax,(%rcx)
 25a:	00 01                	add    %al,(%rcx)
 25c:	5f                   	pop    %rdi
 25d:	90                   	nop
 25e:	6c                   	insb   (%dx),%es:(%rdi)
 25f:	40 00 00             	add    %al,(%rax)
 262:	00 00                	add    %al,(%rax)
 264:	00 02                	add    %al,(%rdx)
 266:	00 00                	add    %al,(%rax)
 268:	00 00                	add    %al,(%rax)
 26a:	00 00                	add    %al,(%rax)
 26c:	00 01                	add    %al,(%rcx)
 26e:	9c                   	pushfq 
 26f:	10 1f                	adc    %bl,(%rdi)
 271:	01 00                	add    %eax,(%rax)
 273:	00 1f                	add    %bl,(%rdi)
 275:	01 00                	add    %eax,(%rax)
 277:	00 11                	add    %dl,(%rcx)
 279:	00 0d 08 25 01 00    	add    %cl,0x12508(%rip)        # 12787 <_init-0x3eed99>
 27f:	00 12                	add    %dl,(%rdx)
 281:	3a 01                	cmp    (%rcx),%al
 283:	00 00                	add    %al,(%rax)
 285:	13 46 00             	adc    0x0(%rsi),%eax
 288:	00 00                	add    %al,(%rax)
 28a:	13 e3                	adc    %ebx,%esp
 28c:	00 00                	add    %al,(%rax)
 28e:	00 13                	add    %dl,(%rbx)
 290:	e3 00                	jrcxz  292 <_init-0x40128e>
 292:	00 00                	add    %al,(%rax)
 294:	00 14 83             	add    %dl,(%rbx,%rax,4)
 297:	01 00                	add    %eax,(%rax)
 299:	00 01                	add    %al,(%rcx)
 29b:	2c 14                	sub    $0x14,%al
 29d:	01 00                	add    %eax,(%rax)
 29f:	00 14 9b             	add    %dl,(%rbx,%rbx,4)
 2a2:	01 00                	add    %eax,(%rax)
 2a4:	00 01                	add    %al,(%rcx)
 2a6:	2e 14 01             	cs adc $0x1,%al
 2a9:	00 00                	add    %al,(%rax)
 2ab:	15 72 01 00 00       	adc    $0x172,%eax
 2b0:	01 37                	add    %esi,(%rdi)
 2b2:	00 64 00 00          	add    %ah,0x0(%rax,%rax,1)
 2b6:	00 02                	add    %al,(%rdx)
 2b8:	00 71 01             	add    %dh,0x1(%rcx)
 2bb:	00 00                	add    %al,(%rax)
 2bd:	08 01                	or     %al,(%rcx)
 2bf:	85 01                	test   %eax,(%rcx)
 2c1:	00 00                	add    %al,(%rax)
 2c3:	90                   	nop
 2c4:	00 00                	add    %al,(%rax)
 2c6:	00 2e                	add    %ch,(%rsi)
 2c8:	2e 2f                	cs (bad) 
 2ca:	73 79                	jae    345 <_init-0x4011db>
 2cc:	73 64                	jae    332 <_init-0x4011ee>
 2ce:	65 70 73             	gs jo  344 <_init-0x4011dc>
 2d1:	2f                   	(bad)  
 2d2:	78 38                	js     30c <_init-0x401214>
 2d4:	36 5f                	ss pop %rdi
 2d6:	36 34 2f             	ss xor $0x2f,%al
 2d9:	63 72 74             	movslq 0x74(%rdx),%esi
 2dc:	6e                   	outsb  %ds:(%rsi),(%dx)
 2dd:	2e 53                	cs push %rbx
 2df:	00 2f                	add    %ch,(%rdi)
 2e1:	68 6f 6d 65 2f       	pushq  $0x2f656d6f
 2e6:	61                   	(bad)  
 2e7:	62                   	(bad)  {%k1}
 2e8:	75 69                	jne    353 <_init-0x4011cd>
 2ea:	6c                   	insb   (%dx),%es:(%rdi)
 2eb:	64 2f                	fs (bad) 
 2ed:	72 70                	jb     35f <_init-0x4011c1>
 2ef:	6d                   	insl   (%dx),%es:(%rdi)
 2f0:	62                   	(bad)  {%k1}
 2f1:	75 69                	jne    35c <_init-0x4011c4>
 2f3:	6c                   	insb   (%dx),%es:(%rdi)
 2f4:	64 2f                	fs (bad) 
 2f6:	42 55                	rex.X push %rbp
 2f8:	49                   	rex.WB
 2f9:	4c                   	rex.WR
 2fa:	44 2f                	rex.R (bad) 
 2fc:	67 6c                	insb   (%dx),%es:(%edi)
 2fe:	69 62 63 2d 32 2e 32 	imul   $0x322e322d,0x63(%rdx),%esp
 305:	32 2f                	xor    (%rdi),%ch
 307:	63 73 75             	movslq 0x75(%rbx),%esi
 30a:	00 47 4e             	add    %al,0x4e(%rdi)
 30d:	55                   	push   %rbp
 30e:	20 41 53             	and    %al,0x53(%rcx)
 311:	20 32                	and    %dh,(%rdx)
 313:	2e 32 36             	xor    %cs:(%rsi),%dh
 316:	2e 31 00             	xor    %eax,%cs:(%rax)
 319:	01                   	.byte 0x1
 31a:	80                   	.byte 0x80

Disassembly of section .debug_abbrev:

0000000000000000 <.debug_abbrev>:
   0:	01 11                	add    %edx,(%rcx)
   2:	00 10                	add    %dl,(%rax)
   4:	06                   	(bad)  
   5:	11 01                	adc    %eax,(%rcx)
   7:	12 01                	adc    (%rcx),%al
   9:	03 08                	add    (%rax),%ecx
   b:	1b 08                	sbb    (%rax),%ecx
   d:	25 08 13 05 00       	and    $0x51308,%eax
  12:	00 00                	add    %al,(%rax)
  14:	01 11                	add    %edx,(%rcx)
  16:	01 25 0e 13 0b 03    	add    %esp,0x30b130e(%rip)        # 30b132a <_end+0x2aa6b1a>
  1c:	0e                   	(bad)  
  1d:	1b 0e                	sbb    (%rsi),%ecx
  1f:	10 17                	adc    %dl,(%rdi)
  21:	00 00                	add    %al,(%rax)
  23:	02 24 00             	add    (%rax,%rax,1),%ah
  26:	0b 0b                	or     (%rbx),%ecx
  28:	3e 0b 03             	or     %ds:(%rbx),%eax
  2b:	0e                   	(bad)  
  2c:	00 00                	add    %al,(%rax)
  2e:	03 24 00             	add    (%rax,%rax,1),%esp
  31:	0b 0b                	or     (%rbx),%ecx
  33:	3e 0b 03             	or     %ds:(%rbx),%eax
  36:	08 00                	or     %al,(%rax)
  38:	00 04 34             	add    %al,(%rsp,%rsi,1)
  3b:	00 03                	add    %al,(%rbx)
  3d:	0e                   	(bad)  
  3e:	3a 0b                	cmp    (%rbx),%cl
  40:	3b 0b                	cmp    (%rbx),%ecx
  42:	49 13 3f             	adc    (%r15),%rdi
  45:	19 02                	sbb    %eax,(%rdx)
  47:	18 00                	sbb    %al,(%rax)
  49:	00 05 26 00 49 13    	add    %al,0x13490026(%rip)        # 13490075 <_end+0x12e85865>
  4f:	00 00                	add    %al,(%rax)
  51:	00 01                	add    %al,(%rcx)
  53:	11 00                	adc    %eax,(%rax)
  55:	10 06                	adc    %al,(%rsi)
  57:	55                   	push   %rbp
  58:	06                   	(bad)  
  59:	03 08                	add    (%rax),%ecx
  5b:	1b 08                	sbb    (%rax),%ecx
  5d:	25 08 13 05 00       	and    $0x51308,%eax
  62:	00 00                	add    %al,(%rax)
  64:	01 11                	add    %edx,(%rcx)
  66:	01 25 0e 13 0b 03    	add    %esp,0x30b130e(%rip)        # 30b137a <_end+0x2aa6b6a>
  6c:	0e                   	(bad)  
  6d:	1b 0e                	sbb    (%rsi),%ecx
  6f:	11 01                	adc    %eax,(%rcx)
  71:	12 07                	adc    (%rdi),%al
  73:	10 17                	adc    %dl,(%rdi)
  75:	00 00                	add    %al,(%rax)
  77:	02 24 00             	add    (%rax,%rax,1),%ah
  7a:	0b 0b                	or     (%rbx),%ecx
  7c:	3e 0b 03             	or     %ds:(%rbx),%eax
  7f:	0e                   	(bad)  
  80:	00 00                	add    %al,(%rax)
  82:	03 16                	add    (%rsi),%edx
  84:	00 03                	add    %al,(%rbx)
  86:	0e                   	(bad)  
  87:	3a 0b                	cmp    (%rbx),%cl
  89:	3b 0b                	cmp    (%rbx),%ecx
  8b:	49 13 00             	adc    (%r8),%rax
  8e:	00 04 24             	add    %al,(%rsp)
  91:	00 0b                	add    %cl,(%rbx)
  93:	0b 3e                	or     (%rsi),%edi
  95:	0b 03                	or     (%rbx),%eax
  97:	08 00                	or     %al,(%rax)
  99:	00 05 2e 01 3f 19    	add    %al,0x193f012e(%rip)        # 193f01cd <_end+0x18de59bd>
  9f:	03 0e                	add    (%rsi),%ecx
  a1:	3a 0b                	cmp    (%rbx),%cl
  a3:	3b 0b                	cmp    (%rbx),%ecx
  a5:	27                   	(bad)  
  a6:	19 11                	sbb    %edx,(%rcx)
  a8:	01 12                	add    %edx,(%rdx)
  aa:	07                   	(bad)  
  ab:	40 18 97 42 19 01 13 	sbb    %dl,0x13011942(%rdi)
  b2:	00 00                	add    %al,(%rax)
  b4:	06                   	(bad)  
  b5:	05 00 03 0e 3a       	add    $0x3a0e0300,%eax
  ba:	0b 3b                	or     (%rbx),%edi
  bc:	0b 49 13             	or     0x13(%rcx),%ecx
  bf:	02 17                	add    (%rdi),%dl
  c1:	00 00                	add    %al,(%rax)
  c3:	07                   	(bad)  
  c4:	34 00                	xor    $0x0,%al
  c6:	03 0e                	add    (%rsi),%ecx
  c8:	3a 0b                	cmp    (%rbx),%cl
  ca:	3b 0b                	cmp    (%rbx),%ecx
  cc:	49 13 00             	adc    (%r8),%rax
  cf:	00 08                	add    %cl,(%rax)
  d1:	0b 01                	or     (%rcx),%eax
  d3:	55                   	push   %rbp
  d4:	17                   	(bad)  
  d5:	01 13                	add    %edx,(%rbx)
  d7:	00 00                	add    %al,(%rax)
  d9:	09 34 00             	or     %esi,(%rax,%rax,1)
  dc:	03 08                	add    (%rax),%ecx
  de:	3a 0b                	cmp    (%rbx),%cl
  e0:	3b 0b                	cmp    (%rbx),%ecx
  e2:	49 13 02             	adc    (%r10),%rax
  e5:	17                   	(bad)  
  e6:	00 00                	add    %al,(%rax)
  e8:	0a 89 82 01 01 11    	or     0x11010182(%rcx),%cl
  ee:	01 00                	add    %eax,(%rax)
  f0:	00 0b                	add    %cl,(%rbx)
  f2:	8a 82 01 00 02 18    	mov    0x18020001(%rdx),%al
  f8:	91                   	xchg   %eax,%ecx
  f9:	42 18 00             	rex.X sbb %al,(%rax)
  fc:	00 0c 89             	add    %cl,(%rcx,%rcx,4)
  ff:	82                   	(bad)  
 100:	01 00                	add    %eax,(%rax)
 102:	11 01                	adc    %eax,(%rcx)
 104:	31 13                	xor    %edx,(%rbx)
 106:	00 00                	add    %al,(%rax)
 108:	0d 0f 00 0b 0b       	or     $0xb0b000f,%eax
 10d:	49 13 00             	adc    (%r8),%rax
 110:	00 0e                	add    %cl,(%rsi)
 112:	26 00 49 13          	add    %cl,%es:0x13(%rcx)
 116:	00 00                	add    %al,(%rax)
 118:	0f 2e 00             	ucomiss (%rax),%xmm0
 11b:	3f                   	(bad)  
 11c:	19 03                	sbb    %eax,(%rbx)
 11e:	0e                   	(bad)  
 11f:	3a 0b                	cmp    (%rbx),%cl
 121:	3b 0b                	cmp    (%rbx),%ecx
 123:	27                   	(bad)  
 124:	19 11                	sbb    %edx,(%rcx)
 126:	01 12                	add    %edx,(%rdx)
 128:	07                   	(bad)  
 129:	40 18 97 42 19 00 00 	sbb    %dl,0x1942(%rdi)
 130:	10 01                	adc    %al,(%rcx)
 132:	01 49 13             	add    %ecx,0x13(%rcx)
 135:	01 13                	add    %edx,(%rbx)
 137:	00 00                	add    %al,(%rax)
 139:	11 21                	adc    %esp,(%rcx)
 13b:	00 00                	add    %al,(%rax)
 13d:	00 12                	add    %dl,(%rdx)
 13f:	15 01 27 19 01       	adc    $0x1192701,%eax
 144:	13 00                	adc    (%rax),%eax
 146:	00 13                	add    %dl,(%rbx)
 148:	05 00 49 13 00       	add    $0x134900,%eax
 14d:	00 14 34             	add    %dl,(%rsp,%rsi,1)
 150:	00 03                	add    %al,(%rbx)
 152:	0e                   	(bad)  
 153:	3a 0b                	cmp    (%rbx),%cl
 155:	3b 0b                	cmp    (%rbx),%ecx
 157:	49 13 3f             	adc    (%r15),%rdi
 15a:	19 3c 19             	sbb    %edi,(%rcx,%rbx,1)
 15d:	00 00                	add    %al,(%rax)
 15f:	15 2e 00 3f 19       	adc    $0x193f002e,%eax
 164:	03 0e                	add    (%rsi),%ecx
 166:	3a 0b                	cmp    (%rbx),%cl
 168:	3b 0b                	cmp    (%rbx),%ecx
 16a:	27                   	(bad)  
 16b:	19 3c 19             	sbb    %edi,(%rcx,%rbx,1)
 16e:	00 00                	add    %al,(%rax)
 170:	00 01                	add    %al,(%rcx)
 172:	11 00                	adc    %eax,(%rax)
 174:	10 06                	adc    %al,(%rsi)
 176:	55                   	push   %rbp
 177:	06                   	(bad)  
 178:	03 08                	add    (%rax),%ecx
 17a:	1b 08                	sbb    (%rax),%ecx
 17c:	25 08 13 05 00       	and    $0x51308,%eax
	...

Disassembly of section .debug_line:

0000000000000000 <.debug_line>:
   0:	58                   	pop    %rax
   1:	00 00                	add    %al,(%rax)
   3:	00 02                	add    %al,(%rdx)
   5:	00 30                	add    %dh,(%rax)
   7:	00 00                	add    %al,(%rax)
   9:	00 01                	add    %al,(%rcx)
   b:	01 fb                	add    %edi,%ebx
   d:	0e                   	(bad)  
   e:	0d 00 01 01 01       	or     $0x1010100,%eax
  13:	01 00                	add    %eax,(%rax)
  15:	00 00                	add    %al,(%rax)
  17:	01 00                	add    %eax,(%rax)
  19:	00 01                	add    %al,(%rcx)
  1b:	2e 2e 2f             	cs cs (bad) 
  1e:	73 79                	jae    99 <_init-0x401487>
  20:	73 64                	jae    86 <_init-0x40149a>
  22:	65 70 73             	gs jo  98 <_init-0x401488>
  25:	2f                   	(bad)  
  26:	78 38                	js     60 <_init-0x4014c0>
  28:	36 5f                	ss pop %rdi
  2a:	36 34 00             	ss xor $0x0,%al
  2d:	00 73 74             	add    %dh,0x74(%rbx)
  30:	61                   	(bad)  
  31:	72 74                	jb     a7 <_init-0x401479>
  33:	2e 53                	cs push %rbx
  35:	00 01                	add    %al,(%rcx)
  37:	00 00                	add    %al,(%rax)
  39:	00 00                	add    %al,(%rax)
  3b:	09 02                	or     %eax,(%rdx)
  3d:	40 18 40 00          	sbb    %al,0x0(%rax)
  41:	00 00                	add    %al,(%rax)
  43:	00 00                	add    %al,(%rax)
  45:	03 3e                	add    (%rsi),%edi
  47:	01 03                	add    %eax,(%rbx)
  49:	10 2e                	adc    %ch,(%rsi)
  4b:	42 23 3e             	rex.X and (%rsi),%edi
  4e:	4d 24 03             	rex.WRB and $0x3,%al
  51:	0e                   	(bad)  
  52:	20 75 76             	and    %dh,0x76(%rbp)
  55:	78 5b                	js     b2 <_init-0x40146e>
  57:	02 01                	add    (%rcx),%al
  59:	00 01                	add    %al,(%rcx)
  5b:	01 23                	add    %esp,(%rbx)
  5d:	00 00                	add    %al,(%rax)
  5f:	00 02                	add    %al,(%rdx)
  61:	00 1d 00 00 00 01    	add    %bl,0x1000000(%rip)        # 1000067 <_end+0x9f5857>
  67:	01 fb                	add    %edi,%ebx
  69:	0e                   	(bad)  
  6a:	0d 00 01 01 01       	or     $0x1010100,%eax
  6f:	01 00                	add    %eax,(%rax)
  71:	00 00                	add    %al,(%rax)
  73:	01 00                	add    %eax,(%rax)
  75:	00 01                	add    %al,(%rcx)
  77:	00 69 6e             	add    %ch,0x6e(%rcx)
  7a:	69 74 2e 63 00 00 00 	imul   $0x0,0x63(%rsi,%rbp,1),%esi
  81:	00 
  82:	00 60 00             	add    %ah,0x0(%rax)
  85:	00 00                	add    %al,(%rax)
  87:	02 00                	add    (%rax),%al
  89:	2f                   	(bad)  
  8a:	00 00                	add    %al,(%rax)
  8c:	00 01                	add    %al,(%rcx)
  8e:	01 fb                	add    %edi,%ebx
  90:	0e                   	(bad)  
  91:	0d 00 01 01 01       	or     $0x1010100,%eax
  96:	01 00                	add    %eax,(%rax)
  98:	00 00                	add    %al,(%rax)
  9a:	01 00                	add    %eax,(%rax)
  9c:	00 01                	add    %al,(%rcx)
  9e:	2e 2e 2f             	cs cs (bad) 
  a1:	73 79                	jae    11c <_init-0x401404>
  a3:	73 64                	jae    109 <_init-0x401417>
  a5:	65 70 73             	gs jo  11b <_init-0x401405>
  a8:	2f                   	(bad)  
  a9:	78 38                	js     e3 <_init-0x40143d>
  ab:	36 5f                	ss pop %rdi
  ad:	36 34 00             	ss xor $0x0,%al
  b0:	00 63 72             	add    %ah,0x72(%rbx)
  b3:	74 69                	je     11e <_init-0x401402>
  b5:	2e 53                	cs push %rbx
  b7:	00 01                	add    %al,(%rcx)
  b9:	00 00                	add    %al,(%rax)
  bb:	00 00                	add    %al,(%rax)
  bd:	09 02                	or     %eax,(%rdx)
  bf:	20 15 40 00 00 00    	and    %dl,0x40(%rip)        # 105 <_init-0x40141b>
  c5:	00 00                	add    %al,(%rax)
  c7:	03 3f                	add    (%rdi),%edi
  c9:	01 4c 75 3d          	add    %ecx,0x3d(%rbp,%rsi,2)
  cd:	2f                   	(bad)  
  ce:	02 05 00 01 01 00    	add    0x10100(%rip),%al        # 101d4 <_init-0x3f134c>
  d4:	09 02                	or     %eax,(%rdx)
  d6:	94                   	xchg   %eax,%esp
  d7:	6c                   	insb   (%dx),%es:(%rdi)
  d8:	40 00 00             	add    %al,(%rax)
  db:	00 00                	add    %al,(%rax)
  dd:	00 03                	add    %al,(%rbx)
  df:	cf                   	iret   
  e0:	00 01                	add    %al,(%rcx)
  e2:	02 04 00             	add    (%rax,%rax,1),%al
  e5:	01 01                	add    %eax,(%rcx)
  e7:	9a                   	(bad)  
  e8:	00 00                	add    %al,(%rax)
  ea:	00 02                	add    %al,(%rdx)
  ec:	00 5a 00             	add    %bl,0x0(%rdx)
  ef:	00 00                	add    %al,(%rax)
  f1:	01 01                	add    %eax,(%rcx)
  f3:	fb                   	sti    
  f4:	0e                   	(bad)  
  f5:	0d 00 01 01 01       	or     $0x1010100,%eax
  fa:	01 00                	add    %eax,(%rax)
  fc:	00 00                	add    %al,(%rax)
  fe:	01 00                	add    %eax,(%rax)
 100:	00 01                	add    %al,(%rcx)
 102:	2f                   	(bad)  
 103:	75 73                	jne    178 <_init-0x4013a8>
 105:	72 2f                	jb     136 <_init-0x4013ea>
 107:	6c                   	insb   (%dx),%es:(%rdi)
 108:	69 62 36 34 2f 67 63 	imul   $0x63672f34,0x36(%rdx),%esp
 10f:	63 2f                	movslq (%rdi),%ebp
 111:	78 38                	js     14b <_init-0x4013d5>
 113:	36 5f                	ss pop %rdi
 115:	36 34 2d             	ss xor $0x2d,%al
 118:	73 75                	jae    18f <_init-0x401391>
 11a:	73 65                	jae    181 <_init-0x40139f>
 11c:	2d 6c 69 6e 75       	sub    $0x756e696c,%eax
 121:	78 2f                	js     152 <_init-0x4013ce>
 123:	34 2e                	xor    $0x2e,%al
 125:	38 2f                	cmp    %ch,(%rdi)
 127:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%rsi),%ebp
 12e:	00 00                	add    %al,(%rax)
 130:	65 6c                	gs insb (%dx),%es:(%rdi)
 132:	66 2d 69 6e          	sub    $0x6e69,%ax
 136:	69 74 2e 63 00 00 00 	imul   $0x0,0x63(%rsi,%rbp,1),%esi
 13d:	00 
 13e:	73 74                	jae    1b4 <_init-0x40136c>
 140:	64 64 65 66 2e 68 00 	fs fs gs cs pushw $0x100
 147:	01 
 148:	00 00                	add    %al,(%rax)
 14a:	00 00                	add    %al,(%rax)
 14c:	09 02                	or     %eax,(%rdx)
 14e:	20 6c 40 00          	and    %ch,0x0(%rax,%rax,2)
 152:	00 00                	add    %al,(%rax)
 154:	00 00                	add    %al,(%rax)
 156:	03 c3                	add    %ebx,%eax
 158:	00 01                	add    %al,(%rcx)
 15a:	03 12                	add    (%rdx),%edx
 15c:	08 12                	or     %dl,(%rdx)
 15e:	03 6e 74             	add    0x74(%rsi),%ebp
 161:	03 12                	add    (%rdx),%edx
 163:	20 03                	and    %al,(%rbx)
 165:	6e                   	outsb  %ds:(%rsi),(%dx)
 166:	74 03                	je     16b <_init-0x4013b5>
 168:	12 20                	adc    (%rax),%ah
 16a:	3d 2d 03 6e 4a       	cmp    $0x4a6e032d,%eax
 16f:	03 0f                	add    (%rdi),%ecx
 171:	4a 5c                	rex.WX pop %rsp
 173:	00 02                	add    %al,(%rdx)
 175:	04 02                	add    $0x2,%al
 177:	c9                   	leaveq 
 178:	00 02                	add    %al,(%rdx)
 17a:	04 02                	add    $0x2,%al
 17c:	c7                   	(bad)  
 17d:	92                   	xchg   %eax,%edx
 17e:	08 97 02 02 00 01    	or     %dl,0x1000202(%rdi)
 184:	01 5d 00             	add    %ebx,0x0(%rbp)
 187:	00 00                	add    %al,(%rax)
 189:	02 00                	add    (%rax),%al
 18b:	2f                   	(bad)  
 18c:	00 00                	add    %al,(%rax)
 18e:	00 01                	add    %al,(%rcx)
 190:	01 fb                	add    %edi,%ebx
 192:	0e                   	(bad)  
 193:	0d 00 01 01 01       	or     $0x1010100,%eax
 198:	01 00                	add    %eax,(%rax)
 19a:	00 00                	add    %al,(%rax)
 19c:	01 00                	add    %eax,(%rax)
 19e:	00 01                	add    %al,(%rcx)
 1a0:	2e 2e 2f             	cs cs (bad) 
 1a3:	73 79                	jae    21e <_init-0x401302>
 1a5:	73 64                	jae    20b <_init-0x401315>
 1a7:	65 70 73             	gs jo  21d <_init-0x401303>
 1aa:	2f                   	(bad)  
 1ab:	78 38                	js     1e5 <_init-0x40133b>
 1ad:	36 5f                	ss pop %rdi
 1af:	36 34 00             	ss xor $0x0,%al
 1b2:	00 63 72             	add    %ah,0x72(%rbx)
 1b5:	74 6e                	je     225 <_init-0x4012fb>
 1b7:	2e 53                	cs push %rbx
 1b9:	00 01                	add    %al,(%rcx)
 1bb:	00 00                	add    %al,(%rax)
 1bd:	00 00                	add    %al,(%rax)
 1bf:	09 02                	or     %eax,(%rdx)
 1c1:	35 15 40 00 00       	xor    $0x4015,%eax
 1c6:	00 00                	add    %al,(%rax)
 1c8:	00 03                	add    %al,(%rbx)
 1ca:	27                   	(bad)  
 1cb:	01 4b 02             	add    %ecx,0x2(%rbx)
 1ce:	01 00                	add    %eax,(%rax)
 1d0:	01 01                	add    %eax,(%rcx)
 1d2:	00 09                	add    %cl,(%rcx)
 1d4:	02 98 6c 40 00 00    	add    0x406c(%rax),%bl
 1da:	00 00                	add    %al,(%rax)
 1dc:	00 03                	add    %al,(%rbx)
 1de:	2b 01                	sub    (%rcx),%eax
 1e0:	4b 02 01             	rex.WXB add (%r9),%al
 1e3:	00 01                	add    %al,(%rcx)
 1e5:	01                   	.byte 0x1

Disassembly of section .debug_str:

0000000000000000 <.debug_str>:
   0:	6c                   	insb   (%dx),%es:(%rdi)
   1:	6f                   	outsl  %ds:(%rsi),(%dx)
   2:	6e                   	outsb  %ds:(%rsi),(%dx)
   3:	67 20 75 6e          	and    %dh,0x6e(%ebp)
   7:	73 69                	jae    72 <_init-0x4014ae>
   9:	67 6e                	outsb  %ds:(%esi),(%dx)
   b:	65 64 20 69 6e       	gs and %ch,%fs:0x6e(%rcx)
  10:	74 00                	je     12 <_init-0x40150e>
  12:	75 6e                	jne    82 <_init-0x40149e>
  14:	73 69                	jae    7f <_init-0x4014a1>
  16:	67 6e                	outsb  %ds:(%esi),(%dx)
  18:	65 64 20 63 68       	gs and %ah,%fs:0x68(%rbx)
  1d:	61                   	(bad)  
  1e:	72 00                	jb     20 <_init-0x401500>
  20:	73 68                	jae    8a <_init-0x401496>
  22:	6f                   	outsl  %ds:(%rsi),(%dx)
  23:	72 74                	jb     99 <_init-0x401487>
  25:	20 75 6e             	and    %dh,0x6e(%rbp)
  28:	73 69                	jae    93 <_init-0x40148d>
  2a:	67 6e                	outsb  %ds:(%esi),(%dx)
  2c:	65 64 20 69 6e       	gs and %ch,%fs:0x6e(%rcx)
  31:	74 00                	je     33 <_init-0x4014ed>
  33:	73 68                	jae    9d <_init-0x401483>
  35:	6f                   	outsl  %ds:(%rsi),(%dx)
  36:	72 74                	jb     ac <_init-0x401474>
  38:	20 69 6e             	and    %ch,0x6e(%rcx)
  3b:	74 00                	je     3d <_init-0x4014e3>
  3d:	5f                   	pop    %rdi
  3e:	49                   	rex.WB
  3f:	4f 5f                	rex.WRXB pop %r15
  41:	73 74                	jae    b7 <_init-0x401469>
  43:	64 69 6e 5f 75 73 65 	imul   $0x64657375,%fs:0x5f(%rsi),%ebp
  4a:	64 
  4b:	00 2f                	add    %ch,(%rdi)
  4d:	68 6f 6d 65 2f       	pushq  $0x2f656d6f
  52:	61                   	(bad)  
  53:	62                   	(bad)  {%k1}
  54:	75 69                	jne    bf <_init-0x401461>
  56:	6c                   	insb   (%dx),%es:(%rdi)
  57:	64 2f                	fs (bad) 
  59:	72 70                	jb     cb <_init-0x401455>
  5b:	6d                   	insl   (%dx),%es:(%rdi)
  5c:	62                   	(bad)  {%k1}
  5d:	75 69                	jne    c8 <_init-0x401458>
  5f:	6c                   	insb   (%dx),%es:(%rdi)
  60:	64 2f                	fs (bad) 
  62:	42 55                	rex.X push %rbp
  64:	49                   	rex.WB
  65:	4c                   	rex.WR
  66:	44 2f                	rex.R (bad) 
  68:	67 6c                	insb   (%dx),%es:(%edi)
  6a:	69 62 63 2d 32 2e 32 	imul   $0x322e322d,0x63(%rdx),%esp
  71:	32 2f                	xor    (%rdi),%ch
  73:	63 73 75             	movslq 0x75(%rbx),%esi
  76:	00 47 4e             	add    %al,0x4e(%rdi)
  79:	55                   	push   %rbp
  7a:	20 43 20             	and    %al,0x20(%rbx)
  7d:	34 2e                	xor    $0x2e,%al
  7f:	38 2e                	cmp    %ch,(%rsi)
  81:	35 20 2d 6d 74       	xor    $0x746d2d20,%eax
  86:	75 6e                	jne    f6 <_init-0x40142a>
  88:	65 3d 67 65 6e 65    	gs cmp $0x656e6567,%eax
  8e:	72 69                	jb     f9 <_init-0x401427>
  90:	63 20                	movslq (%rax),%esp
  92:	2d 6d 61 72 63       	sub    $0x6372616d,%eax
  97:	68 3d 78 38 36       	pushq  $0x3638783d
  9c:	2d 36 34 20 2d       	sub    $0x2d203436,%eax
  a1:	67 20 2d 4f 32 20 2d 	and    %ch,0x2d20324f(%eip)        # 2d2032f7 <_end+0x2cbf8ae7>
  a8:	73 74                	jae    11e <_init-0x401402>
  aa:	64 3d 67 6e 75 39    	fs cmp $0x39756e67,%eax
  b0:	39 20                	cmp    %esp,(%rax)
  b2:	2d 66 67 6e 75       	sub    $0x756e6766,%eax
  b7:	38 39                	cmp    %bh,(%rcx)
  b9:	2d 69 6e 6c 69       	sub    $0x696c6e69,%eax
  be:	6e                   	outsb  %ds:(%rsi),(%dx)
  bf:	65 20 2d 66 61 73 79 	and    %ch,%gs:0x79736166(%rip)        # 7973622c <_end+0x7912ba1c>
  c6:	6e                   	outsb  %ds:(%rsi),(%dx)
  c7:	63 68 72             	movslq 0x72(%rax),%ebp
  ca:	6f                   	outsl  %ds:(%rsi),(%dx)
  cb:	6e                   	outsb  %ds:(%rsi),(%dx)
  cc:	6f                   	outsl  %ds:(%rsi),(%dx)
  cd:	75 73                	jne    142 <_init-0x4013de>
  cf:	2d 75 6e 77 69       	sub    $0x69776e75,%eax
  d4:	6e                   	outsb  %ds:(%rsi),(%dx)
  d5:	64 2d 74 61 62 6c    	fs sub $0x6c626174,%eax
  db:	65 73 20             	gs jae fe <_init-0x401422>
  de:	2d 66 6d 65 72       	sub    $0x72656d66,%eax
  e3:	67 65 2d 61 6c 6c 2d 	addr32 gs sub $0x2d6c6c61,%eax
  ea:	63 6f 6e             	movslq 0x6e(%rdi),%ebp
  ed:	73 74                	jae    163 <_init-0x4013bd>
  ef:	61                   	(bad)  
  f0:	6e                   	outsb  %ds:(%rsi),(%dx)
  f1:	74 73                	je     166 <_init-0x4013ba>
  f3:	20 2d 66 6d 65 73    	and    %ch,0x73656d66(%rip)        # 73656e5f <_end+0x7304c64f>
  f9:	73 61                	jae    15c <_init-0x4013c4>
  fb:	67 65 2d 6c 65 6e 67 	addr32 gs sub $0x676e656c,%eax
 102:	74 68                	je     16c <_init-0x4013b4>
 104:	3d 30 20 2d 66       	cmp    $0x662d2030,%eax
 109:	72 6f                	jb     17a <_init-0x4013a6>
 10b:	75 6e                	jne    17b <_init-0x4013a5>
 10d:	64 69 6e 67 2d 6d 61 	imul   $0x74616d2d,%fs:0x67(%rsi),%ebp
 114:	74 
 115:	68 20 2d 66 75       	pushq  $0x75662d20
 11a:	6e                   	outsb  %ds:(%rsi),(%dx)
 11b:	77 69                	ja     186 <_init-0x40139a>
 11d:	6e                   	outsb  %ds:(%rsi),(%dx)
 11e:	64 2d 74 61 62 6c    	fs sub $0x6c626174,%eax
 124:	65 73 20             	gs jae 147 <_init-0x4013d9>
 127:	2d 66 74 6c 73       	sub    $0x736c7466,%eax
 12c:	2d 6d 6f 64 65       	sub    $0x65646f6d,%eax
 131:	6c                   	insb   (%dx),%es:(%rdi)
 132:	3d 69 6e 69 74       	cmp    $0x74696e69,%eax
 137:	69 61 6c 2d 65 78 65 	imul   $0x6578652d,0x6c(%rcx),%esp
 13e:	63 00                	movslq (%rax),%eax
 140:	6c                   	insb   (%dx),%es:(%rdi)
 141:	6f                   	outsl  %ds:(%rsi),(%dx)
 142:	6e                   	outsb  %ds:(%rsi),(%dx)
 143:	67 20 69 6e          	and    %ch,0x6e(%ecx)
 147:	74 00                	je     149 <_init-0x4013d7>
 149:	73 69                	jae    1b4 <_init-0x40136c>
 14b:	7a 65                	jp     1b2 <_init-0x40136e>
 14d:	74 79                	je     1c8 <_init-0x401358>
 14f:	70 65                	jo     1b6 <_init-0x40136a>
 151:	00 73 69             	add    %dh,0x69(%rbx)
 154:	7a 65                	jp     1bb <_init-0x401365>
 156:	5f                   	pop    %rdi
 157:	74 00                	je     159 <_init-0x4013c7>
 159:	65 6e                	outsb  %gs:(%rsi),(%dx)
 15b:	76 70                	jbe    1cd <_init-0x401353>
 15d:	00 61 72             	add    %ah,0x72(%rcx)
 160:	67 76 00             	addr32 jbe 163 <_init-0x4013bd>
 163:	61                   	(bad)  
 164:	72 67                	jb     1cd <_init-0x401353>
 166:	63 00                	movslq (%rax),%eax
 168:	5f                   	pop    %rdi
 169:	5f                   	pop    %rdi
 16a:	6c                   	insb   (%dx),%es:(%rdi)
 16b:	69 62 63 5f 63 73 75 	imul   $0x7573635f,0x63(%rdx),%esp
 172:	5f                   	pop    %rdi
 173:	69 6e 69 74 00 65 6c 	imul   $0x6c650074,0x69(%rsi),%ebp
 17a:	66 2d 69 6e          	sub    $0x6e69,%ax
 17e:	69 74 2e 63 00 5f 5f 	imul   $0x695f5f00,0x63(%rsi,%rbp,1),%esi
 185:	69 
 186:	6e                   	outsb  %ds:(%rsi),(%dx)
 187:	69 74 5f 61 72 72 61 	imul   $0x79617272,0x61(%rdi,%rbx,2),%esi
 18e:	79 
 18f:	5f                   	pop    %rdi
 190:	73 74                	jae    206 <_init-0x40131a>
 192:	61                   	(bad)  
 193:	72 74                	jb     209 <_init-0x401317>
 195:	00 73 69             	add    %dh,0x69(%rbx)
 198:	7a 65                	jp     1ff <_init-0x401321>
 19a:	00 5f 5f             	add    %bl,0x5f(%rdi)
 19d:	69 6e 69 74 5f 61 72 	imul   $0x72615f74,0x69(%rsi),%ebp
 1a4:	72 61                	jb     207 <_init-0x401319>
 1a6:	79 5f                	jns    207 <_init-0x401319>
 1a8:	65 6e                	outsb  %gs:(%rsi),(%dx)
 1aa:	64 00 5f 5f          	add    %bl,%fs:0x5f(%rdi)
 1ae:	6c                   	insb   (%dx),%es:(%rdi)
 1af:	69 62 63 5f 63 73 75 	imul   $0x7573635f,0x63(%rdx),%esp
 1b6:	5f                   	pop    %rdi
 1b7:	66 69 6e 69 00 47    	imul   $0x4700,0x69(%rsi),%bp
 1bd:	4e 55                	rex.WRX push %rbp
 1bf:	20 43 20             	and    %al,0x20(%rbx)
 1c2:	34 2e                	xor    $0x2e,%al
 1c4:	38 2e                	cmp    %ch,(%rsi)
 1c6:	35 20 2d 6d 74       	xor    $0x746d2d20,%eax
 1cb:	75 6e                	jne    23b <_init-0x4012e5>
 1cd:	65 3d 67 65 6e 65    	gs cmp $0x656e6567,%eax
 1d3:	72 69                	jb     23e <_init-0x4012e2>
 1d5:	63 20                	movslq (%rax),%esp
 1d7:	2d 6d 61 72 63       	sub    $0x6372616d,%eax
 1dc:	68 3d 78 38 36       	pushq  $0x3638783d
 1e1:	2d 36 34 20 2d       	sub    $0x2d203436,%eax
 1e6:	67 20 2d 4f 32 20 2d 	and    %ch,0x2d20324f(%eip)        # 2d20343c <_end+0x2cbf8c2c>
 1ed:	73 74                	jae    263 <_init-0x4012bd>
 1ef:	64 3d 67 6e 75 39    	fs cmp $0x39756e67,%eax
 1f5:	39 20                	cmp    %esp,(%rax)
 1f7:	2d 66 67 6e 75       	sub    $0x756e6766,%eax
 1fc:	38 39                	cmp    %bh,(%rcx)
 1fe:	2d 69 6e 6c 69       	sub    $0x696c6e69,%eax
 203:	6e                   	outsb  %ds:(%rsi),(%dx)
 204:	65 20 2d 66 61 73 79 	and    %ch,%gs:0x79736166(%rip)        # 79736371 <_end+0x7912bb61>
 20b:	6e                   	outsb  %ds:(%rsi),(%dx)
 20c:	63 68 72             	movslq 0x72(%rax),%ebp
 20f:	6f                   	outsl  %ds:(%rsi),(%dx)
 210:	6e                   	outsb  %ds:(%rsi),(%dx)
 211:	6f                   	outsl  %ds:(%rsi),(%dx)
 212:	75 73                	jne    287 <_init-0x401299>
 214:	2d 75 6e 77 69       	sub    $0x69776e75,%eax
 219:	6e                   	outsb  %ds:(%rsi),(%dx)
 21a:	64 2d 74 61 62 6c    	fs sub $0x6c626174,%eax
 220:	65 73 20             	gs jae 243 <_init-0x4012dd>
 223:	2d 66 6d 65 72       	sub    $0x72656d66,%eax
 228:	67 65 2d 61 6c 6c 2d 	addr32 gs sub $0x2d6c6c61,%eax
 22f:	63 6f 6e             	movslq 0x6e(%rdi),%ebp
 232:	73 74                	jae    2a8 <_init-0x401278>
 234:	61                   	(bad)  
 235:	6e                   	outsb  %ds:(%rsi),(%dx)
 236:	74 73                	je     2ab <_init-0x401275>
 238:	20 2d 66 6d 65 73    	and    %ch,0x73656d66(%rip)        # 73656fa4 <_end+0x7304c794>
 23e:	73 61                	jae    2a1 <_init-0x40127f>
 240:	67 65 2d 6c 65 6e 67 	addr32 gs sub $0x676e656c,%eax
 247:	74 68                	je     2b1 <_init-0x40126f>
 249:	3d 30 20 2d 66       	cmp    $0x662d2030,%eax
 24e:	72 6f                	jb     2bf <_init-0x401261>
 250:	75 6e                	jne    2c0 <_init-0x401260>
 252:	64 69 6e 67 2d 6d 61 	imul   $0x74616d2d,%fs:0x67(%rsi),%ebp
 259:	74 
 25a:	68 20 2d 66 75       	pushq  $0x75662d20
 25f:	6e                   	outsb  %ds:(%rsi),(%dx)
 260:	77 69                	ja     2cb <_init-0x401255>
 262:	6e                   	outsb  %ds:(%rsi),(%dx)
 263:	64 2d 74 61 62 6c    	fs sub $0x6c626174,%eax
 269:	65 73 20             	gs jae 28c <_init-0x401294>
 26c:	2d 66 50 49 43       	sub    $0x43495066,%eax
 271:	20 2d 66 74 6c 73    	and    %ch,0x736c7466(%rip)        # 736c76dd <_end+0x730bcecd>
 277:	2d 6d 6f 64 65       	sub    $0x65646f6d,%eax
 27c:	6c                   	insb   (%dx),%es:(%rdi)
 27d:	3d 69 6e 69 74       	cmp    $0x74696e69,%eax
 282:	69 61 6c 2d 65 78 65 	imul   $0x6578652d,0x6c(%rcx),%esp
 289:	63 00                	movslq (%rax),%eax

Disassembly of section .debug_loc:

0000000000000000 <.debug_loc>:
	...
   8:	32 00                	xor    (%rax),%al
   a:	00 00                	add    %al,(%rax)
   c:	00 00                	add    %al,(%rax)
   e:	00 00                	add    %al,(%rax)
  10:	01 00                	add    %eax,(%rax)
  12:	55                   	push   %rbp
  13:	32 00                	xor    (%rax),%al
  15:	00 00                	add    %al,(%rax)
  17:	00 00                	add    %al,(%rax)
  19:	00 00                	add    %al,(%rax)
  1b:	64 00 00             	add    %al,%fs:(%rax)
  1e:	00 00                	add    %al,(%rax)
  20:	00 00                	add    %al,(%rax)
  22:	00 01                	add    %al,(%rcx)
  24:	00 5f 64             	add    %bl,0x64(%rdi)
  27:	00 00                	add    %al,(%rax)
  29:	00 00                	add    %al,(%rax)
  2b:	00 00                	add    %al,(%rax)
  2d:	00 65 00             	add    %ah,0x0(%rbp)
  30:	00 00                	add    %al,(%rax)
  32:	00 00                	add    %al,(%rax)
  34:	00 00                	add    %al,(%rax)
  36:	04 00                	add    $0x0,%al
  38:	f3 01 55 9f          	repz add %edx,-0x61(%rbp)
	...
  54:	32 00                	xor    (%rax),%al
  56:	00 00                	add    %al,(%rax)
  58:	00 00                	add    %al,(%rax)
  5a:	00 00                	add    %al,(%rax)
  5c:	01 00                	add    %eax,(%rax)
  5e:	54                   	push   %rsp
  5f:	32 00                	xor    (%rax),%al
  61:	00 00                	add    %al,(%rax)
  63:	00 00                	add    %al,(%rax)
  65:	00 00                	add    %al,(%rax)
  67:	62                   	(bad)  {%k1}
  68:	00 00                	add    %al,(%rax)
  6a:	00 00                	add    %al,(%rax)
  6c:	00 00                	add    %al,(%rax)
  6e:	00 01                	add    %al,(%rcx)
  70:	00 5e 62             	add    %bl,0x62(%rsi)
  73:	00 00                	add    %al,(%rax)
  75:	00 00                	add    %al,(%rax)
  77:	00 00                	add    %al,(%rax)
  79:	00 65 00             	add    %ah,0x0(%rbp)
  7c:	00 00                	add    %al,(%rax)
  7e:	00 00                	add    %al,(%rax)
  80:	00 00                	add    %al,(%rax)
  82:	04 00                	add    $0x0,%al
  84:	f3 01 54 9f 00       	repz add %edx,0x0(%rdi,%rbx,4)
	...
  9d:	00 00                	add    %al,(%rax)
  9f:	00 32                	add    %dh,(%rdx)
  a1:	00 00                	add    %al,(%rax)
  a3:	00 00                	add    %al,(%rax)
  a5:	00 00                	add    %al,(%rax)
  a7:	00 01                	add    %al,(%rcx)
  a9:	00 51 32             	add    %dl,0x32(%rcx)
  ac:	00 00                	add    %al,(%rax)
  ae:	00 00                	add    %al,(%rax)
  b0:	00 00                	add    %al,(%rax)
  b2:	00 60 00             	add    %ah,0x0(%rax)
  b5:	00 00                	add    %al,(%rax)
  b7:	00 00                	add    %al,(%rax)
  b9:	00 00                	add    %al,(%rax)
  bb:	01 00                	add    %eax,(%rax)
  bd:	5d                   	pop    %rbp
  be:	60                   	(bad)  
  bf:	00 00                	add    %al,(%rax)
  c1:	00 00                	add    %al,(%rax)
  c3:	00 00                	add    %al,(%rax)
  c5:	00 65 00             	add    %ah,0x0(%rbp)
  c8:	00 00                	add    %al,(%rax)
  ca:	00 00                	add    %al,(%rax)
  cc:	00 00                	add    %al,(%rax)
  ce:	04 00                	add    $0x0,%al
  d0:	f3 01 51 9f          	repz add %edx,-0x61(%rcx)
	...
  e4:	33 00                	xor    (%rax),%eax
  e6:	00 00                	add    %al,(%rax)
  e8:	00 00                	add    %al,(%rax)
  ea:	00 00                	add    %al,(%rax)
  ec:	38 00                	cmp    %al,(%rax)
  ee:	00 00                	add    %al,(%rax)
  f0:	00 00                	add    %al,(%rax)
  f2:	00 00                	add    %al,(%rax)
  f4:	02 00                	add    (%rax),%al
  f6:	30 9f 38 00 00 00    	xor    %bl,0x38(%rdi)
  fc:	00 00                	add    %al,(%rax)
  fe:	00 00                	add    %al,(%rax)
 100:	56                   	push   %rsi
 101:	00 00                	add    %al,(%rax)
 103:	00 00                	add    %al,(%rax)
 105:	00 00                	add    %al,(%rax)
 107:	00 01                	add    %al,(%rcx)
 109:	00 53 00             	add    %dl,0x0(%rbx)
	...

Disassembly of section .debug_ranges:

0000000000000000 <.debug_ranges>:
   0:	ff                   	(bad)  
   1:	ff                   	(bad)  
   2:	ff                   	(bad)  
   3:	ff                   	(bad)  
   4:	ff                   	(bad)  
   5:	ff                   	(bad)  
   6:	ff                   	(bad)  
   7:	ff 00                	incl   (%rax)
   9:	00 00                	add    %al,(%rax)
   b:	00 00                	add    %al,(%rax)
   d:	00 00                	add    %al,(%rax)
   f:	00 20                	add    %ah,(%rax)
  11:	15 40 00 00 00       	adc    $0x40,%eax
  16:	00 00                	add    %al,(%rax)
  18:	35 15 40 00 00       	xor    $0x4015,%eax
  1d:	00 00                	add    %al,(%rax)
  1f:	00 94 6c 40 00 00 00 	add    %dl,0x40(%rsp,%rbp,2)
  26:	00 00                	add    %al,(%rax)
  28:	98                   	cwtl   
  29:	6c                   	insb   (%dx),%es:(%rdi)
  2a:	40 00 00             	add    %al,(%rax)
	...
  3d:	00 00                	add    %al,(%rax)
  3f:	00 11                	add    %dl,(%rcx)
  41:	00 00                	add    %al,(%rax)
  43:	00 00                	add    %al,(%rax)
  45:	00 00                	add    %al,(%rax)
  47:	00 18                	add    %bl,(%rax)
  49:	00 00                	add    %al,(%rax)
  4b:	00 00                	add    %al,(%rax)
  4d:	00 00                	add    %al,(%rax)
  4f:	00 19                	add    %bl,(%rcx)
  51:	00 00                	add    %al,(%rax)
  53:	00 00                	add    %al,(%rax)
  55:	00 00                	add    %al,(%rax)
  57:	00 20                	add    %ah,(%rax)
  59:	00 00                	add    %al,(%rax)
  5b:	00 00                	add    %al,(%rax)
  5d:	00 00                	add    %al,(%rax)
  5f:	00 21                	add    %ah,(%rcx)
  61:	00 00                	add    %al,(%rax)
  63:	00 00                	add    %al,(%rax)
  65:	00 00                	add    %al,(%rax)
  67:	00 2a                	add    %ch,(%rdx)
  69:	00 00                	add    %al,(%rax)
  6b:	00 00                	add    %al,(%rax)
  6d:	00 00                	add    %al,(%rax)
  6f:	00 33                	add    %dh,(%rbx)
  71:	00 00                	add    %al,(%rax)
  73:	00 00                	add    %al,(%rax)
  75:	00 00                	add    %al,(%rax)
  77:	00 56 00             	add    %dl,0x0(%rsi)
	...
  8e:	00 00                	add    %al,(%rax)
  90:	ff                   	(bad)  
  91:	ff                   	(bad)  
  92:	ff                   	(bad)  
  93:	ff                   	(bad)  
  94:	ff                   	(bad)  
  95:	ff                   	(bad)  
  96:	ff                   	(bad)  
  97:	ff 00                	incl   (%rax)
  99:	00 00                	add    %al,(%rax)
  9b:	00 00                	add    %al,(%rax)
  9d:	00 00                	add    %al,(%rax)
  9f:	00 35 15 40 00 00    	add    %dh,0x4015(%rip)        # 40ba <_init-0x3fd466>
  a5:	00 00                	add    %al,(%rax)
  a7:	00 3a                	add    %bh,(%rdx)
  a9:	15 40 00 00 00       	adc    $0x40,%eax
  ae:	00 00                	add    %al,(%rax)
  b0:	98                   	cwtl   
  b1:	6c                   	insb   (%dx),%es:(%rdi)
  b2:	40 00 00             	add    %al,(%rax)
  b5:	00 00                	add    %al,(%rax)
  b7:	00 9d 6c 40 00 00    	add    %bl,0x406c(%rbp)
	...
