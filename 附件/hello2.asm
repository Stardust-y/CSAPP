
hello：     文件格式 elf64-x86-64


Disassembly of section .init:

0000000000400430 <_init>:
  400430:	48 83 ec 08          	sub    $0x8,%rsp
  400434:	48 8b 05 75 04 20 00 	mov    0x200475(%rip),%rax        # 6008b0 <_DYNAMIC+0x190>
  40043b:	48 85 c0             	test   %rax,%rax
  40043e:	74 05                	je     400445 <_init+0x15>
  400440:	e8 7b 00 00 00       	callq  4004c0 <sleep@plt+0x10>
  400445:	48 83 c4 08          	add    $0x8,%rsp
  400449:	c3                   	retq   

Disassembly of section .plt:

0000000000400450 <puts@plt-0x10>:
  400450:	ff 35 6a 04 20 00    	pushq  0x20046a(%rip)        # 6008c0 <_GLOBAL_OFFSET_TABLE_+0x8>
  400456:	ff 25 6c 04 20 00    	jmpq   *0x20046c(%rip)        # 6008c8 <_GLOBAL_OFFSET_TABLE_+0x10>
  40045c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400460 <puts@plt>:
  400460:	ff 25 6a 04 20 00    	jmpq   *0x20046a(%rip)        # 6008d0 <_GLOBAL_OFFSET_TABLE_+0x18>
  400466:	68 00 00 00 00       	pushq  $0x0
  40046b:	e9 e0 ff ff ff       	jmpq   400450 <_init+0x20>

0000000000400470 <printf@plt>:
  400470:	ff 25 62 04 20 00    	jmpq   *0x200462(%rip)        # 6008d8 <_GLOBAL_OFFSET_TABLE_+0x20>
  400476:	68 01 00 00 00       	pushq  $0x1
  40047b:	e9 d0 ff ff ff       	jmpq   400450 <_init+0x20>

0000000000400480 <__libc_start_main@plt>:
  400480:	ff 25 5a 04 20 00    	jmpq   *0x20045a(%rip)        # 6008e0 <_GLOBAL_OFFSET_TABLE_+0x28>
  400486:	68 02 00 00 00       	pushq  $0x2
  40048b:	e9 c0 ff ff ff       	jmpq   400450 <_init+0x20>

0000000000400490 <getchar@plt>:
  400490:	ff 25 52 04 20 00    	jmpq   *0x200452(%rip)        # 6008e8 <_GLOBAL_OFFSET_TABLE_+0x30>
  400496:	68 03 00 00 00       	pushq  $0x3
  40049b:	e9 b0 ff ff ff       	jmpq   400450 <_init+0x20>

00000000004004a0 <exit@plt>:
  4004a0:	ff 25 4a 04 20 00    	jmpq   *0x20044a(%rip)        # 6008f0 <_GLOBAL_OFFSET_TABLE_+0x38>
  4004a6:	68 04 00 00 00       	pushq  $0x4
  4004ab:	e9 a0 ff ff ff       	jmpq   400450 <_init+0x20>

00000000004004b0 <sleep@plt>:
  4004b0:	ff 25 42 04 20 00    	jmpq   *0x200442(%rip)        # 6008f8 <_GLOBAL_OFFSET_TABLE_+0x40>
  4004b6:	68 05 00 00 00       	pushq  $0x5
  4004bb:	e9 90 ff ff ff       	jmpq   400450 <_init+0x20>

Disassembly of section .plt.got:

00000000004004c0 <.plt.got>:
  4004c0:	ff 25 ea 03 20 00    	jmpq   *0x2003ea(%rip)        # 6008b0 <_DYNAMIC+0x190>
  4004c6:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

00000000004004d0 <_start>:
  4004d0:	31 ed                	xor    %ebp,%ebp
  4004d2:	49 89 d1             	mov    %rdx,%r9
  4004d5:	5e                   	pop    %rsi
  4004d6:	48 89 e2             	mov    %rsp,%rdx
  4004d9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  4004dd:	50                   	push   %rax
  4004de:	54                   	push   %rsp
  4004df:	49 c7 c0 f0 05 40 00 	mov    $0x4005f0,%r8
  4004e6:	48 c7 c1 80 05 40 00 	mov    $0x400580,%rcx
  4004ed:	48 c7 c7 fa 04 40 00 	mov    $0x4004fa,%rdi
  4004f4:	e8 87 ff ff ff       	callq  400480 <__libc_start_main@plt>
  4004f9:	f4                   	hlt    

00000000004004fa <main>:
  4004fa:	55                   	push   %rbp
  4004fb:	48 89 e5             	mov    %rsp,%rbp
  4004fe:	48 83 ec 20          	sub    $0x20,%rsp
  400502:	89 7d ec             	mov    %edi,-0x14(%rbp)
  400505:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  400509:	83 7d ec 04          	cmpl   $0x4,-0x14(%rbp)
  40050d:	74 14                	je     400523 <main+0x29>
  40050f:	bf 04 06 40 00       	mov    $0x400604,%edi
  400514:	e8 47 ff ff ff       	callq  400460 <puts@plt>
  400519:	bf 01 00 00 00       	mov    $0x1,%edi
  40051e:	e8 7d ff ff ff       	callq  4004a0 <exit@plt>
  400523:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  40052a:	eb 39                	jmp    400565 <main+0x6b>
  40052c:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  400530:	48 83 c0 10          	add    $0x10,%rax
  400534:	48 8b 10             	mov    (%rax),%rdx
  400537:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  40053b:	48 83 c0 08          	add    $0x8,%rax
  40053f:	48 8b 00             	mov    (%rax),%rax
  400542:	48 89 c6             	mov    %rax,%rsi
  400545:	bf 22 06 40 00       	mov    $0x400622,%edi
  40054a:	b8 00 00 00 00       	mov    $0x0,%eax
  40054f:	e8 1c ff ff ff       	callq  400470 <printf@plt>
  400554:	8b 05 aa 03 20 00    	mov    0x2003aa(%rip),%eax        # 600904 <sleepsecs>
  40055a:	89 c7                	mov    %eax,%edi
  40055c:	e8 4f ff ff ff       	callq  4004b0 <sleep@plt>
  400561:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
  400565:	83 7d fc 07          	cmpl   $0x7,-0x4(%rbp)
  400569:	7e c1                	jle    40052c <main+0x32>
  40056b:	e8 20 ff ff ff       	callq  400490 <getchar@plt>
  400570:	b8 00 00 00 00       	mov    $0x0,%eax
  400575:	c9                   	leaveq 
  400576:	c3                   	retq   
  400577:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40057e:	00 00 

0000000000400580 <__libc_csu_init>:
  400580:	41 57                	push   %r15
  400582:	41 56                	push   %r14
  400584:	41 89 ff             	mov    %edi,%r15d
  400587:	41 55                	push   %r13
  400589:	41 54                	push   %r12
  40058b:	4c 8d 25 8e 01 20 00 	lea    0x20018e(%rip),%r12        # 600720 <_DYNAMIC>
  400592:	55                   	push   %rbp
  400593:	48 8d 2d 86 01 20 00 	lea    0x200186(%rip),%rbp        # 600720 <_DYNAMIC>
  40059a:	53                   	push   %rbx
  40059b:	49 89 f6             	mov    %rsi,%r14
  40059e:	49 89 d5             	mov    %rdx,%r13
  4005a1:	4c 29 e5             	sub    %r12,%rbp
  4005a4:	48 83 ec 08          	sub    $0x8,%rsp
  4005a8:	48 c1 fd 03          	sar    $0x3,%rbp
  4005ac:	e8 7f fe ff ff       	callq  400430 <_init>
  4005b1:	48 85 ed             	test   %rbp,%rbp
  4005b4:	74 20                	je     4005d6 <__libc_csu_init+0x56>
  4005b6:	31 db                	xor    %ebx,%ebx
  4005b8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4005bf:	00 
  4005c0:	4c 89 ea             	mov    %r13,%rdx
  4005c3:	4c 89 f6             	mov    %r14,%rsi
  4005c6:	44 89 ff             	mov    %r15d,%edi
  4005c9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  4005cd:	48 83 c3 01          	add    $0x1,%rbx
  4005d1:	48 39 eb             	cmp    %rbp,%rbx
  4005d4:	75 ea                	jne    4005c0 <__libc_csu_init+0x40>
  4005d6:	48 83 c4 08          	add    $0x8,%rsp
  4005da:	5b                   	pop    %rbx
  4005db:	5d                   	pop    %rbp
  4005dc:	41 5c                	pop    %r12
  4005de:	41 5d                	pop    %r13
  4005e0:	41 5e                	pop    %r14
  4005e2:	41 5f                	pop    %r15
  4005e4:	c3                   	retq   
  4005e5:	90                   	nop
  4005e6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4005ed:	00 00 00 

00000000004005f0 <__libc_csu_fini>:
  4005f0:	f3 c3                	repz retq 

Disassembly of section .fini:

00000000004005f4 <_fini>:
  4005f4:	48 83 ec 08          	sub    $0x8,%rsp
  4005f8:	48 83 c4 08          	add    $0x8,%rsp
  4005fc:	c3                   	retq   
