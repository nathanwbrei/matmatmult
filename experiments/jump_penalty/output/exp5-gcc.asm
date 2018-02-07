
build/exp5:     file format elf64-x86-64


Disassembly of section .interp:

0000000000400238 <.interp>:
  400238:	2f                   	(bad)  
  400239:	6c                   	insb   (%dx),%es:(%rdi)
  40023a:	69 62 36 34 2f 6c 64 	imul   $0x646c2f34,0x36(%rdx),%esp
  400241:	2d 6c 69 6e 75       	sub    $0x756e696c,%eax
  400246:	78 2d                	js     400275 <_init-0xda3>
  400248:	78 38                	js     400282 <_init-0xd96>
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

Disassembly of section .hash:

0000000000400278 <.hash>:
  400278:	25 00 00 00 29       	and    $0x29000000,%eax
  40027d:	00 00                	add    %al,(%rax)
  40027f:	00 04 00             	add    %al,(%rax,%rax,1)
  400282:	00 00                	add    %al,(%rax)
  400284:	15 00 00 00 0e       	adc    $0xe000000,%eax
	...
  400291:	00 00                	add    %al,(%rax)
  400293:	00 25 00 00 00 00    	add    %ah,0x0(%rip)        # 400299 <_init-0xd7f>
  400299:	00 00                	add    %al,(%rax)
  40029b:	00 11                	add    %dl,(%rcx)
  40029d:	00 00                	add    %al,(%rax)
  40029f:	00 1d 00 00 00 00    	add    %bl,0x0(%rip)        # 4002a5 <_init-0xd73>
  4002a5:	00 00                	add    %al,(%rax)
  4002a7:	00 16                	add    %dl,(%rsi)
  4002a9:	00 00                	add    %al,(%rax)
  4002ab:	00 00                	add    %al,(%rax)
  4002ad:	00 00                	add    %al,(%rax)
  4002af:	00 28                	add    %ch,(%rax)
  4002b1:	00 00                	add    %al,(%rax)
  4002b3:	00 07                	add    %al,(%rdi)
  4002b5:	00 00                	add    %al,(%rax)
  4002b7:	00 1c 00             	add    %bl,(%rax,%rax,1)
  4002ba:	00 00                	add    %al,(%rax)
  4002bc:	0b 00                	or     (%rax),%eax
  4002be:	00 00                	add    %al,(%rax)
  4002c0:	19 00                	sbb    %eax,(%rax)
  4002c2:	00 00                	add    %al,(%rax)
  4002c4:	1a 00                	sbb    (%rax),%al
  4002c6:	00 00                	add    %al,(%rax)
  4002c8:	17                   	(bad)  
  4002c9:	00 00                	add    %al,(%rax)
  4002cb:	00 14 00             	add    %dl,(%rax,%rax,1)
  4002ce:	00 00                	add    %al,(%rax)
  4002d0:	27                   	(bad)  
  4002d1:	00 00                	add    %al,(%rax)
  4002d3:	00 00                	add    %al,(%rax)
  4002d5:	00 00                	add    %al,(%rax)
  4002d7:	00 13                	add    %dl,(%rbx)
  4002d9:	00 00                	add    %al,(%rax)
  4002db:	00 1e                	add    %bl,(%rsi)
	...
  4002e5:	00 00                	add    %al,(%rax)
  4002e7:	00 02                	add    %al,(%rdx)
  4002e9:	00 00                	add    %al,(%rax)
  4002eb:	00 1f                	add    %bl,(%rdi)
  4002ed:	00 00                	add    %al,(%rax)
  4002ef:	00 00                	add    %al,(%rax)
  4002f1:	00 00                	add    %al,(%rax)
  4002f3:	00 24 00             	add    %ah,(%rax,%rax,1)
  4002f6:	00 00                	add    %al,(%rax)
  4002f8:	12 00                	adc    (%rax),%al
  4002fa:	00 00                	add    %al,(%rax)
  4002fc:	22 00                	and    (%rax),%al
  4002fe:	00 00                	add    %al,(%rax)
  400300:	26 00 00             	add    %al,%es:(%rax)
  400303:	00 00                	add    %al,(%rax)
  400305:	00 00                	add    %al,(%rax)
  400307:	00 23                	add    %ah,(%rbx)
  400309:	00 00                	add    %al,(%rax)
  40030b:	00 00                	add    %al,(%rax)
  40030d:	00 00                	add    %al,(%rax)
  40030f:	00 20                	add    %ah,(%rax)
	...
  400335:	00 00                	add    %al,(%rax)
  400337:	00 01                	add    %al,(%rcx)
	...
  400345:	00 00                	add    %al,(%rax)
  400347:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # 40034d <_init-0xccb>
  40034d:	00 00                	add    %al,(%rax)
  40034f:	00 08                	add    %cl,(%rax)
  400351:	00 00                	add    %al,(%rax)
  400353:	00 0c 00             	add    %cl,(%rax,%rax,1)
	...
  400362:	00 00                	add    %al,(%rax)
  400364:	03 00                	add    (%rax),%eax
	...
  40036e:	00 00                	add    %al,(%rax)
  400370:	0d 00 00 00 00       	or     $0x0,%eax
  400375:	00 00                	add    %al,(%rax)
  400377:	00 21                	add    %ah,(%rcx)
	...
  400381:	00 00                	add    %al,(%rax)
  400383:	00 0f                	add    %cl,(%rdi)
  400385:	00 00                	add    %al,(%rax)
  400387:	00 1b                	add    %bl,(%rbx)
	...
  400391:	00 00                	add    %al,(%rax)
  400393:	00 18                	add    %bl,(%rax)
  400395:	00 00                	add    %al,(%rax)
  400397:	00 00                	add    %al,(%rax)
  400399:	00 00                	add    %al,(%rax)
  40039b:	00 10                	add    %dl,(%rax)
  40039d:	00 00                	add    %al,(%rax)
  40039f:	00 0a                	add    %cl,(%rdx)
	...
  4003a9:	00 00                	add    %al,(%rax)
  4003ab:	00 06                	add    %al,(%rsi)
  4003ad:	00 00                	add    %al,(%rax)
  4003af:	00 00                	add    %al,(%rax)
  4003b1:	00 00                	add    %al,(%rax)
  4003b3:	00 09                	add    %cl,(%rcx)
  4003b5:	00 00                	add    %al,(%rax)
	...

Disassembly of section .gnu.hash:

00000000004003b8 <.gnu.hash>:
  4003b8:	03 00                	add    (%rax),%eax
  4003ba:	00 00                	add    %al,(%rax)
  4003bc:	21 00                	and    %eax,(%rax)
  4003be:	00 00                	add    %al,(%rax)
  4003c0:	01 00                	add    %eax,(%rax)
  4003c2:	00 00                	add    %al,(%rax)
  4003c4:	06                   	(bad)  
  4003c5:	00 00                	add    %al,(%rax)
  4003c7:	00 80 41 3c 20 21    	add    %al,0x21203c41(%rax)
  4003cd:	01 04 11             	add    %eax,(%rcx,%rdx,1)
  4003d0:	21 00                	and    %eax,(%rax)
  4003d2:	00 00                	add    %al,(%rax)
  4003d4:	24 00                	and    $0x0,%al
  4003d6:	00 00                	add    %al,(%rax)
  4003d8:	25 00 00 00 c8       	and    $0xc8000000,%eax
  4003dd:	81 0a d2 9c 63 bd    	orl    $0xbd639cd2,(%rdx)
  4003e3:	c5 13 3f             	(bad)  
  4003e6:	50                   	push   %rax
  4003e7:	0f 13 1e             	movlps %xmm3,(%rsi)
  4003ea:	20 9e 72 85 4c 1b    	and    %bl,0x1b4c8572(%rsi)
  4003f0:	14 98                	adc    $0x98,%al
  4003f2:	0c 43                	or     $0x43,%al
  4003f4:	78 49                	js     40043f <_init-0xbd9>
  4003f6:	6b                   	.byte 0x6b
  4003f7:	b6 29                	mov    $0x29,%dh
  4003f9:	45 d5                	rex.RB (bad) 
  4003fb:	4c                   	rex.WR

Disassembly of section .dynsym:

0000000000400400 <.dynsym>:
	...
  400418:	e0 00                	loopne 40041a <_init-0xbfe>
  40041a:	00 00                	add    %al,(%rax)
  40041c:	12 00                	adc    (%rax),%al
	...
  40042e:	00 00                	add    %al,(%rax)
  400430:	01 02                	add    %eax,(%rdx)
  400432:	00 00                	add    %al,(%rax)
  400434:	12 00                	adc    (%rax),%al
	...
  400446:	00 00                	add    %al,(%rax)
  400448:	1a 03                	sbb    (%rbx),%al
  40044a:	00 00                	add    %al,(%rax)
  40044c:	12 00                	adc    (%rax),%al
	...
  40045e:	00 00                	add    %al,(%rax)
  400460:	7e 01                	jle    400463 <_init-0xbb5>
  400462:	00 00                	add    %al,(%rax)
  400464:	12 00                	adc    (%rax),%al
	...
  400476:	00 00                	add    %al,(%rax)
  400478:	ea                   	(bad)  
  400479:	02 00                	add    (%rax),%al
  40047b:	00 12                	add    %dl,(%rdx)
	...
  40048d:	00 00                	add    %al,(%rax)
  40048f:	00 0c 03             	add    %cl,(%rbx,%rax,1)
  400492:	00 00                	add    %al,(%rax)
  400494:	12 00                	adc    (%rax),%al
	...
  4004a6:	00 00                	add    %al,(%rax)
  4004a8:	47 02 00             	rex.RXB add (%r8),%r8b
  4004ab:	00 12                	add    %dl,(%rdx)
	...
  4004bd:	00 00                	add    %al,(%rax)
  4004bf:	00 9e 02 00 00 12    	add    %bl,0x12000002(%rsi)
	...
  4004d5:	00 00                	add    %al,(%rax)
  4004d7:	00 ff                	add    %bh,%bh
  4004d9:	02 00                	add    (%rax),%al
  4004db:	00 12                	add    %dl,(%rdx)
	...
  4004ed:	00 00                	add    %al,(%rax)
  4004ef:	00 5f 01             	add    %bl,0x1(%rdi)
  4004f2:	00 00                	add    %al,(%rax)
  4004f4:	12 00                	adc    (%rax),%al
	...
  400506:	00 00                	add    %al,(%rax)
  400508:	13 03                	adc    (%rbx),%eax
  40050a:	00 00                	add    %al,(%rax)
  40050c:	12 00                	adc    (%rax),%al
	...
  40051e:	00 00                	add    %al,(%rax)
  400520:	55                   	push   %rbp
  400521:	02 00                	add    (%rax),%al
  400523:	00 12                	add    %dl,(%rdx)
	...
  400535:	00 00                	add    %al,(%rax)
  400537:	00 ac 01 00 00 12 00 	add    %ch,0x120000(%rcx,%rax,1)
	...
  40054e:	00 00                	add    %al,(%rax)
  400550:	0d 02 00 00 12       	or     $0x12000002,%eax
	...
  400565:	00 00                	add    %al,(%rax)
  400567:	00 e4                	add    %ah,%ah
  400569:	02 00                	add    (%rax),%al
  40056b:	00 12                	add    %dl,(%rdx)
	...
  40057d:	00 00                	add    %al,(%rax)
  40057f:	00 38                	add    %bh,(%rax)
  400581:	03 00                	add    (%rax),%eax
  400583:	00 12                	add    %dl,(%rdx)
	...
  400595:	00 00                	add    %al,(%rax)
  400597:	00 66 01             	add    %ah,0x1(%rsi)
  40059a:	00 00                	add    %al,(%rax)
  40059c:	12 00                	adc    (%rax),%al
	...
  4005ae:	00 00                	add    %al,(%rax)
  4005b0:	fa                   	cli    
  4005b1:	01 00                	add    %eax,(%rax)
  4005b3:	00 12                	add    %dl,(%rdx)
	...
  4005c5:	00 00                	add    %al,(%rax)
  4005c7:	00 51 00             	add    %dl,0x0(%rcx)
  4005ca:	00 00                	add    %al,(%rax)
  4005cc:	12 00                	adc    (%rax),%al
	...
  4005de:	00 00                	add    %al,(%rax)
  4005e0:	73 02                	jae    4005e4 <_init-0xa34>
  4005e2:	00 00                	add    %al,(%rax)
  4005e4:	12 00                	adc    (%rax),%al
	...
  4005f6:	00 00                	add    %al,(%rax)
  4005f8:	5b                   	pop    %rbx
  4005f9:	02 00                	add    (%rax),%al
  4005fb:	00 12                	add    %dl,(%rdx)
	...
  40060d:	00 00                	add    %al,(%rax)
  40060f:	00 f9                	add    %bh,%cl
  400611:	02 00                	add    (%rax),%al
  400613:	00 12                	add    %dl,(%rdx)
	...
  400625:	00 00                	add    %al,(%rax)
  400627:	00 78 00             	add    %bh,0x0(%rax)
  40062a:	00 00                	add    %al,(%rax)
  40062c:	12 00                	adc    (%rax),%al
	...
  40063e:	00 00                	add    %al,(%rax)
  400640:	04 01                	add    $0x1,%al
  400642:	00 00                	add    %al,(%rax)
  400644:	12 00                	adc    (%rax),%al
	...
  400656:	00 00                	add    %al,(%rax)
  400658:	6e                   	outsb  %ds:(%rsi),(%dx)
  400659:	00 00                	add    %al,(%rax)
  40065b:	00 12                	add    %dl,(%rdx)
	...
  40066d:	00 00                	add    %al,(%rax)
  40066f:	00 0c 00             	add    %cl,(%rax,%rax,1)
  400672:	00 00                	add    %al,(%rax)
  400674:	20 00                	and    %al,(%rax)
	...
  400686:	00 00                	add    %al,(%rax)
  400688:	cb                   	lret   
  400689:	02 00                	add    (%rax),%al
  40068b:	00 12                	add    %dl,(%rdx)
	...
  40069d:	00 00                	add    %al,(%rax)
  40069f:	00 26                	add    %ah,(%rsi)
  4006a1:	03 00                	add    (%rax),%eax
  4006a3:	00 12                	add    %dl,(%rdx)
	...
  4006b5:	00 00                	add    %al,(%rax)
  4006b7:	00 28                	add    %ch,(%rax)
  4006b9:	00 00                	add    %al,(%rax)
  4006bb:	00 20                	add    %ah,(%rax)
	...
  4006cd:	00 00                	add    %al,(%rax)
  4006cf:	00 e6                	add    %ah,%dh
  4006d1:	00 00                	add    %al,(%rax)
  4006d3:	00 12                	add    %dl,(%rdx)
	...
  4006e5:	00 00                	add    %al,(%rax)
  4006e7:	00 37                	add    %dh,(%rdi)
  4006e9:	00 00                	add    %al,(%rax)
  4006eb:	00 20                	add    %ah,(%rax)
	...
  4006fd:	00 00                	add    %al,(%rax)
  4006ff:	00 1f                	add    %bl,(%rdi)
  400701:	03 00                	add    (%rax),%eax
  400703:	00 12                	add    %dl,(%rdx)
	...
  400715:	00 00                	add    %al,(%rax)
  400717:	00 10                	add    %dl,(%rax)
  400719:	01 00                	add    %eax,(%rax)
  40071b:	00 21                	add    %ah,(%rcx)
  40071d:	00 1a                	add    %bl,(%rdx)
  40071f:	00 40 81             	add    %al,-0x7f(%rax)
  400722:	60                   	(bad)  
  400723:	00 00                	add    %al,(%rax)
  400725:	00 00                	add    %al,(%rax)
  400727:	00 58 00             	add    %bl,0x0(%rax)
  40072a:	00 00                	add    %al,(%rax)
  40072c:	00 00                	add    %al,(%rax)
  40072e:	00 00                	add    %al,(%rax)
  400730:	36 01 00             	add    %eax,%ss:(%rax)
  400733:	00 21                	add    %ah,(%rcx)
  400735:	00 1a                	add    %bl,(%rdx)
  400737:	00 b0 82 60 00 00    	add    %dh,0x6082(%rax)
  40073d:	00 00                	add    %al,(%rax)
  40073f:	00 58 00             	add    %bl,0x0(%rax)
  400742:	00 00                	add    %al,(%rax)
  400744:	00 00                	add    %al,(%rax)
  400746:	00 00                	add    %al,(%rax)
  400748:	ac                   	lods   %ds:(%rsi),%al
  400749:	00 00                	add    %al,(%rax)
  40074b:	00 12                	add    %dl,(%rdx)
  40074d:	00 00                	add    %al,(%rax)
  40074f:	00 d0                	add    %dl,%al
  400751:	11 40 00             	adc    %eax,0x0(%rax)
	...
  400760:	2e 02 00             	add    %cs:(%rax),%al
  400763:	00 21                	add    %ah,(%rcx)
  400765:	00 1a                	add    %bl,(%rdx)
  400767:	00 08                	add    %cl,(%rax)
  400769:	83 60 00 00          	andl   $0x0,0x0(%rax)
  40076d:	00 00                	add    %al,(%rax)
  40076f:	00 18                	add    %bl,(%rax)
  400771:	00 00                	add    %al,(%rax)
  400773:	00 00                	add    %al,(%rax)
  400775:	00 00                	add    %al,(%rax)
  400777:	00 91 00 00 00 22    	add    %dl,0x22000000(%rcx)
  40077d:	00 0e                	add    %cl,(%rsi)
  40077f:	00 f0                	add    %dh,%al
  400781:	65 40 00 00          	add    %al,%gs:(%rax)
  400785:	00 00                	add    %al,(%rax)
  400787:	00 03                	add    %al,(%rbx)
  400789:	00 00                	add    %al,(%rax)
  40078b:	00 00                	add    %al,(%rax)
  40078d:	00 00                	add    %al,(%rax)
  40078f:	00 94 02 00 00 11 00 	add    %dl,0x110000(%rdx,%rax,1)
  400796:	1a 00                	sbb    (%rax),%al
  400798:	a0 81 60 00 00 00 00 	movabs 0x1000000000006081,%al
  40079f:	00 10 
  4007a1:	01 00                	add    %eax,(%rax)
  4007a3:	00 00                	add    %al,(%rax)
  4007a5:	00 00                	add    %al,(%rax)
  4007a7:	00 97 01 00 00 12    	add    %dl,0x12000001(%rdi)
  4007ad:	00 00                	add    %al,(%rax)
  4007af:	00 c0                	add    %al,%al
  4007b1:	11 40 00             	adc    %eax,0x0(%rax)
	...
  4007c0:	c8 00 00 00          	enterq $0x0,$0x0
  4007c4:	12 00                	adc    (%rax),%al
  4007c6:	00 00                	add    %al,(%rax)
  4007c8:	40 12 40 00          	adc    0x0(%rax),%al
	...

Disassembly of section .dynstr:

00000000004007d8 <.dynstr>:
  4007d8:	00 6c 69 62          	add    %ch,0x62(%rcx,%rbp,2)
  4007dc:	72 74                	jb     400852 <_init-0x7c6>
  4007de:	2e 73 6f             	jae,pn 400850 <_init-0x7c8>
  4007e1:	2e 31 00             	xor    %eax,%cs:(%rax)
  4007e4:	5f                   	pop    %rdi
  4007e5:	49 54                	rex.WB push %r12
  4007e7:	4d 5f                	rex.WRB pop %r15
  4007e9:	64 65 72 65          	fs gs jb 400852 <_init-0x7c6>
  4007ed:	67 69 73 74 65 72 54 	imul   $0x4d547265,0x74(%ebx),%esi
  4007f4:	4d 
  4007f5:	43 6c                	rex.XB insb (%dx),%es:(%rdi)
  4007f7:	6f                   	outsl  %ds:(%rsi),(%dx)
  4007f8:	6e                   	outsb  %ds:(%rsi),(%dx)
  4007f9:	65 54                	gs push %rsp
  4007fb:	61                   	(bad)  
  4007fc:	62                   	(bad)  
  4007fd:	6c                   	insb   (%dx),%es:(%rdi)
  4007fe:	65 00 5f 5f          	add    %bl,%gs:0x5f(%rdi)
  400802:	67 6d                	insl   (%dx),%es:(%edi)
  400804:	6f                   	outsl  %ds:(%rsi),(%dx)
  400805:	6e                   	outsb  %ds:(%rsi),(%dx)
  400806:	5f                   	pop    %rdi
  400807:	73 74                	jae    40087d <_init-0x79b>
  400809:	61                   	(bad)  
  40080a:	72 74                	jb     400880 <_init-0x798>
  40080c:	5f                   	pop    %rdi
  40080d:	5f                   	pop    %rdi
  40080e:	00 5f 49             	add    %bl,0x49(%rdi)
  400811:	54                   	push   %rsp
  400812:	4d 5f                	rex.WRB pop %r15
  400814:	72 65                	jb     40087b <_init-0x79d>
  400816:	67 69 73 74 65 72 54 	imul   $0x4d547265,0x74(%ebx),%esi
  40081d:	4d 
  40081e:	43 6c                	rex.XB insb (%dx),%es:(%rdi)
  400820:	6f                   	outsl  %ds:(%rsi),(%dx)
  400821:	6e                   	outsb  %ds:(%rsi),(%dx)
  400822:	65 54                	gs push %rsp
  400824:	61                   	(bad)  
  400825:	62                   	(bad)  
  400826:	6c                   	insb   (%dx),%es:(%rdi)
  400827:	65 00 63 6c          	add    %ah,%gs:0x6c(%rbx)
  40082b:	6f                   	outsl  %ds:(%rsi),(%dx)
  40082c:	63 6b 5f             	movslq 0x5f(%rbx),%ebp
  40082f:	67 65 74 74          	addr32 gs je 4008a7 <_init-0x771>
  400833:	69 6d 65 00 6c 69 62 	imul   $0x62696c00,0x65(%rbp),%ebp
  40083a:	73 74                	jae    4008b0 <_init-0x768>
  40083c:	64 63 2b             	movslq %fs:(%rbx),%ebp
  40083f:	2b 2e                	sub    (%rsi),%ebp
  400841:	73 6f                	jae    4008b2 <_init-0x766>
  400843:	2e 36 00 5f 5a       	cs add %bl,%ss:0x5a(%rdi)
  400848:	4e 53                	rex.WRX push %rbx
  40084a:	6f                   	outsl  %ds:(%rsi),(%dx)
  40084b:	6c                   	insb   (%dx),%es:(%rdi)
  40084c:	73 45                	jae    400893 <_init-0x785>
  40084e:	69 00 5f 5a 4e 53    	imul   $0x534e5a5f,(%rax),%eax
  400854:	6f                   	outsl  %ds:(%rsi),(%dx)
  400855:	39 5f 4d             	cmp    %ebx,0x4d(%rdi)
  400858:	5f                   	pop    %rdi
  400859:	69 6e 73 65 72 74 49 	imul   $0x49747265,0x73(%rsi),%ebp
  400860:	64 45                	fs rex.RB
  400862:	45 52                	rex.RB push %r10
  400864:	53                   	push   %rbx
  400865:	6f                   	outsl  %ds:(%rsi),(%dx)
  400866:	54                   	push   %rsp
  400867:	5f                   	pop    %rdi
  400868:	00 5f 5a             	add    %bl,0x5a(%rdi)
  40086b:	4e                   	rex.WRX
  40086c:	4b 53                	rex.WXB push %r11
  40086e:	74 35                	je     4008a5 <_init-0x773>
  400870:	63 74 79 70          	movslq 0x70(%rcx,%rdi,2),%esi
  400874:	65 49 63 45 38       	movslq %gs:0x38(%r13),%rax
  400879:	64 6f                	outsl  %fs:(%rsi),(%dx)
  40087b:	5f                   	pop    %rdi
  40087c:	77 69                	ja     4008e7 <_init-0x731>
  40087e:	64 65 6e             	fs outsb %gs:(%rsi),(%dx)
  400881:	45 63 00             	movslq (%r8),%r8d
  400884:	5f                   	pop    %rdi
  400885:	5a                   	pop    %rdx
  400886:	4e 53                	rex.WRX push %rbx
  400888:	74 31                	je     4008bb <_init-0x75d>
  40088a:	36 69 6e 76 61 6c 69 	imul   $0x64696c61,%ss:0x76(%rsi),%ebp
  400891:	64 
  400892:	5f                   	pop    %rdi
  400893:	61                   	(bad)  
  400894:	72 67                	jb     4008fd <_init-0x71b>
  400896:	75 6d                	jne    400905 <_init-0x713>
  400898:	65 6e                	outsb  %gs:(%rsi),(%dx)
  40089a:	74 44                	je     4008e0 <_init-0x738>
  40089c:	31 45 76             	xor    %eax,0x76(%rbp)
  40089f:	00 5f 5a             	add    %bl,0x5a(%rdi)
  4008a2:	4e 53                	rex.WRX push %rbx
  4008a4:	74 38                	je     4008de <_init-0x73a>
  4008a6:	69 6f 73 5f 62 61 73 	imul   $0x7361625f,0x73(%rdi),%ebp
  4008ad:	65 34 49             	gs xor $0x49,%al
  4008b0:	6e                   	outsb  %ds:(%rsi),(%dx)
  4008b1:	69 74 44 31 45 76 00 	imul   $0x5f007645,0x31(%rsp,%rax,2),%esi
  4008b8:	5f 
  4008b9:	5a                   	pop    %rdx
  4008ba:	6e                   	outsb  %ds:(%rsi),(%dx)
  4008bb:	61                   	(bad)  
  4008bc:	6d                   	insl   (%dx),%es:(%rdi)
  4008bd:	00 5f 5a             	add    %bl,0x5a(%rdi)
  4008c0:	4e 53                	rex.WRX push %rbx
  4008c2:	74 31                	je     4008f5 <_init-0x723>
  4008c4:	36 69 6e 76 61 6c 69 	imul   $0x64696c61,%ss:0x76(%rsi),%ebp
  4008cb:	64 
  4008cc:	5f                   	pop    %rdi
  4008cd:	61                   	(bad)  
  4008ce:	72 67                	jb     400937 <_init-0x6e1>
  4008d0:	75 6d                	jne    40093f <_init-0x6d9>
  4008d2:	65 6e                	outsb  %gs:(%rsi),(%dx)
  4008d4:	74 43                	je     400919 <_init-0x6ff>
  4008d6:	31 45 50             	xor    %eax,0x50(%rbp)
  4008d9:	4b 63 00             	rex.WXB movslq (%r8),%rax
  4008dc:	5f                   	pop    %rdi
  4008dd:	5f                   	pop    %rdi
  4008de:	63 78 61             	movslq 0x61(%rax),%edi
  4008e1:	5f                   	pop    %rdi
  4008e2:	74 68                	je     40094c <_init-0x6cc>
  4008e4:	72 6f                	jb     400955 <_init-0x6c3>
  4008e6:	77 00                	ja     4008e8 <_init-0x730>
  4008e8:	5f                   	pop    %rdi
  4008e9:	5a                   	pop    %rdx
  4008ea:	54                   	push   %rsp
  4008eb:	56                   	push   %rsi
  4008ec:	4e 31 30             	rex.WRX xor %r14,(%rax)
  4008ef:	5f                   	pop    %rdi
  4008f0:	5f                   	pop    %rdi
  4008f1:	63 78 78             	movslq 0x78(%rax),%edi
  4008f4:	61                   	(bad)  
  4008f5:	62                   	(bad)  
  4008f6:	69 76 31 31 37 5f 5f 	imul   $0x5f5f3731,0x31(%rsi),%esi
  4008fd:	63 6c 61 73          	movslq 0x73(%rcx,%riz,2),%ebp
  400901:	73 5f                	jae    400962 <_init-0x6b6>
  400903:	74 79                	je     40097e <_init-0x69a>
  400905:	70 65                	jo     40096c <_init-0x6ac>
  400907:	5f                   	pop    %rdi
  400908:	69 6e 66 6f 45 00 5f 	imul   $0x5f00456f,0x66(%rsi),%ebp
  40090f:	5a                   	pop    %rdx
  400910:	54                   	push   %rsp
  400911:	56                   	push   %rsi
  400912:	4e 31 30             	rex.WRX xor %r14,(%rax)
  400915:	5f                   	pop    %rdi
  400916:	5f                   	pop    %rdi
  400917:	63 78 78             	movslq 0x78(%rax),%edi
  40091a:	61                   	(bad)  
  40091b:	62                   	(bad)  
  40091c:	69 76 31 32 30 5f 5f 	imul   $0x5f5f3032,0x31(%rsi),%esi
  400923:	73 69                	jae    40098e <_init-0x68a>
  400925:	5f                   	pop    %rdi
  400926:	63 6c 61 73          	movslq 0x73(%rcx,%riz,2),%ebp
  40092a:	73 5f                	jae    40098b <_init-0x68d>
  40092c:	74 79                	je     4009a7 <_init-0x671>
  40092e:	70 65                	jo     400995 <_init-0x683>
  400930:	5f                   	pop    %rdi
  400931:	69 6e 66 6f 45 00 5f 	imul   $0x5f00456f,0x66(%rsi),%ebp
  400938:	5a                   	pop    %rdx
  400939:	64 6c                	fs insb (%dx),%es:(%rdi)
  40093b:	50                   	push   %rax
  40093c:	76 00                	jbe    40093e <_init-0x6da>
  40093e:	5f                   	pop    %rdi
  40093f:	5a                   	pop    %rdx
  400940:	53                   	push   %rbx
  400941:	74 31                	je     400974 <_init-0x6a4>
  400943:	36 5f                	ss pop %rdi
  400945:	5f                   	pop    %rdi
  400946:	74 68                	je     4009b0 <_init-0x668>
  400948:	72 6f                	jb     4009b9 <_init-0x65f>
  40094a:	77 5f                	ja     4009ab <_init-0x66d>
  40094c:	62 61 64 5f 63       	(bad)  {%k7}
  400951:	61                   	(bad)  
  400952:	73 74                	jae    4009c8 <_init-0x650>
  400954:	76 00                	jbe    400956 <_init-0x6c2>
  400956:	5f                   	pop    %rdi
  400957:	5f                   	pop    %rdi
  400958:	63 78 61             	movslq 0x61(%rax),%edi
  40095b:	5f                   	pop    %rdi
  40095c:	61                   	(bad)  
  40095d:	6c                   	insb   (%dx),%es:(%rdi)
  40095e:	6c                   	insb   (%dx),%es:(%rdi)
  40095f:	6f                   	outsl  %ds:(%rsi),(%dx)
  400960:	63 61 74             	movslq 0x74(%rcx),%esp
  400963:	65 5f                	gs pop %rdi
  400965:	65 78 63             	gs js  4009cb <_init-0x64d>
  400968:	65 70 74             	gs jo  4009df <_init-0x639>
  40096b:	69 6f 6e 00 5f 5f 67 	imul   $0x675f5f00,0x6e(%rdi),%ebp
  400972:	78 78                	js     4009ec <_init-0x62c>
  400974:	5f                   	pop    %rdi
  400975:	70 65                	jo     4009dc <_init-0x63c>
  400977:	72 73                	jb     4009ec <_init-0x62c>
  400979:	6f                   	outsl  %ds:(%rsi),(%dx)
  40097a:	6e                   	outsb  %ds:(%rsi),(%dx)
  40097b:	61                   	(bad)  
  40097c:	6c                   	insb   (%dx),%es:(%rdi)
  40097d:	69 74 79 5f 76 30 00 	imul   $0x5f003076,0x5f(%rcx,%rdi,2),%esi
  400984:	5f 
  400985:	5a                   	pop    %rdx
  400986:	53                   	push   %rbx
  400987:	74 31                	je     4009ba <_init-0x65e>
  400989:	36 5f                	ss pop %rdi
  40098b:	5f                   	pop    %rdi
  40098c:	6f                   	outsl  %ds:(%rsi),(%dx)
  40098d:	73 74                	jae    400a03 <_init-0x615>
  40098f:	72 65                	jb     4009f6 <_init-0x622>
  400991:	61                   	(bad)  
  400992:	6d                   	insl   (%dx),%es:(%rdi)
  400993:	5f                   	pop    %rdi
  400994:	69 6e 73 65 72 74 49 	imul   $0x49747265,0x73(%rsi),%ebp
  40099b:	63 53 74             	movslq 0x74(%rbx),%edx
  40099e:	31 31                	xor    %esi,(%rcx)
  4009a0:	63 68 61             	movslq 0x61(%rax),%ebp
  4009a3:	72 5f                	jb     400a04 <_init-0x614>
  4009a5:	74 72                	je     400a19 <_init-0x5ff>
  4009a7:	61                   	(bad)  
  4009a8:	69 74 73 49 63 45 45 	imul   $0x52454563,0x49(%rbx,%rsi,2),%esi
  4009af:	52 
  4009b0:	53                   	push   %rbx
  4009b1:	74 31                	je     4009e4 <_init-0x634>
  4009b3:	33 62 61             	xor    0x61(%rdx),%esp
  4009b6:	73 69                	jae    400a21 <_init-0x5f7>
  4009b8:	63 5f 6f             	movslq 0x6f(%rdi),%ebx
  4009bb:	73 74                	jae    400a31 <_init-0x5e7>
  4009bd:	72 65                	jb     400a24 <_init-0x5f4>
  4009bf:	61                   	(bad)  
  4009c0:	6d                   	insl   (%dx),%es:(%rdi)
  4009c1:	49 54                	rex.WB push %r12
  4009c3:	5f                   	pop    %rdi
  4009c4:	54                   	push   %rsp
  4009c5:	30 5f 45             	xor    %bl,0x45(%rdi)
  4009c8:	53                   	push   %rbx
  4009c9:	36 5f                	ss pop %rdi
  4009cb:	50                   	push   %rax
  4009cc:	4b 53                	rex.WXB push %r11
  4009ce:	33 5f 6c             	xor    0x6c(%rdi),%ebx
  4009d1:	00 5f 5a             	add    %bl,0x5a(%rdi)
  4009d4:	64 61                	fs (bad) 
  4009d6:	50                   	push   %rax
  4009d7:	76 00                	jbe    4009d9 <_init-0x63f>
  4009d9:	5f                   	pop    %rdi
  4009da:	5a                   	pop    %rdx
  4009db:	4e 53                	rex.WRX push %rbx
  4009dd:	6f                   	outsl  %ds:(%rsi),(%dx)
  4009de:	33 70 75             	xor    0x75(%rax),%esi
  4009e1:	74 45                	je     400a28 <_init-0x5f0>
  4009e3:	63 00                	movslq (%rax),%eax
  4009e5:	5f                   	pop    %rdi
  4009e6:	5a                   	pop    %rdx
  4009e7:	4e                   	rex.WRX
  4009e8:	4b 53                	rex.WXB push %r11
  4009ea:	74 35                	je     400a21 <_init-0x5f7>
  4009ec:	63 74 79 70          	movslq 0x70(%rcx,%rdi,2),%esi
  4009f0:	65 49 63 45 31       	movslq %gs:0x31(%r13),%rax
  4009f5:	33 5f 4d             	xor    0x4d(%rdi),%ebx
  4009f8:	5f                   	pop    %rdi
  4009f9:	77 69                	ja     400a64 <_init-0x5b4>
  4009fb:	64 65 6e             	fs outsb %gs:(%rsi),(%dx)
  4009fe:	5f                   	pop    %rdi
  4009ff:	69 6e 69 74 45 76 00 	imul   $0x764574,0x69(%rsi),%ebp
  400a06:	5f                   	pop    %rdi
  400a07:	5a                   	pop    %rdx
  400a08:	54                   	push   %rsp
  400a09:	49 53                	rex.WB push %r11
  400a0b:	74 31                	je     400a3e <_init-0x5da>
  400a0d:	36 69 6e 76 61 6c 69 	imul   $0x64696c61,%ss:0x76(%rsi),%ebp
  400a14:	64 
  400a15:	5f                   	pop    %rdi
  400a16:	61                   	(bad)  
  400a17:	72 67                	jb     400a80 <_init-0x598>
  400a19:	75 6d                	jne    400a88 <_init-0x590>
  400a1b:	65 6e                	outsb  %gs:(%rsi),(%dx)
  400a1d:	74 00                	je     400a1f <_init-0x5f9>
  400a1f:	5f                   	pop    %rdi
  400a20:	5a                   	pop    %rdx
  400a21:	4e 53                	rex.WRX push %rbx
  400a23:	6f                   	outsl  %ds:(%rsi),(%dx)
  400a24:	35 66 6c 75 73       	xor    $0x73756c66,%eax
  400a29:	68 45 76 00 5f       	pushq  $0x5f007645
  400a2e:	5a                   	pop    %rdx
  400a2f:	6e                   	outsb  %ds:(%rsi),(%dx)
  400a30:	77 6d                	ja     400a9f <_init-0x579>
  400a32:	00 5f 5a             	add    %bl,0x5a(%rdi)
  400a35:	4e 53                	rex.WRX push %rbx
  400a37:	74 38                	je     400a71 <_init-0x5a7>
  400a39:	69 6f 73 5f 62 61 73 	imul   $0x7361625f,0x73(%rdi),%ebp
  400a40:	65 34 49             	gs xor $0x49,%al
  400a43:	6e                   	outsb  %ds:(%rsi),(%dx)
  400a44:	69 74 43 31 45 76 00 	imul   $0x5f007645,0x31(%rbx,%rax,2),%esi
  400a4b:	5f 
  400a4c:	5f                   	pop    %rdi
  400a4d:	63 78 61             	movslq 0x61(%rax),%edi
  400a50:	5f                   	pop    %rdi
  400a51:	74 68                	je     400abb <_init-0x55d>
  400a53:	72 6f                	jb     400ac4 <_init-0x554>
  400a55:	77 5f                	ja     400ab6 <_init-0x562>
  400a57:	62 61 64 5f 61       	(bad)  {%k7}
  400a5c:	72 72                	jb     400ad0 <_init-0x548>
  400a5e:	61                   	(bad)  
  400a5f:	79 5f                	jns    400ac0 <_init-0x558>
  400a61:	6e                   	outsb  %ds:(%rsi),(%dx)
  400a62:	65 77 5f             	gs ja  400ac4 <_init-0x554>
  400a65:	6c                   	insb   (%dx),%es:(%rdi)
  400a66:	65 6e                	outsb  %gs:(%rsi),(%dx)
  400a68:	67 74 68             	addr32 je 400ad3 <_init-0x545>
  400a6b:	00 5f 5a             	add    %bl,0x5a(%rdi)
  400a6e:	53                   	push   %rbx
  400a6f:	74 34                	je     400aa5 <_init-0x573>
  400a71:	63 6f 75             	movslq 0x75(%rdi),%ebp
  400a74:	74 00                	je     400a76 <_init-0x5a2>
  400a76:	5f                   	pop    %rdi
  400a77:	5f                   	pop    %rdi
  400a78:	63 78 61             	movslq 0x61(%rax),%edi
  400a7b:	5f                   	pop    %rdi
  400a7c:	66 72 65             	data16 jb 400ae4 <_init-0x534>
  400a7f:	65 5f                	gs pop %rdi
  400a81:	65 78 63             	gs js  400ae7 <_init-0x531>
  400a84:	65 70 74             	gs jo  400afb <_init-0x51d>
  400a87:	69 6f 6e 00 6c 69 62 	imul   $0x62696c00,0x6e(%rdi),%ebp
  400a8e:	6d                   	insl   (%dx),%es:(%rdi)
  400a8f:	2e 73 6f             	jae,pn 400b01 <_init-0x517>
  400a92:	2e 36 00 6c 69 62    	cs add %ch,%ss:0x62(%rcx,%rbp,2)
  400a98:	67 63 63 5f          	movslq 0x5f(%ebx),%esp
  400a9c:	73 2e                	jae    400acc <_init-0x54c>
  400a9e:	73 6f                	jae    400b0f <_init-0x509>
  400aa0:	2e 31 00             	xor    %eax,%cs:(%rax)
  400aa3:	5f                   	pop    %rdi
  400aa4:	55                   	push   %rbp
  400aa5:	6e                   	outsb  %ds:(%rsi),(%dx)
  400aa6:	77 69                	ja     400b11 <_init-0x507>
  400aa8:	6e                   	outsb  %ds:(%rsi),(%dx)
  400aa9:	64 5f                	fs pop %rdi
  400aab:	52                   	push   %rdx
  400aac:	65 73 75             	gs jae 400b24 <_init-0x4f4>
  400aaf:	6d                   	insl   (%dx),%es:(%rdi)
  400ab0:	65 00 6c 69 62       	add    %ch,%gs:0x62(%rcx,%rbp,2)
  400ab5:	63 2e                	movslq (%rsi),%ebp
  400ab7:	73 6f                	jae    400b28 <_init-0x4f0>
  400ab9:	2e 36 00 66 6f       	cs add %ah,%ss:0x6f(%rsi)
  400abe:	70 65                	jo     400b25 <_init-0x4f3>
  400ac0:	6e                   	outsb  %ds:(%rsi),(%dx)
  400ac1:	00 70 6f             	add    %dh,0x6f(%rax)
  400ac4:	73 69                	jae    400b2f <_init-0x4e9>
  400ac6:	78 5f                	js     400b27 <_init-0x4f1>
  400ac8:	6d                   	insl   (%dx),%es:(%rdi)
  400ac9:	65 6d                	gs insl (%dx),%es:(%rdi)
  400acb:	61                   	(bad)  
  400acc:	6c                   	insb   (%dx),%es:(%rdi)
  400acd:	69 67 6e 00 66 67 65 	imul   $0x65676600,0x6e(%rdi),%esp
  400ad4:	74 73                	je     400b49 <_init-0x4cf>
  400ad6:	00 5f 5f             	add    %bl,0x5f(%rdi)
  400ad9:	63 78 61             	movslq 0x61(%rax),%edi
  400adc:	5f                   	pop    %rdi
  400add:	61                   	(bad)  
  400ade:	74 65                	je     400b45 <_init-0x4d3>
  400ae0:	78 69                	js     400b4b <_init-0x4cd>
  400ae2:	74 00                	je     400ae4 <_init-0x534>
  400ae4:	6d                   	insl   (%dx),%es:(%rdi)
  400ae5:	65 6d                	gs insl (%dx),%es:(%rdi)
  400ae7:	73 65                	jae    400b4e <_init-0x4ca>
  400ae9:	74 00                	je     400aeb <_init-0x52d>
  400aeb:	66 63 6c 6f 73       	movslq 0x73(%rdi,%rbp,2),%bp
  400af0:	65 00 72 61          	add    %dh,%gs:0x61(%rdx)
  400af4:	6e                   	outsb  %ds:(%rsi),(%dx)
  400af5:	64 00 66 73          	add    %ah,%fs:0x73(%rsi)
  400af9:	63 61 6e             	movslq 0x6e(%rcx),%esp
  400afc:	66 00 5f 5f          	data16 add %bl,0x5f(%rdi)
  400b00:	6c                   	insb   (%dx),%es:(%rdi)
  400b01:	69 62 63 5f 73 74 61 	imul   $0x6174735f,0x63(%rdx),%esp
  400b08:	72 74                	jb     400b7e <_init-0x49a>
  400b0a:	5f                   	pop    %rdi
  400b0b:	6d                   	insl   (%dx),%es:(%rdi)
  400b0c:	61                   	(bad)  
  400b0d:	69 6e 00 66 72 65 65 	imul   $0x65657266,0x0(%rsi),%ebp
  400b14:	00 47 43             	add    %al,0x43(%rdi)
  400b17:	43 5f                	rex.XB pop %r15
  400b19:	33 2e                	xor    (%rsi),%ebp
  400b1b:	30 00                	xor    %al,(%rax)
  400b1d:	47                   	rex.RXB
  400b1e:	4c                   	rex.WR
  400b1f:	49                   	rex.WB
  400b20:	42                   	rex.X
  400b21:	43 5f                	rex.XB pop %r15
  400b23:	32 2e                	xor    (%rsi),%ch
  400b25:	32 2e                	xor    (%rsi),%ch
  400b27:	35 00 47 4c 49       	xor    $0x494c4700,%eax
  400b2c:	42                   	rex.X
  400b2d:	43 58                	rex.XB pop %r8
  400b2f:	58                   	pop    %rax
  400b30:	5f                   	pop    %rdi
  400b31:	33 2e                	xor    (%rsi),%ebp
  400b33:	34 2e                	xor    $0x2e,%al
  400b35:	32 31                	xor    (%rcx),%dh
  400b37:	00 43 58             	add    %al,0x58(%rbx)
  400b3a:	58                   	pop    %rax
  400b3b:	41                   	rex.B
  400b3c:	42                   	rex.X
  400b3d:	49 5f                	rex.WB pop %r15
  400b3f:	31 2e                	xor    %ebp,(%rsi)
  400b41:	33 2e                	xor    (%rsi),%ebp
  400b43:	38 00                	cmp    %al,(%rax)
  400b45:	47                   	rex.RXB
  400b46:	4c                   	rex.WR
  400b47:	49                   	rex.WB
  400b48:	42                   	rex.X
  400b49:	43 58                	rex.XB pop %r8
  400b4b:	58                   	pop    %rax
  400b4c:	5f                   	pop    %rdi
  400b4d:	33 2e                	xor    (%rsi),%ebp
  400b4f:	34 2e                	xor    $0x2e,%al
  400b51:	31 31                	xor    %esi,(%rcx)
  400b53:	00 47 4c             	add    %al,0x4c(%rdi)
  400b56:	49                   	rex.WB
  400b57:	42                   	rex.X
  400b58:	43 58                	rex.XB pop %r8
  400b5a:	58                   	pop    %rax
  400b5b:	5f                   	pop    %rdi
  400b5c:	33 2e                	xor    (%rsi),%ebp
  400b5e:	34 2e                	xor    $0x2e,%al
  400b60:	39 00                	cmp    %eax,(%rax)
  400b62:	43 58                	rex.XB pop %r8
  400b64:	58                   	pop    %rax
  400b65:	41                   	rex.B
  400b66:	42                   	rex.X
  400b67:	49 5f                	rex.WB pop %r15
  400b69:	31 2e                	xor    %ebp,(%rsi)
  400b6b:	33 00                	xor    (%rax),%eax
  400b6d:	47                   	rex.RXB
  400b6e:	4c                   	rex.WR
  400b6f:	49                   	rex.WB
  400b70:	42                   	rex.X
  400b71:	43 58                	rex.XB pop %r8
  400b73:	58                   	pop    %rax
  400b74:	5f                   	pop    %rdi
  400b75:	33 2e                	xor    (%rsi),%ebp
  400b77:	34 00                	xor    $0x0,%al

Disassembly of section .gnu.version:

0000000000400b7a <.gnu.version>:
  400b7a:	00 00                	add    %al,(%rax)
  400b7c:	02 00                	add    (%rax),%al
  400b7e:	02 00                	add    (%rax),%al
  400b80:	03 00                	add    (%rax),%eax
  400b82:	04 00                	add    $0x0,%al
  400b84:	03 00                	add    (%rax),%eax
  400b86:	03 00                	add    (%rax),%eax
  400b88:	02 00                	add    (%rax),%al
  400b8a:	04 00                	add    $0x0,%al
  400b8c:	03 00                	add    (%rax),%eax
  400b8e:	02 00                	add    (%rax),%al
  400b90:	03 00                	add    (%rax),%eax
  400b92:	02 00                	add    (%rax),%al
  400b94:	05 00 06 00 03       	add    $0x3000600,%eax
  400b99:	00 03                	add    %al,(%rbx)
  400b9b:	00 02                	add    %al,(%rdx)
  400b9d:	00 02                	add    %al,(%rdx)
  400b9f:	00 07                	add    %al,(%rdi)
  400ba1:	00 08                	add    %cl,(%rax)
  400ba3:	00 02                	add    %al,(%rdx)
  400ba5:	00 03                	add    %al,(%rbx)
  400ba7:	00 05 00 04 00 02    	add    %al,0x2000400(%rip)        # 2400fad <_end+0x1df8c85>
  400bad:	00 00                	add    %al,(%rax)
  400baf:	00 09                	add    %cl,(%rcx)
  400bb1:	00 03                	add    %al,(%rbx)
  400bb3:	00 00                	add    %al,(%rax)
  400bb5:	00 0a                	add    %cl,(%rdx)
  400bb7:	00 00                	add    %al,(%rax)
  400bb9:	00 03                	add    %al,(%rbx)
  400bbb:	00 04 00             	add    %al,(%rax,%rax,1)
  400bbe:	04 00                	add    $0x0,%al
  400bc0:	02 00                	add    (%rax),%al
  400bc2:	02 00                	add    (%rax),%al
  400bc4:	01 00                	add    %eax,(%rax)
  400bc6:	02 00                	add    (%rax),%al
  400bc8:	04 00                	add    $0x0,%al
  400bca:	02 00                	add    (%rax),%al

Disassembly of section .gnu.version_r:

0000000000400bd0 <.gnu.version_r>:
  400bd0:	01 00                	add    %eax,(%rax)
  400bd2:	01 00                	add    %eax,(%rax)
  400bd4:	bd 02 00 00 10       	mov    $0x10000002,%ebp
  400bd9:	00 00                	add    %al,(%rax)
  400bdb:	00 20                	add    %ah,(%rax)
  400bdd:	00 00                	add    %al,(%rax)
  400bdf:	00 50 26             	add    %dl,0x26(%rax)
  400be2:	79 0b                	jns    400bef <_init-0x429>
  400be4:	00 00                	add    %al,(%rax)
  400be6:	09 00                	or     %eax,(%rax)
  400be8:	3d 03 00 00 00       	cmp    $0x3,%eax
  400bed:	00 00                	add    %al,(%rax)
  400bef:	00 01                	add    %al,(%rcx)
  400bf1:	00 01                	add    %al,(%rcx)
  400bf3:	00 01                	add    %al,(%rcx)
  400bf5:	00 00                	add    %al,(%rax)
  400bf7:	00 10                	add    %dl,(%rax)
  400bf9:	00 00                	add    %al,(%rax)
  400bfb:	00 20                	add    %ah,(%rax)
  400bfd:	00 00                	add    %al,(%rax)
  400bff:	00 75 1a             	add    %dh,0x1a(%rbp)
  400c02:	69 09 00 00 07 00    	imul   $0x70000,(%rcx),%ecx
  400c08:	45 03 00             	add    (%r8),%r8d
  400c0b:	00 00                	add    %al,(%rax)
  400c0d:	00 00                	add    %al,(%rax)
  400c0f:	00 01                	add    %al,(%rcx)
  400c11:	00 01                	add    %al,(%rcx)
  400c13:	00 da                	add    %bl,%dl
  400c15:	02 00                	add    (%rax),%al
  400c17:	00 10                	add    %dl,(%rax)
  400c19:	00 00                	add    %al,(%rax)
  400c1b:	00 20                	add    %ah,(%rax)
  400c1d:	00 00                	add    %al,(%rax)
  400c1f:	00 75 1a             	add    %dh,0x1a(%rbp)
  400c22:	69 09 00 00 03 00    	imul   $0x30000,(%rcx),%ecx
  400c28:	45 03 00             	add    (%r8),%r8d
  400c2b:	00 00                	add    %al,(%rax)
  400c2d:	00 00                	add    %al,(%rax)
  400c2f:	00 01                	add    %al,(%rcx)
  400c31:	00 06                	add    %al,(%rsi)
  400c33:	00 5f 00             	add    %bl,0x0(%rdi)
  400c36:	00 00                	add    %al,(%rax)
  400c38:	10 00                	adc    %al,(%rax)
  400c3a:	00 00                	add    %al,(%rax)
  400c3c:	00 00                	add    %al,(%rax)
  400c3e:	00 00                	add    %al,(%rax)
  400c40:	71 f8                	jno    400c3a <_init-0x3de>
  400c42:	97                   	xchg   %eax,%edi
  400c43:	02 00                	add    (%rax),%al
  400c45:	00 0a                	add    %cl,(%rdx)
  400c47:	00 51 03             	add    %dl,0x3(%rcx)
  400c4a:	00 00                	add    %al,(%rax)
  400c4c:	10 00                	adc    %al,(%rax)
  400c4e:	00 00                	add    %al,(%rax)
  400c50:	78 d1                	js     400c23 <_init-0x3f5>
  400c52:	af                   	scas   %es:(%rdi),%eax
  400c53:	0b 00                	or     (%rax),%eax
  400c55:	00 08                	add    %cl,(%rax)
  400c57:	00 60 03             	add    %ah,0x3(%rax)
  400c5a:	00 00                	add    %al,(%rax)
  400c5c:	10 00                	adc    %al,(%rax)
  400c5e:	00 00                	add    %al,(%rax)
  400c60:	61                   	(bad)  
  400c61:	f8                   	clc    
  400c62:	97                   	xchg   %eax,%edi
  400c63:	02 00                	add    (%rax),%al
  400c65:	00 06                	add    %al,(%rsi)
  400c67:	00 6d 03             	add    %ch,0x3(%rbp)
  400c6a:	00 00                	add    %al,(%rax)
  400c6c:	10 00                	adc    %al,(%rax)
  400c6e:	00 00                	add    %al,(%rax)
  400c70:	89 7f 29             	mov    %edi,0x29(%rdi)
  400c73:	02 00                	add    (%rax),%al
  400c75:	00 05 00 7c 03 00    	add    %al,0x37c00(%rip)        # 43887b <__FRAME_END__+0x316f3>
  400c7b:	00 10                	add    %dl,(%rax)
  400c7d:	00 00                	add    %al,(%rax)
  400c7f:	00 d3                	add    %dl,%bl
  400c81:	af                   	scas   %es:(%rdi),%eax
  400c82:	6b 05 00 00 04 00 8a 	imul   $0xffffff8a,0x40000(%rip),%eax        # 440c89 <__FRAME_END__+0x39b01>
  400c89:	03 00                	add    (%rax),%eax
  400c8b:	00 10                	add    %dl,(%rax)
  400c8d:	00 00                	add    %al,(%rax)
  400c8f:	00 74 29 92          	add    %dh,-0x6e(%rcx,%rbp,1)
  400c93:	08 00                	or     %al,(%rax)
  400c95:	00 02                	add    %al,(%rdx)
  400c97:	00 95 03 00 00 00    	add    %dl,0x3(%rbp)
  400c9d:	00 00                	add    %al,(%rax)
	...

Disassembly of section .rela.dyn:

0000000000400ca0 <.rela.dyn>:
  400ca0:	f8                   	clc    
  400ca1:	7f 60                	jg     400d03 <_init-0x315>
  400ca3:	00 00                	add    %al,(%rax)
  400ca5:	00 00                	add    %al,(%rax)
  400ca7:	00 06                	add    %al,(%rsi)
  400ca9:	00 00                	add    %al,(%rax)
  400cab:	00 1d 00 00 00 00    	add    %bl,0x0(%rip)        # 400cb1 <_init-0x367>
  400cb1:	00 00                	add    %al,(%rax)
  400cb3:	00 00                	add    %al,(%rax)
  400cb5:	00 00                	add    %al,(%rax)
  400cb7:	00 40 81             	add    %al,-0x7f(%rax)
  400cba:	60                   	(bad)  
  400cbb:	00 00                	add    %al,(%rax)
  400cbd:	00 00                	add    %al,(%rax)
  400cbf:	00 05 00 00 00 21    	add    %al,0x21000000(%rip)        # 21400cc5 <_end+0x20df899d>
	...
  400ccd:	00 00                	add    %al,(%rax)
  400ccf:	00 a0 81 60 00 00    	add    %ah,0x6081(%rax)
  400cd5:	00 00                	add    %al,(%rax)
  400cd7:	00 05 00 00 00 26    	add    %al,0x26000000(%rip)        # 26400cdd <_end+0x25df89b5>
	...
  400ce5:	00 00                	add    %al,(%rax)
  400ce7:	00 b0 82 60 00 00    	add    %dh,0x6082(%rax)
  400ced:	00 00                	add    %al,(%rax)
  400cef:	00 05 00 00 00 22    	add    %al,0x22000000(%rip)        # 22400cf5 <_end+0x21df89cd>
	...
  400cfd:	00 00                	add    %al,(%rax)
  400cff:	00 08                	add    %cl,(%rax)
  400d01:	83 60 00 00          	andl   $0x0,0x0(%rax)
  400d05:	00 00                	add    %al,(%rax)
  400d07:	00 05 00 00 00 24    	add    %al,0x24000000(%rip)        # 24400d0d <_end+0x23df89e5>
	...

Disassembly of section .rela.plt:

0000000000400d18 <.rela.plt>:
  400d18:	18 80 60 00 00 00    	sbb    %al,0x60(%rax)
  400d1e:	00 00                	add    %al,(%rax)
  400d20:	07                   	(bad)  
  400d21:	00 00                	add    %al,(%rax)
  400d23:	00 01                	add    %al,(%rcx)
	...
  400d2d:	00 00                	add    %al,(%rax)
  400d2f:	00 20                	add    %ah,(%rax)
  400d31:	80 60 00 00          	andb   $0x0,0x0(%rax)
  400d35:	00 00                	add    %al,(%rax)
  400d37:	00 07                	add    %al,(%rdi)
  400d39:	00 00                	add    %al,(%rax)
  400d3b:	00 02                	add    %al,(%rdx)
	...
  400d45:	00 00                	add    %al,(%rax)
  400d47:	00 28                	add    %ch,(%rax)
  400d49:	80 60 00 00          	andb   $0x0,0x0(%rax)
  400d4d:	00 00                	add    %al,(%rax)
  400d4f:	00 07                	add    %al,(%rdi)
  400d51:	00 00                	add    %al,(%rax)
  400d53:	00 03                	add    %al,(%rbx)
	...
  400d5d:	00 00                	add    %al,(%rax)
  400d5f:	00 30                	add    %dh,(%rax)
  400d61:	80 60 00 00          	andb   $0x0,0x0(%rax)
  400d65:	00 00                	add    %al,(%rax)
  400d67:	00 07                	add    %al,(%rdi)
  400d69:	00 00                	add    %al,(%rax)
  400d6b:	00 04 00             	add    %al,(%rax,%rax,1)
	...
  400d76:	00 00                	add    %al,(%rax)
  400d78:	38 80 60 00 00 00    	cmp    %al,0x60(%rax)
  400d7e:	00 00                	add    %al,(%rax)
  400d80:	07                   	(bad)  
  400d81:	00 00                	add    %al,(%rax)
  400d83:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # 400d89 <_init-0x28f>
  400d89:	00 00                	add    %al,(%rax)
  400d8b:	00 00                	add    %al,(%rax)
  400d8d:	00 00                	add    %al,(%rax)
  400d8f:	00 40 80             	add    %al,-0x80(%rax)
  400d92:	60                   	(bad)  
  400d93:	00 00                	add    %al,(%rax)
  400d95:	00 00                	add    %al,(%rax)
  400d97:	00 07                	add    %al,(%rdi)
  400d99:	00 00                	add    %al,(%rax)
  400d9b:	00 06                	add    %al,(%rsi)
	...
  400da5:	00 00                	add    %al,(%rax)
  400da7:	00 48 80             	add    %cl,-0x80(%rax)
  400daa:	60                   	(bad)  
  400dab:	00 00                	add    %al,(%rax)
  400dad:	00 00                	add    %al,(%rax)
  400daf:	00 07                	add    %al,(%rdi)
  400db1:	00 00                	add    %al,(%rax)
  400db3:	00 07                	add    %al,(%rdi)
	...
  400dbd:	00 00                	add    %al,(%rax)
  400dbf:	00 50 80             	add    %dl,-0x80(%rax)
  400dc2:	60                   	(bad)  
  400dc3:	00 00                	add    %al,(%rax)
  400dc5:	00 00                	add    %al,(%rax)
  400dc7:	00 07                	add    %al,(%rdi)
  400dc9:	00 00                	add    %al,(%rax)
  400dcb:	00 08                	add    %cl,(%rax)
	...
  400dd5:	00 00                	add    %al,(%rax)
  400dd7:	00 58 80             	add    %bl,-0x80(%rax)
  400dda:	60                   	(bad)  
  400ddb:	00 00                	add    %al,(%rax)
  400ddd:	00 00                	add    %al,(%rax)
  400ddf:	00 07                	add    %al,(%rdi)
  400de1:	00 00                	add    %al,(%rax)
  400de3:	00 09                	add    %cl,(%rcx)
	...
  400ded:	00 00                	add    %al,(%rax)
  400def:	00 60 80             	add    %ah,-0x80(%rax)
  400df2:	60                   	(bad)  
  400df3:	00 00                	add    %al,(%rax)
  400df5:	00 00                	add    %al,(%rax)
  400df7:	00 07                	add    %al,(%rdi)
  400df9:	00 00                	add    %al,(%rax)
  400dfb:	00 0a                	add    %cl,(%rdx)
	...
  400e05:	00 00                	add    %al,(%rax)
  400e07:	00 68 80             	add    %ch,-0x80(%rax)
  400e0a:	60                   	(bad)  
  400e0b:	00 00                	add    %al,(%rax)
  400e0d:	00 00                	add    %al,(%rax)
  400e0f:	00 07                	add    %al,(%rdi)
  400e11:	00 00                	add    %al,(%rax)
  400e13:	00 0b                	add    %cl,(%rbx)
	...
  400e1d:	00 00                	add    %al,(%rax)
  400e1f:	00 70 80             	add    %dh,-0x80(%rax)
  400e22:	60                   	(bad)  
  400e23:	00 00                	add    %al,(%rax)
  400e25:	00 00                	add    %al,(%rax)
  400e27:	00 07                	add    %al,(%rdi)
  400e29:	00 00                	add    %al,(%rax)
  400e2b:	00 0c 00             	add    %cl,(%rax,%rax,1)
	...
  400e36:	00 00                	add    %al,(%rax)
  400e38:	78 80                	js     400dba <_init-0x25e>
  400e3a:	60                   	(bad)  
  400e3b:	00 00                	add    %al,(%rax)
  400e3d:	00 00                	add    %al,(%rax)
  400e3f:	00 07                	add    %al,(%rdi)
  400e41:	00 00                	add    %al,(%rax)
  400e43:	00 0d 00 00 00 00    	add    %cl,0x0(%rip)        # 400e49 <_init-0x1cf>
  400e49:	00 00                	add    %al,(%rax)
  400e4b:	00 00                	add    %al,(%rax)
  400e4d:	00 00                	add    %al,(%rax)
  400e4f:	00 80 80 60 00 00    	add    %al,0x6080(%rax)
  400e55:	00 00                	add    %al,(%rax)
  400e57:	00 07                	add    %al,(%rdi)
  400e59:	00 00                	add    %al,(%rax)
  400e5b:	00 0e                	add    %cl,(%rsi)
	...
  400e65:	00 00                	add    %al,(%rax)
  400e67:	00 88 80 60 00 00    	add    %cl,0x6080(%rax)
  400e6d:	00 00                	add    %al,(%rax)
  400e6f:	00 07                	add    %al,(%rdi)
  400e71:	00 00                	add    %al,(%rax)
  400e73:	00 0f                	add    %cl,(%rdi)
	...
  400e7d:	00 00                	add    %al,(%rax)
  400e7f:	00 90 80 60 00 00    	add    %dl,0x6080(%rax)
  400e85:	00 00                	add    %al,(%rax)
  400e87:	00 07                	add    %al,(%rdi)
  400e89:	00 00                	add    %al,(%rax)
  400e8b:	00 10                	add    %dl,(%rax)
	...
  400e95:	00 00                	add    %al,(%rax)
  400e97:	00 98 80 60 00 00    	add    %bl,0x6080(%rax)
  400e9d:	00 00                	add    %al,(%rax)
  400e9f:	00 07                	add    %al,(%rdi)
  400ea1:	00 00                	add    %al,(%rax)
  400ea3:	00 11                	add    %dl,(%rcx)
	...
  400ead:	00 00                	add    %al,(%rax)
  400eaf:	00 a0 80 60 00 00    	add    %ah,0x6080(%rax)
  400eb5:	00 00                	add    %al,(%rax)
  400eb7:	00 07                	add    %al,(%rdi)
  400eb9:	00 00                	add    %al,(%rax)
  400ebb:	00 12                	add    %dl,(%rdx)
	...
  400ec5:	00 00                	add    %al,(%rax)
  400ec7:	00 a8 80 60 00 00    	add    %ch,0x6080(%rax)
  400ecd:	00 00                	add    %al,(%rax)
  400ecf:	00 07                	add    %al,(%rdi)
  400ed1:	00 00                	add    %al,(%rax)
  400ed3:	00 13                	add    %dl,(%rbx)
	...
  400edd:	00 00                	add    %al,(%rax)
  400edf:	00 b0 80 60 00 00    	add    %dh,0x6080(%rax)
  400ee5:	00 00                	add    %al,(%rax)
  400ee7:	00 07                	add    %al,(%rdi)
  400ee9:	00 00                	add    %al,(%rax)
  400eeb:	00 14 00             	add    %dl,(%rax,%rax,1)
	...
  400ef6:	00 00                	add    %al,(%rax)
  400ef8:	b8 80 60 00 00       	mov    $0x6080,%eax
  400efd:	00 00                	add    %al,(%rax)
  400eff:	00 07                	add    %al,(%rdi)
  400f01:	00 00                	add    %al,(%rax)
  400f03:	00 15 00 00 00 00    	add    %dl,0x0(%rip)        # 400f09 <_init-0x10f>
  400f09:	00 00                	add    %al,(%rax)
  400f0b:	00 00                	add    %al,(%rax)
  400f0d:	00 00                	add    %al,(%rax)
  400f0f:	00 c0                	add    %al,%al
  400f11:	80 60 00 00          	andb   $0x0,0x0(%rax)
  400f15:	00 00                	add    %al,(%rax)
  400f17:	00 07                	add    %al,(%rdi)
  400f19:	00 00                	add    %al,(%rax)
  400f1b:	00 16                	add    %dl,(%rsi)
	...
  400f25:	00 00                	add    %al,(%rax)
  400f27:	00 c8                	add    %cl,%al
  400f29:	80 60 00 00          	andb   $0x0,0x0(%rax)
  400f2d:	00 00                	add    %al,(%rax)
  400f2f:	00 07                	add    %al,(%rdi)
  400f31:	00 00                	add    %al,(%rax)
  400f33:	00 17                	add    %dl,(%rdi)
	...
  400f3d:	00 00                	add    %al,(%rax)
  400f3f:	00 d0                	add    %dl,%al
  400f41:	80 60 00 00          	andb   $0x0,0x0(%rax)
  400f45:	00 00                	add    %al,(%rax)
  400f47:	00 07                	add    %al,(%rdi)
  400f49:	00 00                	add    %al,(%rax)
  400f4b:	00 27                	add    %ah,(%rdi)
	...
  400f55:	00 00                	add    %al,(%rax)
  400f57:	00 d8                	add    %bl,%al
  400f59:	80 60 00 00          	andb   $0x0,0x0(%rax)
  400f5d:	00 00                	add    %al,(%rax)
  400f5f:	00 07                	add    %al,(%rdi)
  400f61:	00 00                	add    %al,(%rax)
  400f63:	00 23                	add    %ah,(%rbx)
	...
  400f6d:	00 00                	add    %al,(%rax)
  400f6f:	00 e0                	add    %ah,%al
  400f71:	80 60 00 00          	andb   $0x0,0x0(%rax)
  400f75:	00 00                	add    %al,(%rax)
  400f77:	00 07                	add    %al,(%rdi)
  400f79:	00 00                	add    %al,(%rax)
  400f7b:	00 18                	add    %bl,(%rax)
	...
  400f85:	00 00                	add    %al,(%rax)
  400f87:	00 e8                	add    %ch,%al
  400f89:	80 60 00 00          	andb   $0x0,0x0(%rax)
  400f8d:	00 00                	add    %al,(%rax)
  400f8f:	00 07                	add    %al,(%rdi)
  400f91:	00 00                	add    %al,(%rax)
  400f93:	00 19                	add    %bl,(%rcx)
	...
  400f9d:	00 00                	add    %al,(%rax)
  400f9f:	00 f0                	add    %dh,%al
  400fa1:	80 60 00 00          	andb   $0x0,0x0(%rax)
  400fa5:	00 00                	add    %al,(%rax)
  400fa7:	00 07                	add    %al,(%rdi)
  400fa9:	00 00                	add    %al,(%rax)
  400fab:	00 1b                	add    %bl,(%rbx)
	...
  400fb5:	00 00                	add    %al,(%rax)
  400fb7:	00 f8                	add    %bh,%al
  400fb9:	80 60 00 00          	andb   $0x0,0x0(%rax)
  400fbd:	00 00                	add    %al,(%rax)
  400fbf:	00 07                	add    %al,(%rdi)
  400fc1:	00 00                	add    %al,(%rax)
  400fc3:	00 1c 00             	add    %bl,(%rax,%rax,1)
	...
  400fce:	00 00                	add    %al,(%rax)
  400fd0:	00 81 60 00 00 00    	add    %al,0x60(%rcx)
  400fd6:	00 00                	add    %al,(%rax)
  400fd8:	07                   	(bad)  
  400fd9:	00 00                	add    %al,(%rax)
  400fdb:	00 1e                	add    %bl,(%rsi)
	...
  400fe5:	00 00                	add    %al,(%rax)
  400fe7:	00 08                	add    %cl,(%rax)
  400fe9:	81 60 00 00 00 00 00 	andl   $0x0,0x0(%rax)
  400ff0:	07                   	(bad)  
  400ff1:	00 00                	add    %al,(%rax)
  400ff3:	00 20                	add    %ah,(%rax)
	...
  400ffd:	00 00                	add    %al,(%rax)
  400fff:	00 10                	add    %dl,(%rax)
  401001:	81 60 00 00 00 00 00 	andl   $0x0,0x0(%rax)
  401008:	07                   	(bad)  
  401009:	00 00                	add    %al,(%rax)
  40100b:	00 28                	add    %ch,(%rax)
	...

Disassembly of section .init:

0000000000401018 <_init>:
  401018:	48 83 ec 08          	sub    $0x8,%rsp
  40101c:	48 8b 05 d5 6f 20 00 	mov    0x206fd5(%rip),%rax        # 607ff8 <_DYNAMIC+0x220>
  401023:	48 85 c0             	test   %rax,%rax
  401026:	74 05                	je     40102d <_init+0x15>
  401028:	e8 23 02 00 00       	callq  401250 <_ZNSt8ios_base4InitD1Ev@plt+0x10>
  40102d:	48 83 c4 08          	add    $0x8,%rsp
  401031:	c3                   	retq   

Disassembly of section .plt:

0000000000401040 <_Znam@plt-0x10>:
  401040:	ff 35 c2 6f 20 00    	pushq  0x206fc2(%rip)        # 608008 <_GLOBAL_OFFSET_TABLE_+0x8>
  401046:	ff 25 c4 6f 20 00    	jmpq   *0x206fc4(%rip)        # 608010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40104c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401050 <_Znam@plt>:
  401050:	ff 25 c2 6f 20 00    	jmpq   *0x206fc2(%rip)        # 608018 <_GLOBAL_OFFSET_TABLE_+0x18>
  401056:	68 00 00 00 00       	pushq  $0x0
  40105b:	e9 e0 ff ff ff       	jmpq   401040 <_init+0x28>

0000000000401060 <_ZNSo3putEc@plt>:
  401060:	ff 25 ba 6f 20 00    	jmpq   *0x206fba(%rip)        # 608020 <_GLOBAL_OFFSET_TABLE_+0x20>
  401066:	68 01 00 00 00       	pushq  $0x1
  40106b:	e9 d0 ff ff ff       	jmpq   401040 <_init+0x28>

0000000000401070 <rand@plt>:
  401070:	ff 25 b2 6f 20 00    	jmpq   *0x206fb2(%rip)        # 608028 <_GLOBAL_OFFSET_TABLE_+0x28>
  401076:	68 02 00 00 00       	pushq  $0x2
  40107b:	e9 c0 ff ff ff       	jmpq   401040 <_init+0x28>

0000000000401080 <__cxa_allocate_exception@plt>:
  401080:	ff 25 aa 6f 20 00    	jmpq   *0x206faa(%rip)        # 608030 <_GLOBAL_OFFSET_TABLE_+0x30>
  401086:	68 03 00 00 00       	pushq  $0x3
  40108b:	e9 b0 ff ff ff       	jmpq   401040 <_init+0x28>

0000000000401090 <posix_memalign@plt>:
  401090:	ff 25 a2 6f 20 00    	jmpq   *0x206fa2(%rip)        # 608038 <_GLOBAL_OFFSET_TABLE_+0x38>
  401096:	68 04 00 00 00       	pushq  $0x4
  40109b:	e9 a0 ff ff ff       	jmpq   401040 <_init+0x28>

00000000004010a0 <memset@plt>:
  4010a0:	ff 25 9a 6f 20 00    	jmpq   *0x206f9a(%rip)        # 608040 <_GLOBAL_OFFSET_TABLE_+0x40>
  4010a6:	68 05 00 00 00       	pushq  $0x5
  4010ab:	e9 90 ff ff ff       	jmpq   401040 <_init+0x28>

00000000004010b0 <_ZNSo5flushEv@plt>:
  4010b0:	ff 25 92 6f 20 00    	jmpq   *0x206f92(%rip)        # 608048 <_GLOBAL_OFFSET_TABLE_+0x48>
  4010b6:	68 06 00 00 00       	pushq  $0x6
  4010bb:	e9 80 ff ff ff       	jmpq   401040 <_init+0x28>

00000000004010c0 <__cxa_free_exception@plt>:
  4010c0:	ff 25 8a 6f 20 00    	jmpq   *0x206f8a(%rip)        # 608050 <_GLOBAL_OFFSET_TABLE_+0x50>
  4010c6:	68 07 00 00 00       	pushq  $0x7
  4010cb:	e9 70 ff ff ff       	jmpq   401040 <_init+0x28>

00000000004010d0 <__cxa_atexit@plt>:
  4010d0:	ff 25 82 6f 20 00    	jmpq   *0x206f82(%rip)        # 608058 <_GLOBAL_OFFSET_TABLE_+0x58>
  4010d6:	68 08 00 00 00       	pushq  $0x8
  4010db:	e9 60 ff ff ff       	jmpq   401040 <_init+0x28>

00000000004010e0 <_ZdlPv@plt>:
  4010e0:	ff 25 7a 6f 20 00    	jmpq   *0x206f7a(%rip)        # 608060 <_GLOBAL_OFFSET_TABLE_+0x60>
  4010e6:	68 09 00 00 00       	pushq  $0x9
  4010eb:	e9 50 ff ff ff       	jmpq   401040 <_init+0x28>

00000000004010f0 <fclose@plt>:
  4010f0:	ff 25 72 6f 20 00    	jmpq   *0x206f72(%rip)        # 608068 <_GLOBAL_OFFSET_TABLE_+0x68>
  4010f6:	68 0a 00 00 00       	pushq  $0xa
  4010fb:	e9 40 ff ff ff       	jmpq   401040 <_init+0x28>

0000000000401100 <_Znwm@plt>:
  401100:	ff 25 6a 6f 20 00    	jmpq   *0x206f6a(%rip)        # 608070 <_GLOBAL_OFFSET_TABLE_+0x70>
  401106:	68 0b 00 00 00       	pushq  $0xb
  40110b:	e9 30 ff ff ff       	jmpq   401040 <_init+0x28>

0000000000401110 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>:
  401110:	ff 25 62 6f 20 00    	jmpq   *0x206f62(%rip)        # 608078 <_GLOBAL_OFFSET_TABLE_+0x78>
  401116:	68 0c 00 00 00       	pushq  $0xc
  40111b:	e9 20 ff ff ff       	jmpq   401040 <_init+0x28>

0000000000401120 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>:
  401120:	ff 25 5a 6f 20 00    	jmpq   *0x206f5a(%rip)        # 608080 <_GLOBAL_OFFSET_TABLE_+0x80>
  401126:	68 0d 00 00 00       	pushq  $0xd
  40112b:	e9 10 ff ff ff       	jmpq   401040 <_init+0x28>

0000000000401130 <fopen@plt>:
  401130:	ff 25 52 6f 20 00    	jmpq   *0x206f52(%rip)        # 608088 <_GLOBAL_OFFSET_TABLE_+0x88>
  401136:	68 0e 00 00 00       	pushq  $0xe
  40113b:	e9 00 ff ff ff       	jmpq   401040 <_init+0x28>

0000000000401140 <free@plt>:
  401140:	ff 25 4a 6f 20 00    	jmpq   *0x206f4a(%rip)        # 608090 <_GLOBAL_OFFSET_TABLE_+0x90>
  401146:	68 0f 00 00 00       	pushq  $0xf
  40114b:	e9 f0 fe ff ff       	jmpq   401040 <_init+0x28>

0000000000401150 <_ZSt16__throw_bad_castv@plt>:
  401150:	ff 25 42 6f 20 00    	jmpq   *0x206f42(%rip)        # 608098 <_GLOBAL_OFFSET_TABLE_+0x98>
  401156:	68 10 00 00 00       	pushq  $0x10
  40115b:	e9 e0 fe ff ff       	jmpq   401040 <_init+0x28>

0000000000401160 <_ZdaPv@plt>:
  401160:	ff 25 3a 6f 20 00    	jmpq   *0x206f3a(%rip)        # 6080a0 <_GLOBAL_OFFSET_TABLE_+0xa0>
  401166:	68 11 00 00 00       	pushq  $0x11
  40116b:	e9 d0 fe ff ff       	jmpq   401040 <_init+0x28>

0000000000401170 <clock_gettime@plt>:
  401170:	ff 25 32 6f 20 00    	jmpq   *0x206f32(%rip)        # 6080a8 <_GLOBAL_OFFSET_TABLE_+0xa8>
  401176:	68 12 00 00 00       	pushq  $0x12
  40117b:	e9 c0 fe ff ff       	jmpq   401040 <_init+0x28>

0000000000401180 <__cxa_throw_bad_array_new_length@plt>:
  401180:	ff 25 2a 6f 20 00    	jmpq   *0x206f2a(%rip)        # 6080b0 <_GLOBAL_OFFSET_TABLE_+0xb0>
  401186:	68 13 00 00 00       	pushq  $0x13
  40118b:	e9 b0 fe ff ff       	jmpq   401040 <_init+0x28>

0000000000401190 <_ZNSt8ios_base4InitC1Ev@plt>:
  401190:	ff 25 22 6f 20 00    	jmpq   *0x206f22(%rip)        # 6080b8 <_GLOBAL_OFFSET_TABLE_+0xb8>
  401196:	68 14 00 00 00       	pushq  $0x14
  40119b:	e9 a0 fe ff ff       	jmpq   401040 <_init+0x28>

00000000004011a0 <fgets@plt>:
  4011a0:	ff 25 1a 6f 20 00    	jmpq   *0x206f1a(%rip)        # 6080c0 <_GLOBAL_OFFSET_TABLE_+0xc0>
  4011a6:	68 15 00 00 00       	pushq  $0x15
  4011ab:	e9 90 fe ff ff       	jmpq   401040 <_init+0x28>

00000000004011b0 <_ZNSo9_M_insertIdEERSoT_@plt>:
  4011b0:	ff 25 12 6f 20 00    	jmpq   *0x206f12(%rip)        # 6080c8 <_GLOBAL_OFFSET_TABLE_+0xc8>
  4011b6:	68 16 00 00 00       	pushq  $0x16
  4011bb:	e9 80 fe ff ff       	jmpq   401040 <_init+0x28>

00000000004011c0 <__gxx_personality_v0@plt>:
  4011c0:	ff 25 0a 6f 20 00    	jmpq   *0x206f0a(%rip)        # 6080d0 <_GLOBAL_OFFSET_TABLE_+0xd0>
  4011c6:	68 17 00 00 00       	pushq  $0x17
  4011cb:	e9 70 fe ff ff       	jmpq   401040 <_init+0x28>

00000000004011d0 <_ZNSt16invalid_argumentD1Ev@plt>:
  4011d0:	ff 25 02 6f 20 00    	jmpq   *0x206f02(%rip)        # 6080d8 <_GLOBAL_OFFSET_TABLE_+0xd8>
  4011d6:	68 18 00 00 00       	pushq  $0x18
  4011db:	e9 60 fe ff ff       	jmpq   401040 <_init+0x28>

00000000004011e0 <__cxa_throw@plt>:
  4011e0:	ff 25 fa 6e 20 00    	jmpq   *0x206efa(%rip)        # 6080e0 <_GLOBAL_OFFSET_TABLE_+0xe0>
  4011e6:	68 19 00 00 00       	pushq  $0x19
  4011eb:	e9 50 fe ff ff       	jmpq   401040 <_init+0x28>

00000000004011f0 <_ZNSolsEi@plt>:
  4011f0:	ff 25 f2 6e 20 00    	jmpq   *0x206ef2(%rip)        # 6080e8 <_GLOBAL_OFFSET_TABLE_+0xe8>
  4011f6:	68 1a 00 00 00       	pushq  $0x1a
  4011fb:	e9 40 fe ff ff       	jmpq   401040 <_init+0x28>

0000000000401200 <_Unwind_Resume@plt>:
  401200:	ff 25 ea 6e 20 00    	jmpq   *0x206eea(%rip)        # 6080f0 <_GLOBAL_OFFSET_TABLE_+0xf0>
  401206:	68 1b 00 00 00       	pushq  $0x1b
  40120b:	e9 30 fe ff ff       	jmpq   401040 <_init+0x28>

0000000000401210 <__libc_start_main@plt>:
  401210:	ff 25 e2 6e 20 00    	jmpq   *0x206ee2(%rip)        # 6080f8 <_GLOBAL_OFFSET_TABLE_+0xf8>
  401216:	68 1c 00 00 00       	pushq  $0x1c
  40121b:	e9 20 fe ff ff       	jmpq   401040 <_init+0x28>

0000000000401220 <_ZNSt16invalid_argumentC1EPKc@plt>:
  401220:	ff 25 da 6e 20 00    	jmpq   *0x206eda(%rip)        # 608100 <_GLOBAL_OFFSET_TABLE_+0x100>
  401226:	68 1d 00 00 00       	pushq  $0x1d
  40122b:	e9 10 fe ff ff       	jmpq   401040 <_init+0x28>

0000000000401230 <fscanf@plt>:
  401230:	ff 25 d2 6e 20 00    	jmpq   *0x206ed2(%rip)        # 608108 <_GLOBAL_OFFSET_TABLE_+0x108>
  401236:	68 1e 00 00 00       	pushq  $0x1e
  40123b:	e9 00 fe ff ff       	jmpq   401040 <_init+0x28>

0000000000401240 <_ZNSt8ios_base4InitD1Ev@plt>:
  401240:	ff 25 ca 6e 20 00    	jmpq   *0x206eca(%rip)        # 608110 <_GLOBAL_OFFSET_TABLE_+0x110>
  401246:	68 1f 00 00 00       	pushq  $0x1f
  40124b:	e9 f0 fd ff ff       	jmpq   401040 <_init+0x28>

Disassembly of section .plt.got:

0000000000401250 <.plt.got>:
  401250:	ff 25 a2 6d 20 00    	jmpq   *0x206da2(%rip)        # 607ff8 <_DYNAMIC+0x220>
  401256:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000401260 <main>:
  401260:	48 83 ec 08          	sub    $0x8,%rsp
  401264:	e8 c7 38 00 00       	callq  404b30 <_Z30test_jump_penalty_2_20_libxsmmv>
  401269:	e8 22 45 00 00       	callq  405790 <_Z31test_jump_penalty_2_20_unrolledv>
  40126e:	e8 dd 4d 00 00       	callq  406050 <_Z30test_jump_penalty_2_20_generalv>
  401273:	31 c0                	xor    %eax,%eax
  401275:	48 83 c4 08          	add    $0x8,%rsp
  401279:	c3                   	retq   
  40127a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000401280 <_GLOBAL__sub_I__ZlsRSoRK6Matrix>:
  401280:	48 83 ec 08          	sub    $0x8,%rsp
  401284:	bf 21 83 60 00       	mov    $0x608321,%edi
  401289:	e8 02 ff ff ff       	callq  401190 <_ZNSt8ios_base4InitC1Ev@plt>
  40128e:	ba 20 81 60 00       	mov    $0x608120,%edx
  401293:	be 21 83 60 00       	mov    $0x608321,%esi
  401298:	bf 40 12 40 00       	mov    $0x401240,%edi
  40129d:	48 83 c4 08          	add    $0x8,%rsp
  4012a1:	e9 2a fe ff ff       	jmpq   4010d0 <__cxa_atexit@plt>
  4012a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4012ad:	00 00 00 

00000000004012b0 <_start>:
  4012b0:	31 ed                	xor    %ebp,%ebp
  4012b2:	49 89 d1             	mov    %rdx,%r9
  4012b5:	5e                   	pop    %rsi
  4012b6:	48 89 e2             	mov    %rsp,%rdx
  4012b9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  4012bd:	50                   	push   %rax
  4012be:	54                   	push   %rsp
  4012bf:	49 c7 c0 20 68 40 00 	mov    $0x406820,%r8
  4012c6:	48 c7 c1 b0 67 40 00 	mov    $0x4067b0,%rcx
  4012cd:	48 c7 c7 60 12 40 00 	mov    $0x401260,%rdi
  4012d4:	e8 37 ff ff ff       	callq  401210 <__libc_start_main@plt>
  4012d9:	f4                   	hlt    
  4012da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004012e0 <deregister_tm_clones>:
  4012e0:	55                   	push   %rbp
  4012e1:	b8 28 81 60 00       	mov    $0x608128,%eax
  4012e6:	48 3d 28 81 60 00    	cmp    $0x608128,%rax
  4012ec:	48 89 e5             	mov    %rsp,%rbp
  4012ef:	74 17                	je     401308 <deregister_tm_clones+0x28>
  4012f1:	b8 00 00 00 00       	mov    $0x0,%eax
  4012f6:	48 85 c0             	test   %rax,%rax
  4012f9:	74 0d                	je     401308 <deregister_tm_clones+0x28>
  4012fb:	5d                   	pop    %rbp
  4012fc:	bf 28 81 60 00       	mov    $0x608128,%edi
  401301:	ff e0                	jmpq   *%rax
  401303:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401308:	5d                   	pop    %rbp
  401309:	c3                   	retq   
  40130a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000401310 <register_tm_clones>:
  401310:	be 28 81 60 00       	mov    $0x608128,%esi
  401315:	55                   	push   %rbp
  401316:	48 81 ee 28 81 60 00 	sub    $0x608128,%rsi
  40131d:	48 89 e5             	mov    %rsp,%rbp
  401320:	48 c1 fe 03          	sar    $0x3,%rsi
  401324:	48 89 f0             	mov    %rsi,%rax
  401327:	48 c1 e8 3f          	shr    $0x3f,%rax
  40132b:	48 01 c6             	add    %rax,%rsi
  40132e:	48 d1 fe             	sar    %rsi
  401331:	74 15                	je     401348 <register_tm_clones+0x38>
  401333:	b8 00 00 00 00       	mov    $0x0,%eax
  401338:	48 85 c0             	test   %rax,%rax
  40133b:	74 0b                	je     401348 <register_tm_clones+0x38>
  40133d:	5d                   	pop    %rbp
  40133e:	bf 28 81 60 00       	mov    $0x608128,%edi
  401343:	ff e0                	jmpq   *%rax
  401345:	0f 1f 00             	nopl   (%rax)
  401348:	5d                   	pop    %rbp
  401349:	c3                   	retq   
  40134a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000401350 <__do_global_dtors_aux>:
  401350:	80 3d c9 6f 20 00 00 	cmpb   $0x0,0x206fc9(%rip)        # 608320 <completed.6965>
  401357:	75 17                	jne    401370 <__do_global_dtors_aux+0x20>
  401359:	55                   	push   %rbp
  40135a:	48 89 e5             	mov    %rsp,%rbp
  40135d:	e8 7e ff ff ff       	callq  4012e0 <deregister_tm_clones>
  401362:	c6 05 b7 6f 20 00 01 	movb   $0x1,0x206fb7(%rip)        # 608320 <completed.6965>
  401369:	5d                   	pop    %rbp
  40136a:	c3                   	retq   
  40136b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401370:	f3 c3                	repz retq 
  401372:	0f 1f 40 00          	nopl   0x0(%rax)
  401376:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40137d:	00 00 00 

0000000000401380 <frame_dummy>:
  401380:	55                   	push   %rbp
  401381:	48 89 e5             	mov    %rsp,%rbp
  401384:	5d                   	pop    %rbp
  401385:	eb 89                	jmp    401310 <register_tm_clones>
  401387:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40138e:	00 00 

0000000000401390 <_Z4gemmRK6MatrixS1_RS_.constprop.7>:
  401390:	41 57                	push   %r15
  401392:	41 56                	push   %r14
  401394:	41 55                	push   %r13
  401396:	41 54                	push   %r12
  401398:	55                   	push   %rbp
  401399:	53                   	push   %rbx
  40139a:	48 83 ec 18          	sub    $0x18,%rsp
  40139e:	44 8b 52 0c          	mov    0xc(%rdx),%r10d
  4013a2:	44 8b 7a 08          	mov    0x8(%rdx),%r15d
  4013a6:	44 8b 77 0c          	mov    0xc(%rdi),%r14d
  4013aa:	45 85 d2             	test   %r10d,%r10d
  4013ad:	0f 8e dc 00 00 00    	jle    40148f <_Z4gemmRK6MatrixS1_RS_.constprop.7+0xff>
  4013b3:	41 8d 5f ff          	lea    -0x1(%r15),%ebx
  4013b7:	49 89 d5             	mov    %rdx,%r13
  4013ba:	49 89 fc             	mov    %rdi,%r12
  4013bd:	45 31 c0             	xor    %r8d,%r8d
  4013c0:	44 89 54 24 0c       	mov    %r10d,0xc(%rsp)
  4013c5:	48 c1 e3 03          	shl    $0x3,%rbx
  4013c9:	45 85 f6             	test   %r14d,%r14d
  4013cc:	0f 8e ae 00 00 00    	jle    401480 <_Z4gemmRK6MatrixS1_RS_.constprop.7+0xf0>
  4013d2:	45 31 c9             	xor    %r9d,%r9d
  4013d5:	0f 1f 00             	nopl   (%rax)
  4013d8:	45 85 ff             	test   %r15d,%r15d
  4013db:	0f 8e 92 00 00 00    	jle    401473 <_Z4gemmRK6MatrixS1_RS_.constprop.7+0xe3>
  4013e1:	41 8b 45 10          	mov    0x10(%r13),%eax
  4013e5:	49 8b 55 18          	mov    0x18(%r13),%rdx
  4013e9:	41 0f af c0          	imul   %r8d,%eax
  4013ed:	48 98                	cltq   
  4013ef:	48 8d 0c c2          	lea    (%rdx,%rax,8),%rcx
  4013f3:	41 8b 54 24 08       	mov    0x8(%r12),%edx
  4013f8:	c5 fb 10 01          	vmovsd (%rcx),%xmm0
  4013fc:	85 d2                	test   %edx,%edx
  4013fe:	0f 8e 9a 00 00 00    	jle    40149e <_Z4gemmRK6MatrixS1_RS_.constprop.7+0x10e>
  401404:	41 8b 44 24 10       	mov    0x10(%r12),%eax
  401409:	49 8b 7c 24 18       	mov    0x18(%r12),%rdi
  40140e:	41 0f af c1          	imul   %r9d,%eax
  401412:	44 39 4e 08          	cmp    %r9d,0x8(%rsi)
  401416:	0f 8e ae 00 00 00    	jle    4014ca <_Z4gemmRK6MatrixS1_RS_.constprop.7+0x13a>
  40141c:	48 98                	cltq   
  40141e:	83 ea 01             	sub    $0x1,%edx
  401421:	4c 8d 14 c7          	lea    (%rdi,%rax,8),%r10
  401425:	4c 8d 1c d5 08 00 00 	lea    0x8(,%rdx,8),%r11
  40142c:	00 
  40142d:	8b 7e 0c             	mov    0xc(%rsi),%edi
  401430:	31 c0                	xor    %eax,%eax
  401432:	eb 12                	jmp    401446 <_Z4gemmRK6MatrixS1_RS_.constprop.7+0xb6>
  401434:	0f 1f 40 00          	nopl   0x0(%rax)
  401438:	48 83 c0 08          	add    $0x8,%rax
  40143c:	49 39 c3             	cmp    %rax,%r11
  40143f:	c5 fb 10 04 01       	vmovsd (%rcx,%rax,1),%xmm0
  401444:	74 58                	je     40149e <_Z4gemmRK6MatrixS1_RS_.constprop.7+0x10e>
  401446:	44 39 c7             	cmp    %r8d,%edi
  401449:	c4 c1 7b 10 0c 02    	vmovsd (%r10,%rax,1),%xmm1
  40144f:	7e 79                	jle    4014ca <_Z4gemmRK6MatrixS1_RS_.constprop.7+0x13a>
  401451:	8b 56 10             	mov    0x10(%rsi),%edx
  401454:	48 8b 6e 18          	mov    0x18(%rsi),%rbp
  401458:	41 0f af d0          	imul   %r8d,%edx
  40145c:	44 01 ca             	add    %r9d,%edx
  40145f:	48 39 c3             	cmp    %rax,%rbx
  401462:	48 63 d2             	movslq %edx,%rdx
  401465:	c4 e2 f1 b9 44 d5 00 	vfmadd231sd 0x0(%rbp,%rdx,8),%xmm1,%xmm0
  40146c:	c5 fb 11 04 01       	vmovsd %xmm0,(%rcx,%rax,1)
  401471:	75 c5                	jne    401438 <_Z4gemmRK6MatrixS1_RS_.constprop.7+0xa8>
  401473:	41 83 c1 01          	add    $0x1,%r9d
  401477:	45 39 ce             	cmp    %r9d,%r14d
  40147a:	0f 85 58 ff ff ff    	jne    4013d8 <_Z4gemmRK6MatrixS1_RS_.constprop.7+0x48>
  401480:	41 83 c0 01          	add    $0x1,%r8d
  401484:	44 39 44 24 0c       	cmp    %r8d,0xc(%rsp)
  401489:	0f 85 3a ff ff ff    	jne    4013c9 <_Z4gemmRK6MatrixS1_RS_.constprop.7+0x39>
  40148f:	48 83 c4 18          	add    $0x18,%rsp
  401493:	5b                   	pop    %rbx
  401494:	5d                   	pop    %rbp
  401495:	41 5c                	pop    %r12
  401497:	41 5d                	pop    %r13
  401499:	41 5e                	pop    %r14
  40149b:	41 5f                	pop    %r15
  40149d:	c3                   	retq   
  40149e:	bf 10 00 00 00       	mov    $0x10,%edi
  4014a3:	e8 d8 fb ff ff       	callq  401080 <__cxa_allocate_exception@plt>
  4014a8:	be 34 68 40 00       	mov    $0x406834,%esi
  4014ad:	48 89 c7             	mov    %rax,%rdi
  4014b0:	48 89 c3             	mov    %rax,%rbx
  4014b3:	e8 68 fd ff ff       	callq  401220 <_ZNSt16invalid_argumentC1EPKc@plt>
  4014b8:	ba d0 11 40 00       	mov    $0x4011d0,%edx
  4014bd:	be 08 83 60 00       	mov    $0x608308,%esi
  4014c2:	48 89 df             	mov    %rbx,%rdi
  4014c5:	e8 16 fd ff ff       	callq  4011e0 <__cxa_throw@plt>
  4014ca:	bf 10 00 00 00       	mov    $0x10,%edi
  4014cf:	e8 ac fb ff ff       	callq  401080 <__cxa_allocate_exception@plt>
  4014d4:	be 34 68 40 00       	mov    $0x406834,%esi
  4014d9:	48 89 c7             	mov    %rax,%rdi
  4014dc:	48 89 c3             	mov    %rax,%rbx
  4014df:	e8 3c fd ff ff       	callq  401220 <_ZNSt16invalid_argumentC1EPKc@plt>
  4014e4:	eb d2                	jmp    4014b8 <_Z4gemmRK6MatrixS1_RS_.constprop.7+0x128>
  4014e6:	48 89 c5             	mov    %rax,%rbp
  4014e9:	48 89 df             	mov    %rbx,%rdi
  4014ec:	e8 cf fb ff ff       	callq  4010c0 <__cxa_free_exception@plt>
  4014f1:	48 89 ef             	mov    %rbp,%rdi
  4014f4:	e8 07 fd ff ff       	callq  401200 <_Unwind_Resume@plt>
  4014f9:	eb eb                	jmp    4014e6 <_Z4gemmRK6MatrixS1_RS_.constprop.7+0x156>
  4014fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401500 <_ZlsRSoRK6Matrix.constprop.9>:
  401500:	41 55                	push   %r13
  401502:	41 54                	push   %r12
  401504:	55                   	push   %rbp
  401505:	53                   	push   %rbx
  401506:	48 89 fd             	mov    %rdi,%rbp
  401509:	48 83 ec 08          	sub    $0x8,%rsp
  40150d:	8b 4e 08             	mov    0x8(%rsi),%ecx
  401510:	85 c9                	test   %ecx,%ecx
  401512:	0f 8e 17 01 00 00    	jle    40162f <_ZlsRSoRK6Matrix.constprop.9+0x12f>
  401518:	49 89 f4             	mov    %rsi,%r12
  40151b:	31 db                	xor    %ebx,%ebx
  40151d:	0f 1f 00             	nopl   (%rax)
  401520:	48 8b 75 00          	mov    0x0(%rbp),%rsi
  401524:	41 8b 54 24 0c       	mov    0xc(%r12),%edx
  401529:	48 8b 46 e8          	mov    -0x18(%rsi),%rax
  40152d:	48 01 e8             	add    %rbp,%rax
  401530:	85 d2                	test   %edx,%edx
  401532:	0f 8e bb 00 00 00    	jle    4015f3 <_ZlsRSoRK6Matrix.constprop.9+0xf3>
  401538:	8b 50 18             	mov    0x18(%rax),%edx
  40153b:	48 c7 40 10 0a 00 00 	movq   $0xa,0x10(%rax)
  401542:	00 
  401543:	81 e2 fb fe ff ff    	and    $0xfffffefb,%edx
  401549:	83 ca 04             	or     $0x4,%edx
  40154c:	39 cb                	cmp    %ecx,%ebx
  40154e:	89 50 18             	mov    %edx,0x18(%rax)
  401551:	48 8b 46 e8          	mov    -0x18(%rsi),%rax
  401555:	48 c7 44 05 08 02 00 	movq   $0x2,0x8(%rbp,%rax,1)
  40155c:	00 00 
  40155e:	0f 8d 03 01 00 00    	jge    401667 <_ZlsRSoRK6Matrix.constprop.9+0x167>
  401564:	45 31 ed             	xor    %r13d,%r13d
  401567:	eb 40                	jmp    4015a9 <_ZlsRSoRK6Matrix.constprop.9+0xa9>
  401569:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401570:	48 8b 4d 00          	mov    0x0(%rbp),%rcx
  401574:	48 8b 51 e8          	mov    -0x18(%rcx),%rdx
  401578:	48 01 ea             	add    %rbp,%rdx
  40157b:	8b 42 18             	mov    0x18(%rdx),%eax
  40157e:	48 c7 42 10 0a 00 00 	movq   $0xa,0x10(%rdx)
  401585:	00 
  401586:	25 fb fe ff ff       	and    $0xfffffefb,%eax
  40158b:	83 c8 04             	or     $0x4,%eax
  40158e:	41 39 5c 24 08       	cmp    %ebx,0x8(%r12)
  401593:	89 42 18             	mov    %eax,0x18(%rdx)
  401596:	48 8b 41 e8          	mov    -0x18(%rcx),%rax
  40159a:	48 c7 44 05 08 02 00 	movq   $0x2,0x8(%rbp,%rax,1)
  4015a1:	00 00 
  4015a3:	0f 8e be 00 00 00    	jle    401667 <_ZlsRSoRK6Matrix.constprop.9+0x167>
  4015a9:	41 8b 44 24 10       	mov    0x10(%r12),%eax
  4015ae:	49 8b 54 24 18       	mov    0x18(%r12),%rdx
  4015b3:	48 89 ef             	mov    %rbp,%rdi
  4015b6:	41 0f af c5          	imul   %r13d,%eax
  4015ba:	41 83 c5 01          	add    $0x1,%r13d
  4015be:	01 d8                	add    %ebx,%eax
  4015c0:	48 98                	cltq   
  4015c2:	c5 fb 10 04 c2       	vmovsd (%rdx,%rax,8),%xmm0
  4015c7:	e8 e4 fb ff ff       	callq  4011b0 <_ZNSo9_M_insertIdEERSoT_@plt>
  4015cc:	ba 01 00 00 00       	mov    $0x1,%edx
  4015d1:	be e8 68 40 00       	mov    $0x4068e8,%esi
  4015d6:	48 89 c7             	mov    %rax,%rdi
  4015d9:	e8 32 fb ff ff       	callq  401110 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  4015de:	45 39 6c 24 0c       	cmp    %r13d,0xc(%r12)
  4015e3:	7f 8b                	jg     401570 <_ZlsRSoRK6Matrix.constprop.9+0x70>
  4015e5:	48 8b 45 00          	mov    0x0(%rbp),%rax
  4015e9:	48 8b 70 e8          	mov    -0x18(%rax),%rsi
  4015ed:	48 01 ee             	add    %rbp,%rsi
  4015f0:	48 89 f0             	mov    %rsi,%rax
  4015f3:	4c 8b a8 f0 00 00 00 	mov    0xf0(%rax),%r13
  4015fa:	4d 85 ed             	test   %r13,%r13
  4015fd:	0f 84 90 00 00 00    	je     401693 <_ZlsRSoRK6Matrix.constprop.9+0x193>
  401603:	41 80 7d 38 00       	cmpb   $0x0,0x38(%r13)
  401608:	74 36                	je     401640 <_ZlsRSoRK6Matrix.constprop.9+0x140>
  40160a:	41 0f be 75 43       	movsbl 0x43(%r13),%esi
  40160f:	48 89 ef             	mov    %rbp,%rdi
  401612:	83 c3 01             	add    $0x1,%ebx
  401615:	e8 46 fa ff ff       	callq  401060 <_ZNSo3putEc@plt>
  40161a:	48 89 c7             	mov    %rax,%rdi
  40161d:	e8 8e fa ff ff       	callq  4010b0 <_ZNSo5flushEv@plt>
  401622:	41 8b 4c 24 08       	mov    0x8(%r12),%ecx
  401627:	39 d9                	cmp    %ebx,%ecx
  401629:	0f 8f f1 fe ff ff    	jg     401520 <_ZlsRSoRK6Matrix.constprop.9+0x20>
  40162f:	48 83 c4 08          	add    $0x8,%rsp
  401633:	48 89 e8             	mov    %rbp,%rax
  401636:	5b                   	pop    %rbx
  401637:	5d                   	pop    %rbp
  401638:	41 5c                	pop    %r12
  40163a:	41 5d                	pop    %r13
  40163c:	c3                   	retq   
  40163d:	0f 1f 00             	nopl   (%rax)
  401640:	4c 89 ef             	mov    %r13,%rdi
  401643:	e8 d8 fa ff ff       	callq  401120 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
  401648:	49 8b 45 00          	mov    0x0(%r13),%rax
  40164c:	be 0a 00 00 00       	mov    $0xa,%esi
  401651:	48 8b 40 30          	mov    0x30(%rax),%rax
  401655:	48 3d f0 65 40 00    	cmp    $0x4065f0,%rax
  40165b:	74 b2                	je     40160f <_ZlsRSoRK6Matrix.constprop.9+0x10f>
  40165d:	4c 89 ef             	mov    %r13,%rdi
  401660:	ff d0                	callq  *%rax
  401662:	0f be f0             	movsbl %al,%esi
  401665:	eb a8                	jmp    40160f <_ZlsRSoRK6Matrix.constprop.9+0x10f>
  401667:	bf 10 00 00 00       	mov    $0x10,%edi
  40166c:	e8 0f fa ff ff       	callq  401080 <__cxa_allocate_exception@plt>
  401671:	be 34 68 40 00       	mov    $0x406834,%esi
  401676:	48 89 c7             	mov    %rax,%rdi
  401679:	48 89 c3             	mov    %rax,%rbx
  40167c:	e8 9f fb ff ff       	callq  401220 <_ZNSt16invalid_argumentC1EPKc@plt>
  401681:	ba d0 11 40 00       	mov    $0x4011d0,%edx
  401686:	be 08 83 60 00       	mov    $0x608308,%esi
  40168b:	48 89 df             	mov    %rbx,%rdi
  40168e:	e8 4d fb ff ff       	callq  4011e0 <__cxa_throw@plt>
  401693:	e8 b8 fa ff ff       	callq  401150 <_ZSt16__throw_bad_castv@plt>
  401698:	48 89 c5             	mov    %rax,%rbp
  40169b:	48 89 df             	mov    %rbx,%rdi
  40169e:	e8 1d fa ff ff       	callq  4010c0 <__cxa_free_exception@plt>
  4016a3:	48 89 ef             	mov    %rbp,%rdi
  4016a6:	e8 55 fb ff ff       	callq  401200 <_Unwind_Resume@plt>
  4016ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004016b0 <_Z13assert_equalsRK6MatrixS1_.constprop.8>:
  4016b0:	41 55                	push   %r13
  4016b2:	41 54                	push   %r12
  4016b4:	55                   	push   %rbp
  4016b5:	53                   	push   %rbx
  4016b6:	48 89 fd             	mov    %rdi,%rbp
  4016b9:	48 89 f3             	mov    %rsi,%rbx
  4016bc:	48 83 ec 08          	sub    $0x8,%rsp
  4016c0:	8b 47 08             	mov    0x8(%rdi),%eax
  4016c3:	3b 46 08             	cmp    0x8(%rsi),%eax
  4016c6:	0f 85 7c 01 00 00    	jne    401848 <_Z13assert_equalsRK6MatrixS1_.constprop.8+0x198>
  4016cc:	44 8b 47 0c          	mov    0xc(%rdi),%r8d
  4016d0:	44 39 46 0c          	cmp    %r8d,0xc(%rsi)
  4016d4:	0f 85 d6 00 00 00    	jne    4017b0 <_Z13assert_equalsRK6MatrixS1_.constprop.8+0x100>
  4016da:	85 c0                	test   %eax,%eax
  4016dc:	0f 8e bb 00 00 00    	jle    40179d <_Z13assert_equalsRK6MatrixS1_.constprop.8+0xed>
  4016e2:	be 01 00 00 00       	mov    $0x1,%esi
  4016e7:	c5 fa 7e 15 01 53 00 	vmovq  0x5301(%rip),%xmm2        # 4069f0 <_ZTV11DenseMatrix+0x20>
  4016ee:	00 
  4016ef:	45 31 c9             	xor    %r9d,%r9d
  4016f2:	45 31 db             	xor    %r11d,%r11d
  4016f5:	c5 fb 10 0d 03 53 00 	vmovsd 0x5303(%rip),%xmm1        # 406a00 <_ZTV11DenseMatrix+0x30>
  4016fc:	00 
  4016fd:	0f 1f 00             	nopl   (%rax)
  401700:	45 85 c0             	test   %r8d,%r8d
  401703:	7e 7e                	jle    401783 <_Z13assert_equalsRK6MatrixS1_.constprop.8+0xd3>
  401705:	44 39 4b 08          	cmp    %r9d,0x8(%rbx)
  401709:	48 8b 4d 18          	mov    0x18(%rbp),%rcx
  40170d:	4a 8d 14 cd 00 00 00 	lea    0x0(,%r9,8),%rdx
  401714:	00 
  401715:	48 63 45 10          	movslq 0x10(%rbp),%rax
  401719:	c4 a1 7b 10 04 c9    	vmovsd (%rcx,%r9,8),%xmm0
  40171f:	0f 8e 3f 05 00 00    	jle    401c64 <_Z13assert_equalsRK6MatrixS1_.constprop.8+0x5b4>
  401725:	44 8b 53 0c          	mov    0xc(%rbx),%r10d
  401729:	45 85 d2             	test   %r10d,%r10d
  40172c:	0f 8e 32 05 00 00    	jle    401c64 <_Z13assert_equalsRK6MatrixS1_.constprop.8+0x5b4>
  401732:	48 63 7b 10          	movslq 0x10(%rbx),%rdi
  401736:	4c 8d 24 c5 00 00 00 	lea    0x0(,%rax,8),%r12
  40173d:	00 
  40173e:	4c 01 c8             	add    %r9,%rax
  401741:	48 8d 0c c1          	lea    (%rcx,%rax,8),%rcx
  401745:	48 03 53 18          	add    0x18(%rbx),%rdx
  401749:	31 c0                	xor    %eax,%eax
  40174b:	48 c1 e7 03          	shl    $0x3,%rdi
  40174f:	eb 1a                	jmp    40176b <_Z13assert_equalsRK6MatrixS1_.constprop.8+0xbb>
  401751:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401758:	c5 fb 10 01          	vmovsd (%rcx),%xmm0
  40175c:	48 01 fa             	add    %rdi,%rdx
  40175f:	4c 01 e1             	add    %r12,%rcx
  401762:	44 39 d0             	cmp    %r10d,%eax
  401765:	0f 84 f9 04 00 00    	je     401c64 <_Z13assert_equalsRK6MatrixS1_.constprop.8+0x5b4>
  40176b:	c5 fb 5c 02          	vsubsd (%rdx),%xmm0,%xmm0
  40176f:	c5 f9 54 c2          	vandpd %xmm2,%xmm0,%xmm0
  401773:	c5 f9 2e c1          	vucomisd %xmm1,%xmm0
  401777:	41 0f 47 f3          	cmova  %r11d,%esi
  40177b:	83 c0 01             	add    $0x1,%eax
  40177e:	44 39 c0             	cmp    %r8d,%eax
  401781:	75 d5                	jne    401758 <_Z13assert_equalsRK6MatrixS1_.constprop.8+0xa8>
  401783:	41 8d 41 01          	lea    0x1(%r9),%eax
  401787:	49 83 c1 01          	add    $0x1,%r9
  40178b:	39 45 08             	cmp    %eax,0x8(%rbp)
  40178e:	0f 8f 6c ff ff ff    	jg     401700 <_Z13assert_equalsRK6MatrixS1_.constprop.8+0x50>
  401794:	40 84 f6             	test   %sil,%sil
  401797:	0f 84 43 01 00 00    	je     4018e0 <_Z13assert_equalsRK6MatrixS1_.constprop.8+0x230>
  40179d:	48 83 c4 08          	add    $0x8,%rsp
  4017a1:	5b                   	pop    %rbx
  4017a2:	5d                   	pop    %rbp
  4017a3:	41 5c                	pop    %r12
  4017a5:	41 5d                	pop    %r13
  4017a7:	c3                   	retq   
  4017a8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4017af:	00 
  4017b0:	ba 1a 00 00 00       	mov    $0x1a,%edx
  4017b5:	be 6d 68 40 00       	mov    $0x40686d,%esi
  4017ba:	bf a0 81 60 00       	mov    $0x6081a0,%edi
  4017bf:	e8 4c f9 ff ff       	callq  401110 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  4017c4:	8b 75 0c             	mov    0xc(%rbp),%esi
  4017c7:	bf a0 81 60 00       	mov    $0x6081a0,%edi
  4017cc:	e8 1f fa ff ff       	callq  4011f0 <_ZNSolsEi@plt>
  4017d1:	ba 06 00 00 00       	mov    $0x6,%edx
  4017d6:	be 66 68 40 00       	mov    $0x406866,%esi
  4017db:	48 89 c7             	mov    %rax,%rdi
  4017de:	49 89 c4             	mov    %rax,%r12
  4017e1:	e8 2a f9 ff ff       	callq  401110 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  4017e6:	8b 73 0c             	mov    0xc(%rbx),%esi
  4017e9:	4c 89 e7             	mov    %r12,%rdi
  4017ec:	e8 ff f9 ff ff       	callq  4011f0 <_ZNSolsEi@plt>
  4017f1:	49 89 c5             	mov    %rax,%r13
  4017f4:	48 8b 00             	mov    (%rax),%rax
  4017f7:	48 8b 40 e8          	mov    -0x18(%rax),%rax
  4017fb:	4d 8b a4 05 f0 00 00 	mov    0xf0(%r13,%rax,1),%r12
  401802:	00 
  401803:	4d 85 e4             	test   %r12,%r12
  401806:	0f 84 84 04 00 00    	je     401c90 <_Z13assert_equalsRK6MatrixS1_.constprop.8+0x5e0>
  40180c:	41 80 7c 24 38 00    	cmpb   $0x0,0x38(%r12)
  401812:	0f 84 af 02 00 00    	je     401ac7 <_Z13assert_equalsRK6MatrixS1_.constprop.8+0x417>
  401818:	41 0f be 74 24 43    	movsbl 0x43(%r12),%esi
  40181e:	4c 89 ef             	mov    %r13,%rdi
  401821:	e8 3a f8 ff ff       	callq  401060 <_ZNSo3putEc@plt>
  401826:	48 89 c7             	mov    %rax,%rdi
  401829:	e8 82 f8 ff ff       	callq  4010b0 <_ZNSo5flushEv@plt>
  40182e:	8b 45 08             	mov    0x8(%rbp),%eax
  401831:	85 c0                	test   %eax,%eax
  401833:	0f 8e a7 00 00 00    	jle    4018e0 <_Z13assert_equalsRK6MatrixS1_.constprop.8+0x230>
  401839:	44 8b 45 0c          	mov    0xc(%rbp),%r8d
  40183d:	31 f6                	xor    %esi,%esi
  40183f:	e9 a3 fe ff ff       	jmpq   4016e7 <_Z13assert_equalsRK6MatrixS1_.constprop.8+0x37>
  401844:	0f 1f 40 00          	nopl   0x0(%rax)
  401848:	ba 17 00 00 00       	mov    $0x17,%edx
  40184d:	be 4e 68 40 00       	mov    $0x40684e,%esi
  401852:	bf a0 81 60 00       	mov    $0x6081a0,%edi
  401857:	e8 b4 f8 ff ff       	callq  401110 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  40185c:	8b 75 08             	mov    0x8(%rbp),%esi
  40185f:	bf a0 81 60 00       	mov    $0x6081a0,%edi
  401864:	e8 87 f9 ff ff       	callq  4011f0 <_ZNSolsEi@plt>
  401869:	ba 06 00 00 00       	mov    $0x6,%edx
  40186e:	be 66 68 40 00       	mov    $0x406866,%esi
  401873:	48 89 c7             	mov    %rax,%rdi
  401876:	49 89 c4             	mov    %rax,%r12
  401879:	e8 92 f8 ff ff       	callq  401110 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  40187e:	8b 73 08             	mov    0x8(%rbx),%esi
  401881:	4c 89 e7             	mov    %r12,%rdi
  401884:	e8 67 f9 ff ff       	callq  4011f0 <_ZNSolsEi@plt>
  401889:	49 89 c5             	mov    %rax,%r13
  40188c:	48 8b 00             	mov    (%rax),%rax
  40188f:	48 8b 40 e8          	mov    -0x18(%rax),%rax
  401893:	4d 8b a4 05 f0 00 00 	mov    0xf0(%r13,%rax,1),%r12
  40189a:	00 
  40189b:	4d 85 e4             	test   %r12,%r12
  40189e:	0f 84 ec 03 00 00    	je     401c90 <_Z13assert_equalsRK6MatrixS1_.constprop.8+0x5e0>
  4018a4:	41 80 7c 24 38 00    	cmpb   $0x0,0x38(%r12)
  4018aa:	0f 84 45 02 00 00    	je     401af5 <_Z13assert_equalsRK6MatrixS1_.constprop.8+0x445>
  4018b0:	41 0f be 74 24 43    	movsbl 0x43(%r12),%esi
  4018b6:	4c 89 ef             	mov    %r13,%rdi
  4018b9:	e8 a2 f7 ff ff       	callq  401060 <_ZNSo3putEc@plt>
  4018be:	48 89 c7             	mov    %rax,%rdi
  4018c1:	e8 ea f7 ff ff       	callq  4010b0 <_ZNSo5flushEv@plt>
  4018c6:	44 8b 45 0c          	mov    0xc(%rbp),%r8d
  4018ca:	44 3b 43 0c          	cmp    0xc(%rbx),%r8d
  4018ce:	0f 85 dc fe ff ff    	jne    4017b0 <_Z13assert_equalsRK6MatrixS1_.constprop.8+0x100>
  4018d4:	8b 55 08             	mov    0x8(%rbp),%edx
  4018d7:	85 d2                	test   %edx,%edx
  4018d9:	0f 8f 5e ff ff ff    	jg     40183d <_Z13assert_equalsRK6MatrixS1_.constprop.8+0x18d>
  4018df:	90                   	nop
  4018e0:	48 8b 05 b9 68 20 00 	mov    0x2068b9(%rip),%rax        # 6081a0 <_ZSt4cout@@GLIBCXX_3.4>
  4018e7:	48 8b 40 e8          	mov    -0x18(%rax),%rax
  4018eb:	4c 8b a0 90 82 60 00 	mov    0x608290(%rax),%r12
  4018f2:	4d 85 e4             	test   %r12,%r12
  4018f5:	0f 84 95 03 00 00    	je     401c90 <_Z13assert_equalsRK6MatrixS1_.constprop.8+0x5e0>
  4018fb:	41 80 7c 24 38 00    	cmpb   $0x0,0x38(%r12)
  401901:	0f 84 1c 02 00 00    	je     401b23 <_Z13assert_equalsRK6MatrixS1_.constprop.8+0x473>
  401907:	41 0f be 74 24 43    	movsbl 0x43(%r12),%esi
  40190d:	bf a0 81 60 00       	mov    $0x6081a0,%edi
  401912:	e8 49 f7 ff ff       	callq  401060 <_ZNSo3putEc@plt>
  401917:	48 89 c7             	mov    %rax,%rdi
  40191a:	e8 91 f7 ff ff       	callq  4010b0 <_ZNSo5flushEv@plt>
  40191f:	49 89 c5             	mov    %rax,%r13
  401922:	48 8b 00             	mov    (%rax),%rax
  401925:	48 8b 40 e8          	mov    -0x18(%rax),%rax
  401929:	4d 8b a4 05 f0 00 00 	mov    0xf0(%r13,%rax,1),%r12
  401930:	00 
  401931:	4d 85 e4             	test   %r12,%r12
  401934:	0f 84 56 03 00 00    	je     401c90 <_Z13assert_equalsRK6MatrixS1_.constprop.8+0x5e0>
  40193a:	41 80 7c 24 38 00    	cmpb   $0x0,0x38(%r12)
  401940:	0f 84 39 02 00 00    	je     401b7f <_Z13assert_equalsRK6MatrixS1_.constprop.8+0x4cf>
  401946:	41 0f be 74 24 43    	movsbl 0x43(%r12),%esi
  40194c:	4c 89 ef             	mov    %r13,%rdi
  40194f:	e8 0c f7 ff ff       	callq  401060 <_ZNSo3putEc@plt>
  401954:	48 89 c7             	mov    %rax,%rdi
  401957:	e8 54 f7 ff ff       	callq  4010b0 <_ZNSo5flushEv@plt>
  40195c:	ba 09 00 00 00       	mov    $0x9,%edx
  401961:	49 89 c4             	mov    %rax,%r12
  401964:	be 88 68 40 00       	mov    $0x406888,%esi
  401969:	48 89 c7             	mov    %rax,%rdi
  40196c:	e8 9f f7 ff ff       	callq  401110 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  401971:	49 8b 04 24          	mov    (%r12),%rax
  401975:	48 8b 40 e8          	mov    -0x18(%rax),%rax
  401979:	4d 8b ac 04 f0 00 00 	mov    0xf0(%r12,%rax,1),%r13
  401980:	00 
  401981:	4d 85 ed             	test   %r13,%r13
  401984:	0f 84 06 03 00 00    	je     401c90 <_Z13assert_equalsRK6MatrixS1_.constprop.8+0x5e0>
  40198a:	41 80 7d 38 00       	cmpb   $0x0,0x38(%r13)
  40198f:	0f 84 bc 01 00 00    	je     401b51 <_Z13assert_equalsRK6MatrixS1_.constprop.8+0x4a1>
  401995:	41 0f be 75 43       	movsbl 0x43(%r13),%esi
  40199a:	4c 89 e7             	mov    %r12,%rdi
  40199d:	e8 be f6 ff ff       	callq  401060 <_ZNSo3putEc@plt>
  4019a2:	48 89 c7             	mov    %rax,%rdi
  4019a5:	e8 06 f7 ff ff       	callq  4010b0 <_ZNSo5flushEv@plt>
  4019aa:	48 89 ee             	mov    %rbp,%rsi
  4019ad:	48 89 c7             	mov    %rax,%rdi
  4019b0:	e8 4b fb ff ff       	callq  401500 <_ZlsRSoRK6Matrix.constprop.9>
  4019b5:	48 8b 05 e4 67 20 00 	mov    0x2067e4(%rip),%rax        # 6081a0 <_ZSt4cout@@GLIBCXX_3.4>
  4019bc:	48 8b 40 e8          	mov    -0x18(%rax),%rax
  4019c0:	48 8b a8 90 82 60 00 	mov    0x608290(%rax),%rbp
  4019c7:	48 85 ed             	test   %rbp,%rbp
  4019ca:	0f 84 c0 02 00 00    	je     401c90 <_Z13assert_equalsRK6MatrixS1_.constprop.8+0x5e0>
  4019d0:	80 7d 38 00          	cmpb   $0x0,0x38(%rbp)
  4019d4:	0f 84 5c 02 00 00    	je     401c36 <_Z13assert_equalsRK6MatrixS1_.constprop.8+0x586>
  4019da:	0f be 75 43          	movsbl 0x43(%rbp),%esi
  4019de:	bf a0 81 60 00       	mov    $0x6081a0,%edi
  4019e3:	e8 78 f6 ff ff       	callq  401060 <_ZNSo3putEc@plt>
  4019e8:	48 89 c7             	mov    %rax,%rdi
  4019eb:	e8 c0 f6 ff ff       	callq  4010b0 <_ZNSo5flushEv@plt>
  4019f0:	49 89 c4             	mov    %rax,%r12
  4019f3:	48 8b 00             	mov    (%rax),%rax
  4019f6:	48 8b 40 e8          	mov    -0x18(%rax),%rax
  4019fa:	49 8b ac 04 f0 00 00 	mov    0xf0(%r12,%rax,1),%rbp
  401a01:	00 
  401a02:	48 85 ed             	test   %rbp,%rbp
  401a05:	0f 84 85 02 00 00    	je     401c90 <_Z13assert_equalsRK6MatrixS1_.constprop.8+0x5e0>
  401a0b:	80 7d 38 00          	cmpb   $0x0,0x38(%rbp)
  401a0f:	0f 84 f3 01 00 00    	je     401c08 <_Z13assert_equalsRK6MatrixS1_.constprop.8+0x558>
  401a15:	0f be 75 43          	movsbl 0x43(%rbp),%esi
  401a19:	4c 89 e7             	mov    %r12,%rdi
  401a1c:	e8 3f f6 ff ff       	callq  401060 <_ZNSo3putEc@plt>
  401a21:	48 89 c7             	mov    %rax,%rdi
  401a24:	e8 87 f6 ff ff       	callq  4010b0 <_ZNSo5flushEv@plt>
  401a29:	ba 07 00 00 00       	mov    $0x7,%edx
  401a2e:	48 89 c5             	mov    %rax,%rbp
  401a31:	be 92 68 40 00       	mov    $0x406892,%esi
  401a36:	48 89 c7             	mov    %rax,%rdi
  401a39:	e8 d2 f6 ff ff       	callq  401110 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  401a3e:	48 8b 45 00          	mov    0x0(%rbp),%rax
  401a42:	48 8b 40 e8          	mov    -0x18(%rax),%rax
  401a46:	4c 8b a4 05 f0 00 00 	mov    0xf0(%rbp,%rax,1),%r12
  401a4d:	00 
  401a4e:	4d 85 e4             	test   %r12,%r12
  401a51:	0f 84 39 02 00 00    	je     401c90 <_Z13assert_equalsRK6MatrixS1_.constprop.8+0x5e0>
  401a57:	41 80 7c 24 38 00    	cmpb   $0x0,0x38(%r12)
  401a5d:	0f 84 77 01 00 00    	je     401bda <_Z13assert_equalsRK6MatrixS1_.constprop.8+0x52a>
  401a63:	41 0f be 74 24 43    	movsbl 0x43(%r12),%esi
  401a69:	48 89 ef             	mov    %rbp,%rdi
  401a6c:	e8 ef f5 ff ff       	callq  401060 <_ZNSo3putEc@plt>
  401a71:	48 89 c7             	mov    %rax,%rdi
  401a74:	e8 37 f6 ff ff       	callq  4010b0 <_ZNSo5flushEv@plt>
  401a79:	48 89 de             	mov    %rbx,%rsi
  401a7c:	48 89 c7             	mov    %rax,%rdi
  401a7f:	e8 7c fa ff ff       	callq  401500 <_ZlsRSoRK6Matrix.constprop.9>
  401a84:	48 89 c5             	mov    %rax,%rbp
  401a87:	48 8b 00             	mov    (%rax),%rax
  401a8a:	48 8b 40 e8          	mov    -0x18(%rax),%rax
  401a8e:	48 8b 9c 05 f0 00 00 	mov    0xf0(%rbp,%rax,1),%rbx
  401a95:	00 
  401a96:	48 85 db             	test   %rbx,%rbx
  401a99:	0f 84 f1 01 00 00    	je     401c90 <_Z13assert_equalsRK6MatrixS1_.constprop.8+0x5e0>
  401a9f:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
  401aa3:	0f 84 04 01 00 00    	je     401bad <_Z13assert_equalsRK6MatrixS1_.constprop.8+0x4fd>
  401aa9:	0f be 73 43          	movsbl 0x43(%rbx),%esi
  401aad:	48 89 ef             	mov    %rbp,%rdi
  401ab0:	e8 ab f5 ff ff       	callq  401060 <_ZNSo3putEc@plt>
  401ab5:	48 83 c4 08          	add    $0x8,%rsp
  401ab9:	48 89 c7             	mov    %rax,%rdi
  401abc:	5b                   	pop    %rbx
  401abd:	5d                   	pop    %rbp
  401abe:	41 5c                	pop    %r12
  401ac0:	41 5d                	pop    %r13
  401ac2:	e9 e9 f5 ff ff       	jmpq   4010b0 <_ZNSo5flushEv@plt>
  401ac7:	4c 89 e7             	mov    %r12,%rdi
  401aca:	e8 51 f6 ff ff       	callq  401120 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
  401acf:	49 8b 04 24          	mov    (%r12),%rax
  401ad3:	be 0a 00 00 00       	mov    $0xa,%esi
  401ad8:	48 8b 40 30          	mov    0x30(%rax),%rax
  401adc:	48 3d f0 65 40 00    	cmp    $0x4065f0,%rax
  401ae2:	0f 84 36 fd ff ff    	je     40181e <_Z13assert_equalsRK6MatrixS1_.constprop.8+0x16e>
  401ae8:	4c 89 e7             	mov    %r12,%rdi
  401aeb:	ff d0                	callq  *%rax
  401aed:	0f be f0             	movsbl %al,%esi
  401af0:	e9 29 fd ff ff       	jmpq   40181e <_Z13assert_equalsRK6MatrixS1_.constprop.8+0x16e>
  401af5:	4c 89 e7             	mov    %r12,%rdi
  401af8:	e8 23 f6 ff ff       	callq  401120 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
  401afd:	49 8b 04 24          	mov    (%r12),%rax
  401b01:	be 0a 00 00 00       	mov    $0xa,%esi
  401b06:	48 8b 40 30          	mov    0x30(%rax),%rax
  401b0a:	48 3d f0 65 40 00    	cmp    $0x4065f0,%rax
  401b10:	0f 84 a0 fd ff ff    	je     4018b6 <_Z13assert_equalsRK6MatrixS1_.constprop.8+0x206>
  401b16:	4c 89 e7             	mov    %r12,%rdi
  401b19:	ff d0                	callq  *%rax
  401b1b:	0f be f0             	movsbl %al,%esi
  401b1e:	e9 93 fd ff ff       	jmpq   4018b6 <_Z13assert_equalsRK6MatrixS1_.constprop.8+0x206>
  401b23:	4c 89 e7             	mov    %r12,%rdi
  401b26:	e8 f5 f5 ff ff       	callq  401120 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
  401b2b:	49 8b 04 24          	mov    (%r12),%rax
  401b2f:	be 0a 00 00 00       	mov    $0xa,%esi
  401b34:	48 8b 40 30          	mov    0x30(%rax),%rax
  401b38:	48 3d f0 65 40 00    	cmp    $0x4065f0,%rax
  401b3e:	0f 84 c9 fd ff ff    	je     40190d <_Z13assert_equalsRK6MatrixS1_.constprop.8+0x25d>
  401b44:	4c 89 e7             	mov    %r12,%rdi
  401b47:	ff d0                	callq  *%rax
  401b49:	0f be f0             	movsbl %al,%esi
  401b4c:	e9 bc fd ff ff       	jmpq   40190d <_Z13assert_equalsRK6MatrixS1_.constprop.8+0x25d>
  401b51:	4c 89 ef             	mov    %r13,%rdi
  401b54:	e8 c7 f5 ff ff       	callq  401120 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
  401b59:	49 8b 45 00          	mov    0x0(%r13),%rax
  401b5d:	be 0a 00 00 00       	mov    $0xa,%esi
  401b62:	48 8b 40 30          	mov    0x30(%rax),%rax
  401b66:	48 3d f0 65 40 00    	cmp    $0x4065f0,%rax
  401b6c:	0f 84 28 fe ff ff    	je     40199a <_Z13assert_equalsRK6MatrixS1_.constprop.8+0x2ea>
  401b72:	4c 89 ef             	mov    %r13,%rdi
  401b75:	ff d0                	callq  *%rax
  401b77:	0f be f0             	movsbl %al,%esi
  401b7a:	e9 1b fe ff ff       	jmpq   40199a <_Z13assert_equalsRK6MatrixS1_.constprop.8+0x2ea>
  401b7f:	4c 89 e7             	mov    %r12,%rdi
  401b82:	e8 99 f5 ff ff       	callq  401120 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
  401b87:	49 8b 04 24          	mov    (%r12),%rax
  401b8b:	be 0a 00 00 00       	mov    $0xa,%esi
  401b90:	48 8b 40 30          	mov    0x30(%rax),%rax
  401b94:	48 3d f0 65 40 00    	cmp    $0x4065f0,%rax
  401b9a:	0f 84 ac fd ff ff    	je     40194c <_Z13assert_equalsRK6MatrixS1_.constprop.8+0x29c>
  401ba0:	4c 89 e7             	mov    %r12,%rdi
  401ba3:	ff d0                	callq  *%rax
  401ba5:	0f be f0             	movsbl %al,%esi
  401ba8:	e9 9f fd ff ff       	jmpq   40194c <_Z13assert_equalsRK6MatrixS1_.constprop.8+0x29c>
  401bad:	48 89 df             	mov    %rbx,%rdi
  401bb0:	e8 6b f5 ff ff       	callq  401120 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
  401bb5:	48 8b 03             	mov    (%rbx),%rax
  401bb8:	be 0a 00 00 00       	mov    $0xa,%esi
  401bbd:	48 8b 40 30          	mov    0x30(%rax),%rax
  401bc1:	48 3d f0 65 40 00    	cmp    $0x4065f0,%rax
  401bc7:	0f 84 e0 fe ff ff    	je     401aad <_Z13assert_equalsRK6MatrixS1_.constprop.8+0x3fd>
  401bcd:	48 89 df             	mov    %rbx,%rdi
  401bd0:	ff d0                	callq  *%rax
  401bd2:	0f be f0             	movsbl %al,%esi
  401bd5:	e9 d3 fe ff ff       	jmpq   401aad <_Z13assert_equalsRK6MatrixS1_.constprop.8+0x3fd>
  401bda:	4c 89 e7             	mov    %r12,%rdi
  401bdd:	e8 3e f5 ff ff       	callq  401120 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
  401be2:	49 8b 04 24          	mov    (%r12),%rax
  401be6:	be 0a 00 00 00       	mov    $0xa,%esi
  401beb:	48 8b 40 30          	mov    0x30(%rax),%rax
  401bef:	48 3d f0 65 40 00    	cmp    $0x4065f0,%rax
  401bf5:	0f 84 6e fe ff ff    	je     401a69 <_Z13assert_equalsRK6MatrixS1_.constprop.8+0x3b9>
  401bfb:	4c 89 e7             	mov    %r12,%rdi
  401bfe:	ff d0                	callq  *%rax
  401c00:	0f be f0             	movsbl %al,%esi
  401c03:	e9 61 fe ff ff       	jmpq   401a69 <_Z13assert_equalsRK6MatrixS1_.constprop.8+0x3b9>
  401c08:	48 89 ef             	mov    %rbp,%rdi
  401c0b:	e8 10 f5 ff ff       	callq  401120 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
  401c10:	48 8b 45 00          	mov    0x0(%rbp),%rax
  401c14:	be 0a 00 00 00       	mov    $0xa,%esi
  401c19:	48 8b 40 30          	mov    0x30(%rax),%rax
  401c1d:	48 3d f0 65 40 00    	cmp    $0x4065f0,%rax
  401c23:	0f 84 f0 fd ff ff    	je     401a19 <_Z13assert_equalsRK6MatrixS1_.constprop.8+0x369>
  401c29:	48 89 ef             	mov    %rbp,%rdi
  401c2c:	ff d0                	callq  *%rax
  401c2e:	0f be f0             	movsbl %al,%esi
  401c31:	e9 e3 fd ff ff       	jmpq   401a19 <_Z13assert_equalsRK6MatrixS1_.constprop.8+0x369>
  401c36:	48 89 ef             	mov    %rbp,%rdi
  401c39:	e8 e2 f4 ff ff       	callq  401120 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
  401c3e:	48 8b 45 00          	mov    0x0(%rbp),%rax
  401c42:	be 0a 00 00 00       	mov    $0xa,%esi
  401c47:	48 8b 40 30          	mov    0x30(%rax),%rax
  401c4b:	48 3d f0 65 40 00    	cmp    $0x4065f0,%rax
  401c51:	0f 84 87 fd ff ff    	je     4019de <_Z13assert_equalsRK6MatrixS1_.constprop.8+0x32e>
  401c57:	48 89 ef             	mov    %rbp,%rdi
  401c5a:	ff d0                	callq  *%rax
  401c5c:	0f be f0             	movsbl %al,%esi
  401c5f:	e9 7a fd ff ff       	jmpq   4019de <_Z13assert_equalsRK6MatrixS1_.constprop.8+0x32e>
  401c64:	bf 10 00 00 00       	mov    $0x10,%edi
  401c69:	e8 12 f4 ff ff       	callq  401080 <__cxa_allocate_exception@plt>
  401c6e:	be 34 68 40 00       	mov    $0x406834,%esi
  401c73:	48 89 c7             	mov    %rax,%rdi
  401c76:	48 89 c3             	mov    %rax,%rbx
  401c79:	e8 a2 f5 ff ff       	callq  401220 <_ZNSt16invalid_argumentC1EPKc@plt>
  401c7e:	ba d0 11 40 00       	mov    $0x4011d0,%edx
  401c83:	be 08 83 60 00       	mov    $0x608308,%esi
  401c88:	48 89 df             	mov    %rbx,%rdi
  401c8b:	e8 50 f5 ff ff       	callq  4011e0 <__cxa_throw@plt>
  401c90:	e8 bb f4 ff ff       	callq  401150 <_ZSt16__throw_bad_castv@plt>
  401c95:	48 89 c5             	mov    %rax,%rbp
  401c98:	48 89 df             	mov    %rbx,%rdi
  401c9b:	e8 20 f4 ff ff       	callq  4010c0 <__cxa_free_exception@plt>
  401ca0:	48 89 ef             	mov    %rbp,%rdi
  401ca3:	e8 58 f5 ff ff       	callq  401200 <_Unwind_Resume@plt>
  401ca8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  401caf:	00 

0000000000401cb0 <_ZlsRSoRK6Matrix>:
  401cb0:	41 55                	push   %r13
  401cb2:	41 54                	push   %r12
  401cb4:	55                   	push   %rbp
  401cb5:	53                   	push   %rbx
  401cb6:	48 89 fb             	mov    %rdi,%rbx
  401cb9:	48 83 ec 08          	sub    $0x8,%rsp
  401cbd:	8b 56 08             	mov    0x8(%rsi),%edx
  401cc0:	85 d2                	test   %edx,%edx
  401cc2:	0f 8e b2 00 00 00    	jle    401d7a <_ZlsRSoRK6Matrix+0xca>
  401cc8:	49 89 f5             	mov    %rsi,%r13
  401ccb:	45 31 e4             	xor    %r12d,%r12d
  401cce:	66 90                	xchg   %ax,%ax
  401cd0:	41 8b 45 0c          	mov    0xc(%r13),%eax
  401cd4:	85 c0                	test   %eax,%eax
  401cd6:	7e 66                	jle    401d3e <_ZlsRSoRK6Matrix+0x8e>
  401cd8:	31 ed                	xor    %ebp,%ebp
  401cda:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401ce0:	48 8b 0b             	mov    (%rbx),%rcx
  401ce3:	44 89 e6             	mov    %r12d,%esi
  401ce6:	4c 89 ef             	mov    %r13,%rdi
  401ce9:	48 8b 51 e8          	mov    -0x18(%rcx),%rdx
  401ced:	48 01 da             	add    %rbx,%rdx
  401cf0:	8b 42 18             	mov    0x18(%rdx),%eax
  401cf3:	48 c7 42 10 0a 00 00 	movq   $0xa,0x10(%rdx)
  401cfa:	00 
  401cfb:	25 fb fe ff ff       	and    $0xfffffefb,%eax
  401d00:	83 c8 04             	or     $0x4,%eax
  401d03:	89 42 18             	mov    %eax,0x18(%rdx)
  401d06:	48 8b 41 e8          	mov    -0x18(%rcx),%rax
  401d0a:	89 ea                	mov    %ebp,%edx
  401d0c:	83 c5 01             	add    $0x1,%ebp
  401d0f:	48 c7 44 03 08 02 00 	movq   $0x2,0x8(%rbx,%rax,1)
  401d16:	00 00 
  401d18:	49 8b 45 00          	mov    0x0(%r13),%rax
  401d1c:	ff 10                	callq  *(%rax)
  401d1e:	48 89 df             	mov    %rbx,%rdi
  401d21:	e8 8a f4 ff ff       	callq  4011b0 <_ZNSo9_M_insertIdEERSoT_@plt>
  401d26:	ba 01 00 00 00       	mov    $0x1,%edx
  401d2b:	be e8 68 40 00       	mov    $0x4068e8,%esi
  401d30:	48 89 c7             	mov    %rax,%rdi
  401d33:	e8 d8 f3 ff ff       	callq  401110 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  401d38:	41 39 6d 0c          	cmp    %ebp,0xc(%r13)
  401d3c:	7f a2                	jg     401ce0 <_ZlsRSoRK6Matrix+0x30>
  401d3e:	48 8b 03             	mov    (%rbx),%rax
  401d41:	48 8b 40 e8          	mov    -0x18(%rax),%rax
  401d45:	48 8b ac 03 f0 00 00 	mov    0xf0(%rbx,%rax,1),%rbp
  401d4c:	00 
  401d4d:	48 85 ed             	test   %rbp,%rbp
  401d50:	74 65                	je     401db7 <_ZlsRSoRK6Matrix+0x107>
  401d52:	80 7d 38 00          	cmpb   $0x0,0x38(%rbp)
  401d56:	74 38                	je     401d90 <_ZlsRSoRK6Matrix+0xe0>
  401d58:	0f be 75 43          	movsbl 0x43(%rbp),%esi
  401d5c:	48 89 df             	mov    %rbx,%rdi
  401d5f:	41 83 c4 01          	add    $0x1,%r12d
  401d63:	e8 f8 f2 ff ff       	callq  401060 <_ZNSo3putEc@plt>
  401d68:	48 89 c7             	mov    %rax,%rdi
  401d6b:	e8 40 f3 ff ff       	callq  4010b0 <_ZNSo5flushEv@plt>
  401d70:	45 39 65 08          	cmp    %r12d,0x8(%r13)
  401d74:	0f 8f 56 ff ff ff    	jg     401cd0 <_ZlsRSoRK6Matrix+0x20>
  401d7a:	48 83 c4 08          	add    $0x8,%rsp
  401d7e:	48 89 d8             	mov    %rbx,%rax
  401d81:	5b                   	pop    %rbx
  401d82:	5d                   	pop    %rbp
  401d83:	41 5c                	pop    %r12
  401d85:	41 5d                	pop    %r13
  401d87:	c3                   	retq   
  401d88:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  401d8f:	00 
  401d90:	48 89 ef             	mov    %rbp,%rdi
  401d93:	e8 88 f3 ff ff       	callq  401120 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
  401d98:	48 8b 45 00          	mov    0x0(%rbp),%rax
  401d9c:	be 0a 00 00 00       	mov    $0xa,%esi
  401da1:	48 8b 40 30          	mov    0x30(%rax),%rax
  401da5:	48 3d f0 65 40 00    	cmp    $0x4065f0,%rax
  401dab:	74 af                	je     401d5c <_ZlsRSoRK6Matrix+0xac>
  401dad:	48 89 ef             	mov    %rbp,%rdi
  401db0:	ff d0                	callq  *%rax
  401db2:	0f be f0             	movsbl %al,%esi
  401db5:	eb a5                	jmp    401d5c <_ZlsRSoRK6Matrix+0xac>
  401db7:	e8 94 f3 ff ff       	callq  401150 <_ZSt16__throw_bad_castv@plt>
  401dbc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401dc0 <_Z13assert_equalsRK6MatrixS1_>:
  401dc0:	41 57                	push   %r15
  401dc2:	41 56                	push   %r14
  401dc4:	41 55                	push   %r13
  401dc6:	41 54                	push   %r12
  401dc8:	49 89 f5             	mov    %rsi,%r13
  401dcb:	55                   	push   %rbp
  401dcc:	53                   	push   %rbx
  401dcd:	48 89 fd             	mov    %rdi,%rbp
  401dd0:	48 83 ec 18          	sub    $0x18,%rsp
  401dd4:	8b 57 08             	mov    0x8(%rdi),%edx
  401dd7:	3b 56 08             	cmp    0x8(%rsi),%edx
  401dda:	0f 85 38 01 00 00    	jne    401f18 <_Z13assert_equalsRK6MatrixS1_+0x158>
  401de0:	8b 47 0c             	mov    0xc(%rdi),%eax
  401de3:	39 46 0c             	cmp    %eax,0xc(%rsi)
  401de6:	0f 85 94 00 00 00    	jne    401e80 <_Z13assert_equalsRK6MatrixS1_+0xc0>
  401dec:	85 d2                	test   %edx,%edx
  401dee:	7e 7d                	jle    401e6d <_Z13assert_equalsRK6MatrixS1_+0xad>
  401df0:	41 bf 01 00 00 00    	mov    $0x1,%r15d
  401df6:	45 31 e4             	xor    %r12d,%r12d
  401df9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401e00:	85 c0                	test   %eax,%eax
  401e02:	7e 56                	jle    401e5a <_Z13assert_equalsRK6MatrixS1_+0x9a>
  401e04:	31 db                	xor    %ebx,%ebx
  401e06:	45 31 f6             	xor    %r14d,%r14d
  401e09:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401e10:	48 8b 45 00          	mov    0x0(%rbp),%rax
  401e14:	89 da                	mov    %ebx,%edx
  401e16:	44 89 e6             	mov    %r12d,%esi
  401e19:	48 89 ef             	mov    %rbp,%rdi
  401e1c:	ff 10                	callq  *(%rax)
  401e1e:	49 8b 45 00          	mov    0x0(%r13),%rax
  401e22:	89 da                	mov    %ebx,%edx
  401e24:	c5 fb 11 44 24 08    	vmovsd %xmm0,0x8(%rsp)
  401e2a:	44 89 e6             	mov    %r12d,%esi
  401e2d:	4c 89 ef             	mov    %r13,%rdi
  401e30:	ff 10                	callq  *(%rax)
  401e32:	c5 fb 10 4c 24 08    	vmovsd 0x8(%rsp),%xmm1
  401e38:	8b 45 0c             	mov    0xc(%rbp),%eax
  401e3b:	c5 f3 5c c8          	vsubsd %xmm0,%xmm1,%xmm1
  401e3f:	c5 f1 54 0d a9 4b 00 	vandpd 0x4ba9(%rip),%xmm1,%xmm1        # 4069f0 <_ZTV11DenseMatrix+0x20>
  401e46:	00 
  401e47:	c5 f9 2e 0d b1 4b 00 	vucomisd 0x4bb1(%rip),%xmm1        # 406a00 <_ZTV11DenseMatrix+0x30>
  401e4e:	00 
  401e4f:	45 0f 47 fe          	cmova  %r14d,%r15d
  401e53:	83 c3 01             	add    $0x1,%ebx
  401e56:	39 d8                	cmp    %ebx,%eax
  401e58:	7f b6                	jg     401e10 <_Z13assert_equalsRK6MatrixS1_+0x50>
  401e5a:	41 83 c4 01          	add    $0x1,%r12d
  401e5e:	44 39 65 08          	cmp    %r12d,0x8(%rbp)
  401e62:	7f 9c                	jg     401e00 <_Z13assert_equalsRK6MatrixS1_+0x40>
  401e64:	45 84 ff             	test   %r15b,%r15b
  401e67:	0f 84 43 01 00 00    	je     401fb0 <_Z13assert_equalsRK6MatrixS1_+0x1f0>
  401e6d:	48 83 c4 18          	add    $0x18,%rsp
  401e71:	5b                   	pop    %rbx
  401e72:	5d                   	pop    %rbp
  401e73:	41 5c                	pop    %r12
  401e75:	41 5d                	pop    %r13
  401e77:	41 5e                	pop    %r14
  401e79:	41 5f                	pop    %r15
  401e7b:	c3                   	retq   
  401e7c:	0f 1f 40 00          	nopl   0x0(%rax)
  401e80:	ba 1a 00 00 00       	mov    $0x1a,%edx
  401e85:	be 6d 68 40 00       	mov    $0x40686d,%esi
  401e8a:	bf a0 81 60 00       	mov    $0x6081a0,%edi
  401e8f:	e8 7c f2 ff ff       	callq  401110 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  401e94:	8b 75 0c             	mov    0xc(%rbp),%esi
  401e97:	bf a0 81 60 00       	mov    $0x6081a0,%edi
  401e9c:	e8 4f f3 ff ff       	callq  4011f0 <_ZNSolsEi@plt>
  401ea1:	ba 06 00 00 00       	mov    $0x6,%edx
  401ea6:	be 66 68 40 00       	mov    $0x406866,%esi
  401eab:	48 89 c7             	mov    %rax,%rdi
  401eae:	48 89 c3             	mov    %rax,%rbx
  401eb1:	e8 5a f2 ff ff       	callq  401110 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  401eb6:	41 8b 75 0c          	mov    0xc(%r13),%esi
  401eba:	48 89 df             	mov    %rbx,%rdi
  401ebd:	e8 2e f3 ff ff       	callq  4011f0 <_ZNSolsEi@plt>
  401ec2:	49 89 c4             	mov    %rax,%r12
  401ec5:	48 8b 00             	mov    (%rax),%rax
  401ec8:	48 8b 40 e8          	mov    -0x18(%rax),%rax
  401ecc:	49 8b 9c 04 f0 00 00 	mov    0xf0(%r12,%rax,1),%rbx
  401ed3:	00 
  401ed4:	48 85 db             	test   %rbx,%rbx
  401ed7:	0f 84 49 04 00 00    	je     402326 <_Z13assert_equalsRK6MatrixS1_+0x566>
  401edd:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
  401ee1:	0f 84 a8 02 00 00    	je     40218f <_Z13assert_equalsRK6MatrixS1_+0x3cf>
  401ee7:	0f be 73 43          	movsbl 0x43(%rbx),%esi
  401eeb:	4c 89 e7             	mov    %r12,%rdi
  401eee:	e8 6d f1 ff ff       	callq  401060 <_ZNSo3putEc@plt>
  401ef3:	48 89 c7             	mov    %rax,%rdi
  401ef6:	e8 b5 f1 ff ff       	callq  4010b0 <_ZNSo5flushEv@plt>
  401efb:	8b 45 08             	mov    0x8(%rbp),%eax
  401efe:	85 c0                	test   %eax,%eax
  401f00:	0f 8e aa 00 00 00    	jle    401fb0 <_Z13assert_equalsRK6MatrixS1_+0x1f0>
  401f06:	8b 45 0c             	mov    0xc(%rbp),%eax
  401f09:	45 31 ff             	xor    %r15d,%r15d
  401f0c:	e9 e5 fe ff ff       	jmpq   401df6 <_Z13assert_equalsRK6MatrixS1_+0x36>
  401f11:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401f18:	ba 17 00 00 00       	mov    $0x17,%edx
  401f1d:	be 4e 68 40 00       	mov    $0x40684e,%esi
  401f22:	bf a0 81 60 00       	mov    $0x6081a0,%edi
  401f27:	e8 e4 f1 ff ff       	callq  401110 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  401f2c:	8b 75 08             	mov    0x8(%rbp),%esi
  401f2f:	bf a0 81 60 00       	mov    $0x6081a0,%edi
  401f34:	e8 b7 f2 ff ff       	callq  4011f0 <_ZNSolsEi@plt>
  401f39:	ba 06 00 00 00       	mov    $0x6,%edx
  401f3e:	be 66 68 40 00       	mov    $0x406866,%esi
  401f43:	48 89 c7             	mov    %rax,%rdi
  401f46:	48 89 c3             	mov    %rax,%rbx
  401f49:	e8 c2 f1 ff ff       	callq  401110 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  401f4e:	41 8b 75 08          	mov    0x8(%r13),%esi
  401f52:	48 89 df             	mov    %rbx,%rdi
  401f55:	e8 96 f2 ff ff       	callq  4011f0 <_ZNSolsEi@plt>
  401f5a:	49 89 c4             	mov    %rax,%r12
  401f5d:	48 8b 00             	mov    (%rax),%rax
  401f60:	48 8b 40 e8          	mov    -0x18(%rax),%rax
  401f64:	49 8b 9c 04 f0 00 00 	mov    0xf0(%r12,%rax,1),%rbx
  401f6b:	00 
  401f6c:	48 85 db             	test   %rbx,%rbx
  401f6f:	0f 84 b1 03 00 00    	je     402326 <_Z13assert_equalsRK6MatrixS1_+0x566>
  401f75:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
  401f79:	0f 84 3d 02 00 00    	je     4021bc <_Z13assert_equalsRK6MatrixS1_+0x3fc>
  401f7f:	0f be 73 43          	movsbl 0x43(%rbx),%esi
  401f83:	4c 89 e7             	mov    %r12,%rdi
  401f86:	e8 d5 f0 ff ff       	callq  401060 <_ZNSo3putEc@plt>
  401f8b:	48 89 c7             	mov    %rax,%rdi
  401f8e:	e8 1d f1 ff ff       	callq  4010b0 <_ZNSo5flushEv@plt>
  401f93:	8b 45 0c             	mov    0xc(%rbp),%eax
  401f96:	41 3b 45 0c          	cmp    0xc(%r13),%eax
  401f9a:	0f 85 e0 fe ff ff    	jne    401e80 <_Z13assert_equalsRK6MatrixS1_+0xc0>
  401fa0:	8b 55 08             	mov    0x8(%rbp),%edx
  401fa3:	85 d2                	test   %edx,%edx
  401fa5:	0f 8f 5e ff ff ff    	jg     401f09 <_Z13assert_equalsRK6MatrixS1_+0x149>
  401fab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401fb0:	48 8b 05 e9 61 20 00 	mov    0x2061e9(%rip),%rax        # 6081a0 <_ZSt4cout@@GLIBCXX_3.4>
  401fb7:	48 8b 40 e8          	mov    -0x18(%rax),%rax
  401fbb:	48 8b 98 90 82 60 00 	mov    0x608290(%rax),%rbx
  401fc2:	48 85 db             	test   %rbx,%rbx
  401fc5:	0f 84 5b 03 00 00    	je     402326 <_Z13assert_equalsRK6MatrixS1_+0x566>
  401fcb:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
  401fcf:	0f 84 14 02 00 00    	je     4021e9 <_Z13assert_equalsRK6MatrixS1_+0x429>
  401fd5:	0f be 73 43          	movsbl 0x43(%rbx),%esi
  401fd9:	bf a0 81 60 00       	mov    $0x6081a0,%edi
  401fde:	e8 7d f0 ff ff       	callq  401060 <_ZNSo3putEc@plt>
  401fe3:	48 89 c7             	mov    %rax,%rdi
  401fe6:	e8 c5 f0 ff ff       	callq  4010b0 <_ZNSo5flushEv@plt>
  401feb:	49 89 c4             	mov    %rax,%r12
  401fee:	48 8b 00             	mov    (%rax),%rax
  401ff1:	48 8b 40 e8          	mov    -0x18(%rax),%rax
  401ff5:	49 8b 9c 04 f0 00 00 	mov    0xf0(%r12,%rax,1),%rbx
  401ffc:	00 
  401ffd:	48 85 db             	test   %rbx,%rbx
  402000:	0f 84 20 03 00 00    	je     402326 <_Z13assert_equalsRK6MatrixS1_+0x566>
  402006:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
  40200a:	0f 84 06 02 00 00    	je     402216 <_Z13assert_equalsRK6MatrixS1_+0x456>
  402010:	0f be 73 43          	movsbl 0x43(%rbx),%esi
  402014:	4c 89 e7             	mov    %r12,%rdi
  402017:	e8 44 f0 ff ff       	callq  401060 <_ZNSo3putEc@plt>
  40201c:	48 89 c7             	mov    %rax,%rdi
  40201f:	e8 8c f0 ff ff       	callq  4010b0 <_ZNSo5flushEv@plt>
  402024:	ba 09 00 00 00       	mov    $0x9,%edx
  402029:	48 89 c3             	mov    %rax,%rbx
  40202c:	be 88 68 40 00       	mov    $0x406888,%esi
  402031:	48 89 c7             	mov    %rax,%rdi
  402034:	e8 d7 f0 ff ff       	callq  401110 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  402039:	48 8b 03             	mov    (%rbx),%rax
  40203c:	48 8b 40 e8          	mov    -0x18(%rax),%rax
  402040:	4c 8b a4 03 f0 00 00 	mov    0xf0(%rbx,%rax,1),%r12
  402047:	00 
  402048:	4d 85 e4             	test   %r12,%r12
  40204b:	0f 84 d5 02 00 00    	je     402326 <_Z13assert_equalsRK6MatrixS1_+0x566>
  402051:	41 80 7c 24 38 00    	cmpb   $0x0,0x38(%r12)
  402057:	0f 84 e6 01 00 00    	je     402243 <_Z13assert_equalsRK6MatrixS1_+0x483>
  40205d:	41 0f be 74 24 43    	movsbl 0x43(%r12),%esi
  402063:	48 89 df             	mov    %rbx,%rdi
  402066:	e8 f5 ef ff ff       	callq  401060 <_ZNSo3putEc@plt>
  40206b:	48 89 c7             	mov    %rax,%rdi
  40206e:	e8 3d f0 ff ff       	callq  4010b0 <_ZNSo5flushEv@plt>
  402073:	48 89 ee             	mov    %rbp,%rsi
  402076:	48 89 c7             	mov    %rax,%rdi
  402079:	e8 32 fc ff ff       	callq  401cb0 <_ZlsRSoRK6Matrix>
  40207e:	48 8b 05 1b 61 20 00 	mov    0x20611b(%rip),%rax        # 6081a0 <_ZSt4cout@@GLIBCXX_3.4>
  402085:	48 8b 40 e8          	mov    -0x18(%rax),%rax
  402089:	48 8b 98 90 82 60 00 	mov    0x608290(%rax),%rbx
  402090:	48 85 db             	test   %rbx,%rbx
  402093:	0f 84 8d 02 00 00    	je     402326 <_Z13assert_equalsRK6MatrixS1_+0x566>
  402099:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
  40209d:	0f 84 56 02 00 00    	je     4022f9 <_Z13assert_equalsRK6MatrixS1_+0x539>
  4020a3:	0f be 73 43          	movsbl 0x43(%rbx),%esi
  4020a7:	bf a0 81 60 00       	mov    $0x6081a0,%edi
  4020ac:	e8 af ef ff ff       	callq  401060 <_ZNSo3putEc@plt>
  4020b1:	48 89 c7             	mov    %rax,%rdi
  4020b4:	e8 f7 ef ff ff       	callq  4010b0 <_ZNSo5flushEv@plt>
  4020b9:	48 89 c5             	mov    %rax,%rbp
  4020bc:	48 8b 00             	mov    (%rax),%rax
  4020bf:	48 8b 40 e8          	mov    -0x18(%rax),%rax
  4020c3:	48 8b 9c 05 f0 00 00 	mov    0xf0(%rbp,%rax,1),%rbx
  4020ca:	00 
  4020cb:	48 85 db             	test   %rbx,%rbx
  4020ce:	0f 84 52 02 00 00    	je     402326 <_Z13assert_equalsRK6MatrixS1_+0x566>
  4020d4:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
  4020d8:	0f 84 ee 01 00 00    	je     4022cc <_Z13assert_equalsRK6MatrixS1_+0x50c>
  4020de:	0f be 73 43          	movsbl 0x43(%rbx),%esi
  4020e2:	48 89 ef             	mov    %rbp,%rdi
  4020e5:	e8 76 ef ff ff       	callq  401060 <_ZNSo3putEc@plt>
  4020ea:	48 89 c7             	mov    %rax,%rdi
  4020ed:	e8 be ef ff ff       	callq  4010b0 <_ZNSo5flushEv@plt>
  4020f2:	ba 07 00 00 00       	mov    $0x7,%edx
  4020f7:	48 89 c3             	mov    %rax,%rbx
  4020fa:	be 92 68 40 00       	mov    $0x406892,%esi
  4020ff:	48 89 c7             	mov    %rax,%rdi
  402102:	e8 09 f0 ff ff       	callq  401110 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  402107:	48 8b 03             	mov    (%rbx),%rax
  40210a:	48 8b 40 e8          	mov    -0x18(%rax),%rax
  40210e:	48 8b ac 03 f0 00 00 	mov    0xf0(%rbx,%rax,1),%rbp
  402115:	00 
  402116:	48 85 ed             	test   %rbp,%rbp
  402119:	0f 84 07 02 00 00    	je     402326 <_Z13assert_equalsRK6MatrixS1_+0x566>
  40211f:	80 7d 38 00          	cmpb   $0x0,0x38(%rbp)
  402123:	0f 84 75 01 00 00    	je     40229e <_Z13assert_equalsRK6MatrixS1_+0x4de>
  402129:	0f be 75 43          	movsbl 0x43(%rbp),%esi
  40212d:	48 89 df             	mov    %rbx,%rdi
  402130:	e8 2b ef ff ff       	callq  401060 <_ZNSo3putEc@plt>
  402135:	48 89 c7             	mov    %rax,%rdi
  402138:	e8 73 ef ff ff       	callq  4010b0 <_ZNSo5flushEv@plt>
  40213d:	4c 89 ee             	mov    %r13,%rsi
  402140:	48 89 c7             	mov    %rax,%rdi
  402143:	e8 68 fb ff ff       	callq  401cb0 <_ZlsRSoRK6Matrix>
  402148:	48 89 c5             	mov    %rax,%rbp
  40214b:	48 8b 00             	mov    (%rax),%rax
  40214e:	48 8b 40 e8          	mov    -0x18(%rax),%rax
  402152:	48 8b 9c 05 f0 00 00 	mov    0xf0(%rbp,%rax,1),%rbx
  402159:	00 
  40215a:	48 85 db             	test   %rbx,%rbx
  40215d:	0f 84 c3 01 00 00    	je     402326 <_Z13assert_equalsRK6MatrixS1_+0x566>
  402163:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
  402167:	0f 84 04 01 00 00    	je     402271 <_Z13assert_equalsRK6MatrixS1_+0x4b1>
  40216d:	0f be 73 43          	movsbl 0x43(%rbx),%esi
  402171:	48 89 ef             	mov    %rbp,%rdi
  402174:	e8 e7 ee ff ff       	callq  401060 <_ZNSo3putEc@plt>
  402179:	48 83 c4 18          	add    $0x18,%rsp
  40217d:	48 89 c7             	mov    %rax,%rdi
  402180:	5b                   	pop    %rbx
  402181:	5d                   	pop    %rbp
  402182:	41 5c                	pop    %r12
  402184:	41 5d                	pop    %r13
  402186:	41 5e                	pop    %r14
  402188:	41 5f                	pop    %r15
  40218a:	e9 21 ef ff ff       	jmpq   4010b0 <_ZNSo5flushEv@plt>
  40218f:	48 89 df             	mov    %rbx,%rdi
  402192:	e8 89 ef ff ff       	callq  401120 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
  402197:	48 8b 03             	mov    (%rbx),%rax
  40219a:	be 0a 00 00 00       	mov    $0xa,%esi
  40219f:	48 8b 40 30          	mov    0x30(%rax),%rax
  4021a3:	48 3d f0 65 40 00    	cmp    $0x4065f0,%rax
  4021a9:	0f 84 3c fd ff ff    	je     401eeb <_Z13assert_equalsRK6MatrixS1_+0x12b>
  4021af:	48 89 df             	mov    %rbx,%rdi
  4021b2:	ff d0                	callq  *%rax
  4021b4:	0f be f0             	movsbl %al,%esi
  4021b7:	e9 2f fd ff ff       	jmpq   401eeb <_Z13assert_equalsRK6MatrixS1_+0x12b>
  4021bc:	48 89 df             	mov    %rbx,%rdi
  4021bf:	e8 5c ef ff ff       	callq  401120 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
  4021c4:	48 8b 03             	mov    (%rbx),%rax
  4021c7:	be 0a 00 00 00       	mov    $0xa,%esi
  4021cc:	48 8b 40 30          	mov    0x30(%rax),%rax
  4021d0:	48 3d f0 65 40 00    	cmp    $0x4065f0,%rax
  4021d6:	0f 84 a7 fd ff ff    	je     401f83 <_Z13assert_equalsRK6MatrixS1_+0x1c3>
  4021dc:	48 89 df             	mov    %rbx,%rdi
  4021df:	ff d0                	callq  *%rax
  4021e1:	0f be f0             	movsbl %al,%esi
  4021e4:	e9 9a fd ff ff       	jmpq   401f83 <_Z13assert_equalsRK6MatrixS1_+0x1c3>
  4021e9:	48 89 df             	mov    %rbx,%rdi
  4021ec:	e8 2f ef ff ff       	callq  401120 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
  4021f1:	48 8b 03             	mov    (%rbx),%rax
  4021f4:	be 0a 00 00 00       	mov    $0xa,%esi
  4021f9:	48 8b 40 30          	mov    0x30(%rax),%rax
  4021fd:	48 3d f0 65 40 00    	cmp    $0x4065f0,%rax
  402203:	0f 84 d0 fd ff ff    	je     401fd9 <_Z13assert_equalsRK6MatrixS1_+0x219>
  402209:	48 89 df             	mov    %rbx,%rdi
  40220c:	ff d0                	callq  *%rax
  40220e:	0f be f0             	movsbl %al,%esi
  402211:	e9 c3 fd ff ff       	jmpq   401fd9 <_Z13assert_equalsRK6MatrixS1_+0x219>
  402216:	48 89 df             	mov    %rbx,%rdi
  402219:	e8 02 ef ff ff       	callq  401120 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
  40221e:	48 8b 03             	mov    (%rbx),%rax
  402221:	be 0a 00 00 00       	mov    $0xa,%esi
  402226:	48 8b 40 30          	mov    0x30(%rax),%rax
  40222a:	48 3d f0 65 40 00    	cmp    $0x4065f0,%rax
  402230:	0f 84 de fd ff ff    	je     402014 <_Z13assert_equalsRK6MatrixS1_+0x254>
  402236:	48 89 df             	mov    %rbx,%rdi
  402239:	ff d0                	callq  *%rax
  40223b:	0f be f0             	movsbl %al,%esi
  40223e:	e9 d1 fd ff ff       	jmpq   402014 <_Z13assert_equalsRK6MatrixS1_+0x254>
  402243:	4c 89 e7             	mov    %r12,%rdi
  402246:	e8 d5 ee ff ff       	callq  401120 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
  40224b:	49 8b 04 24          	mov    (%r12),%rax
  40224f:	be 0a 00 00 00       	mov    $0xa,%esi
  402254:	48 8b 40 30          	mov    0x30(%rax),%rax
  402258:	48 3d f0 65 40 00    	cmp    $0x4065f0,%rax
  40225e:	0f 84 ff fd ff ff    	je     402063 <_Z13assert_equalsRK6MatrixS1_+0x2a3>
  402264:	4c 89 e7             	mov    %r12,%rdi
  402267:	ff d0                	callq  *%rax
  402269:	0f be f0             	movsbl %al,%esi
  40226c:	e9 f2 fd ff ff       	jmpq   402063 <_Z13assert_equalsRK6MatrixS1_+0x2a3>
  402271:	48 89 df             	mov    %rbx,%rdi
  402274:	e8 a7 ee ff ff       	callq  401120 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
  402279:	48 8b 03             	mov    (%rbx),%rax
  40227c:	be 0a 00 00 00       	mov    $0xa,%esi
  402281:	48 8b 40 30          	mov    0x30(%rax),%rax
  402285:	48 3d f0 65 40 00    	cmp    $0x4065f0,%rax
  40228b:	0f 84 e0 fe ff ff    	je     402171 <_Z13assert_equalsRK6MatrixS1_+0x3b1>
  402291:	48 89 df             	mov    %rbx,%rdi
  402294:	ff d0                	callq  *%rax
  402296:	0f be f0             	movsbl %al,%esi
  402299:	e9 d3 fe ff ff       	jmpq   402171 <_Z13assert_equalsRK6MatrixS1_+0x3b1>
  40229e:	48 89 ef             	mov    %rbp,%rdi
  4022a1:	e8 7a ee ff ff       	callq  401120 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
  4022a6:	48 8b 45 00          	mov    0x0(%rbp),%rax
  4022aa:	be 0a 00 00 00       	mov    $0xa,%esi
  4022af:	48 8b 40 30          	mov    0x30(%rax),%rax
  4022b3:	48 3d f0 65 40 00    	cmp    $0x4065f0,%rax
  4022b9:	0f 84 6e fe ff ff    	je     40212d <_Z13assert_equalsRK6MatrixS1_+0x36d>
  4022bf:	48 89 ef             	mov    %rbp,%rdi
  4022c2:	ff d0                	callq  *%rax
  4022c4:	0f be f0             	movsbl %al,%esi
  4022c7:	e9 61 fe ff ff       	jmpq   40212d <_Z13assert_equalsRK6MatrixS1_+0x36d>
  4022cc:	48 89 df             	mov    %rbx,%rdi
  4022cf:	e8 4c ee ff ff       	callq  401120 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
  4022d4:	48 8b 03             	mov    (%rbx),%rax
  4022d7:	be 0a 00 00 00       	mov    $0xa,%esi
  4022dc:	48 8b 40 30          	mov    0x30(%rax),%rax
  4022e0:	48 3d f0 65 40 00    	cmp    $0x4065f0,%rax
  4022e6:	0f 84 f6 fd ff ff    	je     4020e2 <_Z13assert_equalsRK6MatrixS1_+0x322>
  4022ec:	48 89 df             	mov    %rbx,%rdi
  4022ef:	ff d0                	callq  *%rax
  4022f1:	0f be f0             	movsbl %al,%esi
  4022f4:	e9 e9 fd ff ff       	jmpq   4020e2 <_Z13assert_equalsRK6MatrixS1_+0x322>
  4022f9:	48 89 df             	mov    %rbx,%rdi
  4022fc:	e8 1f ee ff ff       	callq  401120 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
  402301:	48 8b 03             	mov    (%rbx),%rax
  402304:	be 0a 00 00 00       	mov    $0xa,%esi
  402309:	48 8b 40 30          	mov    0x30(%rax),%rax
  40230d:	48 3d f0 65 40 00    	cmp    $0x4065f0,%rax
  402313:	0f 84 8e fd ff ff    	je     4020a7 <_Z13assert_equalsRK6MatrixS1_+0x2e7>
  402319:	48 89 df             	mov    %rbx,%rdi
  40231c:	ff d0                	callq  *%rax
  40231e:	0f be f0             	movsbl %al,%esi
  402321:	e9 81 fd ff ff       	jmpq   4020a7 <_Z13assert_equalsRK6MatrixS1_+0x2e7>
  402326:	e8 25 ee ff ff       	callq  401150 <_ZSt16__throw_bad_castv@plt>
  40232b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000402330 <_Z4gemmRK6MatrixS1_RS_>:
  402330:	41 57                	push   %r15
  402332:	41 56                	push   %r14
  402334:	41 55                	push   %r13
  402336:	41 54                	push   %r12
  402338:	55                   	push   %rbp
  402339:	53                   	push   %rbx
  40233a:	48 83 ec 28          	sub    $0x28,%rsp
  40233e:	8b 42 0c             	mov    0xc(%rdx),%eax
  402341:	8b 4a 08             	mov    0x8(%rdx),%ecx
  402344:	8b 5f 0c             	mov    0xc(%rdi),%ebx
  402347:	85 c0                	test   %eax,%eax
  402349:	89 4c 24 14          	mov    %ecx,0x14(%rsp)
  40234d:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  402351:	89 5c 24 18          	mov    %ebx,0x18(%rsp)
  402355:	0f 8e 9d 00 00 00    	jle    4023f8 <_Z4gemmRK6MatrixS1_RS_+0xc8>
  40235b:	85 db                	test   %ebx,%ebx
  40235d:	0f 8e 95 00 00 00    	jle    4023f8 <_Z4gemmRK6MatrixS1_RS_+0xc8>
  402363:	85 c9                	test   %ecx,%ecx
  402365:	0f 8e 8d 00 00 00    	jle    4023f8 <_Z4gemmRK6MatrixS1_RS_+0xc8>
  40236b:	49 89 d7             	mov    %rdx,%r15
  40236e:	49 89 f6             	mov    %rsi,%r14
  402371:	49 89 fd             	mov    %rdi,%r13
  402374:	31 ed                	xor    %ebp,%ebp
  402376:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40237d:	00 00 00 
  402380:	45 31 e4             	xor    %r12d,%r12d
  402383:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402388:	31 db                	xor    %ebx,%ebx
  40238a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  402390:	49 8b 0f             	mov    (%r15),%rcx
  402393:	89 de                	mov    %ebx,%esi
  402395:	89 ea                	mov    %ebp,%edx
  402397:	4c 89 ff             	mov    %r15,%rdi
  40239a:	ff 11                	callq  *(%rcx)
  40239c:	49 8b 4d 00          	mov    0x0(%r13),%rcx
  4023a0:	89 de                	mov    %ebx,%esi
  4023a2:	44 89 e2             	mov    %r12d,%edx
  4023a5:	4c 89 ef             	mov    %r13,%rdi
  4023a8:	c5 fb 11 04 24       	vmovsd %xmm0,(%rsp)
  4023ad:	ff 11                	callq  *(%rcx)
  4023af:	49 8b 0e             	mov    (%r14),%rcx
  4023b2:	89 ea                	mov    %ebp,%edx
  4023b4:	44 89 e6             	mov    %r12d,%esi
  4023b7:	4c 89 f7             	mov    %r14,%rdi
  4023ba:	c5 fb 11 44 24 08    	vmovsd %xmm0,0x8(%rsp)
  4023c0:	ff 11                	callq  *(%rcx)
  4023c2:	49 8b 0f             	mov    (%r15),%rcx
  4023c5:	c5 fb 10 14 24       	vmovsd (%rsp),%xmm2
  4023ca:	89 de                	mov    %ebx,%esi
  4023cc:	89 ea                	mov    %ebp,%edx
  4023ce:	4c 89 ff             	mov    %r15,%rdi
  4023d1:	c4 e2 e9 99 44 24 08 	vfmadd132sd 0x8(%rsp),%xmm2,%xmm0
  4023d8:	83 c3 01             	add    $0x1,%ebx
  4023db:	ff 51 08             	callq  *0x8(%rcx)
  4023de:	39 5c 24 14          	cmp    %ebx,0x14(%rsp)
  4023e2:	75 ac                	jne    402390 <_Z4gemmRK6MatrixS1_RS_+0x60>
  4023e4:	41 83 c4 01          	add    $0x1,%r12d
  4023e8:	44 39 64 24 18       	cmp    %r12d,0x18(%rsp)
  4023ed:	75 99                	jne    402388 <_Z4gemmRK6MatrixS1_RS_+0x58>
  4023ef:	83 c5 01             	add    $0x1,%ebp
  4023f2:	39 6c 24 1c          	cmp    %ebp,0x1c(%rsp)
  4023f6:	75 88                	jne    402380 <_Z4gemmRK6MatrixS1_RS_+0x50>
  4023f8:	48 83 c4 28          	add    $0x28,%rsp
  4023fc:	5b                   	pop    %rbx
  4023fd:	5d                   	pop    %rbp
  4023fe:	41 5c                	pop    %r12
  402400:	41 5d                	pop    %r13
  402402:	41 5e                	pop    %r14
  402404:	41 5f                	pop    %r15
  402406:	c3                   	retq   
  402407:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40240e:	00 00 

0000000000402410 <_ZlsRSoRK12SparseMatrix>:
  402410:	41 54                	push   %r12
  402412:	55                   	push   %rbp
  402413:	49 89 fc             	mov    %rdi,%r12
  402416:	53                   	push   %rbx
  402417:	8b 46 10             	mov    0x10(%rsi),%eax
  40241a:	85 c0                	test   %eax,%eax
  40241c:	7e 39                	jle    402457 <_ZlsRSoRK12SparseMatrix+0x47>
  40241e:	48 89 f5             	mov    %rsi,%rbp
  402421:	31 db                	xor    %ebx,%ebx
  402423:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402428:	48 8b 45 18          	mov    0x18(%rbp),%rax
  40242c:	4c 89 e7             	mov    %r12,%rdi
  40242f:	c5 fb 10 04 d8       	vmovsd (%rax,%rbx,8),%xmm0
  402434:	e8 77 ed ff ff       	callq  4011b0 <_ZNSo9_M_insertIdEERSoT_@plt>
  402439:	ba 01 00 00 00       	mov    $0x1,%edx
  40243e:	be e8 68 40 00       	mov    $0x4068e8,%esi
  402443:	48 89 c7             	mov    %rax,%rdi
  402446:	e8 c5 ec ff ff       	callq  401110 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  40244b:	8d 43 01             	lea    0x1(%rbx),%eax
  40244e:	48 83 c3 01          	add    $0x1,%rbx
  402452:	39 45 10             	cmp    %eax,0x10(%rbp)
  402455:	7f d1                	jg     402428 <_ZlsRSoRK12SparseMatrix+0x18>
  402457:	4c 89 e0             	mov    %r12,%rax
  40245a:	5b                   	pop    %rbx
  40245b:	5d                   	pop    %rbp
  40245c:	41 5c                	pop    %r12
  40245e:	c3                   	retq   
  40245f:	90                   	nop

0000000000402460 <_Z9microsecs8timespecS_>:
  402460:	48 29 fa             	sub    %rdi,%rdx
  402463:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
  402467:	48 69 d2 00 ca 9a 3b 	imul   $0x3b9aca00,%rdx,%rdx
  40246e:	48 01 d1             	add    %rdx,%rcx
  402471:	48 29 f1             	sub    %rsi,%rcx
  402474:	c4 e1 fb 2a c1       	vcvtsi2sd %rcx,%xmm0,%xmm0
  402479:	c5 fb 59 05 87 45 00 	vmulsd 0x4587(%rip),%xmm0,%xmm0        # 406a08 <_ZTV11DenseMatrix+0x38>
  402480:	00 
  402481:	c3                   	retq   
  402482:	0f 1f 40 00          	nopl   0x0(%rax)
  402486:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40248d:	00 00 00 

0000000000402490 <_Z6cyclesl>:
  402490:	b8 16 00 00 00       	mov    $0x16,%eax
  402495:	c3                   	retq   
  402496:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40249d:	00 00 00 

00000000004024a0 <_Z6gflopslli>:
  4024a0:	b8 16 00 00 00       	mov    $0x16,%eax
  4024a5:	c3                   	retq   
  4024a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4024ad:	00 00 00 

00000000004024b0 <_Z25jump_penalty_2_20_libxsmmPKdS0_Pd>:
  4024b0:	41 57                	push   %r15
  4024b2:	41 56                	push   %r14
  4024b4:	41 55                	push   %r13
  4024b6:	41 54                	push   %r12
  4024b8:	53                   	push   %rbx
  4024b9:	48 89 7c 24 f8       	mov    %rdi,-0x8(%rsp)
  4024be:	48 89 74 24 f0       	mov    %rsi,-0x10(%rsp)
  4024c3:	48 89 54 24 e8       	mov    %rdx,-0x18(%rsp)
  4024c8:	48 8b 7c 24 f8       	mov    -0x8(%rsp),%rdi
  4024cd:	48 8b 74 24 f0       	mov    -0x10(%rsp),%rsi
  4024d2:	48 8b 54 24 e8       	mov    -0x18(%rsp),%rdx
  4024d7:	49 c7 c4 00 00 00 00 	mov    $0x0,%r12
  4024de:	49 c7 c5 00 00 00 00 	mov    $0x0,%r13
  4024e5:	49 c7 c6 00 00 00 00 	mov    $0x0,%r14
  4024ec:	49 83 c5 10          	add    $0x10,%r13
  4024f0:	49 c7 c4 00 00 00 00 	mov    $0x0,%r12
  4024f7:	49 83 c4 08          	add    $0x8,%r12
  4024fb:	62 e1 fd 48 28 02    	vmovapd (%rdx),%zmm16
  402501:	62 e1 fd 48 28 4a 04 	vmovapd 0x100(%rdx),%zmm17
  402508:	62 e1 fd 48 28 52 08 	vmovapd 0x200(%rdx),%zmm18
  40250f:	62 e1 fd 48 28 5a 0c 	vmovapd 0x300(%rdx),%zmm19
  402516:	62 e1 fd 48 28 62 10 	vmovapd 0x400(%rdx),%zmm20
  40251d:	62 e1 fd 48 28 6a 14 	vmovapd 0x500(%rdx),%zmm21
  402524:	62 e1 fd 48 28 72 18 	vmovapd 0x600(%rdx),%zmm22
  40252b:	62 e1 fd 48 28 7a 1c 	vmovapd 0x700(%rdx),%zmm23
  402532:	62 61 fd 48 28 42 20 	vmovapd 0x800(%rdx),%zmm24
  402539:	62 61 fd 48 28 4a 24 	vmovapd 0x900(%rdx),%zmm25
  402540:	62 61 fd 48 28 52 28 	vmovapd 0xa00(%rdx),%zmm26
  402547:	62 61 fd 48 28 5a 2c 	vmovapd 0xb00(%rdx),%zmm27
  40254e:	62 61 fd 48 28 62 30 	vmovapd 0xc00(%rdx),%zmm28
  402555:	62 61 fd 48 28 6a 34 	vmovapd 0xd00(%rdx),%zmm29
  40255c:	62 61 fd 48 28 72 38 	vmovapd 0xe00(%rdx),%zmm30
  402563:	62 61 fd 48 28 7a 3c 	vmovapd 0xf00(%rdx),%zmm31
  40256a:	49 c7 c7 80 01 00 00 	mov    $0x180,%r15
  402571:	48 c7 c0 80 04 00 00 	mov    $0x480,%rax
  402578:	48 c7 c3 80 07 00 00 	mov    $0x780,%rbx
  40257f:	49 c7 c3 80 0a 00 00 	mov    $0xa80,%r11
  402586:	49 89 f2             	mov    %rsi,%r10
  402589:	49 81 c2 80 0d 00 00 	add    $0xd80,%r10
  402590:	62 f1 fd 48 28 07    	vmovapd (%rdi),%zmm0
  402596:	62 f1 fd 48 28 4f 04 	vmovapd 0x100(%rdi),%zmm1
  40259d:	62 e2 fd 58 b8 06    	vfmadd231pd (%rsi){1to8},%zmm0,%zmm16
  4025a3:	62 a2 fd 58 b8 0c 3e 	vfmadd231pd (%rsi,%r15,1){1to8},%zmm0,%zmm17
  4025aa:	62 a2 fd 58 b8 14 7e 	vfmadd231pd (%rsi,%r15,2){1to8},%zmm0,%zmm18
  4025b1:	62 e2 fd 58 b8 1c 06 	vfmadd231pd (%rsi,%rax,1){1to8},%zmm0,%zmm19
  4025b8:	62 a2 fd 58 b8 24 be 	vfmadd231pd (%rsi,%r15,4){1to8},%zmm0,%zmm20
  4025bf:	62 e2 fd 58 b8 2c 1e 	vfmadd231pd (%rsi,%rbx,1){1to8},%zmm0,%zmm21
  4025c6:	62 e2 fd 58 b8 34 46 	vfmadd231pd (%rsi,%rax,2){1to8},%zmm0,%zmm22
  4025cd:	62 a2 fd 58 b8 3c 1e 	vfmadd231pd (%rsi,%r11,1){1to8},%zmm0,%zmm23
  4025d4:	62 22 fd 58 b8 04 fe 	vfmadd231pd (%rsi,%r15,8){1to8},%zmm0,%zmm24
  4025db:	62 42 fd 58 b8 0a    	vfmadd231pd (%r10){1to8},%zmm0,%zmm25
  4025e1:	62 02 fd 58 b8 14 3a 	vfmadd231pd (%r10,%r15,1){1to8},%zmm0,%zmm26
  4025e8:	62 02 fd 58 b8 1c 7a 	vfmadd231pd (%r10,%r15,2){1to8},%zmm0,%zmm27
  4025ef:	62 42 fd 58 b8 24 02 	vfmadd231pd (%r10,%rax,1){1to8},%zmm0,%zmm28
  4025f6:	62 02 fd 58 b8 2c ba 	vfmadd231pd (%r10,%r15,4){1to8},%zmm0,%zmm29
  4025fd:	62 42 fd 58 b8 34 1a 	vfmadd231pd (%r10,%rbx,1){1to8},%zmm0,%zmm30
  402604:	62 42 fd 58 b8 3c 42 	vfmadd231pd (%r10,%rax,2){1to8},%zmm0,%zmm31
  40260b:	62 f1 fd 48 28 47 08 	vmovapd 0x200(%rdi),%zmm0
  402612:	62 e2 f5 58 b8 46 01 	vfmadd231pd 0x8(%rsi){1to8},%zmm1,%zmm16
  402619:	62 a2 f5 58 b8 4c 3e 	vfmadd231pd 0x8(%rsi,%r15,1){1to8},%zmm1,%zmm17
  402620:	01 
  402621:	62 a2 f5 58 b8 54 7e 	vfmadd231pd 0x8(%rsi,%r15,2){1to8},%zmm1,%zmm18
  402628:	01 
  402629:	62 e2 f5 58 b8 5c 06 	vfmadd231pd 0x8(%rsi,%rax,1){1to8},%zmm1,%zmm19
  402630:	01 
  402631:	62 a2 f5 58 b8 64 be 	vfmadd231pd 0x8(%rsi,%r15,4){1to8},%zmm1,%zmm20
  402638:	01 
  402639:	62 e2 f5 58 b8 6c 1e 	vfmadd231pd 0x8(%rsi,%rbx,1){1to8},%zmm1,%zmm21
  402640:	01 
  402641:	62 e2 f5 58 b8 74 46 	vfmadd231pd 0x8(%rsi,%rax,2){1to8},%zmm1,%zmm22
  402648:	01 
  402649:	62 a2 f5 58 b8 7c 1e 	vfmadd231pd 0x8(%rsi,%r11,1){1to8},%zmm1,%zmm23
  402650:	01 
  402651:	62 22 f5 58 b8 44 fe 	vfmadd231pd 0x8(%rsi,%r15,8){1to8},%zmm1,%zmm24
  402658:	01 
  402659:	62 42 f5 58 b8 4a 01 	vfmadd231pd 0x8(%r10){1to8},%zmm1,%zmm25
  402660:	62 02 f5 58 b8 54 3a 	vfmadd231pd 0x8(%r10,%r15,1){1to8},%zmm1,%zmm26
  402667:	01 
  402668:	62 02 f5 58 b8 5c 7a 	vfmadd231pd 0x8(%r10,%r15,2){1to8},%zmm1,%zmm27
  40266f:	01 
  402670:	62 42 f5 58 b8 64 02 	vfmadd231pd 0x8(%r10,%rax,1){1to8},%zmm1,%zmm28
  402677:	01 
  402678:	62 02 f5 58 b8 6c ba 	vfmadd231pd 0x8(%r10,%r15,4){1to8},%zmm1,%zmm29
  40267f:	01 
  402680:	62 42 f5 58 b8 74 1a 	vfmadd231pd 0x8(%r10,%rbx,1){1to8},%zmm1,%zmm30
  402687:	01 
  402688:	62 42 f5 58 b8 7c 42 	vfmadd231pd 0x8(%r10,%rax,2){1to8},%zmm1,%zmm31
  40268f:	01 
  402690:	62 f1 fd 48 28 4f 0c 	vmovapd 0x300(%rdi),%zmm1
  402697:	62 e2 fd 58 b8 46 02 	vfmadd231pd 0x10(%rsi){1to8},%zmm0,%zmm16
  40269e:	62 a2 fd 58 b8 4c 3e 	vfmadd231pd 0x10(%rsi,%r15,1){1to8},%zmm0,%zmm17
  4026a5:	02 
  4026a6:	62 a2 fd 58 b8 54 7e 	vfmadd231pd 0x10(%rsi,%r15,2){1to8},%zmm0,%zmm18
  4026ad:	02 
  4026ae:	62 e2 fd 58 b8 5c 06 	vfmadd231pd 0x10(%rsi,%rax,1){1to8},%zmm0,%zmm19
  4026b5:	02 
  4026b6:	62 a2 fd 58 b8 64 be 	vfmadd231pd 0x10(%rsi,%r15,4){1to8},%zmm0,%zmm20
  4026bd:	02 
  4026be:	62 e2 fd 58 b8 6c 1e 	vfmadd231pd 0x10(%rsi,%rbx,1){1to8},%zmm0,%zmm21
  4026c5:	02 
  4026c6:	62 e2 fd 58 b8 74 46 	vfmadd231pd 0x10(%rsi,%rax,2){1to8},%zmm0,%zmm22
  4026cd:	02 
  4026ce:	62 a2 fd 58 b8 7c 1e 	vfmadd231pd 0x10(%rsi,%r11,1){1to8},%zmm0,%zmm23
  4026d5:	02 
  4026d6:	62 22 fd 58 b8 44 fe 	vfmadd231pd 0x10(%rsi,%r15,8){1to8},%zmm0,%zmm24
  4026dd:	02 
  4026de:	62 42 fd 58 b8 4a 02 	vfmadd231pd 0x10(%r10){1to8},%zmm0,%zmm25
  4026e5:	62 02 fd 58 b8 54 3a 	vfmadd231pd 0x10(%r10,%r15,1){1to8},%zmm0,%zmm26
  4026ec:	02 
  4026ed:	62 02 fd 58 b8 5c 7a 	vfmadd231pd 0x10(%r10,%r15,2){1to8},%zmm0,%zmm27
  4026f4:	02 
  4026f5:	62 42 fd 58 b8 64 02 	vfmadd231pd 0x10(%r10,%rax,1){1to8},%zmm0,%zmm28
  4026fc:	02 
  4026fd:	62 02 fd 58 b8 6c ba 	vfmadd231pd 0x10(%r10,%r15,4){1to8},%zmm0,%zmm29
  402704:	02 
  402705:	62 42 fd 58 b8 74 1a 	vfmadd231pd 0x10(%r10,%rbx,1){1to8},%zmm0,%zmm30
  40270c:	02 
  40270d:	62 42 fd 58 b8 7c 42 	vfmadd231pd 0x10(%r10,%rax,2){1to8},%zmm0,%zmm31
  402714:	02 
  402715:	62 f1 fd 48 28 47 10 	vmovapd 0x400(%rdi),%zmm0
  40271c:	62 e2 f5 58 b8 46 03 	vfmadd231pd 0x18(%rsi){1to8},%zmm1,%zmm16
  402723:	62 a2 f5 58 b8 4c 3e 	vfmadd231pd 0x18(%rsi,%r15,1){1to8},%zmm1,%zmm17
  40272a:	03 
  40272b:	62 a2 f5 58 b8 54 7e 	vfmadd231pd 0x18(%rsi,%r15,2){1to8},%zmm1,%zmm18
  402732:	03 
  402733:	62 e2 f5 58 b8 5c 06 	vfmadd231pd 0x18(%rsi,%rax,1){1to8},%zmm1,%zmm19
  40273a:	03 
  40273b:	62 a2 f5 58 b8 64 be 	vfmadd231pd 0x18(%rsi,%r15,4){1to8},%zmm1,%zmm20
  402742:	03 
  402743:	62 e2 f5 58 b8 6c 1e 	vfmadd231pd 0x18(%rsi,%rbx,1){1to8},%zmm1,%zmm21
  40274a:	03 
  40274b:	62 e2 f5 58 b8 74 46 	vfmadd231pd 0x18(%rsi,%rax,2){1to8},%zmm1,%zmm22
  402752:	03 
  402753:	62 a2 f5 58 b8 7c 1e 	vfmadd231pd 0x18(%rsi,%r11,1){1to8},%zmm1,%zmm23
  40275a:	03 
  40275b:	62 22 f5 58 b8 44 fe 	vfmadd231pd 0x18(%rsi,%r15,8){1to8},%zmm1,%zmm24
  402762:	03 
  402763:	62 42 f5 58 b8 4a 03 	vfmadd231pd 0x18(%r10){1to8},%zmm1,%zmm25
  40276a:	62 02 f5 58 b8 54 3a 	vfmadd231pd 0x18(%r10,%r15,1){1to8},%zmm1,%zmm26
  402771:	03 
  402772:	62 02 f5 58 b8 5c 7a 	vfmadd231pd 0x18(%r10,%r15,2){1to8},%zmm1,%zmm27
  402779:	03 
  40277a:	62 42 f5 58 b8 64 02 	vfmadd231pd 0x18(%r10,%rax,1){1to8},%zmm1,%zmm28
  402781:	03 
  402782:	62 02 f5 58 b8 6c ba 	vfmadd231pd 0x18(%r10,%r15,4){1to8},%zmm1,%zmm29
  402789:	03 
  40278a:	62 42 f5 58 b8 74 1a 	vfmadd231pd 0x18(%r10,%rbx,1){1to8},%zmm1,%zmm30
  402791:	03 
  402792:	62 42 f5 58 b8 7c 42 	vfmadd231pd 0x18(%r10,%rax,2){1to8},%zmm1,%zmm31
  402799:	03 
  40279a:	62 f1 fd 48 28 4f 14 	vmovapd 0x500(%rdi),%zmm1
  4027a1:	62 e2 fd 58 b8 46 04 	vfmadd231pd 0x20(%rsi){1to8},%zmm0,%zmm16
  4027a8:	62 a2 fd 58 b8 4c 3e 	vfmadd231pd 0x20(%rsi,%r15,1){1to8},%zmm0,%zmm17
  4027af:	04 
  4027b0:	62 a2 fd 58 b8 54 7e 	vfmadd231pd 0x20(%rsi,%r15,2){1to8},%zmm0,%zmm18
  4027b7:	04 
  4027b8:	62 e2 fd 58 b8 5c 06 	vfmadd231pd 0x20(%rsi,%rax,1){1to8},%zmm0,%zmm19
  4027bf:	04 
  4027c0:	62 a2 fd 58 b8 64 be 	vfmadd231pd 0x20(%rsi,%r15,4){1to8},%zmm0,%zmm20
  4027c7:	04 
  4027c8:	62 e2 fd 58 b8 6c 1e 	vfmadd231pd 0x20(%rsi,%rbx,1){1to8},%zmm0,%zmm21
  4027cf:	04 
  4027d0:	62 e2 fd 58 b8 74 46 	vfmadd231pd 0x20(%rsi,%rax,2){1to8},%zmm0,%zmm22
  4027d7:	04 
  4027d8:	62 a2 fd 58 b8 7c 1e 	vfmadd231pd 0x20(%rsi,%r11,1){1to8},%zmm0,%zmm23
  4027df:	04 
  4027e0:	62 22 fd 58 b8 44 fe 	vfmadd231pd 0x20(%rsi,%r15,8){1to8},%zmm0,%zmm24
  4027e7:	04 
  4027e8:	62 42 fd 58 b8 4a 04 	vfmadd231pd 0x20(%r10){1to8},%zmm0,%zmm25
  4027ef:	62 02 fd 58 b8 54 3a 	vfmadd231pd 0x20(%r10,%r15,1){1to8},%zmm0,%zmm26
  4027f6:	04 
  4027f7:	62 02 fd 58 b8 5c 7a 	vfmadd231pd 0x20(%r10,%r15,2){1to8},%zmm0,%zmm27
  4027fe:	04 
  4027ff:	62 42 fd 58 b8 64 02 	vfmadd231pd 0x20(%r10,%rax,1){1to8},%zmm0,%zmm28
  402806:	04 
  402807:	62 02 fd 58 b8 6c ba 	vfmadd231pd 0x20(%r10,%r15,4){1to8},%zmm0,%zmm29
  40280e:	04 
  40280f:	62 42 fd 58 b8 74 1a 	vfmadd231pd 0x20(%r10,%rbx,1){1to8},%zmm0,%zmm30
  402816:	04 
  402817:	62 42 fd 58 b8 7c 42 	vfmadd231pd 0x20(%r10,%rax,2){1to8},%zmm0,%zmm31
  40281e:	04 
  40281f:	62 f1 fd 48 28 47 18 	vmovapd 0x600(%rdi),%zmm0
  402826:	62 e2 f5 58 b8 46 05 	vfmadd231pd 0x28(%rsi){1to8},%zmm1,%zmm16
  40282d:	62 a2 f5 58 b8 4c 3e 	vfmadd231pd 0x28(%rsi,%r15,1){1to8},%zmm1,%zmm17
  402834:	05 
  402835:	62 a2 f5 58 b8 54 7e 	vfmadd231pd 0x28(%rsi,%r15,2){1to8},%zmm1,%zmm18
  40283c:	05 
  40283d:	62 e2 f5 58 b8 5c 06 	vfmadd231pd 0x28(%rsi,%rax,1){1to8},%zmm1,%zmm19
  402844:	05 
  402845:	62 a2 f5 58 b8 64 be 	vfmadd231pd 0x28(%rsi,%r15,4){1to8},%zmm1,%zmm20
  40284c:	05 
  40284d:	62 e2 f5 58 b8 6c 1e 	vfmadd231pd 0x28(%rsi,%rbx,1){1to8},%zmm1,%zmm21
  402854:	05 
  402855:	62 e2 f5 58 b8 74 46 	vfmadd231pd 0x28(%rsi,%rax,2){1to8},%zmm1,%zmm22
  40285c:	05 
  40285d:	62 a2 f5 58 b8 7c 1e 	vfmadd231pd 0x28(%rsi,%r11,1){1to8},%zmm1,%zmm23
  402864:	05 
  402865:	62 22 f5 58 b8 44 fe 	vfmadd231pd 0x28(%rsi,%r15,8){1to8},%zmm1,%zmm24
  40286c:	05 
  40286d:	62 42 f5 58 b8 4a 05 	vfmadd231pd 0x28(%r10){1to8},%zmm1,%zmm25
  402874:	62 02 f5 58 b8 54 3a 	vfmadd231pd 0x28(%r10,%r15,1){1to8},%zmm1,%zmm26
  40287b:	05 
  40287c:	62 02 f5 58 b8 5c 7a 	vfmadd231pd 0x28(%r10,%r15,2){1to8},%zmm1,%zmm27
  402883:	05 
  402884:	62 42 f5 58 b8 64 02 	vfmadd231pd 0x28(%r10,%rax,1){1to8},%zmm1,%zmm28
  40288b:	05 
  40288c:	62 02 f5 58 b8 6c ba 	vfmadd231pd 0x28(%r10,%r15,4){1to8},%zmm1,%zmm29
  402893:	05 
  402894:	62 42 f5 58 b8 74 1a 	vfmadd231pd 0x28(%r10,%rbx,1){1to8},%zmm1,%zmm30
  40289b:	05 
  40289c:	62 42 f5 58 b8 7c 42 	vfmadd231pd 0x28(%r10,%rax,2){1to8},%zmm1,%zmm31
  4028a3:	05 
  4028a4:	62 f1 fd 48 28 4f 1c 	vmovapd 0x700(%rdi),%zmm1
  4028ab:	62 e2 fd 58 b8 46 06 	vfmadd231pd 0x30(%rsi){1to8},%zmm0,%zmm16
  4028b2:	62 a2 fd 58 b8 4c 3e 	vfmadd231pd 0x30(%rsi,%r15,1){1to8},%zmm0,%zmm17
  4028b9:	06 
  4028ba:	62 a2 fd 58 b8 54 7e 	vfmadd231pd 0x30(%rsi,%r15,2){1to8},%zmm0,%zmm18
  4028c1:	06 
  4028c2:	62 e2 fd 58 b8 5c 06 	vfmadd231pd 0x30(%rsi,%rax,1){1to8},%zmm0,%zmm19
  4028c9:	06 
  4028ca:	62 a2 fd 58 b8 64 be 	vfmadd231pd 0x30(%rsi,%r15,4){1to8},%zmm0,%zmm20
  4028d1:	06 
  4028d2:	62 e2 fd 58 b8 6c 1e 	vfmadd231pd 0x30(%rsi,%rbx,1){1to8},%zmm0,%zmm21
  4028d9:	06 
  4028da:	62 e2 fd 58 b8 74 46 	vfmadd231pd 0x30(%rsi,%rax,2){1to8},%zmm0,%zmm22
  4028e1:	06 
  4028e2:	62 a2 fd 58 b8 7c 1e 	vfmadd231pd 0x30(%rsi,%r11,1){1to8},%zmm0,%zmm23
  4028e9:	06 
  4028ea:	62 22 fd 58 b8 44 fe 	vfmadd231pd 0x30(%rsi,%r15,8){1to8},%zmm0,%zmm24
  4028f1:	06 
  4028f2:	62 42 fd 58 b8 4a 06 	vfmadd231pd 0x30(%r10){1to8},%zmm0,%zmm25
  4028f9:	62 02 fd 58 b8 54 3a 	vfmadd231pd 0x30(%r10,%r15,1){1to8},%zmm0,%zmm26
  402900:	06 
  402901:	62 02 fd 58 b8 5c 7a 	vfmadd231pd 0x30(%r10,%r15,2){1to8},%zmm0,%zmm27
  402908:	06 
  402909:	62 42 fd 58 b8 64 02 	vfmadd231pd 0x30(%r10,%rax,1){1to8},%zmm0,%zmm28
  402910:	06 
  402911:	62 02 fd 58 b8 6c ba 	vfmadd231pd 0x30(%r10,%r15,4){1to8},%zmm0,%zmm29
  402918:	06 
  402919:	62 42 fd 58 b8 74 1a 	vfmadd231pd 0x30(%r10,%rbx,1){1to8},%zmm0,%zmm30
  402920:	06 
  402921:	62 42 fd 58 b8 7c 42 	vfmadd231pd 0x30(%r10,%rax,2){1to8},%zmm0,%zmm31
  402928:	06 
  402929:	62 f1 fd 48 28 47 20 	vmovapd 0x800(%rdi),%zmm0
  402930:	62 e2 f5 58 b8 46 07 	vfmadd231pd 0x38(%rsi){1to8},%zmm1,%zmm16
  402937:	62 a2 f5 58 b8 4c 3e 	vfmadd231pd 0x38(%rsi,%r15,1){1to8},%zmm1,%zmm17
  40293e:	07 
  40293f:	62 a2 f5 58 b8 54 7e 	vfmadd231pd 0x38(%rsi,%r15,2){1to8},%zmm1,%zmm18
  402946:	07 
  402947:	62 e2 f5 58 b8 5c 06 	vfmadd231pd 0x38(%rsi,%rax,1){1to8},%zmm1,%zmm19
  40294e:	07 
  40294f:	62 a2 f5 58 b8 64 be 	vfmadd231pd 0x38(%rsi,%r15,4){1to8},%zmm1,%zmm20
  402956:	07 
  402957:	62 e2 f5 58 b8 6c 1e 	vfmadd231pd 0x38(%rsi,%rbx,1){1to8},%zmm1,%zmm21
  40295e:	07 
  40295f:	62 e2 f5 58 b8 74 46 	vfmadd231pd 0x38(%rsi,%rax,2){1to8},%zmm1,%zmm22
  402966:	07 
  402967:	62 a2 f5 58 b8 7c 1e 	vfmadd231pd 0x38(%rsi,%r11,1){1to8},%zmm1,%zmm23
  40296e:	07 
  40296f:	62 22 f5 58 b8 44 fe 	vfmadd231pd 0x38(%rsi,%r15,8){1to8},%zmm1,%zmm24
  402976:	07 
  402977:	62 42 f5 58 b8 4a 07 	vfmadd231pd 0x38(%r10){1to8},%zmm1,%zmm25
  40297e:	62 02 f5 58 b8 54 3a 	vfmadd231pd 0x38(%r10,%r15,1){1to8},%zmm1,%zmm26
  402985:	07 
  402986:	62 02 f5 58 b8 5c 7a 	vfmadd231pd 0x38(%r10,%r15,2){1to8},%zmm1,%zmm27
  40298d:	07 
  40298e:	62 42 f5 58 b8 64 02 	vfmadd231pd 0x38(%r10,%rax,1){1to8},%zmm1,%zmm28
  402995:	07 
  402996:	62 02 f5 58 b8 6c ba 	vfmadd231pd 0x38(%r10,%r15,4){1to8},%zmm1,%zmm29
  40299d:	07 
  40299e:	62 42 f5 58 b8 74 1a 	vfmadd231pd 0x38(%r10,%rbx,1){1to8},%zmm1,%zmm30
  4029a5:	07 
  4029a6:	62 42 f5 58 b8 7c 42 	vfmadd231pd 0x38(%r10,%rax,2){1to8},%zmm1,%zmm31
  4029ad:	07 
  4029ae:	62 f1 fd 48 28 4f 24 	vmovapd 0x900(%rdi),%zmm1
  4029b5:	62 e2 fd 58 b8 46 08 	vfmadd231pd 0x40(%rsi){1to8},%zmm0,%zmm16
  4029bc:	62 a2 fd 58 b8 4c 3e 	vfmadd231pd 0x40(%rsi,%r15,1){1to8},%zmm0,%zmm17
  4029c3:	08 
  4029c4:	62 a2 fd 58 b8 54 7e 	vfmadd231pd 0x40(%rsi,%r15,2){1to8},%zmm0,%zmm18
  4029cb:	08 
  4029cc:	62 e2 fd 58 b8 5c 06 	vfmadd231pd 0x40(%rsi,%rax,1){1to8},%zmm0,%zmm19
  4029d3:	08 
  4029d4:	62 a2 fd 58 b8 64 be 	vfmadd231pd 0x40(%rsi,%r15,4){1to8},%zmm0,%zmm20
  4029db:	08 
  4029dc:	62 e2 fd 58 b8 6c 1e 	vfmadd231pd 0x40(%rsi,%rbx,1){1to8},%zmm0,%zmm21
  4029e3:	08 
  4029e4:	62 e2 fd 58 b8 74 46 	vfmadd231pd 0x40(%rsi,%rax,2){1to8},%zmm0,%zmm22
  4029eb:	08 
  4029ec:	62 a2 fd 58 b8 7c 1e 	vfmadd231pd 0x40(%rsi,%r11,1){1to8},%zmm0,%zmm23
  4029f3:	08 
  4029f4:	62 22 fd 58 b8 44 fe 	vfmadd231pd 0x40(%rsi,%r15,8){1to8},%zmm0,%zmm24
  4029fb:	08 
  4029fc:	62 42 fd 58 b8 4a 08 	vfmadd231pd 0x40(%r10){1to8},%zmm0,%zmm25
  402a03:	62 02 fd 58 b8 54 3a 	vfmadd231pd 0x40(%r10,%r15,1){1to8},%zmm0,%zmm26
  402a0a:	08 
  402a0b:	62 02 fd 58 b8 5c 7a 	vfmadd231pd 0x40(%r10,%r15,2){1to8},%zmm0,%zmm27
  402a12:	08 
  402a13:	62 42 fd 58 b8 64 02 	vfmadd231pd 0x40(%r10,%rax,1){1to8},%zmm0,%zmm28
  402a1a:	08 
  402a1b:	62 02 fd 58 b8 6c ba 	vfmadd231pd 0x40(%r10,%r15,4){1to8},%zmm0,%zmm29
  402a22:	08 
  402a23:	62 42 fd 58 b8 74 1a 	vfmadd231pd 0x40(%r10,%rbx,1){1to8},%zmm0,%zmm30
  402a2a:	08 
  402a2b:	62 42 fd 58 b8 7c 42 	vfmadd231pd 0x40(%r10,%rax,2){1to8},%zmm0,%zmm31
  402a32:	08 
  402a33:	62 f1 fd 48 28 47 28 	vmovapd 0xa00(%rdi),%zmm0
  402a3a:	62 e2 f5 58 b8 46 09 	vfmadd231pd 0x48(%rsi){1to8},%zmm1,%zmm16
  402a41:	62 a2 f5 58 b8 4c 3e 	vfmadd231pd 0x48(%rsi,%r15,1){1to8},%zmm1,%zmm17
  402a48:	09 
  402a49:	62 a2 f5 58 b8 54 7e 	vfmadd231pd 0x48(%rsi,%r15,2){1to8},%zmm1,%zmm18
  402a50:	09 
  402a51:	62 e2 f5 58 b8 5c 06 	vfmadd231pd 0x48(%rsi,%rax,1){1to8},%zmm1,%zmm19
  402a58:	09 
  402a59:	62 a2 f5 58 b8 64 be 	vfmadd231pd 0x48(%rsi,%r15,4){1to8},%zmm1,%zmm20
  402a60:	09 
  402a61:	62 e2 f5 58 b8 6c 1e 	vfmadd231pd 0x48(%rsi,%rbx,1){1to8},%zmm1,%zmm21
  402a68:	09 
  402a69:	62 e2 f5 58 b8 74 46 	vfmadd231pd 0x48(%rsi,%rax,2){1to8},%zmm1,%zmm22
  402a70:	09 
  402a71:	62 a2 f5 58 b8 7c 1e 	vfmadd231pd 0x48(%rsi,%r11,1){1to8},%zmm1,%zmm23
  402a78:	09 
  402a79:	62 22 f5 58 b8 44 fe 	vfmadd231pd 0x48(%rsi,%r15,8){1to8},%zmm1,%zmm24
  402a80:	09 
  402a81:	62 42 f5 58 b8 4a 09 	vfmadd231pd 0x48(%r10){1to8},%zmm1,%zmm25
  402a88:	62 02 f5 58 b8 54 3a 	vfmadd231pd 0x48(%r10,%r15,1){1to8},%zmm1,%zmm26
  402a8f:	09 
  402a90:	62 02 f5 58 b8 5c 7a 	vfmadd231pd 0x48(%r10,%r15,2){1to8},%zmm1,%zmm27
  402a97:	09 
  402a98:	62 42 f5 58 b8 64 02 	vfmadd231pd 0x48(%r10,%rax,1){1to8},%zmm1,%zmm28
  402a9f:	09 
  402aa0:	62 02 f5 58 b8 6c ba 	vfmadd231pd 0x48(%r10,%r15,4){1to8},%zmm1,%zmm29
  402aa7:	09 
  402aa8:	62 42 f5 58 b8 74 1a 	vfmadd231pd 0x48(%r10,%rbx,1){1to8},%zmm1,%zmm30
  402aaf:	09 
  402ab0:	62 42 f5 58 b8 7c 42 	vfmadd231pd 0x48(%r10,%rax,2){1to8},%zmm1,%zmm31
  402ab7:	09 
  402ab8:	62 f1 fd 48 28 4f 2c 	vmovapd 0xb00(%rdi),%zmm1
  402abf:	62 e2 fd 58 b8 46 0a 	vfmadd231pd 0x50(%rsi){1to8},%zmm0,%zmm16
  402ac6:	62 a2 fd 58 b8 4c 3e 	vfmadd231pd 0x50(%rsi,%r15,1){1to8},%zmm0,%zmm17
  402acd:	0a 
  402ace:	62 a2 fd 58 b8 54 7e 	vfmadd231pd 0x50(%rsi,%r15,2){1to8},%zmm0,%zmm18
  402ad5:	0a 
  402ad6:	62 e2 fd 58 b8 5c 06 	vfmadd231pd 0x50(%rsi,%rax,1){1to8},%zmm0,%zmm19
  402add:	0a 
  402ade:	62 a2 fd 58 b8 64 be 	vfmadd231pd 0x50(%rsi,%r15,4){1to8},%zmm0,%zmm20
  402ae5:	0a 
  402ae6:	62 e2 fd 58 b8 6c 1e 	vfmadd231pd 0x50(%rsi,%rbx,1){1to8},%zmm0,%zmm21
  402aed:	0a 
  402aee:	62 e2 fd 58 b8 74 46 	vfmadd231pd 0x50(%rsi,%rax,2){1to8},%zmm0,%zmm22
  402af5:	0a 
  402af6:	62 a2 fd 58 b8 7c 1e 	vfmadd231pd 0x50(%rsi,%r11,1){1to8},%zmm0,%zmm23
  402afd:	0a 
  402afe:	62 22 fd 58 b8 44 fe 	vfmadd231pd 0x50(%rsi,%r15,8){1to8},%zmm0,%zmm24
  402b05:	0a 
  402b06:	62 42 fd 58 b8 4a 0a 	vfmadd231pd 0x50(%r10){1to8},%zmm0,%zmm25
  402b0d:	62 02 fd 58 b8 54 3a 	vfmadd231pd 0x50(%r10,%r15,1){1to8},%zmm0,%zmm26
  402b14:	0a 
  402b15:	62 02 fd 58 b8 5c 7a 	vfmadd231pd 0x50(%r10,%r15,2){1to8},%zmm0,%zmm27
  402b1c:	0a 
  402b1d:	62 42 fd 58 b8 64 02 	vfmadd231pd 0x50(%r10,%rax,1){1to8},%zmm0,%zmm28
  402b24:	0a 
  402b25:	62 02 fd 58 b8 6c ba 	vfmadd231pd 0x50(%r10,%r15,4){1to8},%zmm0,%zmm29
  402b2c:	0a 
  402b2d:	62 42 fd 58 b8 74 1a 	vfmadd231pd 0x50(%r10,%rbx,1){1to8},%zmm0,%zmm30
  402b34:	0a 
  402b35:	62 42 fd 58 b8 7c 42 	vfmadd231pd 0x50(%r10,%rax,2){1to8},%zmm0,%zmm31
  402b3c:	0a 
  402b3d:	62 f1 fd 48 28 47 30 	vmovapd 0xc00(%rdi),%zmm0
  402b44:	62 e2 f5 58 b8 46 0b 	vfmadd231pd 0x58(%rsi){1to8},%zmm1,%zmm16
  402b4b:	62 a2 f5 58 b8 4c 3e 	vfmadd231pd 0x58(%rsi,%r15,1){1to8},%zmm1,%zmm17
  402b52:	0b 
  402b53:	62 a2 f5 58 b8 54 7e 	vfmadd231pd 0x58(%rsi,%r15,2){1to8},%zmm1,%zmm18
  402b5a:	0b 
  402b5b:	62 e2 f5 58 b8 5c 06 	vfmadd231pd 0x58(%rsi,%rax,1){1to8},%zmm1,%zmm19
  402b62:	0b 
  402b63:	62 a2 f5 58 b8 64 be 	vfmadd231pd 0x58(%rsi,%r15,4){1to8},%zmm1,%zmm20
  402b6a:	0b 
  402b6b:	62 e2 f5 58 b8 6c 1e 	vfmadd231pd 0x58(%rsi,%rbx,1){1to8},%zmm1,%zmm21
  402b72:	0b 
  402b73:	62 e2 f5 58 b8 74 46 	vfmadd231pd 0x58(%rsi,%rax,2){1to8},%zmm1,%zmm22
  402b7a:	0b 
  402b7b:	62 a2 f5 58 b8 7c 1e 	vfmadd231pd 0x58(%rsi,%r11,1){1to8},%zmm1,%zmm23
  402b82:	0b 
  402b83:	62 22 f5 58 b8 44 fe 	vfmadd231pd 0x58(%rsi,%r15,8){1to8},%zmm1,%zmm24
  402b8a:	0b 
  402b8b:	62 42 f5 58 b8 4a 0b 	vfmadd231pd 0x58(%r10){1to8},%zmm1,%zmm25
  402b92:	62 02 f5 58 b8 54 3a 	vfmadd231pd 0x58(%r10,%r15,1){1to8},%zmm1,%zmm26
  402b99:	0b 
  402b9a:	62 02 f5 58 b8 5c 7a 	vfmadd231pd 0x58(%r10,%r15,2){1to8},%zmm1,%zmm27
  402ba1:	0b 
  402ba2:	62 42 f5 58 b8 64 02 	vfmadd231pd 0x58(%r10,%rax,1){1to8},%zmm1,%zmm28
  402ba9:	0b 
  402baa:	62 02 f5 58 b8 6c ba 	vfmadd231pd 0x58(%r10,%r15,4){1to8},%zmm1,%zmm29
  402bb1:	0b 
  402bb2:	62 42 f5 58 b8 74 1a 	vfmadd231pd 0x58(%r10,%rbx,1){1to8},%zmm1,%zmm30
  402bb9:	0b 
  402bba:	62 42 f5 58 b8 7c 42 	vfmadd231pd 0x58(%r10,%rax,2){1to8},%zmm1,%zmm31
  402bc1:	0b 
  402bc2:	62 f1 fd 48 28 4f 34 	vmovapd 0xd00(%rdi),%zmm1
  402bc9:	62 e2 fd 58 b8 46 0c 	vfmadd231pd 0x60(%rsi){1to8},%zmm0,%zmm16
  402bd0:	62 a2 fd 58 b8 4c 3e 	vfmadd231pd 0x60(%rsi,%r15,1){1to8},%zmm0,%zmm17
  402bd7:	0c 
  402bd8:	62 a2 fd 58 b8 54 7e 	vfmadd231pd 0x60(%rsi,%r15,2){1to8},%zmm0,%zmm18
  402bdf:	0c 
  402be0:	62 e2 fd 58 b8 5c 06 	vfmadd231pd 0x60(%rsi,%rax,1){1to8},%zmm0,%zmm19
  402be7:	0c 
  402be8:	62 a2 fd 58 b8 64 be 	vfmadd231pd 0x60(%rsi,%r15,4){1to8},%zmm0,%zmm20
  402bef:	0c 
  402bf0:	62 e2 fd 58 b8 6c 1e 	vfmadd231pd 0x60(%rsi,%rbx,1){1to8},%zmm0,%zmm21
  402bf7:	0c 
  402bf8:	62 e2 fd 58 b8 74 46 	vfmadd231pd 0x60(%rsi,%rax,2){1to8},%zmm0,%zmm22
  402bff:	0c 
  402c00:	62 a2 fd 58 b8 7c 1e 	vfmadd231pd 0x60(%rsi,%r11,1){1to8},%zmm0,%zmm23
  402c07:	0c 
  402c08:	62 22 fd 58 b8 44 fe 	vfmadd231pd 0x60(%rsi,%r15,8){1to8},%zmm0,%zmm24
  402c0f:	0c 
  402c10:	62 42 fd 58 b8 4a 0c 	vfmadd231pd 0x60(%r10){1to8},%zmm0,%zmm25
  402c17:	62 02 fd 58 b8 54 3a 	vfmadd231pd 0x60(%r10,%r15,1){1to8},%zmm0,%zmm26
  402c1e:	0c 
  402c1f:	62 02 fd 58 b8 5c 7a 	vfmadd231pd 0x60(%r10,%r15,2){1to8},%zmm0,%zmm27
  402c26:	0c 
  402c27:	62 42 fd 58 b8 64 02 	vfmadd231pd 0x60(%r10,%rax,1){1to8},%zmm0,%zmm28
  402c2e:	0c 
  402c2f:	62 02 fd 58 b8 6c ba 	vfmadd231pd 0x60(%r10,%r15,4){1to8},%zmm0,%zmm29
  402c36:	0c 
  402c37:	62 42 fd 58 b8 74 1a 	vfmadd231pd 0x60(%r10,%rbx,1){1to8},%zmm0,%zmm30
  402c3e:	0c 
  402c3f:	62 42 fd 58 b8 7c 42 	vfmadd231pd 0x60(%r10,%rax,2){1to8},%zmm0,%zmm31
  402c46:	0c 
  402c47:	62 f1 fd 48 28 47 38 	vmovapd 0xe00(%rdi),%zmm0
  402c4e:	62 e2 f5 58 b8 46 0d 	vfmadd231pd 0x68(%rsi){1to8},%zmm1,%zmm16
  402c55:	62 a2 f5 58 b8 4c 3e 	vfmadd231pd 0x68(%rsi,%r15,1){1to8},%zmm1,%zmm17
  402c5c:	0d 
  402c5d:	62 a2 f5 58 b8 54 7e 	vfmadd231pd 0x68(%rsi,%r15,2){1to8},%zmm1,%zmm18
  402c64:	0d 
  402c65:	62 e2 f5 58 b8 5c 06 	vfmadd231pd 0x68(%rsi,%rax,1){1to8},%zmm1,%zmm19
  402c6c:	0d 
  402c6d:	62 a2 f5 58 b8 64 be 	vfmadd231pd 0x68(%rsi,%r15,4){1to8},%zmm1,%zmm20
  402c74:	0d 
  402c75:	62 e2 f5 58 b8 6c 1e 	vfmadd231pd 0x68(%rsi,%rbx,1){1to8},%zmm1,%zmm21
  402c7c:	0d 
  402c7d:	62 e2 f5 58 b8 74 46 	vfmadd231pd 0x68(%rsi,%rax,2){1to8},%zmm1,%zmm22
  402c84:	0d 
  402c85:	62 a2 f5 58 b8 7c 1e 	vfmadd231pd 0x68(%rsi,%r11,1){1to8},%zmm1,%zmm23
  402c8c:	0d 
  402c8d:	62 22 f5 58 b8 44 fe 	vfmadd231pd 0x68(%rsi,%r15,8){1to8},%zmm1,%zmm24
  402c94:	0d 
  402c95:	62 42 f5 58 b8 4a 0d 	vfmadd231pd 0x68(%r10){1to8},%zmm1,%zmm25
  402c9c:	62 02 f5 58 b8 54 3a 	vfmadd231pd 0x68(%r10,%r15,1){1to8},%zmm1,%zmm26
  402ca3:	0d 
  402ca4:	62 02 f5 58 b8 5c 7a 	vfmadd231pd 0x68(%r10,%r15,2){1to8},%zmm1,%zmm27
  402cab:	0d 
  402cac:	62 42 f5 58 b8 64 02 	vfmadd231pd 0x68(%r10,%rax,1){1to8},%zmm1,%zmm28
  402cb3:	0d 
  402cb4:	62 02 f5 58 b8 6c ba 	vfmadd231pd 0x68(%r10,%r15,4){1to8},%zmm1,%zmm29
  402cbb:	0d 
  402cbc:	62 42 f5 58 b8 74 1a 	vfmadd231pd 0x68(%r10,%rbx,1){1to8},%zmm1,%zmm30
  402cc3:	0d 
  402cc4:	62 42 f5 58 b8 7c 42 	vfmadd231pd 0x68(%r10,%rax,2){1to8},%zmm1,%zmm31
  402ccb:	0d 
  402ccc:	62 f1 fd 48 28 4f 3c 	vmovapd 0xf00(%rdi),%zmm1
  402cd3:	62 e2 fd 58 b8 46 0e 	vfmadd231pd 0x70(%rsi){1to8},%zmm0,%zmm16
  402cda:	62 a2 fd 58 b8 4c 3e 	vfmadd231pd 0x70(%rsi,%r15,1){1to8},%zmm0,%zmm17
  402ce1:	0e 
  402ce2:	62 a2 fd 58 b8 54 7e 	vfmadd231pd 0x70(%rsi,%r15,2){1to8},%zmm0,%zmm18
  402ce9:	0e 
  402cea:	62 e2 fd 58 b8 5c 06 	vfmadd231pd 0x70(%rsi,%rax,1){1to8},%zmm0,%zmm19
  402cf1:	0e 
  402cf2:	62 a2 fd 58 b8 64 be 	vfmadd231pd 0x70(%rsi,%r15,4){1to8},%zmm0,%zmm20
  402cf9:	0e 
  402cfa:	62 e2 fd 58 b8 6c 1e 	vfmadd231pd 0x70(%rsi,%rbx,1){1to8},%zmm0,%zmm21
  402d01:	0e 
  402d02:	62 e2 fd 58 b8 74 46 	vfmadd231pd 0x70(%rsi,%rax,2){1to8},%zmm0,%zmm22
  402d09:	0e 
  402d0a:	62 a2 fd 58 b8 7c 1e 	vfmadd231pd 0x70(%rsi,%r11,1){1to8},%zmm0,%zmm23
  402d11:	0e 
  402d12:	62 22 fd 58 b8 44 fe 	vfmadd231pd 0x70(%rsi,%r15,8){1to8},%zmm0,%zmm24
  402d19:	0e 
  402d1a:	62 42 fd 58 b8 4a 0e 	vfmadd231pd 0x70(%r10){1to8},%zmm0,%zmm25
  402d21:	62 02 fd 58 b8 54 3a 	vfmadd231pd 0x70(%r10,%r15,1){1to8},%zmm0,%zmm26
  402d28:	0e 
  402d29:	62 02 fd 58 b8 5c 7a 	vfmadd231pd 0x70(%r10,%r15,2){1to8},%zmm0,%zmm27
  402d30:	0e 
  402d31:	62 42 fd 58 b8 64 02 	vfmadd231pd 0x70(%r10,%rax,1){1to8},%zmm0,%zmm28
  402d38:	0e 
  402d39:	62 02 fd 58 b8 6c ba 	vfmadd231pd 0x70(%r10,%r15,4){1to8},%zmm0,%zmm29
  402d40:	0e 
  402d41:	62 42 fd 58 b8 74 1a 	vfmadd231pd 0x70(%r10,%rbx,1){1to8},%zmm0,%zmm30
  402d48:	0e 
  402d49:	62 42 fd 58 b8 7c 42 	vfmadd231pd 0x70(%r10,%rax,2){1to8},%zmm0,%zmm31
  402d50:	0e 
  402d51:	62 f1 fd 48 28 47 40 	vmovapd 0x1000(%rdi),%zmm0
  402d58:	62 e2 f5 58 b8 46 0f 	vfmadd231pd 0x78(%rsi){1to8},%zmm1,%zmm16
  402d5f:	62 a2 f5 58 b8 4c 3e 	vfmadd231pd 0x78(%rsi,%r15,1){1to8},%zmm1,%zmm17
  402d66:	0f 
  402d67:	62 a2 f5 58 b8 54 7e 	vfmadd231pd 0x78(%rsi,%r15,2){1to8},%zmm1,%zmm18
  402d6e:	0f 
  402d6f:	62 e2 f5 58 b8 5c 06 	vfmadd231pd 0x78(%rsi,%rax,1){1to8},%zmm1,%zmm19
  402d76:	0f 
  402d77:	62 a2 f5 58 b8 64 be 	vfmadd231pd 0x78(%rsi,%r15,4){1to8},%zmm1,%zmm20
  402d7e:	0f 
  402d7f:	62 e2 f5 58 b8 6c 1e 	vfmadd231pd 0x78(%rsi,%rbx,1){1to8},%zmm1,%zmm21
  402d86:	0f 
  402d87:	62 e2 f5 58 b8 74 46 	vfmadd231pd 0x78(%rsi,%rax,2){1to8},%zmm1,%zmm22
  402d8e:	0f 
  402d8f:	62 a2 f5 58 b8 7c 1e 	vfmadd231pd 0x78(%rsi,%r11,1){1to8},%zmm1,%zmm23
  402d96:	0f 
  402d97:	62 22 f5 58 b8 44 fe 	vfmadd231pd 0x78(%rsi,%r15,8){1to8},%zmm1,%zmm24
  402d9e:	0f 
  402d9f:	62 42 f5 58 b8 4a 0f 	vfmadd231pd 0x78(%r10){1to8},%zmm1,%zmm25
  402da6:	62 02 f5 58 b8 54 3a 	vfmadd231pd 0x78(%r10,%r15,1){1to8},%zmm1,%zmm26
  402dad:	0f 
  402dae:	62 02 f5 58 b8 5c 7a 	vfmadd231pd 0x78(%r10,%r15,2){1to8},%zmm1,%zmm27
  402db5:	0f 
  402db6:	62 42 f5 58 b8 64 02 	vfmadd231pd 0x78(%r10,%rax,1){1to8},%zmm1,%zmm28
  402dbd:	0f 
  402dbe:	62 02 f5 58 b8 6c ba 	vfmadd231pd 0x78(%r10,%r15,4){1to8},%zmm1,%zmm29
  402dc5:	0f 
  402dc6:	62 42 f5 58 b8 74 1a 	vfmadd231pd 0x78(%r10,%rbx,1){1to8},%zmm1,%zmm30
  402dcd:	0f 
  402dce:	62 42 f5 58 b8 7c 42 	vfmadd231pd 0x78(%r10,%rax,2){1to8},%zmm1,%zmm31
  402dd5:	0f 
  402dd6:	62 f1 fd 48 28 4f 44 	vmovapd 0x1100(%rdi),%zmm1
  402ddd:	62 e2 fd 58 b8 46 10 	vfmadd231pd 0x80(%rsi){1to8},%zmm0,%zmm16
  402de4:	62 a2 fd 58 b8 4c 3e 	vfmadd231pd 0x80(%rsi,%r15,1){1to8},%zmm0,%zmm17
  402deb:	10 
  402dec:	62 a2 fd 58 b8 54 7e 	vfmadd231pd 0x80(%rsi,%r15,2){1to8},%zmm0,%zmm18
  402df3:	10 
  402df4:	62 e2 fd 58 b8 5c 06 	vfmadd231pd 0x80(%rsi,%rax,1){1to8},%zmm0,%zmm19
  402dfb:	10 
  402dfc:	62 a2 fd 58 b8 64 be 	vfmadd231pd 0x80(%rsi,%r15,4){1to8},%zmm0,%zmm20
  402e03:	10 
  402e04:	62 e2 fd 58 b8 6c 1e 	vfmadd231pd 0x80(%rsi,%rbx,1){1to8},%zmm0,%zmm21
  402e0b:	10 
  402e0c:	62 e2 fd 58 b8 74 46 	vfmadd231pd 0x80(%rsi,%rax,2){1to8},%zmm0,%zmm22
  402e13:	10 
  402e14:	62 a2 fd 58 b8 7c 1e 	vfmadd231pd 0x80(%rsi,%r11,1){1to8},%zmm0,%zmm23
  402e1b:	10 
  402e1c:	62 22 fd 58 b8 44 fe 	vfmadd231pd 0x80(%rsi,%r15,8){1to8},%zmm0,%zmm24
  402e23:	10 
  402e24:	62 42 fd 58 b8 4a 10 	vfmadd231pd 0x80(%r10){1to8},%zmm0,%zmm25
  402e2b:	62 02 fd 58 b8 54 3a 	vfmadd231pd 0x80(%r10,%r15,1){1to8},%zmm0,%zmm26
  402e32:	10 
  402e33:	62 02 fd 58 b8 5c 7a 	vfmadd231pd 0x80(%r10,%r15,2){1to8},%zmm0,%zmm27
  402e3a:	10 
  402e3b:	62 42 fd 58 b8 64 02 	vfmadd231pd 0x80(%r10,%rax,1){1to8},%zmm0,%zmm28
  402e42:	10 
  402e43:	62 02 fd 58 b8 6c ba 	vfmadd231pd 0x80(%r10,%r15,4){1to8},%zmm0,%zmm29
  402e4a:	10 
  402e4b:	62 42 fd 58 b8 74 1a 	vfmadd231pd 0x80(%r10,%rbx,1){1to8},%zmm0,%zmm30
  402e52:	10 
  402e53:	62 42 fd 58 b8 7c 42 	vfmadd231pd 0x80(%r10,%rax,2){1to8},%zmm0,%zmm31
  402e5a:	10 
  402e5b:	62 f1 fd 48 28 47 48 	vmovapd 0x1200(%rdi),%zmm0
  402e62:	62 e2 f5 58 b8 46 11 	vfmadd231pd 0x88(%rsi){1to8},%zmm1,%zmm16
  402e69:	62 a2 f5 58 b8 4c 3e 	vfmadd231pd 0x88(%rsi,%r15,1){1to8},%zmm1,%zmm17
  402e70:	11 
  402e71:	62 a2 f5 58 b8 54 7e 	vfmadd231pd 0x88(%rsi,%r15,2){1to8},%zmm1,%zmm18
  402e78:	11 
  402e79:	62 e2 f5 58 b8 5c 06 	vfmadd231pd 0x88(%rsi,%rax,1){1to8},%zmm1,%zmm19
  402e80:	11 
  402e81:	62 a2 f5 58 b8 64 be 	vfmadd231pd 0x88(%rsi,%r15,4){1to8},%zmm1,%zmm20
  402e88:	11 
  402e89:	62 e2 f5 58 b8 6c 1e 	vfmadd231pd 0x88(%rsi,%rbx,1){1to8},%zmm1,%zmm21
  402e90:	11 
  402e91:	62 e2 f5 58 b8 74 46 	vfmadd231pd 0x88(%rsi,%rax,2){1to8},%zmm1,%zmm22
  402e98:	11 
  402e99:	62 a2 f5 58 b8 7c 1e 	vfmadd231pd 0x88(%rsi,%r11,1){1to8},%zmm1,%zmm23
  402ea0:	11 
  402ea1:	62 22 f5 58 b8 44 fe 	vfmadd231pd 0x88(%rsi,%r15,8){1to8},%zmm1,%zmm24
  402ea8:	11 
  402ea9:	62 42 f5 58 b8 4a 11 	vfmadd231pd 0x88(%r10){1to8},%zmm1,%zmm25
  402eb0:	62 02 f5 58 b8 54 3a 	vfmadd231pd 0x88(%r10,%r15,1){1to8},%zmm1,%zmm26
  402eb7:	11 
  402eb8:	62 02 f5 58 b8 5c 7a 	vfmadd231pd 0x88(%r10,%r15,2){1to8},%zmm1,%zmm27
  402ebf:	11 
  402ec0:	62 42 f5 58 b8 64 02 	vfmadd231pd 0x88(%r10,%rax,1){1to8},%zmm1,%zmm28
  402ec7:	11 
  402ec8:	62 02 f5 58 b8 6c ba 	vfmadd231pd 0x88(%r10,%r15,4){1to8},%zmm1,%zmm29
  402ecf:	11 
  402ed0:	62 42 f5 58 b8 74 1a 	vfmadd231pd 0x88(%r10,%rbx,1){1to8},%zmm1,%zmm30
  402ed7:	11 
  402ed8:	62 42 f5 58 b8 7c 42 	vfmadd231pd 0x88(%r10,%rax,2){1to8},%zmm1,%zmm31
  402edf:	11 
  402ee0:	62 f1 fd 48 28 4f 4c 	vmovapd 0x1300(%rdi),%zmm1
  402ee7:	62 e2 fd 58 b8 46 12 	vfmadd231pd 0x90(%rsi){1to8},%zmm0,%zmm16
  402eee:	62 a2 fd 58 b8 4c 3e 	vfmadd231pd 0x90(%rsi,%r15,1){1to8},%zmm0,%zmm17
  402ef5:	12 
  402ef6:	62 a2 fd 58 b8 54 7e 	vfmadd231pd 0x90(%rsi,%r15,2){1to8},%zmm0,%zmm18
  402efd:	12 
  402efe:	62 e2 fd 58 b8 5c 06 	vfmadd231pd 0x90(%rsi,%rax,1){1to8},%zmm0,%zmm19
  402f05:	12 
  402f06:	62 a2 fd 58 b8 64 be 	vfmadd231pd 0x90(%rsi,%r15,4){1to8},%zmm0,%zmm20
  402f0d:	12 
  402f0e:	62 e2 fd 58 b8 6c 1e 	vfmadd231pd 0x90(%rsi,%rbx,1){1to8},%zmm0,%zmm21
  402f15:	12 
  402f16:	62 e2 fd 58 b8 74 46 	vfmadd231pd 0x90(%rsi,%rax,2){1to8},%zmm0,%zmm22
  402f1d:	12 
  402f1e:	62 a2 fd 58 b8 7c 1e 	vfmadd231pd 0x90(%rsi,%r11,1){1to8},%zmm0,%zmm23
  402f25:	12 
  402f26:	62 22 fd 58 b8 44 fe 	vfmadd231pd 0x90(%rsi,%r15,8){1to8},%zmm0,%zmm24
  402f2d:	12 
  402f2e:	62 42 fd 58 b8 4a 12 	vfmadd231pd 0x90(%r10){1to8},%zmm0,%zmm25
  402f35:	62 02 fd 58 b8 54 3a 	vfmadd231pd 0x90(%r10,%r15,1){1to8},%zmm0,%zmm26
  402f3c:	12 
  402f3d:	62 02 fd 58 b8 5c 7a 	vfmadd231pd 0x90(%r10,%r15,2){1to8},%zmm0,%zmm27
  402f44:	12 
  402f45:	62 42 fd 58 b8 64 02 	vfmadd231pd 0x90(%r10,%rax,1){1to8},%zmm0,%zmm28
  402f4c:	12 
  402f4d:	62 02 fd 58 b8 6c ba 	vfmadd231pd 0x90(%r10,%r15,4){1to8},%zmm0,%zmm29
  402f54:	12 
  402f55:	62 42 fd 58 b8 74 1a 	vfmadd231pd 0x90(%r10,%rbx,1){1to8},%zmm0,%zmm30
  402f5c:	12 
  402f5d:	62 42 fd 58 b8 7c 42 	vfmadd231pd 0x90(%r10,%rax,2){1to8},%zmm0,%zmm31
  402f64:	12 
  402f65:	62 f1 fd 48 28 47 50 	vmovapd 0x1400(%rdi),%zmm0
  402f6c:	62 e2 f5 58 b8 46 13 	vfmadd231pd 0x98(%rsi){1to8},%zmm1,%zmm16
  402f73:	62 a2 f5 58 b8 4c 3e 	vfmadd231pd 0x98(%rsi,%r15,1){1to8},%zmm1,%zmm17
  402f7a:	13 
  402f7b:	62 a2 f5 58 b8 54 7e 	vfmadd231pd 0x98(%rsi,%r15,2){1to8},%zmm1,%zmm18
  402f82:	13 
  402f83:	62 e2 f5 58 b8 5c 06 	vfmadd231pd 0x98(%rsi,%rax,1){1to8},%zmm1,%zmm19
  402f8a:	13 
  402f8b:	62 a2 f5 58 b8 64 be 	vfmadd231pd 0x98(%rsi,%r15,4){1to8},%zmm1,%zmm20
  402f92:	13 
  402f93:	62 e2 f5 58 b8 6c 1e 	vfmadd231pd 0x98(%rsi,%rbx,1){1to8},%zmm1,%zmm21
  402f9a:	13 
  402f9b:	62 e2 f5 58 b8 74 46 	vfmadd231pd 0x98(%rsi,%rax,2){1to8},%zmm1,%zmm22
  402fa2:	13 
  402fa3:	62 a2 f5 58 b8 7c 1e 	vfmadd231pd 0x98(%rsi,%r11,1){1to8},%zmm1,%zmm23
  402faa:	13 
  402fab:	62 22 f5 58 b8 44 fe 	vfmadd231pd 0x98(%rsi,%r15,8){1to8},%zmm1,%zmm24
  402fb2:	13 
  402fb3:	62 42 f5 58 b8 4a 13 	vfmadd231pd 0x98(%r10){1to8},%zmm1,%zmm25
  402fba:	62 02 f5 58 b8 54 3a 	vfmadd231pd 0x98(%r10,%r15,1){1to8},%zmm1,%zmm26
  402fc1:	13 
  402fc2:	62 02 f5 58 b8 5c 7a 	vfmadd231pd 0x98(%r10,%r15,2){1to8},%zmm1,%zmm27
  402fc9:	13 
  402fca:	62 42 f5 58 b8 64 02 	vfmadd231pd 0x98(%r10,%rax,1){1to8},%zmm1,%zmm28
  402fd1:	13 
  402fd2:	62 02 f5 58 b8 6c ba 	vfmadd231pd 0x98(%r10,%r15,4){1to8},%zmm1,%zmm29
  402fd9:	13 
  402fda:	62 42 f5 58 b8 74 1a 	vfmadd231pd 0x98(%r10,%rbx,1){1to8},%zmm1,%zmm30
  402fe1:	13 
  402fe2:	62 42 f5 58 b8 7c 42 	vfmadd231pd 0x98(%r10,%rax,2){1to8},%zmm1,%zmm31
  402fe9:	13 
  402fea:	62 f1 fd 48 28 4f 54 	vmovapd 0x1500(%rdi),%zmm1
  402ff1:	62 e2 fd 58 b8 46 14 	vfmadd231pd 0xa0(%rsi){1to8},%zmm0,%zmm16
  402ff8:	62 a2 fd 58 b8 4c 3e 	vfmadd231pd 0xa0(%rsi,%r15,1){1to8},%zmm0,%zmm17
  402fff:	14 
  403000:	62 a2 fd 58 b8 54 7e 	vfmadd231pd 0xa0(%rsi,%r15,2){1to8},%zmm0,%zmm18
  403007:	14 
  403008:	62 e2 fd 58 b8 5c 06 	vfmadd231pd 0xa0(%rsi,%rax,1){1to8},%zmm0,%zmm19
  40300f:	14 
  403010:	62 a2 fd 58 b8 64 be 	vfmadd231pd 0xa0(%rsi,%r15,4){1to8},%zmm0,%zmm20
  403017:	14 
  403018:	62 e2 fd 58 b8 6c 1e 	vfmadd231pd 0xa0(%rsi,%rbx,1){1to8},%zmm0,%zmm21
  40301f:	14 
  403020:	62 e2 fd 58 b8 74 46 	vfmadd231pd 0xa0(%rsi,%rax,2){1to8},%zmm0,%zmm22
  403027:	14 
  403028:	62 a2 fd 58 b8 7c 1e 	vfmadd231pd 0xa0(%rsi,%r11,1){1to8},%zmm0,%zmm23
  40302f:	14 
  403030:	62 22 fd 58 b8 44 fe 	vfmadd231pd 0xa0(%rsi,%r15,8){1to8},%zmm0,%zmm24
  403037:	14 
  403038:	62 42 fd 58 b8 4a 14 	vfmadd231pd 0xa0(%r10){1to8},%zmm0,%zmm25
  40303f:	62 02 fd 58 b8 54 3a 	vfmadd231pd 0xa0(%r10,%r15,1){1to8},%zmm0,%zmm26
  403046:	14 
  403047:	62 02 fd 58 b8 5c 7a 	vfmadd231pd 0xa0(%r10,%r15,2){1to8},%zmm0,%zmm27
  40304e:	14 
  40304f:	62 42 fd 58 b8 64 02 	vfmadd231pd 0xa0(%r10,%rax,1){1to8},%zmm0,%zmm28
  403056:	14 
  403057:	62 02 fd 58 b8 6c ba 	vfmadd231pd 0xa0(%r10,%r15,4){1to8},%zmm0,%zmm29
  40305e:	14 
  40305f:	62 42 fd 58 b8 74 1a 	vfmadd231pd 0xa0(%r10,%rbx,1){1to8},%zmm0,%zmm30
  403066:	14 
  403067:	62 42 fd 58 b8 7c 42 	vfmadd231pd 0xa0(%r10,%rax,2){1to8},%zmm0,%zmm31
  40306e:	14 
  40306f:	62 f1 fd 48 28 47 58 	vmovapd 0x1600(%rdi),%zmm0
  403076:	62 e2 f5 58 b8 46 15 	vfmadd231pd 0xa8(%rsi){1to8},%zmm1,%zmm16
  40307d:	62 a2 f5 58 b8 4c 3e 	vfmadd231pd 0xa8(%rsi,%r15,1){1to8},%zmm1,%zmm17
  403084:	15 
  403085:	62 a2 f5 58 b8 54 7e 	vfmadd231pd 0xa8(%rsi,%r15,2){1to8},%zmm1,%zmm18
  40308c:	15 
  40308d:	62 e2 f5 58 b8 5c 06 	vfmadd231pd 0xa8(%rsi,%rax,1){1to8},%zmm1,%zmm19
  403094:	15 
  403095:	62 a2 f5 58 b8 64 be 	vfmadd231pd 0xa8(%rsi,%r15,4){1to8},%zmm1,%zmm20
  40309c:	15 
  40309d:	62 e2 f5 58 b8 6c 1e 	vfmadd231pd 0xa8(%rsi,%rbx,1){1to8},%zmm1,%zmm21
  4030a4:	15 
  4030a5:	62 e2 f5 58 b8 74 46 	vfmadd231pd 0xa8(%rsi,%rax,2){1to8},%zmm1,%zmm22
  4030ac:	15 
  4030ad:	62 a2 f5 58 b8 7c 1e 	vfmadd231pd 0xa8(%rsi,%r11,1){1to8},%zmm1,%zmm23
  4030b4:	15 
  4030b5:	62 22 f5 58 b8 44 fe 	vfmadd231pd 0xa8(%rsi,%r15,8){1to8},%zmm1,%zmm24
  4030bc:	15 
  4030bd:	62 42 f5 58 b8 4a 15 	vfmadd231pd 0xa8(%r10){1to8},%zmm1,%zmm25
  4030c4:	62 02 f5 58 b8 54 3a 	vfmadd231pd 0xa8(%r10,%r15,1){1to8},%zmm1,%zmm26
  4030cb:	15 
  4030cc:	62 02 f5 58 b8 5c 7a 	vfmadd231pd 0xa8(%r10,%r15,2){1to8},%zmm1,%zmm27
  4030d3:	15 
  4030d4:	62 42 f5 58 b8 64 02 	vfmadd231pd 0xa8(%r10,%rax,1){1to8},%zmm1,%zmm28
  4030db:	15 
  4030dc:	62 02 f5 58 b8 6c ba 	vfmadd231pd 0xa8(%r10,%r15,4){1to8},%zmm1,%zmm29
  4030e3:	15 
  4030e4:	62 42 f5 58 b8 74 1a 	vfmadd231pd 0xa8(%r10,%rbx,1){1to8},%zmm1,%zmm30
  4030eb:	15 
  4030ec:	62 42 f5 58 b8 7c 42 	vfmadd231pd 0xa8(%r10,%rax,2){1to8},%zmm1,%zmm31
  4030f3:	15 
  4030f4:	62 f1 fd 48 28 4f 5c 	vmovapd 0x1700(%rdi),%zmm1
  4030fb:	62 e2 fd 58 b8 46 16 	vfmadd231pd 0xb0(%rsi){1to8},%zmm0,%zmm16
  403102:	62 a2 fd 58 b8 4c 3e 	vfmadd231pd 0xb0(%rsi,%r15,1){1to8},%zmm0,%zmm17
  403109:	16 
  40310a:	62 a2 fd 58 b8 54 7e 	vfmadd231pd 0xb0(%rsi,%r15,2){1to8},%zmm0,%zmm18
  403111:	16 
  403112:	62 e2 fd 58 b8 5c 06 	vfmadd231pd 0xb0(%rsi,%rax,1){1to8},%zmm0,%zmm19
  403119:	16 
  40311a:	62 a2 fd 58 b8 64 be 	vfmadd231pd 0xb0(%rsi,%r15,4){1to8},%zmm0,%zmm20
  403121:	16 
  403122:	62 e2 fd 58 b8 6c 1e 	vfmadd231pd 0xb0(%rsi,%rbx,1){1to8},%zmm0,%zmm21
  403129:	16 
  40312a:	62 e2 fd 58 b8 74 46 	vfmadd231pd 0xb0(%rsi,%rax,2){1to8},%zmm0,%zmm22
  403131:	16 
  403132:	62 a2 fd 58 b8 7c 1e 	vfmadd231pd 0xb0(%rsi,%r11,1){1to8},%zmm0,%zmm23
  403139:	16 
  40313a:	62 22 fd 58 b8 44 fe 	vfmadd231pd 0xb0(%rsi,%r15,8){1to8},%zmm0,%zmm24
  403141:	16 
  403142:	62 42 fd 58 b8 4a 16 	vfmadd231pd 0xb0(%r10){1to8},%zmm0,%zmm25
  403149:	62 02 fd 58 b8 54 3a 	vfmadd231pd 0xb0(%r10,%r15,1){1to8},%zmm0,%zmm26
  403150:	16 
  403151:	62 02 fd 58 b8 5c 7a 	vfmadd231pd 0xb0(%r10,%r15,2){1to8},%zmm0,%zmm27
  403158:	16 
  403159:	62 42 fd 58 b8 64 02 	vfmadd231pd 0xb0(%r10,%rax,1){1to8},%zmm0,%zmm28
  403160:	16 
  403161:	62 02 fd 58 b8 6c ba 	vfmadd231pd 0xb0(%r10,%r15,4){1to8},%zmm0,%zmm29
  403168:	16 
  403169:	62 42 fd 58 b8 74 1a 	vfmadd231pd 0xb0(%r10,%rbx,1){1to8},%zmm0,%zmm30
  403170:	16 
  403171:	62 42 fd 58 b8 7c 42 	vfmadd231pd 0xb0(%r10,%rax,2){1to8},%zmm0,%zmm31
  403178:	16 
  403179:	62 f1 fd 48 28 47 60 	vmovapd 0x1800(%rdi),%zmm0
  403180:	62 e2 f5 58 b8 46 17 	vfmadd231pd 0xb8(%rsi){1to8},%zmm1,%zmm16
  403187:	62 a2 f5 58 b8 4c 3e 	vfmadd231pd 0xb8(%rsi,%r15,1){1to8},%zmm1,%zmm17
  40318e:	17 
  40318f:	62 a2 f5 58 b8 54 7e 	vfmadd231pd 0xb8(%rsi,%r15,2){1to8},%zmm1,%zmm18
  403196:	17 
  403197:	62 e2 f5 58 b8 5c 06 	vfmadd231pd 0xb8(%rsi,%rax,1){1to8},%zmm1,%zmm19
  40319e:	17 
  40319f:	62 a2 f5 58 b8 64 be 	vfmadd231pd 0xb8(%rsi,%r15,4){1to8},%zmm1,%zmm20
  4031a6:	17 
  4031a7:	62 e2 f5 58 b8 6c 1e 	vfmadd231pd 0xb8(%rsi,%rbx,1){1to8},%zmm1,%zmm21
  4031ae:	17 
  4031af:	62 e2 f5 58 b8 74 46 	vfmadd231pd 0xb8(%rsi,%rax,2){1to8},%zmm1,%zmm22
  4031b6:	17 
  4031b7:	62 a2 f5 58 b8 7c 1e 	vfmadd231pd 0xb8(%rsi,%r11,1){1to8},%zmm1,%zmm23
  4031be:	17 
  4031bf:	62 22 f5 58 b8 44 fe 	vfmadd231pd 0xb8(%rsi,%r15,8){1to8},%zmm1,%zmm24
  4031c6:	17 
  4031c7:	62 42 f5 58 b8 4a 17 	vfmadd231pd 0xb8(%r10){1to8},%zmm1,%zmm25
  4031ce:	62 02 f5 58 b8 54 3a 	vfmadd231pd 0xb8(%r10,%r15,1){1to8},%zmm1,%zmm26
  4031d5:	17 
  4031d6:	62 02 f5 58 b8 5c 7a 	vfmadd231pd 0xb8(%r10,%r15,2){1to8},%zmm1,%zmm27
  4031dd:	17 
  4031de:	62 42 f5 58 b8 64 02 	vfmadd231pd 0xb8(%r10,%rax,1){1to8},%zmm1,%zmm28
  4031e5:	17 
  4031e6:	62 02 f5 58 b8 6c ba 	vfmadd231pd 0xb8(%r10,%r15,4){1to8},%zmm1,%zmm29
  4031ed:	17 
  4031ee:	62 42 f5 58 b8 74 1a 	vfmadd231pd 0xb8(%r10,%rbx,1){1to8},%zmm1,%zmm30
  4031f5:	17 
  4031f6:	62 42 f5 58 b8 7c 42 	vfmadd231pd 0xb8(%r10,%rax,2){1to8},%zmm1,%zmm31
  4031fd:	17 
  4031fe:	62 f1 fd 48 28 4f 64 	vmovapd 0x1900(%rdi),%zmm1
  403205:	62 e2 fd 58 b8 46 18 	vfmadd231pd 0xc0(%rsi){1to8},%zmm0,%zmm16
  40320c:	62 a2 fd 58 b8 4c 3e 	vfmadd231pd 0xc0(%rsi,%r15,1){1to8},%zmm0,%zmm17
  403213:	18 
  403214:	62 a2 fd 58 b8 54 7e 	vfmadd231pd 0xc0(%rsi,%r15,2){1to8},%zmm0,%zmm18
  40321b:	18 
  40321c:	62 e2 fd 58 b8 5c 06 	vfmadd231pd 0xc0(%rsi,%rax,1){1to8},%zmm0,%zmm19
  403223:	18 
  403224:	62 a2 fd 58 b8 64 be 	vfmadd231pd 0xc0(%rsi,%r15,4){1to8},%zmm0,%zmm20
  40322b:	18 
  40322c:	62 e2 fd 58 b8 6c 1e 	vfmadd231pd 0xc0(%rsi,%rbx,1){1to8},%zmm0,%zmm21
  403233:	18 
  403234:	62 e2 fd 58 b8 74 46 	vfmadd231pd 0xc0(%rsi,%rax,2){1to8},%zmm0,%zmm22
  40323b:	18 
  40323c:	62 a2 fd 58 b8 7c 1e 	vfmadd231pd 0xc0(%rsi,%r11,1){1to8},%zmm0,%zmm23
  403243:	18 
  403244:	62 22 fd 58 b8 44 fe 	vfmadd231pd 0xc0(%rsi,%r15,8){1to8},%zmm0,%zmm24
  40324b:	18 
  40324c:	62 42 fd 58 b8 4a 18 	vfmadd231pd 0xc0(%r10){1to8},%zmm0,%zmm25
  403253:	62 02 fd 58 b8 54 3a 	vfmadd231pd 0xc0(%r10,%r15,1){1to8},%zmm0,%zmm26
  40325a:	18 
  40325b:	62 02 fd 58 b8 5c 7a 	vfmadd231pd 0xc0(%r10,%r15,2){1to8},%zmm0,%zmm27
  403262:	18 
  403263:	62 42 fd 58 b8 64 02 	vfmadd231pd 0xc0(%r10,%rax,1){1to8},%zmm0,%zmm28
  40326a:	18 
  40326b:	62 02 fd 58 b8 6c ba 	vfmadd231pd 0xc0(%r10,%r15,4){1to8},%zmm0,%zmm29
  403272:	18 
  403273:	62 42 fd 58 b8 74 1a 	vfmadd231pd 0xc0(%r10,%rbx,1){1to8},%zmm0,%zmm30
  40327a:	18 
  40327b:	62 42 fd 58 b8 7c 42 	vfmadd231pd 0xc0(%r10,%rax,2){1to8},%zmm0,%zmm31
  403282:	18 
  403283:	62 f1 fd 48 28 47 68 	vmovapd 0x1a00(%rdi),%zmm0
  40328a:	62 e2 f5 58 b8 46 19 	vfmadd231pd 0xc8(%rsi){1to8},%zmm1,%zmm16
  403291:	62 a2 f5 58 b8 4c 3e 	vfmadd231pd 0xc8(%rsi,%r15,1){1to8},%zmm1,%zmm17
  403298:	19 
  403299:	62 a2 f5 58 b8 54 7e 	vfmadd231pd 0xc8(%rsi,%r15,2){1to8},%zmm1,%zmm18
  4032a0:	19 
  4032a1:	62 e2 f5 58 b8 5c 06 	vfmadd231pd 0xc8(%rsi,%rax,1){1to8},%zmm1,%zmm19
  4032a8:	19 
  4032a9:	62 a2 f5 58 b8 64 be 	vfmadd231pd 0xc8(%rsi,%r15,4){1to8},%zmm1,%zmm20
  4032b0:	19 
  4032b1:	62 e2 f5 58 b8 6c 1e 	vfmadd231pd 0xc8(%rsi,%rbx,1){1to8},%zmm1,%zmm21
  4032b8:	19 
  4032b9:	62 e2 f5 58 b8 74 46 	vfmadd231pd 0xc8(%rsi,%rax,2){1to8},%zmm1,%zmm22
  4032c0:	19 
  4032c1:	62 a2 f5 58 b8 7c 1e 	vfmadd231pd 0xc8(%rsi,%r11,1){1to8},%zmm1,%zmm23
  4032c8:	19 
  4032c9:	62 22 f5 58 b8 44 fe 	vfmadd231pd 0xc8(%rsi,%r15,8){1to8},%zmm1,%zmm24
  4032d0:	19 
  4032d1:	62 42 f5 58 b8 4a 19 	vfmadd231pd 0xc8(%r10){1to8},%zmm1,%zmm25
  4032d8:	62 02 f5 58 b8 54 3a 	vfmadd231pd 0xc8(%r10,%r15,1){1to8},%zmm1,%zmm26
  4032df:	19 
  4032e0:	62 02 f5 58 b8 5c 7a 	vfmadd231pd 0xc8(%r10,%r15,2){1to8},%zmm1,%zmm27
  4032e7:	19 
  4032e8:	62 42 f5 58 b8 64 02 	vfmadd231pd 0xc8(%r10,%rax,1){1to8},%zmm1,%zmm28
  4032ef:	19 
  4032f0:	62 02 f5 58 b8 6c ba 	vfmadd231pd 0xc8(%r10,%r15,4){1to8},%zmm1,%zmm29
  4032f7:	19 
  4032f8:	62 42 f5 58 b8 74 1a 	vfmadd231pd 0xc8(%r10,%rbx,1){1to8},%zmm1,%zmm30
  4032ff:	19 
  403300:	62 42 f5 58 b8 7c 42 	vfmadd231pd 0xc8(%r10,%rax,2){1to8},%zmm1,%zmm31
  403307:	19 
  403308:	62 f1 fd 48 28 4f 6c 	vmovapd 0x1b00(%rdi),%zmm1
  40330f:	62 e2 fd 58 b8 46 1a 	vfmadd231pd 0xd0(%rsi){1to8},%zmm0,%zmm16
  403316:	62 a2 fd 58 b8 4c 3e 	vfmadd231pd 0xd0(%rsi,%r15,1){1to8},%zmm0,%zmm17
  40331d:	1a 
  40331e:	62 a2 fd 58 b8 54 7e 	vfmadd231pd 0xd0(%rsi,%r15,2){1to8},%zmm0,%zmm18
  403325:	1a 
  403326:	62 e2 fd 58 b8 5c 06 	vfmadd231pd 0xd0(%rsi,%rax,1){1to8},%zmm0,%zmm19
  40332d:	1a 
  40332e:	62 a2 fd 58 b8 64 be 	vfmadd231pd 0xd0(%rsi,%r15,4){1to8},%zmm0,%zmm20
  403335:	1a 
  403336:	62 e2 fd 58 b8 6c 1e 	vfmadd231pd 0xd0(%rsi,%rbx,1){1to8},%zmm0,%zmm21
  40333d:	1a 
  40333e:	62 e2 fd 58 b8 74 46 	vfmadd231pd 0xd0(%rsi,%rax,2){1to8},%zmm0,%zmm22
  403345:	1a 
  403346:	62 a2 fd 58 b8 7c 1e 	vfmadd231pd 0xd0(%rsi,%r11,1){1to8},%zmm0,%zmm23
  40334d:	1a 
  40334e:	62 22 fd 58 b8 44 fe 	vfmadd231pd 0xd0(%rsi,%r15,8){1to8},%zmm0,%zmm24
  403355:	1a 
  403356:	62 42 fd 58 b8 4a 1a 	vfmadd231pd 0xd0(%r10){1to8},%zmm0,%zmm25
  40335d:	62 02 fd 58 b8 54 3a 	vfmadd231pd 0xd0(%r10,%r15,1){1to8},%zmm0,%zmm26
  403364:	1a 
  403365:	62 02 fd 58 b8 5c 7a 	vfmadd231pd 0xd0(%r10,%r15,2){1to8},%zmm0,%zmm27
  40336c:	1a 
  40336d:	62 42 fd 58 b8 64 02 	vfmadd231pd 0xd0(%r10,%rax,1){1to8},%zmm0,%zmm28
  403374:	1a 
  403375:	62 02 fd 58 b8 6c ba 	vfmadd231pd 0xd0(%r10,%r15,4){1to8},%zmm0,%zmm29
  40337c:	1a 
  40337d:	62 42 fd 58 b8 74 1a 	vfmadd231pd 0xd0(%r10,%rbx,1){1to8},%zmm0,%zmm30
  403384:	1a 
  403385:	62 42 fd 58 b8 7c 42 	vfmadd231pd 0xd0(%r10,%rax,2){1to8},%zmm0,%zmm31
  40338c:	1a 
  40338d:	62 f1 fd 48 28 47 70 	vmovapd 0x1c00(%rdi),%zmm0
  403394:	62 e2 f5 58 b8 46 1b 	vfmadd231pd 0xd8(%rsi){1to8},%zmm1,%zmm16
  40339b:	62 a2 f5 58 b8 4c 3e 	vfmadd231pd 0xd8(%rsi,%r15,1){1to8},%zmm1,%zmm17
  4033a2:	1b 
  4033a3:	62 a2 f5 58 b8 54 7e 	vfmadd231pd 0xd8(%rsi,%r15,2){1to8},%zmm1,%zmm18
  4033aa:	1b 
  4033ab:	62 e2 f5 58 b8 5c 06 	vfmadd231pd 0xd8(%rsi,%rax,1){1to8},%zmm1,%zmm19
  4033b2:	1b 
  4033b3:	62 a2 f5 58 b8 64 be 	vfmadd231pd 0xd8(%rsi,%r15,4){1to8},%zmm1,%zmm20
  4033ba:	1b 
  4033bb:	62 e2 f5 58 b8 6c 1e 	vfmadd231pd 0xd8(%rsi,%rbx,1){1to8},%zmm1,%zmm21
  4033c2:	1b 
  4033c3:	62 e2 f5 58 b8 74 46 	vfmadd231pd 0xd8(%rsi,%rax,2){1to8},%zmm1,%zmm22
  4033ca:	1b 
  4033cb:	62 a2 f5 58 b8 7c 1e 	vfmadd231pd 0xd8(%rsi,%r11,1){1to8},%zmm1,%zmm23
  4033d2:	1b 
  4033d3:	62 22 f5 58 b8 44 fe 	vfmadd231pd 0xd8(%rsi,%r15,8){1to8},%zmm1,%zmm24
  4033da:	1b 
  4033db:	62 42 f5 58 b8 4a 1b 	vfmadd231pd 0xd8(%r10){1to8},%zmm1,%zmm25
  4033e2:	62 02 f5 58 b8 54 3a 	vfmadd231pd 0xd8(%r10,%r15,1){1to8},%zmm1,%zmm26
  4033e9:	1b 
  4033ea:	62 02 f5 58 b8 5c 7a 	vfmadd231pd 0xd8(%r10,%r15,2){1to8},%zmm1,%zmm27
  4033f1:	1b 
  4033f2:	62 42 f5 58 b8 64 02 	vfmadd231pd 0xd8(%r10,%rax,1){1to8},%zmm1,%zmm28
  4033f9:	1b 
  4033fa:	62 02 f5 58 b8 6c ba 	vfmadd231pd 0xd8(%r10,%r15,4){1to8},%zmm1,%zmm29
  403401:	1b 
  403402:	62 42 f5 58 b8 74 1a 	vfmadd231pd 0xd8(%r10,%rbx,1){1to8},%zmm1,%zmm30
  403409:	1b 
  40340a:	62 42 f5 58 b8 7c 42 	vfmadd231pd 0xd8(%r10,%rax,2){1to8},%zmm1,%zmm31
  403411:	1b 
  403412:	62 f1 fd 48 28 4f 74 	vmovapd 0x1d00(%rdi),%zmm1
  403419:	62 e2 fd 58 b8 46 1c 	vfmadd231pd 0xe0(%rsi){1to8},%zmm0,%zmm16
  403420:	62 a2 fd 58 b8 4c 3e 	vfmadd231pd 0xe0(%rsi,%r15,1){1to8},%zmm0,%zmm17
  403427:	1c 
  403428:	62 a2 fd 58 b8 54 7e 	vfmadd231pd 0xe0(%rsi,%r15,2){1to8},%zmm0,%zmm18
  40342f:	1c 
  403430:	62 e2 fd 58 b8 5c 06 	vfmadd231pd 0xe0(%rsi,%rax,1){1to8},%zmm0,%zmm19
  403437:	1c 
  403438:	62 a2 fd 58 b8 64 be 	vfmadd231pd 0xe0(%rsi,%r15,4){1to8},%zmm0,%zmm20
  40343f:	1c 
  403440:	62 e2 fd 58 b8 6c 1e 	vfmadd231pd 0xe0(%rsi,%rbx,1){1to8},%zmm0,%zmm21
  403447:	1c 
  403448:	62 e2 fd 58 b8 74 46 	vfmadd231pd 0xe0(%rsi,%rax,2){1to8},%zmm0,%zmm22
  40344f:	1c 
  403450:	62 a2 fd 58 b8 7c 1e 	vfmadd231pd 0xe0(%rsi,%r11,1){1to8},%zmm0,%zmm23
  403457:	1c 
  403458:	62 22 fd 58 b8 44 fe 	vfmadd231pd 0xe0(%rsi,%r15,8){1to8},%zmm0,%zmm24
  40345f:	1c 
  403460:	62 42 fd 58 b8 4a 1c 	vfmadd231pd 0xe0(%r10){1to8},%zmm0,%zmm25
  403467:	62 02 fd 58 b8 54 3a 	vfmadd231pd 0xe0(%r10,%r15,1){1to8},%zmm0,%zmm26
  40346e:	1c 
  40346f:	62 02 fd 58 b8 5c 7a 	vfmadd231pd 0xe0(%r10,%r15,2){1to8},%zmm0,%zmm27
  403476:	1c 
  403477:	62 42 fd 58 b8 64 02 	vfmadd231pd 0xe0(%r10,%rax,1){1to8},%zmm0,%zmm28
  40347e:	1c 
  40347f:	62 02 fd 58 b8 6c ba 	vfmadd231pd 0xe0(%r10,%r15,4){1to8},%zmm0,%zmm29
  403486:	1c 
  403487:	62 42 fd 58 b8 74 1a 	vfmadd231pd 0xe0(%r10,%rbx,1){1to8},%zmm0,%zmm30
  40348e:	1c 
  40348f:	62 42 fd 58 b8 7c 42 	vfmadd231pd 0xe0(%r10,%rax,2){1to8},%zmm0,%zmm31
  403496:	1c 
  403497:	62 f1 fd 48 28 47 78 	vmovapd 0x1e00(%rdi),%zmm0
  40349e:	62 e2 f5 58 b8 46 1d 	vfmadd231pd 0xe8(%rsi){1to8},%zmm1,%zmm16
  4034a5:	62 a2 f5 58 b8 4c 3e 	vfmadd231pd 0xe8(%rsi,%r15,1){1to8},%zmm1,%zmm17
  4034ac:	1d 
  4034ad:	62 a2 f5 58 b8 54 7e 	vfmadd231pd 0xe8(%rsi,%r15,2){1to8},%zmm1,%zmm18
  4034b4:	1d 
  4034b5:	62 e2 f5 58 b8 5c 06 	vfmadd231pd 0xe8(%rsi,%rax,1){1to8},%zmm1,%zmm19
  4034bc:	1d 
  4034bd:	62 a2 f5 58 b8 64 be 	vfmadd231pd 0xe8(%rsi,%r15,4){1to8},%zmm1,%zmm20
  4034c4:	1d 
  4034c5:	62 e2 f5 58 b8 6c 1e 	vfmadd231pd 0xe8(%rsi,%rbx,1){1to8},%zmm1,%zmm21
  4034cc:	1d 
  4034cd:	62 e2 f5 58 b8 74 46 	vfmadd231pd 0xe8(%rsi,%rax,2){1to8},%zmm1,%zmm22
  4034d4:	1d 
  4034d5:	62 a2 f5 58 b8 7c 1e 	vfmadd231pd 0xe8(%rsi,%r11,1){1to8},%zmm1,%zmm23
  4034dc:	1d 
  4034dd:	62 22 f5 58 b8 44 fe 	vfmadd231pd 0xe8(%rsi,%r15,8){1to8},%zmm1,%zmm24
  4034e4:	1d 
  4034e5:	62 42 f5 58 b8 4a 1d 	vfmadd231pd 0xe8(%r10){1to8},%zmm1,%zmm25
  4034ec:	62 02 f5 58 b8 54 3a 	vfmadd231pd 0xe8(%r10,%r15,1){1to8},%zmm1,%zmm26
  4034f3:	1d 
  4034f4:	62 02 f5 58 b8 5c 7a 	vfmadd231pd 0xe8(%r10,%r15,2){1to8},%zmm1,%zmm27
  4034fb:	1d 
  4034fc:	62 42 f5 58 b8 64 02 	vfmadd231pd 0xe8(%r10,%rax,1){1to8},%zmm1,%zmm28
  403503:	1d 
  403504:	62 02 f5 58 b8 6c ba 	vfmadd231pd 0xe8(%r10,%r15,4){1to8},%zmm1,%zmm29
  40350b:	1d 
  40350c:	62 42 f5 58 b8 74 1a 	vfmadd231pd 0xe8(%r10,%rbx,1){1to8},%zmm1,%zmm30
  403513:	1d 
  403514:	62 42 f5 58 b8 7c 42 	vfmadd231pd 0xe8(%r10,%rax,2){1to8},%zmm1,%zmm31
  40351b:	1d 
  40351c:	62 f1 fd 48 28 4f 7c 	vmovapd 0x1f00(%rdi),%zmm1
  403523:	48 81 c7 00 20 00 00 	add    $0x2000,%rdi
  40352a:	62 e2 fd 58 b8 46 1e 	vfmadd231pd 0xf0(%rsi){1to8},%zmm0,%zmm16
  403531:	62 a2 fd 58 b8 4c 3e 	vfmadd231pd 0xf0(%rsi,%r15,1){1to8},%zmm0,%zmm17
  403538:	1e 
  403539:	62 a2 fd 58 b8 54 7e 	vfmadd231pd 0xf0(%rsi,%r15,2){1to8},%zmm0,%zmm18
  403540:	1e 
  403541:	62 e2 fd 58 b8 5c 06 	vfmadd231pd 0xf0(%rsi,%rax,1){1to8},%zmm0,%zmm19
  403548:	1e 
  403549:	62 a2 fd 58 b8 64 be 	vfmadd231pd 0xf0(%rsi,%r15,4){1to8},%zmm0,%zmm20
  403550:	1e 
  403551:	62 e2 fd 58 b8 6c 1e 	vfmadd231pd 0xf0(%rsi,%rbx,1){1to8},%zmm0,%zmm21
  403558:	1e 
  403559:	62 e2 fd 58 b8 74 46 	vfmadd231pd 0xf0(%rsi,%rax,2){1to8},%zmm0,%zmm22
  403560:	1e 
  403561:	62 a2 fd 58 b8 7c 1e 	vfmadd231pd 0xf0(%rsi,%r11,1){1to8},%zmm0,%zmm23
  403568:	1e 
  403569:	62 22 fd 58 b8 44 fe 	vfmadd231pd 0xf0(%rsi,%r15,8){1to8},%zmm0,%zmm24
  403570:	1e 
  403571:	62 42 fd 58 b8 4a 1e 	vfmadd231pd 0xf0(%r10){1to8},%zmm0,%zmm25
  403578:	62 02 fd 58 b8 54 3a 	vfmadd231pd 0xf0(%r10,%r15,1){1to8},%zmm0,%zmm26
  40357f:	1e 
  403580:	62 02 fd 58 b8 5c 7a 	vfmadd231pd 0xf0(%r10,%r15,2){1to8},%zmm0,%zmm27
  403587:	1e 
  403588:	62 42 fd 58 b8 64 02 	vfmadd231pd 0xf0(%r10,%rax,1){1to8},%zmm0,%zmm28
  40358f:	1e 
  403590:	62 02 fd 58 b8 6c ba 	vfmadd231pd 0xf0(%r10,%r15,4){1to8},%zmm0,%zmm29
  403597:	1e 
  403598:	62 42 fd 58 b8 74 1a 	vfmadd231pd 0xf0(%r10,%rbx,1){1to8},%zmm0,%zmm30
  40359f:	1e 
  4035a0:	62 42 fd 58 b8 7c 42 	vfmadd231pd 0xf0(%r10,%rax,2){1to8},%zmm0,%zmm31
  4035a7:	1e 
  4035a8:	62 f1 fd 48 28 07    	vmovapd (%rdi),%zmm0
  4035ae:	62 e2 f5 58 b8 46 1f 	vfmadd231pd 0xf8(%rsi){1to8},%zmm1,%zmm16
  4035b5:	62 a2 f5 58 b8 4c 3e 	vfmadd231pd 0xf8(%rsi,%r15,1){1to8},%zmm1,%zmm17
  4035bc:	1f 
  4035bd:	62 a2 f5 58 b8 54 7e 	vfmadd231pd 0xf8(%rsi,%r15,2){1to8},%zmm1,%zmm18
  4035c4:	1f 
  4035c5:	62 e2 f5 58 b8 5c 06 	vfmadd231pd 0xf8(%rsi,%rax,1){1to8},%zmm1,%zmm19
  4035cc:	1f 
  4035cd:	62 a2 f5 58 b8 64 be 	vfmadd231pd 0xf8(%rsi,%r15,4){1to8},%zmm1,%zmm20
  4035d4:	1f 
  4035d5:	62 e2 f5 58 b8 6c 1e 	vfmadd231pd 0xf8(%rsi,%rbx,1){1to8},%zmm1,%zmm21
  4035dc:	1f 
  4035dd:	62 e2 f5 58 b8 74 46 	vfmadd231pd 0xf8(%rsi,%rax,2){1to8},%zmm1,%zmm22
  4035e4:	1f 
  4035e5:	62 a2 f5 58 b8 7c 1e 	vfmadd231pd 0xf8(%rsi,%r11,1){1to8},%zmm1,%zmm23
  4035ec:	1f 
  4035ed:	62 22 f5 58 b8 44 fe 	vfmadd231pd 0xf8(%rsi,%r15,8){1to8},%zmm1,%zmm24
  4035f4:	1f 
  4035f5:	62 42 f5 58 b8 4a 1f 	vfmadd231pd 0xf8(%r10){1to8},%zmm1,%zmm25
  4035fc:	62 02 f5 58 b8 54 3a 	vfmadd231pd 0xf8(%r10,%r15,1){1to8},%zmm1,%zmm26
  403603:	1f 
  403604:	62 02 f5 58 b8 5c 7a 	vfmadd231pd 0xf8(%r10,%r15,2){1to8},%zmm1,%zmm27
  40360b:	1f 
  40360c:	62 42 f5 58 b8 64 02 	vfmadd231pd 0xf8(%r10,%rax,1){1to8},%zmm1,%zmm28
  403613:	1f 
  403614:	62 02 f5 58 b8 6c ba 	vfmadd231pd 0xf8(%r10,%r15,4){1to8},%zmm1,%zmm29
  40361b:	1f 
  40361c:	62 42 f5 58 b8 74 1a 	vfmadd231pd 0xf8(%r10,%rbx,1){1to8},%zmm1,%zmm30
  403623:	1f 
  403624:	62 42 f5 58 b8 7c 42 	vfmadd231pd 0xf8(%r10,%rax,2){1to8},%zmm1,%zmm31
  40362b:	1f 
  40362c:	62 f1 fd 48 28 4f 04 	vmovapd 0x100(%rdi),%zmm1
  403633:	62 e2 fd 58 b8 46 20 	vfmadd231pd 0x100(%rsi){1to8},%zmm0,%zmm16
  40363a:	62 a2 fd 58 b8 4c 3e 	vfmadd231pd 0x100(%rsi,%r15,1){1to8},%zmm0,%zmm17
  403641:	20 
  403642:	62 a2 fd 58 b8 54 7e 	vfmadd231pd 0x100(%rsi,%r15,2){1to8},%zmm0,%zmm18
  403649:	20 
  40364a:	62 e2 fd 58 b8 5c 06 	vfmadd231pd 0x100(%rsi,%rax,1){1to8},%zmm0,%zmm19
  403651:	20 
  403652:	62 a2 fd 58 b8 64 be 	vfmadd231pd 0x100(%rsi,%r15,4){1to8},%zmm0,%zmm20
  403659:	20 
  40365a:	62 e2 fd 58 b8 6c 1e 	vfmadd231pd 0x100(%rsi,%rbx,1){1to8},%zmm0,%zmm21
  403661:	20 
  403662:	62 e2 fd 58 b8 74 46 	vfmadd231pd 0x100(%rsi,%rax,2){1to8},%zmm0,%zmm22
  403669:	20 
  40366a:	62 a2 fd 58 b8 7c 1e 	vfmadd231pd 0x100(%rsi,%r11,1){1to8},%zmm0,%zmm23
  403671:	20 
  403672:	62 22 fd 58 b8 44 fe 	vfmadd231pd 0x100(%rsi,%r15,8){1to8},%zmm0,%zmm24
  403679:	20 
  40367a:	62 42 fd 58 b8 4a 20 	vfmadd231pd 0x100(%r10){1to8},%zmm0,%zmm25
  403681:	62 02 fd 58 b8 54 3a 	vfmadd231pd 0x100(%r10,%r15,1){1to8},%zmm0,%zmm26
  403688:	20 
  403689:	62 02 fd 58 b8 5c 7a 	vfmadd231pd 0x100(%r10,%r15,2){1to8},%zmm0,%zmm27
  403690:	20 
  403691:	62 42 fd 58 b8 64 02 	vfmadd231pd 0x100(%r10,%rax,1){1to8},%zmm0,%zmm28
  403698:	20 
  403699:	62 02 fd 58 b8 6c ba 	vfmadd231pd 0x100(%r10,%r15,4){1to8},%zmm0,%zmm29
  4036a0:	20 
  4036a1:	62 42 fd 58 b8 74 1a 	vfmadd231pd 0x100(%r10,%rbx,1){1to8},%zmm0,%zmm30
  4036a8:	20 
  4036a9:	62 42 fd 58 b8 7c 42 	vfmadd231pd 0x100(%r10,%rax,2){1to8},%zmm0,%zmm31
  4036b0:	20 
  4036b1:	62 f1 fd 48 28 47 08 	vmovapd 0x200(%rdi),%zmm0
  4036b8:	62 e2 f5 58 b8 46 21 	vfmadd231pd 0x108(%rsi){1to8},%zmm1,%zmm16
  4036bf:	62 a2 f5 58 b8 4c 3e 	vfmadd231pd 0x108(%rsi,%r15,1){1to8},%zmm1,%zmm17
  4036c6:	21 
  4036c7:	62 a2 f5 58 b8 54 7e 	vfmadd231pd 0x108(%rsi,%r15,2){1to8},%zmm1,%zmm18
  4036ce:	21 
  4036cf:	62 e2 f5 58 b8 5c 06 	vfmadd231pd 0x108(%rsi,%rax,1){1to8},%zmm1,%zmm19
  4036d6:	21 
  4036d7:	62 a2 f5 58 b8 64 be 	vfmadd231pd 0x108(%rsi,%r15,4){1to8},%zmm1,%zmm20
  4036de:	21 
  4036df:	62 e2 f5 58 b8 6c 1e 	vfmadd231pd 0x108(%rsi,%rbx,1){1to8},%zmm1,%zmm21
  4036e6:	21 
  4036e7:	62 e2 f5 58 b8 74 46 	vfmadd231pd 0x108(%rsi,%rax,2){1to8},%zmm1,%zmm22
  4036ee:	21 
  4036ef:	62 a2 f5 58 b8 7c 1e 	vfmadd231pd 0x108(%rsi,%r11,1){1to8},%zmm1,%zmm23
  4036f6:	21 
  4036f7:	62 22 f5 58 b8 44 fe 	vfmadd231pd 0x108(%rsi,%r15,8){1to8},%zmm1,%zmm24
  4036fe:	21 
  4036ff:	62 42 f5 58 b8 4a 21 	vfmadd231pd 0x108(%r10){1to8},%zmm1,%zmm25
  403706:	62 02 f5 58 b8 54 3a 	vfmadd231pd 0x108(%r10,%r15,1){1to8},%zmm1,%zmm26
  40370d:	21 
  40370e:	62 02 f5 58 b8 5c 7a 	vfmadd231pd 0x108(%r10,%r15,2){1to8},%zmm1,%zmm27
  403715:	21 
  403716:	62 42 f5 58 b8 64 02 	vfmadd231pd 0x108(%r10,%rax,1){1to8},%zmm1,%zmm28
  40371d:	21 
  40371e:	62 02 f5 58 b8 6c ba 	vfmadd231pd 0x108(%r10,%r15,4){1to8},%zmm1,%zmm29
  403725:	21 
  403726:	62 42 f5 58 b8 74 1a 	vfmadd231pd 0x108(%r10,%rbx,1){1to8},%zmm1,%zmm30
  40372d:	21 
  40372e:	62 42 f5 58 b8 7c 42 	vfmadd231pd 0x108(%r10,%rax,2){1to8},%zmm1,%zmm31
  403735:	21 
  403736:	62 f1 fd 48 28 4f 0c 	vmovapd 0x300(%rdi),%zmm1
  40373d:	62 e2 fd 58 b8 46 22 	vfmadd231pd 0x110(%rsi){1to8},%zmm0,%zmm16
  403744:	62 a2 fd 58 b8 4c 3e 	vfmadd231pd 0x110(%rsi,%r15,1){1to8},%zmm0,%zmm17
  40374b:	22 
  40374c:	62 a2 fd 58 b8 54 7e 	vfmadd231pd 0x110(%rsi,%r15,2){1to8},%zmm0,%zmm18
  403753:	22 
  403754:	62 e2 fd 58 b8 5c 06 	vfmadd231pd 0x110(%rsi,%rax,1){1to8},%zmm0,%zmm19
  40375b:	22 
  40375c:	62 a2 fd 58 b8 64 be 	vfmadd231pd 0x110(%rsi,%r15,4){1to8},%zmm0,%zmm20
  403763:	22 
  403764:	62 e2 fd 58 b8 6c 1e 	vfmadd231pd 0x110(%rsi,%rbx,1){1to8},%zmm0,%zmm21
  40376b:	22 
  40376c:	62 e2 fd 58 b8 74 46 	vfmadd231pd 0x110(%rsi,%rax,2){1to8},%zmm0,%zmm22
  403773:	22 
  403774:	62 a2 fd 58 b8 7c 1e 	vfmadd231pd 0x110(%rsi,%r11,1){1to8},%zmm0,%zmm23
  40377b:	22 
  40377c:	62 22 fd 58 b8 44 fe 	vfmadd231pd 0x110(%rsi,%r15,8){1to8},%zmm0,%zmm24
  403783:	22 
  403784:	62 42 fd 58 b8 4a 22 	vfmadd231pd 0x110(%r10){1to8},%zmm0,%zmm25
  40378b:	62 02 fd 58 b8 54 3a 	vfmadd231pd 0x110(%r10,%r15,1){1to8},%zmm0,%zmm26
  403792:	22 
  403793:	62 02 fd 58 b8 5c 7a 	vfmadd231pd 0x110(%r10,%r15,2){1to8},%zmm0,%zmm27
  40379a:	22 
  40379b:	62 42 fd 58 b8 64 02 	vfmadd231pd 0x110(%r10,%rax,1){1to8},%zmm0,%zmm28
  4037a2:	22 
  4037a3:	62 02 fd 58 b8 6c ba 	vfmadd231pd 0x110(%r10,%r15,4){1to8},%zmm0,%zmm29
  4037aa:	22 
  4037ab:	62 42 fd 58 b8 74 1a 	vfmadd231pd 0x110(%r10,%rbx,1){1to8},%zmm0,%zmm30
  4037b2:	22 
  4037b3:	62 42 fd 58 b8 7c 42 	vfmadd231pd 0x110(%r10,%rax,2){1to8},%zmm0,%zmm31
  4037ba:	22 
  4037bb:	62 f1 fd 48 28 47 10 	vmovapd 0x400(%rdi),%zmm0
  4037c2:	62 e2 f5 58 b8 46 23 	vfmadd231pd 0x118(%rsi){1to8},%zmm1,%zmm16
  4037c9:	62 a2 f5 58 b8 4c 3e 	vfmadd231pd 0x118(%rsi,%r15,1){1to8},%zmm1,%zmm17
  4037d0:	23 
  4037d1:	62 a2 f5 58 b8 54 7e 	vfmadd231pd 0x118(%rsi,%r15,2){1to8},%zmm1,%zmm18
  4037d8:	23 
  4037d9:	62 e2 f5 58 b8 5c 06 	vfmadd231pd 0x118(%rsi,%rax,1){1to8},%zmm1,%zmm19
  4037e0:	23 
  4037e1:	62 a2 f5 58 b8 64 be 	vfmadd231pd 0x118(%rsi,%r15,4){1to8},%zmm1,%zmm20
  4037e8:	23 
  4037e9:	62 e2 f5 58 b8 6c 1e 	vfmadd231pd 0x118(%rsi,%rbx,1){1to8},%zmm1,%zmm21
  4037f0:	23 
  4037f1:	62 e2 f5 58 b8 74 46 	vfmadd231pd 0x118(%rsi,%rax,2){1to8},%zmm1,%zmm22
  4037f8:	23 
  4037f9:	62 a2 f5 58 b8 7c 1e 	vfmadd231pd 0x118(%rsi,%r11,1){1to8},%zmm1,%zmm23
  403800:	23 
  403801:	62 22 f5 58 b8 44 fe 	vfmadd231pd 0x118(%rsi,%r15,8){1to8},%zmm1,%zmm24
  403808:	23 
  403809:	62 42 f5 58 b8 4a 23 	vfmadd231pd 0x118(%r10){1to8},%zmm1,%zmm25
  403810:	62 02 f5 58 b8 54 3a 	vfmadd231pd 0x118(%r10,%r15,1){1to8},%zmm1,%zmm26
  403817:	23 
  403818:	62 02 f5 58 b8 5c 7a 	vfmadd231pd 0x118(%r10,%r15,2){1to8},%zmm1,%zmm27
  40381f:	23 
  403820:	62 42 f5 58 b8 64 02 	vfmadd231pd 0x118(%r10,%rax,1){1to8},%zmm1,%zmm28
  403827:	23 
  403828:	62 02 f5 58 b8 6c ba 	vfmadd231pd 0x118(%r10,%r15,4){1to8},%zmm1,%zmm29
  40382f:	23 
  403830:	62 42 f5 58 b8 74 1a 	vfmadd231pd 0x118(%r10,%rbx,1){1to8},%zmm1,%zmm30
  403837:	23 
  403838:	62 42 f5 58 b8 7c 42 	vfmadd231pd 0x118(%r10,%rax,2){1to8},%zmm1,%zmm31
  40383f:	23 
  403840:	62 f1 fd 48 28 4f 14 	vmovapd 0x500(%rdi),%zmm1
  403847:	62 e2 fd 58 b8 46 24 	vfmadd231pd 0x120(%rsi){1to8},%zmm0,%zmm16
  40384e:	62 a2 fd 58 b8 4c 3e 	vfmadd231pd 0x120(%rsi,%r15,1){1to8},%zmm0,%zmm17
  403855:	24 
  403856:	62 a2 fd 58 b8 54 7e 	vfmadd231pd 0x120(%rsi,%r15,2){1to8},%zmm0,%zmm18
  40385d:	24 
  40385e:	62 e2 fd 58 b8 5c 06 	vfmadd231pd 0x120(%rsi,%rax,1){1to8},%zmm0,%zmm19
  403865:	24 
  403866:	62 a2 fd 58 b8 64 be 	vfmadd231pd 0x120(%rsi,%r15,4){1to8},%zmm0,%zmm20
  40386d:	24 
  40386e:	62 e2 fd 58 b8 6c 1e 	vfmadd231pd 0x120(%rsi,%rbx,1){1to8},%zmm0,%zmm21
  403875:	24 
  403876:	62 e2 fd 58 b8 74 46 	vfmadd231pd 0x120(%rsi,%rax,2){1to8},%zmm0,%zmm22
  40387d:	24 
  40387e:	62 a2 fd 58 b8 7c 1e 	vfmadd231pd 0x120(%rsi,%r11,1){1to8},%zmm0,%zmm23
  403885:	24 
  403886:	62 22 fd 58 b8 44 fe 	vfmadd231pd 0x120(%rsi,%r15,8){1to8},%zmm0,%zmm24
  40388d:	24 
  40388e:	62 42 fd 58 b8 4a 24 	vfmadd231pd 0x120(%r10){1to8},%zmm0,%zmm25
  403895:	62 02 fd 58 b8 54 3a 	vfmadd231pd 0x120(%r10,%r15,1){1to8},%zmm0,%zmm26
  40389c:	24 
  40389d:	62 02 fd 58 b8 5c 7a 	vfmadd231pd 0x120(%r10,%r15,2){1to8},%zmm0,%zmm27
  4038a4:	24 
  4038a5:	62 42 fd 58 b8 64 02 	vfmadd231pd 0x120(%r10,%rax,1){1to8},%zmm0,%zmm28
  4038ac:	24 
  4038ad:	62 02 fd 58 b8 6c ba 	vfmadd231pd 0x120(%r10,%r15,4){1to8},%zmm0,%zmm29
  4038b4:	24 
  4038b5:	62 42 fd 58 b8 74 1a 	vfmadd231pd 0x120(%r10,%rbx,1){1to8},%zmm0,%zmm30
  4038bc:	24 
  4038bd:	62 42 fd 58 b8 7c 42 	vfmadd231pd 0x120(%r10,%rax,2){1to8},%zmm0,%zmm31
  4038c4:	24 
  4038c5:	62 f1 fd 48 28 47 18 	vmovapd 0x600(%rdi),%zmm0
  4038cc:	62 e2 f5 58 b8 46 25 	vfmadd231pd 0x128(%rsi){1to8},%zmm1,%zmm16
  4038d3:	62 a2 f5 58 b8 4c 3e 	vfmadd231pd 0x128(%rsi,%r15,1){1to8},%zmm1,%zmm17
  4038da:	25 
  4038db:	62 a2 f5 58 b8 54 7e 	vfmadd231pd 0x128(%rsi,%r15,2){1to8},%zmm1,%zmm18
  4038e2:	25 
  4038e3:	62 e2 f5 58 b8 5c 06 	vfmadd231pd 0x128(%rsi,%rax,1){1to8},%zmm1,%zmm19
  4038ea:	25 
  4038eb:	62 a2 f5 58 b8 64 be 	vfmadd231pd 0x128(%rsi,%r15,4){1to8},%zmm1,%zmm20
  4038f2:	25 
  4038f3:	62 e2 f5 58 b8 6c 1e 	vfmadd231pd 0x128(%rsi,%rbx,1){1to8},%zmm1,%zmm21
  4038fa:	25 
  4038fb:	62 e2 f5 58 b8 74 46 	vfmadd231pd 0x128(%rsi,%rax,2){1to8},%zmm1,%zmm22
  403902:	25 
  403903:	62 a2 f5 58 b8 7c 1e 	vfmadd231pd 0x128(%rsi,%r11,1){1to8},%zmm1,%zmm23
  40390a:	25 
  40390b:	62 22 f5 58 b8 44 fe 	vfmadd231pd 0x128(%rsi,%r15,8){1to8},%zmm1,%zmm24
  403912:	25 
  403913:	62 42 f5 58 b8 4a 25 	vfmadd231pd 0x128(%r10){1to8},%zmm1,%zmm25
  40391a:	62 02 f5 58 b8 54 3a 	vfmadd231pd 0x128(%r10,%r15,1){1to8},%zmm1,%zmm26
  403921:	25 
  403922:	62 02 f5 58 b8 5c 7a 	vfmadd231pd 0x128(%r10,%r15,2){1to8},%zmm1,%zmm27
  403929:	25 
  40392a:	62 42 f5 58 b8 64 02 	vfmadd231pd 0x128(%r10,%rax,1){1to8},%zmm1,%zmm28
  403931:	25 
  403932:	62 02 f5 58 b8 6c ba 	vfmadd231pd 0x128(%r10,%r15,4){1to8},%zmm1,%zmm29
  403939:	25 
  40393a:	62 42 f5 58 b8 74 1a 	vfmadd231pd 0x128(%r10,%rbx,1){1to8},%zmm1,%zmm30
  403941:	25 
  403942:	62 42 f5 58 b8 7c 42 	vfmadd231pd 0x128(%r10,%rax,2){1to8},%zmm1,%zmm31
  403949:	25 
  40394a:	62 f1 fd 48 28 4f 1c 	vmovapd 0x700(%rdi),%zmm1
  403951:	62 e2 fd 58 b8 46 26 	vfmadd231pd 0x130(%rsi){1to8},%zmm0,%zmm16
  403958:	62 a2 fd 58 b8 4c 3e 	vfmadd231pd 0x130(%rsi,%r15,1){1to8},%zmm0,%zmm17
  40395f:	26 
  403960:	62 a2 fd 58 b8 54 7e 	vfmadd231pd 0x130(%rsi,%r15,2){1to8},%zmm0,%zmm18
  403967:	26 
  403968:	62 e2 fd 58 b8 5c 06 	vfmadd231pd 0x130(%rsi,%rax,1){1to8},%zmm0,%zmm19
  40396f:	26 
  403970:	62 a2 fd 58 b8 64 be 	vfmadd231pd 0x130(%rsi,%r15,4){1to8},%zmm0,%zmm20
  403977:	26 
  403978:	62 e2 fd 58 b8 6c 1e 	vfmadd231pd 0x130(%rsi,%rbx,1){1to8},%zmm0,%zmm21
  40397f:	26 
  403980:	62 e2 fd 58 b8 74 46 	vfmadd231pd 0x130(%rsi,%rax,2){1to8},%zmm0,%zmm22
  403987:	26 
  403988:	62 a2 fd 58 b8 7c 1e 	vfmadd231pd 0x130(%rsi,%r11,1){1to8},%zmm0,%zmm23
  40398f:	26 
  403990:	62 22 fd 58 b8 44 fe 	vfmadd231pd 0x130(%rsi,%r15,8){1to8},%zmm0,%zmm24
  403997:	26 
  403998:	62 42 fd 58 b8 4a 26 	vfmadd231pd 0x130(%r10){1to8},%zmm0,%zmm25
  40399f:	62 02 fd 58 b8 54 3a 	vfmadd231pd 0x130(%r10,%r15,1){1to8},%zmm0,%zmm26
  4039a6:	26 
  4039a7:	62 02 fd 58 b8 5c 7a 	vfmadd231pd 0x130(%r10,%r15,2){1to8},%zmm0,%zmm27
  4039ae:	26 
  4039af:	62 42 fd 58 b8 64 02 	vfmadd231pd 0x130(%r10,%rax,1){1to8},%zmm0,%zmm28
  4039b6:	26 
  4039b7:	62 02 fd 58 b8 6c ba 	vfmadd231pd 0x130(%r10,%r15,4){1to8},%zmm0,%zmm29
  4039be:	26 
  4039bf:	62 42 fd 58 b8 74 1a 	vfmadd231pd 0x130(%r10,%rbx,1){1to8},%zmm0,%zmm30
  4039c6:	26 
  4039c7:	62 42 fd 58 b8 7c 42 	vfmadd231pd 0x130(%r10,%rax,2){1to8},%zmm0,%zmm31
  4039ce:	26 
  4039cf:	62 f1 fd 48 28 47 20 	vmovapd 0x800(%rdi),%zmm0
  4039d6:	62 e2 f5 58 b8 46 27 	vfmadd231pd 0x138(%rsi){1to8},%zmm1,%zmm16
  4039dd:	62 a2 f5 58 b8 4c 3e 	vfmadd231pd 0x138(%rsi,%r15,1){1to8},%zmm1,%zmm17
  4039e4:	27 
  4039e5:	62 a2 f5 58 b8 54 7e 	vfmadd231pd 0x138(%rsi,%r15,2){1to8},%zmm1,%zmm18
  4039ec:	27 
  4039ed:	62 e2 f5 58 b8 5c 06 	vfmadd231pd 0x138(%rsi,%rax,1){1to8},%zmm1,%zmm19
  4039f4:	27 
  4039f5:	62 a2 f5 58 b8 64 be 	vfmadd231pd 0x138(%rsi,%r15,4){1to8},%zmm1,%zmm20
  4039fc:	27 
  4039fd:	62 e2 f5 58 b8 6c 1e 	vfmadd231pd 0x138(%rsi,%rbx,1){1to8},%zmm1,%zmm21
  403a04:	27 
  403a05:	62 e2 f5 58 b8 74 46 	vfmadd231pd 0x138(%rsi,%rax,2){1to8},%zmm1,%zmm22
  403a0c:	27 
  403a0d:	62 a2 f5 58 b8 7c 1e 	vfmadd231pd 0x138(%rsi,%r11,1){1to8},%zmm1,%zmm23
  403a14:	27 
  403a15:	62 22 f5 58 b8 44 fe 	vfmadd231pd 0x138(%rsi,%r15,8){1to8},%zmm1,%zmm24
  403a1c:	27 
  403a1d:	62 42 f5 58 b8 4a 27 	vfmadd231pd 0x138(%r10){1to8},%zmm1,%zmm25
  403a24:	62 02 f5 58 b8 54 3a 	vfmadd231pd 0x138(%r10,%r15,1){1to8},%zmm1,%zmm26
  403a2b:	27 
  403a2c:	62 02 f5 58 b8 5c 7a 	vfmadd231pd 0x138(%r10,%r15,2){1to8},%zmm1,%zmm27
  403a33:	27 
  403a34:	62 42 f5 58 b8 64 02 	vfmadd231pd 0x138(%r10,%rax,1){1to8},%zmm1,%zmm28
  403a3b:	27 
  403a3c:	62 02 f5 58 b8 6c ba 	vfmadd231pd 0x138(%r10,%r15,4){1to8},%zmm1,%zmm29
  403a43:	27 
  403a44:	62 42 f5 58 b8 74 1a 	vfmadd231pd 0x138(%r10,%rbx,1){1to8},%zmm1,%zmm30
  403a4b:	27 
  403a4c:	62 42 f5 58 b8 7c 42 	vfmadd231pd 0x138(%r10,%rax,2){1to8},%zmm1,%zmm31
  403a53:	27 
  403a54:	62 f1 fd 48 28 4f 24 	vmovapd 0x900(%rdi),%zmm1
  403a5b:	62 e2 fd 58 b8 46 28 	vfmadd231pd 0x140(%rsi){1to8},%zmm0,%zmm16
  403a62:	62 a2 fd 58 b8 4c 3e 	vfmadd231pd 0x140(%rsi,%r15,1){1to8},%zmm0,%zmm17
  403a69:	28 
  403a6a:	62 a2 fd 58 b8 54 7e 	vfmadd231pd 0x140(%rsi,%r15,2){1to8},%zmm0,%zmm18
  403a71:	28 
  403a72:	62 e2 fd 58 b8 5c 06 	vfmadd231pd 0x140(%rsi,%rax,1){1to8},%zmm0,%zmm19
  403a79:	28 
  403a7a:	62 a2 fd 58 b8 64 be 	vfmadd231pd 0x140(%rsi,%r15,4){1to8},%zmm0,%zmm20
  403a81:	28 
  403a82:	62 e2 fd 58 b8 6c 1e 	vfmadd231pd 0x140(%rsi,%rbx,1){1to8},%zmm0,%zmm21
  403a89:	28 
  403a8a:	62 e2 fd 58 b8 74 46 	vfmadd231pd 0x140(%rsi,%rax,2){1to8},%zmm0,%zmm22
  403a91:	28 
  403a92:	62 a2 fd 58 b8 7c 1e 	vfmadd231pd 0x140(%rsi,%r11,1){1to8},%zmm0,%zmm23
  403a99:	28 
  403a9a:	62 22 fd 58 b8 44 fe 	vfmadd231pd 0x140(%rsi,%r15,8){1to8},%zmm0,%zmm24
  403aa1:	28 
  403aa2:	62 42 fd 58 b8 4a 28 	vfmadd231pd 0x140(%r10){1to8},%zmm0,%zmm25
  403aa9:	62 02 fd 58 b8 54 3a 	vfmadd231pd 0x140(%r10,%r15,1){1to8},%zmm0,%zmm26
  403ab0:	28 
  403ab1:	62 02 fd 58 b8 5c 7a 	vfmadd231pd 0x140(%r10,%r15,2){1to8},%zmm0,%zmm27
  403ab8:	28 
  403ab9:	62 42 fd 58 b8 64 02 	vfmadd231pd 0x140(%r10,%rax,1){1to8},%zmm0,%zmm28
  403ac0:	28 
  403ac1:	62 02 fd 58 b8 6c ba 	vfmadd231pd 0x140(%r10,%r15,4){1to8},%zmm0,%zmm29
  403ac8:	28 
  403ac9:	62 42 fd 58 b8 74 1a 	vfmadd231pd 0x140(%r10,%rbx,1){1to8},%zmm0,%zmm30
  403ad0:	28 
  403ad1:	62 42 fd 58 b8 7c 42 	vfmadd231pd 0x140(%r10,%rax,2){1to8},%zmm0,%zmm31
  403ad8:	28 
  403ad9:	62 f1 fd 48 28 47 28 	vmovapd 0xa00(%rdi),%zmm0
  403ae0:	62 e2 f5 58 b8 46 29 	vfmadd231pd 0x148(%rsi){1to8},%zmm1,%zmm16
  403ae7:	62 a2 f5 58 b8 4c 3e 	vfmadd231pd 0x148(%rsi,%r15,1){1to8},%zmm1,%zmm17
  403aee:	29 
  403aef:	62 a2 f5 58 b8 54 7e 	vfmadd231pd 0x148(%rsi,%r15,2){1to8},%zmm1,%zmm18
  403af6:	29 
  403af7:	62 e2 f5 58 b8 5c 06 	vfmadd231pd 0x148(%rsi,%rax,1){1to8},%zmm1,%zmm19
  403afe:	29 
  403aff:	62 a2 f5 58 b8 64 be 	vfmadd231pd 0x148(%rsi,%r15,4){1to8},%zmm1,%zmm20
  403b06:	29 
  403b07:	62 e2 f5 58 b8 6c 1e 	vfmadd231pd 0x148(%rsi,%rbx,1){1to8},%zmm1,%zmm21
  403b0e:	29 
  403b0f:	62 e2 f5 58 b8 74 46 	vfmadd231pd 0x148(%rsi,%rax,2){1to8},%zmm1,%zmm22
  403b16:	29 
  403b17:	62 a2 f5 58 b8 7c 1e 	vfmadd231pd 0x148(%rsi,%r11,1){1to8},%zmm1,%zmm23
  403b1e:	29 
  403b1f:	62 22 f5 58 b8 44 fe 	vfmadd231pd 0x148(%rsi,%r15,8){1to8},%zmm1,%zmm24
  403b26:	29 
  403b27:	62 42 f5 58 b8 4a 29 	vfmadd231pd 0x148(%r10){1to8},%zmm1,%zmm25
  403b2e:	62 02 f5 58 b8 54 3a 	vfmadd231pd 0x148(%r10,%r15,1){1to8},%zmm1,%zmm26
  403b35:	29 
  403b36:	62 02 f5 58 b8 5c 7a 	vfmadd231pd 0x148(%r10,%r15,2){1to8},%zmm1,%zmm27
  403b3d:	29 
  403b3e:	62 42 f5 58 b8 64 02 	vfmadd231pd 0x148(%r10,%rax,1){1to8},%zmm1,%zmm28
  403b45:	29 
  403b46:	62 02 f5 58 b8 6c ba 	vfmadd231pd 0x148(%r10,%r15,4){1to8},%zmm1,%zmm29
  403b4d:	29 
  403b4e:	62 42 f5 58 b8 74 1a 	vfmadd231pd 0x148(%r10,%rbx,1){1to8},%zmm1,%zmm30
  403b55:	29 
  403b56:	62 42 f5 58 b8 7c 42 	vfmadd231pd 0x148(%r10,%rax,2){1to8},%zmm1,%zmm31
  403b5d:	29 
  403b5e:	62 f1 fd 48 28 4f 2c 	vmovapd 0xb00(%rdi),%zmm1
  403b65:	62 e2 fd 58 b8 46 2a 	vfmadd231pd 0x150(%rsi){1to8},%zmm0,%zmm16
  403b6c:	62 a2 fd 58 b8 4c 3e 	vfmadd231pd 0x150(%rsi,%r15,1){1to8},%zmm0,%zmm17
  403b73:	2a 
  403b74:	62 a2 fd 58 b8 54 7e 	vfmadd231pd 0x150(%rsi,%r15,2){1to8},%zmm0,%zmm18
  403b7b:	2a 
  403b7c:	62 e2 fd 58 b8 5c 06 	vfmadd231pd 0x150(%rsi,%rax,1){1to8},%zmm0,%zmm19
  403b83:	2a 
  403b84:	62 a2 fd 58 b8 64 be 	vfmadd231pd 0x150(%rsi,%r15,4){1to8},%zmm0,%zmm20
  403b8b:	2a 
  403b8c:	62 e2 fd 58 b8 6c 1e 	vfmadd231pd 0x150(%rsi,%rbx,1){1to8},%zmm0,%zmm21
  403b93:	2a 
  403b94:	62 e2 fd 58 b8 74 46 	vfmadd231pd 0x150(%rsi,%rax,2){1to8},%zmm0,%zmm22
  403b9b:	2a 
  403b9c:	62 a2 fd 58 b8 7c 1e 	vfmadd231pd 0x150(%rsi,%r11,1){1to8},%zmm0,%zmm23
  403ba3:	2a 
  403ba4:	62 22 fd 58 b8 44 fe 	vfmadd231pd 0x150(%rsi,%r15,8){1to8},%zmm0,%zmm24
  403bab:	2a 
  403bac:	62 42 fd 58 b8 4a 2a 	vfmadd231pd 0x150(%r10){1to8},%zmm0,%zmm25
  403bb3:	62 02 fd 58 b8 54 3a 	vfmadd231pd 0x150(%r10,%r15,1){1to8},%zmm0,%zmm26
  403bba:	2a 
  403bbb:	62 02 fd 58 b8 5c 7a 	vfmadd231pd 0x150(%r10,%r15,2){1to8},%zmm0,%zmm27
  403bc2:	2a 
  403bc3:	62 42 fd 58 b8 64 02 	vfmadd231pd 0x150(%r10,%rax,1){1to8},%zmm0,%zmm28
  403bca:	2a 
  403bcb:	62 02 fd 58 b8 6c ba 	vfmadd231pd 0x150(%r10,%r15,4){1to8},%zmm0,%zmm29
  403bd2:	2a 
  403bd3:	62 42 fd 58 b8 74 1a 	vfmadd231pd 0x150(%r10,%rbx,1){1to8},%zmm0,%zmm30
  403bda:	2a 
  403bdb:	62 42 fd 58 b8 7c 42 	vfmadd231pd 0x150(%r10,%rax,2){1to8},%zmm0,%zmm31
  403be2:	2a 
  403be3:	62 f1 fd 48 28 47 30 	vmovapd 0xc00(%rdi),%zmm0
  403bea:	62 e2 f5 58 b8 46 2b 	vfmadd231pd 0x158(%rsi){1to8},%zmm1,%zmm16
  403bf1:	62 a2 f5 58 b8 4c 3e 	vfmadd231pd 0x158(%rsi,%r15,1){1to8},%zmm1,%zmm17
  403bf8:	2b 
  403bf9:	62 a2 f5 58 b8 54 7e 	vfmadd231pd 0x158(%rsi,%r15,2){1to8},%zmm1,%zmm18
  403c00:	2b 
  403c01:	62 e2 f5 58 b8 5c 06 	vfmadd231pd 0x158(%rsi,%rax,1){1to8},%zmm1,%zmm19
  403c08:	2b 
  403c09:	62 a2 f5 58 b8 64 be 	vfmadd231pd 0x158(%rsi,%r15,4){1to8},%zmm1,%zmm20
  403c10:	2b 
  403c11:	62 e2 f5 58 b8 6c 1e 	vfmadd231pd 0x158(%rsi,%rbx,1){1to8},%zmm1,%zmm21
  403c18:	2b 
  403c19:	62 e2 f5 58 b8 74 46 	vfmadd231pd 0x158(%rsi,%rax,2){1to8},%zmm1,%zmm22
  403c20:	2b 
  403c21:	62 a2 f5 58 b8 7c 1e 	vfmadd231pd 0x158(%rsi,%r11,1){1to8},%zmm1,%zmm23
  403c28:	2b 
  403c29:	62 22 f5 58 b8 44 fe 	vfmadd231pd 0x158(%rsi,%r15,8){1to8},%zmm1,%zmm24
  403c30:	2b 
  403c31:	62 42 f5 58 b8 4a 2b 	vfmadd231pd 0x158(%r10){1to8},%zmm1,%zmm25
  403c38:	62 02 f5 58 b8 54 3a 	vfmadd231pd 0x158(%r10,%r15,1){1to8},%zmm1,%zmm26
  403c3f:	2b 
  403c40:	62 02 f5 58 b8 5c 7a 	vfmadd231pd 0x158(%r10,%r15,2){1to8},%zmm1,%zmm27
  403c47:	2b 
  403c48:	62 42 f5 58 b8 64 02 	vfmadd231pd 0x158(%r10,%rax,1){1to8},%zmm1,%zmm28
  403c4f:	2b 
  403c50:	62 02 f5 58 b8 6c ba 	vfmadd231pd 0x158(%r10,%r15,4){1to8},%zmm1,%zmm29
  403c57:	2b 
  403c58:	62 42 f5 58 b8 74 1a 	vfmadd231pd 0x158(%r10,%rbx,1){1to8},%zmm1,%zmm30
  403c5f:	2b 
  403c60:	62 42 f5 58 b8 7c 42 	vfmadd231pd 0x158(%r10,%rax,2){1to8},%zmm1,%zmm31
  403c67:	2b 
  403c68:	62 f1 fd 48 28 4f 34 	vmovapd 0xd00(%rdi),%zmm1
  403c6f:	62 e2 fd 58 b8 46 2c 	vfmadd231pd 0x160(%rsi){1to8},%zmm0,%zmm16
  403c76:	62 a2 fd 58 b8 4c 3e 	vfmadd231pd 0x160(%rsi,%r15,1){1to8},%zmm0,%zmm17
  403c7d:	2c 
  403c7e:	62 a2 fd 58 b8 54 7e 	vfmadd231pd 0x160(%rsi,%r15,2){1to8},%zmm0,%zmm18
  403c85:	2c 
  403c86:	62 e2 fd 58 b8 5c 06 	vfmadd231pd 0x160(%rsi,%rax,1){1to8},%zmm0,%zmm19
  403c8d:	2c 
  403c8e:	62 a2 fd 58 b8 64 be 	vfmadd231pd 0x160(%rsi,%r15,4){1to8},%zmm0,%zmm20
  403c95:	2c 
  403c96:	62 e2 fd 58 b8 6c 1e 	vfmadd231pd 0x160(%rsi,%rbx,1){1to8},%zmm0,%zmm21
  403c9d:	2c 
  403c9e:	62 e2 fd 58 b8 74 46 	vfmadd231pd 0x160(%rsi,%rax,2){1to8},%zmm0,%zmm22
  403ca5:	2c 
  403ca6:	62 a2 fd 58 b8 7c 1e 	vfmadd231pd 0x160(%rsi,%r11,1){1to8},%zmm0,%zmm23
  403cad:	2c 
  403cae:	62 22 fd 58 b8 44 fe 	vfmadd231pd 0x160(%rsi,%r15,8){1to8},%zmm0,%zmm24
  403cb5:	2c 
  403cb6:	62 42 fd 58 b8 4a 2c 	vfmadd231pd 0x160(%r10){1to8},%zmm0,%zmm25
  403cbd:	62 02 fd 58 b8 54 3a 	vfmadd231pd 0x160(%r10,%r15,1){1to8},%zmm0,%zmm26
  403cc4:	2c 
  403cc5:	62 02 fd 58 b8 5c 7a 	vfmadd231pd 0x160(%r10,%r15,2){1to8},%zmm0,%zmm27
  403ccc:	2c 
  403ccd:	62 42 fd 58 b8 64 02 	vfmadd231pd 0x160(%r10,%rax,1){1to8},%zmm0,%zmm28
  403cd4:	2c 
  403cd5:	62 02 fd 58 b8 6c ba 	vfmadd231pd 0x160(%r10,%r15,4){1to8},%zmm0,%zmm29
  403cdc:	2c 
  403cdd:	62 42 fd 58 b8 74 1a 	vfmadd231pd 0x160(%r10,%rbx,1){1to8},%zmm0,%zmm30
  403ce4:	2c 
  403ce5:	62 42 fd 58 b8 7c 42 	vfmadd231pd 0x160(%r10,%rax,2){1to8},%zmm0,%zmm31
  403cec:	2c 
  403ced:	62 f1 fd 48 28 47 38 	vmovapd 0xe00(%rdi),%zmm0
  403cf4:	62 e2 f5 58 b8 46 2d 	vfmadd231pd 0x168(%rsi){1to8},%zmm1,%zmm16
  403cfb:	62 a2 f5 58 b8 4c 3e 	vfmadd231pd 0x168(%rsi,%r15,1){1to8},%zmm1,%zmm17
  403d02:	2d 
  403d03:	62 a2 f5 58 b8 54 7e 	vfmadd231pd 0x168(%rsi,%r15,2){1to8},%zmm1,%zmm18
  403d0a:	2d 
  403d0b:	62 e2 f5 58 b8 5c 06 	vfmadd231pd 0x168(%rsi,%rax,1){1to8},%zmm1,%zmm19
  403d12:	2d 
  403d13:	62 a2 f5 58 b8 64 be 	vfmadd231pd 0x168(%rsi,%r15,4){1to8},%zmm1,%zmm20
  403d1a:	2d 
  403d1b:	62 e2 f5 58 b8 6c 1e 	vfmadd231pd 0x168(%rsi,%rbx,1){1to8},%zmm1,%zmm21
  403d22:	2d 
  403d23:	62 e2 f5 58 b8 74 46 	vfmadd231pd 0x168(%rsi,%rax,2){1to8},%zmm1,%zmm22
  403d2a:	2d 
  403d2b:	62 a2 f5 58 b8 7c 1e 	vfmadd231pd 0x168(%rsi,%r11,1){1to8},%zmm1,%zmm23
  403d32:	2d 
  403d33:	62 22 f5 58 b8 44 fe 	vfmadd231pd 0x168(%rsi,%r15,8){1to8},%zmm1,%zmm24
  403d3a:	2d 
  403d3b:	62 42 f5 58 b8 4a 2d 	vfmadd231pd 0x168(%r10){1to8},%zmm1,%zmm25
  403d42:	62 02 f5 58 b8 54 3a 	vfmadd231pd 0x168(%r10,%r15,1){1to8},%zmm1,%zmm26
  403d49:	2d 
  403d4a:	62 02 f5 58 b8 5c 7a 	vfmadd231pd 0x168(%r10,%r15,2){1to8},%zmm1,%zmm27
  403d51:	2d 
  403d52:	62 42 f5 58 b8 64 02 	vfmadd231pd 0x168(%r10,%rax,1){1to8},%zmm1,%zmm28
  403d59:	2d 
  403d5a:	62 02 f5 58 b8 6c ba 	vfmadd231pd 0x168(%r10,%r15,4){1to8},%zmm1,%zmm29
  403d61:	2d 
  403d62:	62 42 f5 58 b8 74 1a 	vfmadd231pd 0x168(%r10,%rbx,1){1to8},%zmm1,%zmm30
  403d69:	2d 
  403d6a:	62 42 f5 58 b8 7c 42 	vfmadd231pd 0x168(%r10,%rax,2){1to8},%zmm1,%zmm31
  403d71:	2d 
  403d72:	62 f1 fd 48 28 4f 3c 	vmovapd 0xf00(%rdi),%zmm1
  403d79:	62 e2 fd 58 b8 46 2e 	vfmadd231pd 0x170(%rsi){1to8},%zmm0,%zmm16
  403d80:	62 a2 fd 58 b8 4c 3e 	vfmadd231pd 0x170(%rsi,%r15,1){1to8},%zmm0,%zmm17
  403d87:	2e 
  403d88:	62 a2 fd 58 b8 54 7e 	vfmadd231pd 0x170(%rsi,%r15,2){1to8},%zmm0,%zmm18
  403d8f:	2e 
  403d90:	62 e2 fd 58 b8 5c 06 	vfmadd231pd 0x170(%rsi,%rax,1){1to8},%zmm0,%zmm19
  403d97:	2e 
  403d98:	62 a2 fd 58 b8 64 be 	vfmadd231pd 0x170(%rsi,%r15,4){1to8},%zmm0,%zmm20
  403d9f:	2e 
  403da0:	62 e2 fd 58 b8 6c 1e 	vfmadd231pd 0x170(%rsi,%rbx,1){1to8},%zmm0,%zmm21
  403da7:	2e 
  403da8:	62 e2 fd 58 b8 74 46 	vfmadd231pd 0x170(%rsi,%rax,2){1to8},%zmm0,%zmm22
  403daf:	2e 
  403db0:	62 a2 fd 58 b8 7c 1e 	vfmadd231pd 0x170(%rsi,%r11,1){1to8},%zmm0,%zmm23
  403db7:	2e 
  403db8:	62 22 fd 58 b8 44 fe 	vfmadd231pd 0x170(%rsi,%r15,8){1to8},%zmm0,%zmm24
  403dbf:	2e 
  403dc0:	62 42 fd 58 b8 4a 2e 	vfmadd231pd 0x170(%r10){1to8},%zmm0,%zmm25
  403dc7:	62 02 fd 58 b8 54 3a 	vfmadd231pd 0x170(%r10,%r15,1){1to8},%zmm0,%zmm26
  403dce:	2e 
  403dcf:	62 02 fd 58 b8 5c 7a 	vfmadd231pd 0x170(%r10,%r15,2){1to8},%zmm0,%zmm27
  403dd6:	2e 
  403dd7:	62 42 fd 58 b8 64 02 	vfmadd231pd 0x170(%r10,%rax,1){1to8},%zmm0,%zmm28
  403dde:	2e 
  403ddf:	62 02 fd 58 b8 6c ba 	vfmadd231pd 0x170(%r10,%r15,4){1to8},%zmm0,%zmm29
  403de6:	2e 
  403de7:	62 42 fd 58 b8 74 1a 	vfmadd231pd 0x170(%r10,%rbx,1){1to8},%zmm0,%zmm30
  403dee:	2e 
  403def:	62 42 fd 58 b8 7c 42 	vfmadd231pd 0x170(%r10,%rax,2){1to8},%zmm0,%zmm31
  403df6:	2e 
  403df7:	62 e2 f5 58 b8 46 2f 	vfmadd231pd 0x178(%rsi){1to8},%zmm1,%zmm16
  403dfe:	62 a2 f5 58 b8 4c 3e 	vfmadd231pd 0x178(%rsi,%r15,1){1to8},%zmm1,%zmm17
  403e05:	2f 
  403e06:	62 a2 f5 58 b8 54 7e 	vfmadd231pd 0x178(%rsi,%r15,2){1to8},%zmm1,%zmm18
  403e0d:	2f 
  403e0e:	62 e2 f5 58 b8 5c 06 	vfmadd231pd 0x178(%rsi,%rax,1){1to8},%zmm1,%zmm19
  403e15:	2f 
  403e16:	62 a2 f5 58 b8 64 be 	vfmadd231pd 0x178(%rsi,%r15,4){1to8},%zmm1,%zmm20
  403e1d:	2f 
  403e1e:	62 e2 f5 58 b8 6c 1e 	vfmadd231pd 0x178(%rsi,%rbx,1){1to8},%zmm1,%zmm21
  403e25:	2f 
  403e26:	62 e2 f5 58 b8 74 46 	vfmadd231pd 0x178(%rsi,%rax,2){1to8},%zmm1,%zmm22
  403e2d:	2f 
  403e2e:	62 a2 f5 58 b8 7c 1e 	vfmadd231pd 0x178(%rsi,%r11,1){1to8},%zmm1,%zmm23
  403e35:	2f 
  403e36:	62 22 f5 58 b8 44 fe 	vfmadd231pd 0x178(%rsi,%r15,8){1to8},%zmm1,%zmm24
  403e3d:	2f 
  403e3e:	62 42 f5 58 b8 4a 2f 	vfmadd231pd 0x178(%r10){1to8},%zmm1,%zmm25
  403e45:	62 02 f5 58 b8 54 3a 	vfmadd231pd 0x178(%r10,%r15,1){1to8},%zmm1,%zmm26
  403e4c:	2f 
  403e4d:	62 02 f5 58 b8 5c 7a 	vfmadd231pd 0x178(%r10,%r15,2){1to8},%zmm1,%zmm27
  403e54:	2f 
  403e55:	62 42 f5 58 b8 64 02 	vfmadd231pd 0x178(%r10,%rax,1){1to8},%zmm1,%zmm28
  403e5c:	2f 
  403e5d:	62 02 f5 58 b8 6c ba 	vfmadd231pd 0x178(%r10,%r15,4){1to8},%zmm1,%zmm29
  403e64:	2f 
  403e65:	62 42 f5 58 b8 74 1a 	vfmadd231pd 0x178(%r10,%rbx,1){1to8},%zmm1,%zmm30
  403e6c:	2f 
  403e6d:	62 42 f5 58 b8 7c 42 	vfmadd231pd 0x178(%r10,%rax,2){1to8},%zmm1,%zmm31
  403e74:	2f 
  403e75:	48 81 ef 00 20 00 00 	sub    $0x2000,%rdi
  403e7c:	62 e1 fd 48 29 02    	vmovapd %zmm16,(%rdx)
  403e82:	62 e1 fd 48 29 4a 04 	vmovapd %zmm17,0x100(%rdx)
  403e89:	62 e1 fd 48 29 52 08 	vmovapd %zmm18,0x200(%rdx)
  403e90:	62 e1 fd 48 29 5a 0c 	vmovapd %zmm19,0x300(%rdx)
  403e97:	62 e1 fd 48 29 62 10 	vmovapd %zmm20,0x400(%rdx)
  403e9e:	62 e1 fd 48 29 6a 14 	vmovapd %zmm21,0x500(%rdx)
  403ea5:	62 e1 fd 48 29 72 18 	vmovapd %zmm22,0x600(%rdx)
  403eac:	62 e1 fd 48 29 7a 1c 	vmovapd %zmm23,0x700(%rdx)
  403eb3:	62 61 fd 48 29 42 20 	vmovapd %zmm24,0x800(%rdx)
  403eba:	62 61 fd 48 29 4a 24 	vmovapd %zmm25,0x900(%rdx)
  403ec1:	62 61 fd 48 29 52 28 	vmovapd %zmm26,0xa00(%rdx)
  403ec8:	62 61 fd 48 29 5a 2c 	vmovapd %zmm27,0xb00(%rdx)
  403ecf:	62 61 fd 48 29 62 30 	vmovapd %zmm28,0xc00(%rdx)
  403ed6:	62 61 fd 48 29 6a 34 	vmovapd %zmm29,0xd00(%rdx)
  403edd:	62 61 fd 48 29 72 38 	vmovapd %zmm30,0xe00(%rdx)
  403ee4:	62 61 fd 48 29 7a 3c 	vmovapd %zmm31,0xf00(%rdx)
  403eeb:	48 83 c2 40          	add    $0x40,%rdx
  403eef:	48 83 c7 40          	add    $0x40,%rdi
  403ef3:	49 83 fc 20          	cmp    $0x20,%r12
  403ef7:	0f 8c fa e5 ff ff    	jl     4024f7 <_Z25jump_penalty_2_20_libxsmmPKdS0_Pd+0x47>
  403efd:	48 81 c2 00 0f 00 00 	add    $0xf00,%rdx
  403f04:	48 81 c6 00 18 00 00 	add    $0x1800,%rsi
  403f0b:	48 81 ef 00 01 00 00 	sub    $0x100,%rdi
  403f12:	49 83 fd 20          	cmp    $0x20,%r13
  403f16:	0f 8c d0 e5 ff ff    	jl     4024ec <_Z25jump_penalty_2_20_libxsmmPKdS0_Pd+0x3c>
  403f1c:	5b                   	pop    %rbx
  403f1d:	41 5c                	pop    %r12
  403f1f:	41 5d                	pop    %r13
  403f21:	41 5e                	pop    %r14
  403f23:	41 5f                	pop    %r15
  403f25:	c3                   	retq   
  403f26:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  403f2d:	00 00 00 

0000000000403f30 <_Z26jump_penalty_2_20_unrolledPKdS0_Pd>:
  403f30:	41 54                	push   %r12
  403f32:	48 89 7c 24 f8       	mov    %rdi,-0x8(%rsp)
  403f37:	48 89 74 24 f0       	mov    %rsi,-0x10(%rsp)
  403f3c:	48 89 54 24 e8       	mov    %rdx,-0x18(%rsp)
  403f41:	48 8b 7c 24 f8       	mov    -0x8(%rsp),%rdi
  403f46:	48 8b 74 24 f0       	mov    -0x10(%rsp),%rsi
  403f4b:	48 8b 54 24 e8       	mov    -0x18(%rsp),%rdx
  403f50:	49 c7 c4 00 00 00 00 	mov    $0x0,%r12

0000000000403f57 <LOOP_TOP_0_1892>:
  403f57:	62 e1 fd 48 28 02    	vmovapd (%rdx),%zmm16
  403f5d:	62 e1 fd 48 28 4a 04 	vmovapd 0x100(%rdx),%zmm17
  403f64:	62 e1 fd 48 28 52 08 	vmovapd 0x200(%rdx),%zmm18
  403f6b:	62 e1 fd 48 28 5a 0c 	vmovapd 0x300(%rdx),%zmm19
  403f72:	62 e1 fd 48 28 62 10 	vmovapd 0x400(%rdx),%zmm20
  403f79:	62 e1 fd 48 28 6a 14 	vmovapd 0x500(%rdx),%zmm21
  403f80:	62 e1 fd 48 28 72 18 	vmovapd 0x600(%rdx),%zmm22
  403f87:	62 e1 fd 48 28 7a 1c 	vmovapd 0x700(%rdx),%zmm23
  403f8e:	62 61 fd 48 28 42 20 	vmovapd 0x800(%rdx),%zmm24
  403f95:	62 61 fd 48 28 4a 24 	vmovapd 0x900(%rdx),%zmm25
  403f9c:	62 61 fd 48 28 52 28 	vmovapd 0xa00(%rdx),%zmm26
  403fa3:	62 61 fd 48 28 5a 2c 	vmovapd 0xb00(%rdx),%zmm27
  403faa:	62 61 fd 48 28 62 30 	vmovapd 0xc00(%rdx),%zmm28
  403fb1:	62 61 fd 48 28 6a 34 	vmovapd 0xd00(%rdx),%zmm29
  403fb8:	62 61 fd 48 28 72 38 	vmovapd 0xe00(%rdx),%zmm30
  403fbf:	62 61 fd 48 28 7a 3c 	vmovapd 0xf00(%rdx),%zmm31
  403fc6:	62 f1 fd 48 28 8f 00 	vmovapd 0x2100(%rdi),%zmm1
  403fcd:	21 00 00 
  403fd0:	62 f1 fd 48 28 97 00 	vmovapd 0x2200(%rdi),%zmm2
  403fd7:	22 00 00 
  403fda:	62 f1 fd 48 28 af 00 	vmovapd 0x2500(%rdi),%zmm5
  403fe1:	25 00 00 
  403fe4:	62 71 fd 48 28 9f 00 	vmovapd 0x2b00(%rdi),%zmm11
  403feb:	2b 00 00 
  403fee:	62 71 fd 48 28 a7 00 	vmovapd 0x2c00(%rdi),%zmm12
  403ff5:	2c 00 00 
  403ff8:	62 71 fd 48 28 af 00 	vmovapd 0x2d00(%rdi),%zmm13
  403fff:	2d 00 00 
  404002:	62 71 fd 48 28 b7 00 	vmovapd 0x2e00(%rdi),%zmm14
  404009:	2e 00 00 
  40400c:	62 e2 f5 58 b8 6e 03 	vfmadd231pd 0x18(%rsi){1to8},%zmm1,%zmm21
  404013:	62 e2 f5 58 b8 7e 05 	vfmadd231pd 0x28(%rsi){1to8},%zmm1,%zmm23
  40401a:	62 62 f5 58 b8 66 07 	vfmadd231pd 0x38(%rsi){1to8},%zmm1,%zmm28
  404021:	62 62 ed 58 b8 76 08 	vfmadd231pd 0x40(%rsi){1to8},%zmm2,%zmm30
  404028:	62 62 d5 58 b8 7e 09 	vfmadd231pd 0x48(%rsi){1to8},%zmm5,%zmm31
  40402f:	62 e2 a5 58 b8 06    	vfmadd231pd (%rsi){1to8},%zmm11,%zmm16
  404035:	62 e2 9d 58 b8 4e 01 	vfmadd231pd 0x8(%rsi){1to8},%zmm12,%zmm17
  40403c:	62 e2 95 58 b8 6e 04 	vfmadd231pd 0x20(%rsi){1to8},%zmm13,%zmm21
  404043:	62 62 95 58 b8 4e 06 	vfmadd231pd 0x30(%rsi){1to8},%zmm13,%zmm25
  40404a:	62 e2 8d 58 b8 5e 02 	vfmadd231pd 0x10(%rsi){1to8},%zmm14,%zmm19
  404051:	62 e1 fd 48 29 02    	vmovapd %zmm16,(%rdx)
  404057:	62 e1 fd 48 29 4a 04 	vmovapd %zmm17,0x100(%rdx)
  40405e:	62 e1 fd 48 29 52 08 	vmovapd %zmm18,0x200(%rdx)
  404065:	62 e1 fd 48 29 5a 0c 	vmovapd %zmm19,0x300(%rdx)
  40406c:	62 e1 fd 48 29 62 10 	vmovapd %zmm20,0x400(%rdx)
  404073:	62 e1 fd 48 29 6a 14 	vmovapd %zmm21,0x500(%rdx)
  40407a:	62 e1 fd 48 29 72 18 	vmovapd %zmm22,0x600(%rdx)
  404081:	62 e1 fd 48 29 7a 1c 	vmovapd %zmm23,0x700(%rdx)
  404088:	62 61 fd 48 29 42 20 	vmovapd %zmm24,0x800(%rdx)
  40408f:	62 61 fd 48 29 4a 24 	vmovapd %zmm25,0x900(%rdx)
  404096:	62 61 fd 48 29 52 28 	vmovapd %zmm26,0xa00(%rdx)
  40409d:	62 61 fd 48 29 5a 2c 	vmovapd %zmm27,0xb00(%rdx)
  4040a4:	62 61 fd 48 29 62 30 	vmovapd %zmm28,0xc00(%rdx)
  4040ab:	62 61 fd 48 29 6a 34 	vmovapd %zmm29,0xd00(%rdx)
  4040b2:	62 61 fd 48 29 72 38 	vmovapd %zmm30,0xe00(%rdx)
  4040b9:	62 61 fd 48 29 7a 3c 	vmovapd %zmm31,0xf00(%rdx)
  4040c0:	48 81 c2 00 10 00 00 	add    $0x1000,%rdx
  4040c7:	62 e1 fd 48 28 02    	vmovapd (%rdx),%zmm16
  4040cd:	62 e1 fd 48 28 4a 04 	vmovapd 0x100(%rdx),%zmm17
  4040d4:	62 e1 fd 48 28 52 08 	vmovapd 0x200(%rdx),%zmm18
  4040db:	62 e1 fd 48 28 5a 0c 	vmovapd 0x300(%rdx),%zmm19
  4040e2:	62 e1 fd 48 28 62 10 	vmovapd 0x400(%rdx),%zmm20
  4040e9:	62 e1 fd 48 28 6a 14 	vmovapd 0x500(%rdx),%zmm21
  4040f0:	62 e1 fd 48 28 72 18 	vmovapd 0x600(%rdx),%zmm22
  4040f7:	62 e1 fd 48 28 7a 1c 	vmovapd 0x700(%rdx),%zmm23
  4040fe:	62 61 fd 48 28 42 20 	vmovapd 0x800(%rdx),%zmm24
  404105:	62 61 fd 48 28 4a 24 	vmovapd 0x900(%rdx),%zmm25
  40410c:	62 61 fd 48 28 52 28 	vmovapd 0xa00(%rdx),%zmm26
  404113:	62 61 fd 48 28 5a 2c 	vmovapd 0xb00(%rdx),%zmm27
  40411a:	62 61 fd 48 28 62 30 	vmovapd 0xc00(%rdx),%zmm28
  404121:	62 61 fd 48 28 6a 34 	vmovapd 0xd00(%rdx),%zmm29
  404128:	62 61 fd 48 28 72 38 	vmovapd 0xe00(%rdx),%zmm30
  40412f:	62 61 fd 48 28 7a 3c 	vmovapd 0xf00(%rdx),%zmm31
  404136:	62 f1 fd 48 28 4f 04 	vmovapd 0x100(%rdi),%zmm1
  40413d:	62 f1 fd 48 28 67 10 	vmovapd 0x400(%rdi),%zmm4
  404144:	62 71 fd 48 28 47 20 	vmovapd 0x800(%rdi),%zmm8
  40414b:	62 71 fd 48 28 4f 24 	vmovapd 0x900(%rdi),%zmm9
  404152:	62 71 fd 48 28 67 30 	vmovapd 0xc00(%rdi),%zmm12
  404159:	62 71 fd 48 28 6f 34 	vmovapd 0xd00(%rdi),%zmm13
  404160:	62 e2 f5 58 b8 46 0a 	vfmadd231pd 0x50(%rsi){1to8},%zmm1,%zmm16
  404167:	62 62 f5 58 b8 7e 12 	vfmadd231pd 0x90(%rsi){1to8},%zmm1,%zmm31
  40416e:	62 e2 dd 58 b8 56 0b 	vfmadd231pd 0x58(%rsi){1to8},%zmm4,%zmm18
  404175:	62 e2 dd 58 b8 66 0e 	vfmadd231pd 0x70(%rsi){1to8},%zmm4,%zmm20
  40417c:	62 e2 bd 58 b8 56 0c 	vfmadd231pd 0x60(%rsi){1to8},%zmm8,%zmm18
  404183:	62 e2 b5 58 b8 56 0d 	vfmadd231pd 0x68(%rsi){1to8},%zmm9,%zmm18
  40418a:	62 e2 9d 58 b8 6e 0f 	vfmadd231pd 0x78(%rsi){1to8},%zmm12,%zmm21
  404191:	62 62 9d 58 b8 4e 10 	vfmadd231pd 0x80(%rsi){1to8},%zmm12,%zmm25
  404198:	62 62 9d 58 b8 7e 13 	vfmadd231pd 0x98(%rsi){1to8},%zmm12,%zmm31
  40419f:	62 62 95 58 b8 56 11 	vfmadd231pd 0x88(%rsi){1to8},%zmm13,%zmm26
  4041a6:	62 e1 fd 48 29 02    	vmovapd %zmm16,(%rdx)
  4041ac:	62 e1 fd 48 29 4a 04 	vmovapd %zmm17,0x100(%rdx)
  4041b3:	62 e1 fd 48 29 52 08 	vmovapd %zmm18,0x200(%rdx)
  4041ba:	62 e1 fd 48 29 5a 0c 	vmovapd %zmm19,0x300(%rdx)
  4041c1:	62 e1 fd 48 29 62 10 	vmovapd %zmm20,0x400(%rdx)
  4041c8:	62 e1 fd 48 29 6a 14 	vmovapd %zmm21,0x500(%rdx)
  4041cf:	62 e1 fd 48 29 72 18 	vmovapd %zmm22,0x600(%rdx)
  4041d6:	62 e1 fd 48 29 7a 1c 	vmovapd %zmm23,0x700(%rdx)
  4041dd:	62 61 fd 48 29 42 20 	vmovapd %zmm24,0x800(%rdx)
  4041e4:	62 61 fd 48 29 4a 24 	vmovapd %zmm25,0x900(%rdx)
  4041eb:	62 61 fd 48 29 52 28 	vmovapd %zmm26,0xa00(%rdx)
  4041f2:	62 61 fd 48 29 5a 2c 	vmovapd %zmm27,0xb00(%rdx)
  4041f9:	62 61 fd 48 29 62 30 	vmovapd %zmm28,0xc00(%rdx)
  404200:	62 61 fd 48 29 6a 34 	vmovapd %zmm29,0xd00(%rdx)
  404207:	62 61 fd 48 29 72 38 	vmovapd %zmm30,0xe00(%rdx)
  40420e:	62 61 fd 48 29 7a 3c 	vmovapd %zmm31,0xf00(%rdx)
  404215:	48 83 c7 40          	add    $0x40,%rdi
  404219:	48 81 c2 40 f0 ff ff 	add    $0xfffffffffffff040,%rdx
  404220:	49 83 c4 01          	add    $0x1,%r12
  404224:	49 83 fc 04          	cmp    $0x4,%r12
  404228:	0f 8c 29 fd ff ff    	jl     403f57 <LOOP_TOP_0_1892>
  40422e:	41 5c                	pop    %r12
  404230:	c3                   	retq   
  404231:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  404236:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40423d:	00 00 00 

0000000000404240 <_Z25jump_penalty_2_20_generalPKdS0_Pd>:
  404240:	48 89 7c 24 f8       	mov    %rdi,-0x8(%rsp)
  404245:	48 89 74 24 f0       	mov    %rsi,-0x10(%rsp)
  40424a:	48 89 54 24 e8       	mov    %rdx,-0x18(%rsp)
  40424f:	48 8b 7c 24 f8       	mov    -0x8(%rsp),%rdi
  404254:	48 8b 74 24 f0       	mov    -0x10(%rsp),%rsi
  404259:	48 8b 54 24 e8       	mov    -0x18(%rsp),%rdx
  40425e:	e9 eb 00 00 00       	jmpq   40434e <END_SWITCH_1906>

0000000000404263 <CASE_1_1906>:
  404263:	62 f1 fd 48 28 4f 04 	vmovapd 0x100(%rdi),%zmm1
  40426a:	62 f1 fd 48 28 57 08 	vmovapd 0x200(%rdi),%zmm2
  404271:	62 f1 fd 48 28 6f 14 	vmovapd 0x500(%rdi),%zmm5
  404278:	62 71 fd 48 28 5f 2c 	vmovapd 0xb00(%rdi),%zmm11
  40427f:	62 71 fd 48 28 67 30 	vmovapd 0xc00(%rdi),%zmm12
  404286:	62 71 fd 48 28 6f 34 	vmovapd 0xd00(%rdi),%zmm13
  40428d:	62 71 fd 48 28 77 38 	vmovapd 0xe00(%rdi),%zmm14
  404294:	62 e2 f5 58 b8 6e 03 	vfmadd231pd 0x18(%rsi){1to8},%zmm1,%zmm21
  40429b:	62 e2 f5 58 b8 7e 05 	vfmadd231pd 0x28(%rsi){1to8},%zmm1,%zmm23
  4042a2:	62 62 f5 58 b8 66 07 	vfmadd231pd 0x38(%rsi){1to8},%zmm1,%zmm28
  4042a9:	62 62 ed 58 b8 76 08 	vfmadd231pd 0x40(%rsi){1to8},%zmm2,%zmm30
  4042b0:	62 62 d5 58 b8 7e 09 	vfmadd231pd 0x48(%rsi){1to8},%zmm5,%zmm31
  4042b7:	62 e2 a5 58 b8 06    	vfmadd231pd (%rsi){1to8},%zmm11,%zmm16
  4042bd:	62 e2 9d 58 b8 4e 01 	vfmadd231pd 0x8(%rsi){1to8},%zmm12,%zmm17
  4042c4:	62 e2 95 58 b8 6e 04 	vfmadd231pd 0x20(%rsi){1to8},%zmm13,%zmm21
  4042cb:	62 62 95 58 b8 4e 06 	vfmadd231pd 0x30(%rsi){1to8},%zmm13,%zmm25
  4042d2:	62 e2 8d 58 b8 5e 02 	vfmadd231pd 0x10(%rsi){1to8},%zmm14,%zmm19
  4042d9:	41 ff e2             	jmpq   *%r10

00000000004042dc <CASE_2_1906>:
  4042dc:	62 f1 fd 48 28 4f 04 	vmovapd 0x100(%rdi),%zmm1
  4042e3:	62 f1 fd 48 28 67 10 	vmovapd 0x400(%rdi),%zmm4
  4042ea:	62 71 fd 48 28 47 20 	vmovapd 0x800(%rdi),%zmm8
  4042f1:	62 71 fd 48 28 4f 24 	vmovapd 0x900(%rdi),%zmm9
  4042f8:	62 71 fd 48 28 67 30 	vmovapd 0xc00(%rdi),%zmm12
  4042ff:	62 71 fd 48 28 6f 34 	vmovapd 0xd00(%rdi),%zmm13
  404306:	62 e2 f5 58 b8 06    	vfmadd231pd (%rsi){1to8},%zmm1,%zmm16
  40430c:	62 62 f5 58 b8 7e 08 	vfmadd231pd 0x40(%rsi){1to8},%zmm1,%zmm31
  404313:	62 e2 dd 58 b8 56 01 	vfmadd231pd 0x8(%rsi){1to8},%zmm4,%zmm18
  40431a:	62 e2 dd 58 b8 66 04 	vfmadd231pd 0x20(%rsi){1to8},%zmm4,%zmm20
  404321:	62 e2 bd 58 b8 56 02 	vfmadd231pd 0x10(%rsi){1to8},%zmm8,%zmm18
  404328:	62 e2 b5 58 b8 56 03 	vfmadd231pd 0x18(%rsi){1to8},%zmm9,%zmm18
  40432f:	62 e2 9d 58 b8 6e 05 	vfmadd231pd 0x28(%rsi){1to8},%zmm12,%zmm21
  404336:	62 62 9d 58 b8 4e 06 	vfmadd231pd 0x30(%rsi){1to8},%zmm12,%zmm25
  40433d:	62 62 9d 58 b8 7e 09 	vfmadd231pd 0x48(%rsi){1to8},%zmm12,%zmm31
  404344:	62 62 95 58 b8 56 07 	vfmadd231pd 0x38(%rsi){1to8},%zmm13,%zmm26
  40434b:	41 ff e2             	jmpq   *%r10

000000000040434e <END_SWITCH_1906>:
  40434e:	48 83 c2 00          	add    $0x0,%rdx
  404352:	62 e1 fd 48 28 02    	vmovapd (%rdx),%zmm16
  404358:	62 e1 fd 48 28 4a 04 	vmovapd 0x100(%rdx),%zmm17
  40435f:	62 e1 fd 48 28 52 08 	vmovapd 0x200(%rdx),%zmm18
  404366:	62 e1 fd 48 28 5a 0c 	vmovapd 0x300(%rdx),%zmm19
  40436d:	62 e1 fd 48 28 62 10 	vmovapd 0x400(%rdx),%zmm20
  404374:	62 e1 fd 48 28 6a 14 	vmovapd 0x500(%rdx),%zmm21
  40437b:	62 e1 fd 48 28 72 18 	vmovapd 0x600(%rdx),%zmm22
  404382:	62 e1 fd 48 28 7a 1c 	vmovapd 0x700(%rdx),%zmm23
  404389:	62 61 fd 48 28 42 20 	vmovapd 0x800(%rdx),%zmm24
  404390:	62 61 fd 48 28 4a 24 	vmovapd 0x900(%rdx),%zmm25
  404397:	62 61 fd 48 28 52 28 	vmovapd 0xa00(%rdx),%zmm26
  40439e:	62 61 fd 48 28 5a 2c 	vmovapd 0xb00(%rdx),%zmm27
  4043a5:	62 61 fd 48 28 62 30 	vmovapd 0xc00(%rdx),%zmm28
  4043ac:	62 61 fd 48 28 6a 34 	vmovapd 0xd00(%rdx),%zmm29
  4043b3:	62 61 fd 48 28 72 38 	vmovapd 0xe00(%rdx),%zmm30
  4043ba:	62 61 fd 48 28 7a 3c 	vmovapd 0xf00(%rdx),%zmm31
  4043c1:	49 c7 c2 d8 43 40 00 	mov    $0x4043d8,%r10
  4043c8:	48 83 c6 00          	add    $0x0,%rsi
  4043cc:	48 81 c7 00 20 00 00 	add    $0x2000,%rdi
  4043d3:	e9 8b fe ff ff       	jmpq   404263 <CASE_1_1906>

00000000004043d8 <BLOCK_0_0_2_1906>:
  4043d8:	62 e1 fd 48 29 02    	vmovapd %zmm16,(%rdx)
  4043de:	62 e1 fd 48 29 4a 04 	vmovapd %zmm17,0x100(%rdx)
  4043e5:	62 e1 fd 48 29 52 08 	vmovapd %zmm18,0x200(%rdx)
  4043ec:	62 e1 fd 48 29 5a 0c 	vmovapd %zmm19,0x300(%rdx)
  4043f3:	62 e1 fd 48 29 62 10 	vmovapd %zmm20,0x400(%rdx)
  4043fa:	62 e1 fd 48 29 6a 14 	vmovapd %zmm21,0x500(%rdx)
  404401:	62 e1 fd 48 29 72 18 	vmovapd %zmm22,0x600(%rdx)
  404408:	62 e1 fd 48 29 7a 1c 	vmovapd %zmm23,0x700(%rdx)
  40440f:	62 61 fd 48 29 42 20 	vmovapd %zmm24,0x800(%rdx)
  404416:	62 61 fd 48 29 4a 24 	vmovapd %zmm25,0x900(%rdx)
  40441d:	62 61 fd 48 29 52 28 	vmovapd %zmm26,0xa00(%rdx)
  404424:	62 61 fd 48 29 5a 2c 	vmovapd %zmm27,0xb00(%rdx)
  40442b:	62 61 fd 48 29 62 30 	vmovapd %zmm28,0xc00(%rdx)
  404432:	62 61 fd 48 29 6a 34 	vmovapd %zmm29,0xd00(%rdx)
  404439:	62 61 fd 48 29 72 38 	vmovapd %zmm30,0xe00(%rdx)
  404440:	62 61 fd 48 29 7a 3c 	vmovapd %zmm31,0xf00(%rdx)
  404447:	48 81 c2 00 10 00 00 	add    $0x1000,%rdx
  40444e:	62 e1 fd 48 28 02    	vmovapd (%rdx),%zmm16
  404454:	62 e1 fd 48 28 4a 04 	vmovapd 0x100(%rdx),%zmm17
  40445b:	62 e1 fd 48 28 52 08 	vmovapd 0x200(%rdx),%zmm18
  404462:	62 e1 fd 48 28 5a 0c 	vmovapd 0x300(%rdx),%zmm19
  404469:	62 e1 fd 48 28 62 10 	vmovapd 0x400(%rdx),%zmm20
  404470:	62 e1 fd 48 28 6a 14 	vmovapd 0x500(%rdx),%zmm21
  404477:	62 e1 fd 48 28 72 18 	vmovapd 0x600(%rdx),%zmm22
  40447e:	62 e1 fd 48 28 7a 1c 	vmovapd 0x700(%rdx),%zmm23
  404485:	62 61 fd 48 28 42 20 	vmovapd 0x800(%rdx),%zmm24
  40448c:	62 61 fd 48 28 4a 24 	vmovapd 0x900(%rdx),%zmm25
  404493:	62 61 fd 48 28 52 28 	vmovapd 0xa00(%rdx),%zmm26
  40449a:	62 61 fd 48 28 5a 2c 	vmovapd 0xb00(%rdx),%zmm27
  4044a1:	62 61 fd 48 28 62 30 	vmovapd 0xc00(%rdx),%zmm28
  4044a8:	62 61 fd 48 28 6a 34 	vmovapd 0xd00(%rdx),%zmm29
  4044af:	62 61 fd 48 28 72 38 	vmovapd 0xe00(%rdx),%zmm30
  4044b6:	62 61 fd 48 28 7a 3c 	vmovapd 0xf00(%rdx),%zmm31
  4044bd:	49 c7 c2 d4 44 40 00 	mov    $0x4044d4,%r10
  4044c4:	48 83 c6 50          	add    $0x50,%rsi
  4044c8:	48 81 c7 00 e0 ff ff 	add    $0xffffffffffffe000,%rdi
  4044cf:	e9 08 fe ff ff       	jmpq   4042dc <CASE_2_1906>

00000000004044d4 <BLOCK_0_1_0_1906>:
  4044d4:	62 e1 fd 48 29 02    	vmovapd %zmm16,(%rdx)
  4044da:	62 e1 fd 48 29 4a 04 	vmovapd %zmm17,0x100(%rdx)
  4044e1:	62 e1 fd 48 29 52 08 	vmovapd %zmm18,0x200(%rdx)
  4044e8:	62 e1 fd 48 29 5a 0c 	vmovapd %zmm19,0x300(%rdx)
  4044ef:	62 e1 fd 48 29 62 10 	vmovapd %zmm20,0x400(%rdx)
  4044f6:	62 e1 fd 48 29 6a 14 	vmovapd %zmm21,0x500(%rdx)
  4044fd:	62 e1 fd 48 29 72 18 	vmovapd %zmm22,0x600(%rdx)
  404504:	62 e1 fd 48 29 7a 1c 	vmovapd %zmm23,0x700(%rdx)
  40450b:	62 61 fd 48 29 42 20 	vmovapd %zmm24,0x800(%rdx)
  404512:	62 61 fd 48 29 4a 24 	vmovapd %zmm25,0x900(%rdx)
  404519:	62 61 fd 48 29 52 28 	vmovapd %zmm26,0xa00(%rdx)
  404520:	62 61 fd 48 29 5a 2c 	vmovapd %zmm27,0xb00(%rdx)
  404527:	62 61 fd 48 29 62 30 	vmovapd %zmm28,0xc00(%rdx)
  40452e:	62 61 fd 48 29 6a 34 	vmovapd %zmm29,0xd00(%rdx)
  404535:	62 61 fd 48 29 72 38 	vmovapd %zmm30,0xe00(%rdx)
  40453c:	62 61 fd 48 29 7a 3c 	vmovapd %zmm31,0xf00(%rdx)
  404543:	48 81 c2 40 f0 ff ff 	add    $0xfffffffffffff040,%rdx
  40454a:	62 e1 fd 48 28 02    	vmovapd (%rdx),%zmm16
  404550:	62 e1 fd 48 28 4a 04 	vmovapd 0x100(%rdx),%zmm17
  404557:	62 e1 fd 48 28 52 08 	vmovapd 0x200(%rdx),%zmm18
  40455e:	62 e1 fd 48 28 5a 0c 	vmovapd 0x300(%rdx),%zmm19
  404565:	62 e1 fd 48 28 62 10 	vmovapd 0x400(%rdx),%zmm20
  40456c:	62 e1 fd 48 28 6a 14 	vmovapd 0x500(%rdx),%zmm21
  404573:	62 e1 fd 48 28 72 18 	vmovapd 0x600(%rdx),%zmm22
  40457a:	62 e1 fd 48 28 7a 1c 	vmovapd 0x700(%rdx),%zmm23
  404581:	62 61 fd 48 28 42 20 	vmovapd 0x800(%rdx),%zmm24
  404588:	62 61 fd 48 28 4a 24 	vmovapd 0x900(%rdx),%zmm25
  40458f:	62 61 fd 48 28 52 28 	vmovapd 0xa00(%rdx),%zmm26
  404596:	62 61 fd 48 28 5a 2c 	vmovapd 0xb00(%rdx),%zmm27
  40459d:	62 61 fd 48 28 62 30 	vmovapd 0xc00(%rdx),%zmm28
  4045a4:	62 61 fd 48 28 6a 34 	vmovapd 0xd00(%rdx),%zmm29
  4045ab:	62 61 fd 48 28 72 38 	vmovapd 0xe00(%rdx),%zmm30
  4045b2:	62 61 fd 48 28 7a 3c 	vmovapd 0xf00(%rdx),%zmm31
  4045b9:	49 c7 c2 d0 45 40 00 	mov    $0x4045d0,%r10
  4045c0:	48 83 c6 b0          	add    $0xffffffffffffffb0,%rsi
  4045c4:	48 81 c7 40 20 00 00 	add    $0x2040,%rdi
  4045cb:	e9 93 fc ff ff       	jmpq   404263 <CASE_1_1906>

00000000004045d0 <BLOCK_1_0_2_1906>:
  4045d0:	62 e1 fd 48 29 02    	vmovapd %zmm16,(%rdx)
  4045d6:	62 e1 fd 48 29 4a 04 	vmovapd %zmm17,0x100(%rdx)
  4045dd:	62 e1 fd 48 29 52 08 	vmovapd %zmm18,0x200(%rdx)
  4045e4:	62 e1 fd 48 29 5a 0c 	vmovapd %zmm19,0x300(%rdx)
  4045eb:	62 e1 fd 48 29 62 10 	vmovapd %zmm20,0x400(%rdx)
  4045f2:	62 e1 fd 48 29 6a 14 	vmovapd %zmm21,0x500(%rdx)
  4045f9:	62 e1 fd 48 29 72 18 	vmovapd %zmm22,0x600(%rdx)
  404600:	62 e1 fd 48 29 7a 1c 	vmovapd %zmm23,0x700(%rdx)
  404607:	62 61 fd 48 29 42 20 	vmovapd %zmm24,0x800(%rdx)
  40460e:	62 61 fd 48 29 4a 24 	vmovapd %zmm25,0x900(%rdx)
  404615:	62 61 fd 48 29 52 28 	vmovapd %zmm26,0xa00(%rdx)
  40461c:	62 61 fd 48 29 5a 2c 	vmovapd %zmm27,0xb00(%rdx)
  404623:	62 61 fd 48 29 62 30 	vmovapd %zmm28,0xc00(%rdx)
  40462a:	62 61 fd 48 29 6a 34 	vmovapd %zmm29,0xd00(%rdx)
  404631:	62 61 fd 48 29 72 38 	vmovapd %zmm30,0xe00(%rdx)
  404638:	62 61 fd 48 29 7a 3c 	vmovapd %zmm31,0xf00(%rdx)
  40463f:	48 81 c2 00 10 00 00 	add    $0x1000,%rdx
  404646:	62 e1 fd 48 28 02    	vmovapd (%rdx),%zmm16
  40464c:	62 e1 fd 48 28 4a 04 	vmovapd 0x100(%rdx),%zmm17
  404653:	62 e1 fd 48 28 52 08 	vmovapd 0x200(%rdx),%zmm18
  40465a:	62 e1 fd 48 28 5a 0c 	vmovapd 0x300(%rdx),%zmm19
  404661:	62 e1 fd 48 28 62 10 	vmovapd 0x400(%rdx),%zmm20
  404668:	62 e1 fd 48 28 6a 14 	vmovapd 0x500(%rdx),%zmm21
  40466f:	62 e1 fd 48 28 72 18 	vmovapd 0x600(%rdx),%zmm22
  404676:	62 e1 fd 48 28 7a 1c 	vmovapd 0x700(%rdx),%zmm23
  40467d:	62 61 fd 48 28 42 20 	vmovapd 0x800(%rdx),%zmm24
  404684:	62 61 fd 48 28 4a 24 	vmovapd 0x900(%rdx),%zmm25
  40468b:	62 61 fd 48 28 52 28 	vmovapd 0xa00(%rdx),%zmm26
  404692:	62 61 fd 48 28 5a 2c 	vmovapd 0xb00(%rdx),%zmm27
  404699:	62 61 fd 48 28 62 30 	vmovapd 0xc00(%rdx),%zmm28
  4046a0:	62 61 fd 48 28 6a 34 	vmovapd 0xd00(%rdx),%zmm29
  4046a7:	62 61 fd 48 28 72 38 	vmovapd 0xe00(%rdx),%zmm30
  4046ae:	62 61 fd 48 28 7a 3c 	vmovapd 0xf00(%rdx),%zmm31
  4046b5:	49 c7 c2 cc 46 40 00 	mov    $0x4046cc,%r10
  4046bc:	48 83 c6 50          	add    $0x50,%rsi
  4046c0:	48 81 c7 00 e0 ff ff 	add    $0xffffffffffffe000,%rdi
  4046c7:	e9 10 fc ff ff       	jmpq   4042dc <CASE_2_1906>

00000000004046cc <BLOCK_1_1_0_1906>:
  4046cc:	62 e1 fd 48 29 02    	vmovapd %zmm16,(%rdx)
  4046d2:	62 e1 fd 48 29 4a 04 	vmovapd %zmm17,0x100(%rdx)
  4046d9:	62 e1 fd 48 29 52 08 	vmovapd %zmm18,0x200(%rdx)
  4046e0:	62 e1 fd 48 29 5a 0c 	vmovapd %zmm19,0x300(%rdx)
  4046e7:	62 e1 fd 48 29 62 10 	vmovapd %zmm20,0x400(%rdx)
  4046ee:	62 e1 fd 48 29 6a 14 	vmovapd %zmm21,0x500(%rdx)
  4046f5:	62 e1 fd 48 29 72 18 	vmovapd %zmm22,0x600(%rdx)
  4046fc:	62 e1 fd 48 29 7a 1c 	vmovapd %zmm23,0x700(%rdx)
  404703:	62 61 fd 48 29 42 20 	vmovapd %zmm24,0x800(%rdx)
  40470a:	62 61 fd 48 29 4a 24 	vmovapd %zmm25,0x900(%rdx)
  404711:	62 61 fd 48 29 52 28 	vmovapd %zmm26,0xa00(%rdx)
  404718:	62 61 fd 48 29 5a 2c 	vmovapd %zmm27,0xb00(%rdx)
  40471f:	62 61 fd 48 29 62 30 	vmovapd %zmm28,0xc00(%rdx)
  404726:	62 61 fd 48 29 6a 34 	vmovapd %zmm29,0xd00(%rdx)
  40472d:	62 61 fd 48 29 72 38 	vmovapd %zmm30,0xe00(%rdx)
  404734:	62 61 fd 48 29 7a 3c 	vmovapd %zmm31,0xf00(%rdx)
  40473b:	48 81 c2 40 f0 ff ff 	add    $0xfffffffffffff040,%rdx
  404742:	62 e1 fd 48 28 02    	vmovapd (%rdx),%zmm16
  404748:	62 e1 fd 48 28 4a 04 	vmovapd 0x100(%rdx),%zmm17
  40474f:	62 e1 fd 48 28 52 08 	vmovapd 0x200(%rdx),%zmm18
  404756:	62 e1 fd 48 28 5a 0c 	vmovapd 0x300(%rdx),%zmm19
  40475d:	62 e1 fd 48 28 62 10 	vmovapd 0x400(%rdx),%zmm20
  404764:	62 e1 fd 48 28 6a 14 	vmovapd 0x500(%rdx),%zmm21
  40476b:	62 e1 fd 48 28 72 18 	vmovapd 0x600(%rdx),%zmm22
  404772:	62 e1 fd 48 28 7a 1c 	vmovapd 0x700(%rdx),%zmm23
  404779:	62 61 fd 48 28 42 20 	vmovapd 0x800(%rdx),%zmm24
  404780:	62 61 fd 48 28 4a 24 	vmovapd 0x900(%rdx),%zmm25
  404787:	62 61 fd 48 28 52 28 	vmovapd 0xa00(%rdx),%zmm26
  40478e:	62 61 fd 48 28 5a 2c 	vmovapd 0xb00(%rdx),%zmm27
  404795:	62 61 fd 48 28 62 30 	vmovapd 0xc00(%rdx),%zmm28
  40479c:	62 61 fd 48 28 6a 34 	vmovapd 0xd00(%rdx),%zmm29
  4047a3:	62 61 fd 48 28 72 38 	vmovapd 0xe00(%rdx),%zmm30
  4047aa:	62 61 fd 48 28 7a 3c 	vmovapd 0xf00(%rdx),%zmm31
  4047b1:	49 c7 c2 c8 47 40 00 	mov    $0x4047c8,%r10
  4047b8:	48 83 c6 b0          	add    $0xffffffffffffffb0,%rsi
  4047bc:	48 81 c7 40 20 00 00 	add    $0x2040,%rdi
  4047c3:	e9 9b fa ff ff       	jmpq   404263 <CASE_1_1906>

00000000004047c8 <BLOCK_2_0_2_1906>:
  4047c8:	62 e1 fd 48 29 02    	vmovapd %zmm16,(%rdx)
  4047ce:	62 e1 fd 48 29 4a 04 	vmovapd %zmm17,0x100(%rdx)
  4047d5:	62 e1 fd 48 29 52 08 	vmovapd %zmm18,0x200(%rdx)
  4047dc:	62 e1 fd 48 29 5a 0c 	vmovapd %zmm19,0x300(%rdx)
  4047e3:	62 e1 fd 48 29 62 10 	vmovapd %zmm20,0x400(%rdx)
  4047ea:	62 e1 fd 48 29 6a 14 	vmovapd %zmm21,0x500(%rdx)
  4047f1:	62 e1 fd 48 29 72 18 	vmovapd %zmm22,0x600(%rdx)
  4047f8:	62 e1 fd 48 29 7a 1c 	vmovapd %zmm23,0x700(%rdx)
  4047ff:	62 61 fd 48 29 42 20 	vmovapd %zmm24,0x800(%rdx)
  404806:	62 61 fd 48 29 4a 24 	vmovapd %zmm25,0x900(%rdx)
  40480d:	62 61 fd 48 29 52 28 	vmovapd %zmm26,0xa00(%rdx)
  404814:	62 61 fd 48 29 5a 2c 	vmovapd %zmm27,0xb00(%rdx)
  40481b:	62 61 fd 48 29 62 30 	vmovapd %zmm28,0xc00(%rdx)
  404822:	62 61 fd 48 29 6a 34 	vmovapd %zmm29,0xd00(%rdx)
  404829:	62 61 fd 48 29 72 38 	vmovapd %zmm30,0xe00(%rdx)
  404830:	62 61 fd 48 29 7a 3c 	vmovapd %zmm31,0xf00(%rdx)
  404837:	48 81 c2 00 10 00 00 	add    $0x1000,%rdx
  40483e:	62 e1 fd 48 28 02    	vmovapd (%rdx),%zmm16
  404844:	62 e1 fd 48 28 4a 04 	vmovapd 0x100(%rdx),%zmm17
  40484b:	62 e1 fd 48 28 52 08 	vmovapd 0x200(%rdx),%zmm18
  404852:	62 e1 fd 48 28 5a 0c 	vmovapd 0x300(%rdx),%zmm19
  404859:	62 e1 fd 48 28 62 10 	vmovapd 0x400(%rdx),%zmm20
  404860:	62 e1 fd 48 28 6a 14 	vmovapd 0x500(%rdx),%zmm21
  404867:	62 e1 fd 48 28 72 18 	vmovapd 0x600(%rdx),%zmm22
  40486e:	62 e1 fd 48 28 7a 1c 	vmovapd 0x700(%rdx),%zmm23
  404875:	62 61 fd 48 28 42 20 	vmovapd 0x800(%rdx),%zmm24
  40487c:	62 61 fd 48 28 4a 24 	vmovapd 0x900(%rdx),%zmm25
  404883:	62 61 fd 48 28 52 28 	vmovapd 0xa00(%rdx),%zmm26
  40488a:	62 61 fd 48 28 5a 2c 	vmovapd 0xb00(%rdx),%zmm27
  404891:	62 61 fd 48 28 62 30 	vmovapd 0xc00(%rdx),%zmm28
  404898:	62 61 fd 48 28 6a 34 	vmovapd 0xd00(%rdx),%zmm29
  40489f:	62 61 fd 48 28 72 38 	vmovapd 0xe00(%rdx),%zmm30
  4048a6:	62 61 fd 48 28 7a 3c 	vmovapd 0xf00(%rdx),%zmm31
  4048ad:	49 c7 c2 c4 48 40 00 	mov    $0x4048c4,%r10
  4048b4:	48 83 c6 50          	add    $0x50,%rsi
  4048b8:	48 81 c7 00 e0 ff ff 	add    $0xffffffffffffe000,%rdi
  4048bf:	e9 18 fa ff ff       	jmpq   4042dc <CASE_2_1906>

00000000004048c4 <BLOCK_2_1_0_1906>:
  4048c4:	62 e1 fd 48 29 02    	vmovapd %zmm16,(%rdx)
  4048ca:	62 e1 fd 48 29 4a 04 	vmovapd %zmm17,0x100(%rdx)
  4048d1:	62 e1 fd 48 29 52 08 	vmovapd %zmm18,0x200(%rdx)
  4048d8:	62 e1 fd 48 29 5a 0c 	vmovapd %zmm19,0x300(%rdx)
  4048df:	62 e1 fd 48 29 62 10 	vmovapd %zmm20,0x400(%rdx)
  4048e6:	62 e1 fd 48 29 6a 14 	vmovapd %zmm21,0x500(%rdx)
  4048ed:	62 e1 fd 48 29 72 18 	vmovapd %zmm22,0x600(%rdx)
  4048f4:	62 e1 fd 48 29 7a 1c 	vmovapd %zmm23,0x700(%rdx)
  4048fb:	62 61 fd 48 29 42 20 	vmovapd %zmm24,0x800(%rdx)
  404902:	62 61 fd 48 29 4a 24 	vmovapd %zmm25,0x900(%rdx)
  404909:	62 61 fd 48 29 52 28 	vmovapd %zmm26,0xa00(%rdx)
  404910:	62 61 fd 48 29 5a 2c 	vmovapd %zmm27,0xb00(%rdx)
  404917:	62 61 fd 48 29 62 30 	vmovapd %zmm28,0xc00(%rdx)
  40491e:	62 61 fd 48 29 6a 34 	vmovapd %zmm29,0xd00(%rdx)
  404925:	62 61 fd 48 29 72 38 	vmovapd %zmm30,0xe00(%rdx)
  40492c:	62 61 fd 48 29 7a 3c 	vmovapd %zmm31,0xf00(%rdx)
  404933:	48 81 c2 40 f0 ff ff 	add    $0xfffffffffffff040,%rdx
  40493a:	62 e1 fd 48 28 02    	vmovapd (%rdx),%zmm16
  404940:	62 e1 fd 48 28 4a 04 	vmovapd 0x100(%rdx),%zmm17
  404947:	62 e1 fd 48 28 52 08 	vmovapd 0x200(%rdx),%zmm18
  40494e:	62 e1 fd 48 28 5a 0c 	vmovapd 0x300(%rdx),%zmm19
  404955:	62 e1 fd 48 28 62 10 	vmovapd 0x400(%rdx),%zmm20
  40495c:	62 e1 fd 48 28 6a 14 	vmovapd 0x500(%rdx),%zmm21
  404963:	62 e1 fd 48 28 72 18 	vmovapd 0x600(%rdx),%zmm22
  40496a:	62 e1 fd 48 28 7a 1c 	vmovapd 0x700(%rdx),%zmm23
  404971:	62 61 fd 48 28 42 20 	vmovapd 0x800(%rdx),%zmm24
  404978:	62 61 fd 48 28 4a 24 	vmovapd 0x900(%rdx),%zmm25
  40497f:	62 61 fd 48 28 52 28 	vmovapd 0xa00(%rdx),%zmm26
  404986:	62 61 fd 48 28 5a 2c 	vmovapd 0xb00(%rdx),%zmm27
  40498d:	62 61 fd 48 28 62 30 	vmovapd 0xc00(%rdx),%zmm28
  404994:	62 61 fd 48 28 6a 34 	vmovapd 0xd00(%rdx),%zmm29
  40499b:	62 61 fd 48 28 72 38 	vmovapd 0xe00(%rdx),%zmm30
  4049a2:	62 61 fd 48 28 7a 3c 	vmovapd 0xf00(%rdx),%zmm31
  4049a9:	49 c7 c2 c0 49 40 00 	mov    $0x4049c0,%r10
  4049b0:	48 83 c6 b0          	add    $0xffffffffffffffb0,%rsi
  4049b4:	48 81 c7 40 20 00 00 	add    $0x2040,%rdi
  4049bb:	e9 a3 f8 ff ff       	jmpq   404263 <CASE_1_1906>

00000000004049c0 <BLOCK_3_0_2_1906>:
  4049c0:	62 e1 fd 48 29 02    	vmovapd %zmm16,(%rdx)
  4049c6:	62 e1 fd 48 29 4a 04 	vmovapd %zmm17,0x100(%rdx)
  4049cd:	62 e1 fd 48 29 52 08 	vmovapd %zmm18,0x200(%rdx)
  4049d4:	62 e1 fd 48 29 5a 0c 	vmovapd %zmm19,0x300(%rdx)
  4049db:	62 e1 fd 48 29 62 10 	vmovapd %zmm20,0x400(%rdx)
  4049e2:	62 e1 fd 48 29 6a 14 	vmovapd %zmm21,0x500(%rdx)
  4049e9:	62 e1 fd 48 29 72 18 	vmovapd %zmm22,0x600(%rdx)
  4049f0:	62 e1 fd 48 29 7a 1c 	vmovapd %zmm23,0x700(%rdx)
  4049f7:	62 61 fd 48 29 42 20 	vmovapd %zmm24,0x800(%rdx)
  4049fe:	62 61 fd 48 29 4a 24 	vmovapd %zmm25,0x900(%rdx)
  404a05:	62 61 fd 48 29 52 28 	vmovapd %zmm26,0xa00(%rdx)
  404a0c:	62 61 fd 48 29 5a 2c 	vmovapd %zmm27,0xb00(%rdx)
  404a13:	62 61 fd 48 29 62 30 	vmovapd %zmm28,0xc00(%rdx)
  404a1a:	62 61 fd 48 29 6a 34 	vmovapd %zmm29,0xd00(%rdx)
  404a21:	62 61 fd 48 29 72 38 	vmovapd %zmm30,0xe00(%rdx)
  404a28:	62 61 fd 48 29 7a 3c 	vmovapd %zmm31,0xf00(%rdx)
  404a2f:	48 81 c2 00 10 00 00 	add    $0x1000,%rdx
  404a36:	62 e1 fd 48 28 02    	vmovapd (%rdx),%zmm16
  404a3c:	62 e1 fd 48 28 4a 04 	vmovapd 0x100(%rdx),%zmm17
  404a43:	62 e1 fd 48 28 52 08 	vmovapd 0x200(%rdx),%zmm18
  404a4a:	62 e1 fd 48 28 5a 0c 	vmovapd 0x300(%rdx),%zmm19
  404a51:	62 e1 fd 48 28 62 10 	vmovapd 0x400(%rdx),%zmm20
  404a58:	62 e1 fd 48 28 6a 14 	vmovapd 0x500(%rdx),%zmm21
  404a5f:	62 e1 fd 48 28 72 18 	vmovapd 0x600(%rdx),%zmm22
  404a66:	62 e1 fd 48 28 7a 1c 	vmovapd 0x700(%rdx),%zmm23
  404a6d:	62 61 fd 48 28 42 20 	vmovapd 0x800(%rdx),%zmm24
  404a74:	62 61 fd 48 28 4a 24 	vmovapd 0x900(%rdx),%zmm25
  404a7b:	62 61 fd 48 28 52 28 	vmovapd 0xa00(%rdx),%zmm26
  404a82:	62 61 fd 48 28 5a 2c 	vmovapd 0xb00(%rdx),%zmm27
  404a89:	62 61 fd 48 28 62 30 	vmovapd 0xc00(%rdx),%zmm28
  404a90:	62 61 fd 48 28 6a 34 	vmovapd 0xd00(%rdx),%zmm29
  404a97:	62 61 fd 48 28 72 38 	vmovapd 0xe00(%rdx),%zmm30
  404a9e:	62 61 fd 48 28 7a 3c 	vmovapd 0xf00(%rdx),%zmm31
  404aa5:	49 c7 c2 bc 4a 40 00 	mov    $0x404abc,%r10
  404aac:	48 83 c6 50          	add    $0x50,%rsi
  404ab0:	48 81 c7 00 e0 ff ff 	add    $0xffffffffffffe000,%rdi
  404ab7:	e9 20 f8 ff ff       	jmpq   4042dc <CASE_2_1906>

0000000000404abc <BLOCK_3_1_0_1906>:
  404abc:	62 e1 fd 48 29 02    	vmovapd %zmm16,(%rdx)
  404ac2:	62 e1 fd 48 29 4a 04 	vmovapd %zmm17,0x100(%rdx)
  404ac9:	62 e1 fd 48 29 52 08 	vmovapd %zmm18,0x200(%rdx)
  404ad0:	62 e1 fd 48 29 5a 0c 	vmovapd %zmm19,0x300(%rdx)
  404ad7:	62 e1 fd 48 29 62 10 	vmovapd %zmm20,0x400(%rdx)
  404ade:	62 e1 fd 48 29 6a 14 	vmovapd %zmm21,0x500(%rdx)
  404ae5:	62 e1 fd 48 29 72 18 	vmovapd %zmm22,0x600(%rdx)
  404aec:	62 e1 fd 48 29 7a 1c 	vmovapd %zmm23,0x700(%rdx)
  404af3:	62 61 fd 48 29 42 20 	vmovapd %zmm24,0x800(%rdx)
  404afa:	62 61 fd 48 29 4a 24 	vmovapd %zmm25,0x900(%rdx)
  404b01:	62 61 fd 48 29 52 28 	vmovapd %zmm26,0xa00(%rdx)
  404b08:	62 61 fd 48 29 5a 2c 	vmovapd %zmm27,0xb00(%rdx)
  404b0f:	62 61 fd 48 29 62 30 	vmovapd %zmm28,0xc00(%rdx)
  404b16:	62 61 fd 48 29 6a 34 	vmovapd %zmm29,0xd00(%rdx)
  404b1d:	62 61 fd 48 29 72 38 	vmovapd %zmm30,0xe00(%rdx)
  404b24:	62 61 fd 48 29 7a 3c 	vmovapd %zmm31,0xf00(%rdx)
  404b2b:	c3                   	retq   
  404b2c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000404b30 <_Z30test_jump_penalty_2_20_libxsmmv>:
  404b30:	41 56                	push   %r14
  404b32:	41 55                	push   %r13
  404b34:	48 b8 20 00 00 00 30 	movabs $0x3000000020,%rax
  404b3b:	00 00 00 
  404b3e:	41 54                	push   %r12
  404b40:	55                   	push   %rbp
  404b41:	ba 00 30 00 00       	mov    $0x3000,%edx
  404b46:	53                   	push   %rbx
  404b47:	be 40 00 00 00       	mov    $0x40,%esi
  404b4c:	48 81 ec b0 04 00 00 	sub    $0x4b0,%rsp
  404b53:	48 8d 7c 24 58       	lea    0x58(%rsp),%rdi
  404b58:	48 c7 44 24 40 e0 69 	movq   $0x4069e0,0x40(%rsp)
  404b5f:	40 00 
  404b61:	48 89 44 24 48       	mov    %rax,0x48(%rsp)
  404b66:	c7 44 24 50 20 00 00 	movl   $0x20,0x50(%rsp)
  404b6d:	00 
  404b6e:	e8 1d c5 ff ff       	callq  401090 <posix_memalign@plt>
  404b73:	8b 5c 24 4c          	mov    0x4c(%rsp),%ebx
  404b77:	85 db                	test   %ebx,%ebx
  404b79:	0f 8e a4 00 00 00    	jle    404c23 <_Z30test_jump_penalty_2_20_libxsmmv+0xf3>
  404b7f:	44 8b 64 24 48       	mov    0x48(%rsp),%r12d
  404b84:	48 8b 4c 24 58       	mov    0x58(%rsp),%rcx
  404b89:	48 63 44 24 50       	movslq 0x50(%rsp),%rax
  404b8e:	45 85 e4             	test   %r12d,%r12d
  404b91:	7e 37                	jle    404bca <_Z30test_jump_penalty_2_20_libxsmmv+0x9a>
  404b93:	4c 8d 2c c5 00 00 00 	lea    0x0(,%rax,8),%r13
  404b9a:	00 
  404b9b:	41 8d 44 24 ff       	lea    -0x1(%r12),%eax
  404ba0:	31 ed                	xor    %ebp,%ebp
  404ba2:	4c 8d 34 c5 08 00 00 	lea    0x8(,%rax,8),%r14
  404ba9:	00 
  404baa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  404bb0:	31 f6                	xor    %esi,%esi
  404bb2:	48 89 cf             	mov    %rcx,%rdi
  404bb5:	4c 89 f2             	mov    %r14,%rdx
  404bb8:	e8 e3 c4 ff ff       	callq  4010a0 <memset@plt>
  404bbd:	83 c5 01             	add    $0x1,%ebp
  404bc0:	48 89 c1             	mov    %rax,%rcx
  404bc3:	4c 01 e9             	add    %r13,%rcx
  404bc6:	39 dd                	cmp    %ebx,%ebp
  404bc8:	75 e6                	jne    404bb0 <_Z30test_jump_penalty_2_20_libxsmmv+0x80>
  404bca:	31 ed                	xor    %ebp,%ebp
  404bcc:	0f 1f 40 00          	nopl   0x0(%rax)
  404bd0:	45 85 e4             	test   %r12d,%r12d
  404bd3:	7e 47                	jle    404c1c <_Z30test_jump_penalty_2_20_libxsmmv+0xec>
  404bd5:	31 db                	xor    %ebx,%ebx
  404bd7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  404bde:	00 00 
  404be0:	e8 8b c4 ff ff       	callq  401070 <rand@plt>
  404be5:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
  404be9:	8b 54 24 50          	mov    0x50(%rsp),%edx
  404bed:	44 8b 64 24 48       	mov    0x48(%rsp),%r12d
  404bf2:	c5 fb 2a c0          	vcvtsi2sd %eax,%xmm0,%xmm0
  404bf6:	c5 fb 5e 05 12 1e 00 	vdivsd 0x1e12(%rip),%xmm0,%xmm0        # 406a10 <_ZTV11DenseMatrix+0x40>
  404bfd:	00 
  404bfe:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
  404c03:	0f af d5             	imul   %ebp,%edx
  404c06:	01 da                	add    %ebx,%edx
  404c08:	83 c3 01             	add    $0x1,%ebx
  404c0b:	48 63 d2             	movslq %edx,%rdx
  404c0e:	41 39 dc             	cmp    %ebx,%r12d
  404c11:	c5 fb 11 04 d0       	vmovsd %xmm0,(%rax,%rdx,8)
  404c16:	7f c8                	jg     404be0 <_Z30test_jump_penalty_2_20_libxsmmv+0xb0>
  404c18:	8b 5c 24 4c          	mov    0x4c(%rsp),%ebx
  404c1c:	83 c5 01             	add    $0x1,%ebp
  404c1f:	39 dd                	cmp    %ebx,%ebp
  404c21:	7c ad                	jl     404bd0 <_Z30test_jump_penalty_2_20_libxsmmv+0xa0>
  404c23:	be 9a 68 40 00       	mov    $0x40689a,%esi
  404c28:	bf 08 69 40 00       	mov    $0x406908,%edi
  404c2d:	48 c7 44 24 60 e0 69 	movq   $0x4069e0,0x60(%rsp)
  404c34:	40 00 
  404c36:	e8 f5 c4 ff ff       	callq  401130 <fopen@plt>
  404c3b:	48 8d bc 24 c0 00 00 	lea    0xc0(%rsp),%rdi
  404c42:	00 
  404c43:	48 89 c2             	mov    %rax,%rdx
  404c46:	be e8 03 00 00       	mov    $0x3e8,%esi
  404c4b:	48 89 c5             	mov    %rax,%rbp
  404c4e:	e8 4d c5 ff ff       	callq  4011a0 <fgets@plt>
  404c53:	48 8d bc 24 c0 00 00 	lea    0xc0(%rsp),%rdi
  404c5a:	00 
  404c5b:	48 89 ea             	mov    %rbp,%rdx
  404c5e:	be e8 03 00 00       	mov    $0x3e8,%esi
  404c63:	e8 38 c5 ff ff       	callq  4011a0 <fgets@plt>
  404c68:	48 8d 44 24 60       	lea    0x60(%rsp),%rax
  404c6d:	48 8d 4c 24 6c       	lea    0x6c(%rsp),%rcx
  404c72:	4c 8d 44 24 0c       	lea    0xc(%rsp),%r8
  404c77:	be 9c 68 40 00       	mov    $0x40689c,%esi
  404c7c:	48 89 ef             	mov    %rbp,%rdi
  404c7f:	48 8d 50 08          	lea    0x8(%rax),%rdx
  404c83:	31 c0                	xor    %eax,%eax
  404c85:	e8 a6 c5 ff ff       	callq  401230 <fscanf@plt>
  404c8a:	8b 44 24 68          	mov    0x68(%rsp),%eax
  404c8e:	48 8d 7c 24 78       	lea    0x78(%rsp),%rdi
  404c93:	be 40 00 00 00       	mov    $0x40,%esi
  404c98:	89 44 24 70          	mov    %eax,0x70(%rsp)
  404c9c:	0f af 44 24 6c       	imul   0x6c(%rsp),%eax
  404ca1:	48 63 d0             	movslq %eax,%rdx
  404ca4:	48 c1 e2 03          	shl    $0x3,%rdx
  404ca8:	e8 e3 c3 ff ff       	callq  401090 <posix_memalign@plt>
  404cad:	44 8b 6c 24 6c       	mov    0x6c(%rsp),%r13d
  404cb2:	45 85 ed             	test   %r13d,%r13d
  404cb5:	7e 44                	jle    404cfb <_Z30test_jump_penalty_2_20_libxsmmv+0x1cb>
  404cb7:	8b 54 24 68          	mov    0x68(%rsp),%edx
  404cbb:	48 8b 4c 24 78       	mov    0x78(%rsp),%rcx
  404cc0:	48 63 44 24 70       	movslq 0x70(%rsp),%rax
  404cc5:	85 d2                	test   %edx,%edx
  404cc7:	7e 32                	jle    404cfb <_Z30test_jump_penalty_2_20_libxsmmv+0x1cb>
  404cc9:	4c 8d 24 c5 00 00 00 	lea    0x0(,%rax,8),%r12
  404cd0:	00 
  404cd1:	8d 42 ff             	lea    -0x1(%rdx),%eax
  404cd4:	31 db                	xor    %ebx,%ebx
  404cd6:	4c 8d 34 c5 08 00 00 	lea    0x8(,%rax,8),%r14
  404cdd:	00 
  404cde:	66 90                	xchg   %ax,%ax
  404ce0:	31 f6                	xor    %esi,%esi
  404ce2:	48 89 cf             	mov    %rcx,%rdi
  404ce5:	4c 89 f2             	mov    %r14,%rdx
  404ce8:	e8 b3 c3 ff ff       	callq  4010a0 <memset@plt>
  404ced:	83 c3 01             	add    $0x1,%ebx
  404cf0:	48 89 c1             	mov    %rax,%rcx
  404cf3:	4c 01 e1             	add    %r12,%rcx
  404cf6:	41 39 dd             	cmp    %ebx,%r13d
  404cf9:	75 e5                	jne    404ce0 <_Z30test_jump_penalty_2_20_libxsmmv+0x1b0>
  404cfb:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  404cff:	85 c0                	test   %eax,%eax
  404d01:	7e 52                	jle    404d55 <_Z30test_jump_penalty_2_20_libxsmmv+0x225>
  404d03:	31 db                	xor    %ebx,%ebx
  404d05:	0f 1f 00             	nopl   (%rax)
  404d08:	4c 8d 44 24 18       	lea    0x18(%rsp),%r8
  404d0d:	48 8d 4c 24 14       	lea    0x14(%rsp),%rcx
  404d12:	48 8d 54 24 10       	lea    0x10(%rsp),%rdx
  404d17:	be a6 68 40 00       	mov    $0x4068a6,%esi
  404d1c:	48 89 ef             	mov    %rbp,%rdi
  404d1f:	31 c0                	xor    %eax,%eax
  404d21:	e8 0a c5 ff ff       	callq  401230 <fscanf@plt>
  404d26:	8b 44 24 14          	mov    0x14(%rsp),%eax
  404d2a:	8b 54 24 10          	mov    0x10(%rsp),%edx
  404d2e:	83 c3 01             	add    $0x1,%ebx
  404d31:	c5 fb 10 44 24 18    	vmovsd 0x18(%rsp),%xmm0
  404d37:	83 e8 01             	sub    $0x1,%eax
  404d3a:	0f af 44 24 70       	imul   0x70(%rsp),%eax
  404d3f:	39 5c 24 0c          	cmp    %ebx,0xc(%rsp)
  404d43:	8d 44 10 ff          	lea    -0x1(%rax,%rdx,1),%eax
  404d47:	48 8b 54 24 78       	mov    0x78(%rsp),%rdx
  404d4c:	48 98                	cltq   
  404d4e:	c5 fb 11 04 c2       	vmovsd %xmm0,(%rdx,%rax,8)
  404d53:	7f b3                	jg     404d08 <_Z30test_jump_penalty_2_20_libxsmmv+0x1d8>
  404d55:	48 89 ef             	mov    %rbp,%rdi
  404d58:	e8 93 c3 ff ff       	callq  4010f0 <fclose@plt>
  404d5d:	48 8d bc 24 98 00 00 	lea    0x98(%rsp),%rdi
  404d64:	00 
  404d65:	48 b8 20 00 00 00 20 	movabs $0x2000000020,%rax
  404d6c:	00 00 00 
  404d6f:	ba 00 20 00 00       	mov    $0x2000,%edx
  404d74:	be 40 00 00 00       	mov    $0x40,%esi
  404d79:	48 c7 84 24 80 00 00 	movq   $0x4069e0,0x80(%rsp)
  404d80:	00 e0 69 40 00 
  404d85:	48 89 84 24 88 00 00 	mov    %rax,0x88(%rsp)
  404d8c:	00 
  404d8d:	c7 84 24 90 00 00 00 	movl   $0x20,0x90(%rsp)
  404d94:	20 00 00 00 
  404d98:	e8 f3 c2 ff ff       	callq  401090 <posix_memalign@plt>
  404d9d:	44 8b ac 24 8c 00 00 	mov    0x8c(%rsp),%r13d
  404da4:	00 
  404da5:	45 85 ed             	test   %r13d,%r13d
  404da8:	7e 51                	jle    404dfb <_Z30test_jump_penalty_2_20_libxsmmv+0x2cb>
  404daa:	8b 94 24 88 00 00 00 	mov    0x88(%rsp),%edx
  404db1:	48 8b 8c 24 98 00 00 	mov    0x98(%rsp),%rcx
  404db8:	00 
  404db9:	48 63 84 24 90 00 00 	movslq 0x90(%rsp),%rax
  404dc0:	00 
  404dc1:	85 d2                	test   %edx,%edx
  404dc3:	7e 36                	jle    404dfb <_Z30test_jump_penalty_2_20_libxsmmv+0x2cb>
  404dc5:	48 8d 2c c5 00 00 00 	lea    0x0(,%rax,8),%rbp
  404dcc:	00 
  404dcd:	8d 42 ff             	lea    -0x1(%rdx),%eax
  404dd0:	31 db                	xor    %ebx,%ebx
  404dd2:	4c 8d 24 c5 08 00 00 	lea    0x8(,%rax,8),%r12
  404dd9:	00 
  404dda:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  404de0:	31 f6                	xor    %esi,%esi
  404de2:	48 89 cf             	mov    %rcx,%rdi
  404de5:	4c 89 e2             	mov    %r12,%rdx
  404de8:	e8 b3 c2 ff ff       	callq  4010a0 <memset@plt>
  404ded:	83 c3 01             	add    $0x1,%ebx
  404df0:	48 89 c1             	mov    %rax,%rcx
  404df3:	48 01 e9             	add    %rbp,%rcx
  404df6:	41 39 dd             	cmp    %ebx,%r13d
  404df9:	75 e5                	jne    404de0 <_Z30test_jump_penalty_2_20_libxsmmv+0x2b0>
  404dfb:	48 8d bc 24 b8 00 00 	lea    0xb8(%rsp),%rdi
  404e02:	00 
  404e03:	48 b8 20 00 00 00 20 	movabs $0x2000000020,%rax
  404e0a:	00 00 00 
  404e0d:	ba 00 20 00 00       	mov    $0x2000,%edx
  404e12:	be 40 00 00 00       	mov    $0x40,%esi
  404e17:	48 c7 84 24 a0 00 00 	movq   $0x4069e0,0xa0(%rsp)
  404e1e:	00 e0 69 40 00 
  404e23:	48 89 84 24 a8 00 00 	mov    %rax,0xa8(%rsp)
  404e2a:	00 
  404e2b:	c7 84 24 b0 00 00 00 	movl   $0x20,0xb0(%rsp)
  404e32:	20 00 00 00 
  404e36:	e8 55 c2 ff ff       	callq  401090 <posix_memalign@plt>
  404e3b:	44 8b a4 24 ac 00 00 	mov    0xac(%rsp),%r12d
  404e42:	00 
  404e43:	45 85 e4             	test   %r12d,%r12d
  404e46:	7e 53                	jle    404e9b <_Z30test_jump_penalty_2_20_libxsmmv+0x36b>
  404e48:	8b 94 24 a8 00 00 00 	mov    0xa8(%rsp),%edx
  404e4f:	48 8b 8c 24 b8 00 00 	mov    0xb8(%rsp),%rcx
  404e56:	00 
  404e57:	48 63 84 24 b0 00 00 	movslq 0xb0(%rsp),%rax
  404e5e:	00 
  404e5f:	85 d2                	test   %edx,%edx
  404e61:	7e 38                	jle    404e9b <_Z30test_jump_penalty_2_20_libxsmmv+0x36b>
  404e63:	48 8d 2c c5 00 00 00 	lea    0x0(,%rax,8),%rbp
  404e6a:	00 
  404e6b:	8d 42 ff             	lea    -0x1(%rdx),%eax
  404e6e:	31 db                	xor    %ebx,%ebx
  404e70:	4c 8d 2c c5 08 00 00 	lea    0x8(,%rax,8),%r13
  404e77:	00 
  404e78:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  404e7f:	00 
  404e80:	31 f6                	xor    %esi,%esi
  404e82:	48 89 cf             	mov    %rcx,%rdi
  404e85:	4c 89 ea             	mov    %r13,%rdx
  404e88:	e8 13 c2 ff ff       	callq  4010a0 <memset@plt>
  404e8d:	83 c3 01             	add    $0x1,%ebx
  404e90:	48 89 c1             	mov    %rax,%rcx
  404e93:	48 01 e9             	add    %rbp,%rcx
  404e96:	41 39 dc             	cmp    %ebx,%r12d
  404e99:	75 e5                	jne    404e80 <_Z30test_jump_penalty_2_20_libxsmmv+0x350>
  404e9b:	48 8d 94 24 80 00 00 	lea    0x80(%rsp),%rdx
  404ea2:	00 
  404ea3:	48 8d 74 24 60       	lea    0x60(%rsp),%rsi
  404ea8:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  404ead:	e8 de c4 ff ff       	callq  401390 <_Z4gemmRK6MatrixS1_RS_.constprop.7>
  404eb2:	48 8b 74 24 78       	mov    0x78(%rsp),%rsi
  404eb7:	48 8b 7c 24 58       	mov    0x58(%rsp),%rdi
  404ebc:	48 8b 94 24 b8 00 00 	mov    0xb8(%rsp),%rdx
  404ec3:	00 
  404ec4:	e8 e7 d5 ff ff       	callq  4024b0 <_Z25jump_penalty_2_20_libxsmmPKdS0_Pd>
  404ec9:	48 8d b4 24 a0 00 00 	lea    0xa0(%rsp),%rsi
  404ed0:	00 
  404ed1:	48 8d bc 24 80 00 00 	lea    0x80(%rsp),%rdi
  404ed8:	00 
  404ed9:	e8 d2 c7 ff ff       	callq  4016b0 <_Z13assert_equalsRK6MatrixS1_.constprop.8>
  404ede:	48 8d 74 24 20       	lea    0x20(%rsp),%rsi
  404ee3:	bf 01 00 00 00       	mov    $0x1,%edi
  404ee8:	bb b8 0b 00 00       	mov    $0xbb8,%ebx
  404eed:	e8 7e c2 ff ff       	callq  401170 <clock_gettime@plt>
  404ef2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  404ef8:	48 8b 94 24 b8 00 00 	mov    0xb8(%rsp),%rdx
  404eff:	00 
  404f00:	48 8b 74 24 78       	mov    0x78(%rsp),%rsi
  404f05:	48 8b 7c 24 58       	mov    0x58(%rsp),%rdi
  404f0a:	e8 a1 d5 ff ff       	callq  4024b0 <_Z25jump_penalty_2_20_libxsmmPKdS0_Pd>
  404f0f:	83 eb 01             	sub    $0x1,%ebx
  404f12:	75 e4                	jne    404ef8 <_Z30test_jump_penalty_2_20_libxsmmv+0x3c8>
  404f14:	48 8d 74 24 30       	lea    0x30(%rsp),%rsi
  404f19:	bf 01 00 00 00       	mov    $0x1,%edi
  404f1e:	e8 4d c2 ff ff       	callq  401170 <clock_gettime@plt>
  404f23:	ba 1b 00 00 00       	mov    $0x1b,%edx
  404f28:	be b1 68 40 00       	mov    $0x4068b1,%esi
  404f2d:	bf a0 81 60 00       	mov    $0x6081a0,%edi
  404f32:	e8 d9 c1 ff ff       	callq  401110 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  404f37:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
  404f3c:	48 2b 44 24 20       	sub    0x20(%rsp),%rax
  404f41:	bf a0 81 60 00       	mov    $0x6081a0,%edi
  404f46:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
  404f4a:	48 69 c0 00 ca 9a 3b 	imul   $0x3b9aca00,%rax,%rax
  404f51:	48 03 44 24 38       	add    0x38(%rsp),%rax
  404f56:	48 2b 44 24 28       	sub    0x28(%rsp),%rax
  404f5b:	c4 e1 fb 2a c0       	vcvtsi2sd %rax,%xmm0,%xmm0
  404f60:	c5 fb 59 05 a0 1a 00 	vmulsd 0x1aa0(%rip),%xmm0,%xmm0        # 406a08 <_ZTV11DenseMatrix+0x38>
  404f67:	00 
  404f68:	c5 fb 5e 05 a8 1a 00 	vdivsd 0x1aa8(%rip),%xmm0,%xmm0        # 406a18 <_ZTV11DenseMatrix+0x48>
  404f6f:	00 
  404f70:	e8 3b c2 ff ff       	callq  4011b0 <_ZNSo9_M_insertIdEERSoT_@plt>
  404f75:	48 89 c5             	mov    %rax,%rbp
  404f78:	48 8b 00             	mov    (%rax),%rax
  404f7b:	48 8b 40 e8          	mov    -0x18(%rax),%rax
  404f7f:	48 8b 9c 05 f0 00 00 	mov    0xf0(%rbp,%rax,1),%rbx
  404f86:	00 
  404f87:	48 85 db             	test   %rbx,%rbx
  404f8a:	0f 84 93 00 00 00    	je     405023 <_Z30test_jump_penalty_2_20_libxsmmv+0x4f3>
  404f90:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
  404f94:	74 52                	je     404fe8 <_Z30test_jump_penalty_2_20_libxsmmv+0x4b8>
  404f96:	0f be 73 43          	movsbl 0x43(%rbx),%esi
  404f9a:	48 89 ef             	mov    %rbp,%rdi
  404f9d:	e8 be c0 ff ff       	callq  401060 <_ZNSo3putEc@plt>
  404fa2:	48 89 c7             	mov    %rax,%rdi
  404fa5:	e8 06 c1 ff ff       	callq  4010b0 <_ZNSo5flushEv@plt>
  404faa:	48 8b bc 24 b8 00 00 	mov    0xb8(%rsp),%rdi
  404fb1:	00 
  404fb2:	e8 89 c1 ff ff       	callq  401140 <free@plt>
  404fb7:	48 8b bc 24 98 00 00 	mov    0x98(%rsp),%rdi
  404fbe:	00 
  404fbf:	e8 7c c1 ff ff       	callq  401140 <free@plt>
  404fc4:	48 8b 7c 24 78       	mov    0x78(%rsp),%rdi
  404fc9:	e8 72 c1 ff ff       	callq  401140 <free@plt>
  404fce:	48 8b 7c 24 58       	mov    0x58(%rsp),%rdi
  404fd3:	e8 68 c1 ff ff       	callq  401140 <free@plt>
  404fd8:	48 81 c4 b0 04 00 00 	add    $0x4b0,%rsp
  404fdf:	5b                   	pop    %rbx
  404fe0:	5d                   	pop    %rbp
  404fe1:	41 5c                	pop    %r12
  404fe3:	41 5d                	pop    %r13
  404fe5:	41 5e                	pop    %r14
  404fe7:	c3                   	retq   
  404fe8:	48 89 df             	mov    %rbx,%rdi
  404feb:	e8 30 c1 ff ff       	callq  401120 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
  404ff0:	48 8b 03             	mov    (%rbx),%rax
  404ff3:	be 0a 00 00 00       	mov    $0xa,%esi
  404ff8:	48 8b 40 30          	mov    0x30(%rax),%rax
  404ffc:	48 3d f0 65 40 00    	cmp    $0x4065f0,%rax
  405002:	74 96                	je     404f9a <_Z30test_jump_penalty_2_20_libxsmmv+0x46a>
  405004:	48 89 df             	mov    %rbx,%rdi
  405007:	ff d0                	callq  *%rax
  405009:	0f be f0             	movsbl %al,%esi
  40500c:	eb 8c                	jmp    404f9a <_Z30test_jump_penalty_2_20_libxsmmv+0x46a>
  40500e:	48 89 c3             	mov    %rax,%rbx
  405011:	48 8b 7c 24 58       	mov    0x58(%rsp),%rdi
  405016:	e8 25 c1 ff ff       	callq  401140 <free@plt>
  40501b:	48 89 df             	mov    %rbx,%rdi
  40501e:	e8 dd c1 ff ff       	callq  401200 <_Unwind_Resume@plt>
  405023:	e8 28 c1 ff ff       	callq  401150 <_ZSt16__throw_bad_castv@plt>
  405028:	48 8b bc 24 b8 00 00 	mov    0xb8(%rsp),%rdi
  40502f:	00 
  405030:	48 89 c3             	mov    %rax,%rbx
  405033:	e8 08 c1 ff ff       	callq  401140 <free@plt>
  405038:	48 8b bc 24 98 00 00 	mov    0x98(%rsp),%rdi
  40503f:	00 
  405040:	e8 fb c0 ff ff       	callq  401140 <free@plt>
  405045:	48 8b 7c 24 78       	mov    0x78(%rsp),%rdi
  40504a:	e8 f1 c0 ff ff       	callq  401140 <free@plt>
  40504f:	eb c0                	jmp    405011 <_Z30test_jump_penalty_2_20_libxsmmv+0x4e1>
  405051:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  405056:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40505d:	00 00 00 

0000000000405060 <_Z6to_cscRK6Matrix>:
  405060:	41 55                	push   %r13
  405062:	41 54                	push   %r12
  405064:	49 89 fd             	mov    %rdi,%r13
  405067:	55                   	push   %rbp
  405068:	53                   	push   %rbx
  405069:	48 89 f5             	mov    %rsi,%rbp
  40506c:	bf 30 00 00 00       	mov    $0x30,%edi
  405071:	48 83 ec 08          	sub    $0x8,%rsp
  405075:	e8 86 c0 ff ff       	callq  401100 <_Znwm@plt>
  40507a:	8b 55 08             	mov    0x8(%rbp),%edx
  40507d:	48 89 c3             	mov    %rax,%rbx
  405080:	8b 45 0c             	mov    0xc(%rbp),%eax
  405083:	48 c7 03 c0 69 40 00 	movq   $0x4069c0,(%rbx)
  40508a:	c7 43 10 00 00 00 00 	movl   $0x0,0x10(%rbx)
  405091:	41 89 d4             	mov    %edx,%r12d
  405094:	89 43 0c             	mov    %eax,0xc(%rbx)
  405097:	89 53 08             	mov    %edx,0x8(%rbx)
  40509a:	44 0f af e0          	imul   %eax,%r12d
  40509e:	48 b8 ff ff ff ff ff 	movabs $0xfffffffffffffff,%rax
  4050a5:	ff ff 0f 
  4050a8:	44 89 63 14          	mov    %r12d,0x14(%rbx)
  4050ac:	4d 63 e4             	movslq %r12d,%r12
  4050af:	49 39 c4             	cmp    %rax,%r12
  4050b2:	0f 87 64 01 00 00    	ja     40521c <_Z6to_cscRK6Matrix+0x1bc>
  4050b8:	4a 8d 3c e5 00 00 00 	lea    0x0(,%r12,8),%rdi
  4050bf:	00 
  4050c0:	e8 8b bf ff ff       	callq  401050 <_Znam@plt>
  4050c5:	49 c1 e4 02          	shl    $0x2,%r12
  4050c9:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4050cd:	4c 89 e7             	mov    %r12,%rdi
  4050d0:	e8 7b bf ff ff       	callq  401050 <_Znam@plt>
  4050d5:	48 89 43 20          	mov    %rax,0x20(%rbx)
  4050d9:	4c 89 e7             	mov    %r12,%rdi
  4050dc:	e8 6f bf ff ff       	callq  401050 <_Znam@plt>
  4050e1:	8b 55 0c             	mov    0xc(%rbp),%edx
  4050e4:	48 89 43 28          	mov    %rax,0x28(%rbx)
  4050e8:	49 89 5d 00          	mov    %rbx,0x0(%r13)
  4050ec:	85 d2                	test   %edx,%edx
  4050ee:	0f 8e 0c 01 00 00    	jle    405200 <_Z6to_cscRK6Matrix+0x1a0>
  4050f4:	8b 45 08             	mov    0x8(%rbp),%eax
  4050f7:	45 31 e4             	xor    %r12d,%r12d
  4050fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  405100:	85 c0                	test   %eax,%eax
  405102:	0f 8e eb 00 00 00    	jle    4051f3 <_Z6to_cscRK6Matrix+0x193>
  405108:	31 db                	xor    %ebx,%ebx
  40510a:	eb 12                	jmp    40511e <_Z6to_cscRK6Matrix+0xbe>
  40510c:	0f 1f 40 00          	nopl   0x0(%rax)
  405110:	8b 45 08             	mov    0x8(%rbp),%eax
  405113:	83 c3 01             	add    $0x1,%ebx
  405116:	39 d8                	cmp    %ebx,%eax
  405118:	0f 8e d2 00 00 00    	jle    4051f0 <_Z6to_cscRK6Matrix+0x190>
  40511e:	48 8b 45 00          	mov    0x0(%rbp),%rax
  405122:	44 89 e2             	mov    %r12d,%edx
  405125:	89 de                	mov    %ebx,%esi
  405127:	48 89 ef             	mov    %rbp,%rdi
  40512a:	ff 10                	callq  *(%rax)
  40512c:	c5 f9 28 c8          	vmovapd %xmm0,%xmm1
  405130:	c5 f1 54 0d b8 18 00 	vandpd 0x18b8(%rip),%xmm1,%xmm1        # 4069f0 <_ZTV11DenseMatrix+0x20>
  405137:	00 
  405138:	c5 f9 2e 0d c0 18 00 	vucomisd 0x18c0(%rip),%xmm1        # 406a00 <_ZTV11DenseMatrix+0x30>
  40513f:	00 
  405140:	76 ce                	jbe    405110 <_Z6to_cscRK6Matrix+0xb0>
  405142:	49 8b 7d 00          	mov    0x0(%r13),%rdi
  405146:	48 8b 07             	mov    (%rdi),%rax
  405149:	48 8b 40 08          	mov    0x8(%rax),%rax
  40514d:	48 3d 50 66 40 00    	cmp    $0x406650,%rax
  405153:	0f 85 b7 00 00 00    	jne    405210 <_Z6to_cscRK6Matrix+0x1b0>
  405159:	48 63 77 10          	movslq 0x10(%rdi),%rsi
  40515d:	48 8b 57 20          	mov    0x20(%rdi),%rdx
  405161:	85 f6                	test   %esi,%esi
  405163:	7e 5c                	jle    4051c1 <_Z6to_cscRK6Matrix+0x161>
  405165:	8d 46 ff             	lea    -0x1(%rsi),%eax
  405168:	45 31 c9             	xor    %r9d,%r9d
  40516b:	48 8d 0c 85 04 00 00 	lea    0x4(,%rax,4),%rcx
  405172:	00 
  405173:	31 c0                	xor    %eax,%eax
  405175:	eb 12                	jmp    405189 <_Z6to_cscRK6Matrix+0x129>
  405177:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40517e:	00 00 
  405180:	48 83 c0 04          	add    $0x4,%rax
  405184:	48 39 c8             	cmp    %rcx,%rax
  405187:	74 2f                	je     4051b8 <_Z6to_cscRK6Matrix+0x158>
  405189:	39 1c 02             	cmp    %ebx,(%rdx,%rax,1)
  40518c:	75 f2                	jne    405180 <_Z6to_cscRK6Matrix+0x120>
  40518e:	4c 8b 47 28          	mov    0x28(%rdi),%r8
  405192:	45 3b 24 00          	cmp    (%r8,%rax,1),%r12d
  405196:	75 e8                	jne    405180 <_Z6to_cscRK6Matrix+0x120>
  405198:	4c 8b 47 18          	mov    0x18(%rdi),%r8
  40519c:	41 b9 01 00 00 00    	mov    $0x1,%r9d
  4051a2:	c4 c1 7b 11 04 40    	vmovsd %xmm0,(%r8,%rax,2)
  4051a8:	48 83 c0 04          	add    $0x4,%rax
  4051ac:	48 39 c8             	cmp    %rcx,%rax
  4051af:	75 d8                	jne    405189 <_Z6to_cscRK6Matrix+0x129>
  4051b1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4051b8:	45 84 c9             	test   %r9b,%r9b
  4051bb:	0f 85 4f ff ff ff    	jne    405110 <_Z6to_cscRK6Matrix+0xb0>
  4051c1:	48 8b 47 18          	mov    0x18(%rdi),%rax
  4051c5:	c5 fb 11 04 f0       	vmovsd %xmm0,(%rax,%rsi,8)
  4051ca:	89 1c b2             	mov    %ebx,(%rdx,%rsi,4)
  4051cd:	48 63 57 10          	movslq 0x10(%rdi),%rdx
  4051d1:	48 8b 47 28          	mov    0x28(%rdi),%rax
  4051d5:	83 c3 01             	add    $0x1,%ebx
  4051d8:	44 89 24 90          	mov    %r12d,(%rax,%rdx,4)
  4051dc:	8b 45 08             	mov    0x8(%rbp),%eax
  4051df:	83 47 10 01          	addl   $0x1,0x10(%rdi)
  4051e3:	39 d8                	cmp    %ebx,%eax
  4051e5:	0f 8f 33 ff ff ff    	jg     40511e <_Z6to_cscRK6Matrix+0xbe>
  4051eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4051f0:	8b 55 0c             	mov    0xc(%rbp),%edx
  4051f3:	41 83 c4 01          	add    $0x1,%r12d
  4051f7:	41 39 d4             	cmp    %edx,%r12d
  4051fa:	0f 8c 00 ff ff ff    	jl     405100 <_Z6to_cscRK6Matrix+0xa0>
  405200:	48 83 c4 08          	add    $0x8,%rsp
  405204:	4c 89 e8             	mov    %r13,%rax
  405207:	5b                   	pop    %rbx
  405208:	5d                   	pop    %rbp
  405209:	41 5c                	pop    %r12
  40520b:	41 5d                	pop    %r13
  40520d:	c3                   	retq   
  40520e:	66 90                	xchg   %ax,%ax
  405210:	44 89 e2             	mov    %r12d,%edx
  405213:	89 de                	mov    %ebx,%esi
  405215:	ff d0                	callq  *%rax
  405217:	e9 f4 fe ff ff       	jmpq   405110 <_Z6to_cscRK6Matrix+0xb0>
  40521c:	e8 5f bf ff ff       	callq  401180 <__cxa_throw_bad_array_new_length@plt>
  405221:	48 89 c3             	mov    %rax,%rbx
  405224:	4c 89 ef             	mov    %r13,%rdi
  405227:	e8 34 15 00 00       	callq  406760 <_ZNSt10unique_ptrI12SparseMatrixSt14default_deleteIS0_EED1Ev>
  40522c:	48 89 df             	mov    %rbx,%rdi
  40522f:	e8 cc bf ff ff       	callq  401200 <_Unwind_Resume@plt>
  405234:	48 89 c5             	mov    %rax,%rbp
  405237:	48 89 df             	mov    %rbx,%rdi
  40523a:	e8 a1 be ff ff       	callq  4010e0 <_ZdlPv@plt>
  40523f:	48 89 ef             	mov    %rbp,%rdi
  405242:	e8 b9 bf ff ff       	callq  401200 <_Unwind_Resume@plt>
  405247:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40524e:	00 00 

0000000000405250 <_Z7to_bcscRK6Matrixii>:
  405250:	41 57                	push   %r15
  405252:	41 56                	push   %r14
  405254:	41 89 d7             	mov    %edx,%r15d
  405257:	41 55                	push   %r13
  405259:	41 54                	push   %r12
  40525b:	49 89 fe             	mov    %rdi,%r14
  40525e:	55                   	push   %rbp
  40525f:	53                   	push   %rbx
  405260:	49 89 f4             	mov    %rsi,%r12
  405263:	bf 30 00 00 00       	mov    $0x30,%edi
  405268:	48 83 ec 28          	sub    $0x28,%rsp
  40526c:	8b 46 08             	mov    0x8(%rsi),%eax
  40526f:	89 4c 24 0c          	mov    %ecx,0xc(%rsp)
  405273:	99                   	cltd   
  405274:	41 f7 ff             	idiv   %r15d
  405277:	89 44 24 10          	mov    %eax,0x10(%rsp)
  40527b:	8b 46 0c             	mov    0xc(%rsi),%eax
  40527e:	99                   	cltd   
  40527f:	f7 f9                	idiv   %ecx
  405281:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  405285:	e8 76 be ff ff       	callq  401100 <_Znwm@plt>
  40528a:	41 8b 54 24 08       	mov    0x8(%r12),%edx
  40528f:	48 89 c3             	mov    %rax,%rbx
  405292:	41 8b 44 24 0c       	mov    0xc(%r12),%eax
  405297:	48 c7 03 c0 69 40 00 	movq   $0x4069c0,(%rbx)
  40529e:	c7 43 10 00 00 00 00 	movl   $0x0,0x10(%rbx)
  4052a5:	89 d5                	mov    %edx,%ebp
  4052a7:	89 43 0c             	mov    %eax,0xc(%rbx)
  4052aa:	89 53 08             	mov    %edx,0x8(%rbx)
  4052ad:	0f af e8             	imul   %eax,%ebp
  4052b0:	48 b8 ff ff ff ff ff 	movabs $0xfffffffffffffff,%rax
  4052b7:	ff ff 0f 
  4052ba:	89 6b 14             	mov    %ebp,0x14(%rbx)
  4052bd:	48 63 ed             	movslq %ebp,%rbp
  4052c0:	48 39 c5             	cmp    %rax,%rbp
  4052c3:	0f 87 d2 01 00 00    	ja     40549b <_Z7to_bcscRK6Matrixii+0x24b>
  4052c9:	48 8d 3c ed 00 00 00 	lea    0x0(,%rbp,8),%rdi
  4052d0:	00 
  4052d1:	e8 7a bd ff ff       	callq  401050 <_Znam@plt>
  4052d6:	48 c1 e5 02          	shl    $0x2,%rbp
  4052da:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4052de:	48 89 ef             	mov    %rbp,%rdi
  4052e1:	e8 6a bd ff ff       	callq  401050 <_Znam@plt>
  4052e6:	48 89 43 20          	mov    %rax,0x20(%rbx)
  4052ea:	48 89 ef             	mov    %rbp,%rdi
  4052ed:	e8 5e bd ff ff       	callq  401050 <_Znam@plt>
  4052f2:	8b 4c 24 1c          	mov    0x1c(%rsp),%ecx
  4052f6:	48 89 43 28          	mov    %rax,0x28(%rbx)
  4052fa:	49 89 1e             	mov    %rbx,(%r14)
  4052fd:	85 c9                	test   %ecx,%ecx
  4052ff:	0f 8e 77 01 00 00    	jle    40547c <_Z7to_bcscRK6Matrixii+0x22c>
  405305:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  405309:	c7 44 24 18 00 00 00 	movl   $0x0,0x18(%rsp)
  405310:	00 
  405311:	89 04 24             	mov    %eax,(%rsp)
  405314:	8b 54 24 10          	mov    0x10(%rsp),%edx
  405318:	85 d2                	test   %edx,%edx
  40531a:	0f 8e 42 01 00 00    	jle    405462 <_Z7to_bcscRK6Matrixii+0x212>
  405320:	8b 04 24             	mov    (%rsp),%eax
  405323:	2b 44 24 0c          	sub    0xc(%rsp),%eax
  405327:	45 89 fd             	mov    %r15d,%r13d
  40532a:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%rsp)
  405331:	00 
  405332:	89 44 24 14          	mov    %eax,0x14(%rsp)
  405336:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40533d:	00 00 00 
  405340:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  405344:	85 c0                	test   %eax,%eax
  405346:	0f 8e 00 01 00 00    	jle    40544c <_Z7to_bcscRK6Matrixii+0x1fc>
  40534c:	44 89 e8             	mov    %r13d,%eax
  40534f:	8b 6c 24 14          	mov    0x14(%rsp),%ebp
  405353:	44 29 f8             	sub    %r15d,%eax
  405356:	89 44 24 04          	mov    %eax,0x4(%rsp)
  40535a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  405360:	45 85 ff             	test   %r15d,%r15d
  405363:	0f 8e d7 00 00 00    	jle    405440 <_Z7to_bcscRK6Matrixii+0x1f0>
  405369:	8b 5c 24 04          	mov    0x4(%rsp),%ebx
  40536d:	eb 0d                	jmp    40537c <_Z7to_bcscRK6Matrixii+0x12c>
  40536f:	90                   	nop
  405370:	83 c3 01             	add    $0x1,%ebx
  405373:	44 39 eb             	cmp    %r13d,%ebx
  405376:	0f 84 c4 00 00 00    	je     405440 <_Z7to_bcscRK6Matrixii+0x1f0>
  40537c:	49 8b 04 24          	mov    (%r12),%rax
  405380:	89 ea                	mov    %ebp,%edx
  405382:	89 de                	mov    %ebx,%esi
  405384:	4c 89 e7             	mov    %r12,%rdi
  405387:	ff 10                	callq  *(%rax)
  405389:	c5 f9 28 c8          	vmovapd %xmm0,%xmm1
  40538d:	c5 f1 54 0d 5b 16 00 	vandpd 0x165b(%rip),%xmm1,%xmm1        # 4069f0 <_ZTV11DenseMatrix+0x20>
  405394:	00 
  405395:	c5 f9 2e 0d 63 16 00 	vucomisd 0x1663(%rip),%xmm1        # 406a00 <_ZTV11DenseMatrix+0x30>
  40539c:	00 
  40539d:	76 d1                	jbe    405370 <_Z7to_bcscRK6Matrixii+0x120>
  40539f:	49 8b 3e             	mov    (%r14),%rdi
  4053a2:	48 8b 07             	mov    (%rdi),%rax
  4053a5:	48 8b 40 08          	mov    0x8(%rax),%rax
  4053a9:	48 3d 50 66 40 00    	cmp    $0x406650,%rax
  4053af:	0f 85 db 00 00 00    	jne    405490 <_Z7to_bcscRK6Matrixii+0x240>
  4053b5:	48 63 77 10          	movslq 0x10(%rdi),%rsi
  4053b9:	48 8b 57 20          	mov    0x20(%rdi),%rdx
  4053bd:	85 f6                	test   %esi,%esi
  4053bf:	7e 58                	jle    405419 <_Z7to_bcscRK6Matrixii+0x1c9>
  4053c1:	8d 46 ff             	lea    -0x1(%rsi),%eax
  4053c4:	45 31 c9             	xor    %r9d,%r9d
  4053c7:	48 8d 0c 85 04 00 00 	lea    0x4(,%rax,4),%rcx
  4053ce:	00 
  4053cf:	31 c0                	xor    %eax,%eax
  4053d1:	eb 0e                	jmp    4053e1 <_Z7to_bcscRK6Matrixii+0x191>
  4053d3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4053d8:	48 83 c0 04          	add    $0x4,%rax
  4053dc:	48 39 c1             	cmp    %rax,%rcx
  4053df:	74 2f                	je     405410 <_Z7to_bcscRK6Matrixii+0x1c0>
  4053e1:	3b 1c 02             	cmp    (%rdx,%rax,1),%ebx
  4053e4:	75 f2                	jne    4053d8 <_Z7to_bcscRK6Matrixii+0x188>
  4053e6:	4c 8b 47 28          	mov    0x28(%rdi),%r8
  4053ea:	41 3b 2c 00          	cmp    (%r8,%rax,1),%ebp
  4053ee:	75 e8                	jne    4053d8 <_Z7to_bcscRK6Matrixii+0x188>
  4053f0:	4c 8b 47 18          	mov    0x18(%rdi),%r8
  4053f4:	41 b9 01 00 00 00    	mov    $0x1,%r9d
  4053fa:	c4 c1 7b 11 04 40    	vmovsd %xmm0,(%r8,%rax,2)
  405400:	48 83 c0 04          	add    $0x4,%rax
  405404:	48 39 c1             	cmp    %rax,%rcx
  405407:	75 d8                	jne    4053e1 <_Z7to_bcscRK6Matrixii+0x191>
  405409:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  405410:	45 84 c9             	test   %r9b,%r9b
  405413:	0f 85 57 ff ff ff    	jne    405370 <_Z7to_bcscRK6Matrixii+0x120>
  405419:	48 8b 47 18          	mov    0x18(%rdi),%rax
  40541d:	c5 fb 11 04 f0       	vmovsd %xmm0,(%rax,%rsi,8)
  405422:	89 1c b2             	mov    %ebx,(%rdx,%rsi,4)
  405425:	48 63 57 10          	movslq 0x10(%rdi),%rdx
  405429:	48 8b 47 28          	mov    0x28(%rdi),%rax
  40542d:	83 c3 01             	add    $0x1,%ebx
  405430:	89 2c 90             	mov    %ebp,(%rax,%rdx,4)
  405433:	83 47 10 01          	addl   $0x1,0x10(%rdi)
  405437:	44 39 eb             	cmp    %r13d,%ebx
  40543a:	0f 85 3c ff ff ff    	jne    40537c <_Z7to_bcscRK6Matrixii+0x12c>
  405440:	83 c5 01             	add    $0x1,%ebp
  405443:	3b 2c 24             	cmp    (%rsp),%ebp
  405446:	0f 85 14 ff ff ff    	jne    405360 <_Z7to_bcscRK6Matrixii+0x110>
  40544c:	83 44 24 08 01       	addl   $0x1,0x8(%rsp)
  405451:	45 01 fd             	add    %r15d,%r13d
  405454:	8b 44 24 08          	mov    0x8(%rsp),%eax
  405458:	39 44 24 10          	cmp    %eax,0x10(%rsp)
  40545c:	0f 85 de fe ff ff    	jne    405340 <_Z7to_bcscRK6Matrixii+0xf0>
  405462:	83 44 24 18 01       	addl   $0x1,0x18(%rsp)
  405467:	8b 74 24 0c          	mov    0xc(%rsp),%esi
  40546b:	8b 44 24 18          	mov    0x18(%rsp),%eax
  40546f:	01 34 24             	add    %esi,(%rsp)
  405472:	39 44 24 1c          	cmp    %eax,0x1c(%rsp)
  405476:	0f 85 98 fe ff ff    	jne    405314 <_Z7to_bcscRK6Matrixii+0xc4>
  40547c:	48 83 c4 28          	add    $0x28,%rsp
  405480:	4c 89 f0             	mov    %r14,%rax
  405483:	5b                   	pop    %rbx
  405484:	5d                   	pop    %rbp
  405485:	41 5c                	pop    %r12
  405487:	41 5d                	pop    %r13
  405489:	41 5e                	pop    %r14
  40548b:	41 5f                	pop    %r15
  40548d:	c3                   	retq   
  40548e:	66 90                	xchg   %ax,%ax
  405490:	89 ea                	mov    %ebp,%edx
  405492:	89 de                	mov    %ebx,%esi
  405494:	ff d0                	callq  *%rax
  405496:	e9 d5 fe ff ff       	jmpq   405370 <_Z7to_bcscRK6Matrixii+0x120>
  40549b:	e8 e0 bc ff ff       	callq  401180 <__cxa_throw_bad_array_new_length@plt>
  4054a0:	48 89 c3             	mov    %rax,%rbx
  4054a3:	4c 89 f7             	mov    %r14,%rdi
  4054a6:	e8 b5 12 00 00       	callq  406760 <_ZNSt10unique_ptrI12SparseMatrixSt14default_deleteIS0_EED1Ev>
  4054ab:	48 89 df             	mov    %rbx,%rdi
  4054ae:	e8 4d bd ff ff       	callq  401200 <_Unwind_Resume@plt>
  4054b3:	48 89 c5             	mov    %rax,%rbp
  4054b6:	48 89 df             	mov    %rbx,%rdi
  4054b9:	e8 22 bc ff ff       	callq  4010e0 <_ZdlPv@plt>
  4054be:	48 89 ef             	mov    %rbp,%rdi
  4054c1:	e8 3a bd ff ff       	callq  401200 <_Unwind_Resume@plt>
  4054c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4054cd:	00 00 00 

00000000004054d0 <_Z7to_bcscRK6Matrixii.constprop.6>:
  4054d0:	41 57                	push   %r15
  4054d2:	41 56                	push   %r14
  4054d4:	49 89 fe             	mov    %rdi,%r14
  4054d7:	41 55                	push   %r13
  4054d9:	41 54                	push   %r12
  4054db:	bf 30 00 00 00       	mov    $0x30,%edi
  4054e0:	55                   	push   %rbp
  4054e1:	53                   	push   %rbx
  4054e2:	48 89 f5             	mov    %rsi,%rbp
  4054e5:	48 83 ec 28          	sub    $0x28,%rsp
  4054e9:	8b 56 08             	mov    0x8(%rsi),%edx
  4054ec:	8d 42 0f             	lea    0xf(%rdx),%eax
  4054ef:	85 d2                	test   %edx,%edx
  4054f1:	0f 49 c2             	cmovns %edx,%eax
  4054f4:	c1 f8 04             	sar    $0x4,%eax
  4054f7:	89 44 24 18          	mov    %eax,0x18(%rsp)
  4054fb:	8b 46 0c             	mov    0xc(%rsi),%eax
  4054fe:	44 8d 68 0f          	lea    0xf(%rax),%r13d
  405502:	85 c0                	test   %eax,%eax
  405504:	44 0f 49 e8          	cmovns %eax,%r13d
  405508:	e8 f3 bb ff ff       	callq  401100 <_Znwm@plt>
  40550d:	8b 55 08             	mov    0x8(%rbp),%edx
  405510:	48 89 c3             	mov    %rax,%rbx
  405513:	8b 45 0c             	mov    0xc(%rbp),%eax
  405516:	41 c1 fd 04          	sar    $0x4,%r13d
  40551a:	48 c7 03 c0 69 40 00 	movq   $0x4069c0,(%rbx)
  405521:	c7 43 10 00 00 00 00 	movl   $0x0,0x10(%rbx)
  405528:	41 89 d4             	mov    %edx,%r12d
  40552b:	89 43 0c             	mov    %eax,0xc(%rbx)
  40552e:	89 53 08             	mov    %edx,0x8(%rbx)
  405531:	44 0f af e0          	imul   %eax,%r12d
  405535:	48 b8 ff ff ff ff ff 	movabs $0xfffffffffffffff,%rax
  40553c:	ff ff 0f 
  40553f:	44 89 63 14          	mov    %r12d,0x14(%rbx)
  405543:	4d 63 e4             	movslq %r12d,%r12
  405546:	49 39 c4             	cmp    %rax,%r12
  405549:	0f 87 29 02 00 00    	ja     405778 <_Z7to_bcscRK6Matrixii.constprop.6+0x2a8>
  40554f:	4a 8d 3c e5 00 00 00 	lea    0x0(,%r12,8),%rdi
  405556:	00 
  405557:	e8 f4 ba ff ff       	callq  401050 <_Znam@plt>
  40555c:	49 c1 e4 02          	shl    $0x2,%r12
  405560:	48 89 43 18          	mov    %rax,0x18(%rbx)
  405564:	4c 89 e7             	mov    %r12,%rdi
  405567:	e8 e4 ba ff ff       	callq  401050 <_Znam@plt>
  40556c:	48 89 43 20          	mov    %rax,0x20(%rbx)
  405570:	4c 89 e7             	mov    %r12,%rdi
  405573:	e8 d8 ba ff ff       	callq  401050 <_Znam@plt>
  405578:	45 85 ed             	test   %r13d,%r13d
  40557b:	48 89 43 28          	mov    %rax,0x28(%rbx)
  40557f:	49 89 1e             	mov    %rbx,(%r14)
  405582:	0f 8e 82 01 00 00    	jle    40570a <_Z7to_bcscRK6Matrixii.constprop.6+0x23a>
  405588:	8b 44 24 18          	mov    0x18(%rsp),%eax
  40558c:	41 83 c5 01          	add    $0x1,%r13d
  405590:	c7 44 24 10 00 00 00 	movl   $0x0,0x10(%rsp)
  405597:	00 
  405598:	41 c1 e5 04          	shl    $0x4,%r13d
  40559c:	c7 44 24 0c 10 00 00 	movl   $0x10,0xc(%rsp)
  4055a3:	00 
  4055a4:	44 89 6c 24 1c       	mov    %r13d,0x1c(%rsp)
  4055a9:	83 c0 01             	add    $0x1,%eax
  4055ac:	c1 e0 04             	shl    $0x4,%eax
  4055af:	89 44 24 14          	mov    %eax,0x14(%rsp)
  4055b3:	8b 44 24 18          	mov    0x18(%rsp),%eax
  4055b7:	85 c0                	test   %eax,%eax
  4055b9:	0f 8e 33 01 00 00    	jle    4056f2 <_Z7to_bcscRK6Matrixii.constprop.6+0x222>
  4055bf:	45 31 ff             	xor    %r15d,%r15d
  4055c2:	41 bd 10 00 00 00    	mov    $0x10,%r13d
  4055c8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4055cf:	00 
  4055d0:	44 8b 64 24 10       	mov    0x10(%rsp),%r12d
  4055d5:	0f 1f 00             	nopl   (%rax)
  4055d8:	44 89 fb             	mov    %r15d,%ebx
  4055db:	eb 0f                	jmp    4055ec <_Z7to_bcscRK6Matrixii.constprop.6+0x11c>
  4055dd:	0f 1f 00             	nopl   (%rax)
  4055e0:	83 c3 01             	add    $0x1,%ebx
  4055e3:	44 39 eb             	cmp    %r13d,%ebx
  4055e6:	0f 84 e4 00 00 00    	je     4056d0 <_Z7to_bcscRK6Matrixii.constprop.6+0x200>
  4055ec:	3b 5d 08             	cmp    0x8(%rbp),%ebx
  4055ef:	0f 8d 37 01 00 00    	jge    40572c <_Z7to_bcscRK6Matrixii.constprop.6+0x25c>
  4055f5:	44 3b 65 0c          	cmp    0xc(%rbp),%r12d
  4055f9:	0f 8d 2d 01 00 00    	jge    40572c <_Z7to_bcscRK6Matrixii.constprop.6+0x25c>
  4055ff:	8b 45 10             	mov    0x10(%rbp),%eax
  405602:	48 8b 55 18          	mov    0x18(%rbp),%rdx
  405606:	41 0f af c4          	imul   %r12d,%eax
  40560a:	01 d8                	add    %ebx,%eax
  40560c:	48 98                	cltq   
  40560e:	c5 fb 10 04 c2       	vmovsd (%rdx,%rax,8),%xmm0
  405613:	c5 f9 28 c8          	vmovapd %xmm0,%xmm1
  405617:	c5 f1 54 0d d1 13 00 	vandpd 0x13d1(%rip),%xmm1,%xmm1        # 4069f0 <_ZTV11DenseMatrix+0x20>
  40561e:	00 
  40561f:	c5 f9 2e 0d d9 13 00 	vucomisd 0x13d9(%rip),%xmm1        # 406a00 <_ZTV11DenseMatrix+0x30>
  405626:	00 
  405627:	76 b7                	jbe    4055e0 <_Z7to_bcscRK6Matrixii.constprop.6+0x110>
  405629:	49 8b 3e             	mov    (%r14),%rdi
  40562c:	48 8b 07             	mov    (%rdi),%rax
  40562f:	48 8b 40 08          	mov    0x8(%rax),%rax
  405633:	48 3d 50 66 40 00    	cmp    $0x406650,%rax
  405639:	0f 85 e1 00 00 00    	jne    405720 <_Z7to_bcscRK6Matrixii.constprop.6+0x250>
  40563f:	48 63 77 10          	movslq 0x10(%rdi),%rsi
  405643:	48 8b 57 20          	mov    0x20(%rdi),%rdx
  405647:	85 f6                	test   %esi,%esi
  405649:	7e 56                	jle    4056a1 <_Z7to_bcscRK6Matrixii.constprop.6+0x1d1>
  40564b:	8d 46 ff             	lea    -0x1(%rsi),%eax
  40564e:	45 31 c9             	xor    %r9d,%r9d
  405651:	48 8d 0c 85 04 00 00 	lea    0x4(,%rax,4),%rcx
  405658:	00 
  405659:	31 c0                	xor    %eax,%eax
  40565b:	eb 0c                	jmp    405669 <_Z7to_bcscRK6Matrixii.constprop.6+0x199>
  40565d:	0f 1f 00             	nopl   (%rax)
  405660:	48 83 c0 04          	add    $0x4,%rax
  405664:	48 39 c1             	cmp    %rax,%rcx
  405667:	74 2f                	je     405698 <_Z7to_bcscRK6Matrixii.constprop.6+0x1c8>
  405669:	3b 1c 02             	cmp    (%rdx,%rax,1),%ebx
  40566c:	75 f2                	jne    405660 <_Z7to_bcscRK6Matrixii.constprop.6+0x190>
  40566e:	4c 8b 47 28          	mov    0x28(%rdi),%r8
  405672:	45 3b 24 00          	cmp    (%r8,%rax,1),%r12d
  405676:	75 e8                	jne    405660 <_Z7to_bcscRK6Matrixii.constprop.6+0x190>
  405678:	4c 8b 47 18          	mov    0x18(%rdi),%r8
  40567c:	41 b9 01 00 00 00    	mov    $0x1,%r9d
  405682:	c4 c1 7b 11 04 40    	vmovsd %xmm0,(%r8,%rax,2)
  405688:	48 83 c0 04          	add    $0x4,%rax
  40568c:	48 39 c1             	cmp    %rax,%rcx
  40568f:	75 d8                	jne    405669 <_Z7to_bcscRK6Matrixii.constprop.6+0x199>
  405691:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  405698:	45 84 c9             	test   %r9b,%r9b
  40569b:	0f 85 3f ff ff ff    	jne    4055e0 <_Z7to_bcscRK6Matrixii.constprop.6+0x110>
  4056a1:	48 8b 47 18          	mov    0x18(%rdi),%rax
  4056a5:	c5 fb 11 04 f0       	vmovsd %xmm0,(%rax,%rsi,8)
  4056aa:	89 1c b2             	mov    %ebx,(%rdx,%rsi,4)
  4056ad:	48 63 57 10          	movslq 0x10(%rdi),%rdx
  4056b1:	48 8b 47 28          	mov    0x28(%rdi),%rax
  4056b5:	83 c3 01             	add    $0x1,%ebx
  4056b8:	44 89 24 90          	mov    %r12d,(%rax,%rdx,4)
  4056bc:	83 47 10 01          	addl   $0x1,0x10(%rdi)
  4056c0:	44 39 eb             	cmp    %r13d,%ebx
  4056c3:	0f 85 23 ff ff ff    	jne    4055ec <_Z7to_bcscRK6Matrixii.constprop.6+0x11c>
  4056c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4056d0:	41 83 c4 01          	add    $0x1,%r12d
  4056d4:	44 3b 64 24 0c       	cmp    0xc(%rsp),%r12d
  4056d9:	0f 85 f9 fe ff ff    	jne    4055d8 <_Z7to_bcscRK6Matrixii.constprop.6+0x108>
  4056df:	41 83 c5 10          	add    $0x10,%r13d
  4056e3:	41 83 c7 10          	add    $0x10,%r15d
  4056e7:	44 39 6c 24 14       	cmp    %r13d,0x14(%rsp)
  4056ec:	0f 85 de fe ff ff    	jne    4055d0 <_Z7to_bcscRK6Matrixii.constprop.6+0x100>
  4056f2:	83 44 24 0c 10       	addl   $0x10,0xc(%rsp)
  4056f7:	83 44 24 10 10       	addl   $0x10,0x10(%rsp)
  4056fc:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  405700:	39 44 24 1c          	cmp    %eax,0x1c(%rsp)
  405704:	0f 85 a9 fe ff ff    	jne    4055b3 <_Z7to_bcscRK6Matrixii.constprop.6+0xe3>
  40570a:	48 83 c4 28          	add    $0x28,%rsp
  40570e:	4c 89 f0             	mov    %r14,%rax
  405711:	5b                   	pop    %rbx
  405712:	5d                   	pop    %rbp
  405713:	41 5c                	pop    %r12
  405715:	41 5d                	pop    %r13
  405717:	41 5e                	pop    %r14
  405719:	41 5f                	pop    %r15
  40571b:	c3                   	retq   
  40571c:	0f 1f 40 00          	nopl   0x0(%rax)
  405720:	44 89 e2             	mov    %r12d,%edx
  405723:	89 de                	mov    %ebx,%esi
  405725:	ff d0                	callq  *%rax
  405727:	e9 b4 fe ff ff       	jmpq   4055e0 <_Z7to_bcscRK6Matrixii.constprop.6+0x110>
  40572c:	bf 10 00 00 00       	mov    $0x10,%edi
  405731:	e8 4a b9 ff ff       	callq  401080 <__cxa_allocate_exception@plt>
  405736:	be 34 68 40 00       	mov    $0x406834,%esi
  40573b:	48 89 c7             	mov    %rax,%rdi
  40573e:	48 89 c5             	mov    %rax,%rbp
  405741:	e8 da ba ff ff       	callq  401220 <_ZNSt16invalid_argumentC1EPKc@plt>
  405746:	ba d0 11 40 00       	mov    $0x4011d0,%edx
  40574b:	be 08 83 60 00       	mov    $0x608308,%esi
  405750:	48 89 ef             	mov    %rbp,%rdi
  405753:	e8 88 ba ff ff       	callq  4011e0 <__cxa_throw@plt>
  405758:	48 89 c3             	mov    %rax,%rbx
  40575b:	4c 89 f7             	mov    %r14,%rdi
  40575e:	e8 fd 0f 00 00       	callq  406760 <_ZNSt10unique_ptrI12SparseMatrixSt14default_deleteIS0_EED1Ev>
  405763:	48 89 df             	mov    %rbx,%rdi
  405766:	e8 95 ba ff ff       	callq  401200 <_Unwind_Resume@plt>
  40576b:	48 89 ef             	mov    %rbp,%rdi
  40576e:	48 89 c3             	mov    %rax,%rbx
  405771:	e8 4a b9 ff ff       	callq  4010c0 <__cxa_free_exception@plt>
  405776:	eb e3                	jmp    40575b <_Z7to_bcscRK6Matrixii.constprop.6+0x28b>
  405778:	e8 03 ba ff ff       	callq  401180 <__cxa_throw_bad_array_new_length@plt>
  40577d:	48 89 c5             	mov    %rax,%rbp
  405780:	48 89 df             	mov    %rbx,%rdi
  405783:	e8 58 b9 ff ff       	callq  4010e0 <_ZdlPv@plt>
  405788:	48 89 ef             	mov    %rbp,%rdi
  40578b:	e8 70 ba ff ff       	callq  401200 <_Unwind_Resume@plt>

0000000000405790 <_Z31test_jump_penalty_2_20_unrolledv>:
  405790:	41 56                	push   %r14
  405792:	41 55                	push   %r13
  405794:	48 b8 20 00 00 00 30 	movabs $0x3000000020,%rax
  40579b:	00 00 00 
  40579e:	41 54                	push   %r12
  4057a0:	55                   	push   %rbp
  4057a1:	ba 00 30 00 00       	mov    $0x3000,%edx
  4057a6:	53                   	push   %rbx
  4057a7:	be 40 00 00 00       	mov    $0x40,%esi
  4057ac:	48 81 ec d0 04 00 00 	sub    $0x4d0,%rsp
  4057b3:	48 8d 7c 24 78       	lea    0x78(%rsp),%rdi
  4057b8:	48 c7 44 24 60 e0 69 	movq   $0x4069e0,0x60(%rsp)
  4057bf:	40 00 
  4057c1:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
  4057c6:	c7 44 24 70 20 00 00 	movl   $0x20,0x70(%rsp)
  4057cd:	00 
  4057ce:	e8 bd b8 ff ff       	callq  401090 <posix_memalign@plt>
  4057d3:	8b 5c 24 6c          	mov    0x6c(%rsp),%ebx
  4057d7:	85 db                	test   %ebx,%ebx
  4057d9:	0f 8e a4 00 00 00    	jle    405883 <_Z31test_jump_penalty_2_20_unrolledv+0xf3>
  4057df:	44 8b 64 24 68       	mov    0x68(%rsp),%r12d
  4057e4:	48 8b 4c 24 78       	mov    0x78(%rsp),%rcx
  4057e9:	48 63 44 24 70       	movslq 0x70(%rsp),%rax
  4057ee:	45 85 e4             	test   %r12d,%r12d
  4057f1:	7e 37                	jle    40582a <_Z31test_jump_penalty_2_20_unrolledv+0x9a>
  4057f3:	4c 8d 2c c5 00 00 00 	lea    0x0(,%rax,8),%r13
  4057fa:	00 
  4057fb:	41 8d 44 24 ff       	lea    -0x1(%r12),%eax
  405800:	31 ed                	xor    %ebp,%ebp
  405802:	4c 8d 34 c5 08 00 00 	lea    0x8(,%rax,8),%r14
  405809:	00 
  40580a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  405810:	31 f6                	xor    %esi,%esi
  405812:	48 89 cf             	mov    %rcx,%rdi
  405815:	4c 89 f2             	mov    %r14,%rdx
  405818:	e8 83 b8 ff ff       	callq  4010a0 <memset@plt>
  40581d:	83 c5 01             	add    $0x1,%ebp
  405820:	48 89 c1             	mov    %rax,%rcx
  405823:	4c 01 e9             	add    %r13,%rcx
  405826:	39 dd                	cmp    %ebx,%ebp
  405828:	75 e6                	jne    405810 <_Z31test_jump_penalty_2_20_unrolledv+0x80>
  40582a:	31 ed                	xor    %ebp,%ebp
  40582c:	0f 1f 40 00          	nopl   0x0(%rax)
  405830:	45 85 e4             	test   %r12d,%r12d
  405833:	7e 47                	jle    40587c <_Z31test_jump_penalty_2_20_unrolledv+0xec>
  405835:	31 db                	xor    %ebx,%ebx
  405837:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40583e:	00 00 
  405840:	e8 2b b8 ff ff       	callq  401070 <rand@plt>
  405845:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
  405849:	8b 54 24 70          	mov    0x70(%rsp),%edx
  40584d:	44 8b 64 24 68       	mov    0x68(%rsp),%r12d
  405852:	c5 fb 2a c0          	vcvtsi2sd %eax,%xmm0,%xmm0
  405856:	c5 fb 5e 05 b2 11 00 	vdivsd 0x11b2(%rip),%xmm0,%xmm0        # 406a10 <_ZTV11DenseMatrix+0x40>
  40585d:	00 
  40585e:	48 8b 44 24 78       	mov    0x78(%rsp),%rax
  405863:	0f af d5             	imul   %ebp,%edx
  405866:	01 da                	add    %ebx,%edx
  405868:	83 c3 01             	add    $0x1,%ebx
  40586b:	48 63 d2             	movslq %edx,%rdx
  40586e:	41 39 dc             	cmp    %ebx,%r12d
  405871:	c5 fb 11 04 d0       	vmovsd %xmm0,(%rax,%rdx,8)
  405876:	7f c8                	jg     405840 <_Z31test_jump_penalty_2_20_unrolledv+0xb0>
  405878:	8b 5c 24 6c          	mov    0x6c(%rsp),%ebx
  40587c:	83 c5 01             	add    $0x1,%ebp
  40587f:	39 dd                	cmp    %ebx,%ebp
  405881:	7c ad                	jl     405830 <_Z31test_jump_penalty_2_20_unrolledv+0xa0>
  405883:	be 9a 68 40 00       	mov    $0x40689a,%esi
  405888:	bf 08 69 40 00       	mov    $0x406908,%edi
  40588d:	48 c7 84 24 80 00 00 	movq   $0x4069e0,0x80(%rsp)
  405894:	00 e0 69 40 00 
  405899:	e8 92 b8 ff ff       	callq  401130 <fopen@plt>
  40589e:	48 8d bc 24 e0 00 00 	lea    0xe0(%rsp),%rdi
  4058a5:	00 
  4058a6:	48 89 c2             	mov    %rax,%rdx
  4058a9:	be e8 03 00 00       	mov    $0x3e8,%esi
  4058ae:	48 89 c5             	mov    %rax,%rbp
  4058b1:	e8 ea b8 ff ff       	callq  4011a0 <fgets@plt>
  4058b6:	48 8d bc 24 e0 00 00 	lea    0xe0(%rsp),%rdi
  4058bd:	00 
  4058be:	48 89 ea             	mov    %rbp,%rdx
  4058c1:	be e8 03 00 00       	mov    $0x3e8,%esi
  4058c6:	e8 d5 b8 ff ff       	callq  4011a0 <fgets@plt>
  4058cb:	48 8d 84 24 80 00 00 	lea    0x80(%rsp),%rax
  4058d2:	00 
  4058d3:	48 8d 8c 24 8c 00 00 	lea    0x8c(%rsp),%rcx
  4058da:	00 
  4058db:	4c 8d 44 24 0c       	lea    0xc(%rsp),%r8
  4058e0:	be 9c 68 40 00       	mov    $0x40689c,%esi
  4058e5:	48 89 ef             	mov    %rbp,%rdi
  4058e8:	48 8d 50 08          	lea    0x8(%rax),%rdx
  4058ec:	31 c0                	xor    %eax,%eax
  4058ee:	e8 3d b9 ff ff       	callq  401230 <fscanf@plt>
  4058f3:	8b 84 24 88 00 00 00 	mov    0x88(%rsp),%eax
  4058fa:	48 8d bc 24 98 00 00 	lea    0x98(%rsp),%rdi
  405901:	00 
  405902:	be 40 00 00 00       	mov    $0x40,%esi
  405907:	89 84 24 90 00 00 00 	mov    %eax,0x90(%rsp)
  40590e:	0f af 84 24 8c 00 00 	imul   0x8c(%rsp),%eax
  405915:	00 
  405916:	48 63 d0             	movslq %eax,%rdx
  405919:	48 c1 e2 03          	shl    $0x3,%rdx
  40591d:	e8 6e b7 ff ff       	callq  401090 <posix_memalign@plt>
  405922:	44 8b ac 24 8c 00 00 	mov    0x8c(%rsp),%r13d
  405929:	00 
  40592a:	45 85 ed             	test   %r13d,%r13d
  40592d:	7e 4c                	jle    40597b <_Z31test_jump_penalty_2_20_unrolledv+0x1eb>
  40592f:	8b 94 24 88 00 00 00 	mov    0x88(%rsp),%edx
  405936:	48 8b 8c 24 98 00 00 	mov    0x98(%rsp),%rcx
  40593d:	00 
  40593e:	48 63 84 24 90 00 00 	movslq 0x90(%rsp),%rax
  405945:	00 
  405946:	85 d2                	test   %edx,%edx
  405948:	7e 31                	jle    40597b <_Z31test_jump_penalty_2_20_unrolledv+0x1eb>
  40594a:	4c 8d 24 c5 00 00 00 	lea    0x0(,%rax,8),%r12
  405951:	00 
  405952:	8d 42 ff             	lea    -0x1(%rdx),%eax
  405955:	31 db                	xor    %ebx,%ebx
  405957:	4c 8d 34 c5 08 00 00 	lea    0x8(,%rax,8),%r14
  40595e:	00 
  40595f:	90                   	nop
  405960:	31 f6                	xor    %esi,%esi
  405962:	48 89 cf             	mov    %rcx,%rdi
  405965:	4c 89 f2             	mov    %r14,%rdx
  405968:	e8 33 b7 ff ff       	callq  4010a0 <memset@plt>
  40596d:	83 c3 01             	add    $0x1,%ebx
  405970:	48 89 c1             	mov    %rax,%rcx
  405973:	4c 01 e1             	add    %r12,%rcx
  405976:	44 39 eb             	cmp    %r13d,%ebx
  405979:	75 e5                	jne    405960 <_Z31test_jump_penalty_2_20_unrolledv+0x1d0>
  40597b:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  40597f:	85 c0                	test   %eax,%eax
  405981:	7e 58                	jle    4059db <_Z31test_jump_penalty_2_20_unrolledv+0x24b>
  405983:	31 db                	xor    %ebx,%ebx
  405985:	0f 1f 00             	nopl   (%rax)
  405988:	4c 8d 44 24 20       	lea    0x20(%rsp),%r8
  40598d:	48 8d 4c 24 14       	lea    0x14(%rsp),%rcx
  405992:	48 8d 54 24 10       	lea    0x10(%rsp),%rdx
  405997:	be a6 68 40 00       	mov    $0x4068a6,%esi
  40599c:	48 89 ef             	mov    %rbp,%rdi
  40599f:	31 c0                	xor    %eax,%eax
  4059a1:	e8 8a b8 ff ff       	callq  401230 <fscanf@plt>
  4059a6:	8b 44 24 14          	mov    0x14(%rsp),%eax
  4059aa:	8b 54 24 10          	mov    0x10(%rsp),%edx
  4059ae:	83 c3 01             	add    $0x1,%ebx
  4059b1:	c5 fb 10 44 24 20    	vmovsd 0x20(%rsp),%xmm0
  4059b7:	83 e8 01             	sub    $0x1,%eax
  4059ba:	0f af 84 24 90 00 00 	imul   0x90(%rsp),%eax
  4059c1:	00 
  4059c2:	39 5c 24 0c          	cmp    %ebx,0xc(%rsp)
  4059c6:	8d 44 10 ff          	lea    -0x1(%rax,%rdx,1),%eax
  4059ca:	48 8b 94 24 98 00 00 	mov    0x98(%rsp),%rdx
  4059d1:	00 
  4059d2:	48 98                	cltq   
  4059d4:	c5 fb 11 04 c2       	vmovsd %xmm0,(%rdx,%rax,8)
  4059d9:	7f ad                	jg     405988 <_Z31test_jump_penalty_2_20_unrolledv+0x1f8>
  4059db:	48 89 ef             	mov    %rbp,%rdi
  4059de:	e8 0d b7 ff ff       	callq  4010f0 <fclose@plt>
  4059e3:	48 8d b4 24 80 00 00 	lea    0x80(%rsp),%rsi
  4059ea:	00 
  4059eb:	48 8d 7c 24 18       	lea    0x18(%rsp),%rdi
  4059f0:	e8 db fa ff ff       	callq  4054d0 <_Z7to_bcscRK6Matrixii.constprop.6>
  4059f5:	48 8d bc 24 b8 00 00 	lea    0xb8(%rsp),%rdi
  4059fc:	00 
  4059fd:	48 b8 20 00 00 00 20 	movabs $0x2000000020,%rax
  405a04:	00 00 00 
  405a07:	ba 00 20 00 00       	mov    $0x2000,%edx
  405a0c:	be 40 00 00 00       	mov    $0x40,%esi
  405a11:	48 c7 84 24 a0 00 00 	movq   $0x4069e0,0xa0(%rsp)
  405a18:	00 e0 69 40 00 
  405a1d:	48 89 84 24 a8 00 00 	mov    %rax,0xa8(%rsp)
  405a24:	00 
  405a25:	c7 84 24 b0 00 00 00 	movl   $0x20,0xb0(%rsp)
  405a2c:	20 00 00 00 
  405a30:	e8 5b b6 ff ff       	callq  401090 <posix_memalign@plt>
  405a35:	44 8b ac 24 ac 00 00 	mov    0xac(%rsp),%r13d
  405a3c:	00 
  405a3d:	45 85 ed             	test   %r13d,%r13d
  405a40:	7e 51                	jle    405a93 <_Z31test_jump_penalty_2_20_unrolledv+0x303>
  405a42:	8b 94 24 a8 00 00 00 	mov    0xa8(%rsp),%edx
  405a49:	48 8b 8c 24 b8 00 00 	mov    0xb8(%rsp),%rcx
  405a50:	00 
  405a51:	48 63 84 24 b0 00 00 	movslq 0xb0(%rsp),%rax
  405a58:	00 
  405a59:	85 d2                	test   %edx,%edx
  405a5b:	7e 36                	jle    405a93 <_Z31test_jump_penalty_2_20_unrolledv+0x303>
  405a5d:	48 8d 2c c5 00 00 00 	lea    0x0(,%rax,8),%rbp
  405a64:	00 
  405a65:	8d 42 ff             	lea    -0x1(%rdx),%eax
  405a68:	31 db                	xor    %ebx,%ebx
  405a6a:	4c 8d 24 c5 08 00 00 	lea    0x8(,%rax,8),%r12
  405a71:	00 
  405a72:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  405a78:	31 f6                	xor    %esi,%esi
  405a7a:	48 89 cf             	mov    %rcx,%rdi
  405a7d:	4c 89 e2             	mov    %r12,%rdx
  405a80:	e8 1b b6 ff ff       	callq  4010a0 <memset@plt>
  405a85:	83 c3 01             	add    $0x1,%ebx
  405a88:	48 89 c1             	mov    %rax,%rcx
  405a8b:	48 01 e9             	add    %rbp,%rcx
  405a8e:	41 39 dd             	cmp    %ebx,%r13d
  405a91:	75 e5                	jne    405a78 <_Z31test_jump_penalty_2_20_unrolledv+0x2e8>
  405a93:	48 8d bc 24 d8 00 00 	lea    0xd8(%rsp),%rdi
  405a9a:	00 
  405a9b:	48 b8 20 00 00 00 20 	movabs $0x2000000020,%rax
  405aa2:	00 00 00 
  405aa5:	ba 00 20 00 00       	mov    $0x2000,%edx
  405aaa:	be 40 00 00 00       	mov    $0x40,%esi
  405aaf:	48 c7 84 24 c0 00 00 	movq   $0x4069e0,0xc0(%rsp)
  405ab6:	00 e0 69 40 00 
  405abb:	48 89 84 24 c8 00 00 	mov    %rax,0xc8(%rsp)
  405ac2:	00 
  405ac3:	c7 84 24 d0 00 00 00 	movl   $0x20,0xd0(%rsp)
  405aca:	20 00 00 00 
  405ace:	e8 bd b5 ff ff       	callq  401090 <posix_memalign@plt>
  405ad3:	44 8b a4 24 cc 00 00 	mov    0xcc(%rsp),%r12d
  405ada:	00 
  405adb:	45 85 e4             	test   %r12d,%r12d
  405ade:	7e 4b                	jle    405b2b <_Z31test_jump_penalty_2_20_unrolledv+0x39b>
  405ae0:	8b 94 24 c8 00 00 00 	mov    0xc8(%rsp),%edx
  405ae7:	48 8b 8c 24 d8 00 00 	mov    0xd8(%rsp),%rcx
  405aee:	00 
  405aef:	48 63 84 24 d0 00 00 	movslq 0xd0(%rsp),%rax
  405af6:	00 
  405af7:	85 d2                	test   %edx,%edx
  405af9:	7e 30                	jle    405b2b <_Z31test_jump_penalty_2_20_unrolledv+0x39b>
  405afb:	48 8d 2c c5 00 00 00 	lea    0x0(,%rax,8),%rbp
  405b02:	00 
  405b03:	8d 42 ff             	lea    -0x1(%rdx),%eax
  405b06:	31 db                	xor    %ebx,%ebx
  405b08:	4c 8d 2c c5 08 00 00 	lea    0x8(,%rax,8),%r13
  405b0f:	00 
  405b10:	31 f6                	xor    %esi,%esi
  405b12:	48 89 cf             	mov    %rcx,%rdi
  405b15:	4c 89 ea             	mov    %r13,%rdx
  405b18:	e8 83 b5 ff ff       	callq  4010a0 <memset@plt>
  405b1d:	83 c3 01             	add    $0x1,%ebx
  405b20:	48 89 c1             	mov    %rax,%rcx
  405b23:	48 01 e9             	add    %rbp,%rcx
  405b26:	44 39 e3             	cmp    %r12d,%ebx
  405b29:	75 e5                	jne    405b10 <_Z31test_jump_penalty_2_20_unrolledv+0x380>
  405b2b:	48 8d 94 24 a0 00 00 	lea    0xa0(%rsp),%rdx
  405b32:	00 
  405b33:	48 8d b4 24 80 00 00 	lea    0x80(%rsp),%rsi
  405b3a:	00 
  405b3b:	48 8d 7c 24 60       	lea    0x60(%rsp),%rdi
  405b40:	e8 4b b8 ff ff       	callq  401390 <_Z4gemmRK6MatrixS1_RS_.constprop.7>
  405b45:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
  405b4a:	48 8b 7c 24 78       	mov    0x78(%rsp),%rdi
  405b4f:	48 8b 94 24 d8 00 00 	mov    0xd8(%rsp),%rdx
  405b56:	00 
  405b57:	48 8b 70 18          	mov    0x18(%rax),%rsi
  405b5b:	e8 d0 e3 ff ff       	callq  403f30 <_Z26jump_penalty_2_20_unrolledPKdS0_Pd>
  405b60:	48 8d b4 24 c0 00 00 	lea    0xc0(%rsp),%rsi
  405b67:	00 
  405b68:	48 8d bc 24 a0 00 00 	lea    0xa0(%rsp),%rdi
  405b6f:	00 
  405b70:	e8 3b bb ff ff       	callq  4016b0 <_Z13assert_equalsRK6MatrixS1_.constprop.8>
  405b75:	48 8d 74 24 40       	lea    0x40(%rsp),%rsi
  405b7a:	bf 01 00 00 00       	mov    $0x1,%edi
  405b7f:	e8 ec b5 ff ff       	callq  401170 <clock_gettime@plt>
  405b84:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
  405b89:	4c 8b 84 24 d8 00 00 	mov    0xd8(%rsp),%r8
  405b90:	00 
  405b91:	48 8b 4c 24 78       	mov    0x78(%rsp),%rcx
  405b96:	48 8b 70 18          	mov    0x18(%rax),%rsi
  405b9a:	b8 b8 0b 00 00       	mov    $0xbb8,%eax
  405b9f:	90                   	nop
  405ba0:	48 89 4c 24 28       	mov    %rcx,0x28(%rsp)
  405ba5:	48 89 74 24 30       	mov    %rsi,0x30(%rsp)
  405baa:	4c 89 44 24 38       	mov    %r8,0x38(%rsp)
  405baf:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
  405bb4:	48 8b 74 24 30       	mov    0x30(%rsp),%rsi
  405bb9:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
  405bbe:	49 c7 c4 00 00 00 00 	mov    $0x0,%r12

0000000000405bc5 <LOOP_TOP_0_3489>:
  405bc5:	62 e1 fd 48 28 02    	vmovapd (%rdx),%zmm16
  405bcb:	62 e1 fd 48 28 4a 04 	vmovapd 0x100(%rdx),%zmm17
  405bd2:	62 e1 fd 48 28 52 08 	vmovapd 0x200(%rdx),%zmm18
  405bd9:	62 e1 fd 48 28 5a 0c 	vmovapd 0x300(%rdx),%zmm19
  405be0:	62 e1 fd 48 28 62 10 	vmovapd 0x400(%rdx),%zmm20
  405be7:	62 e1 fd 48 28 6a 14 	vmovapd 0x500(%rdx),%zmm21
  405bee:	62 e1 fd 48 28 72 18 	vmovapd 0x600(%rdx),%zmm22
  405bf5:	62 e1 fd 48 28 7a 1c 	vmovapd 0x700(%rdx),%zmm23
  405bfc:	62 61 fd 48 28 42 20 	vmovapd 0x800(%rdx),%zmm24
  405c03:	62 61 fd 48 28 4a 24 	vmovapd 0x900(%rdx),%zmm25
  405c0a:	62 61 fd 48 28 52 28 	vmovapd 0xa00(%rdx),%zmm26
  405c11:	62 61 fd 48 28 5a 2c 	vmovapd 0xb00(%rdx),%zmm27
  405c18:	62 61 fd 48 28 62 30 	vmovapd 0xc00(%rdx),%zmm28
  405c1f:	62 61 fd 48 28 6a 34 	vmovapd 0xd00(%rdx),%zmm29
  405c26:	62 61 fd 48 28 72 38 	vmovapd 0xe00(%rdx),%zmm30
  405c2d:	62 61 fd 48 28 7a 3c 	vmovapd 0xf00(%rdx),%zmm31
  405c34:	62 f1 fd 48 28 8f 00 	vmovapd 0x2100(%rdi),%zmm1
  405c3b:	21 00 00 
  405c3e:	62 f1 fd 48 28 97 00 	vmovapd 0x2200(%rdi),%zmm2
  405c45:	22 00 00 
  405c48:	62 f1 fd 48 28 af 00 	vmovapd 0x2500(%rdi),%zmm5
  405c4f:	25 00 00 
  405c52:	62 71 fd 48 28 9f 00 	vmovapd 0x2b00(%rdi),%zmm11
  405c59:	2b 00 00 
  405c5c:	62 71 fd 48 28 a7 00 	vmovapd 0x2c00(%rdi),%zmm12
  405c63:	2c 00 00 
  405c66:	62 71 fd 48 28 af 00 	vmovapd 0x2d00(%rdi),%zmm13
  405c6d:	2d 00 00 
  405c70:	62 71 fd 48 28 b7 00 	vmovapd 0x2e00(%rdi),%zmm14
  405c77:	2e 00 00 
  405c7a:	62 e2 f5 58 b8 6e 03 	vfmadd231pd 0x18(%rsi){1to8},%zmm1,%zmm21
  405c81:	62 e2 f5 58 b8 7e 05 	vfmadd231pd 0x28(%rsi){1to8},%zmm1,%zmm23
  405c88:	62 62 f5 58 b8 66 07 	vfmadd231pd 0x38(%rsi){1to8},%zmm1,%zmm28
  405c8f:	62 62 ed 58 b8 76 08 	vfmadd231pd 0x40(%rsi){1to8},%zmm2,%zmm30
  405c96:	62 62 d5 58 b8 7e 09 	vfmadd231pd 0x48(%rsi){1to8},%zmm5,%zmm31
  405c9d:	62 e2 a5 58 b8 06    	vfmadd231pd (%rsi){1to8},%zmm11,%zmm16
  405ca3:	62 e2 9d 58 b8 4e 01 	vfmadd231pd 0x8(%rsi){1to8},%zmm12,%zmm17
  405caa:	62 e2 95 58 b8 6e 04 	vfmadd231pd 0x20(%rsi){1to8},%zmm13,%zmm21
  405cb1:	62 62 95 58 b8 4e 06 	vfmadd231pd 0x30(%rsi){1to8},%zmm13,%zmm25
  405cb8:	62 e2 8d 58 b8 5e 02 	vfmadd231pd 0x10(%rsi){1to8},%zmm14,%zmm19
  405cbf:	62 e1 fd 48 29 02    	vmovapd %zmm16,(%rdx)
  405cc5:	62 e1 fd 48 29 4a 04 	vmovapd %zmm17,0x100(%rdx)
  405ccc:	62 e1 fd 48 29 52 08 	vmovapd %zmm18,0x200(%rdx)
  405cd3:	62 e1 fd 48 29 5a 0c 	vmovapd %zmm19,0x300(%rdx)
  405cda:	62 e1 fd 48 29 62 10 	vmovapd %zmm20,0x400(%rdx)
  405ce1:	62 e1 fd 48 29 6a 14 	vmovapd %zmm21,0x500(%rdx)
  405ce8:	62 e1 fd 48 29 72 18 	vmovapd %zmm22,0x600(%rdx)
  405cef:	62 e1 fd 48 29 7a 1c 	vmovapd %zmm23,0x700(%rdx)
  405cf6:	62 61 fd 48 29 42 20 	vmovapd %zmm24,0x800(%rdx)
  405cfd:	62 61 fd 48 29 4a 24 	vmovapd %zmm25,0x900(%rdx)
  405d04:	62 61 fd 48 29 52 28 	vmovapd %zmm26,0xa00(%rdx)
  405d0b:	62 61 fd 48 29 5a 2c 	vmovapd %zmm27,0xb00(%rdx)
  405d12:	62 61 fd 48 29 62 30 	vmovapd %zmm28,0xc00(%rdx)
  405d19:	62 61 fd 48 29 6a 34 	vmovapd %zmm29,0xd00(%rdx)
  405d20:	62 61 fd 48 29 72 38 	vmovapd %zmm30,0xe00(%rdx)
  405d27:	62 61 fd 48 29 7a 3c 	vmovapd %zmm31,0xf00(%rdx)
  405d2e:	48 81 c2 00 10 00 00 	add    $0x1000,%rdx
  405d35:	62 e1 fd 48 28 02    	vmovapd (%rdx),%zmm16
  405d3b:	62 e1 fd 48 28 4a 04 	vmovapd 0x100(%rdx),%zmm17
  405d42:	62 e1 fd 48 28 52 08 	vmovapd 0x200(%rdx),%zmm18
  405d49:	62 e1 fd 48 28 5a 0c 	vmovapd 0x300(%rdx),%zmm19
  405d50:	62 e1 fd 48 28 62 10 	vmovapd 0x400(%rdx),%zmm20
  405d57:	62 e1 fd 48 28 6a 14 	vmovapd 0x500(%rdx),%zmm21
  405d5e:	62 e1 fd 48 28 72 18 	vmovapd 0x600(%rdx),%zmm22
  405d65:	62 e1 fd 48 28 7a 1c 	vmovapd 0x700(%rdx),%zmm23
  405d6c:	62 61 fd 48 28 42 20 	vmovapd 0x800(%rdx),%zmm24
  405d73:	62 61 fd 48 28 4a 24 	vmovapd 0x900(%rdx),%zmm25
  405d7a:	62 61 fd 48 28 52 28 	vmovapd 0xa00(%rdx),%zmm26
  405d81:	62 61 fd 48 28 5a 2c 	vmovapd 0xb00(%rdx),%zmm27
  405d88:	62 61 fd 48 28 62 30 	vmovapd 0xc00(%rdx),%zmm28
  405d8f:	62 61 fd 48 28 6a 34 	vmovapd 0xd00(%rdx),%zmm29
  405d96:	62 61 fd 48 28 72 38 	vmovapd 0xe00(%rdx),%zmm30
  405d9d:	62 61 fd 48 28 7a 3c 	vmovapd 0xf00(%rdx),%zmm31
  405da4:	62 f1 fd 48 28 4f 04 	vmovapd 0x100(%rdi),%zmm1
  405dab:	62 f1 fd 48 28 67 10 	vmovapd 0x400(%rdi),%zmm4
  405db2:	62 71 fd 48 28 47 20 	vmovapd 0x800(%rdi),%zmm8
  405db9:	62 71 fd 48 28 4f 24 	vmovapd 0x900(%rdi),%zmm9
  405dc0:	62 71 fd 48 28 67 30 	vmovapd 0xc00(%rdi),%zmm12
  405dc7:	62 71 fd 48 28 6f 34 	vmovapd 0xd00(%rdi),%zmm13
  405dce:	62 e2 f5 58 b8 46 0a 	vfmadd231pd 0x50(%rsi){1to8},%zmm1,%zmm16
  405dd5:	62 62 f5 58 b8 7e 12 	vfmadd231pd 0x90(%rsi){1to8},%zmm1,%zmm31
  405ddc:	62 e2 dd 58 b8 56 0b 	vfmadd231pd 0x58(%rsi){1to8},%zmm4,%zmm18
  405de3:	62 e2 dd 58 b8 66 0e 	vfmadd231pd 0x70(%rsi){1to8},%zmm4,%zmm20
  405dea:	62 e2 bd 58 b8 56 0c 	vfmadd231pd 0x60(%rsi){1to8},%zmm8,%zmm18
  405df1:	62 e2 b5 58 b8 56 0d 	vfmadd231pd 0x68(%rsi){1to8},%zmm9,%zmm18
  405df8:	62 e2 9d 58 b8 6e 0f 	vfmadd231pd 0x78(%rsi){1to8},%zmm12,%zmm21
  405dff:	62 62 9d 58 b8 4e 10 	vfmadd231pd 0x80(%rsi){1to8},%zmm12,%zmm25
  405e06:	62 62 9d 58 b8 7e 13 	vfmadd231pd 0x98(%rsi){1to8},%zmm12,%zmm31
  405e0d:	62 62 95 58 b8 56 11 	vfmadd231pd 0x88(%rsi){1to8},%zmm13,%zmm26
  405e14:	62 e1 fd 48 29 02    	vmovapd %zmm16,(%rdx)
  405e1a:	62 e1 fd 48 29 4a 04 	vmovapd %zmm17,0x100(%rdx)
  405e21:	62 e1 fd 48 29 52 08 	vmovapd %zmm18,0x200(%rdx)
  405e28:	62 e1 fd 48 29 5a 0c 	vmovapd %zmm19,0x300(%rdx)
  405e2f:	62 e1 fd 48 29 62 10 	vmovapd %zmm20,0x400(%rdx)
  405e36:	62 e1 fd 48 29 6a 14 	vmovapd %zmm21,0x500(%rdx)
  405e3d:	62 e1 fd 48 29 72 18 	vmovapd %zmm22,0x600(%rdx)
  405e44:	62 e1 fd 48 29 7a 1c 	vmovapd %zmm23,0x700(%rdx)
  405e4b:	62 61 fd 48 29 42 20 	vmovapd %zmm24,0x800(%rdx)
  405e52:	62 61 fd 48 29 4a 24 	vmovapd %zmm25,0x900(%rdx)
  405e59:	62 61 fd 48 29 52 28 	vmovapd %zmm26,0xa00(%rdx)
  405e60:	62 61 fd 48 29 5a 2c 	vmovapd %zmm27,0xb00(%rdx)
  405e67:	62 61 fd 48 29 62 30 	vmovapd %zmm28,0xc00(%rdx)
  405e6e:	62 61 fd 48 29 6a 34 	vmovapd %zmm29,0xd00(%rdx)
  405e75:	62 61 fd 48 29 72 38 	vmovapd %zmm30,0xe00(%rdx)
  405e7c:	62 61 fd 48 29 7a 3c 	vmovapd %zmm31,0xf00(%rdx)
  405e83:	48 83 c7 40          	add    $0x40,%rdi
  405e87:	48 81 c2 40 f0 ff ff 	add    $0xfffffffffffff040,%rdx
  405e8e:	49 83 c4 01          	add    $0x1,%r12
  405e92:	49 83 fc 04          	cmp    $0x4,%r12
  405e96:	0f 8c 29 fd ff ff    	jl     405bc5 <LOOP_TOP_0_3489>
  405e9c:	83 e8 01             	sub    $0x1,%eax
  405e9f:	0f 85 fb fc ff ff    	jne    405ba0 <_Z31test_jump_penalty_2_20_unrolledv+0x410>
  405ea5:	48 8d 74 24 50       	lea    0x50(%rsp),%rsi
  405eaa:	bf 01 00 00 00       	mov    $0x1,%edi
  405eaf:	e8 bc b2 ff ff       	callq  401170 <clock_gettime@plt>
  405eb4:	ba 1c 00 00 00       	mov    $0x1c,%edx
  405eb9:	be cd 68 40 00       	mov    $0x4068cd,%esi
  405ebe:	bf a0 81 60 00       	mov    $0x6081a0,%edi
  405ec3:	e8 48 b2 ff ff       	callq  401110 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  405ec8:	48 8b 44 24 50       	mov    0x50(%rsp),%rax
  405ecd:	48 2b 44 24 40       	sub    0x40(%rsp),%rax
  405ed2:	bf a0 81 60 00       	mov    $0x6081a0,%edi
  405ed7:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
  405edb:	48 69 c0 00 ca 9a 3b 	imul   $0x3b9aca00,%rax,%rax
  405ee2:	48 03 44 24 58       	add    0x58(%rsp),%rax
  405ee7:	48 2b 44 24 48       	sub    0x48(%rsp),%rax
  405eec:	c4 e1 fb 2a c0       	vcvtsi2sd %rax,%xmm0,%xmm0
  405ef1:	c5 fb 59 05 0f 0b 00 	vmulsd 0xb0f(%rip),%xmm0,%xmm0        # 406a08 <_ZTV11DenseMatrix+0x38>
  405ef8:	00 
  405ef9:	c5 fb 5e 05 17 0b 00 	vdivsd 0xb17(%rip),%xmm0,%xmm0        # 406a18 <_ZTV11DenseMatrix+0x48>
  405f00:	00 
  405f01:	e8 aa b2 ff ff       	callq  4011b0 <_ZNSo9_M_insertIdEERSoT_@plt>
  405f06:	48 89 c5             	mov    %rax,%rbp
  405f09:	48 8b 00             	mov    (%rax),%rax
  405f0c:	48 8b 40 e8          	mov    -0x18(%rax),%rax
  405f10:	48 8b 9c 05 f0 00 00 	mov    0xf0(%rbp,%rax,1),%rbx
  405f17:	00 
  405f18:	48 85 db             	test   %rbx,%rbx
  405f1b:	0f 84 e4 00 00 00    	je     406005 <LOOP_TOP_0_3489+0x440>
  405f21:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
  405f25:	0f 84 98 00 00 00    	je     405fc3 <LOOP_TOP_0_3489+0x3fe>
  405f2b:	0f be 73 43          	movsbl 0x43(%rbx),%esi
  405f2f:	48 89 ef             	mov    %rbp,%rdi
  405f32:	e8 29 b1 ff ff       	callq  401060 <_ZNSo3putEc@plt>
  405f37:	48 89 c7             	mov    %rax,%rdi
  405f3a:	e8 71 b1 ff ff       	callq  4010b0 <_ZNSo5flushEv@plt>
  405f3f:	48 8b bc 24 d8 00 00 	mov    0xd8(%rsp),%rdi
  405f46:	00 
  405f47:	e8 f4 b1 ff ff       	callq  401140 <free@plt>
  405f4c:	48 8b bc 24 b8 00 00 	mov    0xb8(%rsp),%rdi
  405f53:	00 
  405f54:	e8 e7 b1 ff ff       	callq  401140 <free@plt>
  405f59:	48 8b 5c 24 18       	mov    0x18(%rsp),%rbx
  405f5e:	48 85 db             	test   %rbx,%rbx
  405f61:	74 39                	je     405f9c <LOOP_TOP_0_3489+0x3d7>
  405f63:	48 8b 7b 18          	mov    0x18(%rbx),%rdi
  405f67:	48 c7 03 c0 69 40 00 	movq   $0x4069c0,(%rbx)
  405f6e:	48 85 ff             	test   %rdi,%rdi
  405f71:	74 05                	je     405f78 <LOOP_TOP_0_3489+0x3b3>
  405f73:	e8 e8 b1 ff ff       	callq  401160 <_ZdaPv@plt>
  405f78:	48 8b 7b 20          	mov    0x20(%rbx),%rdi
  405f7c:	48 85 ff             	test   %rdi,%rdi
  405f7f:	74 05                	je     405f86 <LOOP_TOP_0_3489+0x3c1>
  405f81:	e8 da b1 ff ff       	callq  401160 <_ZdaPv@plt>
  405f86:	48 8b 7b 28          	mov    0x28(%rbx),%rdi
  405f8a:	48 85 ff             	test   %rdi,%rdi
  405f8d:	74 05                	je     405f94 <LOOP_TOP_0_3489+0x3cf>
  405f8f:	e8 cc b1 ff ff       	callq  401160 <_ZdaPv@plt>
  405f94:	48 89 df             	mov    %rbx,%rdi
  405f97:	e8 44 b1 ff ff       	callq  4010e0 <_ZdlPv@plt>
  405f9c:	48 8b bc 24 98 00 00 	mov    0x98(%rsp),%rdi
  405fa3:	00 
  405fa4:	e8 97 b1 ff ff       	callq  401140 <free@plt>
  405fa9:	48 8b 7c 24 78       	mov    0x78(%rsp),%rdi
  405fae:	e8 8d b1 ff ff       	callq  401140 <free@plt>
  405fb3:	48 81 c4 d0 04 00 00 	add    $0x4d0,%rsp
  405fba:	5b                   	pop    %rbx
  405fbb:	5d                   	pop    %rbp
  405fbc:	41 5c                	pop    %r12
  405fbe:	41 5d                	pop    %r13
  405fc0:	41 5e                	pop    %r14
  405fc2:	c3                   	retq   
  405fc3:	48 89 df             	mov    %rbx,%rdi
  405fc6:	e8 55 b1 ff ff       	callq  401120 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
  405fcb:	48 8b 03             	mov    (%rbx),%rax
  405fce:	be 0a 00 00 00       	mov    $0xa,%esi
  405fd3:	48 8b 40 30          	mov    0x30(%rax),%rax
  405fd7:	48 3d f0 65 40 00    	cmp    $0x4065f0,%rax
  405fdd:	0f 84 4c ff ff ff    	je     405f2f <LOOP_TOP_0_3489+0x36a>
  405fe3:	48 89 df             	mov    %rbx,%rdi
  405fe6:	ff d0                	callq  *%rax
  405fe8:	0f be f0             	movsbl %al,%esi
  405feb:	e9 3f ff ff ff       	jmpq   405f2f <LOOP_TOP_0_3489+0x36a>
  405ff0:	48 89 c3             	mov    %rax,%rbx
  405ff3:	48 8b 7c 24 78       	mov    0x78(%rsp),%rdi
  405ff8:	e8 43 b1 ff ff       	callq  401140 <free@plt>
  405ffd:	48 89 df             	mov    %rbx,%rdi
  406000:	e8 fb b1 ff ff       	callq  401200 <_Unwind_Resume@plt>
  406005:	e8 46 b1 ff ff       	callq  401150 <_ZSt16__throw_bad_castv@plt>
  40600a:	48 8b bc 24 d8 00 00 	mov    0xd8(%rsp),%rdi
  406011:	00 
  406012:	48 89 c3             	mov    %rax,%rbx
  406015:	e8 26 b1 ff ff       	callq  401140 <free@plt>
  40601a:	48 8b bc 24 b8 00 00 	mov    0xb8(%rsp),%rdi
  406021:	00 
  406022:	e8 19 b1 ff ff       	callq  401140 <free@plt>
  406027:	48 8d 7c 24 18       	lea    0x18(%rsp),%rdi
  40602c:	e8 2f 07 00 00       	callq  406760 <_ZNSt10unique_ptrI12SparseMatrixSt14default_deleteIS0_EED1Ev>
  406031:	48 8b bc 24 98 00 00 	mov    0x98(%rsp),%rdi
  406038:	00 
  406039:	e8 02 b1 ff ff       	callq  401140 <free@plt>
  40603e:	eb b3                	jmp    405ff3 <LOOP_TOP_0_3489+0x42e>
  406040:	48 89 c3             	mov    %rax,%rbx
  406043:	eb ec                	jmp    406031 <LOOP_TOP_0_3489+0x46c>
  406045:	90                   	nop
  406046:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40604d:	00 00 00 

0000000000406050 <_Z30test_jump_penalty_2_20_generalv>:
  406050:	41 56                	push   %r14
  406052:	41 55                	push   %r13
  406054:	48 b8 20 00 00 00 30 	movabs $0x3000000020,%rax
  40605b:	00 00 00 
  40605e:	41 54                	push   %r12
  406060:	55                   	push   %rbp
  406061:	ba 00 30 00 00       	mov    $0x3000,%edx
  406066:	53                   	push   %rbx
  406067:	be 40 00 00 00       	mov    $0x40,%esi
  40606c:	48 81 ec b0 04 00 00 	sub    $0x4b0,%rsp
  406073:	48 8d 7c 24 58       	lea    0x58(%rsp),%rdi
  406078:	48 c7 44 24 40 e0 69 	movq   $0x4069e0,0x40(%rsp)
  40607f:	40 00 
  406081:	48 89 44 24 48       	mov    %rax,0x48(%rsp)
  406086:	c7 44 24 50 20 00 00 	movl   $0x20,0x50(%rsp)
  40608d:	00 
  40608e:	e8 fd af ff ff       	callq  401090 <posix_memalign@plt>
  406093:	8b 5c 24 4c          	mov    0x4c(%rsp),%ebx
  406097:	85 db                	test   %ebx,%ebx
  406099:	0f 8e a4 00 00 00    	jle    406143 <_Z30test_jump_penalty_2_20_generalv+0xf3>
  40609f:	44 8b 64 24 48       	mov    0x48(%rsp),%r12d
  4060a4:	48 8b 4c 24 58       	mov    0x58(%rsp),%rcx
  4060a9:	48 63 44 24 50       	movslq 0x50(%rsp),%rax
  4060ae:	45 85 e4             	test   %r12d,%r12d
  4060b1:	7e 37                	jle    4060ea <_Z30test_jump_penalty_2_20_generalv+0x9a>
  4060b3:	4c 8d 2c c5 00 00 00 	lea    0x0(,%rax,8),%r13
  4060ba:	00 
  4060bb:	41 8d 44 24 ff       	lea    -0x1(%r12),%eax
  4060c0:	31 ed                	xor    %ebp,%ebp
  4060c2:	4c 8d 34 c5 08 00 00 	lea    0x8(,%rax,8),%r14
  4060c9:	00 
  4060ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4060d0:	31 f6                	xor    %esi,%esi
  4060d2:	48 89 cf             	mov    %rcx,%rdi
  4060d5:	4c 89 f2             	mov    %r14,%rdx
  4060d8:	e8 c3 af ff ff       	callq  4010a0 <memset@plt>
  4060dd:	83 c5 01             	add    $0x1,%ebp
  4060e0:	48 89 c1             	mov    %rax,%rcx
  4060e3:	4c 01 e9             	add    %r13,%rcx
  4060e6:	39 dd                	cmp    %ebx,%ebp
  4060e8:	75 e6                	jne    4060d0 <_Z30test_jump_penalty_2_20_generalv+0x80>
  4060ea:	31 ed                	xor    %ebp,%ebp
  4060ec:	0f 1f 40 00          	nopl   0x0(%rax)
  4060f0:	45 85 e4             	test   %r12d,%r12d
  4060f3:	7e 47                	jle    40613c <_Z30test_jump_penalty_2_20_generalv+0xec>
  4060f5:	31 db                	xor    %ebx,%ebx
  4060f7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4060fe:	00 00 
  406100:	e8 6b af ff ff       	callq  401070 <rand@plt>
  406105:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
  406109:	8b 54 24 50          	mov    0x50(%rsp),%edx
  40610d:	44 8b 64 24 48       	mov    0x48(%rsp),%r12d
  406112:	c5 fb 2a c0          	vcvtsi2sd %eax,%xmm0,%xmm0
  406116:	c5 fb 5e 05 f2 08 00 	vdivsd 0x8f2(%rip),%xmm0,%xmm0        # 406a10 <_ZTV11DenseMatrix+0x40>
  40611d:	00 
  40611e:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
  406123:	0f af d5             	imul   %ebp,%edx
  406126:	01 da                	add    %ebx,%edx
  406128:	83 c3 01             	add    $0x1,%ebx
  40612b:	48 63 d2             	movslq %edx,%rdx
  40612e:	41 39 dc             	cmp    %ebx,%r12d
  406131:	c5 fb 11 04 d0       	vmovsd %xmm0,(%rax,%rdx,8)
  406136:	7f c8                	jg     406100 <_Z30test_jump_penalty_2_20_generalv+0xb0>
  406138:	8b 5c 24 4c          	mov    0x4c(%rsp),%ebx
  40613c:	83 c5 01             	add    $0x1,%ebp
  40613f:	39 dd                	cmp    %ebx,%ebp
  406141:	7c ad                	jl     4060f0 <_Z30test_jump_penalty_2_20_generalv+0xa0>
  406143:	be 9a 68 40 00       	mov    $0x40689a,%esi
  406148:	bf 08 69 40 00       	mov    $0x406908,%edi
  40614d:	48 c7 44 24 60 e0 69 	movq   $0x4069e0,0x60(%rsp)
  406154:	40 00 
  406156:	e8 d5 af ff ff       	callq  401130 <fopen@plt>
  40615b:	48 8d bc 24 c0 00 00 	lea    0xc0(%rsp),%rdi
  406162:	00 
  406163:	48 89 c2             	mov    %rax,%rdx
  406166:	be e8 03 00 00       	mov    $0x3e8,%esi
  40616b:	48 89 c5             	mov    %rax,%rbp
  40616e:	e8 2d b0 ff ff       	callq  4011a0 <fgets@plt>
  406173:	48 8d bc 24 c0 00 00 	lea    0xc0(%rsp),%rdi
  40617a:	00 
  40617b:	48 89 ea             	mov    %rbp,%rdx
  40617e:	be e8 03 00 00       	mov    $0x3e8,%esi
  406183:	e8 18 b0 ff ff       	callq  4011a0 <fgets@plt>
  406188:	48 8d 44 24 60       	lea    0x60(%rsp),%rax
  40618d:	48 8d 4c 24 6c       	lea    0x6c(%rsp),%rcx
  406192:	4c 8d 44 24 04       	lea    0x4(%rsp),%r8
  406197:	be 9c 68 40 00       	mov    $0x40689c,%esi
  40619c:	48 89 ef             	mov    %rbp,%rdi
  40619f:	48 8d 50 08          	lea    0x8(%rax),%rdx
  4061a3:	31 c0                	xor    %eax,%eax
  4061a5:	e8 86 b0 ff ff       	callq  401230 <fscanf@plt>
  4061aa:	8b 44 24 68          	mov    0x68(%rsp),%eax
  4061ae:	48 8d 7c 24 78       	lea    0x78(%rsp),%rdi
  4061b3:	be 40 00 00 00       	mov    $0x40,%esi
  4061b8:	89 44 24 70          	mov    %eax,0x70(%rsp)
  4061bc:	0f af 44 24 6c       	imul   0x6c(%rsp),%eax
  4061c1:	48 63 d0             	movslq %eax,%rdx
  4061c4:	48 c1 e2 03          	shl    $0x3,%rdx
  4061c8:	e8 c3 ae ff ff       	callq  401090 <posix_memalign@plt>
  4061cd:	44 8b 6c 24 6c       	mov    0x6c(%rsp),%r13d
  4061d2:	45 85 ed             	test   %r13d,%r13d
  4061d5:	7e 44                	jle    40621b <_Z30test_jump_penalty_2_20_generalv+0x1cb>
  4061d7:	8b 54 24 68          	mov    0x68(%rsp),%edx
  4061db:	48 8b 4c 24 78       	mov    0x78(%rsp),%rcx
  4061e0:	48 63 44 24 70       	movslq 0x70(%rsp),%rax
  4061e5:	85 d2                	test   %edx,%edx
  4061e7:	7e 32                	jle    40621b <_Z30test_jump_penalty_2_20_generalv+0x1cb>
  4061e9:	4c 8d 24 c5 00 00 00 	lea    0x0(,%rax,8),%r12
  4061f0:	00 
  4061f1:	8d 42 ff             	lea    -0x1(%rdx),%eax
  4061f4:	31 db                	xor    %ebx,%ebx
  4061f6:	4c 8d 34 c5 08 00 00 	lea    0x8(,%rax,8),%r14
  4061fd:	00 
  4061fe:	66 90                	xchg   %ax,%ax
  406200:	31 f6                	xor    %esi,%esi
  406202:	48 89 cf             	mov    %rcx,%rdi
  406205:	4c 89 f2             	mov    %r14,%rdx
  406208:	e8 93 ae ff ff       	callq  4010a0 <memset@plt>
  40620d:	83 c3 01             	add    $0x1,%ebx
  406210:	48 89 c1             	mov    %rax,%rcx
  406213:	4c 01 e1             	add    %r12,%rcx
  406216:	44 39 eb             	cmp    %r13d,%ebx
  406219:	75 e5                	jne    406200 <_Z30test_jump_penalty_2_20_generalv+0x1b0>
  40621b:	8b 44 24 04          	mov    0x4(%rsp),%eax
  40621f:	85 c0                	test   %eax,%eax
  406221:	7e 52                	jle    406275 <_Z30test_jump_penalty_2_20_generalv+0x225>
  406223:	31 db                	xor    %ebx,%ebx
  406225:	0f 1f 00             	nopl   (%rax)
  406228:	4c 8d 44 24 18       	lea    0x18(%rsp),%r8
  40622d:	48 8d 4c 24 0c       	lea    0xc(%rsp),%rcx
  406232:	48 8d 54 24 08       	lea    0x8(%rsp),%rdx
  406237:	be a6 68 40 00       	mov    $0x4068a6,%esi
  40623c:	48 89 ef             	mov    %rbp,%rdi
  40623f:	31 c0                	xor    %eax,%eax
  406241:	e8 ea af ff ff       	callq  401230 <fscanf@plt>
  406246:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  40624a:	8b 54 24 08          	mov    0x8(%rsp),%edx
  40624e:	83 c3 01             	add    $0x1,%ebx
  406251:	c5 fb 10 44 24 18    	vmovsd 0x18(%rsp),%xmm0
  406257:	83 e8 01             	sub    $0x1,%eax
  40625a:	0f af 44 24 70       	imul   0x70(%rsp),%eax
  40625f:	39 5c 24 04          	cmp    %ebx,0x4(%rsp)
  406263:	8d 44 10 ff          	lea    -0x1(%rax,%rdx,1),%eax
  406267:	48 8b 54 24 78       	mov    0x78(%rsp),%rdx
  40626c:	48 98                	cltq   
  40626e:	c5 fb 11 04 c2       	vmovsd %xmm0,(%rdx,%rax,8)
  406273:	7f b3                	jg     406228 <_Z30test_jump_penalty_2_20_generalv+0x1d8>
  406275:	48 89 ef             	mov    %rbp,%rdi
  406278:	e8 73 ae ff ff       	callq  4010f0 <fclose@plt>
  40627d:	48 8d 74 24 60       	lea    0x60(%rsp),%rsi
  406282:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
  406287:	e8 44 f2 ff ff       	callq  4054d0 <_Z7to_bcscRK6Matrixii.constprop.6>
  40628c:	48 8d bc 24 98 00 00 	lea    0x98(%rsp),%rdi
  406293:	00 
  406294:	48 b8 20 00 00 00 20 	movabs $0x2000000020,%rax
  40629b:	00 00 00 
  40629e:	ba 00 20 00 00       	mov    $0x2000,%edx
  4062a3:	be 40 00 00 00       	mov    $0x40,%esi
  4062a8:	48 c7 84 24 80 00 00 	movq   $0x4069e0,0x80(%rsp)
  4062af:	00 e0 69 40 00 
  4062b4:	48 89 84 24 88 00 00 	mov    %rax,0x88(%rsp)
  4062bb:	00 
  4062bc:	c7 84 24 90 00 00 00 	movl   $0x20,0x90(%rsp)
  4062c3:	20 00 00 00 
  4062c7:	e8 c4 ad ff ff       	callq  401090 <posix_memalign@plt>
  4062cc:	44 8b ac 24 8c 00 00 	mov    0x8c(%rsp),%r13d
  4062d3:	00 
  4062d4:	45 85 ed             	test   %r13d,%r13d
  4062d7:	7e 52                	jle    40632b <_Z30test_jump_penalty_2_20_generalv+0x2db>
  4062d9:	8b 94 24 88 00 00 00 	mov    0x88(%rsp),%edx
  4062e0:	48 8b 8c 24 98 00 00 	mov    0x98(%rsp),%rcx
  4062e7:	00 
  4062e8:	48 63 84 24 90 00 00 	movslq 0x90(%rsp),%rax
  4062ef:	00 
  4062f0:	85 d2                	test   %edx,%edx
  4062f2:	7e 37                	jle    40632b <_Z30test_jump_penalty_2_20_generalv+0x2db>
  4062f4:	48 8d 2c c5 00 00 00 	lea    0x0(,%rax,8),%rbp
  4062fb:	00 
  4062fc:	8d 42 ff             	lea    -0x1(%rdx),%eax
  4062ff:	31 db                	xor    %ebx,%ebx
  406301:	4c 8d 24 c5 08 00 00 	lea    0x8(,%rax,8),%r12
  406308:	00 
  406309:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  406310:	31 f6                	xor    %esi,%esi
  406312:	48 89 cf             	mov    %rcx,%rdi
  406315:	4c 89 e2             	mov    %r12,%rdx
  406318:	e8 83 ad ff ff       	callq  4010a0 <memset@plt>
  40631d:	83 c3 01             	add    $0x1,%ebx
  406320:	48 89 c1             	mov    %rax,%rcx
  406323:	48 01 e9             	add    %rbp,%rcx
  406326:	41 39 dd             	cmp    %ebx,%r13d
  406329:	75 e5                	jne    406310 <_Z30test_jump_penalty_2_20_generalv+0x2c0>
  40632b:	48 8d bc 24 b8 00 00 	lea    0xb8(%rsp),%rdi
  406332:	00 
  406333:	48 b8 20 00 00 00 20 	movabs $0x2000000020,%rax
  40633a:	00 00 00 
  40633d:	ba 00 20 00 00       	mov    $0x2000,%edx
  406342:	be 40 00 00 00       	mov    $0x40,%esi
  406347:	48 c7 84 24 a0 00 00 	movq   $0x4069e0,0xa0(%rsp)
  40634e:	00 e0 69 40 00 
  406353:	48 89 84 24 a8 00 00 	mov    %rax,0xa8(%rsp)
  40635a:	00 
  40635b:	c7 84 24 b0 00 00 00 	movl   $0x20,0xb0(%rsp)
  406362:	20 00 00 00 
  406366:	e8 25 ad ff ff       	callq  401090 <posix_memalign@plt>
  40636b:	44 8b a4 24 ac 00 00 	mov    0xac(%rsp),%r12d
  406372:	00 
  406373:	45 85 e4             	test   %r12d,%r12d
  406376:	7e 53                	jle    4063cb <_Z30test_jump_penalty_2_20_generalv+0x37b>
  406378:	8b 94 24 a8 00 00 00 	mov    0xa8(%rsp),%edx
  40637f:	48 8b 8c 24 b8 00 00 	mov    0xb8(%rsp),%rcx
  406386:	00 
  406387:	48 63 84 24 b0 00 00 	movslq 0xb0(%rsp),%rax
  40638e:	00 
  40638f:	85 d2                	test   %edx,%edx
  406391:	7e 38                	jle    4063cb <_Z30test_jump_penalty_2_20_generalv+0x37b>
  406393:	48 8d 2c c5 00 00 00 	lea    0x0(,%rax,8),%rbp
  40639a:	00 
  40639b:	8d 42 ff             	lea    -0x1(%rdx),%eax
  40639e:	31 db                	xor    %ebx,%ebx
  4063a0:	4c 8d 2c c5 08 00 00 	lea    0x8(,%rax,8),%r13
  4063a7:	00 
  4063a8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4063af:	00 
  4063b0:	31 f6                	xor    %esi,%esi
  4063b2:	48 89 cf             	mov    %rcx,%rdi
  4063b5:	4c 89 ea             	mov    %r13,%rdx
  4063b8:	e8 e3 ac ff ff       	callq  4010a0 <memset@plt>
  4063bd:	83 c3 01             	add    $0x1,%ebx
  4063c0:	48 89 c1             	mov    %rax,%rcx
  4063c3:	48 01 e9             	add    %rbp,%rcx
  4063c6:	44 39 e3             	cmp    %r12d,%ebx
  4063c9:	75 e5                	jne    4063b0 <_Z30test_jump_penalty_2_20_generalv+0x360>
  4063cb:	48 8d 94 24 80 00 00 	lea    0x80(%rsp),%rdx
  4063d2:	00 
  4063d3:	48 8d 74 24 60       	lea    0x60(%rsp),%rsi
  4063d8:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  4063dd:	e8 ae af ff ff       	callq  401390 <_Z4gemmRK6MatrixS1_RS_.constprop.7>
  4063e2:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  4063e7:	48 8b 7c 24 58       	mov    0x58(%rsp),%rdi
  4063ec:	48 8b 94 24 b8 00 00 	mov    0xb8(%rsp),%rdx
  4063f3:	00 
  4063f4:	48 8b 70 18          	mov    0x18(%rax),%rsi
  4063f8:	e8 43 de ff ff       	callq  404240 <_Z25jump_penalty_2_20_generalPKdS0_Pd>
  4063fd:	48 8d b4 24 a0 00 00 	lea    0xa0(%rsp),%rsi
  406404:	00 
  406405:	48 8d bc 24 80 00 00 	lea    0x80(%rsp),%rdi
  40640c:	00 
  40640d:	e8 9e b2 ff ff       	callq  4016b0 <_Z13assert_equalsRK6MatrixS1_.constprop.8>
  406412:	48 8d 74 24 20       	lea    0x20(%rsp),%rsi
  406417:	bf 01 00 00 00       	mov    $0x1,%edi
  40641c:	e8 4f ad ff ff       	callq  401170 <clock_gettime@plt>
  406421:	b8 b8 0b 00 00       	mov    $0xbb8,%eax
  406426:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40642d:	00 00 00 
  406430:	48 8b 54 24 10       	mov    0x10(%rsp),%rdx
  406435:	48 8b 7c 24 58       	mov    0x58(%rsp),%rdi
  40643a:	48 8b 72 18          	mov    0x18(%rdx),%rsi
  40643e:	48 8b 94 24 b8 00 00 	mov    0xb8(%rsp),%rdx
  406445:	00 
  406446:	e8 f5 dd ff ff       	callq  404240 <_Z25jump_penalty_2_20_generalPKdS0_Pd>
  40644b:	83 e8 01             	sub    $0x1,%eax
  40644e:	75 e0                	jne    406430 <_Z30test_jump_penalty_2_20_generalv+0x3e0>
  406450:	48 8d 74 24 30       	lea    0x30(%rsp),%rsi
  406455:	bf 01 00 00 00       	mov    $0x1,%edi
  40645a:	e8 11 ad ff ff       	callq  401170 <clock_gettime@plt>
  40645f:	ba 1b 00 00 00       	mov    $0x1b,%edx
  406464:	be ea 68 40 00       	mov    $0x4068ea,%esi
  406469:	bf a0 81 60 00       	mov    $0x6081a0,%edi
  40646e:	e8 9d ac ff ff       	callq  401110 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  406473:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
  406478:	48 2b 44 24 20       	sub    0x20(%rsp),%rax
  40647d:	bf a0 81 60 00       	mov    $0x6081a0,%edi
  406482:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
  406486:	48 69 c0 00 ca 9a 3b 	imul   $0x3b9aca00,%rax,%rax
  40648d:	48 03 44 24 38       	add    0x38(%rsp),%rax
  406492:	48 2b 44 24 28       	sub    0x28(%rsp),%rax
  406497:	c4 e1 fb 2a c0       	vcvtsi2sd %rax,%xmm0,%xmm0
  40649c:	c5 fb 59 05 64 05 00 	vmulsd 0x564(%rip),%xmm0,%xmm0        # 406a08 <_ZTV11DenseMatrix+0x38>
  4064a3:	00 
  4064a4:	c5 fb 5e 05 6c 05 00 	vdivsd 0x56c(%rip),%xmm0,%xmm0        # 406a18 <_ZTV11DenseMatrix+0x48>
  4064ab:	00 
  4064ac:	e8 ff ac ff ff       	callq  4011b0 <_ZNSo9_M_insertIdEERSoT_@plt>
  4064b1:	48 89 c5             	mov    %rax,%rbp
  4064b4:	48 8b 00             	mov    (%rax),%rax
  4064b7:	48 8b 40 e8          	mov    -0x18(%rax),%rax
  4064bb:	48 8b 9c 05 f0 00 00 	mov    0xf0(%rbp,%rax,1),%rbx
  4064c2:	00 
  4064c3:	48 85 db             	test   %rbx,%rbx
  4064c6:	0f 84 e1 00 00 00    	je     4065ad <_Z30test_jump_penalty_2_20_generalv+0x55d>
  4064cc:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
  4064d0:	0f 84 95 00 00 00    	je     40656b <_Z30test_jump_penalty_2_20_generalv+0x51b>
  4064d6:	0f be 73 43          	movsbl 0x43(%rbx),%esi
  4064da:	48 89 ef             	mov    %rbp,%rdi
  4064dd:	e8 7e ab ff ff       	callq  401060 <_ZNSo3putEc@plt>
  4064e2:	48 89 c7             	mov    %rax,%rdi
  4064e5:	e8 c6 ab ff ff       	callq  4010b0 <_ZNSo5flushEv@plt>
  4064ea:	48 8b bc 24 b8 00 00 	mov    0xb8(%rsp),%rdi
  4064f1:	00 
  4064f2:	e8 49 ac ff ff       	callq  401140 <free@plt>
  4064f7:	48 8b bc 24 98 00 00 	mov    0x98(%rsp),%rdi
  4064fe:	00 
  4064ff:	e8 3c ac ff ff       	callq  401140 <free@plt>
  406504:	48 8b 5c 24 10       	mov    0x10(%rsp),%rbx
  406509:	48 85 db             	test   %rbx,%rbx
  40650c:	74 39                	je     406547 <_Z30test_jump_penalty_2_20_generalv+0x4f7>
  40650e:	48 8b 7b 18          	mov    0x18(%rbx),%rdi
  406512:	48 c7 03 c0 69 40 00 	movq   $0x4069c0,(%rbx)
  406519:	48 85 ff             	test   %rdi,%rdi
  40651c:	74 05                	je     406523 <_Z30test_jump_penalty_2_20_generalv+0x4d3>
  40651e:	e8 3d ac ff ff       	callq  401160 <_ZdaPv@plt>
  406523:	48 8b 7b 20          	mov    0x20(%rbx),%rdi
  406527:	48 85 ff             	test   %rdi,%rdi
  40652a:	74 05                	je     406531 <_Z30test_jump_penalty_2_20_generalv+0x4e1>
  40652c:	e8 2f ac ff ff       	callq  401160 <_ZdaPv@plt>
  406531:	48 8b 7b 28          	mov    0x28(%rbx),%rdi
  406535:	48 85 ff             	test   %rdi,%rdi
  406538:	74 05                	je     40653f <_Z30test_jump_penalty_2_20_generalv+0x4ef>
  40653a:	e8 21 ac ff ff       	callq  401160 <_ZdaPv@plt>
  40653f:	48 89 df             	mov    %rbx,%rdi
  406542:	e8 99 ab ff ff       	callq  4010e0 <_ZdlPv@plt>
  406547:	48 8b 7c 24 78       	mov    0x78(%rsp),%rdi
  40654c:	e8 ef ab ff ff       	callq  401140 <free@plt>
  406551:	48 8b 7c 24 58       	mov    0x58(%rsp),%rdi
  406556:	e8 e5 ab ff ff       	callq  401140 <free@plt>
  40655b:	48 81 c4 b0 04 00 00 	add    $0x4b0,%rsp
  406562:	5b                   	pop    %rbx
  406563:	5d                   	pop    %rbp
  406564:	41 5c                	pop    %r12
  406566:	41 5d                	pop    %r13
  406568:	41 5e                	pop    %r14
  40656a:	c3                   	retq   
  40656b:	48 89 df             	mov    %rbx,%rdi
  40656e:	e8 ad ab ff ff       	callq  401120 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
  406573:	48 8b 03             	mov    (%rbx),%rax
  406576:	be 0a 00 00 00       	mov    $0xa,%esi
  40657b:	48 8b 40 30          	mov    0x30(%rax),%rax
  40657f:	48 3d f0 65 40 00    	cmp    $0x4065f0,%rax
  406585:	0f 84 4f ff ff ff    	je     4064da <_Z30test_jump_penalty_2_20_generalv+0x48a>
  40658b:	48 89 df             	mov    %rbx,%rdi
  40658e:	ff d0                	callq  *%rax
  406590:	0f be f0             	movsbl %al,%esi
  406593:	e9 42 ff ff ff       	jmpq   4064da <_Z30test_jump_penalty_2_20_generalv+0x48a>
  406598:	48 89 c3             	mov    %rax,%rbx
  40659b:	48 8b 7c 24 58       	mov    0x58(%rsp),%rdi
  4065a0:	e8 9b ab ff ff       	callq  401140 <free@plt>
  4065a5:	48 89 df             	mov    %rbx,%rdi
  4065a8:	e8 53 ac ff ff       	callq  401200 <_Unwind_Resume@plt>
  4065ad:	e8 9e ab ff ff       	callq  401150 <_ZSt16__throw_bad_castv@plt>
  4065b2:	48 8b bc 24 b8 00 00 	mov    0xb8(%rsp),%rdi
  4065b9:	00 
  4065ba:	48 89 c3             	mov    %rax,%rbx
  4065bd:	e8 7e ab ff ff       	callq  401140 <free@plt>
  4065c2:	48 8b bc 24 98 00 00 	mov    0x98(%rsp),%rdi
  4065c9:	00 
  4065ca:	e8 71 ab ff ff       	callq  401140 <free@plt>
  4065cf:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
  4065d4:	e8 87 01 00 00       	callq  406760 <_ZNSt10unique_ptrI12SparseMatrixSt14default_deleteIS0_EED1Ev>
  4065d9:	48 8b 7c 24 78       	mov    0x78(%rsp),%rdi
  4065de:	e8 5d ab ff ff       	callq  401140 <free@plt>
  4065e3:	eb b6                	jmp    40659b <_Z30test_jump_penalty_2_20_generalv+0x54b>
  4065e5:	48 89 c3             	mov    %rax,%rbx
  4065e8:	eb ef                	jmp    4065d9 <_Z30test_jump_penalty_2_20_generalv+0x589>
  4065ea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004065f0 <_ZNKSt5ctypeIcE8do_widenEc>:
  4065f0:	89 f0                	mov    %esi,%eax
  4065f2:	c3                   	retq   
  4065f3:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4065fa:	00 00 00 
  4065fd:	0f 1f 00             	nopl   (%rax)

0000000000406600 <_ZNK12SparseMatrix3getEii>:
  406600:	8b 47 10             	mov    0x10(%rdi),%eax
  406603:	85 c0                	test   %eax,%eax
  406605:	7e 41                	jle    406648 <_ZNK12SparseMatrix3getEii+0x48>
  406607:	8d 48 ff             	lea    -0x1(%rax),%ecx
  40660a:	4c 8b 47 20          	mov    0x20(%rdi),%r8
  40660e:	31 c0                	xor    %eax,%eax
  406610:	48 83 c1 01          	add    $0x1,%rcx
  406614:	eb 13                	jmp    406629 <_ZNK12SparseMatrix3getEii+0x29>
  406616:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40661d:	00 00 00 
  406620:	48 83 c0 01          	add    $0x1,%rax
  406624:	48 39 c1             	cmp    %rax,%rcx
  406627:	74 1f                	je     406648 <_ZNK12SparseMatrix3getEii+0x48>
  406629:	41 39 34 80          	cmp    %esi,(%r8,%rax,4)
  40662d:	75 f1                	jne    406620 <_ZNK12SparseMatrix3getEii+0x20>
  40662f:	4c 8b 4f 28          	mov    0x28(%rdi),%r9
  406633:	41 39 14 81          	cmp    %edx,(%r9,%rax,4)
  406637:	75 e7                	jne    406620 <_ZNK12SparseMatrix3getEii+0x20>
  406639:	48 8b 57 18          	mov    0x18(%rdi),%rdx
  40663d:	c5 fb 10 04 c2       	vmovsd (%rdx,%rax,8),%xmm0
  406642:	c3                   	retq   
  406643:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  406648:	62 f1 7d 48 ef c0    	vpxord %zmm0,%zmm0,%zmm0
  40664e:	c3                   	retq   
  40664f:	90                   	nop

0000000000406650 <_ZN12SparseMatrix3setEiid>:
  406650:	4c 63 4f 10          	movslq 0x10(%rdi),%r9
  406654:	48 8b 4f 20          	mov    0x20(%rdi),%rcx
  406658:	45 85 c9             	test   %r9d,%r9d
  40665b:	7e 53                	jle    4066b0 <_ZN12SparseMatrix3setEiid+0x60>
  40665d:	41 8d 41 ff          	lea    -0x1(%r9),%eax
  406661:	45 31 db             	xor    %r11d,%r11d
  406664:	4c 8d 04 85 04 00 00 	lea    0x4(,%rax,4),%r8
  40666b:	00 
  40666c:	31 c0                	xor    %eax,%eax
  40666e:	eb 09                	jmp    406679 <_ZN12SparseMatrix3setEiid+0x29>
  406670:	48 83 c0 04          	add    $0x4,%rax
  406674:	49 39 c0             	cmp    %rax,%r8
  406677:	74 2f                	je     4066a8 <_ZN12SparseMatrix3setEiid+0x58>
  406679:	3b 34 01             	cmp    (%rcx,%rax,1),%esi
  40667c:	75 f2                	jne    406670 <_ZN12SparseMatrix3setEiid+0x20>
  40667e:	4c 8b 57 28          	mov    0x28(%rdi),%r10
  406682:	41 3b 14 02          	cmp    (%r10,%rax,1),%edx
  406686:	75 e8                	jne    406670 <_ZN12SparseMatrix3setEiid+0x20>
  406688:	4c 8b 57 18          	mov    0x18(%rdi),%r10
  40668c:	41 bb 01 00 00 00    	mov    $0x1,%r11d
  406692:	c4 c1 7b 11 04 42    	vmovsd %xmm0,(%r10,%rax,2)
  406698:	48 83 c0 04          	add    $0x4,%rax
  40669c:	49 39 c0             	cmp    %rax,%r8
  40669f:	75 d8                	jne    406679 <_ZN12SparseMatrix3setEiid+0x29>
  4066a1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4066a8:	45 84 db             	test   %r11b,%r11b
  4066ab:	74 03                	je     4066b0 <_ZN12SparseMatrix3setEiid+0x60>
  4066ad:	f3 c3                	repz retq 
  4066af:	90                   	nop
  4066b0:	48 8b 47 18          	mov    0x18(%rdi),%rax
  4066b4:	c4 a1 7b 11 04 c8    	vmovsd %xmm0,(%rax,%r9,8)
  4066ba:	42 89 34 89          	mov    %esi,(%rcx,%r9,4)
  4066be:	48 63 4f 10          	movslq 0x10(%rdi),%rcx
  4066c2:	48 8b 47 28          	mov    0x28(%rdi),%rax
  4066c6:	89 14 88             	mov    %edx,(%rax,%rcx,4)
  4066c9:	83 47 10 01          	addl   $0x1,0x10(%rdi)
  4066cd:	c3                   	retq   
  4066ce:	66 90                	xchg   %ax,%ax

00000000004066d0 <_ZN11DenseMatrix3setEiid>:
  4066d0:	0f af 57 10          	imul   0x10(%rdi),%edx
  4066d4:	48 8b 47 18          	mov    0x18(%rdi),%rax
  4066d8:	01 d6                	add    %edx,%esi
  4066da:	48 63 f6             	movslq %esi,%rsi
  4066dd:	c5 fb 11 04 f0       	vmovsd %xmm0,(%rax,%rsi,8)
  4066e2:	c3                   	retq   
  4066e3:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4066ea:	00 00 00 
  4066ed:	0f 1f 00             	nopl   (%rax)

00000000004066f0 <_ZNK11DenseMatrix3getEii>:
  4066f0:	39 77 08             	cmp    %esi,0x8(%rdi)
  4066f3:	7e 18                	jle    40670d <_ZNK11DenseMatrix3getEii+0x1d>
  4066f5:	39 57 0c             	cmp    %edx,0xc(%rdi)
  4066f8:	7e 13                	jle    40670d <_ZNK11DenseMatrix3getEii+0x1d>
  4066fa:	0f af 57 10          	imul   0x10(%rdi),%edx
  4066fe:	48 8b 47 18          	mov    0x18(%rdi),%rax
  406702:	01 f2                	add    %esi,%edx
  406704:	48 63 d2             	movslq %edx,%rdx
  406707:	c5 fb 10 04 d0       	vmovsd (%rax,%rdx,8),%xmm0
  40670c:	c3                   	retq   
  40670d:	55                   	push   %rbp
  40670e:	53                   	push   %rbx
  40670f:	bf 10 00 00 00       	mov    $0x10,%edi
  406714:	48 83 ec 08          	sub    $0x8,%rsp
  406718:	e8 63 a9 ff ff       	callq  401080 <__cxa_allocate_exception@plt>
  40671d:	be 34 68 40 00       	mov    $0x406834,%esi
  406722:	48 89 c7             	mov    %rax,%rdi
  406725:	48 89 c3             	mov    %rax,%rbx
  406728:	e8 f3 aa ff ff       	callq  401220 <_ZNSt16invalid_argumentC1EPKc@plt>
  40672d:	ba d0 11 40 00       	mov    $0x4011d0,%edx
  406732:	be 08 83 60 00       	mov    $0x608308,%esi
  406737:	48 89 df             	mov    %rbx,%rdi
  40673a:	e8 a1 aa ff ff       	callq  4011e0 <__cxa_throw@plt>
  40673f:	48 89 c5             	mov    %rax,%rbp
  406742:	48 89 df             	mov    %rbx,%rdi
  406745:	e8 76 a9 ff ff       	callq  4010c0 <__cxa_free_exception@plt>
  40674a:	48 89 ef             	mov    %rbp,%rdi
  40674d:	e8 ae aa ff ff       	callq  401200 <_Unwind_Resume@plt>
  406752:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  406759:	00 00 00 
  40675c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000406760 <_ZNSt10unique_ptrI12SparseMatrixSt14default_deleteIS0_EED1Ev>:
  406760:	53                   	push   %rbx
  406761:	48 8b 1f             	mov    (%rdi),%rbx
  406764:	48 85 db             	test   %rbx,%rbx
  406767:	74 3f                	je     4067a8 <_ZNSt10unique_ptrI12SparseMatrixSt14default_deleteIS0_EED1Ev+0x48>
  406769:	48 8b 7b 18          	mov    0x18(%rbx),%rdi
  40676d:	48 c7 03 c0 69 40 00 	movq   $0x4069c0,(%rbx)
  406774:	48 85 ff             	test   %rdi,%rdi
  406777:	74 05                	je     40677e <_ZNSt10unique_ptrI12SparseMatrixSt14default_deleteIS0_EED1Ev+0x1e>
  406779:	e8 e2 a9 ff ff       	callq  401160 <_ZdaPv@plt>
  40677e:	48 8b 7b 20          	mov    0x20(%rbx),%rdi
  406782:	48 85 ff             	test   %rdi,%rdi
  406785:	74 05                	je     40678c <_ZNSt10unique_ptrI12SparseMatrixSt14default_deleteIS0_EED1Ev+0x2c>
  406787:	e8 d4 a9 ff ff       	callq  401160 <_ZdaPv@plt>
  40678c:	48 8b 7b 28          	mov    0x28(%rbx),%rdi
  406790:	48 85 ff             	test   %rdi,%rdi
  406793:	74 05                	je     40679a <_ZNSt10unique_ptrI12SparseMatrixSt14default_deleteIS0_EED1Ev+0x3a>
  406795:	e8 c6 a9 ff ff       	callq  401160 <_ZdaPv@plt>
  40679a:	48 89 df             	mov    %rbx,%rdi
  40679d:	5b                   	pop    %rbx
  40679e:	e9 3d a9 ff ff       	jmpq   4010e0 <_ZdlPv@plt>
  4067a3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4067a8:	5b                   	pop    %rbx
  4067a9:	c3                   	retq   
  4067aa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004067b0 <__libc_csu_init>:
  4067b0:	41 57                	push   %r15
  4067b2:	41 89 ff             	mov    %edi,%r15d
  4067b5:	41 56                	push   %r14
  4067b7:	49 89 f6             	mov    %rsi,%r14
  4067ba:	41 55                	push   %r13
  4067bc:	49 89 d5             	mov    %rdx,%r13
  4067bf:	41 54                	push   %r12
  4067c1:	4c 8d 25 f8 15 20 00 	lea    0x2015f8(%rip),%r12        # 607dc0 <__frame_dummy_init_array_entry>
  4067c8:	55                   	push   %rbp
  4067c9:	48 8d 2d 00 16 20 00 	lea    0x201600(%rip),%rbp        # 607dd0 <__init_array_end>
  4067d0:	53                   	push   %rbx
  4067d1:	4c 29 e5             	sub    %r12,%rbp
  4067d4:	31 db                	xor    %ebx,%ebx
  4067d6:	48 c1 fd 03          	sar    $0x3,%rbp
  4067da:	48 83 ec 08          	sub    $0x8,%rsp
  4067de:	e8 35 a8 ff ff       	callq  401018 <_init>
  4067e3:	48 85 ed             	test   %rbp,%rbp
  4067e6:	74 1e                	je     406806 <__libc_csu_init+0x56>
  4067e8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4067ef:	00 
  4067f0:	4c 89 ea             	mov    %r13,%rdx
  4067f3:	4c 89 f6             	mov    %r14,%rsi
  4067f6:	44 89 ff             	mov    %r15d,%edi
  4067f9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  4067fd:	48 83 c3 01          	add    $0x1,%rbx
  406801:	48 39 eb             	cmp    %rbp,%rbx
  406804:	75 ea                	jne    4067f0 <__libc_csu_init+0x40>
  406806:	48 83 c4 08          	add    $0x8,%rsp
  40680a:	5b                   	pop    %rbx
  40680b:	5d                   	pop    %rbp
  40680c:	41 5c                	pop    %r12
  40680e:	41 5d                	pop    %r13
  406810:	41 5e                	pop    %r14
  406812:	41 5f                	pop    %r15
  406814:	c3                   	retq   
  406815:	90                   	nop
  406816:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40681d:	00 00 00 

0000000000406820 <__libc_csu_fini>:
  406820:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000406824 <_fini>:
  406824:	48 83 ec 08          	sub    $0x8,%rsp
  406828:	48 83 c4 08          	add    $0x8,%rsp
  40682c:	c3                   	retq   

Disassembly of section .rodata:

0000000000406830 <_IO_stdin_used>:
  406830:	01 00                	add    %eax,(%rax)
  406832:	02 00                	add    (%rax),%al
  406834:	4f 75 74             	rex.WRXB jne 4068ab <_IO_stdin_used+0x7b>
  406837:	20 6f 66             	and    %ch,0x66(%rdi)
  40683a:	20 62 6f             	and    %ah,0x6f(%rdx)
  40683d:	75 6e                	jne    4068ad <_IO_stdin_used+0x7d>
  40683f:	64 73 20             	fs jae 406862 <_IO_stdin_used+0x32>
  406842:	6d                   	insl   (%dx),%es:(%rdi)
  406843:	61                   	(bad)  
  406844:	74 72                	je     4068b8 <_IO_stdin_used+0x88>
  406846:	69 78 20 72 65 61 64 	imul   $0x64616572,0x20(%rax),%edi
  40684d:	00 52 6f             	add    %dl,0x6f(%rdx)
  406850:	77 20                	ja     406872 <_IO_stdin_used+0x42>
  406852:	6d                   	insl   (%dx),%es:(%rdi)
  406853:	69 73 6d 61 74 63 68 	imul   $0x68637461,0x6d(%rbx),%esi
  40685a:	21 20                	and    %esp,(%rax)
  40685c:	45 78 70             	rex.RB js 4068cf <_IO_stdin_used+0x9f>
  40685f:	65 63 74 65 64       	movslq %gs:0x64(%rbp,%riz,2),%esi
  406864:	20 00                	and    %al,(%rax)
  406866:	2c 20                	sub    $0x20,%al
  406868:	67 6f                	outsl  %ds:(%esi),(%dx)
  40686a:	74 20                	je     40688c <_IO_stdin_used+0x5c>
  40686c:	00 43 6f             	add    %al,0x6f(%rbx)
  40686f:	6c                   	insb   (%dx),%es:(%rdi)
  406870:	75 6d                	jne    4068df <_IO_stdin_used+0xaf>
  406872:	6e                   	outsb  %ds:(%rsi),(%dx)
  406873:	20 6d 69             	and    %ch,0x69(%rbp)
  406876:	73 6d                	jae    4068e5 <_IO_stdin_used+0xb5>
  406878:	61                   	(bad)  
  406879:	74 63                	je     4068de <_IO_stdin_used+0xae>
  40687b:	68 21 20 45 78       	pushq  $0x78452021
  406880:	70 65                	jo     4068e7 <_IO_stdin_used+0xb7>
  406882:	63 74 65 64          	movslq 0x64(%rbp,%riz,2),%esi
  406886:	20 00                	and    %al,(%rax)
  406888:	45 58                	rex.RB pop %r8
  40688a:	50                   	push   %rax
  40688b:	45                   	rex.RB
  40688c:	43 54                	rex.XB push %r12
  40688e:	45                   	rex.RB
  40688f:	44 3a 00             	cmp    (%rax),%r8b
  406892:	41                   	rex.B
  406893:	43 54                	rex.XB push %r12
  406895:	55                   	push   %rbp
  406896:	41                   	rex.B
  406897:	4c 3a 00             	rex.WR cmp (%rax),%r8b
  40689a:	72 00                	jb     40689c <_IO_stdin_used+0x6c>
  40689c:	25 64 20 25 64       	and    $0x64252064,%eax
  4068a1:	20 25 64 0a 00 25    	and    %ah,0x25000a64(%rip)        # 2540730b <_end+0x24dfefe3>
  4068a7:	64 20 25 64 20 25 6c 	and    %ah,%fs:0x6c252064(%rip)        # 6c658912 <_end+0x6c0505ea>
  4068ae:	67 0a 00             	or     (%eax),%al
  4068b1:	6a 75                	pushq  $0x75
  4068b3:	6d                   	insl   (%dx),%es:(%rdi)
  4068b4:	70 5f                	jo     406915 <_IO_stdin_used+0xe5>
  4068b6:	70 65                	jo     40691d <_IO_stdin_used+0xed>
  4068b8:	6e                   	outsb  %ds:(%rsi),(%dx)
  4068b9:	61                   	(bad)  
  4068ba:	6c                   	insb   (%dx),%es:(%rdi)
  4068bb:	74 79                	je     406936 <_IO_stdin_used+0x106>
  4068bd:	5f                   	pop    %rdi
  4068be:	32 5f 32             	xor    0x32(%rdi),%bl
  4068c1:	30 5f 6c             	xor    %bl,0x6c(%rdi)
  4068c4:	69 62 78 73 6d 6d 2c 	imul   $0x2c6d6d73,0x78(%rdx),%esp
  4068cb:	20 00                	and    %al,(%rax)
  4068cd:	6a 75                	pushq  $0x75
  4068cf:	6d                   	insl   (%dx),%es:(%rdi)
  4068d0:	70 5f                	jo     406931 <_IO_stdin_used+0x101>
  4068d2:	70 65                	jo     406939 <_IO_stdin_used+0x109>
  4068d4:	6e                   	outsb  %ds:(%rsi),(%dx)
  4068d5:	61                   	(bad)  
  4068d6:	6c                   	insb   (%dx),%es:(%rdi)
  4068d7:	74 79                	je     406952 <_ZTI6Matrix+0x2>
  4068d9:	5f                   	pop    %rdi
  4068da:	32 5f 32             	xor    0x32(%rdi),%bl
  4068dd:	30 5f 75             	xor    %bl,0x75(%rdi)
  4068e0:	6e                   	outsb  %ds:(%rsi),(%dx)
  4068e1:	72 6f                	jb     406952 <_ZTI6Matrix+0x2>
  4068e3:	6c                   	insb   (%dx),%es:(%rdi)
  4068e4:	6c                   	insb   (%dx),%es:(%rdi)
  4068e5:	65 64 2c 20          	gs fs sub $0x20,%al
  4068e9:	00 6a 75             	add    %ch,0x75(%rdx)
  4068ec:	6d                   	insl   (%dx),%es:(%rdi)
  4068ed:	70 5f                	jo     40694e <_ZTS6Matrix+0x6>
  4068ef:	70 65                	jo     406956 <_ZTI6Matrix+0x6>
  4068f1:	6e                   	outsb  %ds:(%rsi),(%dx)
  4068f2:	61                   	(bad)  
  4068f3:	6c                   	insb   (%dx),%es:(%rdi)
  4068f4:	74 79                	je     40696f <_ZTS12SparseMatrix+0xf>
  4068f6:	5f                   	pop    %rdi
  4068f7:	32 5f 32             	xor    0x32(%rdi),%bl
  4068fa:	30 5f 67             	xor    %bl,0x67(%rdi)
  4068fd:	65 6e                	outsb  %gs:(%rsi),(%dx)
  4068ff:	65 72 61             	gs jb  406963 <_ZTS12SparseMatrix+0x3>
  406902:	6c                   	insb   (%dx),%es:(%rdi)
  406903:	2c 20                	sub    $0x20,%al
  406905:	00 00                	add    %al,(%rax)
  406907:	00 65 78             	add    %ah,0x78(%rbp)
  40690a:	70 65                	jo     406971 <_ZTI12SparseMatrix+0x1>
  40690c:	72 69                	jb     406977 <_ZTI12SparseMatrix+0x7>
  40690e:	6d                   	insl   (%dx),%es:(%rdi)
  40690f:	65 6e                	outsb  %gs:(%rsi),(%dx)
  406911:	74 73                	je     406986 <_ZTI12SparseMatrix+0x16>
  406913:	2f                   	(bad)  
  406914:	6a 75                	pushq  $0x75
  406916:	6d                   	insl   (%dx),%es:(%rdi)
  406917:	70 5f                	jo     406978 <_ZTI12SparseMatrix+0x8>
  406919:	70 65                	jo     406980 <_ZTI12SparseMatrix+0x10>
  40691b:	6e                   	outsb  %ds:(%rsi),(%dx)
  40691c:	61                   	(bad)  
  40691d:	6c                   	insb   (%dx),%es:(%rdi)
  40691e:	74 79                	je     406999 <_ZTI11DenseMatrix+0x1>
  406920:	2f                   	(bad)  
  406921:	67 65 6e             	outsb  %gs:(%esi),(%dx)
  406924:	65 72 61             	gs jb  406988 <_ZTS11DenseMatrix>
  406927:	74 65                	je     40698e <_ZTS11DenseMatrix+0x6>
  406929:	64 2f                	fs (bad) 
  40692b:	6a 75                	pushq  $0x75
  40692d:	6d                   	insl   (%dx),%es:(%rdi)
  40692e:	70 5f                	jo     40698f <_ZTS11DenseMatrix+0x7>
  406930:	70 65                	jo     406997 <_ZTS11DenseMatrix+0xf>
  406932:	6e                   	outsb  %ds:(%rsi),(%dx)
  406933:	61                   	(bad)  
  406934:	6c                   	insb   (%dx),%es:(%rdi)
  406935:	74 79                	je     4069b0 <_ZTV12SparseMatrix>
  406937:	5f                   	pop    %rdi
  406938:	32 5f 32             	xor    0x32(%rdi),%bl
  40693b:	30 2e                	xor    %ch,(%rsi)
  40693d:	6d                   	insl   (%dx),%es:(%rdi)
  40693e:	74 78                	je     4069b8 <_ZTV12SparseMatrix+0x8>
	...

0000000000406948 <_ZTS6Matrix>:
  406948:	36 4d 61             	ss rex.WRB (bad) 
  40694b:	74 72                	je     4069bf <_ZTV12SparseMatrix+0xf>
  40694d:	69 78 00 50 81 60 00 	imul   $0x608150,0x0(%rax),%edi

0000000000406950 <_ZTI6Matrix>:
  406950:	50                   	push   %rax
  406951:	81 60 00 00 00 00 00 	andl   $0x0,0x0(%rax)
  406958:	48 69 40 00 00 00 00 	imul   $0x0,0x0(%rax),%rax
  40695f:	00 

0000000000406960 <_ZTS12SparseMatrix>:
  406960:	31 32                	xor    %esi,(%rdx)
  406962:	53                   	push   %rbx
  406963:	70 61                	jo     4069c6 <_ZTV12SparseMatrix+0x16>
  406965:	72 73                	jb     4069da <_ZTV11DenseMatrix+0xa>
  406967:	65 4d 61             	gs rex.WRB (bad) 
  40696a:	74 72                	je     4069de <_ZTV11DenseMatrix+0xe>
  40696c:	69 78 00 00 c0 82 60 	imul   $0x6082c000,0x0(%rax),%edi

0000000000406970 <_ZTI12SparseMatrix>:
  406970:	c0 82 60 00 00 00 00 	rolb   $0x0,0x60(%rdx)
  406977:	00 60 69             	add    %ah,0x69(%rax)
  40697a:	40 00 00             	add    %al,(%rax)
  40697d:	00 00                	add    %al,(%rax)
  40697f:	00 50 69             	add    %dl,0x69(%rax)
  406982:	40 00 00             	add    %al,(%rax)
  406985:	00 00                	add    %al,(%rax)
	...

0000000000406988 <_ZTS11DenseMatrix>:
  406988:	31 31                	xor    %esi,(%rcx)
  40698a:	44                   	rex.R
  40698b:	65 6e                	outsb  %gs:(%rsi),(%dx)
  40698d:	73 65                	jae    4069f4 <_ZTV11DenseMatrix+0x24>
  40698f:	4d 61                	rex.WRB (bad) 
  406991:	74 72                	je     406a05 <_ZTV11DenseMatrix+0x35>
  406993:	69 78 00 00 00 c0 82 	imul   $0x82c00000,0x0(%rax),%edi

0000000000406998 <_ZTI11DenseMatrix>:
  406998:	c0 82 60 00 00 00 00 	rolb   $0x0,0x60(%rdx)
  40699f:	00 88 69 40 00 00    	add    %cl,0x4069(%rax)
  4069a5:	00 00                	add    %al,(%rax)
  4069a7:	00 50 69             	add    %dl,0x69(%rax)
  4069aa:	40 00 00             	add    %al,(%rax)
  4069ad:	00 00                	add    %al,(%rax)
	...

00000000004069b0 <_ZTV12SparseMatrix>:
	...
  4069b8:	70 69                	jo     406a23 <__GNU_EH_FRAME_HDR+0x3>
  4069ba:	40 00 00             	add    %al,(%rax)
  4069bd:	00 00                	add    %al,(%rax)
  4069bf:	00 00                	add    %al,(%rax)
  4069c1:	66 40 00 00          	data16 add %al,(%rax)
  4069c5:	00 00                	add    %al,(%rax)
  4069c7:	00 50 66             	add    %dl,0x66(%rax)
  4069ca:	40 00 00             	add    %al,(%rax)
  4069cd:	00 00                	add    %al,(%rax)
	...

00000000004069d0 <_ZTV11DenseMatrix>:
	...
  4069d8:	98                   	cwtl   
  4069d9:	69 40 00 00 00 00 00 	imul   $0x0,0x0(%rax),%eax
  4069e0:	f0 66 40 00 00       	lock data16 add %al,(%rax)
  4069e5:	00 00                	add    %al,(%rax)
  4069e7:	00 d0                	add    %dl,%al
  4069e9:	66 40 00 00          	data16 add %al,(%rax)
  4069ed:	00 00                	add    %al,(%rax)
  4069ef:	00 ff                	add    %bh,%bh
  4069f1:	ff                   	(bad)  
  4069f2:	ff                   	(bad)  
  4069f3:	ff                   	(bad)  
  4069f4:	ff                   	(bad)  
  4069f5:	ff                   	(bad)  
  4069f6:	ff                   	(bad)  
  4069f7:	7f 00                	jg     4069f9 <_ZTV11DenseMatrix+0x29>
  4069f9:	00 00                	add    %al,(%rax)
  4069fb:	00 00                	add    %al,(%rax)
  4069fd:	00 00                	add    %al,(%rax)
  4069ff:	00 bb bd d7 d9 df    	add    %bh,-0x20262843(%rbx)
  406a05:	7c db                	jl     4069e2 <_ZTV11DenseMatrix+0x12>
  406a07:	3d fc a9 f1 d2       	cmp    $0xd2f1a9fc,%eax
  406a0c:	4d 62                	rex.WRB (bad) 
  406a0e:	50                   	push   %rax
  406a0f:	3f                   	(bad)  
  406a10:	00 00                	add    %al,(%rax)
  406a12:	c0 ff ff             	sar    $0xff,%bh
  406a15:	ff                   	(bad)  
  406a16:	df 41 00             	fild   0x0(%rcx)
  406a19:	00 00                	add    %al,(%rax)
  406a1b:	00 00                	add    %al,(%rax)
  406a1d:	70 a7                	jo     4069c6 <_ZTV12SparseMatrix+0x16>
  406a1f:	40                   	rex

Disassembly of section .eh_frame_hdr:

0000000000406a20 <__GNU_EH_FRAME_HDR>:
  406a20:	01 1b                	add    %ebx,(%rbx)
  406a22:	03 3b                	add    (%rbx),%edi
  406a24:	04 01                	add    $0x1,%al
  406a26:	00 00                	add    %al,(%rax)
  406a28:	1f                   	(bad)  
  406a29:	00 00                	add    %al,(%rax)
  406a2b:	00 20                	add    %ah,(%rax)
  406a2d:	a6                   	cmpsb  %es:(%rdi),%ds:(%rsi)
  406a2e:	ff                   	(bad)  
  406a2f:	ff 50 01             	callq  *0x1(%rax)
  406a32:	00 00                	add    %al,(%rax)
  406a34:	40 a8 ff             	test   $0xff,%al
  406a37:	ff                   	(bad)  
  406a38:	d8 06                	fadds  (%rsi)
  406a3a:	00 00                	add    %al,(%rax)
  406a3c:	60                   	(bad)  
  406a3d:	a8 ff                	test   $0xff,%al
  406a3f:	ff f0                	push   %rax
  406a41:	06                   	(bad)  
  406a42:	00 00                	add    %al,(%rax)
  406a44:	90                   	nop
  406a45:	a8 ff                	test   $0xff,%al
  406a47:	ff 20                	jmpq   *(%rax)
  406a49:	01 00                	add    %eax,(%rax)
  406a4b:	00 70 a9             	add    %dh,-0x57(%rax)
  406a4e:	ff                   	(bad)  
  406a4f:	ff 20                	jmpq   *(%rax)
  406a51:	02 00                	add    (%rax),%al
  406a53:	00 e0                	add    %ah,%al
  406a55:	aa                   	stos   %al,%es:(%rdi)
  406a56:	ff                   	(bad)  
  406a57:	ff 70 02             	pushq  0x2(%rax)
  406a5a:	00 00                	add    %al,(%rax)
  406a5c:	90                   	nop
  406a5d:	ac                   	lods   %ds:(%rsi),%al
  406a5e:	ff                   	(bad)  
  406a5f:	ff b0 02 00 00 90    	pushq  -0x6ffffffe(%rax)
  406a65:	b2 ff                	mov    $0xff,%dl
  406a67:	ff 08                	decl   (%rax)
  406a69:	03 00                	add    (%rax),%eax
  406a6b:	00 a0 b3 ff ff 48    	add    %ah,0x48ffffb3(%rax)
  406a71:	03 00                	add    (%rax),%eax
  406a73:	00 10                	add    %dl,(%rax)
  406a75:	b9 ff ff b0 03       	mov    $0x3b0ffff,%ecx
  406a7a:	00 00                	add    %al,(%rax)
  406a7c:	f0 b9 ff ff f8 03    	lock mov $0x3f8ffff,%ecx
  406a82:	00 00                	add    %al,(%rax)
  406a84:	40 ba ff ff 28 04    	rex mov $0x428ffff,%edx
  406a8a:	00 00                	add    %al,(%rax)
  406a8c:	70 ba                	jo     406a48 <__GNU_EH_FRAME_HDR+0x28>
  406a8e:	ff                   	(bad)  
  406a8f:	ff 40 04             	incl   0x4(%rax)
  406a92:	00 00                	add    %al,(%rax)
  406a94:	80 ba ff ff 58 04 00 	cmpb   $0x0,0x458ffff(%rdx)
  406a9b:	00 90 ba ff ff 70    	add    %dl,0x70ffffba(%rax)
  406aa1:	04 00                	add    $0x0,%al
  406aa3:	00 10                	add    %dl,(%rax)
  406aa5:	d5                   	(bad)  
  406aa6:	ff                   	(bad)  
  406aa7:	ff b0 04 00 00 20    	pushq  0x20000004(%rax)
  406aad:	d8 ff                	fdivr  %st(7),%st
  406aaf:	ff d0                	callq  *%rax
  406ab1:	04 00                	add    $0x0,%al
  406ab3:	00 10                	add    %dl,(%rax)
  406ab5:	e1 ff                	loope  406ab6 <__GNU_EH_FRAME_HDR+0x96>
  406ab7:	ff                   	(bad)  
  406ab8:	e8 04 00 00 40       	callq  40406ac1 <_end+0x3fdfe799>
  406abd:	e6 ff                	out    %al,$0xff
  406abf:	ff 58 05             	lcall  *0x5(%rax)
  406ac2:	00 00                	add    %al,(%rax)
  406ac4:	30 e8                	xor    %ch,%al
  406ac6:	ff                   	(bad)  
  406ac7:	ff 98 05 00 00 b0    	lcall  *-0x4ffffffb(%rax)
  406acd:	ea                   	(bad)  
  406ace:	ff                   	(bad)  
  406acf:	ff                   	(bad)  
  406ad0:	e8 05 00 00 70       	callq  70406ada <_end+0x6fdfe7b2>
  406ad5:	ed                   	in     (%dx),%eax
  406ad6:	ff                   	(bad)  
  406ad7:	ff                   	(bad)  
  406ad8:	38 06                	cmp    %al,(%rsi)
  406ada:	00 00                	add    %al,(%rax)
  406adc:	30 f6                	xor    %dh,%dh
  406ade:	ff                   	(bad)  
  406adf:	ff 88 06 00 00 d0    	decl   -0x2ffffffa(%rax)
  406ae5:	fb                   	sti    
  406ae6:	ff                   	(bad)  
  406ae7:	ff                   	(bad)  
  406ae8:	78 01                	js     406aeb <__GNU_EH_FRAME_HDR+0xcb>
  406aea:	00 00                	add    %al,(%rax)
  406aec:	e0 fb                	loopne 406ae9 <__GNU_EH_FRAME_HDR+0xc9>
  406aee:	ff                   	(bad)  
  406aef:	ff 90 01 00 00 30    	callq  *0x30000001(%rax)
  406af5:	fc                   	cld    
  406af6:	ff                   	(bad)  
  406af7:	ff a8 01 00 00 b0    	ljmp   *-0x4fffffff(%rax)
  406afd:	fc                   	cld    
  406afe:	ff                   	(bad)  
  406aff:	ff c0                	inc    %eax
  406b01:	01 00                	add    %eax,(%rax)
  406b03:	00 d0                	add    %dl,%al
  406b05:	fc                   	cld    
  406b06:	ff                   	(bad)  
  406b07:	ff                   	(bad)  
  406b08:	f8                   	clc    
  406b09:	01 00                	add    %eax,(%rax)
  406b0b:	00 40 fd             	add    %al,-0x3(%rax)
  406b0e:	ff                   	(bad)  
  406b0f:	ff                   	(bad)  
  406b10:	38 05 00 00 90 fd    	cmp    %al,-0x2700000(%rip)        # fffffffffdd06b16 <_end+0xfffffffffd6fe7ee>
  406b16:	ff                   	(bad)  
  406b17:	ff 08                	decl   (%rax)
  406b19:	07                   	(bad)  
  406b1a:	00 00                	add    %al,(%rax)
  406b1c:	00 fe                	add    %bh,%dh
  406b1e:	ff                   	(bad)  
  406b1f:	ff 50 07             	callq  *0x7(%rax)
	...

Disassembly of section .eh_frame:

0000000000406b28 <__FRAME_END__-0x660>:
  406b28:	14 00                	adc    $0x0,%al
  406b2a:	00 00                	add    %al,(%rax)
  406b2c:	00 00                	add    %al,(%rax)
  406b2e:	00 00                	add    %al,(%rax)
  406b30:	01 7a 52             	add    %edi,0x52(%rdx)
  406b33:	00 01                	add    %al,(%rcx)
  406b35:	78 10                	js     406b47 <__GNU_EH_FRAME_HDR+0x127>
  406b37:	01 1b                	add    %ebx,(%rbx)
  406b39:	0c 07                	or     $0x7,%al
  406b3b:	08 90 01 07 10 14    	or     %dl,0x14100701(%rax)
  406b41:	00 00                	add    %al,(%rax)
  406b43:	00 1c 00             	add    %bl,(%rax,%rax,1)
  406b46:	00 00                	add    %al,(%rax)
  406b48:	68 a7 ff ff 2a       	pushq  $0x2affffa7
	...
  406b55:	00 00                	add    %al,(%rax)
  406b57:	00 14 00             	add    %dl,(%rax,%rax,1)
  406b5a:	00 00                	add    %al,(%rax)
  406b5c:	00 00                	add    %al,(%rax)
  406b5e:	00 00                	add    %al,(%rax)
  406b60:	01 7a 52             	add    %edi,0x52(%rdx)
  406b63:	00 01                	add    %al,(%rcx)
  406b65:	78 10                	js     406b77 <__GNU_EH_FRAME_HDR+0x157>
  406b67:	01 1b                	add    %ebx,(%rbx)
  406b69:	0c 07                	or     $0x7,%al
  406b6b:	08 90 01 00 00 24    	or     %dl,0x24000001(%rax)
  406b71:	00 00                	add    %al,(%rax)
  406b73:	00 1c 00             	add    %bl,(%rax,%rax,1)
  406b76:	00 00                	add    %al,(%rax)
  406b78:	c8 a4 ff ff          	enterq $0xffa4,$0xff
  406b7c:	10 02                	adc    %al,(%rdx)
  406b7e:	00 00                	add    %al,(%rax)
  406b80:	00 0e                	add    %cl,(%rsi)
  406b82:	10 46 0e             	adc    %al,0xe(%rsi)
  406b85:	18 4a 0f             	sbb    %cl,0xf(%rdx)
  406b88:	0b 77 08             	or     0x8(%rdi),%esi
  406b8b:	80 00 3f             	addb   $0x3f,(%rax)
  406b8e:	1a 3b                	sbb    (%rbx),%bh
  406b90:	2a 33                	sub    (%rbx),%dh
  406b92:	24 22                	and    $0x22,%al
  406b94:	00 00                	add    %al,(%rax)
  406b96:	00 00                	add    %al,(%rax)
  406b98:	14 00                	adc    $0x0,%al
  406b9a:	00 00                	add    %al,(%rax)
  406b9c:	44 00 00             	add    %r8b,(%rax)
  406b9f:	00 50 fa             	add    %dl,-0x6(%rax)
  406ba2:	ff                   	(bad)  
  406ba3:	ff 03                	incl   (%rbx)
	...
  406bad:	00 00                	add    %al,(%rax)
  406baf:	00 14 00             	add    %dl,(%rax,%rax,1)
  406bb2:	00 00                	add    %al,(%rax)
  406bb4:	5c                   	pop    %rsp
  406bb5:	00 00                	add    %al,(%rax)
  406bb7:	00 48 fa             	add    %cl,-0x6(%rax)
  406bba:	ff                   	(bad)  
  406bbb:	ff 4f 00             	decl   0x0(%rdi)
	...
  406bc6:	00 00                	add    %al,(%rax)
  406bc8:	14 00                	adc    $0x0,%al
  406bca:	00 00                	add    %al,(%rax)
  406bcc:	74 00                	je     406bce <__GNU_EH_FRAME_HDR+0x1ae>
  406bce:	00 00                	add    %al,(%rax)
  406bd0:	80 fa ff             	cmp    $0xff,%dl
  406bd3:	ff                   	(bad)  
  406bd4:	7e 00                	jle    406bd6 <__GNU_EH_FRAME_HDR+0x1b6>
	...
  406bde:	00 00                	add    %al,(%rax)
  406be0:	14 00                	adc    $0x0,%al
  406be2:	00 00                	add    %al,(%rax)
  406be4:	8c 00                	mov    %es,(%rax)
  406be6:	00 00                	add    %al,(%rax)
  406be8:	e8 fa ff ff 13       	callq  14406be7 <_end+0x13dfe8bf>
	...
  406bf5:	00 00                	add    %al,(%rax)
  406bf7:	00 1c 00             	add    %bl,(%rax,%rax,1)
  406bfa:	00 00                	add    %al,(%rax)
  406bfc:	00 00                	add    %al,(%rax)
  406bfe:	00 00                	add    %al,(%rax)
  406c00:	01 7a 50             	add    %edi,0x50(%rdx)
  406c03:	4c 52                	rex.WR push %rdx
  406c05:	00 01                	add    %al,(%rcx)
  406c07:	78 10                	js     406c19 <__GNU_EH_FRAME_HDR+0x1f9>
  406c09:	07                   	(bad)  
  406c0a:	03 c0                	add    %eax,%eax
  406c0c:	11 40 00             	adc    %eax,0x0(%rax)
  406c0f:	03 1b                	add    (%rbx),%ebx
  406c11:	0c 07                	or     $0x7,%al
  406c13:	08 90 01 00 00 24    	or     %dl,0x24000001(%rax)
  406c19:	00 00                	add    %al,(%rax)
  406c1b:	00 24 00             	add    %ah,(%rax,%rax,1)
  406c1e:	00 00                	add    %al,(%rax)
  406c20:	d0 fa                	sar    %dl
  406c22:	ff                   	(bad)  
  406c23:	ff 62 00             	jmpq   *0x0(%rdx)
  406c26:	00 00                	add    %al,(%rax)
  406c28:	04 8c                	add    $0x8c,%al
  406c2a:	71 40                	jno    406c6c <__GNU_EH_FRAME_HDR+0x24c>
  406c2c:	00 5e 0e             	add    %bl,0xe(%rsi)
  406c2f:	10 86 02 41 0e 18    	adc    %al,0x180e4102(%rsi)
  406c35:	83 03 49             	addl   $0x49,(%rbx)
  406c38:	0e                   	(bad)  
  406c39:	20 00                	and    %al,(%rax)
  406c3b:	00 00                	add    %al,(%rax)
  406c3d:	00 00                	add    %al,(%rax)
  406c3f:	00 4c 00 00          	add    %cl,0x0(%rax,%rax,1)
  406c43:	00 4c 00 00          	add    %cl,0x0(%rax,%rax,1)
  406c47:	00 48 a7             	add    %cl,-0x59(%rax)
  406c4a:	ff                   	(bad)  
  406c4b:	ff 6b 01             	ljmp   *0x1(%rbx)
  406c4e:	00 00                	add    %al,(%rax)
  406c50:	04 98                	add    $0x98,%al
  406c52:	71 40                	jno    406c94 <__GNU_EH_FRAME_HDR+0x274>
  406c54:	00 42 0e             	add    %al,0xe(%rdx)
  406c57:	10 8f 02 42 0e 18    	adc    %cl,0x180e4202(%rdi)
  406c5d:	8e 03                	mov    (%rbx),%es
  406c5f:	42 0e                	rex.X (bad) 
  406c61:	20 8d 04 42 0e 28    	and    %cl,0x280e4204(%rbp)
  406c67:	8c 05 41 0e 30 86    	mov    %es,-0x79cff1bf(%rip)        # ffffffff86707aae <_end+0xffffffff860ff786>
  406c6d:	06                   	(bad)  
  406c6e:	41 0e                	rex.B (bad) 
  406c70:	38 83 07 44 0e 50    	cmp    %al,0x500e4407(%rbx)
  406c76:	02 f5                	add    %ch,%dh
  406c78:	0a 0e                	or     (%rsi),%cl
  406c7a:	38 41 0e             	cmp    %al,0xe(%rcx)
  406c7d:	30 41 0e             	xor    %al,0xe(%rcx)
  406c80:	28 42 0e             	sub    %al,0xe(%rdx)
  406c83:	20 42 0e             	and    %al,0xe(%rdx)
  406c86:	18 42 0e             	sbb    %al,0xe(%rdx)
  406c89:	10 42 0e             	adc    %al,0xe(%rdx)
  406c8c:	08 41 0b             	or     %al,0xb(%rcx)
  406c8f:	00 3c 00             	add    %bh,(%rax,%rax,1)
  406c92:	00 00                	add    %al,(%rax)
  406c94:	9c                   	pushfq 
  406c95:	00 00                	add    %al,(%rax)
  406c97:	00 68 a8             	add    %ch,-0x58(%rax)
  406c9a:	ff                   	(bad)  
  406c9b:	ff ab 01 00 00 04    	ljmp   *0x4000001(%rbx)
  406ca1:	b2 71                	mov    $0x71,%dl
  406ca3:	40 00 42 0e          	add    %al,0xe(%rdx)
  406ca7:	10 8d 02 42 0e 18    	adc    %cl,0x180e4202(%rbp)
  406cad:	8c 03                	mov    %es,(%rbx)
  406caf:	41 0e                	rex.B (bad) 
  406cb1:	20 86 04 41 0e 28    	and    %al,0x280e4104(%rsi)
  406cb7:	83 05 47 0e 30 03 26 	addl   $0x26,0x3300e47(%rip)        # 3707b05 <_end+0x30ff7dd>
  406cbe:	01 0a                	add    %ecx,(%rdx)
  406cc0:	0e                   	(bad)  
  406cc1:	28 44 0e 20          	sub    %al,0x20(%rsi,%rcx,1)
  406cc5:	41 0e                	rex.B (bad) 
  406cc7:	18 42 0e             	sbb    %al,0xe(%rdx)
  406cca:	10 42 0e             	adc    %al,0xe(%rdx)
  406ccd:	08 44 0b 54          	or     %al,0x54(%rbx,%rcx,1)
  406cd1:	00 00                	add    %al,(%rax)
  406cd3:	00 dc                	add    %bl,%ah
  406cd5:	00 00                	add    %al,(%rax)
  406cd7:	00 d8                	add    %bl,%al
  406cd9:	a9 ff ff f8 05       	test   $0x5f8ffff,%eax
  406cde:	00 00                	add    %al,(%rax)
  406ce0:	04 c7                	add    $0xc7,%al
  406ce2:	71 40                	jno    406d24 <__GNU_EH_FRAME_HDR+0x304>
  406ce4:	00 42 0e             	add    %al,0xe(%rdx)
  406ce7:	10 8d 02 42 0e 18    	adc    %cl,0x180e4202(%rbp)
  406ced:	8c 03                	mov    %es,(%rbx)
  406cef:	41 0e                	rex.B (bad) 
  406cf1:	20 86 04 41 0e 28    	and    %al,0x280e4104(%rsi)
  406cf7:	83 05 4a 0e 30 02 e1 	addl   $0xffffffe1,0x2300e4a(%rip)        # 2707b48 <_end+0x20ff820>
  406cfe:	0a 0e                	or     (%rsi),%cl
  406d00:	28 41 0e             	sub    %al,0xe(%rcx)
  406d03:	20 41 0e             	and    %al,0xe(%rcx)
  406d06:	18 42 0e             	sbb    %al,0xe(%rdx)
  406d09:	10 42 0e             	adc    %al,0xe(%rdx)
  406d0c:	08 49 0b             	or     %cl,0xb(%rcx)
  406d0f:	03 09                	add    (%rcx),%ecx
  406d11:	03 0a                	add    (%rdx),%ecx
  406d13:	0e                   	(bad)  
  406d14:	28 44 0e 20          	sub    %al,0x20(%rsi,%rcx,1)
  406d18:	41 0e                	rex.B (bad) 
  406d1a:	18 42 0e             	sbb    %al,0xe(%rdx)
  406d1d:	10 42 0e             	adc    %al,0xe(%rdx)
  406d20:	08 45 0b             	or     %al,0xb(%rbp)
  406d23:	00 00                	add    %al,(%rax)
  406d25:	00 00                	add    %al,(%rax)
  406d27:	00 3c 00             	add    %bh,(%rax,%rax,1)
  406d2a:	00 00                	add    %al,(%rax)
  406d2c:	d4                   	(bad)  
  406d2d:	01 00                	add    %eax,(%rax)
  406d2f:	00 80 af ff ff 0c    	add    %al,0xcffffaf(%rax)
  406d35:	01 00                	add    %eax,(%rax)
  406d37:	00 00                	add    %al,(%rax)
  406d39:	42 0e                	rex.X (bad) 
  406d3b:	10 8d 02 42 0e 18    	adc    %cl,0x180e4202(%rbp)
  406d41:	8c 03                	mov    %es,(%rbx)
  406d43:	41 0e                	rex.B (bad) 
  406d45:	20 86 04 41 0e 28    	and    %al,0x280e4104(%rsi)
  406d4b:	83 05 47 0e 30 02 c1 	addl   $0xffffffc1,0x2300e47(%rip)        # 2707b99 <_end+0x20ff871>
  406d52:	0a 0e                	or     (%rsi),%cl
  406d54:	28 44 0e 20          	sub    %al,0x20(%rsi,%rcx,1)
  406d58:	41 0e                	rex.B (bad) 
  406d5a:	18 42 0e             	sbb    %al,0xe(%rdx)
  406d5d:	10 42 0e             	adc    %al,0xe(%rdx)
  406d60:	08 49 0b             	or     %cl,0xb(%rcx)
  406d63:	00 00                	add    %al,(%rax)
  406d65:	00 00                	add    %al,(%rax)
  406d67:	00 64 00 00          	add    %ah,0x0(%rax,%rax,1)
  406d6b:	00 14 02             	add    %dl,(%rdx,%rax,1)
  406d6e:	00 00                	add    %al,(%rax)
  406d70:	50                   	push   %rax
  406d71:	b0 ff                	mov    $0xff,%al
  406d73:	ff 6b 05             	ljmp   *0x5(%rbx)
  406d76:	00 00                	add    %al,(%rax)
  406d78:	00 42 0e             	add    %al,0xe(%rdx)
  406d7b:	10 8f 02 42 0e 18    	adc    %cl,0x180e4202(%rdi)
  406d81:	8e 03                	mov    (%rbx),%es
  406d83:	42 0e                	rex.X (bad) 
  406d85:	20 8d 04 42 0e 28    	and    %cl,0x280e4204(%rbp)
  406d8b:	8c 05 44 0e 30 86    	mov    %es,-0x79cff1bc(%rip)        # ffffffff86707bd5 <_end+0xffffffff860ff8ad>
  406d91:	06                   	(bad)  
  406d92:	41 0e                	rex.B (bad) 
  406d94:	38 83 07 47 0e 50    	cmp    %al,0x500e4707(%rbx)
  406d9a:	02 9d 0a 0e 38 41    	add    0x41380e0a(%rbp),%bl
  406da0:	0e                   	(bad)  
  406da1:	30 41 0e             	xor    %al,0xe(%rcx)
  406da4:	28 42 0e             	sub    %al,0xe(%rdx)
  406da7:	20 42 0e             	and    %al,0xe(%rdx)
  406daa:	18 42 0e             	sbb    %al,0xe(%rdx)
  406dad:	10 42 0e             	adc    %al,0xe(%rdx)
  406db0:	08 45 0b             	or     %al,0xb(%rbp)
  406db3:	03 fd                	add    %ebp,%edi
  406db5:	02 0a                	add    (%rdx),%cl
  406db7:	0e                   	(bad)  
  406db8:	38 44 0e 30          	cmp    %al,0x30(%rsi,%rcx,1)
  406dbc:	41 0e                	rex.B (bad) 
  406dbe:	28 42 0e             	sub    %al,0xe(%rdx)
  406dc1:	20 42 0e             	and    %al,0xe(%rdx)
  406dc4:	18 42 0e             	sbb    %al,0xe(%rdx)
  406dc7:	10 42 0e             	adc    %al,0xe(%rdx)
  406dca:	08 45 0b             	or     %al,0xb(%rbp)
  406dcd:	00 00                	add    %al,(%rax)
  406dcf:	00 44 00 00          	add    %al,0x0(%rax,%rax,1)
  406dd3:	00 7c 02 00          	add    %bh,0x0(%rdx,%rax,1)
  406dd7:	00 58 b5             	add    %bl,-0x4b(%rax)
  406dda:	ff                   	(bad)  
  406ddb:	ff d7                	callq  *%rdi
  406ddd:	00 00                	add    %al,(%rax)
  406ddf:	00 00                	add    %al,(%rax)
  406de1:	42 0e                	rex.X (bad) 
  406de3:	10 8f 02 42 0e 18    	adc    %cl,0x180e4202(%rdi)
  406de9:	8e 03                	mov    (%rbx),%es
  406deb:	42 0e                	rex.X (bad) 
  406ded:	20 8d 04 42 0e 28    	and    %cl,0x280e4204(%rbp)
  406df3:	8c 05 41 0e 30 86    	mov    %es,-0x79cff1bf(%rip)        # ffffffff86707c3a <_end+0xffffffff860ff912>
  406df9:	06                   	(bad)  
  406dfa:	41 0e                	rex.B (bad) 
  406dfc:	38 83 07 44 0e 60    	cmp    %al,0x600e4407(%rbx)
  406e02:	02 be 0e 38 41 0e    	add    0xe41380e(%rsi),%bh
  406e08:	30 41 0e             	xor    %al,0xe(%rcx)
  406e0b:	28 42 0e             	sub    %al,0xe(%rdx)
  406e0e:	20 42 0e             	and    %al,0xe(%rdx)
  406e11:	18 42 0e             	sbb    %al,0xe(%rdx)
  406e14:	10 42 0e             	adc    %al,0xe(%rdx)
  406e17:	08 2c 00             	or     %ch,(%rax,%rax,1)
  406e1a:	00 00                	add    %al,(%rax)
  406e1c:	c4 02 00 00          	(bad)  
  406e20:	f0 b5 ff             	lock mov $0xff,%ch
  406e23:	ff 4f 00             	decl   0x0(%rdi)
  406e26:	00 00                	add    %al,(%rax)
  406e28:	00 42 0e             	add    %al,0xe(%rdx)
  406e2b:	10 8c 02 41 0e 18 86 	adc    %cl,-0x79e7f1bf(%rdx,%rax,1)
  406e32:	03 44 0e 20          	add    0x20(%rsi,%rcx,1),%eax
  406e36:	83 04 02 44          	addl   $0x44,(%rdx,%rax,1)
  406e3a:	0e                   	(bad)  
  406e3b:	18 41 0e             	sbb    %al,0xe(%rcx)
  406e3e:	10 42 0e             	adc    %al,0xe(%rdx)
  406e41:	08 00                	or     %al,(%rax)
  406e43:	00 00                	add    %al,(%rax)
  406e45:	00 00                	add    %al,(%rax)
  406e47:	00 14 00             	add    %dl,(%rax,%rax,1)
  406e4a:	00 00                	add    %al,(%rax)
  406e4c:	f4                   	hlt    
  406e4d:	02 00                	add    (%rax),%al
  406e4f:	00 10                	add    %dl,(%rax)
  406e51:	b6 ff                	mov    $0xff,%dh
  406e53:	ff 22                	jmpq   *(%rdx)
	...
  406e5d:	00 00                	add    %al,(%rax)
  406e5f:	00 14 00             	add    %dl,(%rax,%rax,1)
  406e62:	00 00                	add    %al,(%rax)
  406e64:	0c 03                	or     $0x3,%al
  406e66:	00 00                	add    %al,(%rax)
  406e68:	28 b6 ff ff 06 00    	sub    %dh,0x6ffff(%rsi)
	...
  406e76:	00 00                	add    %al,(%rax)
  406e78:	14 00                	adc    $0x0,%al
  406e7a:	00 00                	add    %al,(%rax)
  406e7c:	24 03                	and    $0x3,%al
  406e7e:	00 00                	add    %al,(%rax)
  406e80:	20 b6 ff ff 06 00    	and    %dh,0x6ffff(%rsi)
	...
  406e8e:	00 00                	add    %al,(%rax)
  406e90:	3c 00                	cmp    $0x0,%al
  406e92:	00 00                	add    %al,(%rax)
  406e94:	3c 03                	cmp    $0x3,%al
  406e96:	00 00                	add    %al,(%rax)
  406e98:	18 b6 ff ff 76 1a    	sbb    %dh,0x1a76ffff(%rsi)
  406e9e:	00 00                	add    %al,(%rax)
  406ea0:	00 42 0e             	add    %al,0xe(%rdx)
  406ea3:	10 8f 02 42 0e 18    	adc    %cl,0x180e4202(%rdi)
  406ea9:	8e 03                	mov    (%rbx),%es
  406eab:	42 0e                	rex.X (bad) 
  406ead:	20 8d 04 42 0e 28    	and    %cl,0x280e4204(%rbp)
  406eb3:	8c 05 41 0e 30 83    	mov    %es,-0x7ccff1bf(%rip)        # ffffffff83707cfa <_end+0xffffffff830ff9d2>
  406eb9:	06                   	(bad)  
  406eba:	03 64 1a 0e          	add    0xe(%rdx,%rbx,1),%esp
  406ebe:	28 42 0e             	sub    %al,0xe(%rdx)
  406ec1:	20 42 0e             	and    %al,0xe(%rdx)
  406ec4:	18 42 0e             	sbb    %al,0xe(%rdx)
  406ec7:	10 42 0e             	adc    %al,0xe(%rdx)
  406eca:	08 00                	or     %al,(%rax)
  406ecc:	00 00                	add    %al,(%rax)
  406ece:	00 00                	add    %al,(%rax)
  406ed0:	1c 00                	sbb    $0x0,%al
  406ed2:	00 00                	add    %al,(%rax)
  406ed4:	7c 03                	jl     406ed9 <__GNU_EH_FRAME_HDR+0x4b9>
  406ed6:	00 00                	add    %al,(%rax)
  406ed8:	58                   	pop    %rax
  406ed9:	d0 ff                	sar    %bh
  406edb:	ff 01                	incl   (%rcx)
  406edd:	03 00                	add    (%rax),%eax
  406edf:	00 00                	add    %al,(%rax)
  406ee1:	42 0e                	rex.X (bad) 
  406ee3:	10 8c 02 03 fe 02 0e 	adc    %cl,0xe02fe03(%rdx,%rax,1)
  406eea:	08 00                	or     %al,(%rax)
  406eec:	00 00                	add    %al,(%rax)
  406eee:	00 00                	add    %al,(%rax)
  406ef0:	14 00                	adc    $0x0,%al
  406ef2:	00 00                	add    %al,(%rax)
  406ef4:	9c                   	pushfq 
  406ef5:	03 00                	add    (%rax),%eax
  406ef7:	00 48 d3             	add    %cl,-0x2d(%rax)
  406efa:	ff                   	(bad)  
  406efb:	ff                   	(bad)  
  406efc:	ec                   	in     (%dx),%al
  406efd:	08 00                	or     %al,(%rax)
	...
  406f07:	00 4c 00 00          	add    %cl,0x0(%rax,%rax,1)
  406f0b:	00 14 03             	add    %dl,(%rbx,%rax,1)
  406f0e:	00 00                	add    %al,(%rax)
  406f10:	20 dc                	and    %bl,%ah
  406f12:	ff                   	(bad)  
  406f13:	ff 21                	jmpq   *(%rcx)
  406f15:	05 00 00 04 dc       	add    $0xdc040000,%eax
  406f1a:	71 40                	jno    406f5c <__GNU_EH_FRAME_HDR+0x53c>
  406f1c:	00 42 0e             	add    %al,0xe(%rdx)
  406f1f:	10 8e 02 42 0e 18    	adc    %cl,0x180e4202(%rsi)
  406f25:	8d 03                	lea    (%rbx),%eax
  406f27:	4c 0e                	rex.WR (bad) 
  406f29:	20 8c 04 41 0e 28 86 	and    %cl,-0x79d7f1bf(%rsp,%rax,1)
  406f30:	05 46 0e 30 83       	add    $0x83300e46,%eax
  406f35:	06                   	(bad)  
  406f36:	4c 0e                	rex.WR (bad) 
  406f38:	e0 09                	loopne 406f43 <__GNU_EH_FRAME_HDR+0x523>
  406f3a:	03 8c 04 0a 0e 30 41 	add    0x41300e0a(%rsp,%rax,1),%ecx
  406f41:	0e                   	(bad)  
  406f42:	28 41 0e             	sub    %al,0xe(%rcx)
  406f45:	20 42 0e             	and    %al,0xe(%rdx)
  406f48:	18 42 0e             	sbb    %al,0xe(%rdx)
  406f4b:	10 42 0e             	adc    %al,0xe(%rdx)
  406f4e:	08 41 0b             	or     %al,0xb(%rcx)
  406f51:	00 00                	add    %al,(%rax)
  406f53:	00 00                	add    %al,(%rax)
  406f55:	00 00                	add    %al,(%rax)
  406f57:	00 1c 00             	add    %bl,(%rax,%rax,1)
  406f5a:	00 00                	add    %al,(%rax)
  406f5c:	04 04                	add    $0x4,%al
  406f5e:	00 00                	add    %al,(%rax)
  406f60:	00 f8                	add    %bh,%al
  406f62:	ff                   	(bad)  
  406f63:	ff 4a 00             	decl   0x0(%rdx)
  406f66:	00 00                	add    %al,(%rax)
  406f68:	00 41 0e             	add    %al,0xe(%rcx)
  406f6b:	10 83 02 7d 0a 0e    	adc    %al,0xe0a7d02(%rbx)
  406f71:	08 4a 0b             	or     %cl,0xb(%rdx)
  406f74:	41 0e                	rex.B (bad) 
  406f76:	08 00                	or     %al,(%rax)
  406f78:	3c 00                	cmp    $0x0,%al
  406f7a:	00 00                	add    %al,(%rax)
  406f7c:	84 03                	test   %al,(%rbx)
  406f7e:	00 00                	add    %al,(%rax)
  406f80:	e0 e0                	loopne 406f62 <__GNU_EH_FRAME_HDR+0x542>
  406f82:	ff                   	(bad)  
  406f83:	ff e7                	jmpq   *%rdi
  406f85:	01 00                	add    %eax,(%rax)
  406f87:	00 04 f9             	add    %al,(%rcx,%rdi,8)
  406f8a:	71 40                	jno    406fcc <__GNU_EH_FRAME_HDR+0x5ac>
  406f8c:	00 42 0e             	add    %al,0xe(%rdx)
  406f8f:	10 8d 02 42 0e 18    	adc    %cl,0x180e4202(%rbp)
  406f95:	8c 03                	mov    %es,(%rbx)
  406f97:	44 0e                	rex.R (bad) 
  406f99:	20 86 04 41 0e 28    	and    %al,0x280e4104(%rsi)
  406f9f:	83 05 4c 0e 30 03 8f 	addl   $0xffffff8f,0x3300e4c(%rip)        # 3707df2 <_end+0x30ffaca>
  406fa6:	01 0a                	add    %ecx,(%rdx)
  406fa8:	0e                   	(bad)  
  406fa9:	28 44 0e 20          	sub    %al,0x20(%rsi,%rcx,1)
  406fad:	41 0e                	rex.B (bad) 
  406faf:	18 42 0e             	sbb    %al,0xe(%rdx)
  406fb2:	10 42 0e             	adc    %al,0xe(%rdx)
  406fb5:	08 43 0b             	or     %al,0xb(%rbx)
  406fb8:	4c 00 00             	rex.WR add %r8b,(%rax)
  406fbb:	00 c4                	add    %al,%ah
  406fbd:	03 00                	add    (%rax),%eax
  406fbf:	00 90 e2 ff ff 76    	add    %dl,0x76ffffe2(%rax)
  406fc5:	02 00                	add    (%rax),%al
  406fc7:	00 04 18             	add    %al,(%rax,%rbx,1)
  406fca:	72 40                	jb     40700c <__GNU_EH_FRAME_HDR+0x5ec>
  406fcc:	00 42 0e             	add    %al,0xe(%rdx)
  406fcf:	10 8f 02 42 0e 18    	adc    %cl,0x180e4202(%rdi)
  406fd5:	8e 03                	mov    (%rbx),%es
  406fd7:	45 0e                	rex.RB (bad) 
  406fd9:	20 8d 04 42 0e 28    	and    %cl,0x280e4204(%rbp)
  406fdf:	8c 05 44 0e 30 86    	mov    %es,-0x79cff1bc(%rip)        # ffffffff86707e29 <_end+0xffffffff860ffb01>
  406fe5:	06                   	(bad)  
  406fe6:	41 0e                	rex.B (bad) 
  406fe8:	38 83 07 4c 0e 60    	cmp    %al,0x600e4c07(%rbx)
  406fee:	03 14 02             	add    (%rdx,%rax,1),%edx
  406ff1:	0a 0e                	or     (%rsi),%cl
  406ff3:	38 44 0e 30          	cmp    %al,0x30(%rsi,%rcx,1)
  406ff7:	41 0e                	rex.B (bad) 
  406ff9:	28 42 0e             	sub    %al,0xe(%rdx)
  406ffc:	20 42 0e             	and    %al,0xe(%rdx)
  406fff:	18 42 0e             	sbb    %al,0xe(%rdx)
  407002:	10 42 0e             	adc    %al,0xe(%rdx)
  407005:	08 43 0b             	or     %al,0xb(%rbx)
  407008:	4c 00 00             	rex.WR add %r8b,(%rax)
  40700b:	00 14 04             	add    %dl,(%rsp,%rax,1)
  40700e:	00 00                	add    %al,(%rax)
  407010:	c0 e4 ff             	shl    $0xff,%ah
  407013:	ff c0                	inc    %eax
  407015:	02 00                	add    (%rax),%al
  407017:	00 04 38             	add    %al,(%rax,%rdi,1)
  40701a:	72 40                	jb     40705c <__GNU_EH_FRAME_HDR+0x63c>
  40701c:	00 42 0e             	add    %al,0xe(%rdx)
  40701f:	10 8f 02 42 0e 18    	adc    %cl,0x180e4202(%rdi)
  407025:	8e 03                	mov    (%rbx),%es
  407027:	45 0e                	rex.RB (bad) 
  407029:	20 8d 04 42 0e 28    	and    %cl,0x280e4204(%rbp)
  40702f:	8c 05 46 0e 30 86    	mov    %es,-0x79cff1ba(%rip)        # ffffffff86707e7b <_end+0xffffffff860ffb53>
  407035:	06                   	(bad)  
  407036:	41 0e                	rex.B (bad) 
  407038:	38 83 07 47 0e 60    	cmp    %al,0x600e4707(%rbx)
  40703e:	03 25 02 0a 0e 38    	add    0x380e0a02(%rip),%esp        # 384e7a46 <_end+0x37edf71e>
  407044:	44 0e                	rex.R (bad) 
  407046:	30 41 0e             	xor    %al,0xe(%rcx)
  407049:	28 42 0e             	sub    %al,0xe(%rdx)
  40704c:	20 42 0e             	and    %al,0xe(%rdx)
  40704f:	18 42 0e             	sbb    %al,0xe(%rdx)
  407052:	10 42 0e             	adc    %al,0xe(%rdx)
  407055:	08 45 0b             	or     %al,0xb(%rbp)
  407058:	4c 00 00             	rex.WR add %r8b,(%rax)
  40705b:	00 64 04 00          	add    %ah,0x0(%rsp,%rax,1)
  40705f:	00 30                	add    %dh,(%rax)
  407061:	e7 ff                	out    %eax,$0xff
  407063:	ff b5 08 00 00 04    	pushq  0x4000008(%rbp)
  407069:	68 72 40 00 42       	pushq  $0x42004072
  40706e:	0e                   	(bad)  
  40706f:	10 8e 02 42 0e 18    	adc    %cl,0x180e4202(%rsi)
  407075:	8d 03                	lea    (%rbx),%eax
  407077:	4c 0e                	rex.WR (bad) 
  407079:	20 8c 04 41 0e 28 86 	and    %cl,-0x79d7f1bf(%rsp,%rax,1)
  407080:	05 46 0e 30 83       	add    $0x83300e46,%eax
  407085:	06                   	(bad)  
  407086:	4c 0e                	rex.WR (bad) 
  407088:	80 0a 03             	orb    $0x3,(%rdx)
  40708b:	07                   	(bad)  
  40708c:	08 0a                	or     %cl,(%rdx)
  40708e:	0e                   	(bad)  
  40708f:	30 41 0e             	xor    %al,0xe(%rcx)
  407092:	28 41 0e             	sub    %al,0xe(%rcx)
  407095:	20 42 0e             	and    %al,0xe(%rdx)
  407098:	18 42 0e             	sbb    %al,0xe(%rdx)
  40709b:	10 42 0e             	adc    %al,0xe(%rdx)
  40709e:	08 41 0b             	or     %al,0xb(%rcx)
  4070a1:	00 00                	add    %al,(%rax)
  4070a3:	00 00                	add    %al,(%rax)
  4070a5:	00 00                	add    %al,(%rax)
  4070a7:	00 4c 00 00          	add    %cl,0x0(%rax,%rax,1)
  4070ab:	00 b4 04 00 00 a0 ef 	add    %dh,-0x10600000(%rsp,%rax,1)
  4070b2:	ff                   	(bad)  
  4070b3:	ff 9a 05 00 00 04    	lcall  *0x4000005(%rdx)
  4070b9:	8b 72 40             	mov    0x40(%rdx),%esi
  4070bc:	00 42 0e             	add    %al,0xe(%rdx)
  4070bf:	10 8e 02 42 0e 18    	adc    %cl,0x180e4202(%rsi)
  4070c5:	8d 03                	lea    (%rbx),%eax
  4070c7:	4c 0e                	rex.WR (bad) 
  4070c9:	20 8c 04 41 0e 28 86 	and    %cl,-0x79d7f1bf(%rsp,%rax,1)
  4070d0:	05 46 0e 30 83       	add    $0x83300e46,%eax
  4070d5:	06                   	(bad)  
  4070d6:	4c 0e                	rex.WR (bad) 
  4070d8:	e0 09                	loopne 4070e3 <__GNU_EH_FRAME_HDR+0x6c3>
  4070da:	03 ef                	add    %edi,%ebp
  4070dc:	04 0a                	add    $0xa,%al
  4070de:	0e                   	(bad)  
  4070df:	30 41 0e             	xor    %al,0xe(%rcx)
  4070e2:	28 41 0e             	sub    %al,0xe(%rcx)
  4070e5:	20 42 0e             	and    %al,0xe(%rdx)
  4070e8:	18 42 0e             	sbb    %al,0xe(%rdx)
  4070eb:	10 42 0e             	adc    %al,0xe(%rdx)
  4070ee:	08 41 0b             	or     %al,0xb(%rcx)
  4070f1:	00 00                	add    %al,(%rax)
  4070f3:	00 00                	add    %al,(%rax)
  4070f5:	00 00                	add    %al,(%rax)
  4070f7:	00 14 00             	add    %dl,(%rax,%rax,1)
  4070fa:	00 00                	add    %al,(%rax)
  4070fc:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
  4070fd:	05 00 00 60 a1       	add    $0xa1600000,%eax
  407102:	ff                   	(bad)  
  407103:	ff 1a                	lcall  *(%rdx)
  407105:	00 00                	add    %al,(%rax)
  407107:	00 00                	add    %al,(%rax)
  407109:	44 0e                	rex.R (bad) 
  40710b:	10 55 0e             	adc    %dl,0xe(%rbp)
  40710e:	08 00                	or     %al,(%rax)
  407110:	14 00                	adc    $0x0,%al
  407112:	00 00                	add    %al,(%rax)
  407114:	bc 05 00 00 68       	mov    $0x68000005,%esp
  407119:	a1 ff ff 26 00 00 00 	movabs 0x440000000026ffff,%eax
  407120:	00 44 
  407122:	0e                   	(bad)  
  407123:	10 5d 0e             	adc    %bl,0xe(%rbp)
  407126:	08 00                	or     %al,(%rax)
  407128:	44 00 00             	add    %r8b,(%rax)
  40712b:	00 d4                	add    %dl,%ah
  40712d:	05 00 00 80 f6       	add    $0xf6800000,%eax
  407132:	ff                   	(bad)  
  407133:	ff 65 00             	jmpq   *0x0(%rbp)
  407136:	00 00                	add    %al,(%rax)
  407138:	00 42 0e             	add    %al,0xe(%rdx)
  40713b:	10 8f 02 45 0e 18    	adc    %cl,0x180e4502(%rdi)
  407141:	8e 03                	mov    (%rbx),%es
  407143:	45 0e                	rex.RB (bad) 
  407145:	20 8d 04 45 0e 28    	and    %cl,0x280e4504(%rbp)
  40714b:	8c 05 48 0e 30 86    	mov    %es,-0x79cff1b8(%rip)        # ffffffff86707f99 <_end+0xffffffff860ffc71>
  407151:	06                   	(bad)  
  407152:	48 0e                	rex.W (bad) 
  407154:	38 83 07 4d 0e 40    	cmp    %al,0x400e4d07(%rbx)
  40715a:	6c                   	insb   (%dx),%es:(%rdi)
  40715b:	0e                   	(bad)  
  40715c:	38 41 0e             	cmp    %al,0xe(%rcx)
  40715f:	30 41 0e             	xor    %al,0xe(%rcx)
  407162:	28 42 0e             	sub    %al,0xe(%rdx)
  407165:	20 42 0e             	and    %al,0xe(%rdx)
  407168:	18 42 0e             	sbb    %al,0xe(%rdx)
  40716b:	10 42 0e             	adc    %al,0xe(%rdx)
  40716e:	08 00                	or     %al,(%rax)
  407170:	14 00                	adc    $0x0,%al
  407172:	00 00                	add    %al,(%rax)
  407174:	1c 06                	sbb    $0x6,%al
  407176:	00 00                	add    %al,(%rax)
  407178:	a8 f6                	test   $0xf6,%al
  40717a:	ff                   	(bad)  
  40717b:	ff 02                	incl   (%rdx)
	...

0000000000407188 <__FRAME_END__>:
  407188:	00 00                	add    %al,(%rax)
	...

Disassembly of section .gcc_except_table:

000000000040718c <.gcc_except_table>:
  40718c:	ff                   	(bad)  
  40718d:	ff 01                	incl   (%rcx)
  40718f:	08 38                	or     %bh,(%rax)
  407191:	05 4f 00 4a 18       	add    $0x184a004f,%eax
  407196:	00 00                	add    %al,(%rax)
  407198:	ff                   	(bad)  
  407199:	ff 01                	incl   (%rcx)
  40719b:	16                   	(bad)  
  40719c:	a3 02 05 d6 02 00 b5 	movabs %eax,0x502b50002d60502
  4071a3:	02 05 
  4071a5:	00 00                	add    %al,(%rax)
  4071a7:	cf                   	iret   
  4071a8:	02 05 e9 02 00 e4    	add    -0x1bfffd17(%rip),%al        # ffffffffe4407497 <_end+0xffffffffe3dff16f>
  4071ae:	02 05 00 00 ff ff    	add    -0x10000(%rip),%al        # 3f71b4 <_init-0x9e64>
  4071b4:	01 11                	add    %edx,(%rcx)
  4071b6:	c7 01 9b 01 00 00    	movl   $0x19b,(%rcx)
  4071bc:	fc                   	cld    
  4071bd:	02 05 98 03 00 8e    	add    -0x71fffc68(%rip),%al        # ffffffff8e40755b <_end+0xffffffff8ddff233>
  4071c3:	03 1d 00 00 ff ff    	add    -0x10000(%rip),%ebx        # 3f71c9 <_init-0x9e4f>
  4071c9:	01 11                	add    %edx,(%rcx)
  4071cb:	8f 02                	popq   (%rdx)
  4071cd:	9d                   	popfq  
  4071ce:	09 00                	or     %eax,(%rax)
  4071d0:	00 c9                	add    %cl,%cl
  4071d2:	0b 05 e5 0b 00 db    	or     -0x24fff41b(%rip),%eax        # ffffffffdb407dbd <_end+0xffffffffdadffa95>
  4071d8:	0b 1d 00 00 ff ff    	or     -0x10000(%rip),%ebx        # 3f71de <_init-0x9e3a>
  4071de:	01 19                	add    %ebx,(%rcx)
  4071e0:	86 02                	xchg   %al,(%rdx)
  4071e2:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
  4071e3:	02 de                	add    %dh,%bl
  4071e5:	09 00                	or     %eax,(%rax)
  4071e7:	fd                   	std    
  4071e8:	06                   	(bad)  
  4071e9:	dc 02                	faddl  (%rdx)
  4071eb:	f8                   	clc    
  4071ec:	09 00                	or     %eax,(%rax)
  4071ee:	ee                   	out    %al,(%dx)
  4071ef:	09 05 00 00 f3 09    	or     %eax,0x9f30000(%rip)        # a3371f5 <_end+0x9d2eecd>
  4071f5:	05 f8 09 00 ff       	add    $0xff0009f8,%eax
  4071fa:	ff 01                	incl   (%rcx)
  4071fc:	1b 15 05 00 00 60    	sbb    0x60000005(%rip),%edx        # 60407207 <_end+0x5fdfeedf>
  407202:	21 d4                	and    %edx,%esp
  407204:	03 00                	add    (%rax),%eax
  407206:	ca 01 ed             	lret   $0xed01
  407209:	01 c1                	add    %eax,%ecx
  40720b:	03 00                	add    (%rax),%eax
  40720d:	bc 03 05 d4 03       	mov    $0x3d40503,%esp
  407212:	00 cf                	add    %cl,%bh
  407214:	03 18                	add    (%rax),%ebx
  407216:	00 00                	add    %al,(%rax)
  407218:	ff                   	(bad)  
  407219:	ff 01                	incl   (%rcx)
  40721b:	1c 35                	sbb    $0x35,%al
  40721d:	05 00 00 81 01       	add    $0x1810000,%eax
  407222:	21 e3                	and    %esp,%ebx
  407224:	04 00                	add    $0x0,%al
  407226:	b7 02                	mov    $0x2,%bh
  407228:	8f 02                	popq   (%rdx)
  40722a:	d0 04 00             	rolb   (%rax,%rax,1)
  40722d:	cb                   	lret   
  40722e:	04 05                	add    $0x5,%al
  407230:	e3 04                	jrcxz  407236 <__FRAME_END__+0xae>
  407232:	00 de                	add    %bl,%dh
  407234:	04 18                	add    $0x18,%al
  407236:	00 00                	add    %al,(%rax)
  407238:	ff                   	(bad)  
  407239:	ff 01                	incl   (%rcx)
  40723b:	2c 38                	sub    $0x38,%al
  40723d:	05 00 00 87 01       	add    $0x1870000,%eax
  407242:	21 ad 05 00 d5 04    	and    %ebp,0x4d50005(%rbp)
  407248:	02 88 05 00 f1 04    	add    0x4f10005(%rax),%cl
  40724e:	05 9b 05 00 83       	add    $0x8300059b,%eax
  407253:	05 05 88 05 00       	add    $0x58805,%eax
  407258:	96                   	xchg   %eax,%esi
  407259:	05 05 00 00 a8       	add    $0xa8000005,%eax
  40725e:	05 05 ad 05 00       	add    $0x5ad05,%eax
  407263:	bb 05 05 00 00       	mov    $0x505,%ebx
  407268:	ff                   	(bad)  
  407269:	ff 01                	incl   (%rcx)
  40726b:	1f                   	(bad)  
  40726c:	89 02                	mov    %eax,(%rdx)
  40726e:	ca 02 e0             	lret   $0xe002
  407271:	10 00                	adc    %al,(%rax)
  407273:	e0 04                	loopne 407279 <__FRAME_END__+0xf1>
  407275:	05 b0 11 00 b0       	add    $0xb00011b0,%eax
  40727a:	07                   	(bad)  
  40727b:	a8 09                	test   $0x9,%al
  40727d:	fa                   	cli    
  40727e:	10 00                	adc    %al,(%rax)
  407280:	f0 10 05 00 00 f5 10 	lock adc %al,0x10f50000(%rip)        # 11357287 <_end+0x10d4ef5f>
  407287:	05 fa 10 00 ff       	add    $0xff0010fa,%eax
  40728c:	ff 01                	incl   (%rcx)
  40728e:	1f                   	(bad)  
  40728f:	86 02                	xchg   %al,(%rdx)
  407291:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
  407292:	02 c8                	add    %al,%cl
  407294:	0a 00                	or     (%rax),%al
  407296:	b7 04                	mov    $0x4,%bh
  407298:	05 95 0b 00 8d       	add    $0x8d000b95,%eax
  40729d:	07                   	(bad)  
  40729e:	b3 03                	mov    $0x3,%bl
  4072a0:	e2 0a                	loop   4072ac <__FRAME_END__+0x124>
  4072a2:	00 d8                	add    %bl,%al
  4072a4:	0a 05 00 00 dd 0a    	or     0xadd0000(%rip),%al        # b1d72aa <_end+0xabcef82>
  4072aa:	05                   	.byte 0x5
  4072ab:	e2 0a                	loop   4072b7 <__FRAME_END__+0x12f>
	...

Disassembly of section .init_array:

0000000000607dc0 <__frame_dummy_init_array_entry>:
  607dc0:	80 13 40             	adcb   $0x40,(%rbx)
  607dc3:	00 00                	add    %al,(%rax)
  607dc5:	00 00                	add    %al,(%rax)
  607dc7:	00 80 12 40 00 00    	add    %al,0x4012(%rax)
  607dcd:	00 00                	add    %al,(%rax)
	...

Disassembly of section .fini_array:

0000000000607dd0 <__do_global_dtors_aux_fini_array_entry>:
  607dd0:	50                   	push   %rax
  607dd1:	13 40 00             	adc    0x0(%rax),%eax
  607dd4:	00 00                	add    %al,(%rax)
	...

Disassembly of section .dynamic:

0000000000607dd8 <_DYNAMIC>:
  607dd8:	01 00                	add    %eax,(%rax)
  607dda:	00 00                	add    %al,(%rax)
  607ddc:	00 00                	add    %al,(%rax)
  607dde:	00 00                	add    %al,(%rax)
  607de0:	01 00                	add    %eax,(%rax)
  607de2:	00 00                	add    %al,(%rax)
  607de4:	00 00                	add    %al,(%rax)
  607de6:	00 00                	add    %al,(%rax)
  607de8:	01 00                	add    %eax,(%rax)
  607dea:	00 00                	add    %al,(%rax)
  607dec:	00 00                	add    %al,(%rax)
  607dee:	00 00                	add    %al,(%rax)
  607df0:	5f                   	pop    %rdi
  607df1:	00 00                	add    %al,(%rax)
  607df3:	00 00                	add    %al,(%rax)
  607df5:	00 00                	add    %al,(%rax)
  607df7:	00 01                	add    %al,(%rcx)
  607df9:	00 00                	add    %al,(%rax)
  607dfb:	00 00                	add    %al,(%rax)
  607dfd:	00 00                	add    %al,(%rax)
  607dff:	00 b3 02 00 00 00    	add    %dh,0x2(%rbx)
  607e05:	00 00                	add    %al,(%rax)
  607e07:	00 01                	add    %al,(%rcx)
  607e09:	00 00                	add    %al,(%rax)
  607e0b:	00 00                	add    %al,(%rax)
  607e0d:	00 00                	add    %al,(%rax)
  607e0f:	00 bd 02 00 00 00    	add    %bh,0x2(%rbp)
  607e15:	00 00                	add    %al,(%rax)
  607e17:	00 01                	add    %al,(%rcx)
  607e19:	00 00                	add    %al,(%rax)
  607e1b:	00 00                	add    %al,(%rax)
  607e1d:	00 00                	add    %al,(%rax)
  607e1f:	00 da                	add    %bl,%dl
  607e21:	02 00                	add    (%rax),%al
  607e23:	00 00                	add    %al,(%rax)
  607e25:	00 00                	add    %al,(%rax)
  607e27:	00 0c 00             	add    %cl,(%rax,%rax,1)
  607e2a:	00 00                	add    %al,(%rax)
  607e2c:	00 00                	add    %al,(%rax)
  607e2e:	00 00                	add    %al,(%rax)
  607e30:	18 10                	sbb    %dl,(%rax)
  607e32:	40 00 00             	add    %al,(%rax)
  607e35:	00 00                	add    %al,(%rax)
  607e37:	00 0d 00 00 00 00    	add    %cl,0x0(%rip)        # 607e3d <_DYNAMIC+0x65>
  607e3d:	00 00                	add    %al,(%rax)
  607e3f:	00 24 68             	add    %ah,(%rax,%rbp,2)
  607e42:	40 00 00             	add    %al,(%rax)
  607e45:	00 00                	add    %al,(%rax)
  607e47:	00 19                	add    %bl,(%rcx)
  607e49:	00 00                	add    %al,(%rax)
  607e4b:	00 00                	add    %al,(%rax)
  607e4d:	00 00                	add    %al,(%rax)
  607e4f:	00 c0                	add    %al,%al
  607e51:	7d 60                	jge    607eb3 <_DYNAMIC+0xdb>
  607e53:	00 00                	add    %al,(%rax)
  607e55:	00 00                	add    %al,(%rax)
  607e57:	00 1b                	add    %bl,(%rbx)
  607e59:	00 00                	add    %al,(%rax)
  607e5b:	00 00                	add    %al,(%rax)
  607e5d:	00 00                	add    %al,(%rax)
  607e5f:	00 10                	add    %dl,(%rax)
  607e61:	00 00                	add    %al,(%rax)
  607e63:	00 00                	add    %al,(%rax)
  607e65:	00 00                	add    %al,(%rax)
  607e67:	00 1a                	add    %bl,(%rdx)
  607e69:	00 00                	add    %al,(%rax)
  607e6b:	00 00                	add    %al,(%rax)
  607e6d:	00 00                	add    %al,(%rax)
  607e6f:	00 d0                	add    %dl,%al
  607e71:	7d 60                	jge    607ed3 <_DYNAMIC+0xfb>
  607e73:	00 00                	add    %al,(%rax)
  607e75:	00 00                	add    %al,(%rax)
  607e77:	00 1c 00             	add    %bl,(%rax,%rax,1)
  607e7a:	00 00                	add    %al,(%rax)
  607e7c:	00 00                	add    %al,(%rax)
  607e7e:	00 00                	add    %al,(%rax)
  607e80:	08 00                	or     %al,(%rax)
  607e82:	00 00                	add    %al,(%rax)
  607e84:	00 00                	add    %al,(%rax)
  607e86:	00 00                	add    %al,(%rax)
  607e88:	04 00                	add    $0x0,%al
  607e8a:	00 00                	add    %al,(%rax)
  607e8c:	00 00                	add    %al,(%rax)
  607e8e:	00 00                	add    %al,(%rax)
  607e90:	78 02                	js     607e94 <_DYNAMIC+0xbc>
  607e92:	40 00 00             	add    %al,(%rax)
  607e95:	00 00                	add    %al,(%rax)
  607e97:	00 f5                	add    %dh,%ch
  607e99:	fe                   	(bad)  
  607e9a:	ff 6f 00             	ljmp   *0x0(%rdi)
  607e9d:	00 00                	add    %al,(%rax)
  607e9f:	00 b8 03 40 00 00    	add    %bh,0x4003(%rax)
  607ea5:	00 00                	add    %al,(%rax)
  607ea7:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # 607ead <_DYNAMIC+0xd5>
  607ead:	00 00                	add    %al,(%rax)
  607eaf:	00 d8                	add    %bl,%al
  607eb1:	07                   	(bad)  
  607eb2:	40 00 00             	add    %al,(%rax)
  607eb5:	00 00                	add    %al,(%rax)
  607eb7:	00 06                	add    %al,(%rsi)
	...
  607ec1:	04 40                	add    $0x40,%al
  607ec3:	00 00                	add    %al,(%rax)
  607ec5:	00 00                	add    %al,(%rax)
  607ec7:	00 0a                	add    %cl,(%rdx)
  607ec9:	00 00                	add    %al,(%rax)
  607ecb:	00 00                	add    %al,(%rax)
  607ecd:	00 00                	add    %al,(%rax)
  607ecf:	00 a1 03 00 00 00    	add    %ah,0x3(%rcx)
  607ed5:	00 00                	add    %al,(%rax)
  607ed7:	00 0b                	add    %cl,(%rbx)
  607ed9:	00 00                	add    %al,(%rax)
  607edb:	00 00                	add    %al,(%rax)
  607edd:	00 00                	add    %al,(%rax)
  607edf:	00 18                	add    %bl,(%rax)
  607ee1:	00 00                	add    %al,(%rax)
  607ee3:	00 00                	add    %al,(%rax)
  607ee5:	00 00                	add    %al,(%rax)
  607ee7:	00 15 00 00 00 00    	add    %dl,0x0(%rip)        # 607eed <_DYNAMIC+0x115>
	...
  607ef5:	00 00                	add    %al,(%rax)
  607ef7:	00 03                	add    %al,(%rbx)
	...
  607f01:	80 60 00 00          	andb   $0x0,0x0(%rax)
  607f05:	00 00                	add    %al,(%rax)
  607f07:	00 02                	add    %al,(%rdx)
	...
  607f11:	03 00                	add    (%rax),%eax
  607f13:	00 00                	add    %al,(%rax)
  607f15:	00 00                	add    %al,(%rax)
  607f17:	00 14 00             	add    %dl,(%rax,%rax,1)
  607f1a:	00 00                	add    %al,(%rax)
  607f1c:	00 00                	add    %al,(%rax)
  607f1e:	00 00                	add    %al,(%rax)
  607f20:	07                   	(bad)  
  607f21:	00 00                	add    %al,(%rax)
  607f23:	00 00                	add    %al,(%rax)
  607f25:	00 00                	add    %al,(%rax)
  607f27:	00 17                	add    %dl,(%rdi)
  607f29:	00 00                	add    %al,(%rax)
  607f2b:	00 00                	add    %al,(%rax)
  607f2d:	00 00                	add    %al,(%rax)
  607f2f:	00 18                	add    %bl,(%rax)
  607f31:	0d 40 00 00 00       	or     $0x40,%eax
  607f36:	00 00                	add    %al,(%rax)
  607f38:	07                   	(bad)  
  607f39:	00 00                	add    %al,(%rax)
  607f3b:	00 00                	add    %al,(%rax)
  607f3d:	00 00                	add    %al,(%rax)
  607f3f:	00 a0 0c 40 00 00    	add    %ah,0x400c(%rax)
  607f45:	00 00                	add    %al,(%rax)
  607f47:	00 08                	add    %cl,(%rax)
  607f49:	00 00                	add    %al,(%rax)
  607f4b:	00 00                	add    %al,(%rax)
  607f4d:	00 00                	add    %al,(%rax)
  607f4f:	00 78 00             	add    %bh,0x0(%rax)
  607f52:	00 00                	add    %al,(%rax)
  607f54:	00 00                	add    %al,(%rax)
  607f56:	00 00                	add    %al,(%rax)
  607f58:	09 00                	or     %eax,(%rax)
  607f5a:	00 00                	add    %al,(%rax)
  607f5c:	00 00                	add    %al,(%rax)
  607f5e:	00 00                	add    %al,(%rax)
  607f60:	18 00                	sbb    %al,(%rax)
  607f62:	00 00                	add    %al,(%rax)
  607f64:	00 00                	add    %al,(%rax)
  607f66:	00 00                	add    %al,(%rax)
  607f68:	fe                   	(bad)  
  607f69:	ff                   	(bad)  
  607f6a:	ff 6f 00             	ljmp   *0x0(%rdi)
  607f6d:	00 00                	add    %al,(%rax)
  607f6f:	00 d0                	add    %dl,%al
  607f71:	0b 40 00             	or     0x0(%rax),%eax
  607f74:	00 00                	add    %al,(%rax)
  607f76:	00 00                	add    %al,(%rax)
  607f78:	ff                   	(bad)  
  607f79:	ff                   	(bad)  
  607f7a:	ff 6f 00             	ljmp   *0x0(%rdi)
  607f7d:	00 00                	add    %al,(%rax)
  607f7f:	00 04 00             	add    %al,(%rax,%rax,1)
  607f82:	00 00                	add    %al,(%rax)
  607f84:	00 00                	add    %al,(%rax)
  607f86:	00 00                	add    %al,(%rax)
  607f88:	f0 ff                	lock (bad) 
  607f8a:	ff 6f 00             	ljmp   *0x0(%rdi)
  607f8d:	00 00                	add    %al,(%rax)
  607f8f:	00 7a 0b             	add    %bh,0xb(%rdx)
  607f92:	40 00 00             	add    %al,(%rax)
	...

Disassembly of section .got:

0000000000607ff8 <.got>:
	...

Disassembly of section .got.plt:

0000000000608000 <_GLOBAL_OFFSET_TABLE_>:
  608000:	d8 7d 60             	fdivrs 0x60(%rbp)
	...
  608017:	00 56 10             	add    %dl,0x10(%rsi)
  60801a:	40 00 00             	add    %al,(%rax)
  60801d:	00 00                	add    %al,(%rax)
  60801f:	00 66 10             	add    %ah,0x10(%rsi)
  608022:	40 00 00             	add    %al,(%rax)
  608025:	00 00                	add    %al,(%rax)
  608027:	00 76 10             	add    %dh,0x10(%rsi)
  60802a:	40 00 00             	add    %al,(%rax)
  60802d:	00 00                	add    %al,(%rax)
  60802f:	00 86 10 40 00 00    	add    %al,0x4010(%rsi)
  608035:	00 00                	add    %al,(%rax)
  608037:	00 96 10 40 00 00    	add    %dl,0x4010(%rsi)
  60803d:	00 00                	add    %al,(%rax)
  60803f:	00 a6 10 40 00 00    	add    %ah,0x4010(%rsi)
  608045:	00 00                	add    %al,(%rax)
  608047:	00 b6 10 40 00 00    	add    %dh,0x4010(%rsi)
  60804d:	00 00                	add    %al,(%rax)
  60804f:	00 c6                	add    %al,%dh
  608051:	10 40 00             	adc    %al,0x0(%rax)
  608054:	00 00                	add    %al,(%rax)
  608056:	00 00                	add    %al,(%rax)
  608058:	d6                   	(bad)  
  608059:	10 40 00             	adc    %al,0x0(%rax)
  60805c:	00 00                	add    %al,(%rax)
  60805e:	00 00                	add    %al,(%rax)
  608060:	e6 10                	out    %al,$0x10
  608062:	40 00 00             	add    %al,(%rax)
  608065:	00 00                	add    %al,(%rax)
  608067:	00 f6                	add    %dh,%dh
  608069:	10 40 00             	adc    %al,0x0(%rax)
  60806c:	00 00                	add    %al,(%rax)
  60806e:	00 00                	add    %al,(%rax)
  608070:	06                   	(bad)  
  608071:	11 40 00             	adc    %eax,0x0(%rax)
  608074:	00 00                	add    %al,(%rax)
  608076:	00 00                	add    %al,(%rax)
  608078:	16                   	(bad)  
  608079:	11 40 00             	adc    %eax,0x0(%rax)
  60807c:	00 00                	add    %al,(%rax)
  60807e:	00 00                	add    %al,(%rax)
  608080:	26 11 40 00          	adc    %eax,%es:0x0(%rax)
  608084:	00 00                	add    %al,(%rax)
  608086:	00 00                	add    %al,(%rax)
  608088:	36 11 40 00          	adc    %eax,%ss:0x0(%rax)
  60808c:	00 00                	add    %al,(%rax)
  60808e:	00 00                	add    %al,(%rax)
  608090:	46 11 40 00          	rex.RX adc %r8d,0x0(%rax)
  608094:	00 00                	add    %al,(%rax)
  608096:	00 00                	add    %al,(%rax)
  608098:	56                   	push   %rsi
  608099:	11 40 00             	adc    %eax,0x0(%rax)
  60809c:	00 00                	add    %al,(%rax)
  60809e:	00 00                	add    %al,(%rax)
  6080a0:	66 11 40 00          	adc    %ax,0x0(%rax)
  6080a4:	00 00                	add    %al,(%rax)
  6080a6:	00 00                	add    %al,(%rax)
  6080a8:	76 11                	jbe    6080bb <_GLOBAL_OFFSET_TABLE_+0xbb>
  6080aa:	40 00 00             	add    %al,(%rax)
  6080ad:	00 00                	add    %al,(%rax)
  6080af:	00 86 11 40 00 00    	add    %al,0x4011(%rsi)
  6080b5:	00 00                	add    %al,(%rax)
  6080b7:	00 96 11 40 00 00    	add    %dl,0x4011(%rsi)
  6080bd:	00 00                	add    %al,(%rax)
  6080bf:	00 a6 11 40 00 00    	add    %ah,0x4011(%rsi)
  6080c5:	00 00                	add    %al,(%rax)
  6080c7:	00 b6 11 40 00 00    	add    %dh,0x4011(%rsi)
  6080cd:	00 00                	add    %al,(%rax)
  6080cf:	00 c6                	add    %al,%dh
  6080d1:	11 40 00             	adc    %eax,0x0(%rax)
  6080d4:	00 00                	add    %al,(%rax)
  6080d6:	00 00                	add    %al,(%rax)
  6080d8:	d6                   	(bad)  
  6080d9:	11 40 00             	adc    %eax,0x0(%rax)
  6080dc:	00 00                	add    %al,(%rax)
  6080de:	00 00                	add    %al,(%rax)
  6080e0:	e6 11                	out    %al,$0x11
  6080e2:	40 00 00             	add    %al,(%rax)
  6080e5:	00 00                	add    %al,(%rax)
  6080e7:	00 f6                	add    %dh,%dh
  6080e9:	11 40 00             	adc    %eax,0x0(%rax)
  6080ec:	00 00                	add    %al,(%rax)
  6080ee:	00 00                	add    %al,(%rax)
  6080f0:	06                   	(bad)  
  6080f1:	12 40 00             	adc    0x0(%rax),%al
  6080f4:	00 00                	add    %al,(%rax)
  6080f6:	00 00                	add    %al,(%rax)
  6080f8:	16                   	(bad)  
  6080f9:	12 40 00             	adc    0x0(%rax),%al
  6080fc:	00 00                	add    %al,(%rax)
  6080fe:	00 00                	add    %al,(%rax)
  608100:	26 12 40 00          	adc    %es:0x0(%rax),%al
  608104:	00 00                	add    %al,(%rax)
  608106:	00 00                	add    %al,(%rax)
  608108:	36 12 40 00          	adc    %ss:0x0(%rax),%al
  60810c:	00 00                	add    %al,(%rax)
  60810e:	00 00                	add    %al,(%rax)
  608110:	46 12 40 00          	rex.RX adc 0x0(%rax),%r8b
  608114:	00 00                	add    %al,(%rax)
	...

Disassembly of section .data:

0000000000608118 <__data_start>:
	...

0000000000608120 <__dso_handle>:
	...

Disassembly of section .bss:

0000000000608140 <_ZTVN10__cxxabiv117__class_type_infoE@@CXXABI_1.3>:
	...

00000000006081a0 <_ZSt4cout@@GLIBCXX_3.4>:
	...

00000000006082b0 <_ZTVN10__cxxabiv120__si_class_type_infoE@@CXXABI_1.3>:
	...

0000000000608308 <_ZTISt16invalid_argument@@GLIBCXX_3.4>:
	...

0000000000608320 <completed.6965>:
	...

0000000000608321 <_ZStL8__ioinit>:
  608321:	00 00                	add    %al,(%rax)
  608323:	00 00                	add    %al,(%rax)
  608325:	00 00                	add    %al,(%rax)
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	47                   	rex.RXB
   1:	43                   	rex.XB
   2:	43 3a 20             	rex.XB cmp (%r8),%spl
   5:	28 53 55             	sub    %dl,0x55(%rbx)
   8:	53                   	push   %rbx
   9:	45 20 4c 69 6e       	and    %r9b,0x6e(%r9,%rbp,2)
   e:	75 78                	jne    88 <_init-0x400f90>
  10:	29 20                	sub    %esp,(%rax)
  12:	34 2e                	xor    $0x2e,%al
  14:	38 2e                	cmp    %ch,(%rsi)
  16:	35 00 47 43 43       	xor    $0x43434700,%eax
  1b:	3a 20                	cmp    (%rax),%ah
  1d:	28 47 4e             	sub    %al,0x4e(%rdi)
  20:	55                   	push   %rbp
  21:	29 20                	sub    %esp,(%rax)
  23:	37                   	(bad)  
  24:	2e 32 2e             	xor    %cs:(%rsi),%ch
  27:	30 00                	xor    %al,(%rax)

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
  10:	b0 12                	mov    $0x12,%al
  12:	40 00 00             	add    %al,(%rax)
  15:	00 00                	add    %al,(%rax)
  17:	00 2a                	add    %ch,(%rdx)
	...
  2d:	00 00                	add    %al,(%rax)
  2f:	00 1c 00             	add    %bl,(%rax,%rax,1)
  32:	00 00                	add    %al,(%rax)
  34:	02 00                	add    (%rax),%al
  36:	75 00                	jne    38 <_init-0x400fe0>
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
  5f:	00 18                	add    %bl,(%rax)
  61:	10 40 00             	adc    %al,0x0(%rax)
  64:	00 00                	add    %al,(%rax)
  66:	00 00                	add    %al,(%rax)
  68:	15 00 00 00 00       	adc    $0x0,%eax
  6d:	00 00                	add    %al,(%rax)
  6f:	00 24 68             	add    %ah,(%rax,%rbp,2)
  72:	40 00 00             	add    %al,(%rax)
  75:	00 00                	add    %al,(%rax)
  77:	00 04 00             	add    %al,(%rax,%rax,1)
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
  9f:	00 b0 67 40 00 00    	add    %dh,0x4067(%rax)
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
  d0:	2d 10 40 00 00       	sub    $0x4010,%eax
  d5:	00 00                	add    %al,(%rax)
  d7:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # dd <_init-0x400f3b>
  dd:	00 00                	add    %al,(%rax)
  df:	00 28                	add    %ch,(%rax)
  e1:	68 40 00 00 00       	pushq  $0x40
  e6:	00 00                	add    %al,(%rax)
  e8:	05 00 00 00 00       	add    $0x0,%eax
	...

Disassembly of section .debug_info:

0000000000000000 <.debug_info>:
   0:	71 00                	jno    2 <_init-0x401016>
   2:	00 00                	add    %al,(%rax)
   4:	02 00                	add    (%rax),%al
   6:	00 00                	add    %al,(%rax)
   8:	00 00                	add    %al,(%rax)
   a:	08 01                	or     %al,(%rcx)
   c:	00 00                	add    %al,(%rax)
   e:	00 00                	add    %al,(%rax)
  10:	b0 12                	mov    $0x12,%al
  12:	40 00 00             	add    %al,(%rax)
  15:	00 00                	add    %al,(%rax)
  17:	00 da                	add    %bl,%dl
  19:	12 40 00             	adc    0x0(%rax),%al
  1c:	00 00                	add    %al,(%rax)
  1e:	00 00                	add    %al,(%rax)
  20:	2e 2e 2f             	cs cs (bad) 
  23:	73 79                	jae    9e <_init-0x400f7a>
  25:	73 64                	jae    8b <_init-0x400f8d>
  27:	65 70 73             	gs jo  9d <_init-0x400f7b>
  2a:	2f                   	(bad)  
  2b:	78 38                	js     65 <_init-0x400fb3>
  2d:	36 5f                	ss pop %rdi
  2f:	36 34 2f             	ss xor $0x2f,%al
  32:	73 74                	jae    a8 <_init-0x400f70>
  34:	61                   	(bad)  
  35:	72 74                	jb     ab <_init-0x400f6d>
  37:	2e 53                	cs push %rbx
  39:	00 2f                	add    %ch,(%rdi)
  3b:	68 6f 6d 65 2f       	pushq  $0x2f656d6f
  40:	61                   	(bad)  
  41:	62                   	(bad)  
  42:	75 69                	jne    ad <_init-0x400f6b>
  44:	6c                   	insb   (%dx),%es:(%rdi)
  45:	64 2f                	fs (bad) 
  47:	72 70                	jb     b9 <_init-0x400f5f>
  49:	6d                   	insl   (%dx),%es:(%rdi)
  4a:	62                   	(bad)  
  4b:	75 69                	jne    b6 <_init-0x400f62>
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
  81:	77 00                	ja     83 <_init-0x400f95>
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
  e5:	30 68 40             	xor    %ch,0x40(%rax)
  e8:	00 00                	add    %al,(%rax)
  ea:	00 00                	add    %al,(%rax)
  ec:	00 05 47 00 00 00    	add    %al,0x47(%rip)        # 139 <_init-0x400edf>
  f2:	00 64 00 00          	add    %ah,0x0(%rax,%rax,1)
  f6:	00 02                	add    %al,(%rdx)
  f8:	00 52 00             	add    %dl,0x0(%rdx)
  fb:	00 00                	add    %al,(%rax)
  fd:	08 01                	or     %al,(%rcx)
  ff:	83 00 00             	addl   $0x0,(%rax)
 102:	00 00                	add    %al,(%rax)
 104:	00 00                	add    %al,(%rax)
 106:	00 2e                	add    %ch,(%rsi)
 108:	2e 2f                	cs (bad) 
 10a:	73 79                	jae    185 <_init-0x400e93>
 10c:	73 64                	jae    172 <_init-0x400ea6>
 10e:	65 70 73             	gs jo  184 <_init-0x400e94>
 111:	2f                   	(bad)  
 112:	78 38                	js     14c <_init-0x400ecc>
 114:	36 5f                	ss pop %rdi
 116:	36 34 2f             	ss xor $0x2f,%al
 119:	63 72 74             	movslq 0x74(%rdx),%esi
 11c:	69 2e 53 00 2f 68    	imul   $0x682f0053,(%rsi),%ebp
 122:	6f                   	outsl  %ds:(%rsi),(%dx)
 123:	6d                   	insl   (%dx),%es:(%rdi)
 124:	65 2f                	gs (bad) 
 126:	61                   	(bad)  
 127:	62                   	(bad)  
 128:	75 69                	jne    193 <_init-0x400e85>
 12a:	6c                   	insb   (%dx),%es:(%rdi)
 12b:	64 2f                	fs (bad) 
 12d:	72 70                	jb     19f <_init-0x400e79>
 12f:	6d                   	insl   (%dx),%es:(%rdi)
 130:	62                   	(bad)  
 131:	75 69                	jne    19c <_init-0x400e7c>
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
 173:	00 b0 67 40 00 00    	add    %dh,0x4067(%rax)
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
 1ad:	01 43 b0             	add    %eax,-0x50(%rbx)
 1b0:	67 40 00 00          	add    %al,(%eax)
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
 1da:	43 e3 00             	rex.XB jrcxz 1dd <_init-0x400e3b>
 1dd:	00 00                	add    %al,(%rax)
 1df:	4c 00 00             	rex.WR add %r8b,(%rax)
 1e2:	00 06                	add    %al,(%rsi)
 1e4:	59                   	pop    %rcx
 1e5:	01 00                	add    %eax,(%rax)
 1e7:	00 01                	add    %al,(%rcx)
 1e9:	43 e3 00             	rex.XB jrcxz 1ec <_init-0x400e2c>
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
 213:	0a fd                	or     %ch,%bh
 215:	67 40 00 00          	add    %al,(%eax)
 219:	00 00                	add    %al,(%rax)
 21b:	00 0b                	add    %cl,(%rbx)
 21d:	01 55 02             	add    %edx,0x2(%rbp)
 220:	7f 00                	jg     222 <_init-0x400df6>
 222:	0b 01                	or     (%rcx),%eax
 224:	54                   	push   %rsp
 225:	02 7e 00             	add    0x0(%rsi),%bh
 228:	0b 01                	or     (%rcx),%eax
 22a:	51                   	push   %rcx
 22b:	02 7d 00             	add    0x0(%rbp),%bh
 22e:	00 00                	add    %al,(%rax)
 230:	0c e3                	or     $0xe3,%al
 232:	67 40 00 00          	add    %al,(%eax)
 236:	00 00                	add    %al,(%rax)
 238:	00 50 01             	add    %dl,0x1(%rax)
 23b:	00 00                	add    %al,(%rax)
 23d:	00 0d 08 e9 00 00    	add    %cl,0xe908(%rip)        # eb4b <_init-0x3f24cd>
 243:	00 0d 08 ef 00 00    	add    %cl,0xef08(%rip)        # f151 <_init-0x3f1ec7>
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
 25d:	20 68 40             	and    %ch,0x40(%rax)
 260:	00 00                	add    %al,(%rax)
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
 279:	00 0d 08 25 01 00    	add    %cl,0x12508(%rip)        # 12787 <_init-0x3ee891>
 27f:	00 12                	add    %dl,(%rdx)
 281:	3a 01                	cmp    (%rcx),%al
 283:	00 00                	add    %al,(%rax)
 285:	13 46 00             	adc    0x0(%rsi),%eax
 288:	00 00                	add    %al,(%rax)
 28a:	13 e3                	adc    %ebx,%esp
 28c:	00 00                	add    %al,(%rax)
 28e:	00 13                	add    %dl,(%rbx)
 290:	e3 00                	jrcxz  292 <_init-0x400d86>
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
 2ca:	73 79                	jae    345 <_init-0x400cd3>
 2cc:	73 64                	jae    332 <_init-0x400ce6>
 2ce:	65 70 73             	gs jo  344 <_init-0x400cd4>
 2d1:	2f                   	(bad)  
 2d2:	78 38                	js     30c <_init-0x400d0c>
 2d4:	36 5f                	ss pop %rdi
 2d6:	36 34 2f             	ss xor $0x2f,%al
 2d9:	63 72 74             	movslq 0x74(%rdx),%esi
 2dc:	6e                   	outsb  %ds:(%rsi),(%dx)
 2dd:	2e 53                	cs push %rbx
 2df:	00 2f                	add    %ch,(%rdi)
 2e1:	68 6f 6d 65 2f       	pushq  $0x2f656d6f
 2e6:	61                   	(bad)  
 2e7:	62                   	(bad)  
 2e8:	75 69                	jne    353 <_init-0x400cc5>
 2ea:	6c                   	insb   (%dx),%es:(%rdi)
 2eb:	64 2f                	fs (bad) 
 2ed:	72 70                	jb     35f <_init-0x400cb9>
 2ef:	6d                   	insl   (%dx),%es:(%rdi)
 2f0:	62                   	(bad)  
 2f1:	75 69                	jne    35c <_init-0x400cbc>
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
  16:	01 25 0e 13 0b 03    	add    %esp,0x30b130e(%rip)        # 30b132a <_end+0x2aa9002>
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
  49:	00 05 26 00 49 13    	add    %al,0x13490026(%rip)        # 13490075 <_end+0x12e87d4d>
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
  66:	01 25 0e 13 0b 03    	add    %esp,0x30b130e(%rip)        # 30b137a <_end+0x2aa9052>
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
  99:	00 05 2e 01 3f 19    	add    %al,0x193f012e(%rip)        # 193f01cd <_end+0x18de7ea5>
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
  1e:	73 79                	jae    99 <_init-0x400f7f>
  20:	73 64                	jae    86 <_init-0x400f92>
  22:	65 70 73             	gs jo  98 <_init-0x400f80>
  25:	2f                   	(bad)  
  26:	78 38                	js     60 <_init-0x400fb8>
  28:	36 5f                	ss pop %rdi
  2a:	36 34 00             	ss xor $0x0,%al
  2d:	00 73 74             	add    %dh,0x74(%rbx)
  30:	61                   	(bad)  
  31:	72 74                	jb     a7 <_init-0x400f71>
  33:	2e 53                	cs push %rbx
  35:	00 01                	add    %al,(%rcx)
  37:	00 00                	add    %al,(%rax)
  39:	00 00                	add    %al,(%rax)
  3b:	09 02                	or     %eax,(%rdx)
  3d:	b0 12                	mov    $0x12,%al
  3f:	40 00 00             	add    %al,(%rax)
  42:	00 00                	add    %al,(%rax)
  44:	00 03                	add    %al,(%rbx)
  46:	3e 01 03             	add    %eax,%ds:(%rbx)
  49:	10 2e                	adc    %ch,(%rsi)
  4b:	42 23 3e             	rex.X and (%rsi),%edi
  4e:	4d 24 03             	rex.WRB and $0x3,%al
  51:	0e                   	(bad)  
  52:	20 75 76             	and    %dh,0x76(%rbp)
  55:	78 5b                	js     b2 <_init-0x400f66>
  57:	02 01                	add    (%rcx),%al
  59:	00 01                	add    %al,(%rcx)
  5b:	01 23                	add    %esp,(%rbx)
  5d:	00 00                	add    %al,(%rax)
  5f:	00 02                	add    %al,(%rdx)
  61:	00 1d 00 00 00 01    	add    %bl,0x1000000(%rip)        # 1000067 <_end+0x9f7d3f>
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
  a1:	73 79                	jae    11c <_init-0x400efc>
  a3:	73 64                	jae    109 <_init-0x400f0f>
  a5:	65 70 73             	gs jo  11b <_init-0x400efd>
  a8:	2f                   	(bad)  
  a9:	78 38                	js     e3 <_init-0x400f35>
  ab:	36 5f                	ss pop %rdi
  ad:	36 34 00             	ss xor $0x0,%al
  b0:	00 63 72             	add    %ah,0x72(%rbx)
  b3:	74 69                	je     11e <_init-0x400efa>
  b5:	2e 53                	cs push %rbx
  b7:	00 01                	add    %al,(%rcx)
  b9:	00 00                	add    %al,(%rax)
  bb:	00 00                	add    %al,(%rax)
  bd:	09 02                	or     %eax,(%rdx)
  bf:	18 10                	sbb    %dl,(%rax)
  c1:	40 00 00             	add    %al,(%rax)
  c4:	00 00                	add    %al,(%rax)
  c6:	00 03                	add    %al,(%rbx)
  c8:	3f                   	(bad)  
  c9:	01 4c 75 3d          	add    %ecx,0x3d(%rbp,%rsi,2)
  cd:	2f                   	(bad)  
  ce:	02 05 00 01 01 00    	add    0x10100(%rip),%al        # 101d4 <_init-0x3f0e44>
  d4:	09 02                	or     %eax,(%rdx)
  d6:	24 68                	and    $0x68,%al
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
 103:	75 73                	jne    178 <_init-0x400ea0>
 105:	72 2f                	jb     136 <_init-0x400ee2>
 107:	6c                   	insb   (%dx),%es:(%rdi)
 108:	69 62 36 34 2f 67 63 	imul   $0x63672f34,0x36(%rdx),%esp
 10f:	63 2f                	movslq (%rdi),%ebp
 111:	78 38                	js     14b <_init-0x400ecd>
 113:	36 5f                	ss pop %rdi
 115:	36 34 2d             	ss xor $0x2d,%al
 118:	73 75                	jae    18f <_init-0x400e89>
 11a:	73 65                	jae    181 <_init-0x400e97>
 11c:	2d 6c 69 6e 75       	sub    $0x756e696c,%eax
 121:	78 2f                	js     152 <_init-0x400ec6>
 123:	34 2e                	xor    $0x2e,%al
 125:	38 2f                	cmp    %ch,(%rdi)
 127:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%rsi),%ebp
 12e:	00 00                	add    %al,(%rax)
 130:	65 6c                	gs insb (%dx),%es:(%rdi)
 132:	66 2d 69 6e          	sub    $0x6e69,%ax
 136:	69 74 2e 63 00 00 00 	imul   $0x0,0x63(%rsi,%rbp,1),%esi
 13d:	00 
 13e:	73 74                	jae    1b4 <_init-0x400e64>
 140:	64 64 65 66 2e 68 00 	fs fs gs cs pushw $0x100
 147:	01 
 148:	00 00                	add    %al,(%rax)
 14a:	00 00                	add    %al,(%rax)
 14c:	09 02                	or     %eax,(%rdx)
 14e:	b0 67                	mov    $0x67,%al
 150:	40 00 00             	add    %al,(%rax)
 153:	00 00                	add    %al,(%rax)
 155:	00 03                	add    %al,(%rbx)
 157:	c3                   	retq   
 158:	00 01                	add    %al,(%rcx)
 15a:	03 12                	add    (%rdx),%edx
 15c:	08 12                	or     %dl,(%rdx)
 15e:	03 6e 74             	add    0x74(%rsi),%ebp
 161:	03 12                	add    (%rdx),%edx
 163:	20 03                	and    %al,(%rbx)
 165:	6e                   	outsb  %ds:(%rsi),(%dx)
 166:	74 03                	je     16b <_init-0x400ead>
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
 1a3:	73 79                	jae    21e <_init-0x400dfa>
 1a5:	73 64                	jae    20b <_init-0x400e0d>
 1a7:	65 70 73             	gs jo  21d <_init-0x400dfb>
 1aa:	2f                   	(bad)  
 1ab:	78 38                	js     1e5 <_init-0x400e33>
 1ad:	36 5f                	ss pop %rdi
 1af:	36 34 00             	ss xor $0x0,%al
 1b2:	00 63 72             	add    %ah,0x72(%rbx)
 1b5:	74 6e                	je     225 <_init-0x400df3>
 1b7:	2e 53                	cs push %rbx
 1b9:	00 01                	add    %al,(%rcx)
 1bb:	00 00                	add    %al,(%rax)
 1bd:	00 00                	add    %al,(%rax)
 1bf:	09 02                	or     %eax,(%rdx)
 1c1:	2d 10 40 00 00       	sub    $0x4010,%eax
 1c6:	00 00                	add    %al,(%rax)
 1c8:	00 03                	add    %al,(%rbx)
 1ca:	27                   	(bad)  
 1cb:	01 4b 02             	add    %ecx,0x2(%rbx)
 1ce:	01 00                	add    %eax,(%rax)
 1d0:	01 01                	add    %eax,(%rcx)
 1d2:	00 09                	add    %cl,(%rcx)
 1d4:	02 28                	add    (%rax),%ch
 1d6:	68 40 00 00 00       	pushq  $0x40
 1db:	00 00                	add    %al,(%rax)
 1dd:	03 2b                	add    (%rbx),%ebp
 1df:	01 4b 02             	add    %ecx,0x2(%rbx)
 1e2:	01 00                	add    %eax,(%rax)
 1e4:	01 01                	add    %eax,(%rcx)

Disassembly of section .debug_str:

0000000000000000 <.debug_str>:
   0:	6c                   	insb   (%dx),%es:(%rdi)
   1:	6f                   	outsl  %ds:(%rsi),(%dx)
   2:	6e                   	outsb  %ds:(%rsi),(%dx)
   3:	67 20 75 6e          	and    %dh,0x6e(%ebp)
   7:	73 69                	jae    72 <_init-0x400fa6>
   9:	67 6e                	outsb  %ds:(%esi),(%dx)
   b:	65 64 20 69 6e       	gs and %ch,%fs:0x6e(%rcx)
  10:	74 00                	je     12 <_init-0x401006>
  12:	75 6e                	jne    82 <_init-0x400f96>
  14:	73 69                	jae    7f <_init-0x400f99>
  16:	67 6e                	outsb  %ds:(%esi),(%dx)
  18:	65 64 20 63 68       	gs and %ah,%fs:0x68(%rbx)
  1d:	61                   	(bad)  
  1e:	72 00                	jb     20 <_init-0x400ff8>
  20:	73 68                	jae    8a <_init-0x400f8e>
  22:	6f                   	outsl  %ds:(%rsi),(%dx)
  23:	72 74                	jb     99 <_init-0x400f7f>
  25:	20 75 6e             	and    %dh,0x6e(%rbp)
  28:	73 69                	jae    93 <_init-0x400f85>
  2a:	67 6e                	outsb  %ds:(%esi),(%dx)
  2c:	65 64 20 69 6e       	gs and %ch,%fs:0x6e(%rcx)
  31:	74 00                	je     33 <_init-0x400fe5>
  33:	73 68                	jae    9d <_init-0x400f7b>
  35:	6f                   	outsl  %ds:(%rsi),(%dx)
  36:	72 74                	jb     ac <_init-0x400f6c>
  38:	20 69 6e             	and    %ch,0x6e(%rcx)
  3b:	74 00                	je     3d <_init-0x400fdb>
  3d:	5f                   	pop    %rdi
  3e:	49                   	rex.WB
  3f:	4f 5f                	rex.WRXB pop %r15
  41:	73 74                	jae    b7 <_init-0x400f61>
  43:	64 69 6e 5f 75 73 65 	imul   $0x64657375,%fs:0x5f(%rsi),%ebp
  4a:	64 
  4b:	00 2f                	add    %ch,(%rdi)
  4d:	68 6f 6d 65 2f       	pushq  $0x2f656d6f
  52:	61                   	(bad)  
  53:	62                   	(bad)  
  54:	75 69                	jne    bf <_init-0x400f59>
  56:	6c                   	insb   (%dx),%es:(%rdi)
  57:	64 2f                	fs (bad) 
  59:	72 70                	jb     cb <_init-0x400f4d>
  5b:	6d                   	insl   (%dx),%es:(%rdi)
  5c:	62                   	(bad)  
  5d:	75 69                	jne    c8 <_init-0x400f50>
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
  86:	75 6e                	jne    f6 <_init-0x400f22>
  88:	65 3d 67 65 6e 65    	gs cmp $0x656e6567,%eax
  8e:	72 69                	jb     f9 <_init-0x400f1f>
  90:	63 20                	movslq (%rax),%esp
  92:	2d 6d 61 72 63       	sub    $0x6372616d,%eax
  97:	68 3d 78 38 36       	pushq  $0x3638783d
  9c:	2d 36 34 20 2d       	sub    $0x2d203436,%eax
  a1:	67 20 2d 4f 32 20 2d 	and    %ch,0x2d20324f(%eip)        # 2d2032f7 <_end+0x2cbfafcf>
  a8:	73 74                	jae    11e <_init-0x400efa>
  aa:	64 3d 67 6e 75 39    	fs cmp $0x39756e67,%eax
  b0:	39 20                	cmp    %esp,(%rax)
  b2:	2d 66 67 6e 75       	sub    $0x756e6766,%eax
  b7:	38 39                	cmp    %bh,(%rcx)
  b9:	2d 69 6e 6c 69       	sub    $0x696c6e69,%eax
  be:	6e                   	outsb  %ds:(%rsi),(%dx)
  bf:	65 20 2d 66 61 73 79 	and    %ch,%gs:0x79736166(%rip)        # 7973622c <_end+0x7912df04>
  c6:	6e                   	outsb  %ds:(%rsi),(%dx)
  c7:	63 68 72             	movslq 0x72(%rax),%ebp
  ca:	6f                   	outsl  %ds:(%rsi),(%dx)
  cb:	6e                   	outsb  %ds:(%rsi),(%dx)
  cc:	6f                   	outsl  %ds:(%rsi),(%dx)
  cd:	75 73                	jne    142 <_init-0x400ed6>
  cf:	2d 75 6e 77 69       	sub    $0x69776e75,%eax
  d4:	6e                   	outsb  %ds:(%rsi),(%dx)
  d5:	64 2d 74 61 62 6c    	fs sub $0x6c626174,%eax
  db:	65 73 20             	gs jae fe <_init-0x400f1a>
  de:	2d 66 6d 65 72       	sub    $0x72656d66,%eax
  e3:	67 65 2d 61 6c 6c 2d 	addr32 gs sub $0x2d6c6c61,%eax
  ea:	63 6f 6e             	movslq 0x6e(%rdi),%ebp
  ed:	73 74                	jae    163 <_init-0x400eb5>
  ef:	61                   	(bad)  
  f0:	6e                   	outsb  %ds:(%rsi),(%dx)
  f1:	74 73                	je     166 <_init-0x400eb2>
  f3:	20 2d 66 6d 65 73    	and    %ch,0x73656d66(%rip)        # 73656e5f <_end+0x7304eb37>
  f9:	73 61                	jae    15c <_init-0x400ebc>
  fb:	67 65 2d 6c 65 6e 67 	addr32 gs sub $0x676e656c,%eax
 102:	74 68                	je     16c <_init-0x400eac>
 104:	3d 30 20 2d 66       	cmp    $0x662d2030,%eax
 109:	72 6f                	jb     17a <_init-0x400e9e>
 10b:	75 6e                	jne    17b <_init-0x400e9d>
 10d:	64 69 6e 67 2d 6d 61 	imul   $0x74616d2d,%fs:0x67(%rsi),%ebp
 114:	74 
 115:	68 20 2d 66 75       	pushq  $0x75662d20
 11a:	6e                   	outsb  %ds:(%rsi),(%dx)
 11b:	77 69                	ja     186 <_init-0x400e92>
 11d:	6e                   	outsb  %ds:(%rsi),(%dx)
 11e:	64 2d 74 61 62 6c    	fs sub $0x6c626174,%eax
 124:	65 73 20             	gs jae 147 <_init-0x400ed1>
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
 147:	74 00                	je     149 <_init-0x400ecf>
 149:	73 69                	jae    1b4 <_init-0x400e64>
 14b:	7a 65                	jp     1b2 <_init-0x400e66>
 14d:	74 79                	je     1c8 <_init-0x400e50>
 14f:	70 65                	jo     1b6 <_init-0x400e62>
 151:	00 73 69             	add    %dh,0x69(%rbx)
 154:	7a 65                	jp     1bb <_init-0x400e5d>
 156:	5f                   	pop    %rdi
 157:	74 00                	je     159 <_init-0x400ebf>
 159:	65 6e                	outsb  %gs:(%rsi),(%dx)
 15b:	76 70                	jbe    1cd <_init-0x400e4b>
 15d:	00 61 72             	add    %ah,0x72(%rcx)
 160:	67 76 00             	addr32 jbe 163 <_init-0x400eb5>
 163:	61                   	(bad)  
 164:	72 67                	jb     1cd <_init-0x400e4b>
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
 190:	73 74                	jae    206 <_init-0x400e12>
 192:	61                   	(bad)  
 193:	72 74                	jb     209 <_init-0x400e0f>
 195:	00 73 69             	add    %dh,0x69(%rbx)
 198:	7a 65                	jp     1ff <_init-0x400e19>
 19a:	00 5f 5f             	add    %bl,0x5f(%rdi)
 19d:	69 6e 69 74 5f 61 72 	imul   $0x72615f74,0x69(%rsi),%ebp
 1a4:	72 61                	jb     207 <_init-0x400e11>
 1a6:	79 5f                	jns    207 <_init-0x400e11>
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
 1cb:	75 6e                	jne    23b <_init-0x400ddd>
 1cd:	65 3d 67 65 6e 65    	gs cmp $0x656e6567,%eax
 1d3:	72 69                	jb     23e <_init-0x400dda>
 1d5:	63 20                	movslq (%rax),%esp
 1d7:	2d 6d 61 72 63       	sub    $0x6372616d,%eax
 1dc:	68 3d 78 38 36       	pushq  $0x3638783d
 1e1:	2d 36 34 20 2d       	sub    $0x2d203436,%eax
 1e6:	67 20 2d 4f 32 20 2d 	and    %ch,0x2d20324f(%eip)        # 2d20343c <_end+0x2cbfb114>
 1ed:	73 74                	jae    263 <_init-0x400db5>
 1ef:	64 3d 67 6e 75 39    	fs cmp $0x39756e67,%eax
 1f5:	39 20                	cmp    %esp,(%rax)
 1f7:	2d 66 67 6e 75       	sub    $0x756e6766,%eax
 1fc:	38 39                	cmp    %bh,(%rcx)
 1fe:	2d 69 6e 6c 69       	sub    $0x696c6e69,%eax
 203:	6e                   	outsb  %ds:(%rsi),(%dx)
 204:	65 20 2d 66 61 73 79 	and    %ch,%gs:0x79736166(%rip)        # 79736371 <_end+0x7912e049>
 20b:	6e                   	outsb  %ds:(%rsi),(%dx)
 20c:	63 68 72             	movslq 0x72(%rax),%ebp
 20f:	6f                   	outsl  %ds:(%rsi),(%dx)
 210:	6e                   	outsb  %ds:(%rsi),(%dx)
 211:	6f                   	outsl  %ds:(%rsi),(%dx)
 212:	75 73                	jne    287 <_init-0x400d91>
 214:	2d 75 6e 77 69       	sub    $0x69776e75,%eax
 219:	6e                   	outsb  %ds:(%rsi),(%dx)
 21a:	64 2d 74 61 62 6c    	fs sub $0x6c626174,%eax
 220:	65 73 20             	gs jae 243 <_init-0x400dd5>
 223:	2d 66 6d 65 72       	sub    $0x72656d66,%eax
 228:	67 65 2d 61 6c 6c 2d 	addr32 gs sub $0x2d6c6c61,%eax
 22f:	63 6f 6e             	movslq 0x6e(%rdi),%ebp
 232:	73 74                	jae    2a8 <_init-0x400d70>
 234:	61                   	(bad)  
 235:	6e                   	outsb  %ds:(%rsi),(%dx)
 236:	74 73                	je     2ab <_init-0x400d6d>
 238:	20 2d 66 6d 65 73    	and    %ch,0x73656d66(%rip)        # 73656fa4 <_end+0x7304ec7c>
 23e:	73 61                	jae    2a1 <_init-0x400d77>
 240:	67 65 2d 6c 65 6e 67 	addr32 gs sub $0x676e656c,%eax
 247:	74 68                	je     2b1 <_init-0x400d67>
 249:	3d 30 20 2d 66       	cmp    $0x662d2030,%eax
 24e:	72 6f                	jb     2bf <_init-0x400d59>
 250:	75 6e                	jne    2c0 <_init-0x400d58>
 252:	64 69 6e 67 2d 6d 61 	imul   $0x74616d2d,%fs:0x67(%rsi),%ebp
 259:	74 
 25a:	68 20 2d 66 75       	pushq  $0x75662d20
 25f:	6e                   	outsb  %ds:(%rsi),(%dx)
 260:	77 69                	ja     2cb <_init-0x400d4d>
 262:	6e                   	outsb  %ds:(%rsi),(%dx)
 263:	64 2d 74 61 62 6c    	fs sub $0x6c626174,%eax
 269:	65 73 20             	gs jae 28c <_init-0x400d8c>
 26c:	2d 66 50 49 43       	sub    $0x43495066,%eax
 271:	20 2d 66 74 6c 73    	and    %ch,0x736c7466(%rip)        # 736c76dd <_end+0x730bf3b5>
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
  67:	62                   	(bad)  
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
   f:	00 18                	add    %bl,(%rax)
  11:	10 40 00             	adc    %al,0x0(%rax)
  14:	00 00                	add    %al,(%rax)
  16:	00 00                	add    %al,(%rax)
  18:	2d 10 40 00 00       	sub    $0x4010,%eax
  1d:	00 00                	add    %al,(%rax)
  1f:	00 24 68             	add    %ah,(%rax,%rbp,2)
  22:	40 00 00             	add    %al,(%rax)
  25:	00 00                	add    %al,(%rax)
  27:	00 28                	add    %ch,(%rax)
  29:	68 40 00 00 00       	pushq  $0x40
	...
  3e:	00 00                	add    %al,(%rax)
  40:	11 00                	adc    %eax,(%rax)
  42:	00 00                	add    %al,(%rax)
  44:	00 00                	add    %al,(%rax)
  46:	00 00                	add    %al,(%rax)
  48:	18 00                	sbb    %al,(%rax)
  4a:	00 00                	add    %al,(%rax)
  4c:	00 00                	add    %al,(%rax)
  4e:	00 00                	add    %al,(%rax)
  50:	19 00                	sbb    %eax,(%rax)
  52:	00 00                	add    %al,(%rax)
  54:	00 00                	add    %al,(%rax)
  56:	00 00                	add    %al,(%rax)
  58:	20 00                	and    %al,(%rax)
  5a:	00 00                	add    %al,(%rax)
  5c:	00 00                	add    %al,(%rax)
  5e:	00 00                	add    %al,(%rax)
  60:	21 00                	and    %eax,(%rax)
  62:	00 00                	add    %al,(%rax)
  64:	00 00                	add    %al,(%rax)
  66:	00 00                	add    %al,(%rax)
  68:	2a 00                	sub    (%rax),%al
  6a:	00 00                	add    %al,(%rax)
  6c:	00 00                	add    %al,(%rax)
  6e:	00 00                	add    %al,(%rax)
  70:	33 00                	xor    (%rax),%eax
  72:	00 00                	add    %al,(%rax)
  74:	00 00                	add    %al,(%rax)
  76:	00 00                	add    %al,(%rax)
  78:	56                   	push   %rsi
	...
  8d:	00 00                	add    %al,(%rax)
  8f:	00 ff                	add    %bh,%bh
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
  9f:	00 2d 10 40 00 00    	add    %ch,0x4010(%rip)        # 40b5 <_init-0x3fcf63>
  a5:	00 00                	add    %al,(%rax)
  a7:	00 32                	add    %dh,(%rdx)
  a9:	10 40 00             	adc    %al,0x0(%rax)
  ac:	00 00                	add    %al,(%rax)
  ae:	00 00                	add    %al,(%rax)
  b0:	28 68 40             	sub    %ch,0x40(%rax)
  b3:	00 00                	add    %al,(%rax)
  b5:	00 00                	add    %al,(%rax)
  b7:	00 2d 68 40 00 00    	add    %ch,0x4068(%rip)        # 4125 <_init-0x3fcef3>
	...
