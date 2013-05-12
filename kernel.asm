
kernel:     file format elf32-i386


Disassembly of section .text:

c0100000 <memcpy>:
c0100000:	55                   	push   %ebp
c0100001:	89 e5                	mov    %esp,%ebp
c0100003:	56                   	push   %esi
c0100004:	8b 45 08             	mov    0x8(%ebp),%eax
c0100007:	53                   	push   %ebx
c0100008:	8b 5d 10             	mov    0x10(%ebp),%ebx
c010000b:	8b 75 0c             	mov    0xc(%ebp),%esi
c010000e:	85 db                	test   %ebx,%ebx
c0100010:	74 14                	je     c0100026 <memcpy+0x26>
c0100012:	31 d2                	xor    %edx,%edx
c0100014:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0100018:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
c010001c:	88 0c 10             	mov    %cl,(%eax,%edx,1)
c010001f:	83 c2 01             	add    $0x1,%edx
c0100022:	39 da                	cmp    %ebx,%edx
c0100024:	75 f2                	jne    c0100018 <memcpy+0x18>
c0100026:	5b                   	pop    %ebx
c0100027:	5e                   	pop    %esi
c0100028:	5d                   	pop    %ebp
c0100029:	c3                   	ret    
c010002a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0100030 <memset>:
c0100030:	55                   	push   %ebp
c0100031:	89 e5                	mov    %esp,%ebp
c0100033:	8b 55 10             	mov    0x10(%ebp),%edx
c0100036:	53                   	push   %ebx
c0100037:	8b 45 08             	mov    0x8(%ebp),%eax
c010003a:	85 d2                	test   %edx,%edx
c010003c:	74 14                	je     c0100052 <memset+0x22>
c010003e:	0f b6 5d 0c          	movzbl 0xc(%ebp),%ebx
c0100042:	89 c1                	mov    %eax,%ecx
c0100044:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0100048:	88 19                	mov    %bl,(%ecx)
c010004a:	83 c1 01             	add    $0x1,%ecx
c010004d:	83 ea 01             	sub    $0x1,%edx
c0100050:	75 f6                	jne    c0100048 <memset+0x18>
c0100052:	5b                   	pop    %ebx
c0100053:	5d                   	pop    %ebp
c0100054:	c3                   	ret    
c0100055:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0100059:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0100060 <utoa_buf>:
c0100060:	55                   	push   %ebp
c0100061:	89 e5                	mov    %esp,%ebp
c0100063:	56                   	push   %esi
c0100064:	53                   	push   %ebx
c0100065:	83 ec 20             	sub    $0x20,%esp
c0100068:	8b 5d 10             	mov    0x10(%ebp),%ebx
c010006b:	8b 45 08             	mov    0x8(%ebp),%eax
c010006e:	8b 75 0c             	mov    0xc(%ebp),%esi
c0100071:	8d 53 fe             	lea    -0x2(%ebx),%edx
c0100074:	83 fa 0e             	cmp    $0xe,%edx
c0100077:	77 27                	ja     c01000a0 <utoa_buf+0x40>
c0100079:	8d 4e 22             	lea    0x22(%esi),%ecx
c010007c:	c6 46 22 00          	movb   $0x0,0x22(%esi)
c0100080:	31 d2                	xor    %edx,%edx
c0100082:	83 e9 01             	sub    $0x1,%ecx
c0100085:	f7 f3                	div    %ebx
c0100087:	0f b6 92 29 18 10 c0 	movzbl -0x3fefe7d7(%edx),%edx
c010008e:	85 c0                	test   %eax,%eax
c0100090:	88 11                	mov    %dl,(%ecx)
c0100092:	75 ec                	jne    c0100080 <utoa_buf+0x20>
c0100094:	83 c4 20             	add    $0x20,%esp
c0100097:	89 c8                	mov    %ecx,%eax
c0100099:	5b                   	pop    %ebx
c010009a:	5e                   	pop    %esi
c010009b:	5d                   	pop    %ebp
c010009c:	c3                   	ret    
c010009d:	8d 76 00             	lea    0x0(%esi),%esi
c01000a0:	89 45 f4             	mov    %eax,-0xc(%ebp)
c01000a3:	c7 44 24 04 2b 00 00 	movl   $0x2b,0x4(%esp)
c01000aa:	00 
c01000ab:	c7 04 24 18 18 10 c0 	movl   $0xc0101818,(%esp)
c01000b2:	e8 f9 00 00 00       	call   c01001b0 <abort>
c01000b7:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01000ba:	eb bd                	jmp    c0100079 <utoa_buf+0x19>
c01000bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

c01000c0 <itoa_buf>:
c01000c0:	55                   	push   %ebp
c01000c1:	89 e5                	mov    %esp,%ebp
c01000c3:	83 ec 18             	sub    $0x18,%esp
c01000c6:	8b 45 08             	mov    0x8(%ebp),%eax
c01000c9:	8b 4d 0c             	mov    0xc(%ebp),%ecx
c01000cc:	8b 55 10             	mov    0x10(%ebp),%edx
c01000cf:	83 c1 01             	add    $0x1,%ecx
c01000d2:	85 c0                	test   %eax,%eax
c01000d4:	78 12                	js     c01000e8 <itoa_buf+0x28>
c01000d6:	89 55 10             	mov    %edx,0x10(%ebp)
c01000d9:	89 4d 0c             	mov    %ecx,0xc(%ebp)
c01000dc:	89 45 08             	mov    %eax,0x8(%ebp)
c01000df:	c9                   	leave  
c01000e0:	e9 7b ff ff ff       	jmp    c0100060 <utoa_buf>
c01000e5:	8d 76 00             	lea    0x0(%esi),%esi
c01000e8:	f7 d8                	neg    %eax
c01000ea:	89 54 24 08          	mov    %edx,0x8(%esp)
c01000ee:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c01000f2:	89 04 24             	mov    %eax,(%esp)
c01000f5:	e8 66 ff ff ff       	call   c0100060 <utoa_buf>
c01000fa:	89 c2                	mov    %eax,%edx
c01000fc:	c6 42 ff 2d          	movb   $0x2d,-0x1(%edx)
c0100100:	8d 40 ff             	lea    -0x1(%eax),%eax
c0100103:	c9                   	leave  
c0100104:	c3                   	ret    
c0100105:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0100109:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0100110 <toupper>:
c0100110:	55                   	push   %ebp
c0100111:	89 e5                	mov    %esp,%ebp
c0100113:	8b 45 08             	mov    0x8(%ebp),%eax
c0100116:	5d                   	pop    %ebp
c0100117:	8d 48 9f             	lea    -0x61(%eax),%ecx
c010011a:	8d 50 e0             	lea    -0x20(%eax),%edx
c010011d:	83 f9 19             	cmp    $0x19,%ecx
c0100120:	0f 46 c2             	cmovbe %edx,%eax
c0100123:	c3                   	ret    
c0100124:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c010012a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

c0100130 <tolower>:
c0100130:	55                   	push   %ebp
c0100131:	89 e5                	mov    %esp,%ebp
c0100133:	8b 45 08             	mov    0x8(%ebp),%eax
c0100136:	5d                   	pop    %ebp
c0100137:	8d 48 bf             	lea    -0x41(%eax),%ecx
c010013a:	8d 50 20             	lea    0x20(%eax),%edx
c010013d:	83 f9 19             	cmp    $0x19,%ecx
c0100140:	0f 46 c2             	cmovbe %edx,%eax
c0100143:	c3                   	ret    
c0100144:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c010014a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

c0100150 <itoa>:
c0100150:	55                   	push   %ebp
c0100151:	89 e5                	mov    %esp,%ebp
c0100153:	83 ec 18             	sub    $0x18,%esp
c0100156:	8b 45 0c             	mov    0xc(%ebp),%eax
c0100159:	c7 44 24 04 00 30 10 	movl   $0xc0103000,0x4(%esp)
c0100160:	c0 
c0100161:	89 44 24 08          	mov    %eax,0x8(%esp)
c0100165:	8b 45 08             	mov    0x8(%ebp),%eax
c0100168:	89 04 24             	mov    %eax,(%esp)
c010016b:	e8 50 ff ff ff       	call   c01000c0 <itoa_buf>
c0100170:	c9                   	leave  
c0100171:	c3                   	ret    
c0100172:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0100179:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0100180 <utoa>:
c0100180:	55                   	push   %ebp
c0100181:	89 e5                	mov    %esp,%ebp
c0100183:	83 ec 18             	sub    $0x18,%esp
c0100186:	8b 45 0c             	mov    0xc(%ebp),%eax
c0100189:	c7 44 24 04 40 30 10 	movl   $0xc0103040,0x4(%esp)
c0100190:	c0 
c0100191:	89 44 24 08          	mov    %eax,0x8(%esp)
c0100195:	8b 45 08             	mov    0x8(%ebp),%eax
c0100198:	89 04 24             	mov    %eax,(%esp)
c010019b:	e8 c0 fe ff ff       	call   c0100060 <utoa_buf>
c01001a0:	c9                   	leave  
c01001a1:	c3                   	ret    
c01001a2:	90                   	nop
c01001a3:	90                   	nop
c01001a4:	90                   	nop
c01001a5:	90                   	nop
c01001a6:	90                   	nop
c01001a7:	90                   	nop
c01001a8:	90                   	nop
c01001a9:	90                   	nop
c01001aa:	90                   	nop
c01001ab:	90                   	nop
c01001ac:	90                   	nop
c01001ad:	90                   	nop
c01001ae:	90                   	nop
c01001af:	90                   	nop

c01001b0 <abort>:
c01001b0:	55                   	push   %ebp
c01001b1:	89 e5                	mov    %esp,%ebp
c01001b3:	83 ec 18             	sub    $0x18,%esp
c01001b6:	fa                   	cli    
c01001b7:	8b 45 0c             	mov    0xc(%ebp),%eax
c01001ba:	c7 04 24 3c 18 10 c0 	movl   $0xc010183c,(%esp)
c01001c1:	89 44 24 08          	mov    %eax,0x8(%esp)
c01001c5:	8b 45 08             	mov    0x8(%ebp),%eax
c01001c8:	89 44 24 04          	mov    %eax,0x4(%esp)
c01001cc:	e8 cf 07 00 00       	call   c01009a0 <printk>
c01001d1:	f4                   	hlt    
c01001d2:	c9                   	leave  
c01001d3:	c3                   	ret    
c01001d4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c01001da:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

c01001e0 <panic>:
c01001e0:	55                   	push   %ebp
c01001e1:	89 e5                	mov    %esp,%ebp
c01001e3:	83 ec 18             	sub    $0x18,%esp
c01001e6:	fa                   	cli    
c01001e7:	8b 45 08             	mov    0x8(%ebp),%eax
c01001ea:	c7 04 24 68 18 10 c0 	movl   $0xc0101868,(%esp)
c01001f1:	89 44 24 04          	mov    %eax,0x4(%esp)
c01001f5:	e8 a6 07 00 00       	call   c01009a0 <printk>
c01001fa:	f4                   	hlt    
c01001fb:	c9                   	leave  
c01001fc:	c3                   	ret    
c01001fd:	90                   	nop
c01001fe:	90                   	nop
c01001ff:	90                   	nop

c0100200 <lock>:
c0100200:	55                   	push   %ebp
c0100201:	89 e5                	mov    %esp,%ebp
c0100203:	83 ec 28             	sub    $0x28,%esp
c0100206:	a1 0c 31 10 c0       	mov    0xc010310c,%eax
c010020b:	8b 50 14             	mov    0x14(%eax),%edx
c010020e:	85 d2                	test   %edx,%edx
c0100210:	78 56                	js     c0100268 <lock+0x68>
c0100212:	83 c2 01             	add    $0x1,%edx
c0100215:	83 fa 01             	cmp    $0x1,%edx
c0100218:	89 50 14             	mov    %edx,0x14(%eax)
c010021b:	74 2b                	je     c0100248 <lock+0x48>
c010021d:	9c                   	pushf  
c010021e:	58                   	pop    %eax
c010021f:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0100222:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0100225:	f6 c4 02             	test   $0x2,%ah
c0100228:	75 06                	jne    c0100230 <lock+0x30>
c010022a:	c9                   	leave  
c010022b:	c3                   	ret    
c010022c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0100230:	c7 44 24 04 21 00 00 	movl   $0x21,0x4(%esp)
c0100237:	00 
c0100238:	c7 04 24 8c 18 10 c0 	movl   $0xc010188c,(%esp)
c010023f:	e8 6c ff ff ff       	call   c01001b0 <abort>
c0100244:	c9                   	leave  
c0100245:	c3                   	ret    
c0100246:	66 90                	xchg   %ax,%ax
c0100248:	9c                   	pushf  
c0100249:	5a                   	pop    %edx
c010024a:	89 55 f4             	mov    %edx,-0xc(%ebp)
c010024d:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0100250:	80 e6 02             	and    $0x2,%dh
c0100253:	74 0b                	je     c0100260 <lock+0x60>
c0100255:	c6 40 1c 01          	movb   $0x1,0x1c(%eax)
c0100259:	fa                   	cli    
c010025a:	c9                   	leave  
c010025b:	c3                   	ret    
c010025c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0100260:	c6 40 1c 00          	movb   $0x0,0x1c(%eax)
c0100264:	c9                   	leave  
c0100265:	c3                   	ret    
c0100266:	66 90                	xchg   %ax,%ax
c0100268:	c7 44 24 04 17 00 00 	movl   $0x17,0x4(%esp)
c010026f:	00 
c0100270:	c7 04 24 8c 18 10 c0 	movl   $0xc010188c,(%esp)
c0100277:	e8 34 ff ff ff       	call   c01001b0 <abort>
c010027c:	a1 0c 31 10 c0       	mov    0xc010310c,%eax
c0100281:	8b 50 14             	mov    0x14(%eax),%edx
c0100284:	eb 8c                	jmp    c0100212 <lock+0x12>
c0100286:	8d 76 00             	lea    0x0(%esi),%esi
c0100289:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0100290 <unlock>:
c0100290:	55                   	push   %ebp
c0100291:	89 e5                	mov    %esp,%ebp
c0100293:	83 ec 18             	sub    $0x18,%esp
c0100296:	a1 0c 31 10 c0       	mov    0xc010310c,%eax
c010029b:	8b 50 14             	mov    0x14(%eax),%edx
c010029e:	85 d2                	test   %edx,%edx
c01002a0:	7e 26                	jle    c01002c8 <unlock+0x38>
c01002a2:	83 ea 01             	sub    $0x1,%edx
c01002a5:	85 d2                	test   %edx,%edx
c01002a7:	89 50 14             	mov    %edx,0x14(%eax)
c01002aa:	75 06                	jne    c01002b2 <unlock+0x22>
c01002ac:	80 78 1c 01          	cmpb   $0x1,0x1c(%eax)
c01002b0:	74 06                	je     c01002b8 <unlock+0x28>
c01002b2:	c9                   	leave  
c01002b3:	c3                   	ret    
c01002b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c01002b8:	fb                   	sti    
c01002b9:	c9                   	leave  
c01002ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c01002c0:	c3                   	ret    
c01002c1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c01002c8:	c7 44 24 04 26 00 00 	movl   $0x26,0x4(%esp)
c01002cf:	00 
c01002d0:	c7 04 24 8c 18 10 c0 	movl   $0xc010188c,(%esp)
c01002d7:	e8 d4 fe ff ff       	call   c01001b0 <abort>
c01002dc:	a1 0c 31 10 c0       	mov    0xc010310c,%eax
c01002e1:	8b 50 14             	mov    0x14(%eax),%edx
c01002e4:	eb bc                	jmp    c01002a2 <unlock+0x12>
c01002e6:	8d 76 00             	lea    0x0(%esi),%esi
c01002e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c01002f0 <new_sem>:
c01002f0:	55                   	push   %ebp
c01002f1:	89 e5                	mov    %esp,%ebp
c01002f3:	8b 45 08             	mov    0x8(%ebp),%eax
c01002f6:	8b 55 0c             	mov    0xc(%ebp),%edx
c01002f9:	89 10                	mov    %edx,(%eax)
c01002fb:	8d 50 04             	lea    0x4(%eax),%edx
c01002fe:	89 50 08             	mov    %edx,0x8(%eax)
c0100301:	89 50 04             	mov    %edx,0x4(%eax)
c0100304:	5d                   	pop    %ebp
c0100305:	c3                   	ret    
c0100306:	8d 76 00             	lea    0x0(%esi),%esi
c0100309:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0100310 <P>:
c0100310:	55                   	push   %ebp
c0100311:	89 e5                	mov    %esp,%ebp
c0100313:	83 ec 38             	sub    $0x38,%esp
c0100316:	89 5d f4             	mov    %ebx,-0xc(%ebp)
c0100319:	8b 5d 08             	mov    0x8(%ebp),%ebx
c010031c:	89 75 f8             	mov    %esi,-0x8(%ebp)
c010031f:	89 7d fc             	mov    %edi,-0x4(%ebp)
c0100322:	e8 d9 fe ff ff       	call   c0100200 <lock>
c0100327:	8b 03                	mov    (%ebx),%eax
c0100329:	83 e8 01             	sub    $0x1,%eax
c010032c:	85 c0                	test   %eax,%eax
c010032e:	89 03                	mov    %eax,(%ebx)
c0100330:	78 16                	js     c0100348 <P+0x38>
c0100332:	8b 5d f4             	mov    -0xc(%ebp),%ebx
c0100335:	8b 75 f8             	mov    -0x8(%ebp),%esi
c0100338:	8b 7d fc             	mov    -0x4(%ebp),%edi
c010033b:	89 ec                	mov    %ebp,%esp
c010033d:	5d                   	pop    %ebp
c010033e:	e9 4d ff ff ff       	jmp    c0100290 <unlock>
c0100343:	90                   	nop
c0100344:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0100348:	8b 35 0c 31 10 c0    	mov    0xc010310c,%esi
c010034e:	8d 53 04             	lea    0x4(%ebx),%edx
c0100351:	8b 7b 04             	mov    0x4(%ebx),%edi
c0100354:	89 f0                	mov    %esi,%eax
c0100356:	83 c0 0c             	add    $0xc,%eax
c0100359:	74 1d                	je     c0100378 <P+0x68>
c010035b:	85 ff                	test   %edi,%edi
c010035d:	89 7e 0c             	mov    %edi,0xc(%esi)
c0100360:	89 56 10             	mov    %edx,0x10(%esi)
c0100363:	74 03                	je     c0100368 <P+0x58>
c0100365:	89 47 04             	mov    %eax,0x4(%edi)
c0100368:	89 43 04             	mov    %eax,0x4(%ebx)
c010036b:	e8 c0 13 00 00       	call   c0101730 <sleep>
c0100370:	eb c0                	jmp    c0100332 <P+0x22>
c0100372:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0100378:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c010037b:	89 55 e0             	mov    %edx,-0x20(%ebp)
c010037e:	c7 44 24 04 10 00 00 	movl   $0x10,0x4(%esp)
c0100385:	00 
c0100386:	c7 04 24 9b 18 10 c0 	movl   $0xc010189b,(%esp)
c010038d:	e8 1e fe ff ff       	call   c01001b0 <abort>
c0100392:	8b 55 e0             	mov    -0x20(%ebp),%edx
c0100395:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0100398:	eb c1                	jmp    c010035b <P+0x4b>
c010039a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c01003a0 <V>:
c01003a0:	55                   	push   %ebp
c01003a1:	89 e5                	mov    %esp,%ebp
c01003a3:	83 ec 18             	sub    $0x18,%esp
c01003a6:	89 5d f8             	mov    %ebx,-0x8(%ebp)
c01003a9:	8b 5d 08             	mov    0x8(%ebp),%ebx
c01003ac:	89 75 fc             	mov    %esi,-0x4(%ebp)
c01003af:	e8 4c fe ff ff       	call   c0100200 <lock>
c01003b4:	8b 03                	mov    (%ebx),%eax
c01003b6:	83 c0 01             	add    $0x1,%eax
c01003b9:	85 c0                	test   %eax,%eax
c01003bb:	89 03                	mov    %eax,(%ebx)
c01003bd:	7e 11                	jle    c01003d0 <V+0x30>
c01003bf:	8b 5d f8             	mov    -0x8(%ebp),%ebx
c01003c2:	8b 75 fc             	mov    -0x4(%ebp),%esi
c01003c5:	89 ec                	mov    %ebp,%esp
c01003c7:	5d                   	pop    %ebp
c01003c8:	e9 c3 fe ff ff       	jmp    c0100290 <unlock>
c01003cd:	8d 76 00             	lea    0x0(%esi),%esi
c01003d0:	8b 73 08             	mov    0x8(%ebx),%esi
c01003d3:	8d 43 04             	lea    0x4(%ebx),%eax
c01003d6:	39 c6                	cmp    %eax,%esi
c01003d8:	74 36                	je     c0100410 <V+0x70>
c01003da:	85 f6                	test   %esi,%esi
c01003dc:	8d 5e f4             	lea    -0xc(%esi),%ebx
c01003df:	74 4f                	je     c0100430 <V+0x90>
c01003e1:	8b 16                	mov    (%esi),%edx
c01003e3:	8b 46 04             	mov    0x4(%esi),%eax
c01003e6:	85 d2                	test   %edx,%edx
c01003e8:	74 03                	je     c01003ed <V+0x4d>
c01003ea:	89 42 04             	mov    %eax,0x4(%edx)
c01003ed:	85 c0                	test   %eax,%eax
c01003ef:	74 02                	je     c01003f3 <V+0x53>
c01003f1:	89 10                	mov    %edx,(%eax)
c01003f3:	89 1c 24             	mov    %ebx,(%esp)
c01003f6:	e8 d5 12 00 00       	call   c01016d0 <wakeup>
c01003fb:	8b 5d f8             	mov    -0x8(%ebp),%ebx
c01003fe:	8b 75 fc             	mov    -0x4(%ebp),%esi
c0100401:	89 ec                	mov    %ebp,%esp
c0100403:	5d                   	pop    %ebp
c0100404:	e9 87 fe ff ff       	jmp    c0100290 <unlock>
c0100409:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0100410:	c7 44 24 04 42 00 00 	movl   $0x42,0x4(%esp)
c0100417:	00 
c0100418:	c7 04 24 8c 18 10 c0 	movl   $0xc010188c,(%esp)
c010041f:	e8 8c fd ff ff       	call   c01001b0 <abort>
c0100424:	8b 73 08             	mov    0x8(%ebx),%esi
c0100427:	eb b1                	jmp    c01003da <V+0x3a>
c0100429:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0100430:	c7 44 24 04 23 00 00 	movl   $0x23,0x4(%esp)
c0100437:	00 
c0100438:	c7 04 24 9b 18 10 c0 	movl   $0xc010189b,(%esp)
c010043f:	e8 6c fd ff ff       	call   c01001b0 <abort>
c0100444:	eb 9b                	jmp    c01003e1 <V+0x41>
c0100446:	90                   	nop
c0100447:	90                   	nop
c0100448:	90                   	nop
c0100449:	90                   	nop
c010044a:	90                   	nop
c010044b:	90                   	nop
c010044c:	90                   	nop
c010044d:	90                   	nop
c010044e:	90                   	nop
c010044f:	90                   	nop

c0100450 <get_bucket>:
c0100450:	55                   	push   %ebp
c0100451:	89 e5                	mov    %esp,%ebp
c0100453:	56                   	push   %esi
c0100454:	53                   	push   %ebx
c0100455:	83 ec 10             	sub    $0x10,%esp
c0100458:	8b 5d 08             	mov    0x8(%ebp),%ebx
c010045b:	8d 43 ff             	lea    -0x1(%ebx),%eax
c010045e:	3d ff 3f 00 00       	cmp    $0x3fff,%eax
c0100463:	77 6b                	ja     c01004d0 <get_bucket+0x80>
c0100465:	31 c0                	xor    %eax,%eax
c0100467:	83 fb 08             	cmp    $0x8,%ebx
c010046a:	76 5d                	jbe    c01004c9 <get_bucket+0x79>
c010046c:	89 da                	mov    %ebx,%edx
c010046e:	b0 01                	mov    $0x1,%al
c0100470:	c1 ea 10             	shr    $0x10,%edx
c0100473:	85 d2                	test   %edx,%edx
c0100475:	75 05                	jne    c010047c <get_bucket+0x2c>
c0100477:	c1 e3 10             	shl    $0x10,%ebx
c010047a:	b0 11                	mov    $0x11,%al
c010047c:	89 da                	mov    %ebx,%edx
c010047e:	c1 ea 18             	shr    $0x18,%edx
c0100481:	85 d2                	test   %edx,%edx
c0100483:	75 06                	jne    c010048b <get_bucket+0x3b>
c0100485:	83 c0 08             	add    $0x8,%eax
c0100488:	c1 e3 08             	shl    $0x8,%ebx
c010048b:	89 da                	mov    %ebx,%edx
c010048d:	c1 ea 1c             	shr    $0x1c,%edx
c0100490:	85 d2                	test   %edx,%edx
c0100492:	75 06                	jne    c010049a <get_bucket+0x4a>
c0100494:	83 c0 04             	add    $0x4,%eax
c0100497:	c1 e3 04             	shl    $0x4,%ebx
c010049a:	89 da                	mov    %ebx,%edx
c010049c:	c1 ea 1e             	shr    $0x1e,%edx
c010049f:	85 d2                	test   %edx,%edx
c01004a1:	75 06                	jne    c01004a9 <get_bucket+0x59>
c01004a3:	83 c0 02             	add    $0x2,%eax
c01004a6:	c1 e3 02             	shl    $0x2,%ebx
c01004a9:	89 de                	mov    %ebx,%esi
c01004ab:	b9 1f 00 00 00       	mov    $0x1f,%ecx
c01004b0:	c1 fe 1f             	sar    $0x1f,%esi
c01004b3:	ba 01 00 00 00       	mov    $0x1,%edx
c01004b8:	01 c6                	add    %eax,%esi
c01004ba:	b8 1d 00 00 00       	mov    $0x1d,%eax
c01004bf:	29 f1                	sub    %esi,%ecx
c01004c1:	29 f0                	sub    %esi,%eax
c01004c3:	d3 e2                	shl    %cl,%edx
c01004c5:	39 da                	cmp    %ebx,%edx
c01004c7:	74 27                	je     c01004f0 <get_bucket+0xa0>
c01004c9:	83 c4 10             	add    $0x10,%esp
c01004cc:	5b                   	pop    %ebx
c01004cd:	5e                   	pop    %esi
c01004ce:	5d                   	pop    %ebp
c01004cf:	c3                   	ret    
c01004d0:	c7 44 24 04 25 00 00 	movl   $0x25,0x4(%esp)
c01004d7:	00 
c01004d8:	c7 04 24 b0 18 10 c0 	movl   $0xc01018b0,(%esp)
c01004df:	e8 cc fc ff ff       	call   c01001b0 <abort>
c01004e4:	e9 7c ff ff ff       	jmp    c0100465 <get_bucket+0x15>
c01004e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c01004f0:	83 c4 10             	add    $0x10,%esp
c01004f3:	b8 1c 00 00 00       	mov    $0x1c,%eax
c01004f8:	29 f0                	sub    %esi,%eax
c01004fa:	5b                   	pop    %ebx
c01004fb:	5e                   	pop    %esi
c01004fc:	5d                   	pop    %ebp
c01004fd:	c3                   	ret    
c01004fe:	66 90                	xchg   %ax,%ax

c0100500 <page_init>:
c0100500:	55                   	push   %ebp
c0100501:	b9 03 00 00 00       	mov    $0x3,%ecx
c0100506:	89 e5                	mov    %esp,%ebp
c0100508:	b8 20 31 10 c0       	mov    $0xc0103120,%eax
c010050d:	57                   	push   %edi
c010050e:	56                   	push   %esi
c010050f:	53                   	push   %ebx
c0100510:	bb 01 00 00 00       	mov    $0x1,%ebx
c0100515:	8d 76 00             	lea    0x0(%esi),%esi
c0100518:	89 da                	mov    %ebx,%edx
c010051a:	be 64 00 00 00       	mov    $0x64,%esi
c010051f:	d3 e2                	shl    %cl,%edx
c0100521:	d3 e6                	shl    %cl,%esi
c0100523:	83 c2 08             	add    $0x8,%edx
c0100526:	8d bc 30 20 03 00 00 	lea    0x320(%eax,%esi,1),%edi
c010052d:	89 d6                	mov    %edx,%esi
c010052f:	89 04 8d 74 30 10 c0 	mov    %eax,-0x3fefcf8c(,%ecx,4)
c0100536:	f7 de                	neg    %esi
c0100538:	c7 04 8d b4 30 10 c0 	movl   $0x64,-0x3fefcf4c(,%ecx,4)
c010053f:	64 00 00 00 
c0100543:	90                   	nop
c0100544:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0100548:	01 d0                	add    %edx,%eax
c010054a:	39 c7                	cmp    %eax,%edi
c010054c:	89 04 30             	mov    %eax,(%eax,%esi,1)
c010054f:	77 f7                	ja     c0100548 <page_init+0x48>
c0100551:	83 c1 01             	add    $0x1,%ecx
c0100554:	83 f9 0f             	cmp    $0xf,%ecx
c0100557:	75 bf                	jne    c0100518 <page_init+0x18>
c0100559:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c010055f:	5b                   	pop    %ebx
c0100560:	5e                   	pop    %esi
c0100561:	5f                   	pop    %edi
c0100562:	5d                   	pop    %ebp
c0100563:	c3                   	ret    
c0100564:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c010056a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

c0100570 <malloc>:
c0100570:	55                   	push   %ebp
c0100571:	89 e5                	mov    %esp,%ebp
c0100573:	56                   	push   %esi
c0100574:	53                   	push   %ebx
c0100575:	83 ec 10             	sub    $0x10,%esp
c0100578:	8b 5d 08             	mov    0x8(%ebp),%ebx
c010057b:	8d 43 ff             	lea    -0x1(%ebx),%eax
c010057e:	3d ff 3f 00 00       	cmp    $0x3fff,%eax
c0100583:	77 53                	ja     c01005d8 <malloc+0x68>
c0100585:	80 3d f0 30 10 c0 00 	cmpb   $0x0,0xc01030f0
c010058c:	74 67                	je     c01005f5 <malloc+0x85>
c010058e:	89 1c 24             	mov    %ebx,(%esp)
c0100591:	e8 ba fe ff ff       	call   c0100450 <get_bucket>
c0100596:	83 f8 0b             	cmp    $0xb,%eax
c0100599:	89 c3                	mov    %eax,%ebx
c010059b:	77 73                	ja     c0100610 <malloc+0xa0>
c010059d:	8b 14 9d c0 30 10 c0 	mov    -0x3fefcf40(,%ebx,4),%edx
c01005a4:	31 c0                	xor    %eax,%eax
c01005a6:	85 d2                	test   %edx,%edx
c01005a8:	74 27                	je     c01005d1 <malloc+0x61>
c01005aa:	8b 34 9d 80 30 10 c0 	mov    -0x3fefcf80(,%ebx,4),%esi
c01005b1:	83 ea 01             	sub    $0x1,%edx
c01005b4:	89 14 9d c0 30 10 c0 	mov    %edx,-0x3fefcf40(,%ebx,4)
c01005bb:	85 f6                	test   %esi,%esi
c01005bd:	74 71                	je     c0100630 <malloc+0xc0>
c01005bf:	8b 06                	mov    (%esi),%eax
c01005c1:	89 04 9d 80 30 10 c0 	mov    %eax,-0x3fefcf80(,%ebx,4)
c01005c8:	8d 46 08             	lea    0x8(%esi),%eax
c01005cb:	c6 06 ef             	movb   $0xef,(%esi)
c01005ce:	89 5e 04             	mov    %ebx,0x4(%esi)
c01005d1:	83 c4 10             	add    $0x10,%esp
c01005d4:	5b                   	pop    %ebx
c01005d5:	5e                   	pop    %esi
c01005d6:	5d                   	pop    %ebp
c01005d7:	c3                   	ret    
c01005d8:	c7 44 24 04 46 00 00 	movl   $0x46,0x4(%esp)
c01005df:	00 
c01005e0:	c7 04 24 b0 18 10 c0 	movl   $0xc01018b0,(%esp)
c01005e7:	e8 c4 fb ff ff       	call   c01001b0 <abort>
c01005ec:	80 3d f0 30 10 c0 00 	cmpb   $0x0,0xc01030f0
c01005f3:	75 99                	jne    c010058e <malloc+0x1e>
c01005f5:	e8 06 ff ff ff       	call   c0100500 <page_init>
c01005fa:	89 1c 24             	mov    %ebx,(%esp)
c01005fd:	c6 05 f0 30 10 c0 01 	movb   $0x1,0xc01030f0
c0100604:	e8 47 fe ff ff       	call   c0100450 <get_bucket>
c0100609:	83 f8 0b             	cmp    $0xb,%eax
c010060c:	89 c3                	mov    %eax,%ebx
c010060e:	76 8d                	jbe    c010059d <malloc+0x2d>
c0100610:	c7 44 24 04 56 00 00 	movl   $0x56,0x4(%esp)
c0100617:	00 
c0100618:	c7 04 24 b0 18 10 c0 	movl   $0xc01018b0,(%esp)
c010061f:	e8 8c fb ff ff       	call   c01001b0 <abort>
c0100624:	e9 74 ff ff ff       	jmp    c010059d <malloc+0x2d>
c0100629:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0100630:	c7 44 24 04 5b 00 00 	movl   $0x5b,0x4(%esp)
c0100637:	00 
c0100638:	c7 04 24 b0 18 10 c0 	movl   $0xc01018b0,(%esp)
c010063f:	e8 6c fb ff ff       	call   c01001b0 <abort>
c0100644:	e9 76 ff ff ff       	jmp    c01005bf <malloc+0x4f>
c0100649:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0100650 <free>:
c0100650:	55                   	push   %ebp
c0100651:	89 e5                	mov    %esp,%ebp
c0100653:	83 ec 28             	sub    $0x28,%esp
c0100656:	89 75 f8             	mov    %esi,-0x8(%ebp)
c0100659:	8b 75 08             	mov    0x8(%ebp),%esi
c010065c:	89 7d fc             	mov    %edi,-0x4(%ebp)
c010065f:	89 5d f4             	mov    %ebx,-0xc(%ebp)
c0100662:	80 7e f8 ef          	cmpb   $0xef,-0x8(%esi)
c0100666:	8d 7e f8             	lea    -0x8(%esi),%edi
c0100669:	74 14                	je     c010067f <free+0x2f>
c010066b:	c7 44 24 04 69 00 00 	movl   $0x69,0x4(%esp)
c0100672:	00 
c0100673:	c7 04 24 b0 18 10 c0 	movl   $0xc01018b0,(%esp)
c010067a:	e8 31 fb ff ff       	call   c01001b0 <abort>
c010067f:	8b 5e fc             	mov    -0x4(%esi),%ebx
c0100682:	8b 04 9d c0 30 10 c0 	mov    -0x3fefcf40(,%ebx,4),%eax
c0100689:	83 f8 63             	cmp    $0x63,%eax
c010068c:	76 1b                	jbe    c01006a9 <free+0x59>
c010068e:	c7 44 24 04 6b 00 00 	movl   $0x6b,0x4(%esp)
c0100695:	00 
c0100696:	c7 04 24 b0 18 10 c0 	movl   $0xc01018b0,(%esp)
c010069d:	e8 0e fb ff ff       	call   c01001b0 <abort>
c01006a2:	8b 04 9d c0 30 10 c0 	mov    -0x3fefcf40(,%ebx,4),%eax
c01006a9:	83 c0 01             	add    $0x1,%eax
c01006ac:	89 04 9d c0 30 10 c0 	mov    %eax,-0x3fefcf40(,%ebx,4)
c01006b3:	8b 04 9d 80 30 10 c0 	mov    -0x3fefcf80(,%ebx,4),%eax
c01006ba:	89 46 f8             	mov    %eax,-0x8(%esi)
c01006bd:	8b 75 f8             	mov    -0x8(%ebp),%esi
c01006c0:	89 3c 9d 80 30 10 c0 	mov    %edi,-0x3fefcf80(,%ebx,4)
c01006c7:	8b 5d f4             	mov    -0xc(%ebp),%ebx
c01006ca:	8b 7d fc             	mov    -0x4(%ebp),%edi
c01006cd:	89 ec                	mov    %ebp,%esp
c01006cf:	5d                   	pop    %ebp
c01006d0:	c3                   	ret    
c01006d1:	90                   	nop
c01006d2:	90                   	nop
c01006d3:	90                   	nop
c01006d4:	90                   	nop
c01006d5:	90                   	nop
c01006d6:	90                   	nop
c01006d7:	90                   	nop
c01006d8:	90                   	nop
c01006d9:	90                   	nop
c01006da:	90                   	nop
c01006db:	90                   	nop
c01006dc:	90                   	nop
c01006dd:	90                   	nop
c01006de:	90                   	nop
c01006df:	90                   	nop

c01006e0 <vfprintf>:
c01006e0:	55                   	push   %ebp
c01006e1:	89 e5                	mov    %esp,%ebp
c01006e3:	57                   	push   %edi
c01006e4:	31 ff                	xor    %edi,%edi
c01006e6:	56                   	push   %esi
c01006e7:	53                   	push   %ebx
c01006e8:	83 ec 2c             	sub    $0x2c,%esp
c01006eb:	8b 75 08             	mov    0x8(%ebp),%esi
c01006ee:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c01006f1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c01006f8:	0f b6 03             	movzbl (%ebx),%eax
c01006fb:	84 c0                	test   %al,%al
c01006fd:	74 19                	je     c0100718 <vfprintf+0x38>
c01006ff:	3c 25                	cmp    $0x25,%al
c0100701:	74 25                	je     c0100728 <vfprintf+0x48>
c0100703:	0f be c0             	movsbl %al,%eax
c0100706:	83 c3 01             	add    $0x1,%ebx
c0100709:	89 04 24             	mov    %eax,(%esp)
c010070c:	83 c7 01             	add    $0x1,%edi
c010070f:	ff d6                	call   *%esi
c0100711:	0f b6 03             	movzbl (%ebx),%eax
c0100714:	84 c0                	test   %al,%al
c0100716:	75 e7                	jne    c01006ff <vfprintf+0x1f>
c0100718:	83 c4 2c             	add    $0x2c,%esp
c010071b:	89 f8                	mov    %edi,%eax
c010071d:	5b                   	pop    %ebx
c010071e:	5e                   	pop    %esi
c010071f:	5f                   	pop    %edi
c0100720:	5d                   	pop    %ebp
c0100721:	c3                   	ret    
c0100722:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0100728:	0f b6 43 01          	movzbl 0x1(%ebx),%eax
c010072c:	83 c3 02             	add    $0x2,%ebx
c010072f:	84 c0                	test   %al,%al
c0100731:	74 55                	je     c0100788 <vfprintf+0xa8>
c0100733:	3c 73                	cmp    $0x73,%al
c0100735:	0f 84 b5 01 00 00    	je     c01008f0 <vfprintf+0x210>
c010073b:	7f 63                	jg     c01007a0 <vfprintf+0xc0>
c010073d:	3c 63                	cmp    $0x63,%al
c010073f:	90                   	nop
c0100740:	0f 84 22 01 00 00    	je     c0100868 <vfprintf+0x188>
c0100746:	3c 64                	cmp    $0x64,%al
c0100748:	0f 84 42 01 00 00    	je     c0100890 <vfprintf+0x1b0>
c010074e:	3c 25                	cmp    $0x25,%al
c0100750:	74 1e                	je     c0100770 <vfprintf+0x90>
c0100752:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0100758:	c7 44 24 04 2d 00 00 	movl   $0x2d,0x4(%esp)
c010075f:	00 
c0100760:	c7 04 24 c1 18 10 c0 	movl   $0xc01018c1,(%esp)
c0100767:	e8 44 fa ff ff       	call   c01001b0 <abort>
c010076c:	eb 8a                	jmp    c01006f8 <vfprintf+0x18>
c010076e:	66 90                	xchg   %ax,%ax
c0100770:	83 c7 01             	add    $0x1,%edi
c0100773:	c7 04 24 25 00 00 00 	movl   $0x25,(%esp)
c010077a:	ff d6                	call   *%esi
c010077c:	e9 77 ff ff ff       	jmp    c01006f8 <vfprintf+0x18>
c0100781:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0100788:	c7 44 24 04 22 00 00 	movl   $0x22,0x4(%esp)
c010078f:	00 
c0100790:	c7 04 24 c1 18 10 c0 	movl   $0xc01018c1,(%esp)
c0100797:	e8 14 fa ff ff       	call   c01001b0 <abort>
c010079c:	eb ba                	jmp    c0100758 <vfprintf+0x78>
c010079e:	66 90                	xchg   %ax,%ax
c01007a0:	3c 75                	cmp    $0x75,%al
c01007a2:	74 64                	je     c0100808 <vfprintf+0x128>
c01007a4:	3c 78                	cmp    $0x78,%al
c01007a6:	75 b0                	jne    c0100758 <vfprintf+0x78>
c01007a8:	8b 55 10             	mov    0x10(%ebp),%edx
c01007ab:	8b 4d 10             	mov    0x10(%ebp),%ecx
c01007ae:	c7 44 24 04 10 00 00 	movl   $0x10,0x4(%esp)
c01007b5:	00 
c01007b6:	8b 02                	mov    (%edx),%eax
c01007b8:	83 c1 04             	add    $0x4,%ecx
c01007bb:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c01007be:	89 04 24             	mov    %eax,(%esp)
c01007c1:	e8 ba f9 ff ff       	call   c0100180 <utoa>
c01007c6:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c01007c9:	89 4d 10             	mov    %ecx,0x10(%ebp)
c01007cc:	0f b6 10             	movzbl (%eax),%edx
c01007cf:	84 d2                	test   %dl,%dl
c01007d1:	0f 84 21 ff ff ff    	je     c01006f8 <vfprintf+0x18>
c01007d7:	29 f8                	sub    %edi,%eax
c01007d9:	89 5d e4             	mov    %ebx,-0x1c(%ebp)
c01007dc:	89 c3                	mov    %eax,%ebx
c01007de:	66 90                	xchg   %ax,%ax
c01007e0:	0f be d2             	movsbl %dl,%edx
c01007e3:	83 c7 01             	add    $0x1,%edi
c01007e6:	89 14 24             	mov    %edx,(%esp)
c01007e9:	ff d6                	call   *%esi
c01007eb:	0f b6 14 3b          	movzbl (%ebx,%edi,1),%edx
c01007ef:	84 d2                	test   %dl,%dl
c01007f1:	75 ed                	jne    c01007e0 <vfprintf+0x100>
c01007f3:	8b 55 e0             	mov    -0x20(%ebp),%edx
c01007f6:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
c01007f9:	89 55 10             	mov    %edx,0x10(%ebp)
c01007fc:	e9 f7 fe ff ff       	jmp    c01006f8 <vfprintf+0x18>
c0100801:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0100808:	8b 55 10             	mov    0x10(%ebp),%edx
c010080b:	8b 4d 10             	mov    0x10(%ebp),%ecx
c010080e:	c7 44 24 04 0a 00 00 	movl   $0xa,0x4(%esp)
c0100815:	00 
c0100816:	8b 02                	mov    (%edx),%eax
c0100818:	83 c1 04             	add    $0x4,%ecx
c010081b:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c010081e:	89 04 24             	mov    %eax,(%esp)
c0100821:	e8 5a f9 ff ff       	call   c0100180 <utoa>
c0100826:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0100829:	89 4d 10             	mov    %ecx,0x10(%ebp)
c010082c:	0f b6 10             	movzbl (%eax),%edx
c010082f:	84 d2                	test   %dl,%dl
c0100831:	0f 84 c1 fe ff ff    	je     c01006f8 <vfprintf+0x18>
c0100837:	29 f8                	sub    %edi,%eax
c0100839:	89 5d e4             	mov    %ebx,-0x1c(%ebp)
c010083c:	89 c3                	mov    %eax,%ebx
c010083e:	66 90                	xchg   %ax,%ax
c0100840:	0f be d2             	movsbl %dl,%edx
c0100843:	83 c7 01             	add    $0x1,%edi
c0100846:	89 14 24             	mov    %edx,(%esp)
c0100849:	ff d6                	call   *%esi
c010084b:	0f b6 14 3b          	movzbl (%ebx,%edi,1),%edx
c010084f:	84 d2                	test   %dl,%dl
c0100851:	75 ed                	jne    c0100840 <vfprintf+0x160>
c0100853:	8b 55 e0             	mov    -0x20(%ebp),%edx
c0100856:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
c0100859:	89 55 10             	mov    %edx,0x10(%ebp)
c010085c:	e9 97 fe ff ff       	jmp    c01006f8 <vfprintf+0x18>
c0100861:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0100868:	8b 45 10             	mov    0x10(%ebp),%eax
c010086b:	83 c7 01             	add    $0x1,%edi
c010086e:	8b 55 10             	mov    0x10(%ebp),%edx
c0100871:	83 c0 04             	add    $0x4,%eax
c0100874:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0100877:	0f be 02             	movsbl (%edx),%eax
c010087a:	89 04 24             	mov    %eax,(%esp)
c010087d:	ff d6                	call   *%esi
c010087f:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0100882:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0100885:	e9 6e fe ff ff       	jmp    c01006f8 <vfprintf+0x18>
c010088a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0100890:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0100893:	8b 55 10             	mov    0x10(%ebp),%edx
c0100896:	c7 44 24 04 0a 00 00 	movl   $0xa,0x4(%esp)
c010089d:	00 
c010089e:	8b 01                	mov    (%ecx),%eax
c01008a0:	83 c2 04             	add    $0x4,%edx
c01008a3:	89 55 e0             	mov    %edx,-0x20(%ebp)
c01008a6:	89 04 24             	mov    %eax,(%esp)
c01008a9:	e8 a2 f8 ff ff       	call   c0100150 <itoa>
c01008ae:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c01008b1:	89 4d 10             	mov    %ecx,0x10(%ebp)
c01008b4:	0f b6 10             	movzbl (%eax),%edx
c01008b7:	84 d2                	test   %dl,%dl
c01008b9:	0f 84 39 fe ff ff    	je     c01006f8 <vfprintf+0x18>
c01008bf:	29 f8                	sub    %edi,%eax
c01008c1:	89 5d e4             	mov    %ebx,-0x1c(%ebp)
c01008c4:	89 c3                	mov    %eax,%ebx
c01008c6:	66 90                	xchg   %ax,%ax
c01008c8:	0f be d2             	movsbl %dl,%edx
c01008cb:	83 c7 01             	add    $0x1,%edi
c01008ce:	89 14 24             	mov    %edx,(%esp)
c01008d1:	ff d6                	call   *%esi
c01008d3:	0f b6 14 3b          	movzbl (%ebx,%edi,1),%edx
c01008d7:	84 d2                	test   %dl,%dl
c01008d9:	75 ed                	jne    c01008c8 <vfprintf+0x1e8>
c01008db:	8b 55 e0             	mov    -0x20(%ebp),%edx
c01008de:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
c01008e1:	89 55 10             	mov    %edx,0x10(%ebp)
c01008e4:	e9 0f fe ff ff       	jmp    c01006f8 <vfprintf+0x18>
c01008e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c01008f0:	8b 4d 10             	mov    0x10(%ebp),%ecx
c01008f3:	8b 45 10             	mov    0x10(%ebp),%eax
c01008f6:	8b 11                	mov    (%ecx),%edx
c01008f8:	83 c0 04             	add    $0x4,%eax
c01008fb:	89 45 e0             	mov    %eax,-0x20(%ebp)
c01008fe:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0100901:	0f b6 02             	movzbl (%edx),%eax
c0100904:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0100907:	84 c0                	test   %al,%al
c0100909:	0f 84 e9 fd ff ff    	je     c01006f8 <vfprintf+0x18>
c010090f:	29 fa                	sub    %edi,%edx
c0100911:	89 5d e4             	mov    %ebx,-0x1c(%ebp)
c0100914:	89 d3                	mov    %edx,%ebx
c0100916:	66 90                	xchg   %ax,%ax
c0100918:	0f be c0             	movsbl %al,%eax
c010091b:	83 c7 01             	add    $0x1,%edi
c010091e:	89 04 24             	mov    %eax,(%esp)
c0100921:	ff d6                	call   *%esi
c0100923:	0f b6 04 3b          	movzbl (%ebx,%edi,1),%eax
c0100927:	84 c0                	test   %al,%al
c0100929:	75 ed                	jne    c0100918 <vfprintf+0x238>
c010092b:	8b 45 e0             	mov    -0x20(%ebp),%eax
c010092e:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
c0100931:	89 45 10             	mov    %eax,0x10(%ebp)
c0100934:	e9 bf fd ff ff       	jmp    c01006f8 <vfprintf+0x18>
c0100939:	90                   	nop
c010093a:	90                   	nop
c010093b:	90                   	nop
c010093c:	90                   	nop
c010093d:	90                   	nop
c010093e:	90                   	nop
c010093f:	90                   	nop

c0100940 <serial_printc>:
c0100940:	55                   	push   %ebp
c0100941:	ba fd 03 00 00       	mov    $0x3fd,%edx
c0100946:	89 e5                	mov    %esp,%ebp
c0100948:	0f b6 4d 08          	movzbl 0x8(%ebp),%ecx
c010094c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0100950:	ec                   	in     (%dx),%al
c0100951:	a8 20                	test   $0x20,%al
c0100953:	74 fb                	je     c0100950 <serial_printc+0x10>
c0100955:	ba f8 03 00 00       	mov    $0x3f8,%edx
c010095a:	89 c8                	mov    %ecx,%eax
c010095c:	ee                   	out    %al,(%dx)
c010095d:	5d                   	pop    %ebp
c010095e:	c3                   	ret    
c010095f:	90                   	nop

c0100960 <init_debug>:
c0100960:	55                   	push   %ebp
c0100961:	ba f9 03 00 00       	mov    $0x3f9,%edx
c0100966:	89 e5                	mov    %esp,%ebp
c0100968:	31 c0                	xor    %eax,%eax
c010096a:	ee                   	out    %al,(%dx)
c010096b:	b8 80 ff ff ff       	mov    $0xffffff80,%eax
c0100970:	b2 fb                	mov    $0xfb,%dl
c0100972:	ee                   	out    %al,(%dx)
c0100973:	b8 01 00 00 00       	mov    $0x1,%eax
c0100978:	b2 f8                	mov    $0xf8,%dl
c010097a:	ee                   	out    %al,(%dx)
c010097b:	31 c0                	xor    %eax,%eax
c010097d:	b2 f9                	mov    $0xf9,%dl
c010097f:	ee                   	out    %al,(%dx)
c0100980:	b8 03 00 00 00       	mov    $0x3,%eax
c0100985:	b2 fb                	mov    $0xfb,%dl
c0100987:	ee                   	out    %al,(%dx)
c0100988:	b8 c7 ff ff ff       	mov    $0xffffffc7,%eax
c010098d:	b2 fa                	mov    $0xfa,%dl
c010098f:	ee                   	out    %al,(%dx)
c0100990:	b8 0b 00 00 00       	mov    $0xb,%eax
c0100995:	b2 fc                	mov    $0xfc,%dl
c0100997:	ee                   	out    %al,(%dx)
c0100998:	5d                   	pop    %ebp
c0100999:	c3                   	ret    
c010099a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c01009a0 <printk>:
c01009a0:	55                   	push   %ebp
c01009a1:	89 e5                	mov    %esp,%ebp
c01009a3:	83 ec 18             	sub    $0x18,%esp
c01009a6:	8d 45 0c             	lea    0xc(%ebp),%eax
c01009a9:	89 44 24 08          	mov    %eax,0x8(%esp)
c01009ad:	8b 45 08             	mov    0x8(%ebp),%eax
c01009b0:	c7 04 24 40 09 10 c0 	movl   $0xc0100940,(%esp)
c01009b7:	89 44 24 04          	mov    %eax,0x4(%esp)
c01009bb:	e8 20 fd ff ff       	call   c01006e0 <vfprintf>
c01009c0:	c9                   	leave  
c01009c1:	c3                   	ret    
c01009c2:	90                   	nop
c01009c3:	90                   	nop
c01009c4:	90                   	nop
c01009c5:	90                   	nop
c01009c6:	90                   	nop
c01009c7:	90                   	nop
c01009c8:	90                   	nop
c01009c9:	90                   	nop
c01009ca:	90                   	nop
c01009cb:	90                   	nop
c01009cc:	90                   	nop
c01009cd:	90                   	nop
c01009ce:	90                   	nop
c01009cf:	90                   	nop

c01009d0 <init_kvm>:
c01009d0:	55                   	push   %ebp
c01009d1:	ba 00 70 42 00       	mov    $0x427000,%edx
c01009d6:	89 e5                	mov    %esp,%ebp
c01009d8:	31 c0                	xor    %eax,%eax
c01009da:	83 ec 28             	sub    $0x28,%esp
c01009dd:	8d 76 00             	lea    0x0(%esi),%esi
c01009e0:	89 c1                	mov    %eax,%ecx
c01009e2:	05 00 10 00 00       	add    $0x1000,%eax
c01009e7:	83 c9 03             	or     $0x3,%ecx
c01009ea:	89 0a                	mov    %ecx,(%edx)
c01009ec:	83 c2 04             	add    $0x4,%edx
c01009ef:	3d 00 00 00 08       	cmp    $0x8000000,%eax
c01009f4:	75 ea                	jne    c01009e0 <init_kvm+0x10>
c01009f6:	c7 44 24 08 00 10 00 	movl   $0x1000,0x8(%esp)
c01009fd:	00 
c01009fe:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0100a05:	00 
c0100a06:	c7 04 24 00 70 44 40 	movl   $0x40447000,(%esp)
c0100a0d:	e8 1e f6 ff ff       	call   c0100030 <memset>
c0100a12:	b9 00 70 44 00       	mov    $0x447000,%ecx
c0100a17:	31 d2                	xor    %edx,%edx
c0100a19:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0100a20:	89 d0                	mov    %edx,%eax
c0100a22:	81 c2 00 00 40 00    	add    $0x400000,%edx
c0100a28:	c1 e8 0c             	shr    $0xc,%eax
c0100a2b:	8d 04 85 00 70 42 00 	lea    0x427000(,%eax,4),%eax
c0100a32:	83 c8 03             	or     $0x3,%eax
c0100a35:	89 01                	mov    %eax,(%ecx)
c0100a37:	89 81 00 0c 00 00    	mov    %eax,0xc00(%ecx)
c0100a3d:	83 c1 04             	add    $0x4,%ecx
c0100a40:	81 fa 00 00 00 08    	cmp    $0x8000000,%edx
c0100a46:	75 d8                	jne    c0100a20 <init_kvm+0x50>
c0100a48:	b8 00 70 44 00       	mov    $0x447000,%eax
c0100a4d:	0f 22 d8             	mov    %eax,%cr3
c0100a50:	0f 20 c0             	mov    %cr0,%eax
c0100a53:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0100a56:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0100a59:	0d 00 00 00 80       	or     $0x80000000,%eax
c0100a5e:	0f 22 c0             	mov    %eax,%cr0
c0100a61:	c9                   	leave  
c0100a62:	c3                   	ret    
c0100a63:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0100a69:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0100a70 <init_seg>:
c0100a70:	b8 40 60 42 c0       	mov    $0xc0426040,%eax
c0100a75:	66 a3 2a 60 42 c0    	mov    %ax,0xc042602a
c0100a7b:	89 c2                	mov    %eax,%edx
c0100a7d:	c1 e8 18             	shr    $0x18,%eax
c0100a80:	a2 2f 60 42 c0       	mov    %al,0xc042602f
c0100a85:	b8 00 60 42 c0       	mov    $0xc0426000,%eax
c0100a8a:	55                   	push   %ebp
c0100a8b:	c1 ea 10             	shr    $0x10,%edx
c0100a8e:	89 e5                	mov    %esp,%ebp
c0100a90:	66 c7 05 f4 30 10 c0 	movw   $0x2f,0xc01030f4
c0100a97:	2f 00 
c0100a99:	66 a3 f6 30 10 c0    	mov    %ax,0xc01030f6
c0100a9f:	c1 e8 10             	shr    $0x10,%eax
c0100aa2:	88 15 2c 60 42 c0    	mov    %dl,0xc042602c
c0100aa8:	66 c7 05 08 60 42 c0 	movw   $0xffff,0xc0426008
c0100aaf:	ff ff 
c0100ab1:	66 c7 05 0a 60 42 c0 	movw   $0x0,0xc042600a
c0100ab8:	00 00 
c0100aba:	c6 05 0c 60 42 c0 00 	movb   $0x0,0xc042600c
c0100ac1:	c6 05 0d 60 42 c0 9a 	movb   $0x9a,0xc042600d
c0100ac8:	c6 05 0e 60 42 c0 cf 	movb   $0xcf,0xc042600e
c0100acf:	c6 05 0f 60 42 c0 00 	movb   $0x0,0xc042600f
c0100ad6:	66 c7 05 10 60 42 c0 	movw   $0xffff,0xc0426010
c0100add:	ff ff 
c0100adf:	66 c7 05 12 60 42 c0 	movw   $0x0,0xc0426012
c0100ae6:	00 00 
c0100ae8:	c6 05 14 60 42 c0 00 	movb   $0x0,0xc0426014
c0100aef:	c6 05 15 60 42 c0 92 	movb   $0x92,0xc0426015
c0100af6:	c6 05 16 60 42 c0 cf 	movb   $0xcf,0xc0426016
c0100afd:	c6 05 17 60 42 c0 00 	movb   $0x0,0xc0426017
c0100b04:	66 c7 05 18 60 42 c0 	movw   $0xffff,0xc0426018
c0100b0b:	ff ff 
c0100b0d:	66 c7 05 1a 60 42 c0 	movw   $0x0,0xc042601a
c0100b14:	00 00 
c0100b16:	c6 05 1c 60 42 c0 00 	movb   $0x0,0xc042601c
c0100b1d:	c6 05 1d 60 42 c0 fa 	movb   $0xfa,0xc042601d
c0100b24:	c6 05 1e 60 42 c0 cf 	movb   $0xcf,0xc042601e
c0100b2b:	c6 05 1f 60 42 c0 00 	movb   $0x0,0xc042601f
c0100b32:	66 c7 05 20 60 42 c0 	movw   $0xffff,0xc0426020
c0100b39:	ff ff 
c0100b3b:	66 c7 05 22 60 42 c0 	movw   $0x0,0xc0426022
c0100b42:	00 00 
c0100b44:	c6 05 24 60 42 c0 00 	movb   $0x0,0xc0426024
c0100b4b:	c6 05 25 60 42 c0 f2 	movb   $0xf2,0xc0426025
c0100b52:	c6 05 26 60 42 c0 cf 	movb   $0xcf,0xc0426026
c0100b59:	c6 05 27 60 42 c0 00 	movb   $0x0,0xc0426027
c0100b60:	66 c7 05 28 60 42 c0 	movw   $0x63,0xc0426028
c0100b67:	63 00 
c0100b69:	c6 05 2d 60 42 c0 89 	movb   $0x89,0xc042602d
c0100b70:	c6 05 2e 60 42 c0 40 	movb   $0x40,0xc042602e
c0100b77:	66 a3 f8 30 10 c0    	mov    %ax,0xc01030f8
c0100b7d:	b8 f4 30 10 c0       	mov    $0xc01030f4,%eax
c0100b82:	0f 01 10             	lgdtl  (%eax)
c0100b85:	5d                   	pop    %ebp
c0100b86:	c3                   	ret    
c0100b87:	90                   	nop
c0100b88:	90                   	nop
c0100b89:	90                   	nop
c0100b8a:	90                   	nop
c0100b8b:	90                   	nop
c0100b8c:	90                   	nop
c0100b8d:	90                   	nop
c0100b8e:	90                   	nop
c0100b8f:	90                   	nop

c0100b90 <test_consumer>:
c0100b90:	55                   	push   %ebp
c0100b91:	89 e5                	mov    %esp,%ebp
c0100b93:	56                   	push   %esi
c0100b94:	be 67 66 66 66       	mov    $0x66666667,%esi
c0100b99:	53                   	push   %ebx
c0100b9a:	83 ec 20             	sub    $0x20,%esp
c0100b9d:	8b 1d 00 20 10 c0    	mov    0xc0102000,%ebx
c0100ba3:	8d 43 01             	lea    0x1(%ebx),%eax
c0100ba6:	a3 00 20 10 c0       	mov    %eax,0xc0102000
c0100bab:	e9 bb 00 00 00       	jmp    c0100c6b <test_consumer+0xdb>
c0100bb0:	c7 04 24 0c 80 44 c0 	movl   $0xc044800c,(%esp)
c0100bb7:	e8 54 f7 ff ff       	call   c0100310 <P>
c0100bbc:	9c                   	pushf  
c0100bbd:	58                   	pop    %eax
c0100bbe:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0100bc1:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0100bc4:	f6 c4 02             	test   $0x2,%ah
c0100bc7:	0f 84 33 01 00 00    	je     c0100d00 <test_consumer+0x170>
c0100bcd:	a1 fc 30 10 c0       	mov    0xc01030fc,%eax
c0100bd2:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c0100bd6:	c7 04 24 e6 18 10 c0 	movl   $0xc01018e6,(%esp)
c0100bdd:	8b 14 85 18 80 44 c0 	mov    -0x3fbb7fe8(,%eax,4),%edx
c0100be4:	83 c0 01             	add    $0x1,%eax
c0100be7:	a3 fc 30 10 c0       	mov    %eax,0xc01030fc
c0100bec:	89 54 24 08          	mov    %edx,0x8(%esp)
c0100bf0:	e8 ab fd ff ff       	call   c01009a0 <printk>
c0100bf5:	9c                   	pushf  
c0100bf6:	58                   	pop    %eax
c0100bf7:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0100bfa:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0100bfd:	f6 c4 02             	test   $0x2,%ah
c0100c00:	0f 84 da 00 00 00    	je     c0100ce0 <test_consumer+0x150>
c0100c06:	8b 0d fc 30 10 c0    	mov    0xc01030fc,%ecx
c0100c0c:	89 c8                	mov    %ecx,%eax
c0100c0e:	f7 ee                	imul   %esi
c0100c10:	89 c8                	mov    %ecx,%eax
c0100c12:	c1 f8 1f             	sar    $0x1f,%eax
c0100c15:	d1 fa                	sar    %edx
c0100c17:	29 c2                	sub    %eax,%edx
c0100c19:	8d 04 92             	lea    (%edx,%edx,4),%eax
c0100c1c:	29 c1                	sub    %eax,%ecx
c0100c1e:	89 0d fc 30 10 c0    	mov    %ecx,0xc01030fc
c0100c24:	9c                   	pushf  
c0100c25:	58                   	pop    %eax
c0100c26:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0100c29:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0100c2c:	f6 c4 02             	test   $0x2,%ah
c0100c2f:	0f 84 8b 00 00 00    	je     c0100cc0 <test_consumer+0x130>
c0100c35:	c7 04 24 0c 80 44 c0 	movl   $0xc044800c,(%esp)
c0100c3c:	e8 5f f7 ff ff       	call   c01003a0 <V>
c0100c41:	9c                   	pushf  
c0100c42:	58                   	pop    %eax
c0100c43:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0100c46:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0100c49:	f6 c4 02             	test   $0x2,%ah
c0100c4c:	74 5a                	je     c0100ca8 <test_consumer+0x118>
c0100c4e:	c7 04 24 2c 80 44 c0 	movl   $0xc044802c,(%esp)
c0100c55:	e8 46 f7 ff ff       	call   c01003a0 <V>
c0100c5a:	9c                   	pushf  
c0100c5b:	58                   	pop    %eax
c0100c5c:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0100c5f:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0100c62:	f6 c4 02             	test   $0x2,%ah
c0100c65:	0f 84 b5 00 00 00    	je     c0100d20 <test_consumer+0x190>
c0100c6b:	c7 04 24 00 80 44 c0 	movl   $0xc0448000,(%esp)
c0100c72:	e8 99 f6 ff ff       	call   c0100310 <P>
c0100c77:	9c                   	pushf  
c0100c78:	58                   	pop    %eax
c0100c79:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0100c7c:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0100c7f:	f6 c4 02             	test   $0x2,%ah
c0100c82:	0f 85 28 ff ff ff    	jne    c0100bb0 <test_consumer+0x20>
c0100c88:	c7 44 24 04 1b 00 00 	movl   $0x1b,0x4(%esp)
c0100c8f:	00 
c0100c90:	c7 04 24 d4 18 10 c0 	movl   $0xc01018d4,(%esp)
c0100c97:	e8 14 f5 ff ff       	call   c01001b0 <abort>
c0100c9c:	e9 0f ff ff ff       	jmp    c0100bb0 <test_consumer+0x20>
c0100ca1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0100ca8:	c7 44 24 04 1f 00 00 	movl   $0x1f,0x4(%esp)
c0100caf:	00 
c0100cb0:	c7 04 24 d4 18 10 c0 	movl   $0xc01018d4,(%esp)
c0100cb7:	e8 f4 f4 ff ff       	call   c01001b0 <abort>
c0100cbc:	eb 90                	jmp    c0100c4e <test_consumer+0xbe>
c0100cbe:	66 90                	xchg   %ax,%ax
c0100cc0:	c7 44 24 04 1e 00 00 	movl   $0x1e,0x4(%esp)
c0100cc7:	00 
c0100cc8:	c7 04 24 d4 18 10 c0 	movl   $0xc01018d4,(%esp)
c0100ccf:	e8 dc f4 ff ff       	call   c01001b0 <abort>
c0100cd4:	e9 5c ff ff ff       	jmp    c0100c35 <test_consumer+0xa5>
c0100cd9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0100ce0:	c7 44 24 04 1d 00 00 	movl   $0x1d,0x4(%esp)
c0100ce7:	00 
c0100ce8:	c7 04 24 d4 18 10 c0 	movl   $0xc01018d4,(%esp)
c0100cef:	e8 bc f4 ff ff       	call   c01001b0 <abort>
c0100cf4:	e9 0d ff ff ff       	jmp    c0100c06 <test_consumer+0x76>
c0100cf9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0100d00:	c7 44 24 04 1c 00 00 	movl   $0x1c,0x4(%esp)
c0100d07:	00 
c0100d08:	c7 04 24 d4 18 10 c0 	movl   $0xc01018d4,(%esp)
c0100d0f:	e8 9c f4 ff ff       	call   c01001b0 <abort>
c0100d14:	e9 b4 fe ff ff       	jmp    c0100bcd <test_consumer+0x3d>
c0100d19:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0100d20:	c7 44 24 04 20 00 00 	movl   $0x20,0x4(%esp)
c0100d27:	00 
c0100d28:	c7 04 24 d4 18 10 c0 	movl   $0xc01018d4,(%esp)
c0100d2f:	e8 7c f4 ff ff       	call   c01001b0 <abort>
c0100d34:	e9 32 ff ff ff       	jmp    c0100c6b <test_consumer+0xdb>
c0100d39:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0100d40 <test_producer>:
c0100d40:	55                   	push   %ebp
c0100d41:	89 e5                	mov    %esp,%ebp
c0100d43:	53                   	push   %ebx
c0100d44:	bb 67 66 66 66       	mov    $0x66666667,%ebx
c0100d49:	83 ec 24             	sub    $0x24,%esp
c0100d4c:	e9 b7 00 00 00       	jmp    c0100e08 <test_producer+0xc8>
c0100d51:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0100d58:	c7 04 24 0c 80 44 c0 	movl   $0xc044800c,(%esp)
c0100d5f:	e8 ac f5 ff ff       	call   c0100310 <P>
c0100d64:	9c                   	pushf  
c0100d65:	58                   	pop    %eax
c0100d66:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0100d69:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0100d6c:	f6 c4 02             	test   $0x2,%ah
c0100d6f:	0f 84 23 01 00 00    	je     c0100e98 <test_producer+0x158>
c0100d75:	8b 0d 00 31 10 c0    	mov    0xc0103100,%ecx
c0100d7b:	a1 04 20 10 c0       	mov    0xc0102004,%eax
c0100d80:	89 04 8d 18 80 44 c0 	mov    %eax,-0x3fbb7fe8(,%ecx,4)
c0100d87:	83 c1 01             	add    $0x1,%ecx
c0100d8a:	83 c0 01             	add    $0x1,%eax
c0100d8d:	89 0d 00 31 10 c0    	mov    %ecx,0xc0103100
c0100d93:	a3 04 20 10 c0       	mov    %eax,0xc0102004
c0100d98:	9c                   	pushf  
c0100d99:	58                   	pop    %eax
c0100d9a:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0100d9d:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0100da0:	f6 c4 02             	test   $0x2,%ah
c0100da3:	0f 84 cf 00 00 00    	je     c0100e78 <test_producer+0x138>
c0100da9:	89 c8                	mov    %ecx,%eax
c0100dab:	f7 eb                	imul   %ebx
c0100dad:	89 c8                	mov    %ecx,%eax
c0100daf:	c1 f8 1f             	sar    $0x1f,%eax
c0100db2:	d1 fa                	sar    %edx
c0100db4:	29 c2                	sub    %eax,%edx
c0100db6:	8d 04 92             	lea    (%edx,%edx,4),%eax
c0100db9:	29 c1                	sub    %eax,%ecx
c0100dbb:	89 0d 00 31 10 c0    	mov    %ecx,0xc0103100
c0100dc1:	9c                   	pushf  
c0100dc2:	58                   	pop    %eax
c0100dc3:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0100dc6:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0100dc9:	f6 c4 02             	test   $0x2,%ah
c0100dcc:	0f 84 86 00 00 00    	je     c0100e58 <test_producer+0x118>
c0100dd2:	c7 04 24 0c 80 44 c0 	movl   $0xc044800c,(%esp)
c0100dd9:	e8 c2 f5 ff ff       	call   c01003a0 <V>
c0100dde:	9c                   	pushf  
c0100ddf:	58                   	pop    %eax
c0100de0:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0100de3:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0100de6:	f6 c4 02             	test   $0x2,%ah
c0100de9:	74 55                	je     c0100e40 <test_producer+0x100>
c0100deb:	c7 04 24 00 80 44 c0 	movl   $0xc0448000,(%esp)
c0100df2:	e8 a9 f5 ff ff       	call   c01003a0 <V>
c0100df7:	9c                   	pushf  
c0100df8:	58                   	pop    %eax
c0100df9:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0100dfc:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0100dff:	f6 c4 02             	test   $0x2,%ah
c0100e02:	0f 84 b0 00 00 00    	je     c0100eb8 <test_producer+0x178>
c0100e08:	c7 04 24 2c 80 44 c0 	movl   $0xc044802c,(%esp)
c0100e0f:	e8 fc f4 ff ff       	call   c0100310 <P>
c0100e14:	9c                   	pushf  
c0100e15:	58                   	pop    %eax
c0100e16:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0100e19:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0100e1c:	f6 c4 02             	test   $0x2,%ah
c0100e1f:	0f 85 33 ff ff ff    	jne    c0100d58 <test_producer+0x18>
c0100e25:	c7 44 24 04 0e 00 00 	movl   $0xe,0x4(%esp)
c0100e2c:	00 
c0100e2d:	c7 04 24 d4 18 10 c0 	movl   $0xc01018d4,(%esp)
c0100e34:	e8 77 f3 ff ff       	call   c01001b0 <abort>
c0100e39:	e9 1a ff ff ff       	jmp    c0100d58 <test_producer+0x18>
c0100e3e:	66 90                	xchg   %ax,%ax
c0100e40:	c7 44 24 04 12 00 00 	movl   $0x12,0x4(%esp)
c0100e47:	00 
c0100e48:	c7 04 24 d4 18 10 c0 	movl   $0xc01018d4,(%esp)
c0100e4f:	e8 5c f3 ff ff       	call   c01001b0 <abort>
c0100e54:	eb 95                	jmp    c0100deb <test_producer+0xab>
c0100e56:	66 90                	xchg   %ax,%ax
c0100e58:	c7 44 24 04 11 00 00 	movl   $0x11,0x4(%esp)
c0100e5f:	00 
c0100e60:	c7 04 24 d4 18 10 c0 	movl   $0xc01018d4,(%esp)
c0100e67:	e8 44 f3 ff ff       	call   c01001b0 <abort>
c0100e6c:	e9 61 ff ff ff       	jmp    c0100dd2 <test_producer+0x92>
c0100e71:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0100e78:	c7 44 24 04 10 00 00 	movl   $0x10,0x4(%esp)
c0100e7f:	00 
c0100e80:	c7 04 24 d4 18 10 c0 	movl   $0xc01018d4,(%esp)
c0100e87:	e8 24 f3 ff ff       	call   c01001b0 <abort>
c0100e8c:	8b 0d 00 31 10 c0    	mov    0xc0103100,%ecx
c0100e92:	e9 12 ff ff ff       	jmp    c0100da9 <test_producer+0x69>
c0100e97:	90                   	nop
c0100e98:	c7 44 24 04 0f 00 00 	movl   $0xf,0x4(%esp)
c0100e9f:	00 
c0100ea0:	c7 04 24 d4 18 10 c0 	movl   $0xc01018d4,(%esp)
c0100ea7:	e8 04 f3 ff ff       	call   c01001b0 <abort>
c0100eac:	e9 c4 fe ff ff       	jmp    c0100d75 <test_producer+0x35>
c0100eb1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0100eb8:	c7 44 24 04 13 00 00 	movl   $0x13,0x4(%esp)
c0100ebf:	00 
c0100ec0:	c7 04 24 d4 18 10 c0 	movl   $0xc01018d4,(%esp)
c0100ec7:	e8 e4 f2 ff ff       	call   c01001b0 <abort>
c0100ecc:	e9 37 ff ff ff       	jmp    c0100e08 <test_producer+0xc8>
c0100ed1:	eb 0d                	jmp    c0100ee0 <test_setup>
c0100ed3:	90                   	nop
c0100ed4:	90                   	nop
c0100ed5:	90                   	nop
c0100ed6:	90                   	nop
c0100ed7:	90                   	nop
c0100ed8:	90                   	nop
c0100ed9:	90                   	nop
c0100eda:	90                   	nop
c0100edb:	90                   	nop
c0100edc:	90                   	nop
c0100edd:	90                   	nop
c0100ede:	90                   	nop
c0100edf:	90                   	nop

c0100ee0 <test_setup>:
c0100ee0:	55                   	push   %ebp
c0100ee1:	89 e5                	mov    %esp,%ebp
c0100ee3:	83 ec 18             	sub    $0x18,%esp
c0100ee6:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0100eed:	00 
c0100eee:	c7 04 24 00 80 44 c0 	movl   $0xc0448000,(%esp)
c0100ef5:	e8 f6 f3 ff ff       	call   c01002f0 <new_sem>
c0100efa:	c7 44 24 04 05 00 00 	movl   $0x5,0x4(%esp)
c0100f01:	00 
c0100f02:	c7 04 24 2c 80 44 c0 	movl   $0xc044802c,(%esp)
c0100f09:	e8 e2 f3 ff ff       	call   c01002f0 <new_sem>
c0100f0e:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0100f15:	00 
c0100f16:	c7 04 24 0c 80 44 c0 	movl   $0xc044800c,(%esp)
c0100f1d:	e8 ce f3 ff ff       	call   c01002f0 <new_sem>
c0100f22:	c7 04 24 40 0d 10 c0 	movl   $0xc0100d40,(%esp)
c0100f29:	e8 c2 06 00 00       	call   c01015f0 <create_kthread>
c0100f2e:	89 04 24             	mov    %eax,(%esp)
c0100f31:	e8 9a 07 00 00       	call   c01016d0 <wakeup>
c0100f36:	c7 04 24 40 0d 10 c0 	movl   $0xc0100d40,(%esp)
c0100f3d:	e8 ae 06 00 00       	call   c01015f0 <create_kthread>
c0100f42:	89 04 24             	mov    %eax,(%esp)
c0100f45:	e8 86 07 00 00       	call   c01016d0 <wakeup>
c0100f4a:	c7 04 24 40 0d 10 c0 	movl   $0xc0100d40,(%esp)
c0100f51:	e8 9a 06 00 00       	call   c01015f0 <create_kthread>
c0100f56:	89 04 24             	mov    %eax,(%esp)
c0100f59:	e8 72 07 00 00       	call   c01016d0 <wakeup>
c0100f5e:	c7 04 24 90 0b 10 c0 	movl   $0xc0100b90,(%esp)
c0100f65:	e8 86 06 00 00       	call   c01015f0 <create_kthread>
c0100f6a:	89 04 24             	mov    %eax,(%esp)
c0100f6d:	e8 5e 07 00 00       	call   c01016d0 <wakeup>
c0100f72:	c7 04 24 90 0b 10 c0 	movl   $0xc0100b90,(%esp)
c0100f79:	e8 72 06 00 00       	call   c01015f0 <create_kthread>
c0100f7e:	89 04 24             	mov    %eax,(%esp)
c0100f81:	e8 4a 07 00 00       	call   c01016d0 <wakeup>
c0100f86:	c7 04 24 90 0b 10 c0 	movl   $0xc0100b90,(%esp)
c0100f8d:	e8 5e 06 00 00       	call   c01015f0 <create_kthread>
c0100f92:	89 04 24             	mov    %eax,(%esp)
c0100f95:	e8 36 07 00 00       	call   c01016d0 <wakeup>
c0100f9a:	c7 04 24 90 0b 10 c0 	movl   $0xc0100b90,(%esp)
c0100fa1:	e8 4a 06 00 00       	call   c01015f0 <create_kthread>
c0100fa6:	89 04 24             	mov    %eax,(%esp)
c0100fa9:	e8 22 07 00 00       	call   c01016d0 <wakeup>
c0100fae:	c9                   	leave  
c0100faf:	c3                   	ret    

c0100fb0 <os_init>:
c0100fb0:	55                   	push   %ebp
c0100fb1:	89 e5                	mov    %esp,%ebp
c0100fb3:	83 ec 18             	sub    $0x18,%esp
c0100fb6:	e8 b5 fa ff ff       	call   c0100a70 <init_seg>
c0100fbb:	e8 a0 f9 ff ff       	call   c0100960 <init_debug>
c0100fc0:	e8 4b 00 00 00       	call   c0101010 <init_idt>
c0100fc5:	e8 d6 04 00 00       	call   c01014a0 <init_i8259>
c0100fca:	e8 41 05 00 00       	call   c0101510 <queue_init>
c0100fcf:	c7 04 24 f3 18 10 c0 	movl   $0xc01018f3,(%esp)
c0100fd6:	e8 c5 f9 ff ff       	call   c01009a0 <printk>
c0100fdb:	e8 00 ff ff ff       	call   c0100ee0 <test_setup>
c0100fe0:	fb                   	sti    
c0100fe1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0100fe8:	f4                   	hlt    
c0100fe9:	eb fd                	jmp    c0100fe8 <os_init+0x38>
c0100feb:	90                   	nop
c0100fec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

c0100ff0 <entry>:
c0100ff0:	55                   	push   %ebp
c0100ff1:	89 e5                	mov    %esp,%ebp
c0100ff3:	83 ec 08             	sub    $0x8,%esp
c0100ff6:	e8 d5 f9 ff ff       	call   c01009d0 <init_kvm>
c0100ffb:	81 c4 00 00 00 c0    	add    $0xc0000000,%esp
c0101001:	e8 aa ff ff ff       	call   c0100fb0 <os_init>
c0101006:	90                   	nop
c0101007:	90                   	nop
c0101008:	90                   	nop
c0101009:	90                   	nop
c010100a:	90                   	nop
c010100b:	90                   	nop
c010100c:	90                   	nop
c010100d:	90                   	nop
c010100e:	90                   	nop
c010100f:	90                   	nop

c0101010 <init_idt>:
c0101010:	55                   	push   %ebp
c0101011:	31 c0                	xor    %eax,%eax
c0101013:	89 e5                	mov    %esp,%ebp
c0101015:	ba 40 80 44 c0       	mov    $0xc0448040,%edx
c010101a:	56                   	push   %esi
c010101b:	53                   	push   %ebx
c010101c:	bb ea 17 10 c0       	mov    $0xc01017ea,%ebx
c0101021:	89 de                	mov    %ebx,%esi
c0101023:	c1 eb 10             	shr    $0x10,%ebx
c0101026:	66 90                	xchg   %ax,%ax
c0101028:	66 89 34 c5 40 80 44 	mov    %si,-0x3fbb7fc0(,%eax,8)
c010102f:	c0 
c0101030:	b9 40 80 44 c0       	mov    $0xc0448040,%ecx
c0101035:	66 c7 44 c2 02 08 00 	movw   $0x8,0x2(%edx,%eax,8)
c010103c:	c6 44 c2 04 00       	movb   $0x0,0x4(%edx,%eax,8)
c0101041:	c6 44 c2 05 8f       	movb   $0x8f,0x5(%edx,%eax,8)
c0101046:	66 89 5c c2 06       	mov    %bx,0x6(%edx,%eax,8)
c010104b:	83 c0 01             	add    $0x1,%eax
c010104e:	3d 00 01 00 00       	cmp    $0x100,%eax
c0101053:	75 d3                	jne    c0101028 <init_idt+0x18>
c0101055:	b8 78 17 10 c0       	mov    $0xc0101778,%eax
c010105a:	66 a3 40 80 44 c0    	mov    %ax,0xc0448040
c0101060:	c1 e8 10             	shr    $0x10,%eax
c0101063:	66 a3 46 80 44 c0    	mov    %ax,0xc0448046
c0101069:	b8 7e 17 10 c0       	mov    $0xc010177e,%eax
c010106e:	66 a3 48 80 44 c0    	mov    %ax,0xc0448048
c0101074:	c1 e8 10             	shr    $0x10,%eax
c0101077:	66 a3 4e 80 44 c0    	mov    %ax,0xc044804e
c010107d:	b8 84 17 10 c0       	mov    $0xc0101784,%eax
c0101082:	66 a3 50 80 44 c0    	mov    %ax,0xc0448050
c0101088:	c1 e8 10             	shr    $0x10,%eax
c010108b:	66 a3 56 80 44 c0    	mov    %ax,0xc0448056
c0101091:	b8 8a 17 10 c0       	mov    $0xc010178a,%eax
c0101096:	66 a3 58 80 44 c0    	mov    %ax,0xc0448058
c010109c:	c1 e8 10             	shr    $0x10,%eax
c010109f:	66 a3 5e 80 44 c0    	mov    %ax,0xc044805e
c01010a5:	b8 90 17 10 c0       	mov    $0xc0101790,%eax
c01010aa:	66 a3 60 80 44 c0    	mov    %ax,0xc0448060
c01010b0:	c1 e8 10             	shr    $0x10,%eax
c01010b3:	66 a3 66 80 44 c0    	mov    %ax,0xc0448066
c01010b9:	b8 96 17 10 c0       	mov    $0xc0101796,%eax
c01010be:	66 a3 68 80 44 c0    	mov    %ax,0xc0448068
c01010c4:	c1 e8 10             	shr    $0x10,%eax
c01010c7:	66 a3 6e 80 44 c0    	mov    %ax,0xc044806e
c01010cd:	b8 9c 17 10 c0       	mov    $0xc010179c,%eax
c01010d2:	66 a3 70 80 44 c0    	mov    %ax,0xc0448070
c01010d8:	c1 e8 10             	shr    $0x10,%eax
c01010db:	66 c7 05 42 80 44 c0 	movw   $0x8,0xc0448042
c01010e2:	08 00 
c01010e4:	c6 05 44 80 44 c0 00 	movb   $0x0,0xc0448044
c01010eb:	c6 05 45 80 44 c0 8f 	movb   $0x8f,0xc0448045
c01010f2:	66 c7 05 4a 80 44 c0 	movw   $0x8,0xc044804a
c01010f9:	08 00 
c01010fb:	c6 05 4c 80 44 c0 00 	movb   $0x0,0xc044804c
c0101102:	c6 05 4d 80 44 c0 8f 	movb   $0x8f,0xc044804d
c0101109:	66 c7 05 52 80 44 c0 	movw   $0x8,0xc0448052
c0101110:	08 00 
c0101112:	c6 05 54 80 44 c0 00 	movb   $0x0,0xc0448054
c0101119:	c6 05 55 80 44 c0 8f 	movb   $0x8f,0xc0448055
c0101120:	66 c7 05 5a 80 44 c0 	movw   $0x8,0xc044805a
c0101127:	08 00 
c0101129:	c6 05 5c 80 44 c0 00 	movb   $0x0,0xc044805c
c0101130:	c6 05 5d 80 44 c0 8f 	movb   $0x8f,0xc044805d
c0101137:	66 c7 05 62 80 44 c0 	movw   $0x8,0xc0448062
c010113e:	08 00 
c0101140:	c6 05 64 80 44 c0 00 	movb   $0x0,0xc0448064
c0101147:	c6 05 65 80 44 c0 8f 	movb   $0x8f,0xc0448065
c010114e:	66 c7 05 6a 80 44 c0 	movw   $0x8,0xc044806a
c0101155:	08 00 
c0101157:	c6 05 6c 80 44 c0 00 	movb   $0x0,0xc044806c
c010115e:	c6 05 6d 80 44 c0 8f 	movb   $0x8f,0xc044806d
c0101165:	66 c7 05 72 80 44 c0 	movw   $0x8,0xc0448072
c010116c:	08 00 
c010116e:	c6 05 74 80 44 c0 00 	movb   $0x0,0xc0448074
c0101175:	c6 05 75 80 44 c0 8f 	movb   $0x8f,0xc0448075
c010117c:	66 a3 76 80 44 c0    	mov    %ax,0xc0448076
c0101182:	b8 a2 17 10 c0       	mov    $0xc01017a2,%eax
c0101187:	66 a3 78 80 44 c0    	mov    %ax,0xc0448078
c010118d:	c1 e8 10             	shr    $0x10,%eax
c0101190:	66 a3 7e 80 44 c0    	mov    %ax,0xc044807e
c0101196:	b8 a8 17 10 c0       	mov    $0xc01017a8,%eax
c010119b:	66 a3 80 80 44 c0    	mov    %ax,0xc0448080
c01011a1:	c1 e8 10             	shr    $0x10,%eax
c01011a4:	66 a3 86 80 44 c0    	mov    %ax,0xc0448086
c01011aa:	b8 ac 17 10 c0       	mov    $0xc01017ac,%eax
c01011af:	66 a3 88 80 44 c0    	mov    %ax,0xc0448088
c01011b5:	c1 e8 10             	shr    $0x10,%eax
c01011b8:	66 a3 8e 80 44 c0    	mov    %ax,0xc044808e
c01011be:	b8 b2 17 10 c0       	mov    $0xc01017b2,%eax
c01011c3:	66 a3 90 80 44 c0    	mov    %ax,0xc0448090
c01011c9:	c1 e8 10             	shr    $0x10,%eax
c01011cc:	66 a3 96 80 44 c0    	mov    %ax,0xc0448096
c01011d2:	b8 b6 17 10 c0       	mov    $0xc01017b6,%eax
c01011d7:	66 a3 98 80 44 c0    	mov    %ax,0xc0448098
c01011dd:	c1 e8 10             	shr    $0x10,%eax
c01011e0:	66 a3 9e 80 44 c0    	mov    %ax,0xc044809e
c01011e6:	b8 ba 17 10 c0       	mov    $0xc01017ba,%eax
c01011eb:	66 a3 a0 80 44 c0    	mov    %ax,0xc04480a0
c01011f1:	c1 e8 10             	shr    $0x10,%eax
c01011f4:	66 a3 a6 80 44 c0    	mov    %ax,0xc04480a6
c01011fa:	b8 be 17 10 c0       	mov    $0xc01017be,%eax
c01011ff:	66 a3 a8 80 44 c0    	mov    %ax,0xc04480a8
c0101205:	c1 e8 10             	shr    $0x10,%eax
c0101208:	66 c7 05 7a 80 44 c0 	movw   $0x8,0xc044807a
c010120f:	08 00 
c0101211:	c6 05 7c 80 44 c0 00 	movb   $0x0,0xc044807c
c0101218:	c6 05 7d 80 44 c0 8f 	movb   $0x8f,0xc044807d
c010121f:	66 c7 05 82 80 44 c0 	movw   $0x8,0xc0448082
c0101226:	08 00 
c0101228:	c6 05 84 80 44 c0 00 	movb   $0x0,0xc0448084
c010122f:	c6 05 85 80 44 c0 8f 	movb   $0x8f,0xc0448085
c0101236:	66 c7 05 8a 80 44 c0 	movw   $0x8,0xc044808a
c010123d:	08 00 
c010123f:	c6 05 8c 80 44 c0 00 	movb   $0x0,0xc044808c
c0101246:	c6 05 8d 80 44 c0 8f 	movb   $0x8f,0xc044808d
c010124d:	66 c7 05 92 80 44 c0 	movw   $0x8,0xc0448092
c0101254:	08 00 
c0101256:	c6 05 94 80 44 c0 00 	movb   $0x0,0xc0448094
c010125d:	c6 05 95 80 44 c0 8f 	movb   $0x8f,0xc0448095
c0101264:	66 c7 05 9a 80 44 c0 	movw   $0x8,0xc044809a
c010126b:	08 00 
c010126d:	c6 05 9c 80 44 c0 00 	movb   $0x0,0xc044809c
c0101274:	c6 05 9d 80 44 c0 8f 	movb   $0x8f,0xc044809d
c010127b:	66 c7 05 a2 80 44 c0 	movw   $0x8,0xc04480a2
c0101282:	08 00 
c0101284:	c6 05 a4 80 44 c0 00 	movb   $0x0,0xc04480a4
c010128b:	c6 05 a5 80 44 c0 8f 	movb   $0x8f,0xc04480a5
c0101292:	66 c7 05 aa 80 44 c0 	movw   $0x8,0xc04480aa
c0101299:	08 00 
c010129b:	c6 05 ac 80 44 c0 00 	movb   $0x0,0xc04480ac
c01012a2:	66 a3 ae 80 44 c0    	mov    %ax,0xc04480ae
c01012a8:	b8 c2 17 10 c0       	mov    $0xc01017c2,%eax
c01012ad:	66 a3 b0 80 44 c0    	mov    %ax,0xc04480b0
c01012b3:	c1 e8 10             	shr    $0x10,%eax
c01012b6:	66 a3 b6 80 44 c0    	mov    %ax,0xc04480b6
c01012bc:	b8 cf 17 10 c0       	mov    $0xc01017cf,%eax
c01012c1:	66 a3 40 81 44 c0    	mov    %ax,0xc0448140
c01012c7:	c1 e8 10             	shr    $0x10,%eax
c01012ca:	66 a3 46 81 44 c0    	mov    %ax,0xc0448146
c01012d0:	b8 d8 17 10 c0       	mov    $0xc01017d8,%eax
c01012d5:	66 a3 48 81 44 c0    	mov    %ax,0xc0448148
c01012db:	c1 e8 10             	shr    $0x10,%eax
c01012de:	66 a3 4e 81 44 c0    	mov    %ax,0xc044814e
c01012e4:	b8 e1 17 10 c0       	mov    $0xc01017e1,%eax
c01012e9:	66 a3 b0 81 44 c0    	mov    %ax,0xc04481b0
c01012ef:	c1 e8 10             	shr    $0x10,%eax
c01012f2:	66 a3 b6 81 44 c0    	mov    %ax,0xc04481b6
c01012f8:	b8 c6 17 10 c0       	mov    $0xc01017c6,%eax
c01012fd:	66 c7 05 04 31 10 c0 	movw   $0x7ff,0xc0103104
c0101304:	ff 07 
c0101306:	66 a3 40 84 44 c0    	mov    %ax,0xc0448440
c010130c:	c1 e8 10             	shr    $0x10,%eax
c010130f:	66 89 0d 06 31 10 c0 	mov    %cx,0xc0103106
c0101316:	c1 e9 10             	shr    $0x10,%ecx
c0101319:	66 a3 46 84 44 c0    	mov    %ax,0xc0448446
c010131f:	b8 04 31 10 c0       	mov    $0xc0103104,%eax
c0101324:	66 89 0d 08 31 10 c0 	mov    %cx,0xc0103108
c010132b:	c6 05 ad 80 44 c0 8f 	movb   $0x8f,0xc04480ad
c0101332:	0f 01 18             	lidtl  (%eax)
c0101335:	66 c7 05 b2 80 44 c0 	movw   $0x8,0xc04480b2
c010133c:	08 00 
c010133e:	5b                   	pop    %ebx
c010133f:	c6 05 b4 80 44 c0 00 	movb   $0x0,0xc04480b4
c0101346:	5e                   	pop    %esi
c0101347:	c6 05 b5 80 44 c0 8f 	movb   $0x8f,0xc04480b5
c010134e:	66 c7 05 42 81 44 c0 	movw   $0x8,0xc0448142
c0101355:	08 00 
c0101357:	c6 05 44 81 44 c0 00 	movb   $0x0,0xc0448144
c010135e:	c6 05 45 81 44 c0 8e 	movb   $0x8e,0xc0448145
c0101365:	66 c7 05 4a 81 44 c0 	movw   $0x8,0xc044814a
c010136c:	08 00 
c010136e:	c6 05 4c 81 44 c0 00 	movb   $0x0,0xc044814c
c0101375:	c6 05 4d 81 44 c0 8e 	movb   $0x8e,0xc044814d
c010137c:	66 c7 05 b2 81 44 c0 	movw   $0x8,0xc04481b2
c0101383:	08 00 
c0101385:	c6 05 b4 81 44 c0 00 	movb   $0x0,0xc04481b4
c010138c:	c6 05 b5 81 44 c0 8e 	movb   $0x8e,0xc04481b5
c0101393:	66 c7 05 42 84 44 c0 	movw   $0x8,0xc0448442
c010139a:	08 00 
c010139c:	c6 05 44 84 44 c0 00 	movb   $0x0,0xc0448444
c01013a3:	c6 05 45 84 44 c0 ef 	movb   $0xef,0xc0448445
c01013aa:	5d                   	pop    %ebp
c01013ab:	c3                   	ret    
c01013ac:	90                   	nop
c01013ad:	90                   	nop
c01013ae:	90                   	nop
c01013af:	90                   	nop

c01013b0 <irq_handle>:
c01013b0:	55                   	push   %ebp
c01013b1:	89 e5                	mov    %esp,%ebp
c01013b3:	83 ec 18             	sub    $0x18,%esp
c01013b6:	89 5d f8             	mov    %ebx,-0x8(%ebp)
c01013b9:	8b 5d 08             	mov    0x8(%ebp),%ebx
c01013bc:	89 75 fc             	mov    %esi,-0x4(%ebp)
c01013bf:	8b 73 30             	mov    0x30(%ebx),%esi
c01013c2:	85 f6                	test   %esi,%esi
c01013c4:	0f 88 ae 00 00 00    	js     c0101478 <irq_handle+0xc8>
c01013ca:	81 fe 80 00 00 00    	cmp    $0x80,%esi
c01013d0:	75 46                	jne    c0101418 <irq_handle+0x68>
c01013d2:	81 fe 80 00 00 00    	cmp    $0x80,%esi
c01013d8:	75 26                	jne    c0101400 <irq_handle+0x50>
c01013da:	a1 0c 31 10 c0       	mov    0xc010310c,%eax
c01013df:	85 c0                	test   %eax,%eax
c01013e1:	74 07                	je     c01013ea <irq_handle+0x3a>
c01013e3:	89 18                	mov    %ebx,(%eax)
c01013e5:	e8 46 01 00 00       	call   c0101530 <schedule>
c01013ea:	e8 c1 01 00 00       	call   c01015b0 <next_process>
c01013ef:	8b 5d f8             	mov    -0x8(%ebp),%ebx
c01013f2:	8b 75 fc             	mov    -0x4(%ebp),%esi
c01013f5:	a3 0c 31 10 c0       	mov    %eax,0xc010310c
c01013fa:	89 ec                	mov    %ebp,%esp
c01013fc:	5d                   	pop    %ebp
c01013fd:	c3                   	ret    
c01013fe:	66 90                	xchg   %ax,%ax
c0101400:	81 fe e7 03 00 00    	cmp    $0x3e7,%esi
c0101406:	7f d2                	jg     c01013da <irq_handle+0x2a>
c0101408:	8b 5d f8             	mov    -0x8(%ebp),%ebx
c010140b:	8b 75 fc             	mov    -0x4(%ebp),%esi
c010140e:	89 ec                	mov    %ebp,%esp
c0101410:	5d                   	pop    %ebp
c0101411:	c3                   	ret    
c0101412:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0101418:	81 fe e7 03 00 00    	cmp    $0x3e7,%esi
c010141e:	7f b2                	jg     c01013d2 <irq_handle+0x22>
c0101420:	fa                   	cli    
c0101421:	89 74 24 04          	mov    %esi,0x4(%esp)
c0101425:	c7 04 24 27 19 10 c0 	movl   $0xc0101927,(%esp)
c010142c:	e8 6f f5 ff ff       	call   c01009a0 <printk>
c0101431:	8b 43 34             	mov    0x34(%ebx),%eax
c0101434:	c7 04 24 41 19 10 c0 	movl   $0xc0101941,(%esp)
c010143b:	89 44 24 04          	mov    %eax,0x4(%esp)
c010143f:	e8 5c f5 ff ff       	call   c01009a0 <printk>
c0101444:	89 5c 24 0c          	mov    %ebx,0xc(%esp)
c0101448:	8b 43 38             	mov    0x38(%ebx),%eax
c010144b:	89 44 24 08          	mov    %eax,0x8(%esp)
c010144f:	8b 43 3c             	mov    0x3c(%ebx),%eax
c0101452:	c7 04 24 50 19 10 c0 	movl   $0xc0101950,(%esp)
c0101459:	89 44 24 04          	mov    %eax,0x4(%esp)
c010145d:	e8 3e f5 ff ff       	call   c01009a0 <printk>
c0101462:	8b 5d f8             	mov    -0x8(%ebp),%ebx
c0101465:	c7 45 08 6a 19 10 c0 	movl   $0xc010196a,0x8(%ebp)
c010146c:	8b 75 fc             	mov    -0x4(%ebp),%esi
c010146f:	89 ec                	mov    %ebp,%esp
c0101471:	5d                   	pop    %ebp
c0101472:	e9 69 ed ff ff       	jmp    c01001e0 <panic>
c0101477:	90                   	nop
c0101478:	c7 44 24 04 05 00 00 	movl   $0x5,0x4(%esp)
c010147f:	00 
c0101480:	c7 04 24 0b 19 10 c0 	movl   $0xc010190b,(%esp)
c0101487:	e8 24 ed ff ff       	call   c01001b0 <abort>
c010148c:	e9 39 ff ff ff       	jmp    c01013ca <irq_handle+0x1a>
c0101491:	90                   	nop
c0101492:	90                   	nop
c0101493:	90                   	nop
c0101494:	90                   	nop
c0101495:	90                   	nop
c0101496:	90                   	nop
c0101497:	90                   	nop
c0101498:	90                   	nop
c0101499:	90                   	nop
c010149a:	90                   	nop
c010149b:	90                   	nop
c010149c:	90                   	nop
c010149d:	90                   	nop
c010149e:	90                   	nop
c010149f:	90                   	nop

c01014a0 <init_i8259>:
c01014a0:	55                   	push   %ebp
c01014a1:	ba 21 00 00 00       	mov    $0x21,%edx
c01014a6:	89 e5                	mov    %esp,%ebp
c01014a8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c01014ad:	ee                   	out    %al,(%dx)
c01014ae:	b2 a1                	mov    $0xa1,%dl
c01014b0:	ee                   	out    %al,(%dx)
c01014b1:	b8 11 00 00 00       	mov    $0x11,%eax
c01014b6:	b2 20                	mov    $0x20,%dl
c01014b8:	ee                   	out    %al,(%dx)
c01014b9:	b8 20 00 00 00       	mov    $0x20,%eax
c01014be:	b2 21                	mov    $0x21,%dl
c01014c0:	ee                   	out    %al,(%dx)
c01014c1:	b8 04 00 00 00       	mov    $0x4,%eax
c01014c6:	ee                   	out    %al,(%dx)
c01014c7:	b8 03 00 00 00       	mov    $0x3,%eax
c01014cc:	ee                   	out    %al,(%dx)
c01014cd:	b8 11 00 00 00       	mov    $0x11,%eax
c01014d2:	b2 a0                	mov    $0xa0,%dl
c01014d4:	ee                   	out    %al,(%dx)
c01014d5:	b8 28 00 00 00       	mov    $0x28,%eax
c01014da:	b2 a1                	mov    $0xa1,%dl
c01014dc:	ee                   	out    %al,(%dx)
c01014dd:	b8 02 00 00 00       	mov    $0x2,%eax
c01014e2:	ee                   	out    %al,(%dx)
c01014e3:	b8 03 00 00 00       	mov    $0x3,%eax
c01014e8:	ee                   	out    %al,(%dx)
c01014e9:	b8 68 00 00 00       	mov    $0x68,%eax
c01014ee:	b2 20                	mov    $0x20,%dl
c01014f0:	ee                   	out    %al,(%dx)
c01014f1:	b8 0a 00 00 00       	mov    $0xa,%eax
c01014f6:	ee                   	out    %al,(%dx)
c01014f7:	b8 68 00 00 00       	mov    $0x68,%eax
c01014fc:	b2 a0                	mov    $0xa0,%dl
c01014fe:	ee                   	out    %al,(%dx)
c01014ff:	b8 0a 00 00 00       	mov    $0xa,%eax
c0101504:	ee                   	out    %al,(%dx)
c0101505:	5d                   	pop    %ebp
c0101506:	c3                   	ret    
c0101507:	90                   	nop
c0101508:	90                   	nop
c0101509:	90                   	nop
c010150a:	90                   	nop
c010150b:	90                   	nop
c010150c:	90                   	nop
c010150d:	90                   	nop
c010150e:	90                   	nop
c010150f:	90                   	nop

c0101510 <queue_init>:
c0101510:	55                   	push   %ebp
c0101511:	89 e5                	mov    %esp,%ebp
c0101513:	c7 05 44 88 44 c0 40 	movl   $0xc0448840,0xc0448844
c010151a:	88 44 c0 
c010151d:	c7 05 40 88 44 c0 40 	movl   $0xc0448840,0xc0448840
c0101524:	88 44 c0 
c0101527:	5d                   	pop    %ebp
c0101528:	c3                   	ret    
c0101529:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0101530 <schedule>:
c0101530:	55                   	push   %ebp
c0101531:	89 e5                	mov    %esp,%ebp
c0101533:	53                   	push   %ebx
c0101534:	83 ec 14             	sub    $0x14,%esp
c0101537:	81 3d 44 88 44 c0 40 	cmpl   $0xc0448840,0xc0448844
c010153e:	88 44 c0 
c0101541:	74 3d                	je     c0101580 <schedule+0x50>
c0101543:	8b 1d 40 88 44 c0    	mov    0xc0448840,%ebx
c0101549:	85 db                	test   %ebx,%ebx
c010154b:	74 4b                	je     c0101598 <schedule+0x68>
c010154d:	8b 13                	mov    (%ebx),%edx
c010154f:	8b 43 04             	mov    0x4(%ebx),%eax
c0101552:	85 d2                	test   %edx,%edx
c0101554:	74 03                	je     c0101559 <schedule+0x29>
c0101556:	89 42 04             	mov    %eax,0x4(%edx)
c0101559:	85 c0                	test   %eax,%eax
c010155b:	74 02                	je     c010155f <schedule+0x2f>
c010155d:	89 10                	mov    %edx,(%eax)
c010155f:	a1 44 88 44 c0       	mov    0xc0448844,%eax
c0101564:	c7 03 40 88 44 c0    	movl   $0xc0448840,(%ebx)
c010156a:	85 c0                	test   %eax,%eax
c010156c:	89 43 04             	mov    %eax,0x4(%ebx)
c010156f:	89 1d 44 88 44 c0    	mov    %ebx,0xc0448844
c0101575:	74 02                	je     c0101579 <schedule+0x49>
c0101577:	89 18                	mov    %ebx,(%eax)
c0101579:	83 c4 14             	add    $0x14,%esp
c010157c:	5b                   	pop    %ebx
c010157d:	5d                   	pop    %ebp
c010157e:	c3                   	ret    
c010157f:	90                   	nop
c0101580:	c7 44 24 04 1e 00 00 	movl   $0x1e,0x4(%esp)
c0101587:	00 
c0101588:	c7 04 24 7f 19 10 c0 	movl   $0xc010197f,(%esp)
c010158f:	e8 1c ec ff ff       	call   c01001b0 <abort>
c0101594:	eb ad                	jmp    c0101543 <schedule+0x13>
c0101596:	66 90                	xchg   %ax,%ax
c0101598:	c7 44 24 04 23 00 00 	movl   $0x23,0x4(%esp)
c010159f:	00 
c01015a0:	c7 04 24 9b 18 10 c0 	movl   $0xc010189b,(%esp)
c01015a7:	e8 04 ec ff ff       	call   c01001b0 <abort>
c01015ac:	eb 9f                	jmp    c010154d <schedule+0x1d>
c01015ae:	66 90                	xchg   %ax,%ax

c01015b0 <next_process>:
c01015b0:	55                   	push   %ebp
c01015b1:	89 e5                	mov    %esp,%ebp
c01015b3:	83 ec 18             	sub    $0x18,%esp
c01015b6:	a1 44 88 44 c0       	mov    0xc0448844,%eax
c01015bb:	3d 40 88 44 c0       	cmp    $0xc0448840,%eax
c01015c0:	74 06                	je     c01015c8 <next_process+0x18>
c01015c2:	83 e8 04             	sub    $0x4,%eax
c01015c5:	c9                   	leave  
c01015c6:	c3                   	ret    
c01015c7:	90                   	nop
c01015c8:	c7 44 24 04 26 00 00 	movl   $0x26,0x4(%esp)
c01015cf:	00 
c01015d0:	c7 04 24 7f 19 10 c0 	movl   $0xc010197f,(%esp)
c01015d7:	e8 d4 eb ff ff       	call   c01001b0 <abort>
c01015dc:	a1 44 88 44 c0       	mov    0xc0448844,%eax
c01015e1:	c9                   	leave  
c01015e2:	83 e8 04             	sub    $0x4,%eax
c01015e5:	c3                   	ret    
c01015e6:	90                   	nop
c01015e7:	90                   	nop
c01015e8:	90                   	nop
c01015e9:	90                   	nop
c01015ea:	90                   	nop
c01015eb:	90                   	nop
c01015ec:	90                   	nop
c01015ed:	90                   	nop
c01015ee:	90                   	nop
c01015ef:	90                   	nop

c01015f0 <create_kthread>:
c01015f0:	55                   	push   %ebp
c01015f1:	89 e5                	mov    %esp,%ebp
c01015f3:	83 ec 28             	sub    $0x28,%esp
c01015f6:	c7 04 24 60 1f 00 00 	movl   $0x1f60,(%esp)
c01015fd:	e8 6e ef ff ff       	call   c0100570 <malloc>
c0101602:	85 c0                	test   %eax,%eax
c0101604:	0f 84 9e 00 00 00    	je     c01016a8 <create_kthread+0xb8>
c010160a:	8b 15 10 31 10 c0    	mov    0xc0103110,%edx
c0101610:	c7 40 14 00 00 00 00 	movl   $0x0,0x14(%eax)
c0101617:	c7 80 2d 1f 00 00 00 	movl   $0x0,0x1f2d(%eax)
c010161e:	00 00 00 
c0101621:	c7 80 29 1f 00 00 00 	movl   $0x0,0x1f29(%eax)
c0101628:	00 00 00 
c010162b:	89 50 18             	mov    %edx,0x18(%eax)
c010162e:	83 c2 01             	add    $0x1,%edx
c0101631:	89 15 10 31 10 c0    	mov    %edx,0xc0103110
c0101637:	8d 90 11 1f 00 00    	lea    0x1f11(%eax),%edx
c010163d:	89 10                	mov    %edx,(%eax)
c010163f:	8b 55 08             	mov    0x8(%ebp),%edx
c0101642:	c7 80 25 1f 00 00 00 	movl   $0x0,0x1f25(%eax)
c0101649:	00 00 00 
c010164c:	c7 80 21 1f 00 00 00 	movl   $0x0,0x1f21(%eax)
c0101653:	00 00 00 
c0101656:	c7 80 19 1f 00 00 00 	movl   $0x0,0x1f19(%eax)
c010165d:	00 00 00 
c0101660:	c7 80 15 1f 00 00 00 	movl   $0x0,0x1f15(%eax)
c0101667:	00 00 00 
c010166a:	c7 80 11 1f 00 00 00 	movl   $0x0,0x1f11(%eax)
c0101671:	00 00 00 
c0101674:	c7 80 39 1f 00 00 10 	movl   $0x10,0x1f39(%eax)
c010167b:	00 00 00 
c010167e:	c7 80 3d 1f 00 00 10 	movl   $0x10,0x1f3d(%eax)
c0101685:	00 00 00 
c0101688:	89 90 49 1f 00 00    	mov    %edx,0x1f49(%eax)
c010168e:	c7 80 4d 1f 00 00 08 	movl   $0x8,0x1f4d(%eax)
c0101695:	00 00 00 
c0101698:	c7 80 51 1f 00 00 00 	movl   $0x200,0x1f51(%eax)
c010169f:	02 00 00 
c01016a2:	c9                   	leave  
c01016a3:	c3                   	ret    
c01016a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c01016a8:	89 45 f4             	mov    %eax,-0xc(%ebp)
c01016ab:	c7 44 24 04 1a 00 00 	movl   $0x1a,0x4(%esp)
c01016b2:	00 
c01016b3:	c7 04 24 96 19 10 c0 	movl   $0xc0101996,(%esp)
c01016ba:	e8 f1 ea ff ff       	call   c01001b0 <abort>
c01016bf:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01016c2:	e9 43 ff ff ff       	jmp    c010160a <create_kthread+0x1a>
c01016c7:	89 f6                	mov    %esi,%esi
c01016c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c01016d0 <wakeup>:
c01016d0:	55                   	push   %ebp
c01016d1:	89 e5                	mov    %esp,%ebp
c01016d3:	83 ec 28             	sub    $0x28,%esp
c01016d6:	89 5d f4             	mov    %ebx,-0xc(%ebp)
c01016d9:	8b 5d 08             	mov    0x8(%ebp),%ebx
c01016dc:	89 7d fc             	mov    %edi,-0x4(%ebp)
c01016df:	89 75 f8             	mov    %esi,-0x8(%ebp)
c01016e2:	8b 35 44 88 44 c0    	mov    0xc0448844,%esi
c01016e8:	89 df                	mov    %ebx,%edi
c01016ea:	83 c7 04             	add    $0x4,%edi
c01016ed:	74 29                	je     c0101718 <wakeup+0x48>
c01016ef:	85 f6                	test   %esi,%esi
c01016f1:	c7 43 04 40 88 44 c0 	movl   $0xc0448840,0x4(%ebx)
c01016f8:	89 73 08             	mov    %esi,0x8(%ebx)
c01016fb:	89 3d 44 88 44 c0    	mov    %edi,0xc0448844
c0101701:	74 02                	je     c0101705 <wakeup+0x35>
c0101703:	89 3e                	mov    %edi,(%esi)
c0101705:	8b 5d f4             	mov    -0xc(%ebp),%ebx
c0101708:	8b 75 f8             	mov    -0x8(%ebp),%esi
c010170b:	8b 7d fc             	mov    -0x4(%ebp),%edi
c010170e:	89 ec                	mov    %ebp,%esp
c0101710:	5d                   	pop    %ebp
c0101711:	c3                   	ret    
c0101712:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0101718:	c7 44 24 04 10 00 00 	movl   $0x10,0x4(%esp)
c010171f:	00 
c0101720:	c7 04 24 9b 18 10 c0 	movl   $0xc010189b,(%esp)
c0101727:	e8 84 ea ff ff       	call   c01001b0 <abort>
c010172c:	eb c1                	jmp    c01016ef <wakeup+0x1f>
c010172e:	66 90                	xchg   %ax,%ax

c0101730 <sleep>:
c0101730:	55                   	push   %ebp
c0101731:	89 e5                	mov    %esp,%ebp
c0101733:	53                   	push   %ebx
c0101734:	83 ec 14             	sub    $0x14,%esp
c0101737:	8b 1d 0c 31 10 c0    	mov    0xc010310c,%ebx
c010173d:	83 fb fc             	cmp    $0xfffffffc,%ebx
c0101740:	74 1e                	je     c0101760 <sleep+0x30>
c0101742:	8b 53 04             	mov    0x4(%ebx),%edx
c0101745:	8b 43 08             	mov    0x8(%ebx),%eax
c0101748:	85 d2                	test   %edx,%edx
c010174a:	74 03                	je     c010174f <sleep+0x1f>
c010174c:	89 42 04             	mov    %eax,0x4(%edx)
c010174f:	85 c0                	test   %eax,%eax
c0101751:	74 02                	je     c0101755 <sleep+0x25>
c0101753:	89 10                	mov    %edx,(%eax)
c0101755:	cd 80                	int    $0x80
c0101757:	83 c4 14             	add    $0x14,%esp
c010175a:	5b                   	pop    %ebx
c010175b:	5d                   	pop    %ebp
c010175c:	c3                   	ret    
c010175d:	8d 76 00             	lea    0x0(%esi),%esi
c0101760:	c7 44 24 04 23 00 00 	movl   $0x23,0x4(%esp)
c0101767:	00 
c0101768:	c7 04 24 9b 18 10 c0 	movl   $0xc010189b,(%esp)
c010176f:	e8 3c ea ff ff       	call   c01001b0 <abort>
c0101774:	eb cc                	jmp    c0101742 <sleep+0x12>
c0101776:	90                   	nop
c0101777:	90                   	nop

c0101778 <vec0>:
c0101778:	6a 00                	push   $0x0
c010177a:	6a 00                	push   $0x0
c010177c:	eb 72                	jmp    c01017f0 <trap>

c010177e <vec1>:
c010177e:	6a 00                	push   $0x0
c0101780:	6a 01                	push   $0x1
c0101782:	eb 6c                	jmp    c01017f0 <trap>

c0101784 <vec2>:
c0101784:	6a 00                	push   $0x0
c0101786:	6a 02                	push   $0x2
c0101788:	eb 66                	jmp    c01017f0 <trap>

c010178a <vec3>:
c010178a:	6a 00                	push   $0x0
c010178c:	6a 03                	push   $0x3
c010178e:	eb 60                	jmp    c01017f0 <trap>

c0101790 <vec4>:
c0101790:	6a 00                	push   $0x0
c0101792:	6a 04                	push   $0x4
c0101794:	eb 5a                	jmp    c01017f0 <trap>

c0101796 <vec5>:
c0101796:	6a 00                	push   $0x0
c0101798:	6a 05                	push   $0x5
c010179a:	eb 54                	jmp    c01017f0 <trap>

c010179c <vec6>:
c010179c:	6a 00                	push   $0x0
c010179e:	6a 06                	push   $0x6
c01017a0:	eb 4e                	jmp    c01017f0 <trap>

c01017a2 <vec7>:
c01017a2:	6a 00                	push   $0x0
c01017a4:	6a 07                	push   $0x7
c01017a6:	eb 48                	jmp    c01017f0 <trap>

c01017a8 <vec8>:
c01017a8:	6a 08                	push   $0x8
c01017aa:	eb 44                	jmp    c01017f0 <trap>

c01017ac <vec9>:
c01017ac:	6a 00                	push   $0x0
c01017ae:	6a 09                	push   $0x9
c01017b0:	eb 3e                	jmp    c01017f0 <trap>

c01017b2 <vec10>:
c01017b2:	6a 0a                	push   $0xa
c01017b4:	eb 3a                	jmp    c01017f0 <trap>

c01017b6 <vec11>:
c01017b6:	6a 0b                	push   $0xb
c01017b8:	eb 36                	jmp    c01017f0 <trap>

c01017ba <vec12>:
c01017ba:	6a 0c                	push   $0xc
c01017bc:	eb 32                	jmp    c01017f0 <trap>

c01017be <vec13>:
c01017be:	6a 0d                	push   $0xd
c01017c0:	eb 2e                	jmp    c01017f0 <trap>

c01017c2 <vec14>:
c01017c2:	6a 0e                	push   $0xe
c01017c4:	eb 2a                	jmp    c01017f0 <trap>

c01017c6 <vecsys>:
c01017c6:	6a 00                	push   $0x0
c01017c8:	68 80 00 00 00       	push   $0x80
c01017cd:	eb 21                	jmp    c01017f0 <trap>

c01017cf <irq0>:
c01017cf:	6a 00                	push   $0x0
c01017d1:	68 e8 03 00 00       	push   $0x3e8
c01017d6:	eb 18                	jmp    c01017f0 <trap>

c01017d8 <irq1>:
c01017d8:	6a 00                	push   $0x0
c01017da:	68 e9 03 00 00       	push   $0x3e9
c01017df:	eb 0f                	jmp    c01017f0 <trap>

c01017e1 <irq14>:
c01017e1:	6a 00                	push   $0x0
c01017e3:	68 f6 03 00 00       	push   $0x3f6
c01017e8:	eb 06                	jmp    c01017f0 <trap>

c01017ea <irqall>:
c01017ea:	6a 00                	push   $0x0
c01017ec:	6a ff                	push   $0xffffffff
c01017ee:	eb 00                	jmp    c01017f0 <trap>

c01017f0 <trap>:
c01017f0:	fa                   	cli    
c01017f1:	1e                   	push   %ds
c01017f2:	06                   	push   %es
c01017f3:	0f a0                	push   %fs
c01017f5:	0f a8                	push   %gs
c01017f7:	60                   	pusha  
c01017f8:	66 b8 10 00          	mov    $0x10,%ax
c01017fc:	8e d8                	mov    %eax,%ds
c01017fe:	8e c0                	mov    %eax,%es
c0101800:	54                   	push   %esp
c0101801:	e8 aa fb ff ff       	call   c01013b0 <irq_handle>
c0101806:	a1 0c 31 10 c0       	mov    0xc010310c,%eax
c010180b:	8b 20                	mov    (%eax),%esp
c010180d:	61                   	popa   
c010180e:	0f a9                	pop    %gs
c0101810:	0f a1                	pop    %fs
c0101812:	07                   	pop    %es
c0101813:	1f                   	pop    %ds
c0101814:	83 c4 08             	add    $0x8,%esp
c0101817:	cf                   	iret   

Disassembly of section .rodata:

c0101818 <digits.849-0x11>:
c0101818:	73 72                	jae    c010188c <digits.849+0x63>
c010181a:	63 2f                	arpl   %bp,(%edi)
c010181c:	6c                   	insb   (%dx),%es:(%edi)
c010181d:	69 62 2f 73 74 72 69 	imul   $0x69727473,0x2f(%edx),%esp
c0101824:	6e                   	outsb  %ds:(%esi),(%dx)
c0101825:	67 2e 63 00          	arpl   %ax,%cs:(%bx,%si)

c0101829 <digits.849>:
c0101829:	30 31                	xor    %dh,(%ecx)
c010182b:	32 33                	xor    (%ebx),%dh
c010182d:	34 35                	xor    $0x35,%al
c010182f:	36                   	ss
c0101830:	37                   	aaa    
c0101831:	38 39                	cmp    %bh,(%ecx)
c0101833:	61                   	popa   
c0101834:	62 63 64             	bound  %esp,0x64(%ebx)
c0101837:	65                   	gs
c0101838:	66                   	data16
c0101839:	00 00                	add    %al,(%eax)
c010183b:	00 0a                	add    %cl,(%edx)
c010183d:	0a 46 61             	or     0x61(%esi),%al
c0101840:	74 61                	je     c01018a3 <digits.849+0x7a>
c0101842:	6c                   	insb   (%dx),%es:(%edi)
c0101843:	20 65 72             	and    %ah,0x72(%ebp)
c0101846:	72 6f                	jb     c01018b7 <digits.849+0x8e>
c0101848:	72 20                	jb     c010186a <digits.849+0x41>
c010184a:	28 61 73             	sub    %ah,0x73(%ecx)
c010184d:	73 65                	jae    c01018b4 <digits.849+0x8b>
c010184f:	72 74                	jb     c01018c5 <digits.849+0x9c>
c0101851:	69 6f 6e 20 66 61 69 	imul   $0x69616620,0x6e(%edi),%ebp
c0101858:	6c                   	insb   (%dx),%es:(%edi)
c0101859:	75 72                	jne    c01018cd <digits.849+0xa4>
c010185b:	65 29 20             	sub    %esp,%gs:(%eax)
c010185e:	61                   	popa   
c010185f:	74 20                	je     c0101881 <digits.849+0x58>
c0101861:	25 73 3a 25 64       	and    $0x64253a73,%eax
c0101866:	0a 00                	or     (%eax),%al
c0101868:	0a 0a                	or     (%edx),%cl
c010186a:	46                   	inc    %esi
c010186b:	61                   	popa   
c010186c:	74 61                	je     c01018cf <digits.849+0xa6>
c010186e:	6c                   	insb   (%dx),%es:(%edi)
c010186f:	20 65 72             	and    %ah,0x72(%ebp)
c0101872:	72 6f                	jb     c01018e3 <digits.849+0xba>
c0101874:	72 20                	jb     c0101896 <digits.849+0x6d>
c0101876:	28 6b 65             	sub    %ch,0x65(%ebx)
c0101879:	72 6e                	jb     c01018e9 <digits.849+0xc0>
c010187b:	65                   	gs
c010187c:	6c                   	insb   (%dx),%es:(%edi)
c010187d:	20 70 61             	and    %dh,0x61(%eax)
c0101880:	6e                   	outsb  %ds:(%esi),(%dx)
c0101881:	69 63 29 3a 20 25 73 	imul   $0x7325203a,0x29(%ebx),%esp
c0101888:	0a 00                	or     (%eax),%al
c010188a:	00 00                	add    %al,(%eax)
c010188c:	73 72                	jae    c0101900 <digits.849+0xd7>
c010188e:	63 2f                	arpl   %bp,(%edi)
c0101890:	6c                   	insb   (%dx),%es:(%edi)
c0101891:	69 62 2f 73 79 6e 63 	imul   $0x636e7973,0x2f(%edx),%esp
c0101898:	2e 63 00             	arpl   %ax,%cs:(%eax)
c010189b:	2e                   	cs
c010189c:	2f                   	das    
c010189d:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%esi),%ebp
c01018a4:	2f                   	das    
c01018a5:	61                   	popa   
c01018a6:	64                   	fs
c01018a7:	74 2f                	je     c01018d8 <digits.849+0xaf>
c01018a9:	6c                   	insb   (%dx),%es:(%edi)
c01018aa:	69 73 74 2e 68 00 73 	imul   $0x7300682e,0x74(%ebx),%esi
c01018b1:	72 63                	jb     c0101916 <digits.849+0xed>
c01018b3:	2f                   	das    
c01018b4:	6c                   	insb   (%dx),%es:(%edi)
c01018b5:	69 62 2f 6d 61 6c 6c 	imul   $0x6c6c616d,0x2f(%edx),%esp
c01018bc:	6f                   	outsl  %ds:(%esi),(%dx)
c01018bd:	63 2e                	arpl   %bp,(%esi)
c01018bf:	63 00                	arpl   %ax,(%eax)
c01018c1:	73 72                	jae    c0101935 <digits.849+0x10c>
c01018c3:	63 2f                	arpl   %bp,(%edi)
c01018c5:	6c                   	insb   (%dx),%es:(%edi)
c01018c6:	69 62 2f 76 66 70 72 	imul   $0x72706676,0x2f(%edx),%esp
c01018cd:	69 6e 74 66 2e 63 00 	imul   $0x632e66,0x74(%esi),%ebp
c01018d4:	73 72                	jae    c0101948 <digits.849+0x11f>
c01018d6:	63 2f                	arpl   %bp,(%edi)
c01018d8:	6b 65 72 6e          	imul   $0x6e,0x72(%ebp),%esp
c01018dc:	65                   	gs
c01018dd:	6c                   	insb   (%dx),%es:(%edi)
c01018de:	2f                   	das    
c01018df:	6d                   	insl   (%dx),%es:(%edi)
c01018e0:	61                   	popa   
c01018e1:	69 6e 2e 63 00 23 25 	imul   $0x25230063,0x2e(%esi),%ebp
c01018e8:	64 20 47 6f          	and    %al,%fs:0x6f(%edi)
c01018ec:	74 3a                	je     c0101928 <digits.849+0xff>
c01018ee:	20 25 64 0a 00 54    	and    %ah,0x54000a64
c01018f4:	68 65 20 4f 53       	push   $0x534f2065
c01018f9:	20 69 73             	and    %ch,0x73(%ecx)
c01018fc:	20 6e 6f             	and    %ch,0x6f(%esi)
c01018ff:	77 20                	ja     c0101921 <digits.849+0xf8>
c0101901:	77 6f                	ja     c0101972 <digits.849+0x149>
c0101903:	72 6b                	jb     c0101970 <digits.849+0x147>
c0101905:	69 6e 67 21 0a 00 73 	imul   $0x73000a21,0x67(%esi),%ebp
c010190c:	72 63                	jb     c0101971 <digits.849+0x148>
c010190e:	2f                   	das    
c010190f:	6b 65 72 6e          	imul   $0x6e,0x72(%ebp),%esp
c0101913:	65                   	gs
c0101914:	6c                   	insb   (%dx),%es:(%edi)
c0101915:	2f                   	das    
c0101916:	69 72 71 2f 69 72 71 	imul   $0x7172692f,0x71(%edx),%esi
c010191d:	5f                   	pop    %edi
c010191e:	68 61 6e 64 6c       	push   $0x6c646e61
c0101923:	65 2e 63 00          	gs arpl %ax,%cs:%gs:(%eax)
c0101927:	55                   	push   %ebp
c0101928:	6e                   	outsb  %ds:(%esi),(%dx)
c0101929:	65                   	gs
c010192a:	78 70                	js     c010199c <digits.849+0x173>
c010192c:	65 63 74 65 64       	arpl   %si,%gs:0x64(%ebp,%eiz,2)
c0101931:	20 65 78             	and    %ah,0x78(%ebp)
c0101934:	63 65 70             	arpl   %sp,0x70(%ebp)
c0101937:	74 69                	je     c01019a2 <digits.849+0x179>
c0101939:	6f                   	outsl  %ds:(%esi),(%dx)
c010193a:	6e                   	outsb  %ds:(%esi),(%dx)
c010193b:	20 23                	and    %ah,(%ebx)
c010193d:	25 64 0a 00 20       	and    $0x20000a64,%eax
c0101942:	65                   	gs
c0101943:	72 72                	jb     c01019b7 <digits.849+0x18e>
c0101945:	6f                   	outsl  %ds:(%esi),(%dx)
c0101946:	72 63                	jb     c01019ab <digits.849+0x182>
c0101948:	6f                   	outsl  %ds:(%esi),(%dx)
c0101949:	64 65 20 25 78 0a 00 	fs and %ah,%fs:%gs:0x20000a78
c0101950:	20 
c0101951:	6c                   	insb   (%dx),%es:(%edi)
c0101952:	6f                   	outsl  %ds:(%esi),(%dx)
c0101953:	63 61 74             	arpl   %sp,0x74(%ecx)
c0101956:	69 6f 6e 20 20 25 64 	imul   $0x64252020,0x6e(%edi),%ebp
c010195d:	3a 25 78 2c 20 65    	cmp    0x65202c78,%ah
c0101963:	73 70                	jae    c01019d5 <digits.849+0x1ac>
c0101965:	20 25 78 0a 00 75    	and    %ah,0x75000a78
c010196b:	6e                   	outsb  %ds:(%esi),(%dx)
c010196c:	65                   	gs
c010196d:	78 70                	js     c01019df <digits.849+0x1b6>
c010196f:	65 63 74 65 64       	arpl   %si,%gs:0x64(%ebp,%eiz,2)
c0101974:	20 65 78             	and    %ah,0x78(%ebp)
c0101977:	63 65 70             	arpl   %sp,0x70(%ebp)
c010197a:	74 69                	je     c01019e5 <digits.849+0x1bc>
c010197c:	6f                   	outsl  %ds:(%esi),(%dx)
c010197d:	6e                   	outsb  %ds:(%esi),(%dx)
c010197e:	00 73 72             	add    %dh,0x72(%ebx)
c0101981:	63 2f                	arpl   %bp,(%edi)
c0101983:	70 72                	jo     c01019f7 <digits.849+0x1ce>
c0101985:	6f                   	outsl  %ds:(%esi),(%dx)
c0101986:	63 65 73             	arpl   %sp,0x73(%ebp)
c0101989:	73 2f                	jae    c01019ba <digits.849+0x191>
c010198b:	73 63                	jae    c01019f0 <digits.849+0x1c7>
c010198d:	68 65 64 75 6c       	push   $0x6c756465
c0101992:	65 2e 63 00          	gs arpl %ax,%cs:%gs:(%eax)
c0101996:	73 72                	jae    c0101a0a <digits.849+0x1e1>
c0101998:	63 2f                	arpl   %bp,(%edi)
c010199a:	70 72                	jo     c0101a0e <digits.849+0x1e5>
c010199c:	6f                   	outsl  %ds:(%esi),(%dx)
c010199d:	63 65 73             	arpl   %sp,0x73(%ebp)
c01019a0:	73 2f                	jae    c01019d1 <digits.849+0x1a8>
c01019a2:	74 68                	je     c0101a0c <digits.849+0x1e3>
c01019a4:	72 65                	jb     c0101a0b <digits.849+0x1e2>
c01019a6:	61                   	popa   
c01019a7:	64 2e 63 00          	fs arpl %ax,%cs:%fs:(%eax)

Disassembly of section .eh_frame:

c01019ac <.eh_frame>:
c01019ac:	14 00                	adc    $0x0,%al
c01019ae:	00 00                	add    %al,(%eax)
c01019b0:	00 00                	add    %al,(%eax)
c01019b2:	00 00                	add    %al,(%eax)
c01019b4:	01 7a 52             	add    %edi,0x52(%edx)
c01019b7:	00 01                	add    %al,(%ecx)
c01019b9:	7c 08                	jl     c01019c3 <digits.849+0x19a>
c01019bb:	01 1b                	add    %ebx,(%ebx)
c01019bd:	0c 04                	or     $0x4,%al
c01019bf:	04 88                	add    $0x88,%al
c01019c1:	01 00                	add    %eax,(%eax)
c01019c3:	00 24 00             	add    %ah,(%eax,%eax,1)
c01019c6:	00 00                	add    %al,(%eax)
c01019c8:	1c 00                	sbb    $0x0,%al
c01019ca:	00 00                	add    %al,(%eax)
c01019cc:	34 e6                	xor    $0xe6,%al
c01019ce:	ff                   	(bad)  
c01019cf:	ff 2a                	ljmp   *(%edx)
c01019d1:	00 00                	add    %al,(%eax)
c01019d3:	00 00                	add    %al,(%eax)
c01019d5:	41                   	inc    %ecx
c01019d6:	0e                   	push   %cs
c01019d7:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c01019dd:	48                   	dec    %eax
c01019de:	83 04 86 03          	addl   $0x3,(%esi,%eax,4)
c01019e2:	5c                   	pop    %esp
c01019e3:	c3                   	ret    
c01019e4:	41                   	inc    %ecx
c01019e5:	c6 41 0c 04          	movb   $0x4,0xc(%ecx)
c01019e9:	04 c5                	add    $0xc5,%al
c01019eb:	00 20                	add    %ah,(%eax)
c01019ed:	00 00                	add    %al,(%eax)
c01019ef:	00 44 00 00          	add    %al,0x0(%eax,%eax,1)
c01019f3:	00 3c e6             	add    %bh,(%esi,%eiz,8)
c01019f6:	ff                   	(bad)  
c01019f7:	ff 25 00 00 00 00    	jmp    *0x0
c01019fd:	41                   	inc    %ecx
c01019fe:	0e                   	push   %cs
c01019ff:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0101a05:	4b                   	dec    %ebx
c0101a06:	83 03 55             	addl   $0x55,(%ebx)
c0101a09:	c3                   	ret    
c0101a0a:	41                   	inc    %ecx
c0101a0b:	0c 04                	or     $0x4,%al
c0101a0d:	04 c5                	add    $0xc5,%al
c0101a0f:	00 28                	add    %ch,(%eax)
c0101a11:	00 00                	add    %al,(%eax)
c0101a13:	00 68 00             	add    %ch,0x0(%eax)
c0101a16:	00 00                	add    %al,(%eax)
c0101a18:	48                   	dec    %eax
c0101a19:	e6 ff                	out    %al,$0xff
c0101a1b:	ff 5c 00 00          	lcall  *0x0(%eax,%eax,1)
c0101a1f:	00 00                	add    %al,(%eax)
c0101a21:	41                   	inc    %ecx
c0101a22:	0e                   	push   %cs
c0101a23:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0101a29:	48                   	dec    %eax
c0101a2a:	83 04 86 03          	addl   $0x3,(%esi,%eax,4)
c0101a2e:	6f                   	outsl  %ds:(%esi),(%dx)
c0101a2f:	0a c3                	or     %bl,%al
c0101a31:	41                   	inc    %ecx
c0101a32:	c6 41 0c 04          	movb   $0x4,0xc(%ecx)
c0101a36:	04 c5                	add    $0xc5,%al
c0101a38:	44                   	inc    %esp
c0101a39:	0b 00                	or     (%eax),%eax
c0101a3b:	00 24 00             	add    %ah,(%eax,%eax,1)
c0101a3e:	00 00                	add    %al,(%eax)
c0101a40:	94                   	xchg   %eax,%esp
c0101a41:	00 00                	add    %al,(%eax)
c0101a43:	00 7c e6 ff          	add    %bh,-0x1(%esi,%eiz,8)
c0101a47:	ff 45 00             	incl   0x0(%ebp)
c0101a4a:	00 00                	add    %al,(%eax)
c0101a4c:	00 41 0e             	add    %al,0xe(%ecx)
c0101a4f:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0101a55:	5d                   	pop    %ebp
c0101a56:	0a c5                	or     %ch,%al
c0101a58:	0c 04                	or     $0x4,%al
c0101a5a:	04 48                	add    $0x48,%al
c0101a5c:	0b 5c c5 0c          	or     0xc(%ebp,%eax,8),%ebx
c0101a60:	04 04                	add    $0x4,%al
c0101a62:	00 00                	add    %al,(%eax)
c0101a64:	1c 00                	sbb    $0x0,%al
c0101a66:	00 00                	add    %al,(%eax)
c0101a68:	bc 00 00 00 a4       	mov    $0xa4000000,%esp
c0101a6d:	e6 ff                	out    %al,$0xff
c0101a6f:	ff 14 00             	call   *(%eax,%eax,1)
c0101a72:	00 00                	add    %al,(%eax)
c0101a74:	00 41 0e             	add    %al,0xe(%ecx)
c0101a77:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0101a7d:	44                   	inc    %esp
c0101a7e:	0c 04                	or     $0x4,%al
c0101a80:	04 c5                	add    $0xc5,%al
c0101a82:	00 00                	add    %al,(%eax)
c0101a84:	1c 00                	sbb    $0x0,%al
c0101a86:	00 00                	add    %al,(%eax)
c0101a88:	dc 00                	faddl  (%eax)
c0101a8a:	00 00                	add    %al,(%eax)
c0101a8c:	a4                   	movsb  %ds:(%esi),%es:(%edi)
c0101a8d:	e6 ff                	out    %al,$0xff
c0101a8f:	ff 14 00             	call   *(%eax,%eax,1)
c0101a92:	00 00                	add    %al,(%eax)
c0101a94:	00 41 0e             	add    %al,0xe(%ecx)
c0101a97:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0101a9d:	44                   	inc    %esp
c0101a9e:	0c 04                	or     $0x4,%al
c0101aa0:	04 c5                	add    $0xc5,%al
c0101aa2:	00 00                	add    %al,(%eax)
c0101aa4:	1c 00                	sbb    $0x0,%al
c0101aa6:	00 00                	add    %al,(%eax)
c0101aa8:	fc                   	cld    
c0101aa9:	00 00                	add    %al,(%eax)
c0101aab:	00 a4 e6 ff ff 22 00 	add    %ah,0x22ffff(%esi,%eiz,8)
c0101ab2:	00 00                	add    %al,(%eax)
c0101ab4:	00 41 0e             	add    %al,0xe(%ecx)
c0101ab7:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0101abd:	5e                   	pop    %esi
c0101abe:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
c0101ac1:	04 00                	add    $0x0,%al
c0101ac3:	00 1c 00             	add    %bl,(%eax,%eax,1)
c0101ac6:	00 00                	add    %al,(%eax)
c0101ac8:	1c 01                	sbb    $0x1,%al
c0101aca:	00 00                	add    %al,(%eax)
c0101acc:	b4 e6                	mov    $0xe6,%ah
c0101ace:	ff                   	(bad)  
c0101acf:	ff 22                	jmp    *(%edx)
c0101ad1:	00 00                	add    %al,(%eax)
c0101ad3:	00 00                	add    %al,(%eax)
c0101ad5:	41                   	inc    %ecx
c0101ad6:	0e                   	push   %cs
c0101ad7:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0101add:	5e                   	pop    %esi
c0101ade:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
c0101ae1:	04 00                	add    $0x0,%al
c0101ae3:	00 1c 00             	add    %bl,(%eax,%eax,1)
c0101ae6:	00 00                	add    %al,(%eax)
c0101ae8:	3c 01                	cmp    $0x1,%al
c0101aea:	00 00                	add    %al,(%eax)
c0101aec:	c4                   	(bad)  
c0101aed:	e6 ff                	out    %al,$0xff
c0101aef:	ff 24 00             	jmp    *(%eax,%eax,1)
c0101af2:	00 00                	add    %al,(%eax)
c0101af4:	00 41 0e             	add    %al,0xe(%ecx)
c0101af7:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0101afd:	60                   	pusha  
c0101afe:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
c0101b01:	04 00                	add    $0x0,%al
c0101b03:	00 1c 00             	add    %bl,(%eax,%eax,1)
c0101b06:	00 00                	add    %al,(%eax)
c0101b08:	5c                   	pop    %esp
c0101b09:	01 00                	add    %eax,(%eax)
c0101b0b:	00 d4                	add    %dl,%ah
c0101b0d:	e6 ff                	out    %al,$0xff
c0101b0f:	ff 1d 00 00 00 00    	lcall  *0x0
c0101b15:	41                   	inc    %ecx
c0101b16:	0e                   	push   %cs
c0101b17:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0101b1d:	59                   	pop    %ecx
c0101b1e:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
c0101b21:	04 00                	add    $0x0,%al
c0101b23:	00 38                	add    %bh,(%eax)
c0101b25:	00 00                	add    %al,(%eax)
c0101b27:	00 7c 01 00          	add    %bh,0x0(%ecx,%eax,1)
c0101b2b:	00 d4                	add    %dl,%ah
c0101b2d:	e6 ff                	out    %al,$0xff
c0101b2f:	ff 86 00 00 00 00    	incl   0x0(%esi)
c0101b35:	41                   	inc    %ecx
c0101b36:	0e                   	push   %cs
c0101b37:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0101b3d:	68 0a c5 0c 04       	push   $0x40cc50a
c0101b42:	04 45                	add    $0x45,%al
c0101b44:	0b 55 0a             	or     0xa(%ebp),%edx
c0101b47:	0c 04                	or     $0x4,%al
c0101b49:	04 c5                	add    $0xc5,%al
c0101b4b:	43                   	inc    %ebx
c0101b4c:	0b 53 0a             	or     0xa(%ebx),%edx
c0101b4f:	0c 04                	or     $0x4,%al
c0101b51:	04 c5                	add    $0xc5,%al
c0101b53:	45                   	inc    %ebp
c0101b54:	0b 45 0a             	or     0xa(%ebp),%eax
c0101b57:	0c 04                	or     $0x4,%al
c0101b59:	04 c5                	add    $0xc5,%al
c0101b5b:	43                   	inc    %ebx
c0101b5c:	0b 00                	or     (%eax),%eax
c0101b5e:	00 00                	add    %al,(%eax)
c0101b60:	28 00                	sub    %al,(%eax)
c0101b62:	00 00                	add    %al,(%eax)
c0101b64:	b8 01 00 00 28       	mov    $0x28000001,%eax
c0101b69:	e7 ff                	out    %eax,$0xff
c0101b6b:	ff 56 00             	call   *0x0(%esi)
c0101b6e:	00 00                	add    %al,(%eax)
c0101b70:	00 41 0e             	add    %al,0xe(%ecx)
c0101b73:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0101b79:	60                   	pusha  
c0101b7a:	0a c5                	or     %ch,%al
c0101b7c:	0c 04                	or     $0x4,%al
c0101b7e:	04 45                	add    $0x45,%al
c0101b80:	0b 42 0a             	or     0xa(%edx),%eax
c0101b83:	0c 04                	or     $0x4,%al
c0101b85:	04 c5                	add    $0xc5,%al
c0101b87:	4e                   	dec    %esi
c0101b88:	0b 00                	or     (%eax),%eax
c0101b8a:	00 00                	add    %al,(%eax)
c0101b8c:	1c 00                	sbb    $0x0,%al
c0101b8e:	00 00                	add    %al,(%eax)
c0101b90:	e4 01                	in     $0x1,%al
c0101b92:	00 00                	add    %al,(%eax)
c0101b94:	5c                   	pop    %esp
c0101b95:	e7 ff                	out    %eax,$0xff
c0101b97:	ff 16                	call   *(%esi)
c0101b99:	00 00                	add    %al,(%eax)
c0101b9b:	00 00                	add    %al,(%eax)
c0101b9d:	41                   	inc    %ecx
c0101b9e:	0e                   	push   %cs
c0101b9f:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0101ba5:	52                   	push   %edx
c0101ba6:	0c 04                	or     $0x4,%al
c0101ba8:	04 c5                	add    $0xc5,%al
c0101baa:	00 00                	add    %al,(%eax)
c0101bac:	2c 00                	sub    $0x0,%al
c0101bae:	00 00                	add    %al,(%eax)
c0101bb0:	04 02                	add    $0x2,%al
c0101bb2:	00 00                	add    %al,(%eax)
c0101bb4:	5c                   	pop    %esp
c0101bb5:	e7 ff                	out    %eax,$0xff
c0101bb7:	ff 8a 00 00 00 00    	decl   0x0(%edx)
c0101bbd:	41                   	inc    %ecx
c0101bbe:	0e                   	push   %cs
c0101bbf:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0101bc5:	49                   	dec    %ecx
c0101bc6:	83 05 46 87 03 86 04 	addl   $0x4,0x86038746
c0101bcd:	5b                   	pop    %ebx
c0101bce:	0a 0d 04 c7 c6 c3    	or     0xc3c6c704,%cl
c0101bd4:	41                   	inc    %ecx
c0101bd5:	0e                   	push   %cs
c0101bd6:	04 c5                	add    $0xc5,%al
c0101bd8:	4a                   	dec    %edx
c0101bd9:	0b 00                	or     (%eax),%eax
c0101bdb:	00 34 00             	add    %dh,(%eax,%eax,1)
c0101bde:	00 00                	add    %al,(%eax)
c0101be0:	34 02                	xor    $0x2,%al
c0101be2:	00 00                	add    %al,(%eax)
c0101be4:	bc e7 ff ff a6       	mov    $0xa6ffffe7,%esp
c0101be9:	00 00                	add    %al,(%eax)
c0101beb:	00 00                	add    %al,(%eax)
c0101bed:	41                   	inc    %ecx
c0101bee:	0e                   	push   %cs
c0101bef:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0101bf5:	49                   	dec    %ecx
c0101bf6:	83 04 43 86          	addl   $0xffffff86,(%ebx,%eax,2)
c0101bfa:	03 58 0a             	add    0xa(%eax),%ebx
c0101bfd:	0d 04 c6 c3 41       	or     $0x41c3c604,%eax
c0101c02:	0e                   	push   %cs
c0101c03:	04 c5                	add    $0xc5,%al
c0101c05:	48                   	dec    %eax
c0101c06:	0b 73 0a             	or     0xa(%ebx),%esi
c0101c09:	c3                   	ret    
c0101c0a:	c6                   	(bad)  
c0101c0b:	0d 04 41 c5 0e       	or     $0xec54104,%eax
c0101c10:	04 4c                	add    $0x4c,%al
c0101c12:	0b 00                	or     (%eax),%eax
c0101c14:	30 00                	xor    %al,(%eax)
c0101c16:	00 00                	add    %al,(%eax)
c0101c18:	6c                   	insb   (%dx),%es:(%edi)
c0101c19:	02 00                	add    (%eax),%al
c0101c1b:	00 34 e8             	add    %dh,(%eax,%ebp,8)
c0101c1e:	ff                   	(bad)  
c0101c1f:	ff ae 00 00 00 00    	ljmp   *0x0(%esi)
c0101c25:	41                   	inc    %ecx
c0101c26:	0e                   	push   %cs
c0101c27:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0101c2d:	48                   	dec    %eax
c0101c2e:	83 04 86 03          	addl   $0x3,(%esi,%eax,4)
c0101c32:	02 72 0a             	add    0xa(%edx),%dh
c0101c35:	c3                   	ret    
c0101c36:	41                   	inc    %ecx
c0101c37:	c6 41 0c 04          	movb   $0x4,0xc(%ecx)
c0101c3b:	04 c5                	add    $0xc5,%al
c0101c3d:	41                   	inc    %ecx
c0101c3e:	0b 6b c3             	or     -0x3d(%ebx),%ebp
c0101c41:	41                   	inc    %ecx
c0101c42:	c6 41 c5 0c          	movb   $0xc,-0x3b(%ecx)
c0101c46:	04 04                	add    $0x4,%al
c0101c48:	28 00                	sub    %al,(%eax)
c0101c4a:	00 00                	add    %al,(%eax)
c0101c4c:	a0 02 00 00 b0       	mov    0xb0000002,%al
c0101c51:	e8 ff ff 64 00       	call   c0751c55 <_end+0x30940d>
c0101c56:	00 00                	add    %al,(%eax)
c0101c58:	00 41 0e             	add    %al,0xe(%ecx)
c0101c5b:	08 85 02 47 0d 05    	or     %al,0x50d4702(%ebp)
c0101c61:	4d                   	dec    %ebp
c0101c62:	83 05 86 04 87 03 02 	addl   $0x2,0x3870486
c0101c69:	4b                   	dec    %ebx
c0101c6a:	c3                   	ret    
c0101c6b:	41                   	inc    %ecx
c0101c6c:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
c0101c70:	0c 04                	or     $0x4,%al
c0101c72:	04 c5                	add    $0xc5,%al
c0101c74:	28 00                	sub    %al,(%eax)
c0101c76:	00 00                	add    %al,(%eax)
c0101c78:	cc                   	int3   
c0101c79:	02 00                	add    (%eax),%al
c0101c7b:	00 f4                	add    %dh,%ah
c0101c7d:	e8 ff ff d9 00       	call   c0ea1c81 <_end+0xa59439>
c0101c82:	00 00                	add    %al,(%eax)
c0101c84:	00 41 0e             	add    %al,0xe(%ecx)
c0101c87:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0101c8d:	48                   	dec    %eax
c0101c8e:	83 04 86 03          	addl   $0x3,(%esi,%eax,4)
c0101c92:	02 5a 0a             	add    0xa(%edx),%bl
c0101c95:	c3                   	ret    
c0101c96:	41                   	inc    %ecx
c0101c97:	c6 41 0c 04          	movb   $0x4,0xc(%ecx)
c0101c9b:	04 c5                	add    $0xc5,%al
c0101c9d:	41                   	inc    %ecx
c0101c9e:	0b 00                	or     (%eax),%eax
c0101ca0:	28 00                	sub    %al,(%eax)
c0101ca2:	00 00                	add    %al,(%eax)
c0101ca4:	f8                   	clc    
c0101ca5:	02 00                	add    (%eax),%al
c0101ca7:	00 a8 e9 ff ff 81    	add    %ch,-0x7e000017(%eax)
c0101cad:	00 00                	add    %al,(%eax)
c0101caf:	00 00                	add    %al,(%eax)
c0101cb1:	41                   	inc    %ecx
c0101cb2:	0e                   	push   %cs
c0101cb3:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0101cb9:	49                   	dec    %ecx
c0101cba:	86 04 4d 83 05 87 03 	xchg   %al,0x3870583(,%ecx,2)
c0101cc1:	02 66 0d             	add    0xd(%esi),%ah
c0101cc4:	04 c7                	add    $0xc7,%al
c0101cc6:	c6 c3 41             	mov    $0x41,%bl
c0101cc9:	0e                   	push   %cs
c0101cca:	04 c5                	add    $0xc5,%al
c0101ccc:	2c 00                	sub    $0x0,%al
c0101cce:	00 00                	add    %al,(%eax)
c0101cd0:	24 03                	and    $0x3,%al
c0101cd2:	00 00                	add    %al,(%eax)
c0101cd4:	0c ea                	or     $0xea,%al
c0101cd6:	ff                   	(bad)  
c0101cd7:	ff 59 02             	lcall  *0x2(%ecx)
c0101cda:	00 00                	add    %al,(%eax)
c0101cdc:	00 41 0e             	add    %al,0xe(%ecx)
c0101cdf:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0101ce5:	43                   	inc    %ebx
c0101ce6:	87 03                	xchg   %eax,(%ebx)
c0101ce8:	48                   	dec    %eax
c0101ce9:	83 05 86 04 70 0a c3 	addl   $0xffffffc3,0xa700486
c0101cf0:	41                   	inc    %ecx
c0101cf1:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
c0101cf5:	0c 04                	or     $0x4,%al
c0101cf7:	04 c5                	add    $0xc5,%al
c0101cf9:	47                   	inc    %edi
c0101cfa:	0b 00                	or     (%eax),%eax
c0101cfc:	1c 00                	sbb    $0x0,%al
c0101cfe:	00 00                	add    %al,(%eax)
c0101d00:	54                   	push   %esp
c0101d01:	03 00                	add    (%eax),%eax
c0101d03:	00 3c ec             	add    %bh,(%esp,%ebp,8)
c0101d06:	ff                   	(bad)  
c0101d07:	ff 1f                	lcall  *(%edi)
c0101d09:	00 00                	add    %al,(%eax)
c0101d0b:	00 00                	add    %al,(%eax)
c0101d0d:	41                   	inc    %ecx
c0101d0e:	0e                   	push   %cs
c0101d0f:	08 85 02 47 0d 05    	or     %al,0x50d4702(%ebp)
c0101d15:	56                   	push   %esi
c0101d16:	0c 04                	or     $0x4,%al
c0101d18:	04 c5                	add    $0xc5,%al
c0101d1a:	00 00                	add    %al,(%eax)
c0101d1c:	1c 00                	sbb    $0x0,%al
c0101d1e:	00 00                	add    %al,(%eax)
c0101d20:	74 03                	je     c0101d25 <digits.849+0x4fc>
c0101d22:	00 00                	add    %al,(%eax)
c0101d24:	3c ec                	cmp    $0xec,%al
c0101d26:	ff                   	(bad)  
c0101d27:	ff                   	(bad)  
c0101d28:	3a 00                	cmp    (%eax),%al
c0101d2a:	00 00                	add    %al,(%eax)
c0101d2c:	00 41 0e             	add    %al,0xe(%ecx)
c0101d2f:	08 85 02 47 0d 05    	or     %al,0x50d4702(%ebp)
c0101d35:	71 0c                	jno    c0101d43 <digits.849+0x51a>
c0101d37:	04 04                	add    $0x4,%al
c0101d39:	c5 00                	lds    (%eax),%eax
c0101d3b:	00 1c 00             	add    %bl,(%eax,%eax,1)
c0101d3e:	00 00                	add    %al,(%eax)
c0101d40:	94                   	xchg   %eax,%esp
c0101d41:	03 00                	add    (%eax),%eax
c0101d43:	00 5c ec ff          	add    %bl,-0x1(%esp,%ebp,8)
c0101d47:	ff 22                	jmp    *(%edx)
c0101d49:	00 00                	add    %al,(%eax)
c0101d4b:	00 00                	add    %al,(%eax)
c0101d4d:	41                   	inc    %ecx
c0101d4e:	0e                   	push   %cs
c0101d4f:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0101d55:	5e                   	pop    %esi
c0101d56:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
c0101d59:	04 00                	add    $0x0,%al
c0101d5b:	00 1c 00             	add    %bl,(%eax,%eax,1)
c0101d5e:	00 00                	add    %al,(%eax)
c0101d60:	b4 03                	mov    $0x3,%ah
c0101d62:	00 00                	add    %al,(%eax)
c0101d64:	6c                   	insb   (%dx),%es:(%edi)
c0101d65:	ec                   	in     (%dx),%al
c0101d66:	ff                   	(bad)  
c0101d67:	ff 93 00 00 00 00    	call   *0x0(%ebx)
c0101d6d:	41                   	inc    %ecx
c0101d6e:	0e                   	push   %cs
c0101d6f:	08 85 02 47 0d 05    	or     %al,0x50d4702(%ebp)
c0101d75:	02 8a c5 0c 04 04    	add    0x4040cc5(%edx),%cl
c0101d7b:	00 1c 00             	add    %bl,(%eax,%eax,1)
c0101d7e:	00 00                	add    %al,(%eax)
c0101d80:	d4 03                	aam    $0x3
c0101d82:	00 00                	add    %al,(%eax)
c0101d84:	ec                   	in     (%dx),%al
c0101d85:	ec                   	in     (%dx),%al
c0101d86:	ff                   	(bad)  
c0101d87:	ff 17                	call   *(%edi)
c0101d89:	01 00                	add    %eax,(%eax)
c0101d8b:	00 00                	add    %al,(%eax)
c0101d8d:	5b                   	pop    %ebx
c0101d8e:	0e                   	push   %cs
c0101d8f:	08 85 02 45 0d 05    	or     %al,0x50d4502(%ebp)
c0101d95:	02 f6                	add    %dh,%dh
c0101d97:	0c 04                	or     $0x4,%al
c0101d99:	04 c5                	add    $0xc5,%al
c0101d9b:	00 1c 00             	add    %bl,(%eax,%eax,1)
c0101d9e:	00 00                	add    %al,(%eax)
c0101da0:	f4                   	hlt    
c0101da1:	03 00                	add    (%eax),%eax
c0101da3:	00 ec                	add    %ch,%ah
c0101da5:	ed                   	in     (%dx),%eax
c0101da6:	ff                   	(bad)  
c0101da7:	ff a9 01 00 00 00    	ljmp   *0x1(%ecx)
c0101dad:	41                   	inc    %ecx
c0101dae:	0e                   	push   %cs
c0101daf:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0101db5:	46                   	inc    %esi
c0101db6:	86 03                	xchg   %al,(%ebx)
c0101db8:	4a                   	dec    %edx
c0101db9:	83 04 00 18          	addl   $0x18,(%eax,%eax,1)
c0101dbd:	00 00                	add    %al,(%eax)
c0101dbf:	00 14 04             	add    %dl,(%esp,%eax,1)
c0101dc2:	00 00                	add    %al,(%eax)
c0101dc4:	7c ef                	jl     c0101db5 <digits.849+0x58c>
c0101dc6:	ff                   	(bad)  
c0101dc7:	ff 91 01 00 00 00    	call   *0x1(%ecx)
c0101dcd:	41                   	inc    %ecx
c0101dce:	0e                   	push   %cs
c0101dcf:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0101dd5:	46                   	inc    %esi
c0101dd6:	83 03 1c             	addl   $0x1c,(%ebx)
c0101dd9:	00 00                	add    %al,(%eax)
c0101ddb:	00 30                	add    %dh,(%eax)
c0101ddd:	04 00                	add    $0x0,%al
c0101ddf:	00 00                	add    %al,(%eax)
c0101de1:	f1                   	icebp  
c0101de2:	ff                   	(bad)  
c0101de3:	ff d0                	call   *%eax
c0101de5:	00 00                	add    %al,(%eax)
c0101de7:	00 00                	add    %al,(%eax)
c0101de9:	41                   	inc    %ecx
c0101dea:	0e                   	push   %cs
c0101deb:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0101df1:	02 cc                	add    %ah,%cl
c0101df3:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
c0101df6:	04 00                	add    $0x0,%al
c0101df8:	18 00                	sbb    %al,(%eax)
c0101dfa:	00 00                	add    %al,(%eax)
c0101dfc:	50                   	push   %eax
c0101dfd:	04 00                	add    $0x0,%al
c0101dff:	00 b0 f1 ff ff 3b    	add    %dh,0x3bfffff1(%eax)
c0101e05:	00 00                	add    %al,(%eax)
c0101e07:	00 00                	add    %al,(%eax)
c0101e09:	41                   	inc    %ecx
c0101e0a:	0e                   	push   %cs
c0101e0b:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0101e11:	00 00                	add    %al,(%eax)
c0101e13:	00 18                	add    %bl,(%eax)
c0101e15:	00 00                	add    %al,(%eax)
c0101e17:	00 6c 04 00          	add    %ch,0x0(%esp,%eax,1)
c0101e1b:	00 d4                	add    %dl,%ah
c0101e1d:	f1                   	icebp  
c0101e1e:	ff                   	(bad)  
c0101e1f:	ff 16                	call   *(%esi)
c0101e21:	00 00                	add    %al,(%eax)
c0101e23:	00 00                	add    %al,(%eax)
c0101e25:	41                   	inc    %ecx
c0101e26:	0e                   	push   %cs
c0101e27:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0101e2d:	00 00                	add    %al,(%eax)
c0101e2f:	00 28                	add    %ch,(%eax)
c0101e31:	00 00                	add    %al,(%eax)
c0101e33:	00 88 04 00 00 d8    	add    %cl,-0x27fffffc(%eax)
c0101e39:	f1                   	icebp  
c0101e3a:	ff                   	(bad)  
c0101e3b:	ff 9c 03 00 00 00 41 	lcall  *0x41000000(%ebx,%eax,1)
c0101e42:	0e                   	push   %cs
c0101e43:	08 85 02 44 0d 05    	or     %al,0x50d4402(%ebp)
c0101e49:	4c                   	dec    %esp
c0101e4a:	83 04 86 03          	addl   $0x3,(%esi,%eax,4)
c0101e4e:	03 1e                	add    (%esi),%ebx
c0101e50:	03 c3                	add    %ebx,%eax
c0101e52:	48                   	dec    %eax
c0101e53:	c6 02 64             	movb   $0x64,(%edx)
c0101e56:	0c 04                	or     $0x4,%al
c0101e58:	04 c5                	add    $0xc5,%al
c0101e5a:	00 00                	add    %al,(%eax)
c0101e5c:	40                   	inc    %eax
c0101e5d:	00 00                	add    %al,(%eax)
c0101e5f:	00 b4 04 00 00 4c f5 	add    %dh,-0xab40000(%esp,%eax,1)
c0101e66:	ff                   	(bad)  
c0101e67:	ff e1                	jmp    *%ecx
c0101e69:	00 00                	add    %al,(%eax)
c0101e6b:	00 00                	add    %al,(%eax)
c0101e6d:	41                   	inc    %ecx
c0101e6e:	0e                   	push   %cs
c0101e6f:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0101e75:	49                   	dec    %ecx
c0101e76:	83 04 46 86          	addl   $0xffffff86,(%esi,%eax,2)
c0101e7a:	03 7a 0a             	add    0xa(%edx),%edi
c0101e7d:	0d 04 c6 c3 41       	or     $0x41c3c604,%eax
c0101e82:	0e                   	push   %cs
c0101e83:	04 c5                	add    $0xc5,%al
c0101e85:	43                   	inc    %ebx
c0101e86:	0b 50 0a             	or     0xa(%eax),%edx
c0101e89:	c3                   	ret    
c0101e8a:	c6                   	(bad)  
c0101e8b:	0d 04 41 c5 0e       	or     $0xec54104,%eax
c0101e90:	04 47                	add    $0x47,%al
c0101e92:	0b 02                	or     (%edx),%eax
c0101e94:	59                   	pop    %ecx
c0101e95:	0a 0d 04 c6 c3 41    	or     0x41c3c604,%cl
c0101e9b:	0e                   	push   %cs
c0101e9c:	04 c5                	add    $0xc5,%al
c0101e9e:	46                   	inc    %esi
c0101e9f:	0b 1c 00             	or     (%eax,%eax,1),%ebx
c0101ea2:	00 00                	add    %al,(%eax)
c0101ea4:	f8                   	clc    
c0101ea5:	04 00                	add    $0x0,%al
c0101ea7:	00 f8                	add    %bh,%al
c0101ea9:	f5                   	cmc    
c0101eaa:	ff                   	(bad)  
c0101eab:	ff 67 00             	jmp    *0x0(%edi)
c0101eae:	00 00                	add    %al,(%eax)
c0101eb0:	00 41 0e             	add    %al,0xe(%ecx)
c0101eb3:	08 85 02 47 0d 05    	or     %al,0x50d4702(%ebp)
c0101eb9:	02 5e 0c             	add    0xc(%esi),%bl
c0101ebc:	04 04                	add    $0x4,%al
c0101ebe:	c5 00                	lds    (%eax),%eax
c0101ec0:	1c 00                	sbb    $0x0,%al
c0101ec2:	00 00                	add    %al,(%eax)
c0101ec4:	18 05 00 00 48 f6    	sbb    %al,0xf6480000
c0101eca:	ff                   	(bad)  
c0101ecb:	ff 19                	lcall  *(%ecx)
c0101ecd:	00 00                	add    %al,(%eax)
c0101ecf:	00 00                	add    %al,(%eax)
c0101ed1:	41                   	inc    %ecx
c0101ed2:	0e                   	push   %cs
c0101ed3:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0101ed9:	55                   	push   %ebp
c0101eda:	0c 04                	or     $0x4,%al
c0101edc:	04 c5                	add    $0xc5,%al
c0101ede:	00 00                	add    %al,(%eax)
c0101ee0:	24 00                	and    $0x0,%al
c0101ee2:	00 00                	add    %al,(%eax)
c0101ee4:	38 05 00 00 48 f6    	cmp    %al,0xf6480000
c0101eea:	ff                   	(bad)  
c0101eeb:	ff                   	(bad)  
c0101eec:	7e 00                	jle    c0101eee <digits.849+0x6c5>
c0101eee:	00 00                	add    %al,(%eax)
c0101ef0:	00 41 0e             	add    %al,0xe(%ecx)
c0101ef3:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0101ef9:	50                   	push   %eax
c0101efa:	83 03 7a             	addl   $0x7a,(%ebx)
c0101efd:	0a c3                	or     %bl,%al
c0101eff:	41                   	inc    %ecx
c0101f00:	0c 04                	or     $0x4,%al
c0101f02:	04 c5                	add    $0xc5,%al
c0101f04:	42                   	inc    %edx
c0101f05:	0b 00                	or     (%eax),%eax
c0101f07:	00 24 00             	add    %ah,(%eax,%eax,1)
c0101f0a:	00 00                	add    %al,(%eax)
c0101f0c:	60                   	pusha  
c0101f0d:	05 00 00 a0 f6       	add    $0xf6a00000,%eax
c0101f12:	ff                   	(bad)  
c0101f13:	ff 36                	pushl  (%esi)
c0101f15:	00 00                	add    %al,(%eax)
c0101f17:	00 00                	add    %al,(%eax)
c0101f19:	41                   	inc    %ecx
c0101f1a:	0e                   	push   %cs
c0101f1b:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0101f21:	53                   	push   %ebx
c0101f22:	0a c5                	or     %ch,%al
c0101f24:	0c 04                	or     $0x4,%al
c0101f26:	04 42                	add    $0x42,%al
c0101f28:	0b 5a 0c             	or     0xc(%edx),%ebx
c0101f2b:	04 04                	add    $0x4,%al
c0101f2d:	c5 00                	lds    (%eax),%eax
c0101f2f:	00 20                	add    %ah,(%eax)
c0101f31:	00 00                	add    %al,(%eax)
c0101f33:	00 88 05 00 00 b8    	add    %cl,-0x47fffffb(%eax)
c0101f39:	f6 ff                	idiv   %bh
c0101f3b:	ff d7                	call   *%edi
c0101f3d:	00 00                	add    %al,(%eax)
c0101f3f:	00 00                	add    %al,(%eax)
c0101f41:	41                   	inc    %ecx
c0101f42:	0e                   	push   %cs
c0101f43:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0101f49:	02 b0 0a c5 0c 04    	add    0x40cc50a(%eax),%dh
c0101f4f:	04 45                	add    $0x45,%al
c0101f51:	0b 00                	or     (%eax),%eax
c0101f53:	00 2c 00             	add    %ch,(%eax,%eax,1)
c0101f56:	00 00                	add    %al,(%eax)
c0101f58:	ac                   	lods   %ds:(%esi),%al
c0101f59:	05 00 00 74 f7       	add    $0xf7740000,%eax
c0101f5e:	ff                   	(bad)  
c0101f5f:	ff 5e 00             	lcall  *0x0(%esi)
c0101f62:	00 00                	add    %al,(%eax)
c0101f64:	00 41 0e             	add    %al,0xe(%ecx)
c0101f67:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0101f6d:	49                   	dec    %ecx
c0101f6e:	83 05 4c 86 04 87 03 	addl   $0x3,0x8704864c
c0101f75:	68 0a 0d 04 c7       	push   $0xc7040d0a
c0101f7a:	c6 c3 41             	mov    $0x41,%bl
c0101f7d:	0e                   	push   %cs
c0101f7e:	04 c5                	add    $0xc5,%al
c0101f80:	47                   	inc    %edi
c0101f81:	0b 00                	or     (%eax),%eax
c0101f83:	00 24 00             	add    %ah,(%eax,%eax,1)
c0101f86:	00 00                	add    %al,(%eax)
c0101f88:	dc 05 00 00 a4 f7    	faddl  0xf7a40000
c0101f8e:	ff                   	(bad)  
c0101f8f:	ff 46 00             	incl   0x0(%esi)
c0101f92:	00 00                	add    %al,(%eax)
c0101f94:	00 41 0e             	add    %al,0xe(%ecx)
c0101f97:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0101f9d:	4a                   	dec    %edx
c0101f9e:	83 03 5e             	addl   $0x5e,(%ebx)
c0101fa1:	0a c3                	or     %bl,%al
c0101fa3:	41                   	inc    %ecx
c0101fa4:	0c 04                	or     $0x4,%al
c0101fa6:	04 c5                	add    $0xc5,%al
c0101fa8:	44                   	inc    %esp
c0101fa9:	0b 00                	or     (%eax),%eax
	...

Disassembly of section .data:

c0102000 <tid>:
c0102000:	01 00                	add    %eax,(%eax)
	...

c0102004 <g>:
c0102004:	01 00                	add    %eax,(%eax)
	...

Disassembly of section .bss:

c0103000 <buf.862>:
	...

c0103040 <buf.867>:
	...

c0103080 <nextf>:
	...

c01030c0 <nmalloc>:
	...

c01030f0 <page_inited>:
c01030f0:	00 00                	add    %al,(%eax)
	...

c01030f4 <data.876>:
	...

c01030fc <r>:
c01030fc:	00 00                	add    %al,(%eax)
	...

c0103100 <f>:
c0103100:	00 00                	add    %al,(%eax)
	...

c0103104 <data.877>:
	...

c010310c <current_pcb>:
c010310c:	00 00                	add    %al,(%eax)
	...

c0103110 <pid>:
	...

c0103120 <pool>:
	...

c0426000 <gdt>:
	...

c0426040 <tss>:
	...

c0427000 <kptab>:
	...

c0447000 <kpdir>:
	...

c0448000 <full>:
	...

c044800c <mutex>:
	...

c0448018 <buf>:
	...

c044802c <empty>:
	...

c0448040 <idt>:
	...

c0448840 <runq>:
	...

Disassembly of section .comment:

00000000 <.comment>:
   0:	47                   	inc    %edi
   1:	43                   	inc    %ebx
   2:	43                   	inc    %ebx
   3:	3a 20                	cmp    (%eax),%ah
   5:	28 55 62             	sub    %dl,0x62(%ebp)
   8:	75 6e                	jne    78 <memcpy-0xc00fff88>
   a:	74 75                	je     81 <memcpy-0xc00fff7f>
   c:	2f                   	das    
   d:	4c                   	dec    %esp
   e:	69 6e 61 72 6f 20 34 	imul   $0x34206f72,0x61(%esi),%ebp
  15:	2e 36 2e 33 2d 31 75 	cs ss xor %cs:%ss:0x75627531,%ebp
  1c:	62 75 
  1e:	6e                   	outsb  %ds:(%esi),(%dx)
  1f:	74 75                	je     96 <memcpy-0xc00fff6a>
  21:	35 29 20 34 2e       	xor    $0x2e342029,%eax
  26:	36 2e 33 00          	ss xor %cs:%ss:(%eax),%eax

Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
   0:	1c 00                	sbb    $0x0,%al
   2:	00 00                	add    %al,(%eax)
   4:	02 00                	add    (%eax),%al
   6:	00 00                	add    %al,(%eax)
   8:	00 00                	add    %al,(%eax)
   a:	04 00                	add    $0x0,%al
   c:	00 00                	add    %al,(%eax)
   e:	00 00                	add    %al,(%eax)
  10:	00 00                	add    %al,(%eax)
  12:	10 c0                	adc    %al,%al
  14:	a2 01 00 00 00       	mov    %al,0x1
  19:	00 00                	add    %al,(%eax)
  1b:	00 00                	add    %al,(%eax)
  1d:	00 00                	add    %al,(%eax)
  1f:	00 1c 00             	add    %bl,(%eax,%eax,1)
  22:	00 00                	add    %al,(%eax)
  24:	02 00                	add    (%eax),%al
  26:	f2 02 00             	repnz add (%eax),%al
  29:	00 04 00             	add    %al,(%eax,%eax,1)
  2c:	00 00                	add    %al,(%eax)
  2e:	00 00                	add    %al,(%eax)
  30:	b0 01                	mov    $0x1,%al
  32:	10 c0                	adc    %al,%al
  34:	4d                   	dec    %ebp
	...
  3d:	00 00                	add    %al,(%eax)
  3f:	00 1c 00             	add    %bl,(%eax,%eax,1)
  42:	00 00                	add    %al,(%eax)
  44:	02 00                	add    (%eax),%al
  46:	f4                   	hlt    
  47:	03 00                	add    (%eax),%eax
  49:	00 04 00             	add    %al,(%eax,%eax,1)
  4c:	00 00                	add    %al,(%eax)
  4e:	00 00                	add    %al,(%eax)
  50:	00 02                	add    %al,(%edx)
  52:	10 c0                	adc    %al,%al
  54:	46                   	inc    %esi
  55:	02 00                	add    (%eax),%al
	...
  5f:	00 1c 00             	add    %bl,(%eax,%eax,1)
  62:	00 00                	add    %al,(%eax)
  64:	02 00                	add    (%eax),%al
  66:	b4 09                	mov    $0x9,%ah
  68:	00 00                	add    %al,(%eax)
  6a:	04 00                	add    $0x0,%al
  6c:	00 00                	add    %al,(%eax)
  6e:	00 00                	add    %al,(%eax)
  70:	50                   	push   %eax
  71:	04 10                	add    $0x10,%al
  73:	c0 81 02 00 00 00 00 	rolb   $0x0,0x2(%ecx)
  7a:	00 00                	add    %al,(%eax)
  7c:	00 00                	add    %al,(%eax)
  7e:	00 00                	add    %al,(%eax)
  80:	1c 00                	sbb    $0x0,%al
  82:	00 00                	add    %al,(%eax)
  84:	02 00                	add    (%eax),%al
  86:	1c 0c                	sbb    $0xc,%al
  88:	00 00                	add    %al,(%eax)
  8a:	04 00                	add    $0x0,%al
  8c:	00 00                	add    %al,(%eax)
  8e:	00 00                	add    %al,(%eax)
  90:	e0 06                	loopne 98 <memcpy-0xc00fff68>
  92:	10 c0                	adc    %al,%al
  94:	59                   	pop    %ecx
  95:	02 00                	add    (%eax),%al
	...
  9f:	00 1c 00             	add    %bl,(%eax,%eax,1)
  a2:	00 00                	add    %al,(%eax)
  a4:	02 00                	add    (%eax),%al
  a6:	24 0d                	and    $0xd,%al
  a8:	00 00                	add    %al,(%eax)
  aa:	04 00                	add    $0x0,%al
  ac:	00 00                	add    %al,(%eax)
  ae:	00 00                	add    %al,(%eax)
  b0:	40                   	inc    %eax
  b1:	09 10                	or     %edx,(%eax)
  b3:	c0 82 00 00 00 00 00 	rolb   $0x0,0x0(%edx)
  ba:	00 00                	add    %al,(%eax)
  bc:	00 00                	add    %al,(%eax)
  be:	00 00                	add    %al,(%eax)
  c0:	1c 00                	sbb    $0x0,%al
  c2:	00 00                	add    %al,(%eax)
  c4:	02 00                	add    (%eax),%al
  c6:	bb 0f 00 00 04       	mov    $0x400000f,%ebx
  cb:	00 00                	add    %al,(%eax)
  cd:	00 00                	add    %al,(%eax)
  cf:	00 d0                	add    %dl,%al
  d1:	09 10                	or     %edx,(%eax)
  d3:	c0                   	(bad)  
  d4:	b7 01                	mov    $0x1,%bh
	...
  de:	00 00                	add    %al,(%eax)
  e0:	1c 00                	sbb    $0x0,%al
  e2:	00 00                	add    %al,(%eax)
  e4:	02 00                	add    (%eax),%al
  e6:	9d                   	popf   
  e7:	13 00                	adc    (%eax),%eax
  e9:	00 04 00             	add    %al,(%eax,%eax,1)
  ec:	00 00                	add    %al,(%eax)
  ee:	00 00                	add    %al,(%eax)
  f0:	90                   	nop
  f1:	0b 10                	or     (%eax),%edx
  f3:	c0                   	(bad)  
  f4:	76 04                	jbe    fa <memcpy-0xc00fff06>
	...
  fe:	00 00                	add    %al,(%eax)
 100:	1c 00                	sbb    $0x0,%al
 102:	00 00                	add    %al,(%eax)
 104:	02 00                	add    (%eax),%al
 106:	c1 17 00             	rcll   $0x0,(%edi)
 109:	00 04 00             	add    %al,(%eax,%eax,1)
 10c:	00 00                	add    %al,(%eax)
 10e:	00 00                	add    %al,(%eax)
 110:	10 10                	adc    %dl,(%eax)
 112:	10 c0                	adc    %al,%al
 114:	9c                   	pushf  
 115:	03 00                	add    (%eax),%eax
	...
 11f:	00 1c 00             	add    %bl,(%eax,%eax,1)
 122:	00 00                	add    %al,(%eax)
 124:	02 00                	add    (%eax),%al
 126:	9a 19 00 00 04 00 00 	lcall  $0x0,$0x4000019
 12d:	00 00                	add    %al,(%eax)
 12f:	00 b0 13 10 c0 e1    	add    %dh,-0x1e3fefed(%eax)
	...
 13d:	00 00                	add    %al,(%eax)
 13f:	00 1c 00             	add    %bl,(%eax,%eax,1)
 142:	00 00                	add    %al,(%eax)
 144:	02 00                	add    (%eax),%al
 146:	53                   	push   %ebx
 147:	1c 00                	sbb    $0x0,%al
 149:	00 04 00             	add    %al,(%eax,%eax,1)
 14c:	00 00                	add    %al,(%eax)
 14e:	00 00                	add    %al,(%eax)
 150:	a0 14 10 c0 67       	mov    0x67c01014,%al
	...
 15d:	00 00                	add    %al,(%eax)
 15f:	00 1c 00             	add    %bl,(%eax,%eax,1)
 162:	00 00                	add    %al,(%eax)
 164:	02 00                	add    (%eax),%al
 166:	af                   	scas   %es:(%edi),%eax
 167:	1e                   	push   %ds
 168:	00 00                	add    %al,(%eax)
 16a:	04 00                	add    $0x0,%al
 16c:	00 00                	add    %al,(%eax)
 16e:	00 00                	add    %al,(%eax)
 170:	10 15 10 c0 d6 00    	adc    %dl,0xd6c010
	...
 17e:	00 00                	add    %al,(%eax)
 180:	1c 00                	sbb    $0x0,%al
 182:	00 00                	add    %al,(%eax)
 184:	02 00                	add    (%eax),%al
 186:	15 23 00 00 04       	adc    $0x4000023,%eax
 18b:	00 00                	add    %al,(%eax)
 18d:	00 00                	add    %al,(%eax)
 18f:	00 f0                	add    %dh,%al
 191:	15 10 c0 86 01       	adc    $0x186c010,%eax
	...

Disassembly of section .debug_info:

00000000 <.debug_info>:
       0:	ee                   	out    %al,(%dx)
       1:	02 00                	add    (%eax),%al
       3:	00 02                	add    %al,(%edx)
       5:	00 00                	add    %al,(%eax)
       7:	00 00                	add    %al,(%eax)
       9:	00 04 01             	add    %al,(%ecx,%eax,1)
       c:	8c 00                	mov    %es,(%eax)
       e:	00 00                	add    %al,(%eax)
      10:	01 24 00             	add    %esp,(%eax,%eax,1)
      13:	00 00                	add    %al,(%eax)
      15:	55                   	push   %ebp
      16:	00 00                	add    %al,(%eax)
      18:	00 00                	add    %al,(%eax)
      1a:	00 10                	add    %dl,(%eax)
      1c:	c0 a2 01 10 c0 00 00 	shlb   $0x0,0xc01001(%edx)
      23:	00 00                	add    %al,(%eax)
      25:	02 06                	add    (%esi),%al
      27:	00 00                	add    %al,(%eax)
      29:	00 02                	add    %al,(%edx)
      2b:	04 30                	add    $0x30,%al
      2d:	00 00                	add    %al,(%eax)
      2f:	00 03                	add    %al,(%ebx)
      31:	04 07                	add    $0x7,%al
      33:	9e                   	sahf   
      34:	00 00                	add    %al,(%eax)
      36:	00 04 04             	add    %al,(%esp,%eax,1)
      39:	05 69 6e 74 00       	add    $0x746e69,%eax
      3e:	03 02                	add    (%edx),%eax
      40:	07                   	pop    %es
      41:	98                   	cwtl   
      42:	00 00                	add    %al,(%eax)
      44:	00 03                	add    %al,(%ebx)
      46:	02 05 c0 00 00 00    	add    0xc0,%al
      4c:	03 01                	add    (%ecx),%eax
      4e:	08 47 00             	or     %al,0x0(%edi)
      51:	00 00                	add    %al,(%eax)
      53:	03 01                	add    (%ecx),%eax
      55:	06                   	push   %es
      56:	50                   	push   %eax
      57:	00 00                	add    %al,(%eax)
      59:	00 02                	add    %al,(%edx)
      5b:	74 00                	je     5d <memcpy-0xc00fffa3>
      5d:	00 00                	add    %al,(%eax)
      5f:	02 0a                	add    (%edx),%cl
      61:	4c                   	dec    %esp
      62:	00 00                	add    %al,(%eax)
      64:	00 02                	add    %al,(%edx)
      66:	0f 00 00             	sldt   (%eax)
      69:	00 02                	add    %al,(%edx)
      6b:	0c 25                	or     $0x25,%al
      6d:	00 00                	add    %al,(%eax)
      6f:	00 05 01 85 00 00    	add    %al,0x8501
      75:	00 01                	add    %al,(%ecx)
      77:	06                   	push   %es
      78:	01 c9                	add    %ecx,%ecx
      7a:	00 00                	add    %al,(%eax)
      7c:	00 00                	add    %al,(%eax)
      7e:	00 10                	add    %dl,(%eax)
      80:	c0 2a 00             	shrb   $0x0,(%edx)
      83:	10 c0                	adc    %al,%al
      85:	00 00                	add    %al,(%eax)
      87:	00 00                	add    %al,(%eax)
      89:	c9                   	leave  
      8a:	00 00                	add    %al,(%eax)
      8c:	00 06                	add    %al,(%esi)
      8e:	64                   	fs
      8f:	73 74                	jae    105 <memcpy-0xc00ffefb>
      91:	00 01                	add    %al,(%ecx)
      93:	06                   	push   %es
      94:	c9                   	leave  
      95:	00 00                	add    %al,(%eax)
      97:	00 38                	add    %bh,(%eax)
      99:	00 00                	add    %al,(%eax)
      9b:	00 06                	add    %al,(%esi)
      9d:	73 72                	jae    111 <memcpy-0xc00ffeef>
      9f:	63 00                	arpl   %ax,(%eax)
      a1:	01 06                	add    %eax,(%esi)
      a3:	cb                   	lret   
      a4:	00 00                	add    %al,(%eax)
      a6:	00 4c 00 00          	add    %cl,0x0(%eax,%eax,1)
      aa:	00 07                	add    %al,(%edi)
      ac:	5e                   	pop    %esi
      ad:	01 00                	add    %eax,(%eax)
      af:	00 01                	add    %al,(%ecx)
      b1:	06                   	push   %es
      b2:	65 00 00             	add    %al,%gs:(%eax)
      b5:	00 60 00             	add    %ah,0x0(%eax)
      b8:	00 00                	add    %al,(%eax)
      ba:	08 72 65             	or     %dh,0x65(%edx)
      bd:	74 00                	je     bf <memcpy-0xc00fff41>
      bf:	01 07                	add    %eax,(%edi)
      c1:	c9                   	leave  
      c2:	00 00                	add    %al,(%eax)
      c4:	00 02                	add    %al,(%edx)
      c6:	91                   	xchg   %eax,%ecx
      c7:	00 00                	add    %al,(%eax)
      c9:	09 04 0a             	or     %eax,(%edx,%ecx,1)
      cc:	04 d1                	add    $0xd1,%al
      ce:	00 00                	add    %al,(%eax)
      d0:	00 0b                	add    %cl,(%ebx)
      d2:	05 01 ca 00 00       	add    $0xca01,%eax
      d7:	00 01                	add    %al,(%ecx)
      d9:	11 01                	adc    %eax,(%ecx)
      db:	c9                   	leave  
      dc:	00 00                	add    %al,(%eax)
      de:	00 30                	add    %dh,(%eax)
      e0:	00 10                	add    %dl,(%eax)
      e2:	c0 55 00 10          	rclb   $0x10,0x0(%ebp)
      e6:	c0 84 00 00 00 2a 01 	rolb   $0x0,0x12a0000(%eax,%eax,1)
      ed:	00 
      ee:	00 06                	add    %al,(%esi)
      f0:	64                   	fs
      f1:	73 74                	jae    167 <memcpy-0xc00ffe99>
      f3:	00 01                	add    %al,(%ecx)
      f5:	11 c9                	adc    %ecx,%ecx
      f7:	00 00                	add    %al,(%eax)
      f9:	00 bc 00 00 00 0c 76 	add    %bh,0x760c0000(%eax,%eax,1)
     100:	61                   	popa   
     101:	6c                   	insb   (%dx),%es:(%edi)
     102:	00 01                	add    %al,(%ecx)
     104:	11 37                	adc    %esi,(%edi)
     106:	00 00                	add    %al,(%eax)
     108:	00 02                	add    %al,(%edx)
     10a:	91                   	xchg   %eax,%ecx
     10b:	04 07                	add    $0x7,%al
     10d:	5e                   	pop    %esi
     10e:	01 00                	add    %eax,(%eax)
     110:	00 01                	add    %al,(%ecx)
     112:	11 65 00             	adc    %esp,0x0(%ebp)
     115:	00 00                	add    %al,(%eax)
     117:	db 00                	fildl  (%eax)
     119:	00 00                	add    %al,(%eax)
     11b:	0d ba 00 00 00       	or     $0xba,%eax
     120:	01 12                	add    %edx,(%edx)
     122:	c9                   	leave  
     123:	00 00                	add    %al,(%eax)
     125:	00 02                	add    %al,(%edx)
     127:	91                   	xchg   %eax,%ecx
     128:	00 00                	add    %al,(%eax)
     12a:	05 01 d1 00 00       	add    $0xd101,%eax
     12f:	00 01                	add    %al,(%ecx)
     131:	29 01                	sub    %eax,(%ecx)
     133:	85 01                	test   %eax,(%ecx)
     135:	00 00                	add    %al,(%eax)
     137:	60                   	pusha  
     138:	00 10                	add    %dl,(%eax)
     13a:	c0 bc 00 10 c0 ff 00 	sarb   $0x0,0xffc010(%eax,%eax,1)
     141:	00 
     142:	00 85 01 00 00 07    	add    %al,0x7000001(%ebp)
     148:	00 00                	add    %al,(%eax)
     14a:	00 00                	add    %al,(%eax)
     14c:	01 29                	add    %ebp,(%ecx)
     14e:	30 00                	xor    %al,(%eax)
     150:	00 00                	add    %al,(%eax)
     152:	43                   	inc    %ebx
     153:	01 00                	add    %eax,(%eax)
     155:	00 06                	add    %al,(%esi)
     157:	62 75 66             	bound  %esi,0x66(%ebp)
     15a:	00 01                	add    %al,(%ecx)
     15c:	29 85 01 00 00 79    	sub    %eax,0x79000001(%ebp)
     162:	01 00                	add    %eax,(%eax)
     164:	00 0e                	add    %cl,(%esi)
     166:	42                   	inc    %edx
     167:	00 00                	add    %al,(%eax)
     169:	00 01                	add    %al,(%ecx)
     16b:	29 37                	sub    %esi,(%edi)
     16d:	00 00                	add    %al,(%eax)
     16f:	00 02                	add    %al,(%edx)
     171:	91                   	xchg   %eax,%ecx
     172:	08 0d ab 00 00 00    	or     %cl,0xab
     178:	01 2a                	add    %ebp,(%edx)
     17a:	9b                   	fwait
     17b:	01 00                	add    %eax,(%eax)
     17d:	00 05 03 29 18 10    	add    %al,0x10182903
     183:	c0 00 0a             	rolb   $0xa,(%eax)
     186:	04 53                	add    $0x53,%al
     188:	00 00                	add    %al,(%eax)
     18a:	00 0f                	add    %cl,(%edi)
     18c:	53                   	push   %ebx
     18d:	00 00                	add    %al,(%eax)
     18f:	00 9b 01 00 00 10    	add    %bl,0x10000001(%ebx)
     195:	30 00                	xor    %al,(%eax)
     197:	00 00                	add    %al,(%eax)
     199:	10 00                	adc    %al,(%eax)
     19b:	11 8b 01 00 00 05    	adc    %ecx,0x5000001(%ebx)
     1a1:	01 16                	add    %edx,(%esi)
     1a3:	00 00                	add    %al,(%eax)
     1a5:	00 01                	add    %al,(%ecx)
     1a7:	1b 01                	sbb    (%ecx),%eax
     1a9:	85 01                	test   %eax,(%ecx)
     1ab:	00 00                	add    %al,(%eax)
     1ad:	c0 00 10             	rolb   $0x10,(%eax)
     1b0:	c0 05 01 10 c0 a4 01 	rolb   $0x1,0xa4c01001
     1b7:	00 00                	add    %al,(%eax)
     1b9:	f9                   	stc    
     1ba:	01 00                	add    %eax,(%eax)
     1bc:	00 07                	add    %al,(%edi)
     1be:	00 00                	add    %al,(%eax)
     1c0:	00 00                	add    %al,(%eax)
     1c2:	01 1b                	add    %ebx,(%ebx)
     1c4:	37                   	aaa    
     1c5:	00 00                	add    %al,(%eax)
     1c7:	00 f4                	add    %dh,%ah
     1c9:	01 00                	add    %eax,(%eax)
     1cb:	00 06                	add    %al,(%esi)
     1cd:	62 75 66             	bound  %esi,0x66(%ebp)
     1d0:	00 01                	add    %al,(%ecx)
     1d2:	1b 85 01 00 00 17    	sbb    0x17000001(%ebp),%eax
     1d8:	02 00                	add    (%eax),%al
     1da:	00 0e                	add    %cl,(%esi)
     1dc:	42                   	inc    %edx
     1dd:	00 00                	add    %al,(%eax)
     1df:	00 01                	add    %al,(%ecx)
     1e1:	1b 37                	sbb    (%edi),%esi
     1e3:	00 00                	add    %al,(%eax)
     1e5:	00 02                	add    %al,(%edx)
     1e7:	91                   	xchg   %eax,%ecx
     1e8:	08 12                	or     %dl,(%edx)
     1ea:	7c 00                	jl     1ec <memcpy-0xc00ffe14>
     1ec:	00 00                	add    %al,(%eax)
     1ee:	01 1c 5a             	add    %ebx,(%edx,%ebx,2)
     1f1:	00 00                	add    %al,(%eax)
     1f3:	00 43 02             	add    %al,0x2(%ebx)
     1f6:	00 00                	add    %al,(%eax)
     1f8:	00 05 01 3a 00 00    	add    %al,0x3a01
     1fe:	00 01                	add    %al,(%ecx)
     200:	35 01 37 00 00       	xor    $0x3701,%eax
     205:	00 10                	add    %dl,(%eax)
     207:	01 10                	add    %edx,(%eax)
     209:	c0 24 01 10          	shlb   $0x10,(%ecx,%eax,1)
     20d:	c0 63 02 00          	shlb   $0x0,0x2(%ebx)
     211:	00 24 02             	add    %ah,(%edx,%eax,1)
     214:	00 00                	add    %al,(%eax)
     216:	0c 63                	or     $0x63,%al
     218:	68 00 01 35 37       	push   $0x37350100
     21d:	00 00                	add    %al,(%eax)
     21f:	00 02                	add    %al,(%edx)
     221:	91                   	xchg   %eax,%ecx
     222:	00 00                	add    %al,(%eax)
     224:	05 01 b2 00 00       	add    $0xb201,%eax
     229:	00 01                	add    %al,(%ecx)
     22b:	39 01                	cmp    %eax,(%ecx)
     22d:	37                   	aaa    
     22e:	00 00                	add    %al,(%eax)
     230:	00 30                	add    %dh,(%eax)
     232:	01 10                	add    %edx,(%eax)
     234:	c0 44 01 10 c0       	rolb   $0xc0,0x10(%ecx,%eax,1)
     239:	9b                   	fwait
     23a:	02 00                	add    (%eax),%al
     23c:	00 4f 02             	add    %cl,0x2(%edi)
     23f:	00 00                	add    %al,(%eax)
     241:	0c 63                	or     $0x63,%al
     243:	68 00 01 39 37       	push   $0x37390100
     248:	00 00                	add    %al,(%eax)
     24a:	00 02                	add    %al,(%edx)
     24c:	91                   	xchg   %eax,%ecx
     24d:	00 00                	add    %al,(%eax)
     24f:	05 01 1f 00 00       	add    $0x1f01,%eax
     254:	00 01                	add    %al,(%ecx)
     256:	3e 01 85 01 00 00 50 	add    %eax,%ds:0x50000001(%ebp)
     25d:	01 10                	add    %edx,(%eax)
     25f:	c0                   	(bad)  
     260:	72 01                	jb     263 <memcpy-0xc00ffd9d>
     262:	10 c0                	adc    %al,%al
     264:	d3 02                	roll   %cl,(%edx)
     266:	00 00                	add    %al,(%eax)
     268:	9a 02 00 00 0e 00 00 	lcall  $0x0,$0xe000002
     26f:	00 00                	add    %al,(%eax)
     271:	01 3e                	add    %edi,(%esi)
     273:	37                   	aaa    
     274:	00 00                	add    %al,(%eax)
     276:	00 02                	add    %al,(%edx)
     278:	91                   	xchg   %eax,%ecx
     279:	00 0e                	add    %cl,(%esi)
     27b:	42                   	inc    %edx
     27c:	00 00                	add    %al,(%eax)
     27e:	00 01                	add    %al,(%ecx)
     280:	3e                   	ds
     281:	37                   	aaa    
     282:	00 00                	add    %al,(%eax)
     284:	00 02                	add    %al,(%edx)
     286:	91                   	xchg   %eax,%ecx
     287:	04 08                	add    $0x8,%al
     289:	62 75 66             	bound  %esi,0x66(%ebp)
     28c:	00 01                	add    %al,(%ecx)
     28e:	3f                   	aas    
     28f:	9a 02 00 00 05 03 00 	lcall  $0x3,$0x5000002
     296:	30 10                	xor    %dl,(%eax)
     298:	c0 00 0f             	rolb   $0xf,(%eax)
     29b:	53                   	push   %ebx
     29c:	00 00                	add    %al,(%eax)
     29e:	00 aa 02 00 00 10    	add    %ch,0x10000002(%edx)
     2a4:	30 00                	xor    %al,(%eax)
     2a6:	00 00                	add    %al,(%eax)
     2a8:	31 00                	xor    %eax,(%eax)
     2aa:	13 01                	adc    (%ecx),%eax
     2ac:	35 00 00 00 01       	xor    $0x1000000,%eax
     2b1:	44                   	inc    %esp
     2b2:	01 85 01 00 00 80    	add    %eax,-0x7fffffff(%ebp)
     2b8:	01 10                	add    %edx,(%eax)
     2ba:	c0 a2 01 10 c0 0b 03 	shlb   $0x3,0xbc01001(%edx)
     2c1:	00 00                	add    %al,(%eax)
     2c3:	0e                   	push   %cs
     2c4:	00 00                	add    %al,(%eax)
     2c6:	00 00                	add    %al,(%eax)
     2c8:	01 44 30 00          	add    %eax,0x0(%eax,%esi,1)
     2cc:	00 00                	add    %al,(%eax)
     2ce:	02 91 00 0e 42 00    	add    0x420e00(%ecx),%dl
     2d4:	00 00                	add    %al,(%eax)
     2d6:	01 44 37 00          	add    %eax,0x0(%edi,%esi,1)
     2da:	00 00                	add    %al,(%eax)
     2dc:	02 91 04 08 62 75    	add    0x75620804(%ecx),%dl
     2e2:	66                   	data16
     2e3:	00 01                	add    %al,(%ecx)
     2e5:	45                   	inc    %ebp
     2e6:	9a 02 00 00 05 03 40 	lcall  $0x4003,$0x5000002
     2ed:	30 10                	xor    %dl,(%eax)
     2ef:	c0 00 00             	rolb   $0x0,(%eax)
     2f2:	fe 00                	incb   (%eax)
     2f4:	00 00                	add    %al,(%eax)
     2f6:	02 00                	add    (%eax),%al
     2f8:	fe 00                	incb   (%eax)
     2fa:	00 00                	add    %al,(%eax)
     2fc:	04 01                	add    $0x1,%al
     2fe:	8c 00                	mov    %es,(%eax)
     300:	00 00                	add    %al,(%eax)
     302:	01 ef                	add    %ebp,%edi
     304:	00 00                	add    %al,(%eax)
     306:	00 55 00             	add    %dl,0x0(%ebp)
     309:	00 00                	add    %al,(%eax)
     30b:	b0 01                	mov    $0x1,%al
     30d:	10 c0                	adc    %al,%al
     30f:	fd                   	std    
     310:	01 10                	add    %edx,(%eax)
     312:	c0 a4 00 00 00 02 04 	shlb   $0x7,0x4020000(%eax,%eax,1)
     319:	07 
     31a:	9e                   	sahf   
     31b:	00 00                	add    %al,(%eax)
     31d:	00 03                	add    %al,(%ebx)
     31f:	04 05                	add    $0x5,%al
     321:	69 6e 74 00 02 02 07 	imul   $0x7020200,0x74(%esi),%ebp
     328:	98                   	cwtl   
     329:	00 00                	add    %al,(%eax)
     32b:	00 02                	add    %al,(%edx)
     32d:	02 05 c0 00 00 00    	add    0xc0,%al
     333:	02 01                	add    (%ecx),%al
     335:	08 47 00             	or     %al,0x0(%edi)
     338:	00 00                	add    %al,(%eax)
     33a:	02 01                	add    (%ecx),%al
     33c:	06                   	push   %es
     33d:	50                   	push   %eax
     33e:	00 00                	add    %al,(%eax)
     340:	00 04 63             	add    %al,(%ebx,%eiz,2)
     343:	6c                   	insb   (%dx),%es:(%edi)
     344:	69 00 02 9f 01 03    	imul   $0x3019f02,(%eax),%eax
     34a:	05 da 00 00 00       	add    $0xda,%eax
     34f:	02 a5 03 06 01 04    	add    0x4010603(%ebp),%ah
     355:	01 00                	add    %eax,(%eax)
     357:	00 01                	add    %al,(%ecx)
     359:	05 01 b0 01 10       	add    $0x1001b001,%eax
     35e:	c0 d4 01             	rcl    $0x1,%ah
     361:	10 c0                	adc    %al,%al
     363:	43                   	inc    %ebx
     364:	03 00                	add    (%eax),%eax
     366:	00 b4 00 00 00 07 ea 	add    %dh,-0x15f90000(%eax,%eax,1)
     36d:	00 00                	add    %al,(%eax)
     36f:	00 01                	add    %al,(%ecx)
     371:	05 b4 00 00 00       	add    $0xb4,%eax
     376:	02 91 00 07 ff 00    	add    0xff0700(%ecx),%dl
     37c:	00 00                	add    %al,(%eax)
     37e:	01 05 2c 00 00 00    	add    %eax,0x2c
     384:	02 91 04 08 4f 00    	add    0x4f0804(%ecx),%dl
     38a:	00 00                	add    %al,(%eax)
     38c:	b6 01                	mov    $0x1,%dh
     38e:	10 c0                	adc    %al,%al
     390:	b7 01                	mov    $0x1,%bh
     392:	10 c0                	adc    %al,%al
     394:	01 06                	add    %eax,(%esi)
     396:	08 58 00             	or     %bl,0x0(%eax)
     399:	00 00                	add    %al,(%eax)
     39b:	d1 01                	roll   (%ecx)
     39d:	10 c0                	adc    %al,%al
     39f:	d2 01                	rolb   %cl,(%ecx)
     3a1:	10 c0                	adc    %al,%al
     3a3:	01 08                	add    %ecx,(%eax)
     3a5:	00 09                	add    %cl,(%ecx)
     3a7:	04 ba                	add    $0xba,%al
     3a9:	00 00                	add    %al,(%eax)
     3ab:	00 0a                	add    %cl,(%edx)
     3ad:	48                   	dec    %eax
     3ae:	00 00                	add    %al,(%eax)
     3b0:	00 0b                	add    %cl,(%ebx)
     3b2:	01 e4                	add    %esp,%esp
     3b4:	00 00                	add    %al,(%eax)
     3b6:	00 01                	add    %al,(%ecx)
     3b8:	0c 01                	or     $0x1,%al
     3ba:	e0 01                	loopne 3bd <memcpy-0xc00ffc43>
     3bc:	10 c0                	adc    %al,%al
     3be:	fd                   	std    
     3bf:	01 10                	add    %edx,(%eax)
     3c1:	c0 7b 03 00          	sarb   $0x0,0x3(%ebx)
     3c5:	00 0c 73             	add    %cl,(%ebx,%esi,2)
     3c8:	74 72                	je     43c <memcpy-0xc00ffbc4>
     3ca:	00 01                	add    %al,(%ecx)
     3cc:	0c b4                	or     $0xb4,%al
     3ce:	00 00                	add    %al,(%eax)
     3d0:	00 02                	add    %al,(%edx)
     3d2:	91                   	xchg   %eax,%ecx
     3d3:	00 08                	add    %cl,(%eax)
     3d5:	4f                   	dec    %edi
     3d6:	00 00                	add    %al,(%eax)
     3d8:	00 e6                	add    %ah,%dh
     3da:	01 10                	add    %edx,(%eax)
     3dc:	c0 e7 01             	shl    $0x1,%bh
     3df:	10 c0                	adc    %al,%al
     3e1:	01 0d 08 58 00 00    	add    %ecx,0x5808
     3e7:	00 fa                	add    %bh,%dl
     3e9:	01 10                	add    %edx,(%eax)
     3eb:	c0 fb 01             	sar    $0x1,%bl
     3ee:	10 c0                	adc    %al,%al
     3f0:	01 0f                	add    %ecx,(%edi)
     3f2:	00 00                	add    %al,(%eax)
     3f4:	bc 05 00 00 02       	mov    $0x2000005,%esp
     3f9:	00 ad 01 00 00 04    	add    %ch,0x4000001(%ebp)
     3ff:	01 8c 00 00 00 01 a0 	add    %ecx,-0x5fff0000(%eax,%eax,1)
     406:	01 00                	add    %eax,(%eax)
     408:	00 55 00             	add    %dl,0x0(%ebp)
     40b:	00 00                	add    %al,(%eax)
     40d:	00 02                	add    %al,(%edx)
     40f:	10 c0                	adc    %al,%al
     411:	46                   	inc    %esi
     412:	04 10                	add    $0x10,%al
     414:	c0 27 01             	shlb   $0x1,(%edi)
     417:	00 00                	add    %al,(%eax)
     419:	02 06                	add    (%esi),%al
     41b:	00 00                	add    %al,(%eax)
     41d:	00 04 04             	add    %al,(%esp,%eax,1)
     420:	30 00                	xor    %al,(%eax)
     422:	00 00                	add    %al,(%eax)
     424:	03 04 07             	add    (%edi,%eax,1),%eax
     427:	9e                   	sahf   
     428:	00 00                	add    %al,(%eax)
     42a:	00 02                	add    %al,(%edx)
     42c:	07                   	pop    %es
     42d:	00 00                	add    %al,(%eax)
     42f:	00 04 05 42 00 00 00 	add    %al,0x42(,%eax,1)
     436:	04 04                	add    $0x4,%al
     438:	05 69 6e 74 00       	add    $0x746e69,%eax
     43d:	03 02                	add    (%edx),%eax
     43f:	07                   	pop    %es
     440:	98                   	cwtl   
     441:	00 00                	add    %al,(%eax)
     443:	00 03                	add    %al,(%ebx)
     445:	02 05 c0 00 00 00    	add    0xc0,%al
     44b:	02 51 01             	add    0x1(%ecx),%dl
     44e:	00 00                	add    %al,(%eax)
     450:	04 08                	add    $0x8,%al
     452:	62 00                	bound  %eax,(%eax)
     454:	00 00                	add    %al,(%eax)
     456:	03 01                	add    (%ecx),%eax
     458:	08 47 00             	or     %al,0x0(%edi)
     45b:	00 00                	add    %al,(%eax)
     45d:	03 01                	add    (%ecx),%eax
     45f:	06                   	push   %es
     460:	50                   	push   %eax
     461:	00 00                	add    %al,(%eax)
     463:	00 02                	add    %al,(%edx)
     465:	74 00                	je     467 <memcpy-0xc00ffb99>
     467:	00 00                	add    %al,(%eax)
     469:	04 0a                	add    $0xa,%al
     46b:	62 00                	bound  %eax,(%eax)
     46d:	00 00                	add    %al,(%eax)
     46f:	05 14 01 00 00       	add    $0x114,%eax
     474:	4c                   	dec    %esp
     475:	02 8d 8c 01 00 00    	add    0x18c(%ebp),%cl
     47b:	06                   	push   %es
     47c:	65 64 69 00 02 8e 25 	gs imul $0x258e02,%fs:%gs:(%eax),%eax
     483:	00 
     484:	00 00                	add    %al,(%eax)
     486:	02 23                	add    (%ebx),%ah
     488:	00 06                	add    %al,(%esi)
     48a:	65                   	gs
     48b:	73 69                	jae    4f6 <memcpy-0xc00ffb0a>
     48d:	00 02                	add    %al,(%edx)
     48f:	8e 25 00 00 00 02    	mov    0x2000000,%fs
     495:	23 04 06             	and    (%esi,%eax,1),%eax
     498:	65 62 70 00          	bound  %esi,%gs:0x0(%eax)
     49c:	02 8e 25 00 00 00    	add    0x25(%esi),%cl
     4a2:	02 23                	add    (%ebx),%ah
     4a4:	08 07                	or     %al,(%edi)
     4a6:	af                   	scas   %es:(%edi),%eax
     4a7:	01 00                	add    %eax,(%eax)
     4a9:	00 02                	add    %al,(%edx)
     4ab:	8e 25 00 00 00 02    	mov    0x2000000,%fs
     4b1:	23 0c 06             	and    (%esi,%eax,1),%ecx
     4b4:	65 62 78 00          	bound  %edi,%gs:0x0(%eax)
     4b8:	02 8f 25 00 00 00    	add    0x25(%edi),%cl
     4be:	02 23                	add    (%ebx),%ah
     4c0:	10 06                	adc    %al,(%esi)
     4c2:	65                   	gs
     4c3:	64                   	fs
     4c4:	78 00                	js     4c6 <memcpy-0xc00ffb3a>
     4c6:	02 8f 25 00 00 00    	add    0x25(%edi),%cl
     4cc:	02 23                	add    (%ebx),%ah
     4ce:	14 06                	adc    $0x6,%al
     4d0:	65 63 78 00          	arpl   %di,%gs:0x0(%eax)
     4d4:	02 8f 25 00 00 00    	add    0x25(%edi),%cl
     4da:	02 23                	add    (%ebx),%ah
     4dc:	18 06                	sbb    %al,(%esi)
     4de:	65                   	gs
     4df:	61                   	popa   
     4e0:	78 00                	js     4e2 <memcpy-0xc00ffb1e>
     4e2:	02 8f 25 00 00 00    	add    0x25(%edi),%cl
     4e8:	02 23                	add    (%ebx),%ah
     4ea:	1c 06                	sbb    $0x6,%al
     4ec:	67 73 00             	addr16 jae 4ef <memcpy-0xc00ffb11>
     4ef:	02 90 25 00 00 00    	add    0x25(%eax),%dl
     4f5:	02 23                	add    (%ebx),%ah
     4f7:	20 06                	and    %al,(%esi)
     4f9:	66                   	data16
     4fa:	73 00                	jae    4fc <memcpy-0xc00ffb04>
     4fc:	02 90 25 00 00 00    	add    0x25(%eax),%dl
     502:	02 23                	add    (%ebx),%ah
     504:	24 06                	and    $0x6,%al
     506:	65                   	gs
     507:	73 00                	jae    509 <memcpy-0xc00ffaf7>
     509:	02 90 25 00 00 00    	add    0x25(%eax),%dl
     50f:	02 23                	add    (%ebx),%ah
     511:	28 06                	sub    %al,(%esi)
     513:	64                   	fs
     514:	73 00                	jae    516 <memcpy-0xc00ffaea>
     516:	02 90 25 00 00 00    	add    0x25(%eax),%dl
     51c:	02 23                	add    (%ebx),%ah
     51e:	2c 06                	sub    $0x6,%al
     520:	69 72 71 00 02 91 42 	imul   $0x42910200,0x71(%edx),%esi
     527:	00 00                	add    %al,(%eax)
     529:	00 02                	add    %al,(%edx)
     52b:	23 30                	and    (%eax),%esi
     52d:	06                   	push   %es
     52e:	65                   	gs
     52f:	72 72                	jb     5a3 <memcpy-0xc00ffa5d>
     531:	00 02                	add    %al,(%edx)
     533:	92                   	xchg   %eax,%edx
     534:	25 00 00 00 02       	and    $0x2000000,%eax
     539:	23 34 06             	and    (%esi,%eax,1),%esi
     53c:	65 69 70 00 02 92 25 	imul   $0x259202,%gs:0x0(%eax),%esi
     543:	00 
     544:	00 00                	add    %al,(%eax)
     546:	02 23                	add    (%ebx),%ah
     548:	38 06                	cmp    %al,(%esi)
     54a:	63 73 00             	arpl   %si,0x0(%ebx)
     54d:	02 92 25 00 00 00    	add    0x25(%edx),%dl
     553:	02 23                	add    (%ebx),%ah
     555:	3c 07                	cmp    $0x7,%al
     557:	27                   	daa    
     558:	01 00                	add    %eax,(%eax)
     55a:	00 02                	add    %al,(%edx)
     55c:	92                   	xchg   %eax,%edx
     55d:	25 00 00 00 02       	and    $0x2000000,%eax
     562:	23 40 06             	and    0x6(%eax),%eax
     565:	65                   	gs
     566:	73 70                	jae    5d8 <memcpy-0xc00ffa28>
     568:	00 02                	add    %al,(%edx)
     56a:	93                   	xchg   %eax,%ebx
     56b:	25 00 00 00 02       	and    $0x2000000,%eax
     570:	23 44 06 73          	and    0x73(%esi,%eax,1),%eax
     574:	73 00                	jae    576 <memcpy-0xc00ffa8a>
     576:	02 93 25 00 00 00    	add    0x25(%ebx),%dl
     57c:	02 23                	add    (%ebx),%ah
     57e:	48                   	dec    %eax
     57f:	00 02                	add    %al,(%edx)
     581:	14 01                	adc    $0x1,%al
     583:	00 00                	add    %al,(%eax)
     585:	02 95 7b 00 00 00    	add    0x7b(%ebp),%dl
     58b:	05 c6 01 00 00       	add    $0x1c6,%eax
     590:	08 03                	or     %al,(%ebx)
     592:	06                   	push   %es
     593:	c0 01 00             	rolb   $0x0,(%ecx)
     596:	00 07                	add    %al,(%edi)
     598:	cf                   	iret   
     599:	01 00                	add    %eax,(%eax)
     59b:	00 03                	add    %al,(%ebx)
     59d:	07                   	pop    %es
     59e:	c0 01 00             	rolb   $0x0,(%ecx)
     5a1:	00 02                	add    %al,(%edx)
     5a3:	23 00                	and    (%eax),%eax
     5a5:	07                   	pop    %es
     5a6:	63 02                	arpl   %ax,(%edx)
     5a8:	00 00                	add    %al,(%eax)
     5aa:	03 07                	add    (%edi),%eax
     5ac:	c0 01 00             	rolb   $0x0,(%ecx)
     5af:	00 02                	add    %al,(%edx)
     5b1:	23 04 00             	and    (%eax,%eax,1),%eax
     5b4:	08 04 97             	or     %al,(%edi,%edx,4)
     5b7:	01 00                	add    %eax,(%eax)
     5b9:	00 02                	add    %al,(%edx)
     5bb:	c6 01 00             	movb   $0x0,(%ecx)
     5be:	00 03                	add    %al,(%ebx)
     5c0:	09 97 01 00 00 09    	or     %edx,0x9000001(%edi)
     5c6:	50                   	push   %eax
     5c7:	43                   	inc    %ebx
     5c8:	42                   	inc    %edx
     5c9:	00 60 1f             	add    %ah,0x1f(%eax)
     5cc:	05 0a 40 02 00       	add    $0x2400a,%eax
     5d1:	00 06                	add    %al,(%esi)
     5d3:	74 66                	je     63b <memcpy-0xc00ff9c5>
     5d5:	00 05 0b 40 02 00    	add    %al,0x2400b
     5db:	00 02                	add    %al,(%edx)
     5dd:	23 00                	and    (%eax),%eax
     5df:	07                   	pop    %es
     5e0:	47                   	inc    %edi
     5e1:	01 00                	add    %eax,(%eax)
     5e3:	00 05 0c c6 01 00    	add    %al,0x1c60c
     5e9:	00 02                	add    %al,(%edx)
     5eb:	23 04 07             	and    (%edi,%eax,1),%eax
     5ee:	b4 01                	mov    $0x1,%ah
     5f0:	00 00                	add    %al,(%eax)
     5f2:	05 0c c6 01 00       	add    $0x1c60c,%eax
     5f7:	00 02                	add    %al,(%edx)
     5f9:	23 0c 07             	and    (%edi,%eax,1),%ecx
     5fc:	59                   	pop    %ecx
     5fd:	01 00                	add    %eax,(%eax)
     5ff:	00 05 0d 37 00 00    	add    %al,0x370d
     605:	00 02                	add    %al,(%edx)
     607:	23 14 06             	and    (%esi,%eax,1),%edx
     60a:	70 69                	jo     675 <memcpy-0xc00ff98b>
     60c:	64 00 05 0d 37 00 00 	add    %al,%fs:0x370d
     613:	00 02                	add    %al,(%edx)
     615:	23 18                	and    (%eax),%ebx
     617:	07                   	pop    %es
     618:	d4 01                	aam    $0x1
     61a:	00 00                	add    %al,(%eax)
     61c:	05 0e 70 00 00       	add    $0x700e,%eax
     621:	00 02                	add    %al,(%edx)
     623:	23 1c 07             	and    (%edi,%eax,1),%ebx
     626:	94                   	xchg   %eax,%esp
     627:	01 00                	add    %eax,(%eax)
     629:	00 05 0f 46 02 00    	add    %al,0x2460f
     62f:	00 02                	add    %al,(%edx)
     631:	23 1d 00 08 04 8c    	and    0x8c040800,%ebx
     637:	01 00                	add    %eax,(%eax)
     639:	00 0a                	add    %cl,(%edx)
     63b:	57                   	push   %edi
     63c:	00 00                	add    %al,(%eax)
     63e:	00 57 02             	add    %dl,0x2(%edi)
     641:	00 00                	add    %al,(%eax)
     643:	0b 30                	or     (%eax),%esi
     645:	00 00                	add    %al,(%eax)
     647:	00 3f                	add    %bh,(%edi)
     649:	1f                   	pop    %ds
     64a:	00 0c 50             	add    %cl,(%eax,%edx,2)
     64d:	43                   	inc    %ebx
     64e:	42                   	inc    %edx
     64f:	00 05 10 d1 01 00    	add    %al,0x1d110
     655:	00 05 0a 01 00 00    	add    %al,0x10a
     65b:	0c 06                	or     $0x6,%al
     65d:	08 8b 02 00 00 07    	or     %cl,0x7000002(%ebx)
     663:	5e                   	pop    %esi
     664:	01 00                	add    %eax,(%eax)
     666:	00 06                	add    %al,(%esi)
     668:	09 37                	or     %esi,(%edi)
     66a:	00 00                	add    %al,(%eax)
     66c:	00 02                	add    %al,(%edx)
     66e:	23 00                	and    (%eax),%eax
     670:	07                   	pop    %es
     671:	6f                   	outsl  %ds:(%esi),(%dx)
     672:	01 00                	add    %eax,(%eax)
     674:	00 06                	add    %al,(%esi)
     676:	0a c6                	or     %dh,%al
     678:	01 00                	add    %eax,(%eax)
     67a:	00 02                	add    %al,(%edx)
     67c:	23 04 00             	and    (%eax,%eax,1),%eax
     67f:	02 0a                	add    (%edx),%cl
     681:	01 00                	add    %eax,(%eax)
     683:	00 06                	add    %al,(%esi)
     685:	0b 62 02             	or     0x2(%edx),%esp
     688:	00 00                	add    %al,(%eax)
     68a:	0d 3e 01 00 00       	or     $0x13e,%eax
     68f:	03 0f                	add    (%edi),%ecx
     691:	01 03                	add    %eax,(%ebx)
     693:	c5 02                	lds    (%edx),%eax
     695:	00 00                	add    %al,(%eax)
     697:	0e                   	push   %cs
     698:	cf                   	iret   
     699:	01 00                	add    %eax,(%eax)
     69b:	00 03                	add    %al,(%ebx)
     69d:	0f c5                	pextrw $0xc5,(bad),%eax
     69f:	02 00                	add    (%eax),%al
     6a1:	00 0e                	add    %cl,(%esi)
     6a3:	63 02                	arpl   %ax,(%edx)
     6a5:	00 00                	add    %al,(%eax)
     6a7:	03 0f                	add    (%edi),%ecx
     6a9:	c5 02                	lds    (%edx),%eax
     6ab:	00 00                	add    %al,(%eax)
     6ad:	0e                   	push   %cs
     6ae:	9b                   	fwait
     6af:	01 00                	add    %eax,(%eax)
     6b1:	00 03                	add    %al,(%ebx)
     6b3:	0f c5                	pextrw $0xc5,(bad),%eax
     6b5:	02 00                	add    (%eax),%al
     6b7:	00 00                	add    %al,(%eax)
     6b9:	08 04 c6             	or     %al,(%esi,%eax,8)
     6bc:	01 00                	add    %eax,(%eax)
     6be:	00 0f                	add    %cl,(%edi)
     6c0:	87 01                	xchg   %eax,(%ecx)
     6c2:	00 00                	add    %al,(%eax)
     6c4:	02 ab 01 25 00 00    	add    0x2501(%ebx),%ch
     6ca:	00 03                	add    %al,(%ebx)
     6cc:	e8 02 00 00 10       	call   100006d3 <memcpy-0xb00ff92d>
     6d1:	27                   	daa    
     6d2:	01 00                	add    %eax,(%eax)
     6d4:	00 02                	add    %al,(%edx)
     6d6:	ac                   	lods   %ds:(%esi),%al
     6d7:	e8 02 00 00 00       	call   6de <memcpy-0xc00ff922>
     6dc:	11 25 00 00 00 12    	adc    %esp,0x12000000
     6e2:	63 6c 69 00          	arpl   %bp,0x0(%ecx,%ebp,2)
     6e6:	02 9f 01 03 13 01    	add    0x1130301(%edi),%bl
     6ec:	b5 01                	mov    $0x1,%ch
     6ee:	00 00                	add    %al,(%eax)
     6f0:	01 16                	add    %edx,(%esi)
     6f2:	01 01                	add    %eax,(%ecx)
     6f4:	12 73 74             	adc    0x74(%ebx),%dh
     6f7:	69 00 02 99 01 03    	imul   $0x3019902,(%eax),%eax
     6fd:	13 01                	adc    (%ecx),%eax
     6ff:	8d 01                	lea    (%ecx),%eax
     701:	00 00                	add    %al,(%eax)
     703:	01 25 01 01 0d 7d    	add    %esp,0x7d0d0101
     709:	01 00                	add    %eax,(%eax)
     70b:	00 03                	add    %al,(%ebx)
     70d:	2b 01                	sub    (%ecx),%eax
     70f:	03 2c 03             	add    (%ebx,%eax,1),%ebp
     712:	00 00                	add    %al,(%eax)
     714:	0e                   	push   %cs
     715:	4c                   	dec    %esp
     716:	01 00                	add    %eax,(%eax)
     718:	00 03                	add    %al,(%ebx)
     71a:	2b c5                	sub    %ebp,%eax
     71c:	02 00                	add    (%eax),%al
     71e:	00 00                	add    %al,(%eax)
     720:	0d 2e 01 00 00       	or     $0x12e,%eax
     725:	03 18                	add    (%eax),%ebx
     727:	01 03                	add    %eax,(%ebx)
     729:	50                   	push   %eax
     72a:	03 00                	add    (%eax),%eax
     72c:	00 0e                	add    %cl,(%esi)
     72e:	4c                   	dec    %esp
     72f:	01 00                	add    %eax,(%eax)
     731:	00 03                	add    %al,(%ebx)
     733:	18 c5                	sbb    %al,%ch
     735:	02 00                	add    (%eax),%al
     737:	00 0e                	add    %cl,(%esi)
     739:	9b                   	fwait
     73a:	01 00                	add    %eax,(%eax)
     73c:	00 03                	add    %al,(%ebx)
     73e:	18 c5                	sbb    %al,%ch
     740:	02 00                	add    (%eax),%al
     742:	00 00                	add    %al,(%eax)
     744:	0f 64 01             	pcmpgtb (%ecx),%mm0
     747:	00 00                	add    %al,(%eax)
     749:	03 30                	add    (%eax),%esi
     74b:	01 70 00             	add    %esi,0x0(%eax)
     74e:	00 00                	add    %al,(%eax)
     750:	03 6d 03             	add    0x3(%ebp),%ebp
     753:	00 00                	add    %al,(%eax)
     755:	0e                   	push   %cs
     756:	4c                   	dec    %esp
     757:	01 00                	add    %eax,(%eax)
     759:	00 03                	add    %al,(%ebx)
     75b:	30 c5                	xor    %al,%ch
     75d:	02 00                	add    (%eax),%al
     75f:	00 00                	add    %al,(%eax)
     761:	0d 1e 01 00 00       	or     $0x11e,%eax
     766:	03 22                	add    (%edx),%esp
     768:	01 03                	add    %eax,(%ebx)
     76a:	9c                   	pushf  
     76b:	03 00                	add    (%eax),%eax
     76d:	00 0e                	add    %cl,(%esi)
     76f:	9b                   	fwait
     770:	01 00                	add    %eax,(%eax)
     772:	00 03                	add    %al,(%ebx)
     774:	22 c5                	and    %ch,%al
     776:	02 00                	add    (%eax),%al
     778:	00 10                	add    %dl,(%eax)
     77a:	cf                   	iret   
     77b:	01 00                	add    %eax,(%eax)
     77d:	00 03                	add    %al,(%ebx)
     77f:	24 c5                	and    $0xc5,%al
     781:	02 00                	add    (%eax),%al
     783:	00 10                	add    %dl,(%eax)
     785:	63 02                	arpl   %ax,(%edx)
     787:	00 00                	add    %al,(%eax)
     789:	03 25 c5 02 00 00    	add    0x2c5,%esp
     78f:	00 14 f6             	add    %dl,(%esi,%esi,8)
     792:	02 00                	add    (%eax),%al
     794:	00 00                	add    %al,(%eax)
     796:	02 10                	add    (%eax),%dl
     798:	c0 86 02 10 c0 b3 03 	rolb   $0x3,-0x4c3feffe(%esi)
     79f:	00 00                	add    %al,(%eax)
     7a1:	1f                   	pop    %ds
     7a2:	04 00                	add    $0x0,%al
     7a4:	00 15 cb 02 00 00    	add    %dl,0x2cb
     7aa:	1d 02 10 c0 25       	sbb    $0x25c01002,%eax
     7af:	02 10                	add    (%eax),%dl
     7b1:	c0 01 21             	rolb   $0x21,(%ecx)
     7b4:	d8 03                	fadds  (%ebx)
     7b6:	00 00                	add    %al,(%eax)
     7b8:	16                   	push   %ss
     7b9:	1d 02 10 c0 25       	sbb    $0x25c01002,%eax
     7be:	02 10                	add    (%eax),%dl
     7c0:	c0 17 dc             	rclb   $0xdc,(%edi)
     7c3:	02 00                	add    (%eax),%al
     7c5:	00 3f                	add    %bh,(%edi)
     7c7:	04 00                	add    $0x0,%al
     7c9:	00 00                	add    %al,(%eax)
     7cb:	00 15 cb 02 00 00    	add    %dl,0x2cb
     7d1:	48                   	dec    %eax
     7d2:	02 10                	add    (%eax),%dl
     7d4:	c0 50 02 10          	rclb   $0x10,0x2(%eax)
     7d8:	c0 01 1a             	rolb   $0x1a,(%ecx)
     7db:	ff 03                	incl   (%ebx)
     7dd:	00 00                	add    %al,(%eax)
     7df:	16                   	push   %ss
     7e0:	48                   	dec    %eax
     7e1:	02 10                	add    (%eax),%dl
     7e3:	c0 50 02 10          	rclb   $0x10,0x2(%eax)
     7e7:	c0 17 dc             	rclb   $0xdc,(%edi)
     7ea:	02 00                	add    (%eax),%al
     7ec:	00 53 04             	add    %dl,0x4(%ebx)
     7ef:	00 00                	add    %al,(%eax)
     7f1:	00 00                	add    %al,(%eax)
     7f3:	18 f6                	sbb    %dh,%dh
     7f5:	02 00                	add    (%eax),%al
     7f7:	00 55 02             	add    %dl,0x2(%ebp)
     7fa:	10 c0                	adc    %al,%al
     7fc:	5a                   	pop    %edx
     7fd:	02 10                	add    (%eax),%dl
     7ff:	c0 01 16             	rolb   $0x16,(%ecx)
     802:	19 ed                	sbb    %ebp,%ebp
     804:	02 00                	add    (%eax),%al
     806:	00 59 02             	add    %bl,0x2(%ecx)
     809:	10 c0                	adc    %al,%al
     80b:	5a                   	pop    %edx
     80c:	02 10                	add    (%eax),%dl
     80e:	c0 01 1c             	rolb   $0x1c,(%ecx)
     811:	00 00                	add    %al,(%eax)
     813:	14 09                	adc    $0x9,%al
     815:	03 00                	add    (%eax),%eax
     817:	00 90 02 10 c0 e6    	add    %dl,-0x193feffe(%eax)
     81d:	02 10                	add    (%eax),%dl
     81f:	c0 67 04 00          	shlb   $0x0,0x4(%edi)
     823:	00 54 04 00          	add    %dl,0x0(%esp,%eax,1)
     827:	00 1a                	add    %bl,(%edx)
     829:	09 03                	or     %eax,(%ebx)
     82b:	00 00                	add    %al,(%eax)
     82d:	ac                   	lods   %ds:(%esi),%al
     82e:	02 10                	add    (%eax),%dl
     830:	c0 00 00             	rolb   $0x0,(%eax)
     833:	00 00                	add    %al,(%eax)
     835:	01 25 19 00 03 00    	add    %esp,0x30019
     83b:	00 b8 02 10 c0 b9    	add    %bh,-0x463feffe(%eax)
     841:	02 10                	add    (%eax),%dl
     843:	c0 01 29             	rolb   $0x29,(%ecx)
     846:	00 00                	add    %al,(%eax)
     848:	1b 01                	sbb    (%ecx),%eax
     84a:	75 01                	jne    84d <memcpy-0xc00ff7b3>
     84c:	00 00                	add    %al,(%eax)
     84e:	01 2d 01 f0 02 10    	add    %ebp,0x1002f001
     854:	c0 06 03             	rolb   $0x3,(%esi)
     857:	10 c0                	adc    %al,%al
     859:	c3                   	ret    
     85a:	04 00                	add    $0x0,%al
     85c:	00 a1 04 00 00 1c    	add    %ah,0x1c000004(%ecx)
     862:	73 65                	jae    8c9 <memcpy-0xc00ff737>
     864:	6d                   	insl   (%dx),%es:(%edi)
     865:	00 01                	add    %al,(%ecx)
     867:	2d a1 04 00 00       	sub    $0x4a1,%eax
     86c:	02 91 00 1d 00 00    	add    0x1d00(%ecx),%dl
     872:	00 00                	add    %al,(%eax)
     874:	01 2d 42 00 00 00    	add    %ebp,0x42
     87a:	02 91 04 18 13 03    	add    0x3131804(%ecx),%dl
     880:	00 00                	add    %al,(%eax)
     882:	fe 02                	incb   (%edx)
     884:	10 c0                	adc    %al,%al
     886:	04 03                	add    $0x3,%al
     888:	10 c0                	adc    %al,%al
     88a:	01 2f                	add    %ebp,(%edi)
     88c:	1e                   	push   %ds
     88d:	20 03                	and    %al,(%ebx)
     88f:	00 00                	add    %al,(%eax)
     891:	01 52 00             	add    %edx,0x0(%edx)
     894:	00 08                	add    %cl,(%eax)
     896:	04 8b                	add    $0x8b,%al
     898:	02 00                	add    (%eax),%al
     89a:	00 1f                	add    %bl,(%edi)
     89c:	01 50 00             	add    %edx,0x0(%eax)
     89f:	01 33                	add    %esi,(%ebx)
     8a1:	01 10                	add    %edx,(%eax)
     8a3:	03 10                	add    (%eax),%edx
     8a5:	c0 9a 03 10 c0 fb 04 	rcrb   $0x4,-0x43feffd(%edx)
     8ac:	00 00                	add    %al,(%eax)
     8ae:	1a 05 00 00 1c 73    	sbb    0x731c0000,%al
     8b4:	65                   	gs
     8b5:	6d                   	insl   (%dx),%es:(%edi)
     8b6:	00 01                	add    %al,(%ecx)
     8b8:	33 a1 04 00 00 02    	xor    0x2000004(%ecx),%esp
     8be:	91                   	xchg   %eax,%ecx
     8bf:	00 1a                	add    %bl,(%edx)
     8c1:	2c 03                	sub    $0x3,%al
     8c3:	00 00                	add    %al,(%eax)
     8c5:	51                   	push   %ecx
     8c6:	03 10                	add    (%eax),%edx
     8c8:	c0 18 00             	rcrb   $0x0,(%eax)
     8cb:	00 00                	add    %al,(%eax)
     8cd:	01 37                	add    %esi,(%edi)
     8cf:	20 44 03 00          	and    %al,0x0(%ebx,%eax,1)
     8d3:	00 4b 05             	add    %cl,0x5(%ebx)
     8d6:	00 00                	add    %al,(%eax)
     8d8:	20 39                	and    %bh,(%ecx)
     8da:	03 00                	add    (%eax),%eax
     8dc:	00 60 05             	add    %ah,0x5(%eax)
     8df:	00 00                	add    %al,(%eax)
     8e1:	1a 96 02 00 00 54    	sbb    0x54000002(%esi),%dl
     8e7:	03 10                	add    (%eax),%edx
     8e9:	c0                   	(bad)  
     8ea:	30 00                	xor    %al,(%eax)
     8ec:	00 00                	add    %al,(%eax)
     8ee:	03 19                	add    (%ecx),%ebx
     8f0:	20 b9 02 00 00 4b    	and    %bh,0x4b000002(%ecx)
     8f6:	05 00 00 20 ae       	add    $0xae200000,%eax
     8fb:	02 00                	add    (%eax),%al
     8fd:	00 7e 05             	add    %bh,0x5(%esi)
     900:	00 00                	add    %al,(%eax)
     902:	20 a3 02 00 00 9c    	and    %ah,-0x63fffffe(%ebx)
     908:	05 00 00 00 00       	add    $0x0,%eax
     90d:	00 1f                	add    %bl,(%edi)
     90f:	01 56 00             	add    %edx,0x0(%esi)
     912:	01 3e                	add    %edi,(%esi)
     914:	01 a0 03 10 c0 46    	add    %esp,0x46c01003(%eax)
     91a:	04 10                	add    $0x10,%al
     91c:	c0 bb 05 00 00 a6 05 	sarb   $0x5,-0x59fffffb(%ebx)
     923:	00 00                	add    %al,(%eax)
     925:	1c 73                	sbb    $0x73,%al
     927:	65                   	gs
     928:	6d                   	insl   (%dx),%es:(%edi)
     929:	00 01                	add    %al,(%ecx)
     92b:	3e a1 04 00 00 02    	mov    %ds:0x2000004,%eax
     931:	91                   	xchg   %eax,%ecx
     932:	00 21                	add    %ah,(%ecx)
     934:	48                   	dec    %eax
     935:	00 00                	add    %al,(%eax)
     937:	00 22                	add    %ah,(%edx)
     939:	70 63                	jo     99e <memcpy-0xc00ff662>
     93b:	62 00                	bound  %eax,(%eax)
     93d:	01 43 a6             	add    %eax,-0x5a(%ebx)
     940:	05 00 00 2f 06       	add    $0x62f0000,%eax
     945:	00 00                	add    %al,(%eax)
     947:	15 50 03 00 00       	adc    $0x350,%eax
     94c:	d0 03                	rolb   (%ebx)
     94e:	10 c0                	adc    %al,%al
     950:	d3 03                	roll   %cl,(%ebx)
     952:	10 c0                	adc    %al,%al
     954:	01 42 73             	add    %eax,0x73(%edx)
     957:	05 00 00 1e 61       	add    $0x611e0000,%eax
     95c:	03 00                	add    (%eax),%eax
     95e:	00 06                	add    %al,(%esi)
     960:	91                   	xchg   %eax,%ecx
     961:	00 06                	add    %al,(%esi)
     963:	23 04 9f             	and    (%edi,%ebx,4),%eax
     966:	00 1a                	add    %bl,(%edx)
     968:	6d                   	insl   (%dx),%es:(%edi)
     969:	03 00                	add    (%eax),%eax
     96b:	00 da                	add    %bl,%dl
     96d:	03 10                	add    (%eax),%edx
     96f:	c0 60 00 00          	shlb   $0x0,0x0(%eax)
     973:	00 01                	add    %al,(%ecx)
     975:	44                   	inc    %esp
     976:	20 7a 03             	and    %bh,0x3(%edx)
     979:	00 00                	add    %al,(%eax)
     97b:	4d                   	dec    %ebp
     97c:	06                   	push   %es
     97d:	00 00                	add    %al,(%eax)
     97f:	21 80 00 00 00 17    	and    %eax,0x17000000(%eax)
     985:	85 03                	test   %eax,(%ebx)
     987:	00 00                	add    %al,(%eax)
     989:	6b 06 00             	imul   $0x0,(%esi),%eax
     98c:	00 17                	add    %dl,(%edi)
     98e:	90                   	nop
     98f:	03 00                	add    (%eax),%eax
     991:	00 7f 06             	add    %bh,0x6(%edi)
     994:	00 00                	add    %al,(%eax)
     996:	00 00                	add    %al,(%eax)
     998:	00 00                	add    %al,(%eax)
     99a:	08 04 57             	or     %al,(%edi,%edx,2)
     99d:	02 00                	add    (%eax),%al
     99f:	00 23                	add    %ah,(%ebx)
     9a1:	ba 01 00 00 05       	mov    $0x5000001,%edx
     9a6:	12 b9 05 00 00 01    	adc    0x1000005(%ecx),%bh
     9ac:	01 08                	add    %ecx,(%eax)
     9ae:	04 d1                	add    $0xd1,%al
     9b0:	01 00                	add    %eax,(%eax)
     9b2:	00 00                	add    %al,(%eax)
     9b4:	64 02 00             	add    %fs:(%eax),%al
     9b7:	00 02                	add    %al,(%edx)
     9b9:	00 91 03 00 00 04    	add    %dl,0x4000003(%ecx)
     9bf:	01 8c 00 00 00 01 44 	add    %ecx,0x44010000(%eax,%eax,1)
     9c6:	02 00                	add    (%eax),%al
     9c8:	00 55 00             	add    %dl,0x0(%ebp)
     9cb:	00 00                	add    %al,(%eax)
     9cd:	50                   	push   %eax
     9ce:	04 10                	add    $0x10,%al
     9d0:	c0 d1 06             	rcl    $0x6,%cl
     9d3:	10 c0                	adc    %al,%al
     9d5:	79 02                	jns    9d9 <memcpy-0xc00ff627>
     9d7:	00 00                	add    %al,(%eax)
     9d9:	02 06                	add    (%esi),%al
     9db:	00 00                	add    %al,(%eax)
     9dd:	00 02                	add    %al,(%edx)
     9df:	04 30                	add    $0x30,%al
     9e1:	00 00                	add    %al,(%eax)
     9e3:	00 03                	add    %al,(%ebx)
     9e5:	04 07                	add    $0x7,%al
     9e7:	9e                   	sahf   
     9e8:	00 00                	add    %al,(%eax)
     9ea:	00 04 04             	add    %al,(%esp,%eax,1)
     9ed:	05 69 6e 74 00       	add    $0x746e69,%eax
     9f2:	03 02                	add    (%edx),%eax
     9f4:	07                   	pop    %es
     9f5:	98                   	cwtl   
     9f6:	00 00                	add    %al,(%eax)
     9f8:	00 03                	add    %al,(%ebx)
     9fa:	02 05 c0 00 00 00    	add    0xc0,%al
     a00:	02 51 01             	add    0x1(%ecx),%dl
     a03:	00 00                	add    %al,(%eax)
     a05:	02 08                	add    (%eax),%cl
     a07:	57                   	push   %edi
     a08:	00 00                	add    %al,(%eax)
     a0a:	00 03                	add    %al,(%ebx)
     a0c:	01 08                	add    %ecx,(%eax)
     a0e:	47                   	inc    %edi
     a0f:	00 00                	add    %al,(%eax)
     a11:	00 03                	add    %al,(%ebx)
     a13:	01 06                	add    %eax,(%esi)
     a15:	50                   	push   %eax
     a16:	00 00                	add    %al,(%eax)
     a18:	00 02                	add    %al,(%edx)
     a1a:	74 00                	je     a1c <memcpy-0xc00ff5e4>
     a1c:	00 00                	add    %al,(%eax)
     a1e:	02 0a                	add    (%edx),%cl
     a20:	57                   	push   %edi
     a21:	00 00                	add    %al,(%eax)
     a23:	00 05 08 03 10 95    	add    %al,0x95100308
     a29:	00 00                	add    %al,(%eax)
     a2b:	00 06                	add    %al,(%esi)
     a2d:	3a 02                	cmp    (%edx),%al
     a2f:	00 00                	add    %al,(%eax)
     a31:	03 11                	add    (%ecx),%edx
     a33:	4c                   	dec    %esp
     a34:	00 00                	add    %al,(%eax)
     a36:	00 02                	add    %al,(%edx)
     a38:	23 00                	and    (%eax),%eax
     a3a:	06                   	push   %es
     a3b:	55                   	push   %ebp
     a3c:	02 00                	add    (%eax),%al
     a3e:	00 03                	add    %al,(%ebx)
     a40:	12 25 00 00 00 02    	adc    0x2000000,%ah
     a46:	23 04 00             	and    (%eax,%eax,1),%eax
     a49:	07                   	pop    %es
     a4a:	21 02                	and    %eax,(%edx)
     a4c:	00 00                	add    %al,(%eax)
     a4e:	08 03                	or     %al,(%ebx)
     a50:	0e                   	push   %cs
     a51:	b8 00 00 00 08       	mov    $0x8000000,%eax
     a56:	60                   	pusha  
     a57:	02 00                	add    (%eax),%al
     a59:	00 03                	add    %al,(%ebx)
     a5b:	0f b8                	(bad)  
     a5d:	00 00                	add    %al,(%eax)
     a5f:	00 09                	add    %cl,(%ecx)
     a61:	6f                   	outsl  %ds:(%esi),(%dx)
     a62:	76 75                	jbe    ad9 <memcpy-0xc00ff527>
     a64:	00 03                	add    %al,(%ebx)
     a66:	13 70 00             	adc    0x0(%eax),%esi
     a69:	00 00                	add    %al,(%eax)
     a6b:	00 0a                	add    %cl,(%edx)
     a6d:	04 95                	add    $0x95,%al
     a6f:	00 00                	add    %al,(%eax)
     a71:	00 02                	add    %al,(%edx)
     a73:	21 02                	and    %eax,(%edx)
     a75:	00 00                	add    %al,(%eax)
     a77:	03 14 95 00 00 00 0b 	add    0xb000000(,%edx,4),%edx
     a7e:	01 02                	add    %eax,(%edx)
     a80:	02 00                	add    (%eax),%al
     a82:	00 01                	add    %al,(%ecx)
     a84:	24 01                	and    $0x1,%al
     a86:	25 00 00 00 50       	and    $0x50000000,%eax
     a8b:	04 10                	add    $0x10,%al
     a8d:	c0 fe 04             	sar    $0x4,%dh
     a90:	10 c0                	adc    %al,%al
     a92:	93                   	xchg   %eax,%ebx
     a93:	06                   	push   %es
     a94:	00 00                	add    %al,(%eax)
     a96:	01 01                	add    %eax,(%ecx)
     a98:	00 00                	add    %al,(%eax)
     a9a:	0c 78                	or     $0x78,%al
     a9c:	00 01                	add    %al,(%ecx)
     a9e:	24 25                	and    $0x25,%al
     aa0:	00 00                	add    %al,(%eax)
     aa2:	00 e3                	add    %ah,%bl
     aa4:	06                   	push   %es
     aa5:	00 00                	add    %al,(%eax)
     aa7:	0d 6e 00 01 26       	or     $0x2601006e,%eax
     aac:	25 00 00 00 19       	and    $0x19000000,%eax
     ab1:	07                   	pop    %es
     ab2:	00 00                	add    %al,(%eax)
     ab4:	00 0e                	add    %cl,(%esi)
     ab6:	01 2a                	add    %ebp,(%edx)
     ab8:	02 00                	add    (%eax),%al
     aba:	00 01                	add    %al,(%ecx)
     abc:	32 01                	xor    (%ecx),%al
     abe:	00 05 10 c0 64 05    	add    %al,0x564c010
     ac4:	10 c0                	adc    %al,%al
     ac6:	5e                   	pop    %esi
     ac7:	07                   	pop    %es
     ac8:	00 00                	add    %al,(%eax)
     aca:	53                   	push   %ebx
     acb:	01 00                	add    %eax,(%eax)
     acd:	00 0d 70 61 00 01    	add    %cl,0x1006170
     ad3:	33 53 01             	xor    0x1(%ebx),%edx
     ad6:	00 00                	add    %al,(%eax)
     ad8:	96                   	xchg   %eax,%esi
     ad9:	07                   	pop    %es
     ada:	00 00                	add    %al,(%eax)
     adc:	0f 0d 02             	prefetch (%edx)
     adf:	00 00                	add    %al,(%eax)
     ae1:	01 34 53             	add    %esi,(%ebx,%edx,2)
     ae4:	01 00                	add    %eax,(%eax)
     ae6:	00 b9 07 00 00 0d    	add    %bh,0xd000007(%ecx)
     aec:	6f                   	outsl  %ds:(%esi),(%dx)
     aed:	76 00                	jbe    aef <memcpy-0xc00ff511>
     aef:	01 35 59 01 00 00    	add    %esi,0x159
     af5:	f4                   	hlt    
     af6:	07                   	pop    %es
     af7:	00 00                	add    %al,(%eax)
     af9:	0d 69 00 01 36       	or     $0x36010069,%eax
     afe:	37                   	aaa    
     aff:	00 00                	add    %al,(%eax)
     b01:	00 22                	add    %ah,(%edx)
     b03:	08 00                	or     %al,(%eax)
     b05:	00 00                	add    %al,(%eax)
     b07:	0a 04 4c             	or     (%esp,%ecx,2),%al
     b0a:	00 00                	add    %al,(%eax)
     b0c:	00 0a                	add    %cl,(%edx)
     b0e:	04 be                	add    $0xbe,%al
     b10:	00 00                	add    %al,(%eax)
     b12:	00 0b                	add    %cl,(%ebx)
     b14:	01 1a                	add    %ebx,(%edx)
     b16:	02 00                	add    (%eax),%al
     b18:	00 01                	add    %al,(%ecx)
     b1a:	45                   	inc    %ebp
     b1b:	01 a8 01 00 00 70    	add    %ebp,0x70000001(%eax)
     b21:	05 10 c0 49 06       	add    $0x649c010,%eax
     b26:	10 c0                	adc    %al,%al
     b28:	36 08 00             	or     %al,%ss:(%eax)
     b2b:	00 a8 01 00 00 10    	add    %ch,0x10000001(%eax)
     b31:	fc                   	cld    
     b32:	01 00                	add    %eax,(%eax)
     b34:	00 01                	add    %al,(%ecx)
     b36:	45                   	inc    %ebp
     b37:	25 00 00 00 02       	and    $0x2000000,%eax
     b3c:	91                   	xchg   %eax,%ecx
     b3d:	00 0d 6f 70 00 01    	add    %cl,0x100706f
     b43:	47                   	inc    %edi
     b44:	59                   	pop    %ecx
     b45:	01 00                	add    %eax,(%eax)
     b47:	00 7a 08             	add    %bh,0x8(%edx)
     b4a:	00 00                	add    %al,(%eax)
     b4c:	0f 06                	clts   
     b4e:	02 00                	add    (%eax),%al
     b50:	00 01                	add    %al,(%ecx)
     b52:	48                   	dec    %eax
     b53:	25 00 00 00 c4       	and    $0xc4000000,%eax
     b58:	08 00                	or     %al,(%eax)
     b5a:	00 00                	add    %al,(%eax)
     b5c:	11 04 0e             	adc    %eax,(%esi,%ecx,1)
     b5f:	01 f7                	add    %esi,%edi
     b61:	01 00                	add    %eax,(%eax)
     b63:	00 01                	add    %al,(%ecx)
     b65:	65 01 50 06          	add    %edx,%gs:0x6(%eax)
     b69:	10 c0                	adc    %al,%al
     b6b:	d1 06                	roll   (%esi)
     b6d:	10 c0                	adc    %al,%al
     b6f:	f8                   	clc    
     b70:	08 00                	or     %al,(%eax)
     b72:	00 ef                	add    %ch,%bh
     b74:	01 00                	add    %eax,(%eax)
     b76:	00 12                	add    %dl,(%edx)
     b78:	66                   	data16
     b79:	70 00                	jo     b7b <memcpy-0xc00ff485>
     b7b:	01 65 a8             	add    %esp,-0x58(%ebp)
     b7e:	01 00                	add    %eax,(%eax)
     b80:	00 02                	add    %al,(%edx)
     b82:	91                   	xchg   %eax,%ecx
     b83:	00 0f                	add    %cl,(%edi)
     b85:	06                   	push   %es
     b86:	02 00                	add    (%eax),%al
     b88:	00 01                	add    %al,(%ecx)
     b8a:	66 25 00 00          	and    $0x0,%ax
     b8e:	00 3c 09             	add    %bh,(%ecx,%ecx,1)
     b91:	00 00                	add    %al,(%eax)
     b93:	0f f4 01             	pmuludq (%ecx),%mm0
     b96:	00 00                	add    %al,(%eax)
     b98:	01 67 59             	add    %esp,0x59(%edi)
     b9b:	01 00                	add    %eax,(%eax)
     b9d:	00 5e 09             	add    %bl,0x9(%esi)
     ba0:	00 00                	add    %al,(%eax)
     ba2:	00 13                	add    %dl,(%ebx)
     ba4:	59                   	pop    %ecx
     ba5:	01 00                	add    %eax,(%eax)
     ba7:	00 ff                	add    %bh,%bh
     ba9:	01 00                	add    %eax,(%eax)
     bab:	00 14 30             	add    %dl,(%eax,%esi,1)
     bae:	00 00                	add    %al,(%eax)
     bb0:	00 0b                	add    %cl,(%ebx)
     bb2:	00 15 34 02 00 00    	add    %dl,0x234
     bb8:	01 1c ef             	add    %ebx,(%edi,%ebp,8)
     bbb:	01 00                	add    %eax,(%eax)
     bbd:	00 05 03 80 30 10    	add    %al,0x10308003
     bc3:	c0 13 25             	rclb   $0x25,(%ebx)
     bc6:	00 00                	add    %al,(%eax)
     bc8:	00 20                	add    %ah,(%eax)
     bca:	02 00                	add    (%eax),%al
     bcc:	00 14 30             	add    %dl,(%eax,%esi,1)
     bcf:	00 00                	add    %al,(%eax)
     bd1:	00 0b                	add    %cl,(%ebx)
     bd3:	00 15 19 02 00 00    	add    %dl,0x219
     bd9:	01 1d 10 02 00 00    	add    %ebx,0x210
     bdf:	05 03 c0 30 10       	add    $0x1030c003,%eax
     be4:	c0 15 e8 01 00 00 01 	rclb   $0x1,0x1e8
     beb:	1e                   	push   %ds
     bec:	65 00 00             	add    %al,%gs:(%eax)
     bef:	00 05 03 f0 30 10    	add    %al,0x1030f003
     bf5:	c0 13 4c             	rclb   $0x4c,(%ebx)
     bf8:	00 00                	add    %al,(%eax)
     bfa:	00 55 02             	add    %dl,0x2(%ebp)
     bfd:	00 00                	add    %al,(%eax)
     bff:	16                   	push   %ss
     c00:	30 00                	xor    %al,(%eax)
     c02:	00 00                	add    %al,(%eax)
     c04:	5f                   	pop    %edi
     c05:	22 32                	and    (%edx),%dh
     c07:	00 00                	add    %al,(%eax)
     c09:	17                   	pop    %ss
     c0a:	e3 01                	jecxz  c0d <memcpy-0xc00ff3f3>
     c0c:	00 00                	add    %al,(%eax)
     c0e:	01 21                	add    %esp,(%ecx)
     c10:	42                   	inc    %edx
     c11:	02 00                	add    (%eax),%al
     c13:	00 01                	add    %al,(%ecx)
     c15:	05 03 20 31 10       	add    $0x10312003,%eax
     c1a:	c0 00 04             	rolb   $0x4,(%eax)
     c1d:	01 00                	add    %eax,(%eax)
     c1f:	00 02                	add    %al,(%edx)
     c21:	00 d3                	add    %dl,%bl
     c23:	04 00                	add    $0x0,%al
     c25:	00 04 01             	add    %al,(%ecx,%eax,1)
     c28:	8c 00                	mov    %es,(%eax)
     c2a:	00 00                	add    %al,(%eax)
     c2c:	01 b2 02 00 00 55    	add    %esi,0x55000002(%edx)
     c32:	00 00                	add    %al,(%eax)
     c34:	00 e0                	add    %ah,%al
     c36:	06                   	push   %es
     c37:	10 c0                	adc    %al,%al
     c39:	39 09                	cmp    %ecx,(%ecx)
     c3b:	10 c0                	adc    %al,%al
     c3d:	a2 03 00 00 02       	mov    %al,0x2000003
     c42:	04 07                	add    $0x7,%al
     c44:	9e                   	sahf   
     c45:	00 00                	add    %al,(%eax)
     c47:	00 03                	add    %al,(%ebx)
     c49:	04 05                	add    $0x5,%al
     c4b:	69 6e 74 00 02 02 07 	imul   $0x7020200,0x74(%esi),%ebp
     c52:	98                   	cwtl   
     c53:	00 00                	add    %al,(%eax)
     c55:	00 02                	add    %al,(%edx)
     c57:	02 05 c0 00 00 00    	add    0xc0,%al
     c5d:	02 01                	add    (%ecx),%al
     c5f:	08 47 00             	or     %al,0x0(%edi)
     c62:	00 00                	add    %al,(%eax)
     c64:	02 01                	add    (%ecx),%al
     c66:	06                   	push   %es
     c67:	50                   	push   %eax
     c68:	00 00                	add    %al,(%eax)
     c6a:	00 04 01             	add    %al,(%ecx,%eax,1)
     c6d:	89 02                	mov    %eax,(%edx)
     c6f:	00 00                	add    %al,(%eax)
     c71:	01 14 01             	add    %edx,(%ecx,%eax,1)
     c74:	2c 00                	sub    $0x0,%al
     c76:	00 00                	add    %al,(%eax)
     c78:	e0 06                	loopne c80 <memcpy-0xc00ff380>
     c7a:	10 c0                	adc    %al,%al
     c7c:	39 09                	cmp    %ecx,(%ecx)
     c7e:	10 c0                	adc    %al,%al
     c80:	82                   	(bad)  
     c81:	09 00                	or     %eax,(%eax)
     c83:	00 dc                	add    %bl,%ah
     c85:	00 00                	add    %al,(%eax)
     c87:	00 05 7c 02 00 00    	add    %al,0x27c
     c8d:	01 14 e8             	add    %edx,(%eax,%ebp,8)
     c90:	00 00                	add    %al,(%eax)
     c92:	00 02                	add    %al,(%edx)
     c94:	91                   	xchg   %eax,%ecx
     c95:	00 06                	add    %al,(%esi)
     c97:	9a 02 00 00 01 14 ee 	lcall  $0xee14,$0x1000002
     c9e:	00 00                	add    %al,(%eax)
     ca0:	00 c6                	add    %al,%dh
     ca2:	09 00                	or     %eax,(%eax)
     ca4:	00 06                	add    %al,(%esi)
     ca6:	9b                   	fwait
     ca7:	01 00                	add    %eax,(%eax)
     ca9:	00 01                	add    %al,(%ecx)
     cab:	14 f9                	adc    $0xf9,%al
     cad:	00 00                	add    %al,(%eax)
     caf:	00 66 0a             	add    %ah,0xa(%esi)
     cb2:	00 00                	add    %al,(%eax)
     cb4:	07                   	pop    %es
     cb5:	62 75 66             	bound  %esi,0x66(%ebp)
     cb8:	00 01                	add    %al,(%ecx)
     cba:	15 48 00 00 00       	adc    $0x48,%eax
     cbf:	28 0b                	sub    %cl,(%ebx)
     cc1:	00 00                	add    %al,(%eax)
     cc3:	08 92 02 00 00 01    	or     %dl,0x1000002(%edx)
     cc9:	16                   	push   %ss
     cca:	01 01                	add    %eax,(%ecx)
     ccc:	00 00                	add    %al,(%eax)
     cce:	b1 0c                	mov    $0xc,%cl
     cd0:	00 00                	add    %al,(%eax)
     cd2:	09 74 02 00          	or     %esi,0x0(%edx,%eax,1)
     cd6:	00 01                	add    %al,(%ecx)
     cd8:	17                   	pop    %ss
     cd9:	2c 00                	sub    $0x0,%al
     cdb:	00 00                	add    %al,(%eax)
     cdd:	09 a1 02 00 00 01    	or     %esp,0x1000002(%ecx)
     ce3:	18 2c 00             	sbb    %ch,(%eax,%eax,1)
     ce6:	00 00                	add    %al,(%eax)
     ce8:	08 68 02             	or     %ch,0x2(%eax)
     ceb:	00 00                	add    %al,(%eax)
     ced:	01 19                	add    %ebx,(%ecx)
     cef:	2c 00                	sub    $0x0,%al
     cf1:	00 00                	add    %al,(%eax)
     cf3:	1f                   	pop    %ds
     cf4:	0d 00 00 00 0a       	or     $0xa000000,%eax
     cf9:	01 e8                	add    %ebp,%eax
     cfb:	00 00                	add    %al,(%eax)
     cfd:	00 0b                	add    %cl,(%ebx)
     cff:	48                   	dec    %eax
     d00:	00 00                	add    %al,(%eax)
     d02:	00 00                	add    %al,(%eax)
     d04:	0c 04                	or     $0x4,%al
     d06:	dc 00                	faddl  (%eax)
     d08:	00 00                	add    %al,(%eax)
     d0a:	0c 04                	or     $0x4,%al
     d0c:	f4                   	hlt    
     d0d:	00 00                	add    %al,(%eax)
     d0f:	00 0d 48 00 00 00    	add    %cl,0x48
     d15:	0c 04                	or     $0x4,%al
     d17:	ff 00                	incl   (%eax)
     d19:	00 00                	add    %al,(%eax)
     d1b:	0e                   	push   %cs
     d1c:	04 0c                	add    $0xc,%al
     d1e:	04 48                	add    $0x48,%al
     d20:	00 00                	add    %al,(%eax)
     d22:	00 00                	add    %al,(%eax)
     d24:	93                   	xchg   %eax,%ebx
     d25:	02 00                	add    (%eax),%al
     d27:	00 02                	add    %al,(%edx)
     d29:	00 86 05 00 00 04    	add    %al,0x4000005(%esi)
     d2f:	01 8c 00 00 00 01 e6 	add    %ecx,-0x19ff0000(%eax,%eax,1)
     d36:	02 00                	add    (%eax),%al
     d38:	00 55 00             	add    %dl,0x0(%ebp)
     d3b:	00 00                	add    %al,(%eax)
     d3d:	40                   	inc    %eax
     d3e:	09 10                	or     %edx,(%eax)
     d40:	c0 c2 09             	rol    $0x9,%dl
     d43:	10 c0                	adc    %al,%al
     d45:	5a                   	pop    %edx
     d46:	04 00                	add    $0x0,%al
     d48:	00 02                	add    %al,(%edx)
     d4a:	04 07                	add    $0x7,%al
     d4c:	9e                   	sahf   
     d4d:	00 00                	add    %al,(%eax)
     d4f:	00 03                	add    %al,(%ebx)
     d51:	04 05                	add    $0x5,%al
     d53:	69 6e 74 00 04 1c 03 	imul   $0x31c0400,0x74(%esi),%ebp
     d5a:	00 00                	add    %al,(%eax)
     d5c:	03 06                	add    (%esi),%eax
     d5e:	3e 00 00             	add    %al,%ds:(%eax)
     d61:	00 02                	add    %al,(%edx)
     d63:	02 07                	add    (%edi),%al
     d65:	98                   	cwtl   
     d66:	00 00                	add    %al,(%eax)
     d68:	00 02                	add    %al,(%edx)
     d6a:	02 05 c0 00 00 00    	add    0xc0,%al
     d70:	04 51                	add    $0x51,%al
     d72:	01 00                	add    %eax,(%eax)
     d74:	00 03                	add    %al,(%ebx)
     d76:	08 57 00             	or     %dl,0x0(%edi)
     d79:	00 00                	add    %al,(%eax)
     d7b:	02 01                	add    (%ecx),%al
     d7d:	08 47 00             	or     %al,0x0(%edi)
     d80:	00 00                	add    %al,(%eax)
     d82:	02 01                	add    (%ecx),%al
     d84:	06                   	push   %es
     d85:	50                   	push   %eax
     d86:	00 00                	add    %al,(%eax)
     d88:	00 04 74             	add    %al,(%esp,%esi,2)
     d8b:	00 00                	add    %al,(%eax)
     d8d:	00 03                	add    %al,(%ebx)
     d8f:	0a 57 00             	or     0x0(%edi),%dl
     d92:	00 00                	add    %al,(%eax)
     d94:	05 ca 02 00 00       	add    $0x2ca,%eax
     d99:	02 e1                	add    %cl,%ah
     d9b:	01 4c 00 00          	add    %ecx,0x0(%eax,%eax,1)
     d9f:	00 03                	add    %al,(%ebx)
     da1:	98                   	cwtl   
     da2:	00 00                	add    %al,(%eax)
     da4:	00 06                	add    %al,(%esi)
     da6:	10 03                	adc    %al,(%ebx)
     da8:	00 00                	add    %al,(%eax)
     daa:	02 e1                	add    %cl,%ah
     dac:	33 00                	xor    (%eax),%eax
     dae:	00 00                	add    %al,(%eax)
     db0:	07                   	pop    %es
     db1:	9b                   	fwait
     db2:	01 00                	add    %eax,(%eax)
     db4:	00 02                	add    %al,(%edx)
     db6:	e2 4c                	loop   e04 <memcpy-0xc00ff1fc>
     db8:	00 00                	add    %al,(%eax)
     dba:	00 00                	add    %al,(%eax)
     dbc:	08 f6                	or     %dh,%dh
     dbe:	02 00                	add    (%eax),%al
     dc0:	00 01                	add    %al,(%ecx)
     dc2:	12 01                	adc    (%ecx),%al
     dc4:	65 00 00             	add    %al,%gs:(%eax)
     dc7:	00 03                	add    %al,(%ebx)
     dc9:	09 dd                	or     %ebx,%ebp
     dcb:	02 00                	add    (%eax),%al
     dcd:	00 02                	add    %al,(%edx)
     dcf:	f1                   	icebp  
     dd0:	01 03                	add    %eax,(%ebx)
     dd2:	c9                   	leave  
     dd3:	00 00                	add    %al,(%eax)
     dd5:	00 06                	add    %al,(%esi)
     dd7:	10 03                	adc    %al,(%ebx)
     dd9:	00 00                	add    %al,(%eax)
     ddb:	02 f1                	add    %cl,%dh
     ddd:	33 00                	xor    (%eax),%eax
     ddf:	00 00                	add    %al,(%eax)
     de1:	06                   	push   %es
     de2:	9b                   	fwait
     de3:	01 00                	add    %eax,(%eax)
     de5:	00 02                	add    %al,(%edx)
     de7:	f1                   	icebp  
     de8:	4c                   	dec    %esp
     de9:	00 00                	add    %al,(%eax)
     deb:	00 00                	add    %al,(%eax)
     ded:	0a 01                	or     (%ecx),%al
     def:	02 03                	add    (%ebx),%al
     df1:	00 00                	add    %al,(%eax)
     df3:	01 17                	add    %edx,(%edi)
     df5:	01 40 09             	add    %eax,0x9(%eax)
     df8:	10 c0                	adc    %al,%al
     dfa:	5f                   	pop    %edi
     dfb:	09 10                	or     %edx,(%eax)
     dfd:	c0 6c 0d 00 00       	shrb   $0x0,0x0(%ebp,%ecx,1)
     e02:	49                   	dec    %ecx
     e03:	01 00                	add    %eax,(%eax)
     e05:	00 0b                	add    %cl,(%ebx)
     e07:	63 68 00             	arpl   %bp,0x0(%eax)
     e0a:	01 17                	add    %edx,(%edi)
     e0c:	5e                   	pop    %esi
     e0d:	00 00                	add    %al,(%eax)
     e0f:	00 02                	add    %al,(%edx)
     e11:	91                   	xchg   %eax,%ecx
     e12:	00 0c 98             	add    %cl,(%eax,%ebx,4)
     e15:	00 00                	add    %al,(%eax)
     e17:	00 41 09             	add    %al,0x9(%ecx)
     e1a:	10 c0                	adc    %al,%al
     e1c:	a0 00 00 00 01       	mov    0x1000000,%al
     e21:	18 29                	sbb    %ch,(%ecx)
     e23:	01 00                	add    %eax,(%eax)
     e25:	00 0d 70 00 00 00    	add    %cl,0x70
     e2b:	41                   	inc    %ecx
     e2c:	09 10                	or     %edx,(%eax)
     e2e:	c0 b8 00 00 00 01 13 	sarb   $0x13,0x1000000(%eax)
     e35:	0e                   	push   %cs
     e36:	81 00 00 00 fd 03    	addl   $0x3fd0000,(%eax)
     e3c:	0f d0                	(bad)  
     e3e:	00 00                	add    %al,(%eax)
     e40:	00 10                	add    %dl,(%eax)
     e42:	8c 00                	mov    %es,(%eax)
     e44:	00 00                	add    %al,(%eax)
     e46:	a4                   	movsb  %ds:(%esi),%es:(%edi)
     e47:	0d 00 00 00 00       	or     $0x0,%eax
     e4c:	00 11                	add    %dl,(%ecx)
     e4e:	a5                   	movsl  %ds:(%esi),%es:(%edi)
     e4f:	00 00                	add    %al,(%eax)
     e51:	00 55 09             	add    %dl,0x9(%ebp)
     e54:	10 c0                	adc    %al,%al
     e56:	5d                   	pop    %ebp
     e57:	09 10                	or     %edx,(%eax)
     e59:	c0 01 19             	rolb   $0x19,(%ecx)
     e5c:	12 bd 00 00 00 02    	adc    0x2000000(%ebp),%bh
     e62:	91                   	xchg   %eax,%ecx
     e63:	00 0e                	add    %cl,(%esi)
     e65:	b2 00                	mov    $0x0,%dl
     e67:	00 00                	add    %al,(%eax)
     e69:	f8                   	clc    
     e6a:	03 00                	add    (%eax),%eax
     e6c:	00 0a                	add    %cl,(%edx)
     e6e:	01 d2                	add    %edx,%edx
     e70:	02 00                	add    (%eax),%al
     e72:	00 01                	add    %al,(%ecx)
     e74:	07                   	pop    %es
     e75:	01 60 09             	add    %esp,0x9(%eax)
     e78:	10 c0                	adc    %al,%al
     e7a:	9a 09 10 c0 b7 0d 00 	lcall  $0xd,$0xb7c01009
     e81:	00 47 02             	add    %al,0x2(%edi)
     e84:	00 00                	add    %al,(%eax)
     e86:	0c a5                	or     $0xa5,%al
     e88:	00 00                	add    %al,(%eax)
     e8a:	00 61 09             	add    %ah,0x9(%ecx)
     e8d:	10 c0                	adc    %al,%al
     e8f:	e8 00 00 00 01       	call   1000e94 <memcpy-0xbf0ff16c>
     e94:	08 83 01 00 00 13    	or     %al,0x13000001(%ebx)
     e9a:	bd 00 00 00 00       	mov    $0x0,%ebp
     e9f:	0e                   	push   %cs
     ea0:	b2 00                	mov    $0x0,%dl
     ea2:	00 00                	add    %al,(%eax)
     ea4:	f9                   	stc    
     ea5:	03 00                	add    (%eax),%eax
     ea7:	14 a5                	adc    $0xa5,%al
     ea9:	00 00                	add    %al,(%eax)
     eab:	00 6b 09             	add    %ch,0x9(%ebx)
     eae:	10 c0                	adc    %al,%al
     eb0:	73 09                	jae    ebb <memcpy-0xc00ff145>
     eb2:	10 c0                	adc    %al,%al
     eb4:	01 09                	add    %ecx,(%ecx)
     eb6:	a5                   	movsl  %ds:(%esi),%es:(%edi)
     eb7:	01 00                	add    %eax,(%eax)
     eb9:	00 15 bd 00 00 00    	add    %dl,0xbd
     ebf:	80 7f 0e b2          	cmpb   $0xb2,0xe(%edi)
     ec3:	00 00                	add    %al,(%eax)
     ec5:	00 fb                	add    %bh,%bl
     ec7:	03 00                	add    (%eax),%eax
     ec9:	14 a5                	adc    $0xa5,%al
     ecb:	00 00                	add    %al,(%eax)
     ecd:	00 73 09             	add    %dh,0x9(%ebx)
     ed0:	10 c0                	adc    %al,%al
     ed2:	7b 09                	jnp    edd <memcpy-0xc00ff123>
     ed4:	10 c0                	adc    %al,%al
     ed6:	01 0a                	add    %ecx,(%edx)
     ed8:	c6 01 00             	movb   $0x0,(%ecx)
     edb:	00 13                	add    %dl,(%ebx)
     edd:	bd 00 00 00 01       	mov    $0x1000000,%ebp
     ee2:	0e                   	push   %cs
     ee3:	b2 00                	mov    $0x0,%dl
     ee5:	00 00                	add    %al,(%eax)
     ee7:	f8                   	clc    
     ee8:	03 00                	add    (%eax),%eax
     eea:	14 a5                	adc    $0xa5,%al
     eec:	00 00                	add    %al,(%eax)
     eee:	00 7b 09             	add    %bh,0x9(%ebx)
     ef1:	10 c0                	adc    %al,%al
     ef3:	80 09 10             	orb    $0x10,(%ecx)
     ef6:	c0 01 0b             	rolb   $0xb,(%ecx)
     ef9:	e7 01                	out    %eax,$0x1
     efb:	00 00                	add    %al,(%eax)
     efd:	13 bd 00 00 00 00    	adc    0x0(%ebp),%edi
     f03:	0e                   	push   %cs
     f04:	b2 00                	mov    $0x0,%dl
     f06:	00 00                	add    %al,(%eax)
     f08:	f9                   	stc    
     f09:	03 00                	add    (%eax),%eax
     f0b:	14 a5                	adc    $0xa5,%al
     f0d:	00 00                	add    %al,(%eax)
     f0f:	00 80 09 10 c0 88    	add    %al,-0x773feff7(%eax)
     f15:	09 10                	or     %edx,(%eax)
     f17:	c0 01 0c             	rolb   $0xc,(%ecx)
     f1a:	08 02                	or     %al,(%edx)
     f1c:	00 00                	add    %al,(%eax)
     f1e:	13 bd 00 00 00 03    	adc    0x3000000(%ebp),%edi
     f24:	0e                   	push   %cs
     f25:	b2 00                	mov    $0x0,%dl
     f27:	00 00                	add    %al,(%eax)
     f29:	fb                   	sti    
     f2a:	03 00                	add    (%eax),%eax
     f2c:	14 a5                	adc    $0xa5,%al
     f2e:	00 00                	add    %al,(%eax)
     f30:	00 88 09 10 c0 90    	add    %cl,-0x6f3feff7(%eax)
     f36:	09 10                	or     %edx,(%eax)
     f38:	c0 01 0d             	rolb   $0xd,(%ecx)
     f3b:	29 02                	sub    %eax,(%edx)
     f3d:	00 00                	add    %al,(%eax)
     f3f:	15 bd 00 00 00       	adc    $0xbd,%eax
     f44:	47                   	inc    %edi
     f45:	0e                   	push   %cs
     f46:	b2 00                	mov    $0x0,%dl
     f48:	00 00                	add    %al,(%eax)
     f4a:	fa                   	cli    
     f4b:	03 00                	add    (%eax),%eax
     f4d:	11 a5 00 00 00 90    	adc    %esp,-0x70000000(%ebp)
     f53:	09 10                	or     %edx,(%eax)
     f55:	c0 98 09 10 c0 01 0e 	rcrb   $0xe,0x1c01009(%eax)
     f5c:	13 bd 00 00 00 0b    	adc    0xb000000(%ebp),%edi
     f62:	0e                   	push   %cs
     f63:	b2 00                	mov    $0x0,%dl
     f65:	00 00                	add    %al,(%eax)
     f67:	fc                   	cld    
     f68:	03 00                	add    (%eax),%eax
     f6a:	00 16                	add    %dl,(%esi)
     f6c:	01 15 03 00 00 01    	add    %edx,0x1000003
     f72:	1f                   	pop    %ds
     f73:	01 2c 00             	add    %ebp,(%eax,%eax,1)
     f76:	00 00                	add    %al,(%eax)
     f78:	a0 09 10 c0 c2       	mov    0xc2c01009,%al
     f7d:	09 10                	or     %edx,(%eax)
     f7f:	c0 ef 0d             	shr    $0xd,%bh
     f82:	00 00                	add    %al,(%eax)
     f84:	83 02 00             	addl   $0x0,(%edx)
     f87:	00 0b                	add    %cl,(%ebx)
     f89:	66 6d                	insw   (%dx),%es:(%edi)
     f8b:	74 00                	je     f8d <memcpy-0xc00ff073>
     f8d:	01 1f                	add    %ebx,(%edi)
     f8f:	83 02 00             	addl   $0x0,(%edx)
     f92:	00 02                	add    %al,(%edx)
     f94:	91                   	xchg   %eax,%ecx
     f95:	00 17                	add    %dl,(%edi)
     f97:	18 c5                	sbb    %al,%ch
     f99:	02 00                	add    (%eax),%al
     f9b:	00 01                	add    %al,(%ecx)
     f9d:	20 8e 02 00 00 03    	and    %cl,0x3000002(%esi)
     fa3:	91                   	xchg   %eax,%ecx
     fa4:	04 9f                	add    $0x9f,%al
     fa6:	00 19                	add    %bl,(%ecx)
     fa8:	04 89                	add    $0x89,%al
     faa:	02 00                	add    (%eax),%al
     fac:	00 1a                	add    %bl,(%edx)
     fae:	5e                   	pop    %esi
     faf:	00 00                	add    %al,(%eax)
     fb1:	00 19                	add    %bl,(%ecx)
     fb3:	04 94                	add    $0x94,%al
     fb5:	02 00                	add    (%eax),%al
     fb7:	00 1b                	add    %bl,(%ebx)
     fb9:	04 00                	add    $0x0,%al
     fbb:	de 03                	fiadd  (%ebx)
     fbd:	00 00                	add    %al,(%eax)
     fbf:	02 00                	add    (%eax),%al
     fc1:	ea 06 00 00 04 01 8c 	ljmp   $0x8c01,$0x4000006
     fc8:	00 00                	add    %al,(%eax)
     fca:	00 01                	add    %al,(%ecx)
     fcc:	41                   	inc    %ecx
     fcd:	03 00                	add    (%eax),%eax
     fcf:	00 55 00             	add    %dl,0x0(%ebp)
     fd2:	00 00                	add    %al,(%eax)
     fd4:	d0 09                	rorb   (%ecx)
     fd6:	10 c0                	adc    %al,%al
     fd8:	87 0b                	xchg   %ecx,(%ebx)
     fda:	10 c0                	adc    %al,%al
     fdc:	07                   	pop    %es
     fdd:	05 00 00 02 06       	add    $0x6020000,%eax
     fe2:	00 00                	add    %al,(%eax)
     fe4:	00 03                	add    %al,(%ebx)
     fe6:	04 30                	add    $0x30,%al
     fe8:	00 00                	add    %al,(%eax)
     fea:	00 03                	add    %al,(%ebx)
     fec:	04 07                	add    $0x7,%al
     fee:	9e                   	sahf   
     fef:	00 00                	add    %al,(%eax)
     ff1:	00 04 04             	add    %al,(%esp,%eax,1)
     ff4:	05 69 6e 74 00       	add    $0x746e69,%eax
     ff9:	02 1c 03             	add    (%ebx,%eax,1),%bl
     ffc:	00 00                	add    %al,(%eax)
     ffe:	03 06                	add    (%esi),%eax
    1000:	49                   	dec    %ecx
    1001:	00 00                	add    %al,(%eax)
    1003:	00 03                	add    %al,(%ebx)
    1005:	02 07                	add    (%edi),%al
    1007:	98                   	cwtl   
    1008:	00 00                	add    %al,(%eax)
    100a:	00 03                	add    %al,(%ebx)
    100c:	02 05 c0 00 00 00    	add    0xc0,%al
    1012:	03 01                	add    (%ecx),%eax
    1014:	08 47 00             	or     %al,0x0(%edi)
    1017:	00 00                	add    %al,(%eax)
    1019:	03 01                	add    (%ecx),%eax
    101b:	06                   	push   %es
    101c:	50                   	push   %eax
    101d:	00 00                	add    %al,(%eax)
    101f:	00 05 50 54 45 00    	add    %al,0x455450
    1025:	02 45 25             	add    0x25(%ebp),%al
    1028:	00 00                	add    %al,(%eax)
    102a:	00 05 50 44 45 00    	add    %al,0x454450
    1030:	02 46 25             	add    0x25(%esi),%al
    1033:	00 00                	add    %al,(%eax)
    1035:	00 06                	add    %al,(%esi)
    1037:	5e                   	pop    %esi
    1038:	03 00                	add    (%eax),%eax
    103a:	00 08                	add    %cl,(%eax)
    103c:	02 55 5e             	add    0x5e(%ebp),%dl
    103f:	01 00                	add    %eax,(%eax)
    1041:	00 07                	add    %al,(%edi)
    1043:	55                   	push   %ebp
    1044:	03 00                	add    (%eax),%eax
    1046:	00 02                	add    %al,(%edx)
    1048:	56                   	push   %esi
    1049:	25 00 00 00 04       	and    $0x4000000,%eax
    104e:	10 10                	adc    %dl,(%eax)
    1050:	02 23                	add    (%ebx),%ah
    1052:	00 07                	add    %al,(%edi)
    1054:	a5                   	movsl  %ds:(%esi),%es:(%edi)
    1055:	03 00                	add    (%eax),%eax
    1057:	00 02                	add    %al,(%edx)
    1059:	57                   	push   %edi
    105a:	25 00 00 00 04       	and    $0x4000000,%eax
    105f:	10 00                	adc    %al,(%eax)
    1061:	02 23                	add    (%ebx),%ah
    1063:	00 07                	add    %al,(%edi)
    1065:	b5 03                	mov    $0x3,%ch
    1067:	00 00                	add    %al,(%eax)
    1069:	02 58 25             	add    0x25(%eax),%bl
    106c:	00 00                	add    %al,(%eax)
    106e:	00 04 08             	add    %al,(%eax,%ecx,1)
    1071:	18 02                	sbb    %al,(%edx)
    1073:	23 04 07             	and    (%edi,%eax,1),%eax
    1076:	a0 03 00 00 02       	mov    0x2000003,%al
    107b:	59                   	pop    %ecx
    107c:	25 00 00 00 04       	and    $0x4000000,%eax
    1081:	04 14                	add    $0x14,%al
    1083:	02 23                	add    (%ebx),%ah
    1085:	04 08                	add    $0x8,%al
    1087:	73 00                	jae    1089 <memcpy-0xc00fef77>
    1089:	02 5a 25             	add    0x25(%edx),%bl
    108c:	00 00                	add    %al,(%eax)
    108e:	00 04 01             	add    %al,(%ecx,%eax,1)
    1091:	13 02                	adc    (%edx),%eax
    1093:	23 04 08             	and    (%eax,%ecx,1),%eax
    1096:	64                   	fs
    1097:	70 6c                	jo     1105 <memcpy-0xc00feefb>
    1099:	00 02                	add    %al,(%edx)
    109b:	5b                   	pop    %ebx
    109c:	25 00 00 00 04       	and    $0x4000000,%eax
    10a1:	02 11                	add    (%ecx),%dl
    10a3:	02 23                	add    (%ebx),%ah
    10a5:	04 08                	add    $0x8,%al
    10a7:	70 00                	jo     10a9 <memcpy-0xc00fef57>
    10a9:	02 5c 25 00          	add    0x0(%ebp,%eiz,1),%bl
    10ad:	00 00                	add    %al,(%eax)
    10af:	04 01                	add    $0x1,%al
    10b1:	10 02                	adc    %al,(%edx)
    10b3:	23 04 07             	and    (%edi,%eax,1),%eax
    10b6:	90                   	nop
    10b7:	03 00                	add    (%eax),%eax
    10b9:	00 02                	add    %al,(%edx)
    10bb:	5d                   	pop    %ebp
    10bc:	25 00 00 00 04       	and    $0x4000000,%eax
    10c1:	04 0c                	add    $0xc,%al
    10c3:	02 23                	add    (%ebx),%ah
    10c5:	04 08                	add    $0x8,%al
    10c7:	61                   	popa   
    10c8:	76 6c                	jbe    1136 <memcpy-0xc00feeca>
    10ca:	00 02                	add    %al,(%edx)
    10cc:	5e                   	pop    %esi
    10cd:	25 00 00 00 04       	and    $0x4000000,%eax
    10d2:	01 0b                	add    %ecx,(%ebx)
    10d4:	02 23                	add    (%ebx),%ah
    10d6:	04 07                	add    $0x7,%al
    10d8:	2e 03 00             	add    %cs:(%eax),%eax
    10db:	00 02                	add    %al,(%edx)
    10dd:	5f                   	pop    %edi
    10de:	25 00 00 00 04       	and    $0x4000000,%eax
    10e3:	01 0a                	add    %ecx,(%edx)
    10e5:	02 23                	add    (%ebx),%ah
    10e7:	04 08                	add    $0x8,%al
    10e9:	64 62 00             	bound  %eax,%fs:(%eax)
    10ec:	02 60 25             	add    0x25(%eax),%ah
    10ef:	00 00                	add    %al,(%eax)
    10f1:	00 04 01             	add    %al,(%ecx,%eax,1)
    10f4:	09 02                	or     %eax,(%edx)
    10f6:	23 04 08             	and    (%eax,%ecx,1),%eax
    10f9:	67 00 02             	add    %al,(%bp,%si)
    10fc:	61                   	popa   
    10fd:	25 00 00 00 04       	and    $0x4000000,%eax
    1102:	01 08                	add    %ecx,(%eax)
    1104:	02 23                	add    (%ebx),%ah
    1106:	04 07                	add    $0x7,%al
    1108:	c9                   	leave  
    1109:	03 00                	add    (%eax),%eax
    110b:	00 02                	add    %al,(%edx)
    110d:	62 25 00 00 00 04    	bound  %esp,0x4000000
    1113:	08 00                	or     %al,(%eax)
    1115:	02 23                	add    (%ebx),%ah
    1117:	04 00                	add    $0x0,%al
    1119:	02 5e 03             	add    0x3(%esi),%bl
    111c:	00 00                	add    %al,(%eax)
    111e:	02 64 7b 00          	add    0x0(%ebx,%edi,2),%ah
    1122:	00 00                	add    %al,(%eax)
    1124:	09 54 53 53          	or     %edx,0x53(%ebx,%edx,2)
    1128:	00 64 02 84          	add    %ah,-0x7c(%edx,%eax,1)
    112c:	ae                   	scas   %es:(%edi),%al
    112d:	01 00                	add    %eax,(%eax)
    112f:	00 0a                	add    %cl,(%edx)
    1131:	8b 03                	mov    (%ebx),%eax
    1133:	00 00                	add    %al,(%eax)
    1135:	02 85 25 00 00 00    	add    0x25(%ebp),%al
    113b:	02 23                	add    (%ebx),%ah
    113d:	00 0a                	add    %cl,(%edx)
    113f:	3c 03                	cmp    $0x3,%al
    1141:	00 00                	add    %al,(%eax)
    1143:	02 86 25 00 00 00    	add    0x25(%esi),%al
    1149:	02 23                	add    (%ebx),%ah
    114b:	04 0b                	add    $0xb,%al
    114d:	73 73                	jae    11c2 <memcpy-0xc00fee3e>
    114f:	30 00                	xor    %al,(%eax)
    1151:	02 87 25 00 00 00    	add    0x25(%edi),%al
    1157:	02 23                	add    (%ebx),%ah
    1159:	08 0a                	or     %cl,(%edx)
    115b:	25 03 00 00 02       	and    $0x2000003,%eax
    1160:	88 ae 01 00 00 02    	mov    %ch,0x2000001(%esi)
    1166:	23 0c 00             	and    (%eax,%eax,1),%ecx
    1169:	0c 5e                	or     $0x5e,%al
    116b:	00 00                	add    %al,(%eax)
    116d:	00 be 01 00 00 0d    	add    %bh,0xd000001(%esi)
    1173:	30 00                	xor    %al,(%eax)
    1175:	00 00                	add    %al,(%eax)
    1177:	57                   	push   %edi
    1178:	00 05 54 53 53 00    	add    %al,0x535354
    117e:	02 8a 69 01 00 00    	add    0x169(%edx),%cl
    1184:	0e                   	push   %cs
    1185:	7e 03                	jle    118a <memcpy-0xc00fee76>
    1187:	00 00                	add    %al,(%eax)
    1189:	02 c1                	add    %cl,%al
    118b:	01 03                	add    %eax,(%ebx)
    118d:	e2 01                	loop   1190 <memcpy-0xc00fee70>
    118f:	00 00                	add    %al,(%eax)
    1191:	0f 9b 03             	setnp  (%ebx)
    1194:	00 00                	add    %al,(%eax)
    1196:	02 c1                	add    %cl,%al
    1198:	e2 01                	loop   119b <memcpy-0xc00fee65>
    119a:	00 00                	add    %al,(%eax)
    119c:	00 10                	add    %dl,(%eax)
    119e:	04 11                	add    $0x11,%al
    11a0:	6e                   	outsb  %ds:(%esi),(%dx)
    11a1:	03 00                	add    (%eax),%eax
    11a3:	00 02                	add    %al,(%edx)
    11a5:	b3 01                	mov    $0x1,%bl
    11a7:	25 00 00 00 03       	and    $0x3000000,%eax
    11ac:	01 02                	add    %eax,(%edx)
    11ae:	00 00                	add    %al,(%eax)
    11b0:	12 76 61             	adc    0x61(%esi),%dh
    11b3:	6c                   	insb   (%dx),%es:(%edi)
    11b4:	00 02                	add    %al,(%edx)
    11b6:	b4 01                	mov    $0x1,%ah
    11b8:	02 00                	add    (%eax),%al
    11ba:	00 00                	add    %al,(%eax)
    11bc:	13 25 00 00 00 0e    	adc    0xe000000,%esp
    11c2:	76 03                	jbe    11c7 <memcpy-0xc00fee39>
    11c4:	00 00                	add    %al,(%eax)
    11c6:	02 bb 01 03 1f 02    	add    0x21f0301(%ebx),%bh
    11cc:	00 00                	add    %al,(%eax)
    11ce:	14 63                	adc    $0x63,%al
    11d0:	72 30                	jb     1202 <memcpy-0xc00fedfe>
    11d2:	00 02                	add    %al,(%edx)
    11d4:	bb 25 00 00 00       	mov    $0x25,%ebx
    11d9:	00 0e                	add    %cl,(%esi)
    11db:	66 03 00             	add    (%eax),%ax
    11de:	00 02                	add    %al,(%edx)
    11e0:	c7 01 03 4e 02 00    	movl   $0x24e03,(%ecx)
    11e6:	00 14 67             	add    %dl,(%edi,%eiz,2)
    11e9:	64                   	fs
    11ea:	74 00                	je     11ec <memcpy-0xc00fee14>
    11ec:	02 c7                	add    %bh,%al
    11ee:	4e                   	dec    %esi
    11ef:	02 00                	add    (%eax),%al
    11f1:	00 0f                	add    %cl,(%edi)
    11f3:	86 03                	xchg   %al,(%ebx)
    11f5:	00 00                	add    %al,(%eax)
    11f7:	02 c7                	add    %bh,%al
    11f9:	25 00 00 00 15       	and    $0x15000000,%eax
    11fe:	9b                   	fwait
    11ff:	01 00                	add    %eax,(%eax)
    1201:	00 02                	add    %al,(%edx)
    1203:	c8 64 02 00          	enter  $0x264,$0x0
    1207:	00 00                	add    %al,(%eax)
    1209:	16                   	push   %ss
    120a:	04 5e                	add    $0x5e,%al
    120c:	01 00                	add    %eax,(%eax)
    120e:	00 0c 3e             	add    %cl,(%esi,%edi,1)
    1211:	00 00                	add    %al,(%eax)
    1213:	00 64 02 00          	add    %ah,0x0(%edx,%eax,1)
    1217:	00 0d 30 00 00 00    	add    %cl,0x30
    121d:	02 00                	add    (%eax),%al
    121f:	13 54 02 00          	adc    0x0(%edx,%eax,1),%edx
    1223:	00 17                	add    %dl,(%edi)
    1225:	01 33                	add    %esi,(%ebx)
    1227:	03 00                	add    (%eax),%eax
    1229:	00 01                	add    %al,(%ecx)
    122b:	0c 01                	or     $0x1,%al
    122d:	d0 09                	rorb   (%ecx)
    122f:	10 c0                	adc    %al,%al
    1231:	63 0a                	arpl   %cx,(%edx)
    1233:	10 c0                	adc    %al,%al
    1235:	27                   	daa    
    1236:	0e                   	push   %cs
    1237:	00 00                	add    %al,(%eax)
    1239:	0e                   	push   %cs
    123a:	03 00                	add    (%eax),%eax
    123c:	00 18                	add    %bl,(%eax)
    123e:	70 61                	jo     12a1 <memcpy-0xc00fed5f>
    1240:	00 01                	add    %al,(%ecx)
    1242:	0d 25 00 00 00       	or     $0x25,%eax
    1247:	5f                   	pop    %edi
    1248:	0e                   	push   %cs
    1249:	00 00                	add    %al,(%eax)
    124b:	19 b0 03 00 00 01    	sbb    %esi,0x1000003(%eax)
    1251:	0e                   	push   %cs
    1252:	0e                   	push   %cs
    1253:	03 00                	add    (%eax),%eax
    1255:	00 95 0e 00 00 19    	add    %dl,0x1900000e(%ebp)
    125b:	9b                   	fwait
    125c:	03 00                	add    (%eax),%eax
    125e:	00 01                	add    %al,(%ecx)
    1260:	0f 14 03             	unpcklps (%ebx),%xmm0
    1263:	00 00                	add    %al,(%eax)
    1265:	a8 0e                	test   $0xe,%al
    1267:	00 00                	add    %al,(%eax)
    1269:	1a c9                	sbb    %cl,%cl
    126b:	01 00                	add    %eax,(%eax)
    126d:	00 48 0a             	add    %cl,0xa(%eax)
    1270:	10 c0                	adc    %al,%al
    1272:	50                   	push   %eax
    1273:	0a 10                	or     (%eax),%dl
    1275:	c0 01 1a             	rolb   $0x1a,(%ecx)
    1278:	ce                   	into   
    1279:	02 00                	add    (%eax),%al
    127b:	00 1b                	add    %bl,(%ebx)
    127d:	d6                   	(bad)  
    127e:	01 00                	add    %eax,(%eax)
    1280:	00 06                	add    %al,(%esi)
    1282:	03 00                	add    (%eax),%eax
    1284:	70 44                	jo     12ca <memcpy-0xc00fed36>
    1286:	00 9f 00 1a e4 01    	add    %bl,0x1e41a00(%edi)
    128c:	00 00                	add    %al,(%eax)
    128e:	50                   	push   %eax
    128f:	0a 10                	or     (%eax),%dl
    1291:	c0 59 0a 10          	rcrb   $0x10,0xa(%ecx)
    1295:	c0 01 1b             	rolb   $0x1b,(%ecx)
    1298:	f4                   	hlt    
    1299:	02 00                	add    (%eax),%al
    129b:	00 1c 50             	add    %bl,(%eax,%edx,2)
    129e:	0a 10                	or     (%eax),%dl
    12a0:	c0 59 0a 10          	rcrb   $0x10,0xa(%ecx)
    12a4:	c0 1d f5 01 00 00 02 	rcrb   $0x2,0x1f5
    12ab:	91                   	xchg   %eax,%ecx
    12ac:	6c                   	insb   (%dx),%es:(%edi)
    12ad:	00 00                	add    %al,(%eax)
    12af:	1e                   	push   %ds
    12b0:	06                   	push   %es
    12b1:	02 00                	add    (%eax),%al
    12b3:	00 5e 0a             	add    %bl,0xa(%esi)
    12b6:	10 c0                	adc    %al,%al
    12b8:	61                   	popa   
    12b9:	0a 10                	or     (%eax),%dl
    12bb:	c0 01 1b             	rolb   $0x1b,(%ecx)
    12be:	1f                   	pop    %ds
    12bf:	13 02                	adc    (%edx),%eax
    12c1:	00 00                	add    %al,(%eax)
    12c3:	cb                   	lret   
    12c4:	0e                   	push   %cs
    12c5:	00 00                	add    %al,(%eax)
    12c7:	00 00                	add    %al,(%eax)
    12c9:	16                   	push   %ss
    12ca:	04 65                	add    $0x65,%al
    12cc:	00 00                	add    %al,(%eax)
    12ce:	00 16                	add    %dl,(%esi)
    12d0:	04 70                	add    $0x70,%al
    12d2:	00 00                	add    %al,(%eax)
    12d4:	00 17                	add    %dl,(%edi)
    12d6:	01 c0                	add    %eax,%eax
    12d8:	03 00                	add    (%eax),%eax
    12da:	00 01                	add    %al,(%ecx)
    12dc:	1f                   	pop    %ds
    12dd:	01 70 0a             	add    %esi,0xa(%eax)
    12e0:	10 c0                	adc    %al,%al
    12e2:	87 0b                	xchg   %ecx,(%ebx)
    12e4:	10 c0                	adc    %al,%al
    12e6:	f2 0e                	repnz push %cs
    12e8:	00 00                	add    %al,(%eax)
    12ea:	67 03 00             	add    (%bx,%si),%eax
    12ed:	00 20                	add    %ah,(%eax)
    12ef:	1f                   	pop    %ds
    12f0:	02 00                	add    (%eax),%al
    12f2:	00 85 0a 10 c0 00    	add    %al,0xc0100a(%ebp)
    12f8:	01 00                	add    %eax,(%eax)
    12fa:	00 01                	add    %al,(%ecx)
    12fc:	25 21 37 02 00       	and    $0x23721,%eax
    1301:	00 30                	add    %dh,(%eax)
    1303:	1b 2c 02             	sbb    (%edx,%eax,1),%ebp
    1306:	00 00                	add    %al,(%eax)
    1308:	06                   	push   %es
    1309:	03 00                	add    (%eax),%eax
    130b:	60                   	pusha  
    130c:	42                   	inc    %edx
    130d:	c0 9f 22 20 01 00 00 	rcrb   $0x0,0x12022(%edi)
    1314:	1d 42 02 00 00       	sbb    $0x242,%eax
    1319:	05 03 f4 30 10       	add    $0x1030f403,%eax
    131e:	c0 00 00             	rolb   $0x0,(%eax)
    1321:	00 0c 70             	add    %cl,(%eax,%esi,2)
    1324:	00 00                	add    %al,(%eax)
    1326:	00 78 03             	add    %bh,0x3(%eax)
    1329:	00 00                	add    %al,(%eax)
    132b:	23 30                	and    (%eax),%esi
    132d:	00 00                	add    %al,(%eax)
    132f:	00 ff                	add    %bh,%bh
    1331:	03 00                	add    (%eax),%eax
    1333:	24 9a                	and    $0x9a,%al
    1335:	03 00                	add    (%eax),%eax
    1337:	00 01                	add    %al,(%ecx)
    1339:	06                   	push   %es
    133a:	67 03 00             	add    (%bx,%si),%eax
    133d:	00 01                	add    %al,(%ecx)
    133f:	05 03 00 70 44       	add    $0x44700003,%eax
    1344:	c0 0c 65 00 00 00 9b 	rorb   $0x3,-0x65000000(,%eiz,2)
    134b:	03 
    134c:	00 00                	add    %al,(%eax)
    134e:	23 30                	and    (%eax),%esi
    1350:	00 00                	add    %al,(%eax)
    1352:	00 ff                	add    %bh,%bh
    1354:	7f 00                	jg     1356 <memcpy-0xc00fecaa>
    1356:	24 af                	and    $0xaf,%al
    1358:	03 00                	add    (%eax),%eax
    135a:	00 01                	add    %al,(%ecx)
    135c:	07                   	pop    %es
    135d:	8a 03                	mov    (%ebx),%al
    135f:	00 00                	add    %al,(%eax)
    1361:	01 05 03 00 70 42    	add    %eax,0x42700003
    1367:	c0 0c 5e 01          	rorb   $0x1,(%esi,%ebx,2)
    136b:	00 00                	add    %al,(%eax)
    136d:	bd 03 00 00 0d       	mov    $0xd000003,%ebp
    1372:	30 00                	xor    %al,(%eax)
    1374:	00 00                	add    %al,(%eax)
    1376:	05 00 25 67 64       	add    $0x64672500,%eax
    137b:	74 00                	je     137d <memcpy-0xc00fec83>
    137d:	01 08                	add    %ecx,(%eax)
    137f:	ad                   	lods   %ds:(%esi),%eax
    1380:	03 00                	add    (%eax),%eax
    1382:	00 01                	add    %al,(%ecx)
    1384:	05 03 00 60 42       	add    $0x42600003,%eax
    1389:	c0 25 74 73 73 00 01 	shlb   $0x1,0x737374
    1390:	09 be 01 00 00 01    	or     %edi,0x1000001(%esi)
    1396:	05 03 40 60 42       	add    $0x42604003,%eax
    139b:	c0 00 20             	rolb   $0x20,(%eax)
    139e:	04 00                	add    $0x0,%al
    13a0:	00 02                	add    %al,(%edx)
    13a2:	00 d8                	add    %bl,%al
    13a4:	08 00                	or     %al,(%eax)
    13a6:	00 04 01             	add    %al,(%ecx,%eax,1)
    13a9:	8c 00                	mov    %es,(%eax)
    13ab:	00 00                	add    %al,(%eax)
    13ad:	01 d4                	add    %edx,%esp
    13af:	03 00                	add    (%eax),%eax
    13b1:	00 55 00             	add    %dl,0x0(%ebp)
    13b4:	00 00                	add    %al,(%eax)
    13b6:	90                   	nop
    13b7:	0b 10                	or     (%eax),%edx
    13b9:	c0 06 10             	rolb   $0x10,(%esi)
    13bc:	10 c0                	adc    %al,%al
    13be:	fd                   	std    
    13bf:	05 00 00 02 06       	add    $0x6020000,%eax
    13c4:	00 00                	add    %al,(%eax)
    13c6:	00 03                	add    %al,(%ebx)
    13c8:	04 30                	add    $0x30,%al
    13ca:	00 00                	add    %al,(%eax)
    13cc:	00 03                	add    %al,(%ebx)
    13ce:	04 07                	add    $0x7,%al
    13d0:	9e                   	sahf   
    13d1:	00 00                	add    %al,(%eax)
    13d3:	00 02                	add    %al,(%edx)
    13d5:	07                   	pop    %es
    13d6:	00 00                	add    %al,(%eax)
    13d8:	00 03                	add    %al,(%ebx)
    13da:	05 42 00 00 00       	add    $0x42,%eax
    13df:	04 04                	add    $0x4,%al
    13e1:	05 69 6e 74 00       	add    $0x746e69,%eax
    13e6:	03 02                	add    (%edx),%eax
    13e8:	07                   	pop    %es
    13e9:	98                   	cwtl   
    13ea:	00 00                	add    %al,(%eax)
    13ec:	00 03                	add    %al,(%ebx)
    13ee:	02 05 c0 00 00 00    	add    0xc0,%al
    13f4:	03 01                	add    (%ecx),%eax
    13f6:	08 47 00             	or     %al,0x0(%edi)
    13f9:	00 00                	add    %al,(%eax)
    13fb:	03 01                	add    (%ecx),%eax
    13fd:	06                   	push   %es
    13fe:	50                   	push   %eax
    13ff:	00 00                	add    %al,(%eax)
    1401:	00 05 c6 01 00 00    	add    %al,0x1c6
    1407:	08 04 06             	or     %al,(%esi,%eax,1)
    140a:	8e 00                	mov    (%eax),%es
    140c:	00 00                	add    %al,(%eax)
    140e:	06                   	push   %es
    140f:	cf                   	iret   
    1410:	01 00                	add    %eax,(%eax)
    1412:	00 04 07             	add    %al,(%edi,%eax,1)
    1415:	8e 00                	mov    (%eax),%es
    1417:	00 00                	add    %al,(%eax)
    1419:	02 23                	add    (%ebx),%ah
    141b:	00 06                	add    %al,(%esi)
    141d:	63 02                	arpl   %ax,(%edx)
    141f:	00 00                	add    %al,(%eax)
    1421:	04 07                	add    $0x7,%al
    1423:	8e 00                	mov    (%eax),%es
    1425:	00 00                	add    %al,(%eax)
    1427:	02 23                	add    (%ebx),%ah
    1429:	04 00                	add    $0x0,%al
    142b:	07                   	pop    %es
    142c:	04 65                	add    $0x65,%al
    142e:	00 00                	add    %al,(%eax)
    1430:	00 02                	add    %al,(%edx)
    1432:	c6 01 00             	movb   $0x0,(%ecx)
    1435:	00 04 09             	add    %al,(%ecx,%ecx,1)
    1438:	65 00 00             	add    %al,%gs:(%eax)
    143b:	00 05 0a 01 00 00    	add    %al,0x10a
    1441:	0c 05                	or     $0x5,%al
    1443:	08 c8                	or     %cl,%al
    1445:	00 00                	add    %al,(%eax)
    1447:	00 06                	add    %al,(%esi)
    1449:	5e                   	pop    %esi
    144a:	01 00                	add    %eax,(%eax)
    144c:	00 05 09 37 00 00    	add    %al,0x3709
    1452:	00 02                	add    %al,(%edx)
    1454:	23 00                	and    (%eax),%eax
    1456:	06                   	push   %es
    1457:	6f                   	outsl  %ds:(%esi),(%dx)
    1458:	01 00                	add    %eax,(%eax)
    145a:	00 05 0a 94 00 00    	add    %al,0x940a
    1460:	00 02                	add    %al,(%edx)
    1462:	23 04 00             	and    (%eax,%eax,1),%eax
    1465:	02 0a                	add    (%edx),%cl
    1467:	01 00                	add    %eax,(%eax)
    1469:	00 05 0b 9f 00 00    	add    %al,0x9f0b
    146f:	00 08                	add    %cl,(%eax)
    1471:	87 01                	xchg   %eax,(%ecx)
    1473:	00 00                	add    %al,(%eax)
    1475:	02 ab 01 25 00 00    	add    0x2501(%ebx),%ch
    147b:	00 03                	add    %al,(%ebx)
    147d:	f0 00 00             	lock add %al,(%eax)
    1480:	00 09                	add    %cl,(%ecx)
    1482:	27                   	daa    
    1483:	01 00                	add    %eax,(%eax)
    1485:	00 02                	add    %al,(%edx)
    1487:	ac                   	lods   %ds:(%esi),%al
    1488:	f0 00 00             	lock add %al,(%eax)
    148b:	00 00                	add    %al,(%eax)
    148d:	0a 25 00 00 00 0b    	or     0xb000000,%ah
    1493:	73 74                	jae    1509 <memcpy-0xc00feaf7>
    1495:	69 00 02 99 01 03    	imul   $0x3019902,(%eax),%eax
    149b:	0c da                	or     $0xda,%al
    149d:	00 00                	add    %al,(%eax)
    149f:	00 02                	add    %al,(%edx)
    14a1:	a5                   	movsl  %ds:(%esi),%es:(%edi)
    14a2:	03 0d 01 18 04 00    	add    0x41801,%ecx
    14a8:	00 01                	add    %al,(%ecx)
    14aa:	18 01                	sbb    %al,(%ecx)
    14ac:	90                   	nop
    14ad:	0b 10                	or     (%eax),%edx
    14af:	c0 39 0d             	sarb   $0xd,(%ecx)
    14b2:	10 c0                	adc    %al,%al
    14b4:	2a 0f                	sub    (%edi),%cl
    14b6:	00 00                	add    %al,(%eax)
    14b8:	0e                   	push   %cs
    14b9:	02 00                	add    (%eax),%al
    14bb:	00 0e                	add    %cl,(%esi)
    14bd:	69 64 00 01 19 42 00 	imul   $0x4219,0x1(%eax,%eax,1),%esp
    14c4:	00 
    14c5:	00 56 0f             	add    %dl,0xf(%esi)
    14c8:	00 00                	add    %al,(%eax)
    14ca:	0f d3 00             	psrlq  (%eax),%mm0
    14cd:	00 00                	add    %al,(%eax)
    14cf:	bc 0b 10 c0 c4       	mov    $0xc4c0100b,%esp
    14d4:	0b 10                	or     (%eax),%edx
    14d6:	c0 01 1c             	rolb   $0x1c,(%ecx)
    14d9:	53                   	push   %ebx
    14da:	01 00                	add    %eax,(%eax)
    14dc:	00 10                	add    %dl,(%eax)
    14de:	bc 0b 10 c0 c4       	mov    $0xc4c0100b,%esp
    14e3:	0b 10                	or     (%eax),%edx
    14e5:	c0 11 e4             	rclb   $0xe4,(%ecx)
    14e8:	00 00                	add    %al,(%eax)
    14ea:	00 02                	add    %al,(%edx)
    14ec:	91                   	xchg   %eax,%ecx
    14ed:	6c                   	insb   (%dx),%es:(%edi)
    14ee:	00 00                	add    %al,(%eax)
    14f0:	0f d3 00             	psrlq  (%eax),%mm0
    14f3:	00 00                	add    %al,(%eax)
    14f5:	f5                   	cmc    
    14f6:	0b 10                	or     (%eax),%edx
    14f8:	c0 fd 0b             	sar    $0xb,%ch
    14fb:	10 c0                	adc    %al,%al
    14fd:	01 1d 79 01 00 00    	add    %ebx,0x179
    1503:	10 f5                	adc    %dh,%ch
    1505:	0b 10                	or     (%eax),%edx
    1507:	c0 fd 0b             	sar    $0xb,%ch
    150a:	10 c0                	adc    %al,%al
    150c:	11 e4                	adc    %esp,%esp
    150e:	00 00                	add    %al,(%eax)
    1510:	00 02                	add    %al,(%edx)
    1512:	91                   	xchg   %eax,%ecx
    1513:	6c                   	insb   (%dx),%es:(%edi)
    1514:	00 00                	add    %al,(%eax)
    1516:	0f d3 00             	psrlq  (%eax),%mm0
    1519:	00 00                	add    %al,(%eax)
    151b:	24 0c                	and    $0xc,%al
    151d:	10 c0                	adc    %al,%al
    151f:	2c 0c                	sub    $0xc,%al
    1521:	10 c0                	adc    %al,%al
    1523:	01 1e                	add    %ebx,(%esi)
    1525:	9f                   	lahf   
    1526:	01 00                	add    %eax,(%eax)
    1528:	00 10                	add    %dl,(%eax)
    152a:	24 0c                	and    $0xc,%al
    152c:	10 c0                	adc    %al,%al
    152e:	2c 0c                	sub    $0xc,%al
    1530:	10 c0                	adc    %al,%al
    1532:	11 e4                	adc    %esp,%esp
    1534:	00 00                	add    %al,(%eax)
    1536:	00 02                	add    %al,(%edx)
    1538:	91                   	xchg   %eax,%ecx
    1539:	6c                   	insb   (%dx),%es:(%edi)
    153a:	00 00                	add    %al,(%eax)
    153c:	0f d3 00             	psrlq  (%eax),%mm0
    153f:	00 00                	add    %al,(%eax)
    1541:	41                   	inc    %ecx
    1542:	0c 10                	or     $0x10,%al
    1544:	c0 49 0c 10          	rorb   $0x10,0xc(%ecx)
    1548:	c0 01 1f             	rolb   $0x1f,(%ecx)
    154b:	c5 01                	lds    (%ecx),%eax
    154d:	00 00                	add    %al,(%eax)
    154f:	10 41 0c             	adc    %al,0xc(%ecx)
    1552:	10 c0                	adc    %al,%al
    1554:	49                   	dec    %ecx
    1555:	0c 10                	or     $0x10,%al
    1557:	c0 11 e4             	rclb   $0xe4,(%ecx)
    155a:	00 00                	add    %al,(%eax)
    155c:	00 02                	add    %al,(%edx)
    155e:	91                   	xchg   %eax,%ecx
    155f:	6c                   	insb   (%dx),%es:(%edi)
    1560:	00 00                	add    %al,(%eax)
    1562:	0f d3 00             	psrlq  (%eax),%mm0
    1565:	00 00                	add    %al,(%eax)
    1567:	5a                   	pop    %edx
    1568:	0c 10                	or     $0x10,%al
    156a:	c0 62 0c 10          	shlb   $0x10,0xc(%edx)
    156e:	c0 01 20             	rolb   $0x20,(%ecx)
    1571:	eb 01                	jmp    1574 <memcpy-0xc00fea8c>
    1573:	00 00                	add    %al,(%eax)
    1575:	10 5a 0c             	adc    %bl,0xc(%edx)
    1578:	10 c0                	adc    %al,%al
    157a:	62 0c 10             	bound  %ecx,(%eax,%edx,1)
    157d:	c0 11 e4             	rclb   $0xe4,(%ecx)
    1580:	00 00                	add    %al,(%eax)
    1582:	00 02                	add    %al,(%edx)
    1584:	91                   	xchg   %eax,%ecx
    1585:	6c                   	insb   (%dx),%es:(%edi)
    1586:	00 00                	add    %al,(%eax)
    1588:	12 d3                	adc    %bl,%dl
    158a:	00 00                	add    %al,(%eax)
    158c:	00 77 0c             	add    %dh,0xc(%edi)
    158f:	10 c0                	adc    %al,%al
    1591:	7f 0c                	jg     159f <memcpy-0xc00fea61>
    1593:	10 c0                	adc    %al,%al
    1595:	01 1b                	add    %ebx,(%ebx)
    1597:	10 77 0c             	adc    %dh,0xc(%edi)
    159a:	10 c0                	adc    %al,%al
    159c:	7f 0c                	jg     15aa <memcpy-0xc00fea56>
    159e:	10 c0                	adc    %al,%al
    15a0:	11 e4                	adc    %esp,%esp
    15a2:	00 00                	add    %al,(%eax)
    15a4:	00 02                	add    %al,(%edx)
    15a6:	91                   	xchg   %eax,%ecx
    15a7:	6c                   	insb   (%dx),%es:(%edi)
    15a8:	00 00                	add    %al,(%eax)
    15aa:	00 0d 01 e6 03 00    	add    %cl,0x3e601
    15b0:	00 01                	add    %al,(%ecx)
    15b2:	0c 01                	or     $0x1,%al
    15b4:	40                   	inc    %eax
    15b5:	0d 10 c0 d1 0e       	or     $0xed1c010,%eax
    15ba:	10 c0                	adc    %al,%al
    15bc:	78 0f                	js     15cd <memcpy-0xc00fea33>
    15be:	00 00                	add    %al,(%eax)
    15c0:	08 03                	or     %al,(%ebx)
    15c2:	00 00                	add    %al,(%eax)
    15c4:	0f d3 00             	psrlq  (%eax),%mm0
    15c7:	00 00                	add    %al,(%eax)
    15c9:	64                   	fs
    15ca:	0d 10 c0 6c 0d       	or     $0xd6cc010,%eax
    15cf:	10 c0                	adc    %al,%al
    15d1:	01 0f                	add    %ecx,(%edi)
    15d3:	4d                   	dec    %ebp
    15d4:	02 00                	add    (%eax),%al
    15d6:	00 10                	add    %dl,(%eax)
    15d8:	64                   	fs
    15d9:	0d 10 c0 6c 0d       	or     $0xd6cc010,%eax
    15de:	10 c0                	adc    %al,%al
    15e0:	11 e4                	adc    %esp,%esp
    15e2:	00 00                	add    %al,(%eax)
    15e4:	00 02                	add    %al,(%edx)
    15e6:	91                   	xchg   %eax,%ecx
    15e7:	6c                   	insb   (%dx),%es:(%edi)
    15e8:	00 00                	add    %al,(%eax)
    15ea:	0f d3 00             	psrlq  (%eax),%mm0
    15ed:	00 00                	add    %al,(%eax)
    15ef:	98                   	cwtl   
    15f0:	0d 10 c0 a0 0d       	or     $0xda0c010,%eax
    15f5:	10 c0                	adc    %al,%al
    15f7:	01 10                	add    %edx,(%eax)
    15f9:	73 02                	jae    15fd <memcpy-0xc00fea03>
    15fb:	00 00                	add    %al,(%eax)
    15fd:	10 98 0d 10 c0 a0    	adc    %bl,-0x5f3feff3(%eax)
    1603:	0d 10 c0 11 e4       	or     $0xe411c010,%eax
    1608:	00 00                	add    %al,(%eax)
    160a:	00 02                	add    %al,(%edx)
    160c:	91                   	xchg   %eax,%ecx
    160d:	6c                   	insb   (%dx),%es:(%edi)
    160e:	00 00                	add    %al,(%eax)
    1610:	0f d3 00             	psrlq  (%eax),%mm0
    1613:	00 00                	add    %al,(%eax)
    1615:	c1 0d 10 c0 c9 0d 10 	rorl   $0x10,0xdc9c010
    161c:	c0 01 11             	rolb   $0x11,(%ecx)
    161f:	99                   	cltd   
    1620:	02 00                	add    (%eax),%al
    1622:	00 10                	add    %dl,(%eax)
    1624:	c1 0d 10 c0 c9 0d 10 	rorl   $0x10,0xdc9c010
    162b:	c0 11 e4             	rclb   $0xe4,(%ecx)
    162e:	00 00                	add    %al,(%eax)
    1630:	00 02                	add    %al,(%edx)
    1632:	91                   	xchg   %eax,%ecx
    1633:	6c                   	insb   (%dx),%es:(%edi)
    1634:	00 00                	add    %al,(%eax)
    1636:	0f d3 00             	psrlq  (%eax),%mm0
    1639:	00 00                	add    %al,(%eax)
    163b:	de 0d 10 c0 e6 0d    	fimul  0xde6c010
    1641:	10 c0                	adc    %al,%al
    1643:	01 12                	add    %edx,(%edx)
    1645:	bf 02 00 00 10       	mov    $0x10000002,%edi
    164a:	de 0d 10 c0 e6 0d    	fimul  0xde6c010
    1650:	10 c0                	adc    %al,%al
    1652:	11 e4                	adc    %esp,%esp
    1654:	00 00                	add    %al,(%eax)
    1656:	00 02                	add    %al,(%edx)
    1658:	91                   	xchg   %eax,%ecx
    1659:	6c                   	insb   (%dx),%es:(%edi)
    165a:	00 00                	add    %al,(%eax)
    165c:	0f d3 00             	psrlq  (%eax),%mm0
    165f:	00 00                	add    %al,(%eax)
    1661:	f7                   	(bad)  
    1662:	0d 10 c0 ff 0d       	or     $0xdffc010,%eax
    1667:	10 c0                	adc    %al,%al
    1669:	01 13                	add    %edx,(%ebx)
    166b:	e5 02                	in     $0x2,%eax
    166d:	00 00                	add    %al,(%eax)
    166f:	10 f7                	adc    %dh,%bh
    1671:	0d 10 c0 ff 0d       	or     $0xdffc010,%eax
    1676:	10 c0                	adc    %al,%al
    1678:	11 e4                	adc    %esp,%esp
    167a:	00 00                	add    %al,(%eax)
    167c:	00 02                	add    %al,(%edx)
    167e:	91                   	xchg   %eax,%ecx
    167f:	6c                   	insb   (%dx),%es:(%edi)
    1680:	00 00                	add    %al,(%eax)
    1682:	12 d3                	adc    %bl,%dl
    1684:	00 00                	add    %al,(%eax)
    1686:	00 14 0e             	add    %dl,(%esi,%ecx,1)
    1689:	10 c0                	adc    %al,%al
    168b:	1c 0e                	sbb    $0xe,%al
    168d:	10 c0                	adc    %al,%al
    168f:	01 0e                	add    %ecx,(%esi)
    1691:	10 14 0e             	adc    %dl,(%esi,%ecx,1)
    1694:	10 c0                	adc    %al,%al
    1696:	1c 0e                	sbb    $0xe,%al
    1698:	10 c0                	adc    %al,%al
    169a:	11 e4                	adc    %esp,%esp
    169c:	00 00                	add    %al,(%eax)
    169e:	00 02                	add    %al,(%edx)
    16a0:	91                   	xchg   %eax,%ecx
    16a1:	6c                   	insb   (%dx),%es:(%edi)
    16a2:	00 00                	add    %al,(%eax)
    16a4:	00 13                	add    %dl,(%ebx)
    16a6:	01 fa                	add    %edi,%edx
    16a8:	03 00                	add    (%eax),%eax
    16aa:	00 01                	add    %al,(%ecx)
    16ac:	25 01 e0 0e 10       	and    $0x100ee001,%eax
    16b1:	c0                   	(bad)  
    16b2:	b0 0f                	mov    $0xf,%al
    16b4:	10 c0                	adc    %al,%al
    16b6:	a4                   	movsb  %ds:(%esi),%es:(%edi)
    16b7:	0f 00 00             	sldt   (%eax)
    16ba:	0d 01 0b 04 00       	or     $0x40b01,%eax
    16bf:	00 01                	add    %al,(%ecx)
    16c1:	34 01                	xor    $0x1,%al
    16c3:	b0 0f                	mov    $0xf,%al
    16c5:	10 c0                	adc    %al,%al
    16c7:	eb 0f                	jmp    16d8 <memcpy-0xc00fe928>
    16c9:	10 c0                	adc    %al,%al
    16cb:	dc 0f                	fmull  (%edi)
    16cd:	00 00                	add    %al,(%eax)
    16cf:	55                   	push   %ebp
    16d0:	03 00                	add    (%eax),%eax
    16d2:	00 14 f5 00 00 00 e0 	add    %dl,-0x20000000(,%esi,8)
    16d9:	0f 10 c0             	movups %xmm0,%xmm0
    16dc:	e8 0f 10 c0 01       	call   1c026f0 <memcpy-0xbe4fd910>
    16e1:	3c 14                	cmp    $0x14,%al
    16e3:	fe 00                	incb   (%eax)
    16e5:	00 00                	add    %al,(%eax)
    16e7:	e8 0f 10 c0 eb       	call   ebc026fb <_end+0x2b7b9eb3>
    16ec:	0f 10 c0             	movups %xmm0,%xmm0
    16ef:	01 3e                	add    %edi,(%esi)
    16f1:	00 0d 01 f4 03 00    	add    %cl,0x3f401
    16f7:	00 01                	add    %al,(%ecx)
    16f9:	43                   	inc    %ebx
    16fa:	01 f0                	add    %esi,%eax
    16fc:	0f 10 c0             	movups %xmm0,%xmm0
    16ff:	06                   	push   %es
    1700:	10 10                	adc    %dl,(%eax)
    1702:	c0 08 10             	rorb   $0x10,(%eax)
    1705:	00 00                	add    %al,(%eax)
    1707:	81 03 00 00 15 63    	addl   $0x63150000,(%ebx)
    170d:	02 00                	add    (%eax),%al
    170f:	00 01                	add    %al,(%ecx)
    1711:	45                   	inc    %ebp
    1712:	83 03 00             	addl   $0x0,(%ebx)
    1715:	00 06                	add    %al,(%esi)
    1717:	03 b0 0f 10 c0 9f    	add    -0x603feff1(%eax),%esi
    171d:	00 16                	add    %dl,(%esi)
    171f:	01 07                	add    %eax,(%edi)
    1721:	04 81                	add    $0x81,%al
    1723:	03 00                	add    (%eax),%eax
    1725:	00 17                	add    %dl,(%edi)
    1727:	42                   	inc    %edx
    1728:	00 00                	add    %al,(%eax)
    172a:	00 99 03 00 00 18    	add    %bl,0x18000003(%ecx)
    1730:	30 00                	xor    %al,(%eax)
    1732:	00 00                	add    %al,(%eax)
    1734:	04 00                	add    $0x0,%al
    1736:	19 62 75             	sbb    %esp,0x75(%edx)
    1739:	66                   	data16
    173a:	00 01                	add    %al,(%ecx)
    173c:	07                   	pop    %es
    173d:	89 03                	mov    %eax,(%ebx)
    173f:	00 00                	add    %al,(%eax)
    1741:	01 05 03 18 80 44    	add    %eax,0x44801803
    1747:	c0 19 66             	rcrb   $0x66,(%ecx)
    174a:	00 01                	add    %al,(%ecx)
    174c:	07                   	pop    %es
    174d:	42                   	inc    %edx
    174e:	00 00                	add    %al,(%eax)
    1750:	00 01                	add    %al,(%ecx)
    1752:	05 03 00 31 10       	add    $0x10310003,%eax
    1757:	c0 19 72             	rcrb   $0x72,(%ecx)
    175a:	00 01                	add    %al,(%ecx)
    175c:	07                   	pop    %es
    175d:	42                   	inc    %edx
    175e:	00 00                	add    %al,(%eax)
    1760:	00 01                	add    %al,(%ecx)
    1762:	05 03 fc 30 10       	add    $0x1030fc03,%eax
    1767:	c0 19 67             	rcrb   $0x67,(%ecx)
    176a:	00 01                	add    %al,(%ecx)
    176c:	07                   	pop    %es
    176d:	42                   	inc    %edx
    176e:	00 00                	add    %al,(%eax)
    1770:	00 01                	add    %al,(%ecx)
    1772:	05 03 04 20 10       	add    $0x10200403,%eax
    1777:	c0 19 74             	rcrb   $0x74,(%ecx)
    177a:	69 64 00 01 07 42 00 	imul   $0x4207,0x1(%eax,%eax,1),%esp
    1781:	00 
    1782:	00 01                	add    %al,(%ecx)
    1784:	05 03 00 20 10       	add    $0x10200003,%eax
    1789:	c0 1a 69             	rcrb   $0x69,(%edx)
    178c:	01 00                	add    %eax,(%eax)
    178e:	00 01                	add    %al,(%ecx)
    1790:	08 c8                	or     %cl,%al
    1792:	00 00                	add    %al,(%eax)
    1794:	00 01                	add    %al,(%ecx)
    1796:	05 03 2c 80 44       	add    $0x44802c03,%eax
    179b:	c0 1a 13             	rcrb   $0x13,(%edx)
    179e:	04 00                	add    $0x0,%al
    17a0:	00 01                	add    %al,(%ecx)
    17a2:	08 c8                	or     %cl,%al
    17a4:	00 00                	add    %al,(%eax)
    17a6:	00 01                	add    %al,(%ecx)
    17a8:	05 03 00 80 44       	add    $0x44800003,%eax
    17ad:	c0 1a 05             	rcrb   $0x5,(%edx)
    17b0:	04 00                	add    $0x0,%al
    17b2:	00 01                	add    %al,(%ecx)
    17b4:	08 c8                	or     %cl,%al
    17b6:	00 00                	add    %al,(%eax)
    17b8:	00 01                	add    %al,(%ecx)
    17ba:	05 03 0c 80 44       	add    $0x44800c03,%eax
    17bf:	c0 00 d5             	rolb   $0xd5,(%eax)
    17c2:	01 00                	add    %eax,(%eax)
    17c4:	00 02                	add    %al,(%edx)
    17c6:	00 3f                	add    %bh,(%edi)
    17c8:	0a 00                	or     (%eax),%al
    17ca:	00 04 01             	add    %al,(%ecx,%eax,1)
    17cd:	8c 00                	mov    %es,(%eax)
    17cf:	00 00                	add    %al,(%eax)
    17d1:	01 38                	add    %edi,(%eax)
    17d3:	04 00                	add    $0x0,%al
    17d5:	00 55 00             	add    %dl,0x0(%ebp)
    17d8:	00 00                	add    %al,(%eax)
    17da:	10 10                	adc    %dl,(%eax)
    17dc:	10 c0                	adc    %al,%al
    17de:	ac                   	lods   %ds:(%esi),%al
    17df:	13 10                	adc    (%eax),%edx
    17e1:	c0 ba 07 00 00 02 06 	sarb   $0x6,0x2000007(%edx)
    17e8:	00 00                	add    %al,(%eax)
    17ea:	00 03                	add    %al,(%ebx)
    17ec:	04 30                	add    $0x30,%al
    17ee:	00 00                	add    %al,(%eax)
    17f0:	00 03                	add    %al,(%ebx)
    17f2:	04 07                	add    $0x7,%al
    17f4:	9e                   	sahf   
    17f5:	00 00                	add    %al,(%eax)
    17f7:	00 04 04             	add    %al,(%esp,%eax,1)
    17fa:	05 69 6e 74 00       	add    $0x746e69,%eax
    17ff:	02 1c 03             	add    (%ebx,%eax,1),%bl
    1802:	00 00                	add    %al,(%eax)
    1804:	03 06                	add    (%esi),%eax
    1806:	49                   	dec    %ecx
    1807:	00 00                	add    %al,(%eax)
    1809:	00 03                	add    %al,(%ebx)
    180b:	02 07                	add    (%edi),%al
    180d:	98                   	cwtl   
    180e:	00 00                	add    %al,(%eax)
    1810:	00 03                	add    %al,(%ebx)
    1812:	02 05 c0 00 00 00    	add    0xc0,%al
    1818:	03 01                	add    (%ecx),%eax
    181a:	08 47 00             	or     %al,0x0(%edi)
    181d:	00 00                	add    %al,(%eax)
    181f:	03 01                	add    (%ecx),%eax
    1821:	06                   	push   %es
    1822:	50                   	push   %eax
    1823:	00 00                	add    %al,(%eax)
    1825:	00 05 5f 04 00 00    	add    %al,0x45f
    182b:	08 02                	or     %al,(%edx)
    182d:	71 06                	jno    1835 <memcpy-0xc00fe7cb>
    182f:	01 00                	add    %eax,(%eax)
    1831:	00 06                	add    %al,(%esi)
    1833:	2f                   	das    
    1834:	04 00                	add    $0x0,%al
    1836:	00 02                	add    %al,(%edx)
    1838:	72 25                	jb     185f <memcpy-0xc00fe7a1>
    183a:	00 00                	add    %al,(%eax)
    183c:	00 04 10             	add    %al,(%eax,%edx,1)
    183f:	10 02                	adc    %al,(%edx)
    1841:	23 00                	and    (%eax),%eax
    1843:	07                   	pop    %es
    1844:	63 73 00             	arpl   %si,0x0(%ebx)
    1847:	02 73 25             	add    0x25(%ebx),%dh
    184a:	00 00                	add    %al,(%eax)
    184c:	00 04 10             	add    %al,(%eax,%edx,1)
    184f:	00 02                	add    %al,(%edx)
    1851:	23 00                	and    (%eax),%eax
    1853:	06                   	push   %es
    1854:	c5 02                	lds    (%edx),%eax
    1856:	00 00                	add    %al,(%eax)
    1858:	02 74 25 00          	add    0x0(%ebp,%eiz,1),%dh
    185c:	00 00                	add    %al,(%eax)
    185e:	04 05                	add    $0x5,%al
    1860:	1b 02                	sbb    (%edx),%eax
    1862:	23 04 06             	and    (%esi,%eax,1),%eax
    1865:	2e 03 00             	add    %cs:(%eax),%eax
    1868:	00 02                	add    %al,(%edx)
    186a:	75 25                	jne    1891 <memcpy-0xc00fe76f>
    186c:	00 00                	add    %al,(%eax)
    186e:	00 04 03             	add    %al,(%ebx,%eax,1)
    1871:	18 02                	sbb    %al,(%edx)
    1873:	23 04 06             	and    (%esi,%eax,1),%eax
    1876:	a0 03 00 00 02       	mov    0x2000003,%al
    187b:	76 25                	jbe    18a2 <memcpy-0xc00fe75e>
    187d:	00 00                	add    %al,(%eax)
    187f:	00 04 04             	add    %al,(%esp,%eax,1)
    1882:	14 02                	adc    $0x2,%al
    1884:	23 04 07             	and    (%edi,%eax,1),%eax
    1887:	73 00                	jae    1889 <memcpy-0xc00fe777>
    1889:	02 77 25             	add    0x25(%edi),%dh
    188c:	00 00                	add    %al,(%eax)
    188e:	00 04 01             	add    %al,(%ecx,%eax,1)
    1891:	13 02                	adc    (%edx),%eax
    1893:	23 04 07             	and    (%edi,%eax,1),%eax
    1896:	64                   	fs
    1897:	70 6c                	jo     1905 <memcpy-0xc00fe6fb>
    1899:	00 02                	add    %al,(%edx)
    189b:	78 25                	js     18c2 <memcpy-0xc00fe73e>
    189d:	00 00                	add    %al,(%eax)
    189f:	00 04 02             	add    %al,(%edx,%eax,1)
    18a2:	11 02                	adc    %eax,(%edx)
    18a4:	23 04 07             	and    (%edi,%eax,1),%eax
    18a7:	70 00                	jo     18a9 <memcpy-0xc00fe757>
    18a9:	02 79 25             	add    0x25(%ecx),%bh
    18ac:	00 00                	add    %al,(%eax)
    18ae:	00 04 01             	add    %al,(%ecx,%eax,1)
    18b1:	10 02                	adc    %al,(%edx)
    18b3:	23 04 06             	and    (%esi,%eax,1),%eax
    18b6:	4d                   	dec    %ebp
    18b7:	04 00                	add    $0x0,%al
    18b9:	00 02                	add    %al,(%edx)
    18bb:	7a 25                	jp     18e2 <memcpy-0xc00fe71e>
    18bd:	00 00                	add    %al,(%eax)
    18bf:	00 04 10             	add    %al,(%eax,%edx,1)
    18c2:	00 02                	add    %al,(%edx)
    18c4:	23 04 00             	and    (%eax,%eax,1),%eax
    18c7:	02 5f 04             	add    0x4(%edi),%bl
    18ca:	00 00                	add    %al,(%eax)
    18cc:	02 7c 65 00          	add    0x0(%ebp,%eiz,2),%bh
    18d0:	00 00                	add    %al,(%eax)
    18d2:	08 57 04             	or     %dl,0x4(%edi)
    18d5:	00 00                	add    %al,(%eax)
    18d7:	02 d1                	add    %cl,%dl
    18d9:	01 03                	add    %eax,(%ebx)
    18db:	40                   	inc    %eax
    18dc:	01 00                	add    %eax,(%eax)
    18de:	00 09                	add    %cl,(%ecx)
    18e0:	69 64 74 00 02 d1 40 	imul   $0x140d102,0x0(%esp,%esi,2),%esp
    18e7:	01 
    18e8:	00 00                	add    %al,(%eax)
    18ea:	0a 86 03 00 00 02    	or     0x2000003(%esi),%al
    18f0:	d1 25 00 00 00 0b    	shll   0xb000000
    18f6:	9b                   	fwait
    18f7:	01 00                	add    %eax,(%eax)
    18f9:	00 02                	add    %al,(%edx)
    18fb:	d2 56 01             	rclb   %cl,0x1(%esi)
    18fe:	00 00                	add    %al,(%eax)
    1900:	00 0c 04             	add    %cl,(%esp,%eax,1)
    1903:	06                   	push   %es
    1904:	01 00                	add    %eax,(%eax)
    1906:	00 0d 3e 00 00 00    	add    %cl,0x3e
    190c:	56                   	push   %esi
    190d:	01 00                	add    %eax,(%eax)
    190f:	00 0e                	add    %cl,(%esi)
    1911:	30 00                	xor    %al,(%eax)
    1913:	00 00                	add    %al,(%eax)
    1915:	02 00                	add    (%eax),%al
    1917:	0f 46 01             	cmovbe (%ecx),%eax
    191a:	00 00                	add    %al,(%eax)
    191c:	10 01                	adc    %al,(%ecx)
    191e:	26                   	es
    191f:	04 00                	add    $0x0,%al
    1921:	00 01                	add    %al,(%ecx)
    1923:	07                   	pop    %es
    1924:	01 10                	add    %edx,(%eax)
    1926:	10 10                	adc    %dl,(%eax)
    1928:	c0 ac 13 10 c0 34 10 	shrb   $0x0,0x1034c010(%ebx,%edx,1)
    192f:	00 
    1930:	00 b6 01 00 00 11    	add    %dh,0x11000001(%esi)
    1936:	69 00 01 08 37 00    	imul   $0x370801,(%eax),%eax
    193c:	00 00                	add    %al,(%eax)
    193e:	6c                   	insb   (%dx),%es:(%edi)
    193f:	10 00                	adc    %al,(%eax)
    1941:	00 12                	add    %dl,(%edx)
    1943:	11 01                	adc    %eax,(%ecx)
    1945:	00 00                	add    %al,(%eax)
    1947:	fd                   	std    
    1948:	12 10                	adc    (%eax),%dl
    194a:	c0 40 01 00          	rolb   $0x0,0x1(%eax)
    194e:	00 01                	add    %al,(%ecx)
    1950:	26 13 29             	adc    %es:(%ecx),%ebp
    1953:	01 00                	add    %eax,(%eax)
    1955:	00 00                	add    %al,(%eax)
    1957:	08 14 1e             	or     %dl,(%esi,%ebx,1)
    195a:	01 00                	add    %eax,(%eax)
    195c:	00 06                	add    %al,(%esi)
    195e:	03 40 80             	add    -0x80(%eax),%eax
    1961:	44                   	inc    %esp
    1962:	c0 9f 15 68 01 00 00 	rcrb   $0x0,0x16815(%edi)
    1969:	16                   	push   %ss
    196a:	34 01                	xor    $0x1,%al
    196c:	00 00                	add    %al,(%eax)
    196e:	05 03 04 31 10       	add    $0x10310403,%eax
    1973:	c0 00 00             	rolb   $0x0,(%eax)
    1976:	00 0d 65 00 00 00    	add    %cl,0x65
    197c:	c6 01 00             	movb   $0x0,(%ecx)
    197f:	00 0e                	add    %cl,(%esi)
    1981:	30 00                	xor    %al,(%eax)
    1983:	00 00                	add    %al,(%eax)
    1985:	ff 00                	incl   (%eax)
    1987:	17                   	pop    %ss
    1988:	69 64 74 00 01 04 b6 	imul   $0x1b60401,0x0(%esp,%esi,2),%esp
    198f:	01 
    1990:	00 00                	add    %al,(%eax)
    1992:	01 05 03 40 80 44    	add    %eax,0x44804003
    1998:	c0 00 b5             	rolb   $0xb5,(%eax)
    199b:	02 00                	add    (%eax),%al
    199d:	00 02                	add    %al,(%edx)
    199f:	00 71 0b             	add    %dh,0xb(%ecx)
    19a2:	00 00                	add    %al,(%eax)
    19a4:	04 01                	add    $0x1,%al
    19a6:	8c 00                	mov    %es,(%eax)
    19a8:	00 00                	add    %al,(%eax)
    19aa:	01 68 04             	add    %ebp,0x4(%eax)
    19ad:	00 00                	add    %al,(%eax)
    19af:	55                   	push   %ebp
    19b0:	00 00                	add    %al,(%eax)
    19b2:	00 b0 13 10 c0 91    	add    %dh,-0x6e3fefed(%eax)
    19b8:	14 10                	adc    $0x10,%al
    19ba:	c0                   	(bad)  
    19bb:	b3 08                	mov    $0x8,%bl
    19bd:	00 00                	add    %al,(%eax)
    19bf:	02 06                	add    (%esi),%al
    19c1:	00 00                	add    %al,(%eax)
    19c3:	00 03                	add    %al,(%ebx)
    19c5:	04 30                	add    $0x30,%al
    19c7:	00 00                	add    %al,(%eax)
    19c9:	00 03                	add    %al,(%ebx)
    19cb:	04 07                	add    $0x7,%al
    19cd:	9e                   	sahf   
    19ce:	00 00                	add    %al,(%eax)
    19d0:	00 02                	add    %al,(%edx)
    19d2:	07                   	pop    %es
    19d3:	00 00                	add    %al,(%eax)
    19d5:	00 03                	add    %al,(%ebx)
    19d7:	05 42 00 00 00       	add    $0x42,%eax
    19dc:	04 04                	add    $0x4,%al
    19de:	05 69 6e 74 00       	add    $0x746e69,%eax
    19e3:	03 02                	add    (%edx),%eax
    19e5:	07                   	pop    %es
    19e6:	98                   	cwtl   
    19e7:	00 00                	add    %al,(%eax)
    19e9:	00 03                	add    %al,(%ebx)
    19eb:	02 05 c0 00 00 00    	add    0xc0,%al
    19f1:	02 51 01             	add    0x1(%ecx),%dl
    19f4:	00 00                	add    %al,(%eax)
    19f6:	03 08                	add    (%eax),%ecx
    19f8:	62 00                	bound  %eax,(%eax)
    19fa:	00 00                	add    %al,(%eax)
    19fc:	03 01                	add    (%ecx),%eax
    19fe:	08 47 00             	or     %al,0x0(%edi)
    1a01:	00 00                	add    %al,(%eax)
    1a03:	03 01                	add    (%ecx),%eax
    1a05:	06                   	push   %es
    1a06:	50                   	push   %eax
    1a07:	00 00                	add    %al,(%eax)
    1a09:	00 02                	add    %al,(%edx)
    1a0b:	74 00                	je     1a0d <memcpy-0xc00fe5f3>
    1a0d:	00 00                	add    %al,(%eax)
    1a0f:	03 0a                	add    (%edx),%ecx
    1a11:	62 00                	bound  %eax,(%eax)
    1a13:	00 00                	add    %al,(%eax)
    1a15:	05 14 01 00 00       	add    $0x114,%eax
    1a1a:	4c                   	dec    %esp
    1a1b:	02 8d 8c 01 00 00    	add    0x18c(%ebp),%cl
    1a21:	06                   	push   %es
    1a22:	65 64 69 00 02 8e 25 	gs imul $0x258e02,%fs:%gs:(%eax),%eax
    1a29:	00 
    1a2a:	00 00                	add    %al,(%eax)
    1a2c:	02 23                	add    (%ebx),%ah
    1a2e:	00 06                	add    %al,(%esi)
    1a30:	65                   	gs
    1a31:	73 69                	jae    1a9c <memcpy-0xc00fe564>
    1a33:	00 02                	add    %al,(%edx)
    1a35:	8e 25 00 00 00 02    	mov    0x2000000,%fs
    1a3b:	23 04 06             	and    (%esi,%eax,1),%eax
    1a3e:	65 62 70 00          	bound  %esi,%gs:0x0(%eax)
    1a42:	02 8e 25 00 00 00    	add    0x25(%esi),%cl
    1a48:	02 23                	add    (%ebx),%ah
    1a4a:	08 07                	or     %al,(%edi)
    1a4c:	af                   	scas   %es:(%edi),%eax
    1a4d:	01 00                	add    %eax,(%eax)
    1a4f:	00 02                	add    %al,(%edx)
    1a51:	8e 25 00 00 00 02    	mov    0x2000000,%fs
    1a57:	23 0c 06             	and    (%esi,%eax,1),%ecx
    1a5a:	65 62 78 00          	bound  %edi,%gs:0x0(%eax)
    1a5e:	02 8f 25 00 00 00    	add    0x25(%edi),%cl
    1a64:	02 23                	add    (%ebx),%ah
    1a66:	10 06                	adc    %al,(%esi)
    1a68:	65                   	gs
    1a69:	64                   	fs
    1a6a:	78 00                	js     1a6c <memcpy-0xc00fe594>
    1a6c:	02 8f 25 00 00 00    	add    0x25(%edi),%cl
    1a72:	02 23                	add    (%ebx),%ah
    1a74:	14 06                	adc    $0x6,%al
    1a76:	65 63 78 00          	arpl   %di,%gs:0x0(%eax)
    1a7a:	02 8f 25 00 00 00    	add    0x25(%edi),%cl
    1a80:	02 23                	add    (%ebx),%ah
    1a82:	18 06                	sbb    %al,(%esi)
    1a84:	65                   	gs
    1a85:	61                   	popa   
    1a86:	78 00                	js     1a88 <memcpy-0xc00fe578>
    1a88:	02 8f 25 00 00 00    	add    0x25(%edi),%cl
    1a8e:	02 23                	add    (%ebx),%ah
    1a90:	1c 06                	sbb    $0x6,%al
    1a92:	67 73 00             	addr16 jae 1a95 <memcpy-0xc00fe56b>
    1a95:	02 90 25 00 00 00    	add    0x25(%eax),%dl
    1a9b:	02 23                	add    (%ebx),%ah
    1a9d:	20 06                	and    %al,(%esi)
    1a9f:	66                   	data16
    1aa0:	73 00                	jae    1aa2 <memcpy-0xc00fe55e>
    1aa2:	02 90 25 00 00 00    	add    0x25(%eax),%dl
    1aa8:	02 23                	add    (%ebx),%ah
    1aaa:	24 06                	and    $0x6,%al
    1aac:	65                   	gs
    1aad:	73 00                	jae    1aaf <memcpy-0xc00fe551>
    1aaf:	02 90 25 00 00 00    	add    0x25(%eax),%dl
    1ab5:	02 23                	add    (%ebx),%ah
    1ab7:	28 06                	sub    %al,(%esi)
    1ab9:	64                   	fs
    1aba:	73 00                	jae    1abc <memcpy-0xc00fe544>
    1abc:	02 90 25 00 00 00    	add    0x25(%eax),%dl
    1ac2:	02 23                	add    (%ebx),%ah
    1ac4:	2c 06                	sub    $0x6,%al
    1ac6:	69 72 71 00 02 91 42 	imul   $0x42910200,0x71(%edx),%esi
    1acd:	00 00                	add    %al,(%eax)
    1acf:	00 02                	add    %al,(%edx)
    1ad1:	23 30                	and    (%eax),%esi
    1ad3:	06                   	push   %es
    1ad4:	65                   	gs
    1ad5:	72 72                	jb     1b49 <memcpy-0xc00fe4b7>
    1ad7:	00 02                	add    %al,(%edx)
    1ad9:	92                   	xchg   %eax,%edx
    1ada:	25 00 00 00 02       	and    $0x2000000,%eax
    1adf:	23 34 06             	and    (%esi,%eax,1),%esi
    1ae2:	65 69 70 00 02 92 25 	imul   $0x259202,%gs:0x0(%eax),%esi
    1ae9:	00 
    1aea:	00 00                	add    %al,(%eax)
    1aec:	02 23                	add    (%ebx),%ah
    1aee:	38 06                	cmp    %al,(%esi)
    1af0:	63 73 00             	arpl   %si,0x0(%ebx)
    1af3:	02 92 25 00 00 00    	add    0x25(%edx),%dl
    1af9:	02 23                	add    (%ebx),%ah
    1afb:	3c 07                	cmp    $0x7,%al
    1afd:	27                   	daa    
    1afe:	01 00                	add    %eax,(%eax)
    1b00:	00 02                	add    %al,(%edx)
    1b02:	92                   	xchg   %eax,%edx
    1b03:	25 00 00 00 02       	and    $0x2000000,%eax
    1b08:	23 40 06             	and    0x6(%eax),%eax
    1b0b:	65                   	gs
    1b0c:	73 70                	jae    1b7e <memcpy-0xc00fe482>
    1b0e:	00 02                	add    %al,(%edx)
    1b10:	93                   	xchg   %eax,%ebx
    1b11:	25 00 00 00 02       	and    $0x2000000,%eax
    1b16:	23 44 06 73          	and    0x73(%esi,%eax,1),%eax
    1b1a:	73 00                	jae    1b1c <memcpy-0xc00fe4e4>
    1b1c:	02 93 25 00 00 00    	add    0x25(%ebx),%dl
    1b22:	02 23                	add    (%ebx),%ah
    1b24:	48                   	dec    %eax
    1b25:	00 02                	add    %al,(%edx)
    1b27:	14 01                	adc    $0x1,%al
    1b29:	00 00                	add    %al,(%eax)
    1b2b:	02 95 7b 00 00 00    	add    0x7b(%ebp),%dl
    1b31:	05 c6 01 00 00       	add    $0x1c6,%eax
    1b36:	08 04 06             	or     %al,(%esi,%eax,1)
    1b39:	c0 01 00             	rolb   $0x0,(%ecx)
    1b3c:	00 07                	add    %al,(%edi)
    1b3e:	cf                   	iret   
    1b3f:	01 00                	add    %eax,(%eax)
    1b41:	00 04 07             	add    %al,(%edi,%eax,1)
    1b44:	c0 01 00             	rolb   $0x0,(%ecx)
    1b47:	00 02                	add    %al,(%edx)
    1b49:	23 00                	and    (%eax),%eax
    1b4b:	07                   	pop    %es
    1b4c:	63 02                	arpl   %ax,(%edx)
    1b4e:	00 00                	add    %al,(%eax)
    1b50:	04 07                	add    $0x7,%al
    1b52:	c0 01 00             	rolb   $0x0,(%ecx)
    1b55:	00 02                	add    %al,(%edx)
    1b57:	23 04 00             	and    (%eax,%eax,1),%eax
    1b5a:	08 04 97             	or     %al,(%edi,%edx,4)
    1b5d:	01 00                	add    %eax,(%eax)
    1b5f:	00 02                	add    %al,(%edx)
    1b61:	c6 01 00             	movb   $0x0,(%ecx)
    1b64:	00 04 09             	add    %al,(%ecx,%ecx,1)
    1b67:	97                   	xchg   %eax,%edi
    1b68:	01 00                	add    %eax,(%eax)
    1b6a:	00 09                	add    %cl,(%ecx)
    1b6c:	50                   	push   %eax
    1b6d:	43                   	inc    %ebx
    1b6e:	42                   	inc    %edx
    1b6f:	00 60 1f             	add    %ah,0x1f(%eax)
    1b72:	05 0a 40 02 00       	add    $0x2400a,%eax
    1b77:	00 06                	add    %al,(%esi)
    1b79:	74 66                	je     1be1 <memcpy-0xc00fe41f>
    1b7b:	00 05 0b 40 02 00    	add    %al,0x2400b
    1b81:	00 02                	add    %al,(%edx)
    1b83:	23 00                	and    (%eax),%eax
    1b85:	07                   	pop    %es
    1b86:	47                   	inc    %edi
    1b87:	01 00                	add    %eax,(%eax)
    1b89:	00 05 0c c6 01 00    	add    %al,0x1c60c
    1b8f:	00 02                	add    %al,(%edx)
    1b91:	23 04 07             	and    (%edi,%eax,1),%eax
    1b94:	b4 01                	mov    $0x1,%ah
    1b96:	00 00                	add    %al,(%eax)
    1b98:	05 0c c6 01 00       	add    $0x1c60c,%eax
    1b9d:	00 02                	add    %al,(%edx)
    1b9f:	23 0c 07             	and    (%edi,%eax,1),%ecx
    1ba2:	59                   	pop    %ecx
    1ba3:	01 00                	add    %eax,(%eax)
    1ba5:	00 05 0d 37 00 00    	add    %al,0x370d
    1bab:	00 02                	add    %al,(%edx)
    1bad:	23 14 06             	and    (%esi,%eax,1),%edx
    1bb0:	70 69                	jo     1c1b <memcpy-0xc00fe3e5>
    1bb2:	64 00 05 0d 37 00 00 	add    %al,%fs:0x370d
    1bb9:	00 02                	add    %al,(%edx)
    1bbb:	23 18                	and    (%eax),%ebx
    1bbd:	07                   	pop    %es
    1bbe:	d4 01                	aam    $0x1
    1bc0:	00 00                	add    %al,(%eax)
    1bc2:	05 0e 70 00 00       	add    $0x700e,%eax
    1bc7:	00 02                	add    %al,(%edx)
    1bc9:	23 1c 07             	and    (%edi,%eax,1),%ebx
    1bcc:	94                   	xchg   %eax,%esp
    1bcd:	01 00                	add    %eax,(%eax)
    1bcf:	00 05 0f 46 02 00    	add    %al,0x2460f
    1bd5:	00 02                	add    %al,(%edx)
    1bd7:	23 1d 00 08 04 8c    	and    0x8c040800,%ebx
    1bdd:	01 00                	add    %eax,(%eax)
    1bdf:	00 0a                	add    %cl,(%edx)
    1be1:	57                   	push   %edi
    1be2:	00 00                	add    %al,(%eax)
    1be4:	00 57 02             	add    %dl,0x2(%edi)
    1be7:	00 00                	add    %al,(%eax)
    1be9:	0b 30                	or     (%eax),%esi
    1beb:	00 00                	add    %al,(%eax)
    1bed:	00 3f                	add    %bh,(%edi)
    1bef:	1f                   	pop    %ds
    1bf0:	00 0c 63             	add    %cl,(%ebx,%eiz,2)
    1bf3:	6c                   	insb   (%dx),%es:(%edi)
    1bf4:	69 00 02 9f 01 03    	imul   $0x3019f02,(%eax),%eax
    1bfa:	0d 01 84 04 00       	or     $0x48401,%eax
    1bff:	00 01                	add    %al,(%ecx)
    1c01:	03 01                	add    (%ecx),%eax
    1c03:	b0 13                	mov    $0x13,%al
    1c05:	10 c0                	adc    %al,%al
    1c07:	91                   	xchg   %eax,%ecx
    1c08:	14 10                	adc    $0x10,%al
    1c0a:	c0 8b 10 00 00 a5 02 	rorb   $0x2,-0x5afffff0(%ebx)
    1c11:	00 00                	add    %al,(%eax)
    1c13:	0e                   	push   %cs
    1c14:	74 66                	je     1c7c <memcpy-0xc00fe384>
    1c16:	00 01                	add    %al,(%ecx)
    1c18:	03 40 02             	add    0x2(%eax),%eax
    1c1b:	00 00                	add    %al,(%eax)
    1c1d:	02 91 00 0f 69 72    	add    0x72690f00(%ecx),%dl
    1c23:	71 00                	jno    1c25 <memcpy-0xc00fe3db>
    1c25:	01 04 42             	add    %eax,(%edx,%eax,2)
    1c28:	00 00                	add    %al,(%eax)
    1c2a:	00 23                	add    %ah,(%ebx)
    1c2c:	11 00                	adc    %eax,(%eax)
    1c2e:	00 10                	add    %dl,(%eax)
    1c30:	57                   	push   %edi
    1c31:	02 00                	add    (%eax),%al
    1c33:	00 20                	add    %ah,(%eax)
    1c35:	14 10                	adc    $0x10,%al
    1c37:	c0 21 14             	shlb   $0x14,(%ecx)
    1c3a:	10 c0                	adc    %al,%al
    1c3c:	01 09                	add    %ecx,(%ecx)
    1c3e:	00 11                	add    %dl,(%ecx)
    1c40:	ba 01 00 00 05       	mov    $0x5000001,%edx
    1c45:	12 b2 02 00 00 01    	adc    0x1000002(%edx),%dh
    1c4b:	01 08                	add    %ecx,(%eax)
    1c4d:	04 d1                	add    $0xd1,%al
    1c4f:	01 00                	add    %eax,(%eax)
    1c51:	00 00                	add    %al,(%eax)
    1c53:	58                   	pop    %eax
    1c54:	02 00                	add    (%eax),%al
    1c56:	00 02                	add    %al,(%edx)
    1c58:	00 63 0c             	add    %ah,0xc(%ebx)
    1c5b:	00 00                	add    %al,(%eax)
    1c5d:	04 01                	add    $0x1,%al
    1c5f:	8c 00                	mov    %es,(%eax)
    1c61:	00 00                	add    %al,(%eax)
    1c63:	01 9a 04 00 00 55    	add    %ebx,0x55000004(%edx)
    1c69:	00 00                	add    %al,(%eax)
    1c6b:	00 a0 14 10 c0 07    	add    %ah,0x7c01014(%eax)
    1c71:	15 10 c0 74 09       	adc    $0x974c010,%eax
    1c76:	00 00                	add    %al,(%eax)
    1c78:	02 04 07             	add    (%edi,%eax,1),%al
    1c7b:	9e                   	sahf   
    1c7c:	00 00                	add    %al,(%eax)
    1c7e:	00 03                	add    %al,(%ebx)
    1c80:	04 05                	add    $0x5,%al
    1c82:	69 6e 74 00 04 1c 03 	imul   $0x31c0400,0x74(%esi),%ebp
    1c89:	00 00                	add    %al,(%eax)
    1c8b:	03 06                	add    (%esi),%eax
    1c8d:	3e 00 00             	add    %al,%ds:(%eax)
    1c90:	00 02                	add    %al,(%edx)
    1c92:	02 07                	add    (%edi),%al
    1c94:	98                   	cwtl   
    1c95:	00 00                	add    %al,(%eax)
    1c97:	00 02                	add    %al,(%edx)
    1c99:	02 05 c0 00 00 00    	add    0xc0,%al
    1c9f:	04 51                	add    $0x51,%al
    1ca1:	01 00                	add    %eax,(%eax)
    1ca3:	00 03                	add    %al,(%ebx)
    1ca5:	08 57 00             	or     %dl,0x0(%edi)
    1ca8:	00 00                	add    %al,(%eax)
    1caa:	02 01                	add    (%ecx),%al
    1cac:	08 47 00             	or     %al,0x0(%edi)
    1caf:	00 00                	add    %al,(%eax)
    1cb1:	02 01                	add    (%ecx),%al
    1cb3:	06                   	push   %es
    1cb4:	50                   	push   %eax
    1cb5:	00 00                	add    %al,(%eax)
    1cb7:	00 05 dd 02 00 00    	add    %al,0x2dd
    1cbd:	02 f1                	add    %cl,%dh
    1cbf:	01 03                	add    %eax,(%ebx)
    1cc1:	89 00                	mov    %eax,(%eax)
    1cc3:	00 00                	add    %al,(%eax)
    1cc5:	06                   	push   %es
    1cc6:	10 03                	adc    %al,(%ebx)
    1cc8:	00 00                	add    %al,(%eax)
    1cca:	02 f1                	add    %cl,%dh
    1ccc:	33 00                	xor    (%eax),%eax
    1cce:	00 00                	add    %al,(%eax)
    1cd0:	06                   	push   %es
    1cd1:	9b                   	fwait
    1cd2:	01 00                	add    %eax,(%eax)
    1cd4:	00 02                	add    %al,(%edx)
    1cd6:	f1                   	icebp  
    1cd7:	4c                   	dec    %esp
    1cd8:	00 00                	add    %al,(%eax)
    1cda:	00 00                	add    %al,(%eax)
    1cdc:	07                   	pop    %es
    1cdd:	01 8f 04 00 00 01    	add    %ecx,0x1000004(%edi)
    1ce3:	06                   	push   %es
    1ce4:	01 a0 14 10 c0 07    	add    %esp,0x7c01014(%eax)
    1cea:	15 10 c0 66 11       	adc    $0x1166c010,%eax
    1cef:	00 00                	add    %al,(%eax)
    1cf1:	08 65 00             	or     %ah,0x0(%ebp)
    1cf4:	00 00                	add    %al,(%eax)
    1cf6:	a1 14 10 c0 90       	mov    0x90c01014,%eax
    1cfb:	01 00                	add    %eax,(%eax)
    1cfd:	00 01                	add    %al,(%ecx)
    1cff:	07                   	pop    %es
    1d00:	be 00 00 00 09       	mov    $0x9000000,%esi
    1d05:	7d 00                	jge    1d07 <memcpy-0xc00fe2f9>
    1d07:	00 00                	add    %al,(%eax)
    1d09:	7f 0a                	jg     1d15 <memcpy-0xc00fe2eb>
    1d0b:	72 00                	jb     1d0d <memcpy-0xc00fe2f3>
    1d0d:	00 00                	add    %al,(%eax)
    1d0f:	21 00                	and    %eax,(%eax)
    1d11:	0b 65 00             	or     0x0(%ebp),%esp
    1d14:	00 00                	add    %al,(%eax)
    1d16:	ae                   	scas   %es:(%edi),%al
    1d17:	14 10                	adc    $0x10,%al
    1d19:	c0                   	(bad)  
    1d1a:	b1 14                	mov    $0x14,%cl
    1d1c:	10 c0                	adc    %al,%al
    1d1e:	01 08                	add    %ecx,(%eax)
    1d20:	de 00                	fiadd  (%eax)
    1d22:	00 00                	add    %al,(%eax)
    1d24:	09 7d 00             	or     %edi,0x0(%ebp)
    1d27:	00 00                	add    %al,(%eax)
    1d29:	7f 0a                	jg     1d35 <memcpy-0xc00fe2cb>
    1d2b:	72 00                	jb     1d2d <memcpy-0xc00fe2d3>
    1d2d:	00 00                	add    %al,(%eax)
    1d2f:	a1 00 0b 65 00       	mov    0x650b00,%eax
    1d34:	00 00                	add    %al,(%eax)
    1d36:	b1 14                	mov    $0x14,%cl
    1d38:	10 c0                	adc    %al,%al
    1d3a:	b9 14 10 c0 01       	mov    $0x1c01014,%ecx
    1d3f:	09 fe                	or     %edi,%esi
    1d41:	00 00                	add    %al,(%eax)
    1d43:	00 0a                	add    %cl,(%edx)
    1d45:	7d 00                	jge    1d47 <memcpy-0xc00fe2b9>
    1d47:	00 00                	add    %al,(%eax)
    1d49:	11 0a                	adc    %ecx,(%edx)
    1d4b:	72 00                	jb     1d4d <memcpy-0xc00fe2b3>
    1d4d:	00 00                	add    %al,(%eax)
    1d4f:	20 00                	and    %al,(%eax)
    1d51:	0b 65 00             	or     0x0(%ebp),%esp
    1d54:	00 00                	add    %al,(%eax)
    1d56:	b9 14 10 c0 c1       	mov    $0xc1c01014,%ecx
    1d5b:	14 10                	adc    $0x10,%al
    1d5d:	c0 01 0a             	rolb   $0xa,(%ecx)
    1d60:	1e                   	push   %ds
    1d61:	01 00                	add    %eax,(%eax)
    1d63:	00 0a                	add    %cl,(%edx)
    1d65:	7d 00                	jge    1d67 <memcpy-0xc00fe299>
    1d67:	00 00                	add    %al,(%eax)
    1d69:	20 0a                	and    %cl,(%edx)
    1d6b:	72 00                	jb     1d6d <memcpy-0xc00fe293>
    1d6d:	00 00                	add    %al,(%eax)
    1d6f:	21 00                	and    %eax,(%eax)
    1d71:	0b 65 00             	or     0x0(%ebp),%esp
    1d74:	00 00                	add    %al,(%eax)
    1d76:	c1 14 10 c0          	rcll   $0xc0,(%eax,%edx,1)
    1d7a:	c7                   	(bad)  
    1d7b:	14 10                	adc    $0x10,%al
    1d7d:	c0 01 0b             	rolb   $0xb,(%ecx)
    1d80:	3e 01 00             	add    %eax,%ds:(%eax)
    1d83:	00 0a                	add    %cl,(%edx)
    1d85:	7d 00                	jge    1d87 <memcpy-0xc00fe279>
    1d87:	00 00                	add    %al,(%eax)
    1d89:	04 0a                	add    $0xa,%al
    1d8b:	72 00                	jb     1d8d <memcpy-0xc00fe273>
    1d8d:	00 00                	add    %al,(%eax)
    1d8f:	21 00                	and    %eax,(%eax)
    1d91:	0b 65 00             	or     0x0(%ebp),%esp
    1d94:	00 00                	add    %al,(%eax)
    1d96:	c7                   	(bad)  
    1d97:	14 10                	adc    $0x10,%al
    1d99:	c0 cd 14             	ror    $0x14,%ch
    1d9c:	10 c0                	adc    %al,%al
    1d9e:	01 0c 5e             	add    %ecx,(%esi,%ebx,2)
    1da1:	01 00                	add    %eax,(%eax)
    1da3:	00 0a                	add    %cl,(%edx)
    1da5:	7d 00                	jge    1da7 <memcpy-0xc00fe259>
    1da7:	00 00                	add    %al,(%eax)
    1da9:	03 0a                	add    (%edx),%ecx
    1dab:	72 00                	jb     1dad <memcpy-0xc00fe253>
    1dad:	00 00                	add    %al,(%eax)
    1daf:	21 00                	and    %eax,(%eax)
    1db1:	0b 65 00             	or     0x0(%ebp),%esp
    1db4:	00 00                	add    %al,(%eax)
    1db6:	cd 14                	int    $0x14
    1db8:	10 c0                	adc    %al,%al
    1dba:	d5 14                	aad    $0x14
    1dbc:	10 c0                	adc    %al,%al
    1dbe:	01 0d 7e 01 00 00    	add    %ecx,0x17e
    1dc4:	0a 7d 00             	or     0x0(%ebp),%bh
    1dc7:	00 00                	add    %al,(%eax)
    1dc9:	11 0a                	adc    %ecx,(%edx)
    1dcb:	72 00                	jb     1dcd <memcpy-0xc00fe233>
    1dcd:	00 00                	add    %al,(%eax)
    1dcf:	a0 00 0b 65 00       	mov    0x650b00,%al
    1dd4:	00 00                	add    %al,(%eax)
    1dd6:	d5 14                	aad    $0x14
    1dd8:	10 c0                	adc    %al,%al
    1dda:	dd 14 10             	fstl   (%eax,%edx,1)
    1ddd:	c0 01 0e             	rolb   $0xe,(%ecx)
    1de0:	9e                   	sahf   
    1de1:	01 00                	add    %eax,(%eax)
    1de3:	00 0a                	add    %cl,(%edx)
    1de5:	7d 00                	jge    1de7 <memcpy-0xc00fe219>
    1de7:	00 00                	add    %al,(%eax)
    1de9:	28 0a                	sub    %cl,(%edx)
    1deb:	72 00                	jb     1ded <memcpy-0xc00fe213>
    1ded:	00 00                	add    %al,(%eax)
    1def:	a1 00 0b 65 00       	mov    0x650b00,%eax
    1df4:	00 00                	add    %al,(%eax)
    1df6:	dd 14 10             	fstl   (%eax,%edx,1)
    1df9:	c0 e3 14             	shl    $0x14,%bl
    1dfc:	10 c0                	adc    %al,%al
    1dfe:	01 0f                	add    %ecx,(%edi)
    1e00:	be 01 00 00 0a       	mov    $0xa000001,%esi
    1e05:	7d 00                	jge    1e07 <memcpy-0xc00fe1f9>
    1e07:	00 00                	add    %al,(%eax)
    1e09:	02 0a                	add    (%edx),%cl
    1e0b:	72 00                	jb     1e0d <memcpy-0xc00fe1f3>
    1e0d:	00 00                	add    %al,(%eax)
    1e0f:	a1 00 0b 65 00       	mov    0x650b00,%eax
    1e14:	00 00                	add    %al,(%eax)
    1e16:	e3 14                	jecxz  1e2c <memcpy-0xc00fe1d4>
    1e18:	10 c0                	adc    %al,%al
    1e1a:	e9 14 10 c0 01       	jmp    1c02e33 <memcpy-0xbe4fd1cd>
    1e1f:	10 de                	adc    %bl,%dh
    1e21:	01 00                	add    %eax,(%eax)
    1e23:	00 0a                	add    %cl,(%edx)
    1e25:	7d 00                	jge    1e27 <memcpy-0xc00fe1d9>
    1e27:	00 00                	add    %al,(%eax)
    1e29:	03 0a                	add    (%edx),%ecx
    1e2b:	72 00                	jb     1e2d <memcpy-0xc00fe1d3>
    1e2d:	00 00                	add    %al,(%eax)
    1e2f:	a1 00 0b 65 00       	mov    0x650b00,%eax
    1e34:	00 00                	add    %al,(%eax)
    1e36:	e9 14 10 c0 f1       	jmp    f1c02e4f <_end+0x317ba607>
    1e3b:	14 10                	adc    $0x10,%al
    1e3d:	c0 01 12             	rolb   $0x12,(%ecx)
    1e40:	fe 01                	incb   (%ecx)
    1e42:	00 00                	add    %al,(%eax)
    1e44:	0a 7d 00             	or     0x0(%ebp),%bh
    1e47:	00 00                	add    %al,(%eax)
    1e49:	68 0a 72 00 00       	push   $0x720a
    1e4e:	00 20                	add    %ah,(%eax)
    1e50:	00 0b                	add    %cl,(%ebx)
    1e52:	65 00 00             	add    %al,%gs:(%eax)
    1e55:	00 f1                	add    %dh,%cl
    1e57:	14 10                	adc    $0x10,%al
    1e59:	c0                   	(bad)  
    1e5a:	f7 14 10             	notl   (%eax,%edx,1)
    1e5d:	c0 01 13             	rolb   $0x13,(%ecx)
    1e60:	1e                   	push   %ds
    1e61:	02 00                	add    (%eax),%al
    1e63:	00 0a                	add    %cl,(%edx)
    1e65:	7d 00                	jge    1e67 <memcpy-0xc00fe199>
    1e67:	00 00                	add    %al,(%eax)
    1e69:	0a 0a                	or     (%edx),%cl
    1e6b:	72 00                	jb     1e6d <memcpy-0xc00fe193>
    1e6d:	00 00                	add    %al,(%eax)
    1e6f:	20 00                	and    %al,(%eax)
    1e71:	0b 65 00             	or     0x0(%ebp),%esp
    1e74:	00 00                	add    %al,(%eax)
    1e76:	f7 14 10             	notl   (%eax,%edx,1)
    1e79:	c0 ff 14             	sar    $0x14,%bh
    1e7c:	10 c0                	adc    %al,%al
    1e7e:	01 14 3e             	add    %edx,(%esi,%edi,1)
    1e81:	02 00                	add    (%eax),%al
    1e83:	00 0a                	add    %cl,(%edx)
    1e85:	7d 00                	jge    1e87 <memcpy-0xc00fe179>
    1e87:	00 00                	add    %al,(%eax)
    1e89:	68 0a 72 00 00       	push   $0x720a
    1e8e:	00 a0 00 0c 65 00    	add    %ah,0x650c00(%eax)
    1e94:	00 00                	add    %al,(%eax)
    1e96:	ff 14 10             	call   *(%eax,%edx,1)
    1e99:	c0 05 15 10 c0 01 15 	rolb   $0x15,0x1c01015
    1ea0:	0a 7d 00             	or     0x0(%ebp),%bh
    1ea3:	00 00                	add    %al,(%eax)
    1ea5:	0a 0a                	or     (%edx),%cl
    1ea7:	72 00                	jb     1ea9 <memcpy-0xc00fe157>
    1ea9:	00 00                	add    %al,(%eax)
    1eab:	a0 00 00 00 62       	mov    0x62000000,%al
    1eb0:	04 00                	add    $0x0,%al
    1eb2:	00 02                	add    %al,(%edx)
    1eb4:	00 10                	add    %dl,(%eax)
    1eb6:	0d 00 00 04 01       	or     $0x1040000,%eax
    1ebb:	8c 00                	mov    %es,(%eax)
    1ebd:	00 00                	add    %al,(%eax)
    1ebf:	01 ba 04 00 00 55    	add    %edi,0x55000004(%edx)
    1ec5:	00 00                	add    %al,(%eax)
    1ec7:	00 10                	add    %dl,(%eax)
    1ec9:	15 10 c0 e6 15       	adc    $0x15e6c010,%eax
    1ece:	10 c0                	adc    %al,%al
    1ed0:	f0 09 00             	lock or %eax,(%eax)
    1ed3:	00 02                	add    %al,(%edx)
    1ed5:	06                   	push   %es
    1ed6:	00 00                	add    %al,(%eax)
    1ed8:	00 03                	add    %al,(%ebx)
    1eda:	04 30                	add    $0x30,%al
    1edc:	00 00                	add    %al,(%eax)
    1ede:	00 03                	add    %al,(%ebx)
    1ee0:	04 07                	add    $0x7,%al
    1ee2:	9e                   	sahf   
    1ee3:	00 00                	add    %al,(%eax)
    1ee5:	00 02                	add    %al,(%edx)
    1ee7:	07                   	pop    %es
    1ee8:	00 00                	add    %al,(%eax)
    1eea:	00 03                	add    %al,(%ebx)
    1eec:	05 42 00 00 00       	add    $0x42,%eax
    1ef1:	04 04                	add    $0x4,%al
    1ef3:	05 69 6e 74 00       	add    $0x746e69,%eax
    1ef8:	03 02                	add    (%edx),%eax
    1efa:	07                   	pop    %es
    1efb:	98                   	cwtl   
    1efc:	00 00                	add    %al,(%eax)
    1efe:	00 03                	add    %al,(%ebx)
    1f00:	02 05 c0 00 00 00    	add    0xc0,%al
    1f06:	02 51 01             	add    0x1(%ecx),%dl
    1f09:	00 00                	add    %al,(%eax)
    1f0b:	03 08                	add    (%eax),%ecx
    1f0d:	62 00                	bound  %eax,(%eax)
    1f0f:	00 00                	add    %al,(%eax)
    1f11:	03 01                	add    (%ecx),%eax
    1f13:	08 47 00             	or     %al,0x0(%edi)
    1f16:	00 00                	add    %al,(%eax)
    1f18:	03 01                	add    (%ecx),%eax
    1f1a:	06                   	push   %es
    1f1b:	50                   	push   %eax
    1f1c:	00 00                	add    %al,(%eax)
    1f1e:	00 02                	add    %al,(%edx)
    1f20:	74 00                	je     1f22 <memcpy-0xc00fe0de>
    1f22:	00 00                	add    %al,(%eax)
    1f24:	03 0a                	add    (%edx),%ecx
    1f26:	62 00                	bound  %eax,(%eax)
    1f28:	00 00                	add    %al,(%eax)
    1f2a:	05 14 01 00 00       	add    $0x114,%eax
    1f2f:	4c                   	dec    %esp
    1f30:	04 8d                	add    $0x8d,%al
    1f32:	8c 01                	mov    %es,(%ecx)
    1f34:	00 00                	add    %al,(%eax)
    1f36:	06                   	push   %es
    1f37:	65 64 69 00 04 8e 25 	gs imul $0x258e04,%fs:%gs:(%eax),%eax
    1f3e:	00 
    1f3f:	00 00                	add    %al,(%eax)
    1f41:	02 23                	add    (%ebx),%ah
    1f43:	00 06                	add    %al,(%esi)
    1f45:	65                   	gs
    1f46:	73 69                	jae    1fb1 <memcpy-0xc00fe04f>
    1f48:	00 04 8e             	add    %al,(%esi,%ecx,4)
    1f4b:	25 00 00 00 02       	and    $0x2000000,%eax
    1f50:	23 04 06             	and    (%esi,%eax,1),%eax
    1f53:	65 62 70 00          	bound  %esi,%gs:0x0(%eax)
    1f57:	04 8e                	add    $0x8e,%al
    1f59:	25 00 00 00 02       	and    $0x2000000,%eax
    1f5e:	23 08                	and    (%eax),%ecx
    1f60:	07                   	pop    %es
    1f61:	af                   	scas   %es:(%edi),%eax
    1f62:	01 00                	add    %eax,(%eax)
    1f64:	00 04 8e             	add    %al,(%esi,%ecx,4)
    1f67:	25 00 00 00 02       	and    $0x2000000,%eax
    1f6c:	23 0c 06             	and    (%esi,%eax,1),%ecx
    1f6f:	65 62 78 00          	bound  %edi,%gs:0x0(%eax)
    1f73:	04 8f                	add    $0x8f,%al
    1f75:	25 00 00 00 02       	and    $0x2000000,%eax
    1f7a:	23 10                	and    (%eax),%edx
    1f7c:	06                   	push   %es
    1f7d:	65                   	gs
    1f7e:	64                   	fs
    1f7f:	78 00                	js     1f81 <memcpy-0xc00fe07f>
    1f81:	04 8f                	add    $0x8f,%al
    1f83:	25 00 00 00 02       	and    $0x2000000,%eax
    1f88:	23 14 06             	and    (%esi,%eax,1),%edx
    1f8b:	65 63 78 00          	arpl   %di,%gs:0x0(%eax)
    1f8f:	04 8f                	add    $0x8f,%al
    1f91:	25 00 00 00 02       	and    $0x2000000,%eax
    1f96:	23 18                	and    (%eax),%ebx
    1f98:	06                   	push   %es
    1f99:	65                   	gs
    1f9a:	61                   	popa   
    1f9b:	78 00                	js     1f9d <memcpy-0xc00fe063>
    1f9d:	04 8f                	add    $0x8f,%al
    1f9f:	25 00 00 00 02       	and    $0x2000000,%eax
    1fa4:	23 1c 06             	and    (%esi,%eax,1),%ebx
    1fa7:	67 73 00             	addr16 jae 1faa <memcpy-0xc00fe056>
    1faa:	04 90                	add    $0x90,%al
    1fac:	25 00 00 00 02       	and    $0x2000000,%eax
    1fb1:	23 20                	and    (%eax),%esp
    1fb3:	06                   	push   %es
    1fb4:	66                   	data16
    1fb5:	73 00                	jae    1fb7 <memcpy-0xc00fe049>
    1fb7:	04 90                	add    $0x90,%al
    1fb9:	25 00 00 00 02       	and    $0x2000000,%eax
    1fbe:	23 24 06             	and    (%esi,%eax,1),%esp
    1fc1:	65                   	gs
    1fc2:	73 00                	jae    1fc4 <memcpy-0xc00fe03c>
    1fc4:	04 90                	add    $0x90,%al
    1fc6:	25 00 00 00 02       	and    $0x2000000,%eax
    1fcb:	23 28                	and    (%eax),%ebp
    1fcd:	06                   	push   %es
    1fce:	64                   	fs
    1fcf:	73 00                	jae    1fd1 <memcpy-0xc00fe02f>
    1fd1:	04 90                	add    $0x90,%al
    1fd3:	25 00 00 00 02       	and    $0x2000000,%eax
    1fd8:	23 2c 06             	and    (%esi,%eax,1),%ebp
    1fdb:	69 72 71 00 04 91 42 	imul   $0x42910400,0x71(%edx),%esi
    1fe2:	00 00                	add    %al,(%eax)
    1fe4:	00 02                	add    %al,(%edx)
    1fe6:	23 30                	and    (%eax),%esi
    1fe8:	06                   	push   %es
    1fe9:	65                   	gs
    1fea:	72 72                	jb     205e <memcpy-0xc00fdfa2>
    1fec:	00 04 92             	add    %al,(%edx,%edx,4)
    1fef:	25 00 00 00 02       	and    $0x2000000,%eax
    1ff4:	23 34 06             	and    (%esi,%eax,1),%esi
    1ff7:	65 69 70 00 04 92 25 	imul   $0x259204,%gs:0x0(%eax),%esi
    1ffe:	00 
    1fff:	00 00                	add    %al,(%eax)
    2001:	02 23                	add    (%ebx),%ah
    2003:	38 06                	cmp    %al,(%esi)
    2005:	63 73 00             	arpl   %si,0x0(%ebx)
    2008:	04 92                	add    $0x92,%al
    200a:	25 00 00 00 02       	and    $0x2000000,%eax
    200f:	23 3c 07             	and    (%edi,%eax,1),%edi
    2012:	27                   	daa    
    2013:	01 00                	add    %eax,(%eax)
    2015:	00 04 92             	add    %al,(%edx,%edx,4)
    2018:	25 00 00 00 02       	and    $0x2000000,%eax
    201d:	23 40 06             	and    0x6(%eax),%eax
    2020:	65                   	gs
    2021:	73 70                	jae    2093 <memcpy-0xc00fdf6d>
    2023:	00 04 93             	add    %al,(%ebx,%edx,4)
    2026:	25 00 00 00 02       	and    $0x2000000,%eax
    202b:	23 44 06 73          	and    0x73(%esi,%eax,1),%eax
    202f:	73 00                	jae    2031 <memcpy-0xc00fdfcf>
    2031:	04 93                	add    $0x93,%al
    2033:	25 00 00 00 02       	and    $0x2000000,%eax
    2038:	23 48 00             	and    0x0(%eax),%ecx
    203b:	02 14 01             	add    (%ecx,%eax,1),%dl
    203e:	00 00                	add    %al,(%eax)
    2040:	04 95                	add    $0x95,%al
    2042:	7b 00                	jnp    2044 <memcpy-0xc00fdfbc>
    2044:	00 00                	add    %al,(%eax)
    2046:	05 c6 01 00 00       	add    $0x1c6,%eax
    204b:	08 02                	or     %al,(%edx)
    204d:	06                   	push   %es
    204e:	c0 01 00             	rolb   $0x0,(%ecx)
    2051:	00 07                	add    %al,(%edi)
    2053:	cf                   	iret   
    2054:	01 00                	add    %eax,(%eax)
    2056:	00 02                	add    %al,(%edx)
    2058:	07                   	pop    %es
    2059:	c0 01 00             	rolb   $0x0,(%ecx)
    205c:	00 02                	add    %al,(%edx)
    205e:	23 00                	and    (%eax),%eax
    2060:	07                   	pop    %es
    2061:	63 02                	arpl   %ax,(%edx)
    2063:	00 00                	add    %al,(%eax)
    2065:	02 07                	add    (%edi),%al
    2067:	c0 01 00             	rolb   $0x0,(%ecx)
    206a:	00 02                	add    %al,(%edx)
    206c:	23 04 00             	and    (%eax,%eax,1),%eax
    206f:	08 04 97             	or     %al,(%edi,%edx,4)
    2072:	01 00                	add    %eax,(%eax)
    2074:	00 02                	add    %al,(%edx)
    2076:	c6 01 00             	movb   $0x0,(%ecx)
    2079:	00 02                	add    %al,(%edx)
    207b:	09 97 01 00 00 09    	or     %edx,0x9000001(%edi)
    2081:	50                   	push   %eax
    2082:	43                   	inc    %ebx
    2083:	42                   	inc    %edx
    2084:	00 60 1f             	add    %ah,0x1f(%eax)
    2087:	05 0a 40 02 00       	add    $0x2400a,%eax
    208c:	00 06                	add    %al,(%esi)
    208e:	74 66                	je     20f6 <memcpy-0xc00fdf0a>
    2090:	00 05 0b 40 02 00    	add    %al,0x2400b
    2096:	00 02                	add    %al,(%edx)
    2098:	23 00                	and    (%eax),%eax
    209a:	07                   	pop    %es
    209b:	47                   	inc    %edi
    209c:	01 00                	add    %eax,(%eax)
    209e:	00 05 0c c6 01 00    	add    %al,0x1c60c
    20a4:	00 02                	add    %al,(%edx)
    20a6:	23 04 07             	and    (%edi,%eax,1),%eax
    20a9:	b4 01                	mov    $0x1,%ah
    20ab:	00 00                	add    %al,(%eax)
    20ad:	05 0c c6 01 00       	add    $0x1c60c,%eax
    20b2:	00 02                	add    %al,(%edx)
    20b4:	23 0c 07             	and    (%edi,%eax,1),%ecx
    20b7:	59                   	pop    %ecx
    20b8:	01 00                	add    %eax,(%eax)
    20ba:	00 05 0d 37 00 00    	add    %al,0x370d
    20c0:	00 02                	add    %al,(%edx)
    20c2:	23 14 06             	and    (%esi,%eax,1),%edx
    20c5:	70 69                	jo     2130 <memcpy-0xc00fded0>
    20c7:	64 00 05 0d 37 00 00 	add    %al,%fs:0x370d
    20ce:	00 02                	add    %al,(%edx)
    20d0:	23 18                	and    (%eax),%ebx
    20d2:	07                   	pop    %es
    20d3:	d4 01                	aam    $0x1
    20d5:	00 00                	add    %al,(%eax)
    20d7:	05 0e 70 00 00       	add    $0x700e,%eax
    20dc:	00 02                	add    %al,(%edx)
    20de:	23 1c 07             	and    (%edi,%eax,1),%ebx
    20e1:	94                   	xchg   %eax,%esp
    20e2:	01 00                	add    %eax,(%eax)
    20e4:	00 05 0f 46 02 00    	add    %al,0x2460f
    20ea:	00 02                	add    %al,(%edx)
    20ec:	23 1d 00 08 04 8c    	and    0x8c040800,%ebx
    20f2:	01 00                	add    %eax,(%eax)
    20f4:	00 0a                	add    %cl,(%edx)
    20f6:	57                   	push   %edi
    20f7:	00 00                	add    %al,(%eax)
    20f9:	00 57 02             	add    %dl,0x2(%edi)
    20fc:	00 00                	add    %al,(%eax)
    20fe:	0b 30                	or     (%eax),%esi
    2100:	00 00                	add    %al,(%eax)
    2102:	00 3f                	add    %bh,(%edi)
    2104:	1f                   	pop    %ds
    2105:	00 0c 50             	add    %cl,(%eax,%edx,2)
    2108:	43                   	inc    %ebx
    2109:	42                   	inc    %edx
    210a:	00 05 10 d1 01 00    	add    %al,0x1d110
    2110:	00 0d 3e 01 00 00    	add    %cl,0x13e
    2116:	02 0f                	add    (%edi),%cl
    2118:	01 03                	add    %eax,(%ebx)
    211a:	91                   	xchg   %eax,%ecx
    211b:	02 00                	add    (%eax),%al
    211d:	00 0e                	add    %cl,(%esi)
    211f:	cf                   	iret   
    2120:	01 00                	add    %eax,(%eax)
    2122:	00 02                	add    %al,(%edx)
    2124:	0f 91 02             	setno  (%edx)
    2127:	00 00                	add    %al,(%eax)
    2129:	0e                   	push   %cs
    212a:	63 02                	arpl   %ax,(%edx)
    212c:	00 00                	add    %al,(%eax)
    212e:	02 0f                	add    (%edi),%cl
    2130:	91                   	xchg   %eax,%ecx
    2131:	02 00                	add    (%eax),%al
    2133:	00 0e                	add    %cl,(%esi)
    2135:	9b                   	fwait
    2136:	01 00                	add    %eax,(%eax)
    2138:	00 02                	add    %al,(%edx)
    213a:	0f 91 02             	setno  (%edx)
    213d:	00 00                	add    %al,(%eax)
    213f:	00 08                	add    %cl,(%eax)
    2141:	04 c6                	add    $0xc6,%al
    2143:	01 00                	add    %eax,(%eax)
    2145:	00 0d 7d 01 00 00    	add    %cl,0x17d
    214b:	02 2b                	add    (%ebx),%ch
    214d:	01 03                	add    %eax,(%ebx)
    214f:	b0 02                	mov    $0x2,%al
    2151:	00 00                	add    %al,(%eax)
    2153:	0e                   	push   %cs
    2154:	4c                   	dec    %esp
    2155:	01 00                	add    %eax,(%eax)
    2157:	00 02                	add    %al,(%edx)
    2159:	2b 91 02 00 00 00    	sub    0x2(%ecx),%edx
    215f:	0f 64 01             	pcmpgtb (%ecx),%mm0
    2162:	00 00                	add    %al,(%eax)
    2164:	02 30                	add    (%eax),%dh
    2166:	01 70 00             	add    %esi,0x0(%eax)
    2169:	00 00                	add    %al,(%eax)
    216b:	03 cd                	add    %ebp,%ecx
    216d:	02 00                	add    (%eax),%al
    216f:	00 0e                	add    %cl,(%esi)
    2171:	4c                   	dec    %esp
    2172:	01 00                	add    %eax,(%eax)
    2174:	00 02                	add    %al,(%edx)
    2176:	30 91 02 00 00 00    	xor    %dl,0x2(%ecx)
    217c:	0d 1e 01 00 00       	or     $0x11e,%eax
    2181:	02 22                	add    (%edx),%ah
    2183:	01 03                	add    %eax,(%ebx)
    2185:	fc                   	cld    
    2186:	02 00                	add    (%eax),%al
    2188:	00 0e                	add    %cl,(%esi)
    218a:	9b                   	fwait
    218b:	01 00                	add    %eax,(%eax)
    218d:	00 02                	add    %al,(%edx)
    218f:	22 91 02 00 00 10    	and    0x10000002(%ecx),%dl
    2195:	cf                   	iret   
    2196:	01 00                	add    %eax,(%eax)
    2198:	00 02                	add    %al,(%edx)
    219a:	24 91                	and    $0x91,%al
    219c:	02 00                	add    (%eax),%al
    219e:	00 10                	add    %dl,(%eax)
    21a0:	63 02                	arpl   %ax,(%edx)
    21a2:	00 00                	add    %al,(%eax)
    21a4:	02 25 91 02 00 00    	add    0x291,%ah
    21aa:	00 0d d1 04 00 00    	add    %cl,0x4d1
    21b0:	02 1d 01 03 20 03    	add    0x3200301,%bl
    21b6:	00 00                	add    %al,(%eax)
    21b8:	0e                   	push   %cs
    21b9:	4c                   	dec    %esp
    21ba:	01 00                	add    %eax,(%eax)
    21bc:	00 02                	add    %al,(%edx)
    21be:	1d 91 02 00 00       	sbb    $0x291,%eax
    21c3:	0e                   	push   %cs
    21c4:	9b                   	fwait
    21c5:	01 00                	add    %eax,(%eax)
    21c7:	00 02                	add    %al,(%edx)
    21c9:	1d 91 02 00 00       	sbb    $0x291,%eax
    21ce:	00 11                	add    %dl,(%ecx)
    21d0:	01 e5                	add    %esp,%ebp
    21d2:	04 00                	add    $0x0,%al
    21d4:	00 01                	add    %al,(%ecx)
    21d6:	18 01                	sbb    %al,(%ecx)
    21d8:	10 15 10 c0 29 15    	adc    %dl,0x1529c010
    21de:	10 c0                	adc    %al,%al
    21e0:	9e                   	sahf   
    21e1:	11 00                	adc    %eax,(%eax)
    21e3:	00 56 03             	add    %dl,0x3(%esi)
    21e6:	00 00                	add    %al,(%eax)
    21e8:	12 97 02 00 00 13    	adc    0x13000002(%edi),%dl
    21ee:	15 10 c0 27 15       	adc    $0x1527c010,%eax
    21f3:	10 c0                	adc    %al,%al
    21f5:	01 19                	add    %ebx,(%ecx)
    21f7:	13 a4 02 00 00 06 03 	adc    0x3060000(%edx,%eax,1),%esp
    21fe:	40                   	inc    %eax
    21ff:	88 44 c0 9f          	mov    %al,-0x61(%eax,%eax,8)
    2203:	00 00                	add    %al,(%eax)
    2205:	11 01                	adc    %eax,(%ecx)
    2207:	b1 04                	mov    $0x4,%cl
    2209:	00 00                	add    %al,(%eax)
    220b:	01 1d 01 30 15 10    	add    %ebx,0x10153001
    2211:	c0 ae 15 10 c0 d6 11 	shrb   $0x11,-0x293fefeb(%esi)
    2218:	00 00                	add    %al,(%eax)
    221a:	01 04 00             	add    %eax,(%eax,%eax,1)
    221d:	00 14 fd 04 00 00 01 	add    %dl,0x1000004(,%edi,8)
    2224:	1f                   	pop    %ds
    2225:	91                   	xchg   %eax,%ecx
    2226:	02 00                	add    (%eax),%al
    2228:	00 1a                	add    %bl,(%edx)
    222a:	12 00                	adc    (%eax),%al
    222c:	00 15 cd 02 00 00    	add    %dl,0x2cd
    2232:	49                   	dec    %ecx
    2233:	15 10 c0 a8 01       	adc    $0x1a8c010,%eax
    2238:	00 00                	add    %al,(%eax)
    223a:	01 20                	add    %esp,(%eax)
    223c:	b3 03                	mov    $0x3,%bl
    223e:	00 00                	add    %al,(%eax)
    2240:	16                   	push   %ss
    2241:	da 02                	fiaddl (%edx)
    2243:	00 00                	add    %al,(%eax)
    2245:	1a 12                	sbb    (%edx),%dl
    2247:	00 00                	add    %al,(%eax)
    2249:	17                   	pop    %ss
    224a:	c0 01 00             	rolb   $0x0,(%ecx)
    224d:	00 18                	add    %bl,(%eax)
    224f:	e5 02                	in     $0x2,%eax
    2251:	00 00                	add    %al,(%eax)
    2253:	56                   	push   %esi
    2254:	12 00                	adc    (%eax),%al
    2256:	00 18                	add    %bl,(%eax)
    2258:	f0 02 00             	lock add (%eax),%al
    225b:	00 7a 12             	add    %bh,0x12(%edx)
    225e:	00 00                	add    %al,(%eax)
    2260:	00 00                	add    %al,(%eax)
    2262:	12 fc                	adc    %ah,%bh
    2264:	02 00                	add    (%eax),%al
    2266:	00 5f 15             	add    %bl,0x15(%edi)
    2269:	10 c0                	adc    %al,%al
    226b:	79 15                	jns    2282 <memcpy-0xc00fdd7e>
    226d:	10 c0                	adc    %al,%al
    226f:	01 21                	add    %esp,(%ecx)
    2271:	16                   	push   %ss
    2272:	14 03                	adc    $0x3,%al
    2274:	00 00                	add    %al,(%eax)
    2276:	a0 12 00 00 16       	mov    0x16000012,%al
    227b:	09 03                	or     %eax,(%ebx)
    227d:	00 00                	add    %al,(%eax)
    227f:	c2 12 00             	ret    $0x12
    2282:	00 12                	add    %dl,(%edx)
    2284:	62 02                	bound  %eax,(%edx)
    2286:	00 00                	add    %al,(%eax)
    2288:	64                   	fs
    2289:	15 10 c0 79 15       	adc    $0x1579c010,%eax
    228e:	10 c0                	adc    %al,%al
    2290:	02 1e                	add    (%esi),%bl
    2292:	16                   	push   %ss
    2293:	85 02                	test   %eax,(%edx)
    2295:	00 00                	add    %al,(%eax)
    2297:	da 12                	ficoml (%edx)
    2299:	00 00                	add    %al,(%eax)
    229b:	16                   	push   %ss
    229c:	7a 02                	jp     22a0 <memcpy-0xc00fdd60>
    229e:	00 00                	add    %al,(%eax)
    22a0:	fc                   	cld    
    22a1:	12 00                	adc    (%eax),%al
    22a3:	00 16                	add    %dl,(%esi)
    22a5:	6f                   	outsl  %ds:(%esi),(%dx)
    22a6:	02 00                	add    (%eax),%al
    22a8:	00 13                	add    %dl,(%ebx)
    22aa:	13 00                	adc    (%eax),%eax
    22ac:	00 00                	add    %al,(%eax)
    22ae:	00 00                	add    %al,(%eax)
    22b0:	19 01                	sbb    %eax,(%ecx)
    22b2:	f0 04 00             	lock add $0x0,%al
    22b5:	00 01                	add    %al,(%ecx)
    22b7:	25 01 3b 04 00       	and    $0x43b01,%eax
    22bc:	00 b0 15 10 c0 e6    	add    %dh,-0x193fefeb(%eax)
    22c2:	15 10 c0 2b 13       	adc    $0x132bc010,%eax
    22c7:	00 00                	add    %al,(%eax)
    22c9:	3b 04 00             	cmp    (%eax,%eax,1),%eax
    22cc:	00 12                	add    %dl,(%edx)
    22ce:	b0 02                	mov    $0x2,%al
    22d0:	00 00                	add    %al,(%eax)
    22d2:	b6 15                	mov    $0x15,%dh
    22d4:	10 c0                	adc    %al,%al
    22d6:	bb 15 10 c0 01       	mov    $0x1c01015,%ebx
    22db:	26                   	es
    22dc:	13 c1                	adc    %ecx,%eax
    22de:	02 00                	add    (%eax),%al
    22e0:	00 06                	add    %al,(%esi)
    22e2:	03 40 88             	add    -0x78(%eax),%eax
    22e5:	44                   	inc    %esp
    22e6:	c0 9f 00 00 08 04 57 	rcrb   $0x57,0x4080000(%edi)
    22ed:	02 00                	add    (%eax),%al
    22ef:	00 1a                	add    %bl,(%edx)
    22f1:	ba 01 00 00 01       	mov    $0x1000001,%edx
    22f6:	14 3b                	adc    $0x3b,%al
    22f8:	04 00                	add    $0x0,%al
    22fa:	00 01                	add    %al,(%ecx)
    22fc:	05 03 0c 31 10       	add    $0x10310c03,%eax
    2301:	c0 1a e0             	rcrb   $0xe0,(%edx)
    2304:	04 00                	add    $0x0,%al
    2306:	00 01                	add    %al,(%ecx)
    2308:	15 c6 01 00 00       	adc    $0x1c6,%eax
    230d:	01 05 03 40 88 44    	add    %eax,0x44884003
    2313:	c0 00 27             	rolb   $0x27,(%eax)
    2316:	04 00                	add    $0x0,%al
    2318:	00 02                	add    %al,(%edx)
    231a:	00 7b 0e             	add    %bh,0xe(%ebx)
    231d:	00 00                	add    %al,(%eax)
    231f:	04 01                	add    $0x1,%al
    2321:	8c 00                	mov    %es,(%eax)
    2323:	00 00                	add    %al,(%eax)
    2325:	01 08                	add    %ecx,(%eax)
    2327:	05 00 00 55 00       	add    $0x550000,%eax
    232c:	00 00                	add    %al,(%eax)
    232e:	f0 15 10 c0 76 17    	lock adc $0x1776c010,%eax
    2334:	10 c0                	adc    %al,%al
    2336:	cb                   	lret   
    2337:	0a 00                	or     (%eax),%al
    2339:	00 02                	add    %al,(%edx)
    233b:	06                   	push   %es
    233c:	00 00                	add    %al,(%eax)
    233e:	00 03                	add    %al,(%ebx)
    2340:	04 30                	add    $0x30,%al
    2342:	00 00                	add    %al,(%eax)
    2344:	00 03                	add    %al,(%ebx)
    2346:	04 07                	add    $0x7,%al
    2348:	9e                   	sahf   
    2349:	00 00                	add    %al,(%eax)
    234b:	00 02                	add    %al,(%edx)
    234d:	07                   	pop    %es
    234e:	00 00                	add    %al,(%eax)
    2350:	00 03                	add    %al,(%ebx)
    2352:	05 42 00 00 00       	add    $0x42,%eax
    2357:	04 04                	add    $0x4,%al
    2359:	05 69 6e 74 00       	add    $0x746e69,%eax
    235e:	03 02                	add    (%edx),%eax
    2360:	07                   	pop    %es
    2361:	98                   	cwtl   
    2362:	00 00                	add    %al,(%eax)
    2364:	00 03                	add    %al,(%ebx)
    2366:	02 05 c0 00 00 00    	add    0xc0,%al
    236c:	02 51 01             	add    0x1(%ecx),%dl
    236f:	00 00                	add    %al,(%eax)
    2371:	03 08                	add    (%eax),%ecx
    2373:	62 00                	bound  %eax,(%eax)
    2375:	00 00                	add    %al,(%eax)
    2377:	03 01                	add    (%ecx),%eax
    2379:	08 47 00             	or     %al,0x0(%edi)
    237c:	00 00                	add    %al,(%eax)
    237e:	03 01                	add    (%ecx),%eax
    2380:	06                   	push   %es
    2381:	50                   	push   %eax
    2382:	00 00                	add    %al,(%eax)
    2384:	00 02                	add    %al,(%edx)
    2386:	74 00                	je     2388 <memcpy-0xc00fdc78>
    2388:	00 00                	add    %al,(%eax)
    238a:	03 0a                	add    (%edx),%ecx
    238c:	62 00                	bound  %eax,(%eax)
    238e:	00 00                	add    %al,(%eax)
    2390:	05 14 01 00 00       	add    $0x114,%eax
    2395:	4c                   	dec    %esp
    2396:	04 8d                	add    $0x8d,%al
    2398:	8c 01                	mov    %es,(%ecx)
    239a:	00 00                	add    %al,(%eax)
    239c:	06                   	push   %es
    239d:	65 64 69 00 04 8e 25 	gs imul $0x258e04,%fs:%gs:(%eax),%eax
    23a4:	00 
    23a5:	00 00                	add    %al,(%eax)
    23a7:	02 23                	add    (%ebx),%ah
    23a9:	00 06                	add    %al,(%esi)
    23ab:	65                   	gs
    23ac:	73 69                	jae    2417 <memcpy-0xc00fdbe9>
    23ae:	00 04 8e             	add    %al,(%esi,%ecx,4)
    23b1:	25 00 00 00 02       	and    $0x2000000,%eax
    23b6:	23 04 06             	and    (%esi,%eax,1),%eax
    23b9:	65 62 70 00          	bound  %esi,%gs:0x0(%eax)
    23bd:	04 8e                	add    $0x8e,%al
    23bf:	25 00 00 00 02       	and    $0x2000000,%eax
    23c4:	23 08                	and    (%eax),%ecx
    23c6:	07                   	pop    %es
    23c7:	af                   	scas   %es:(%edi),%eax
    23c8:	01 00                	add    %eax,(%eax)
    23ca:	00 04 8e             	add    %al,(%esi,%ecx,4)
    23cd:	25 00 00 00 02       	and    $0x2000000,%eax
    23d2:	23 0c 06             	and    (%esi,%eax,1),%ecx
    23d5:	65 62 78 00          	bound  %edi,%gs:0x0(%eax)
    23d9:	04 8f                	add    $0x8f,%al
    23db:	25 00 00 00 02       	and    $0x2000000,%eax
    23e0:	23 10                	and    (%eax),%edx
    23e2:	06                   	push   %es
    23e3:	65                   	gs
    23e4:	64                   	fs
    23e5:	78 00                	js     23e7 <memcpy-0xc00fdc19>
    23e7:	04 8f                	add    $0x8f,%al
    23e9:	25 00 00 00 02       	and    $0x2000000,%eax
    23ee:	23 14 06             	and    (%esi,%eax,1),%edx
    23f1:	65 63 78 00          	arpl   %di,%gs:0x0(%eax)
    23f5:	04 8f                	add    $0x8f,%al
    23f7:	25 00 00 00 02       	and    $0x2000000,%eax
    23fc:	23 18                	and    (%eax),%ebx
    23fe:	06                   	push   %es
    23ff:	65                   	gs
    2400:	61                   	popa   
    2401:	78 00                	js     2403 <memcpy-0xc00fdbfd>
    2403:	04 8f                	add    $0x8f,%al
    2405:	25 00 00 00 02       	and    $0x2000000,%eax
    240a:	23 1c 06             	and    (%esi,%eax,1),%ebx
    240d:	67 73 00             	addr16 jae 2410 <memcpy-0xc00fdbf0>
    2410:	04 90                	add    $0x90,%al
    2412:	25 00 00 00 02       	and    $0x2000000,%eax
    2417:	23 20                	and    (%eax),%esp
    2419:	06                   	push   %es
    241a:	66                   	data16
    241b:	73 00                	jae    241d <memcpy-0xc00fdbe3>
    241d:	04 90                	add    $0x90,%al
    241f:	25 00 00 00 02       	and    $0x2000000,%eax
    2424:	23 24 06             	and    (%esi,%eax,1),%esp
    2427:	65                   	gs
    2428:	73 00                	jae    242a <memcpy-0xc00fdbd6>
    242a:	04 90                	add    $0x90,%al
    242c:	25 00 00 00 02       	and    $0x2000000,%eax
    2431:	23 28                	and    (%eax),%ebp
    2433:	06                   	push   %es
    2434:	64                   	fs
    2435:	73 00                	jae    2437 <memcpy-0xc00fdbc9>
    2437:	04 90                	add    $0x90,%al
    2439:	25 00 00 00 02       	and    $0x2000000,%eax
    243e:	23 2c 06             	and    (%esi,%eax,1),%ebp
    2441:	69 72 71 00 04 91 42 	imul   $0x42910400,0x71(%edx),%esi
    2448:	00 00                	add    %al,(%eax)
    244a:	00 02                	add    %al,(%edx)
    244c:	23 30                	and    (%eax),%esi
    244e:	06                   	push   %es
    244f:	65                   	gs
    2450:	72 72                	jb     24c4 <memcpy-0xc00fdb3c>
    2452:	00 04 92             	add    %al,(%edx,%edx,4)
    2455:	25 00 00 00 02       	and    $0x2000000,%eax
    245a:	23 34 06             	and    (%esi,%eax,1),%esi
    245d:	65 69 70 00 04 92 25 	imul   $0x259204,%gs:0x0(%eax),%esi
    2464:	00 
    2465:	00 00                	add    %al,(%eax)
    2467:	02 23                	add    (%ebx),%ah
    2469:	38 06                	cmp    %al,(%esi)
    246b:	63 73 00             	arpl   %si,0x0(%ebx)
    246e:	04 92                	add    $0x92,%al
    2470:	25 00 00 00 02       	and    $0x2000000,%eax
    2475:	23 3c 07             	and    (%edi,%eax,1),%edi
    2478:	27                   	daa    
    2479:	01 00                	add    %eax,(%eax)
    247b:	00 04 92             	add    %al,(%edx,%edx,4)
    247e:	25 00 00 00 02       	and    $0x2000000,%eax
    2483:	23 40 06             	and    0x6(%eax),%eax
    2486:	65                   	gs
    2487:	73 70                	jae    24f9 <memcpy-0xc00fdb07>
    2489:	00 04 93             	add    %al,(%ebx,%edx,4)
    248c:	25 00 00 00 02       	and    $0x2000000,%eax
    2491:	23 44 06 73          	and    0x73(%esi,%eax,1),%eax
    2495:	73 00                	jae    2497 <memcpy-0xc00fdb69>
    2497:	04 93                	add    $0x93,%al
    2499:	25 00 00 00 02       	and    $0x2000000,%eax
    249e:	23 48 00             	and    0x0(%eax),%ecx
    24a1:	02 14 01             	add    (%ecx,%eax,1),%dl
    24a4:	00 00                	add    %al,(%eax)
    24a6:	04 95                	add    $0x95,%al
    24a8:	7b 00                	jnp    24aa <memcpy-0xc00fdb56>
    24aa:	00 00                	add    %al,(%eax)
    24ac:	05 c6 01 00 00       	add    $0x1c6,%eax
    24b1:	08 02                	or     %al,(%edx)
    24b3:	06                   	push   %es
    24b4:	c0 01 00             	rolb   $0x0,(%ecx)
    24b7:	00 07                	add    %al,(%edi)
    24b9:	cf                   	iret   
    24ba:	01 00                	add    %eax,(%eax)
    24bc:	00 02                	add    %al,(%edx)
    24be:	07                   	pop    %es
    24bf:	c0 01 00             	rolb   $0x0,(%ecx)
    24c2:	00 02                	add    %al,(%edx)
    24c4:	23 00                	and    (%eax),%eax
    24c6:	07                   	pop    %es
    24c7:	63 02                	arpl   %ax,(%edx)
    24c9:	00 00                	add    %al,(%eax)
    24cb:	02 07                	add    (%edi),%al
    24cd:	c0 01 00             	rolb   $0x0,(%ecx)
    24d0:	00 02                	add    %al,(%edx)
    24d2:	23 04 00             	and    (%eax,%eax,1),%eax
    24d5:	08 04 97             	or     %al,(%edi,%edx,4)
    24d8:	01 00                	add    %eax,(%eax)
    24da:	00 02                	add    %al,(%edx)
    24dc:	c6 01 00             	movb   $0x0,(%ecx)
    24df:	00 02                	add    %al,(%edx)
    24e1:	09 97 01 00 00 09    	or     %edx,0x9000001(%edi)
    24e7:	50                   	push   %eax
    24e8:	43                   	inc    %ebx
    24e9:	42                   	inc    %edx
    24ea:	00 60 1f             	add    %ah,0x1f(%eax)
    24ed:	05 0a 40 02 00       	add    $0x2400a,%eax
    24f2:	00 06                	add    %al,(%esi)
    24f4:	74 66                	je     255c <memcpy-0xc00fdaa4>
    24f6:	00 05 0b 40 02 00    	add    %al,0x2400b
    24fc:	00 02                	add    %al,(%edx)
    24fe:	23 00                	and    (%eax),%eax
    2500:	07                   	pop    %es
    2501:	47                   	inc    %edi
    2502:	01 00                	add    %eax,(%eax)
    2504:	00 05 0c c6 01 00    	add    %al,0x1c60c
    250a:	00 02                	add    %al,(%edx)
    250c:	23 04 07             	and    (%edi,%eax,1),%eax
    250f:	b4 01                	mov    $0x1,%ah
    2511:	00 00                	add    %al,(%eax)
    2513:	05 0c c6 01 00       	add    $0x1c60c,%eax
    2518:	00 02                	add    %al,(%edx)
    251a:	23 0c 07             	and    (%edi,%eax,1),%ecx
    251d:	59                   	pop    %ecx
    251e:	01 00                	add    %eax,(%eax)
    2520:	00 05 0d 37 00 00    	add    %al,0x370d
    2526:	00 02                	add    %al,(%edx)
    2528:	23 14 06             	and    (%esi,%eax,1),%edx
    252b:	70 69                	jo     2596 <memcpy-0xc00fda6a>
    252d:	64 00 05 0d 37 00 00 	add    %al,%fs:0x370d
    2534:	00 02                	add    %al,(%edx)
    2536:	23 18                	and    (%eax),%ebx
    2538:	07                   	pop    %es
    2539:	d4 01                	aam    $0x1
    253b:	00 00                	add    %al,(%eax)
    253d:	05 0e 70 00 00       	add    $0x700e,%eax
    2542:	00 02                	add    %al,(%edx)
    2544:	23 1c 07             	and    (%edi,%eax,1),%ebx
    2547:	94                   	xchg   %eax,%esp
    2548:	01 00                	add    %eax,(%eax)
    254a:	00 05 0f 46 02 00    	add    %al,0x2460f
    2550:	00 02                	add    %al,(%edx)
    2552:	23 1d 00 08 04 8c    	and    0x8c040800,%ebx
    2558:	01 00                	add    %eax,(%eax)
    255a:	00 0a                	add    %cl,(%edx)
    255c:	57                   	push   %edi
    255d:	00 00                	add    %al,(%eax)
    255f:	00 57 02             	add    %dl,0x2(%edi)
    2562:	00 00                	add    %al,(%eax)
    2564:	0b 30                	or     (%eax),%esi
    2566:	00 00                	add    %al,(%eax)
    2568:	00 3f                	add    %bh,(%edi)
    256a:	1f                   	pop    %ds
    256b:	00 0c 50             	add    %cl,(%eax,%edx,2)
    256e:	43                   	inc    %ebx
    256f:	42                   	inc    %edx
    2570:	00 05 10 d1 01 00    	add    %al,0x1d110
    2576:	00 0d 3e 01 00 00    	add    %cl,0x13e
    257c:	02 0f                	add    (%edi),%cl
    257e:	01 03                	add    %eax,(%ebx)
    2580:	91                   	xchg   %eax,%ecx
    2581:	02 00                	add    (%eax),%al
    2583:	00 0e                	add    %cl,(%esi)
    2585:	cf                   	iret   
    2586:	01 00                	add    %eax,(%eax)
    2588:	00 02                	add    %al,(%edx)
    258a:	0f 91 02             	setno  (%edx)
    258d:	00 00                	add    %al,(%eax)
    258f:	0e                   	push   %cs
    2590:	63 02                	arpl   %ax,(%edx)
    2592:	00 00                	add    %al,(%eax)
    2594:	02 0f                	add    (%edi),%cl
    2596:	91                   	xchg   %eax,%ecx
    2597:	02 00                	add    (%eax),%al
    2599:	00 0e                	add    %cl,(%esi)
    259b:	9b                   	fwait
    259c:	01 00                	add    %eax,(%eax)
    259e:	00 02                	add    %al,(%edx)
    25a0:	0f 91 02             	setno  (%edx)
    25a3:	00 00                	add    %al,(%eax)
    25a5:	00 08                	add    %cl,(%eax)
    25a7:	04 c6                	add    $0xc6,%al
    25a9:	01 00                	add    %eax,(%eax)
    25ab:	00 0d d1 04 00 00    	add    %cl,0x4d1
    25b1:	02 1d 01 03 bb 02    	add    0x2bb0301,%bl
    25b7:	00 00                	add    %al,(%eax)
    25b9:	0e                   	push   %cs
    25ba:	4c                   	dec    %esp
    25bb:	01 00                	add    %eax,(%eax)
    25bd:	00 02                	add    %al,(%edx)
    25bf:	1d 91 02 00 00       	sbb    $0x291,%eax
    25c4:	0e                   	push   %cs
    25c5:	9b                   	fwait
    25c6:	01 00                	add    %eax,(%eax)
    25c8:	00 02                	add    %al,(%edx)
    25ca:	1d 91 02 00 00       	sbb    $0x291,%eax
    25cf:	00 0d 1e 01 00 00    	add    %cl,0x11e
    25d5:	02 22                	add    (%edx),%ah
    25d7:	01 03                	add    %eax,(%ebx)
    25d9:	ea 02 00 00 0e 9b 01 	ljmp   $0x19b,$0xe000002
    25e0:	00 00                	add    %al,(%eax)
    25e2:	02 22                	add    (%edx),%ah
    25e4:	91                   	xchg   %eax,%ecx
    25e5:	02 00                	add    (%eax),%al
    25e7:	00 0f                	add    %cl,(%edi)
    25e9:	cf                   	iret   
    25ea:	01 00                	add    %eax,(%eax)
    25ec:	00 02                	add    %al,(%edx)
    25ee:	24 91                	and    $0x91,%al
    25f0:	02 00                	add    (%eax),%al
    25f2:	00 0f                	add    %cl,(%edi)
    25f4:	63 02                	arpl   %ax,(%edx)
    25f6:	00 00                	add    %al,(%eax)
    25f8:	02 25 91 02 00 00    	add    0x291,%ah
    25fe:	00 10                	add    %dl,(%eax)
    2600:	01 30                	add    %esi,(%eax)
    2602:	05 00 00 01 18       	add    $0x18010000,%eax
    2607:	01 32                	add    %esi,(%edx)
    2609:	03 00                	add    (%eax),%eax
    260b:	00 f0                	add    %dh,%al
    260d:	15 10 c0 c7 16       	adc    $0x16c7c010,%eax
    2612:	10 c0                	adc    %al,%al
    2614:	7b 13                	jnp    2629 <memcpy-0xc00fd9d7>
    2616:	00 00                	add    %al,(%eax)
    2618:	32 03                	xor    (%ebx),%al
    261a:	00 00                	add    %al,(%eax)
    261c:	11 f4                	adc    %esi,%esp
    261e:	03 00                	add    (%eax),%eax
    2620:	00 01                	add    %al,(%ecx)
    2622:	18 38                	sbb    %bh,(%eax)
    2624:	03 00                	add    (%eax),%eax
    2626:	00 02                	add    %al,(%edx)
    2628:	91                   	xchg   %eax,%ecx
    2629:	00 12                	add    %dl,(%edx)
    262b:	6b 74 00 01 19       	imul   $0x19,0x1(%eax,%eax,1),%esi
    2630:	32 03                	xor    (%ebx),%al
    2632:	00 00                	add    %al,(%eax)
    2634:	bf 13 00 00 12       	mov    $0x12000013,%edi
    2639:	74 66                	je     26a1 <memcpy-0xc00fd95f>
    263b:	00 01                	add    %al,(%ecx)
    263d:	1d 40 02 00 00       	sbb    $0x240,%eax
    2642:	dd 13                	fstl   (%ebx)
    2644:	00 00                	add    %al,(%eax)
    2646:	00 08                	add    %cl,(%eax)
    2648:	04 57                	add    $0x57,%al
    264a:	02 00                	add    (%eax),%al
    264c:	00 13                	add    %dl,(%ebx)
    264e:	04 14                	add    $0x14,%al
    2650:	01 29                	add    %ebp,(%ecx)
    2652:	05 00 00 01 28       	add    $0x28010000,%eax
    2657:	01 d0                	add    %edx,%eax
    2659:	16                   	push   %ss
    265a:	10 c0                	adc    %al,%al
    265c:	2e                   	cs
    265d:	17                   	pop    %ss
    265e:	10 c0                	adc    %al,%al
    2660:	f3 13 00             	repz adc (%eax),%eax
    2663:	00 ad 03 00 00 11    	add    %ch,0x11000003(%ebp)
    2669:	1d 05 00 00 01       	sbb    $0x1000005,%eax
    266e:	28 32                	sub    %dh,(%edx)
    2670:	03 00                	add    (%eax),%eax
    2672:	00 02                	add    %al,(%edx)
    2674:	91                   	xchg   %eax,%ecx
    2675:	00 15 97 02 00 00    	add    %dl,0x297
    267b:	e2 16                	loop   2693 <memcpy-0xc00fd96d>
    267d:	10 c0                	adc    %al,%al
    267f:	d8 01                	fadds  (%ecx)
    2681:	00 00                	add    %al,(%eax)
    2683:	01 29                	add    %ebp,(%ecx)
    2685:	16                   	push   %ss
    2686:	af                   	scas   %es:(%edi),%eax
    2687:	02 00                	add    (%eax),%al
    2689:	00 06                	add    %al,(%esi)
    268b:	91                   	xchg   %eax,%ecx
    268c:	00 06                	add    %al,(%esi)
    268e:	23 04 9f             	and    (%edi,%ebx,4),%eax
    2691:	17                   	pop    %ss
    2692:	a4                   	movsb  %ds:(%esi),%es:(%edi)
    2693:	02 00                	add    (%eax),%al
    2695:	00 15 62 02 00 00    	add    %dl,0x262
    269b:	e8 16 10 c0 f0       	call   f0c036b6 <_end+0x307bae6e>
    26a0:	01 00                	add    %eax,(%eax)
    26a2:	00 02                	add    %al,(%edx)
    26a4:	1e                   	push   %ds
    26a5:	16                   	push   %ss
    26a6:	85 02                	test   %eax,(%edx)
    26a8:	00 00                	add    %al,(%eax)
    26aa:	06                   	push   %es
    26ab:	91                   	xchg   %eax,%ecx
    26ac:	00 06                	add    %al,(%esi)
    26ae:	23 04 9f             	and    (%edi,%ebx,4),%eax
    26b1:	18 7a 02             	sbb    %bh,0x2(%edx)
    26b4:	00 00                	add    %al,(%eax)
    26b6:	43                   	inc    %ebx
    26b7:	14 00                	adc    $0x0,%al
    26b9:	00 17                	add    %dl,(%edi)
    26bb:	6f                   	outsl  %ds:(%esi),(%dx)
    26bc:	02 00                	add    (%eax),%al
    26be:	00 00                	add    %al,(%eax)
    26c0:	00 00                	add    %al,(%eax)
    26c2:	14 01                	adc    $0x1,%al
    26c4:	02 05 00 00 01 2d    	add    0x2d010000,%al
    26ca:	01 30                	add    %esi,(%eax)
    26cc:	17                   	pop    %ss
    26cd:	10 c0                	adc    %al,%al
    26cf:	76 17                	jbe    26e8 <memcpy-0xc00fd918>
    26d1:	10 c0                	adc    %al,%al
    26d3:	70 14                	jo     26e9 <memcpy-0xc00fd917>
    26d5:	00 00                	add    %al,(%eax)
    26d7:	f8                   	clc    
    26d8:	03 00                	add    (%eax),%eax
    26da:	00 15 bb 02 00 00    	add    %dl,0x2bb
    26e0:	3d 17 10 c0 08       	cmp    $0x8c01017,%eax
    26e5:	02 00                	add    (%eax),%al
    26e7:	00 01                	add    %al,(%ecx)
    26e9:	2e                   	cs
    26ea:	18 c8                	sbb    %cl,%al
    26ec:	02 00                	add    (%eax),%al
    26ee:	00 b4 14 00 00 19 20 	add    %dh,0x20190000(%esp,%edx,1)
    26f5:	02 00                	add    (%eax),%al
    26f7:	00 1a                	add    %bl,(%edx)
    26f9:	d3 02                	roll   %cl,(%edx)
    26fb:	00 00                	add    %al,(%eax)
    26fd:	d6                   	(bad)  
    26fe:	14 00                	adc    $0x0,%al
    2700:	00 1a                	add    %bl,(%edx)
    2702:	de 02                	fiadd  (%edx)
    2704:	00 00                	add    %al,(%eax)
    2706:	f5                   	cmc    
    2707:	14 00                	adc    $0x0,%al
    2709:	00 00                	add    %al,(%eax)
    270b:	00 00                	add    %al,(%eax)
    270d:	1b ba 01 00 00 05    	sbb    0x5000001(%edx),%edi
    2713:	12 05 04 00 00 01    	adc    0x1000004,%al
    2719:	01 08                	add    %ecx,(%eax)
    271b:	04 d1                	add    $0xd1,%al
    271d:	01 00                	add    %eax,(%eax)
    271f:	00 1b                	add    %bl,(%ebx)
    2721:	e0 04                	loopne 2727 <memcpy-0xc00fd8d9>
    2723:	00 00                	add    %al,(%eax)
    2725:	05 13 c6 01 00       	add    $0x1c613,%eax
    272a:	00 01                	add    %al,(%ecx)
    272c:	01 1c 70             	add    %ebx,(%eax,%esi,2)
    272f:	69 64 00 01 15 42 00 	imul   $0x4215,0x1(%eax,%eax,1),%esp
    2736:	00 
    2737:	00 01                	add    %al,(%ecx)
    2739:	05 03 10 31 10       	add    $0x10311003,%eax
    273e:	c0                   	.byte 0xc0
	...

Disassembly of section .debug_abbrev:

00000000 <.debug_abbrev>:
   0:	01 11                	add    %edx,(%ecx)
   2:	01 25 0e 13 0b 03    	add    %esp,0x30b130e
   8:	0e                   	push   %cs
   9:	1b 0e                	sbb    (%esi),%ecx
   b:	11 01                	adc    %eax,(%ecx)
   d:	12 01                	adc    (%ecx),%al
   f:	10 06                	adc    %al,(%esi)
  11:	00 00                	add    %al,(%eax)
  13:	02 16                	add    (%esi),%dl
  15:	00 03                	add    %al,(%ebx)
  17:	0e                   	push   %cs
  18:	3a 0b                	cmp    (%ebx),%cl
  1a:	3b 0b                	cmp    (%ebx),%ecx
  1c:	49                   	dec    %ecx
  1d:	13 00                	adc    (%eax),%eax
  1f:	00 03                	add    %al,(%ebx)
  21:	24 00                	and    $0x0,%al
  23:	0b 0b                	or     (%ebx),%ecx
  25:	3e 0b 03             	or     %ds:(%ebx),%eax
  28:	0e                   	push   %cs
  29:	00 00                	add    %al,(%eax)
  2b:	04 24                	add    $0x24,%al
  2d:	00 0b                	add    %cl,(%ebx)
  2f:	0b 3e                	or     (%esi),%edi
  31:	0b 03                	or     (%ebx),%eax
  33:	08 00                	or     %al,(%eax)
  35:	00 05 2e 01 3f 0c    	add    %al,0xc3f012e
  3b:	03 0e                	add    (%esi),%ecx
  3d:	3a 0b                	cmp    (%ebx),%cl
  3f:	3b 0b                	cmp    (%ebx),%ecx
  41:	27                   	daa    
  42:	0c 49                	or     $0x49,%al
  44:	13 11                	adc    (%ecx),%edx
  46:	01 12                	add    %edx,(%edx)
  48:	01 40 06             	add    %eax,0x6(%eax)
  4b:	01 13                	add    %edx,(%ebx)
  4d:	00 00                	add    %al,(%eax)
  4f:	06                   	push   %es
  50:	05 00 03 08 3a       	add    $0x3a080300,%eax
  55:	0b 3b                	or     (%ebx),%edi
  57:	0b 49 13             	or     0x13(%ecx),%ecx
  5a:	02 06                	add    (%esi),%al
  5c:	00 00                	add    %al,(%eax)
  5e:	07                   	pop    %es
  5f:	05 00 03 0e 3a       	add    $0x3a0e0300,%eax
  64:	0b 3b                	or     (%ebx),%edi
  66:	0b 49 13             	or     0x13(%ecx),%ecx
  69:	02 06                	add    (%esi),%al
  6b:	00 00                	add    %al,(%eax)
  6d:	08 34 00             	or     %dh,(%eax,%eax,1)
  70:	03 08                	add    (%eax),%ecx
  72:	3a 0b                	cmp    (%ebx),%cl
  74:	3b 0b                	cmp    (%ebx),%ecx
  76:	49                   	dec    %ecx
  77:	13 02                	adc    (%edx),%eax
  79:	0a 00                	or     (%eax),%al
  7b:	00 09                	add    %cl,(%ecx)
  7d:	0f 00 0b             	str    (%ebx)
  80:	0b 00                	or     (%eax),%eax
  82:	00 0a                	add    %cl,(%edx)
  84:	0f 00 0b             	str    (%ebx)
  87:	0b 49 13             	or     0x13(%ecx),%ecx
  8a:	00 00                	add    %al,(%eax)
  8c:	0b 26                	or     (%esi),%esp
  8e:	00 00                	add    %al,(%eax)
  90:	00 0c 05 00 03 08 3a 	add    %cl,0x3a080300(,%eax,1)
  97:	0b 3b                	or     (%ebx),%edi
  99:	0b 49 13             	or     0x13(%ecx),%ecx
  9c:	02 0a                	add    (%edx),%cl
  9e:	00 00                	add    %al,(%eax)
  a0:	0d 34 00 03 0e       	or     $0xe030034,%eax
  a5:	3a 0b                	cmp    (%ebx),%cl
  a7:	3b 0b                	cmp    (%ebx),%ecx
  a9:	49                   	dec    %ecx
  aa:	13 02                	adc    (%edx),%eax
  ac:	0a 00                	or     (%eax),%al
  ae:	00 0e                	add    %cl,(%esi)
  b0:	05 00 03 0e 3a       	add    $0x3a0e0300,%eax
  b5:	0b 3b                	or     (%ebx),%edi
  b7:	0b 49 13             	or     0x13(%ecx),%ecx
  ba:	02 0a                	add    (%edx),%cl
  bc:	00 00                	add    %al,(%eax)
  be:	0f 01 01             	sgdtl  (%ecx)
  c1:	49                   	dec    %ecx
  c2:	13 01                	adc    (%ecx),%eax
  c4:	13 00                	adc    (%eax),%eax
  c6:	00 10                	add    %dl,(%eax)
  c8:	21 00                	and    %eax,(%eax)
  ca:	49                   	dec    %ecx
  cb:	13 2f                	adc    (%edi),%ebp
  cd:	0b 00                	or     (%eax),%eax
  cf:	00 11                	add    %dl,(%ecx)
  d1:	26 00 49 13          	add    %cl,%es:0x13(%ecx)
  d5:	00 00                	add    %al,(%eax)
  d7:	12 34 00             	adc    (%eax,%eax,1),%dh
  da:	03 0e                	add    (%esi),%ecx
  dc:	3a 0b                	cmp    (%ebx),%cl
  de:	3b 0b                	cmp    (%ebx),%ecx
  e0:	49                   	dec    %ecx
  e1:	13 02                	adc    (%edx),%eax
  e3:	06                   	push   %es
  e4:	00 00                	add    %al,(%eax)
  e6:	13 2e                	adc    (%esi),%ebp
  e8:	01 3f                	add    %edi,(%edi)
  ea:	0c 03                	or     $0x3,%al
  ec:	0e                   	push   %cs
  ed:	3a 0b                	cmp    (%ebx),%cl
  ef:	3b 0b                	cmp    (%ebx),%ecx
  f1:	27                   	daa    
  f2:	0c 49                	or     $0x49,%al
  f4:	13 11                	adc    (%ecx),%edx
  f6:	01 12                	add    %edx,(%edx)
  f8:	01 40 06             	add    %eax,0x6(%eax)
  fb:	00 00                	add    %al,(%eax)
  fd:	00 01                	add    %al,(%ecx)
  ff:	11 01                	adc    %eax,(%ecx)
 101:	25 0e 13 0b 03       	and    $0x30b130e,%eax
 106:	0e                   	push   %cs
 107:	1b 0e                	sbb    (%esi),%ecx
 109:	11 01                	adc    %eax,(%ecx)
 10b:	12 01                	adc    (%ecx),%al
 10d:	10 06                	adc    %al,(%esi)
 10f:	00 00                	add    %al,(%eax)
 111:	02 24 00             	add    (%eax,%eax,1),%ah
 114:	0b 0b                	or     (%ebx),%ecx
 116:	3e 0b 03             	or     %ds:(%ebx),%eax
 119:	0e                   	push   %cs
 11a:	00 00                	add    %al,(%eax)
 11c:	03 24 00             	add    (%eax,%eax,1),%esp
 11f:	0b 0b                	or     (%ebx),%ecx
 121:	3e 0b 03             	or     %ds:(%ebx),%eax
 124:	08 00                	or     %al,(%eax)
 126:	00 04 2e             	add    %al,(%esi,%ebp,1)
 129:	00 03                	add    %al,(%ebx)
 12b:	08 3a                	or     %bh,(%edx)
 12d:	0b 3b                	or     (%ebx),%edi
 12f:	0b 27                	or     (%edi),%esp
 131:	0c 20                	or     $0x20,%al
 133:	0b 00                	or     (%eax),%eax
 135:	00 05 2e 00 03 0e    	add    %al,0xe03002e
 13b:	3a 0b                	cmp    (%ebx),%cl
 13d:	3b 0b                	cmp    (%ebx),%ecx
 13f:	20 0b                	and    %cl,(%ebx)
 141:	00 00                	add    %al,(%eax)
 143:	06                   	push   %es
 144:	2e 01 3f             	add    %edi,%cs:(%edi)
 147:	0c 03                	or     $0x3,%al
 149:	0e                   	push   %cs
 14a:	3a 0b                	cmp    (%ebx),%cl
 14c:	3b 0b                	cmp    (%ebx),%ecx
 14e:	27                   	daa    
 14f:	0c 11                	or     $0x11,%al
 151:	01 12                	add    %edx,(%edx)
 153:	01 40 06             	add    %eax,0x6(%eax)
 156:	01 13                	add    %edx,(%ebx)
 158:	00 00                	add    %al,(%eax)
 15a:	07                   	pop    %es
 15b:	05 00 03 0e 3a       	add    $0x3a0e0300,%eax
 160:	0b 3b                	or     (%ebx),%edi
 162:	0b 49 13             	or     0x13(%ecx),%ecx
 165:	02 0a                	add    (%edx),%cl
 167:	00 00                	add    %al,(%eax)
 169:	08 1d 00 31 13 11    	or     %bl,0x11133100
 16f:	01 12                	add    %edx,(%edx)
 171:	01 58 0b             	add    %ebx,0xb(%eax)
 174:	59                   	pop    %ecx
 175:	0b 00                	or     (%eax),%eax
 177:	00 09                	add    %cl,(%ecx)
 179:	0f 00 0b             	str    (%ebx)
 17c:	0b 49 13             	or     0x13(%ecx),%ecx
 17f:	00 00                	add    %al,(%eax)
 181:	0a 26                	or     (%esi),%ah
 183:	00 49 13             	add    %cl,0x13(%ecx)
 186:	00 00                	add    %al,(%eax)
 188:	0b 2e                	or     (%esi),%ebp
 18a:	01 3f                	add    %edi,(%edi)
 18c:	0c 03                	or     $0x3,%al
 18e:	0e                   	push   %cs
 18f:	3a 0b                	cmp    (%ebx),%cl
 191:	3b 0b                	cmp    (%ebx),%ecx
 193:	27                   	daa    
 194:	0c 11                	or     $0x11,%al
 196:	01 12                	add    %edx,(%edx)
 198:	01 40 06             	add    %eax,0x6(%eax)
 19b:	00 00                	add    %al,(%eax)
 19d:	0c 05                	or     $0x5,%al
 19f:	00 03                	add    %al,(%ebx)
 1a1:	08 3a                	or     %bh,(%edx)
 1a3:	0b 3b                	or     (%ebx),%edi
 1a5:	0b 49 13             	or     0x13(%ecx),%ecx
 1a8:	02 0a                	add    (%edx),%cl
 1aa:	00 00                	add    %al,(%eax)
 1ac:	00 01                	add    %al,(%ecx)
 1ae:	11 01                	adc    %eax,(%ecx)
 1b0:	25 0e 13 0b 03       	and    $0x30b130e,%eax
 1b5:	0e                   	push   %cs
 1b6:	1b 0e                	sbb    (%esi),%ecx
 1b8:	11 01                	adc    %eax,(%ecx)
 1ba:	12 01                	adc    (%ecx),%al
 1bc:	10 06                	adc    %al,(%esi)
 1be:	00 00                	add    %al,(%eax)
 1c0:	02 16                	add    (%esi),%dl
 1c2:	00 03                	add    %al,(%ebx)
 1c4:	0e                   	push   %cs
 1c5:	3a 0b                	cmp    (%ebx),%cl
 1c7:	3b 0b                	cmp    (%ebx),%ecx
 1c9:	49                   	dec    %ecx
 1ca:	13 00                	adc    (%eax),%eax
 1cc:	00 03                	add    %al,(%ebx)
 1ce:	24 00                	and    $0x0,%al
 1d0:	0b 0b                	or     (%ebx),%ecx
 1d2:	3e 0b 03             	or     %ds:(%ebx),%eax
 1d5:	0e                   	push   %cs
 1d6:	00 00                	add    %al,(%eax)
 1d8:	04 24                	add    $0x24,%al
 1da:	00 0b                	add    %cl,(%ebx)
 1dc:	0b 3e                	or     (%esi),%edi
 1de:	0b 03                	or     (%ebx),%eax
 1e0:	08 00                	or     %al,(%eax)
 1e2:	00 05 13 01 03 0e    	add    %al,0xe030113
 1e8:	0b 0b                	or     (%ebx),%ecx
 1ea:	3a 0b                	cmp    (%ebx),%cl
 1ec:	3b 0b                	cmp    (%ebx),%ecx
 1ee:	01 13                	add    %edx,(%ebx)
 1f0:	00 00                	add    %al,(%eax)
 1f2:	06                   	push   %es
 1f3:	0d 00 03 08 3a       	or     $0x3a080300,%eax
 1f8:	0b 3b                	or     (%ebx),%edi
 1fa:	0b 49 13             	or     0x13(%ecx),%ecx
 1fd:	38 0a                	cmp    %cl,(%edx)
 1ff:	00 00                	add    %al,(%eax)
 201:	07                   	pop    %es
 202:	0d 00 03 0e 3a       	or     $0x3a0e0300,%eax
 207:	0b 3b                	or     (%ebx),%edi
 209:	0b 49 13             	or     0x13(%ecx),%ecx
 20c:	38 0a                	cmp    %cl,(%edx)
 20e:	00 00                	add    %al,(%eax)
 210:	08 0f                	or     %cl,(%edi)
 212:	00 0b                	add    %cl,(%ebx)
 214:	0b 49 13             	or     0x13(%ecx),%ecx
 217:	00 00                	add    %al,(%eax)
 219:	09 13                	or     %edx,(%ebx)
 21b:	01 03                	add    %eax,(%ebx)
 21d:	08 0b                	or     %cl,(%ebx)
 21f:	05 3a 0b 3b 0b       	add    $0xb3b0b3a,%eax
 224:	01 13                	add    %edx,(%ebx)
 226:	00 00                	add    %al,(%eax)
 228:	0a 01                	or     (%ecx),%al
 22a:	01 49 13             	add    %ecx,0x13(%ecx)
 22d:	01 13                	add    %edx,(%ebx)
 22f:	00 00                	add    %al,(%eax)
 231:	0b 21                	or     (%ecx),%esp
 233:	00 49 13             	add    %cl,0x13(%ecx)
 236:	2f                   	das    
 237:	05 00 00 0c 16       	add    $0x160c0000,%eax
 23c:	00 03                	add    %al,(%ebx)
 23e:	08 3a                	or     %bh,(%edx)
 240:	0b 3b                	or     (%ebx),%edi
 242:	0b 49 13             	or     0x13(%ecx),%ecx
 245:	00 00                	add    %al,(%eax)
 247:	0d 2e 01 03 0e       	or     $0xe03012e,%eax
 24c:	3a 0b                	cmp    (%ebx),%cl
 24e:	3b 0b                	cmp    (%ebx),%ecx
 250:	27                   	daa    
 251:	0c 20                	or     $0x20,%al
 253:	0b 01                	or     (%ecx),%eax
 255:	13 00                	adc    (%eax),%eax
 257:	00 0e                	add    %cl,(%esi)
 259:	05 00 03 0e 3a       	add    $0x3a0e0300,%eax
 25e:	0b 3b                	or     (%ebx),%edi
 260:	0b 49 13             	or     0x13(%ecx),%ecx
 263:	00 00                	add    %al,(%eax)
 265:	0f 2e 01             	ucomiss (%ecx),%xmm0
 268:	03 0e                	add    (%esi),%ecx
 26a:	3a 0b                	cmp    (%ebx),%cl
 26c:	3b 0b                	cmp    (%ebx),%ecx
 26e:	27                   	daa    
 26f:	0c 49                	or     $0x49,%al
 271:	13 20                	adc    (%eax),%esp
 273:	0b 01                	or     (%ecx),%eax
 275:	13 00                	adc    (%eax),%eax
 277:	00 10                	add    %dl,(%eax)
 279:	34 00                	xor    $0x0,%al
 27b:	03 0e                	add    (%esi),%ecx
 27d:	3a 0b                	cmp    (%ebx),%cl
 27f:	3b 0b                	cmp    (%ebx),%ecx
 281:	49                   	dec    %ecx
 282:	13 00                	adc    (%eax),%eax
 284:	00 11                	add    %dl,(%ecx)
 286:	35 00 49 13 00       	xor    $0x134900,%eax
 28b:	00 12                	add    %dl,(%edx)
 28d:	2e 00 03             	add    %al,%cs:(%ebx)
 290:	08 3a                	or     %bh,(%edx)
 292:	0b 3b                	or     (%ebx),%edi
 294:	0b 27                	or     (%edi),%esp
 296:	0c 20                	or     $0x20,%al
 298:	0b 00                	or     (%eax),%eax
 29a:	00 13                	add    %dl,(%ebx)
 29c:	2e 00 3f             	add    %bh,%cs:(%edi)
 29f:	0c 03                	or     $0x3,%al
 2a1:	0e                   	push   %cs
 2a2:	3a 0b                	cmp    (%ebx),%cl
 2a4:	3b 0b                	cmp    (%ebx),%ecx
 2a6:	27                   	daa    
 2a7:	0c 20                	or     $0x20,%al
 2a9:	0b 00                	or     (%eax),%eax
 2ab:	00 14 2e             	add    %dl,(%esi,%ebp,1)
 2ae:	01 31                	add    %esi,(%ecx)
 2b0:	13 11                	adc    (%ecx),%edx
 2b2:	01 12                	add    %edx,(%edx)
 2b4:	01 40 06             	add    %eax,0x6(%eax)
 2b7:	01 13                	add    %edx,(%ebx)
 2b9:	00 00                	add    %al,(%eax)
 2bb:	15 1d 01 31 13       	adc    $0x1331011d,%eax
 2c0:	11 01                	adc    %eax,(%ecx)
 2c2:	12 01                	adc    (%ecx),%al
 2c4:	58                   	pop    %eax
 2c5:	0b 59 0b             	or     0xb(%ecx),%ebx
 2c8:	01 13                	add    %edx,(%ebx)
 2ca:	00 00                	add    %al,(%eax)
 2cc:	16                   	push   %ss
 2cd:	0b 01                	or     (%ecx),%eax
 2cf:	11 01                	adc    %eax,(%ecx)
 2d1:	12 01                	adc    (%ecx),%al
 2d3:	00 00                	add    %al,(%eax)
 2d5:	17                   	pop    %ss
 2d6:	34 00                	xor    $0x0,%al
 2d8:	31 13                	xor    %edx,(%ebx)
 2da:	02 06                	add    (%esi),%al
 2dc:	00 00                	add    %al,(%eax)
 2de:	18 1d 01 31 13 11    	sbb    %bl,0x11133101
 2e4:	01 12                	add    %edx,(%edx)
 2e6:	01 58 0b             	add    %ebx,0xb(%eax)
 2e9:	59                   	pop    %ecx
 2ea:	0b 00                	or     (%eax),%eax
 2ec:	00 19                	add    %bl,(%ecx)
 2ee:	1d 00 31 13 11       	sbb    $0x11133100,%eax
 2f3:	01 12                	add    %edx,(%edx)
 2f5:	01 58 0b             	add    %ebx,0xb(%eax)
 2f8:	59                   	pop    %ecx
 2f9:	0b 00                	or     (%eax),%eax
 2fb:	00 1a                	add    %bl,(%edx)
 2fd:	1d 01 31 13 52       	sbb    $0x52133101,%eax
 302:	01 55 06             	add    %edx,0x6(%ebp)
 305:	58                   	pop    %eax
 306:	0b 59 0b             	or     0xb(%ecx),%ebx
 309:	00 00                	add    %al,(%eax)
 30b:	1b 2e                	sbb    (%esi),%ebp
 30d:	01 3f                	add    %edi,(%edi)
 30f:	0c 03                	or     $0x3,%al
 311:	0e                   	push   %cs
 312:	3a 0b                	cmp    (%ebx),%cl
 314:	3b 0b                	cmp    (%ebx),%ecx
 316:	27                   	daa    
 317:	0c 11                	or     $0x11,%al
 319:	01 12                	add    %edx,(%edx)
 31b:	01 40 06             	add    %eax,0x6(%eax)
 31e:	01 13                	add    %edx,(%ebx)
 320:	00 00                	add    %al,(%eax)
 322:	1c 05                	sbb    $0x5,%al
 324:	00 03                	add    %al,(%ebx)
 326:	08 3a                	or     %bh,(%edx)
 328:	0b 3b                	or     (%ebx),%edi
 32a:	0b 49 13             	or     0x13(%ecx),%ecx
 32d:	02 0a                	add    (%edx),%cl
 32f:	00 00                	add    %al,(%eax)
 331:	1d 05 00 03 0e       	sbb    $0xe030005,%eax
 336:	3a 0b                	cmp    (%ebx),%cl
 338:	3b 0b                	cmp    (%ebx),%ecx
 33a:	49                   	dec    %ecx
 33b:	13 02                	adc    (%edx),%eax
 33d:	0a 00                	or     (%eax),%al
 33f:	00 1e                	add    %bl,(%esi)
 341:	05 00 31 13 02       	add    $0x2133100,%eax
 346:	0a 00                	or     (%eax),%al
 348:	00 1f                	add    %bl,(%edi)
 34a:	2e 01 3f             	add    %edi,%cs:(%edi)
 34d:	0c 03                	or     $0x3,%al
 34f:	08 3a                	or     %bh,(%edx)
 351:	0b 3b                	or     (%ebx),%edi
 353:	0b 27                	or     (%edi),%esp
 355:	0c 11                	or     $0x11,%al
 357:	01 12                	add    %edx,(%edx)
 359:	01 40 06             	add    %eax,0x6(%eax)
 35c:	01 13                	add    %edx,(%ebx)
 35e:	00 00                	add    %al,(%eax)
 360:	20 05 00 31 13 02    	and    %al,0x2133100
 366:	06                   	push   %es
 367:	00 00                	add    %al,(%eax)
 369:	21 0b                	and    %ecx,(%ebx)
 36b:	01 55 06             	add    %edx,0x6(%ebp)
 36e:	00 00                	add    %al,(%eax)
 370:	22 34 00             	and    (%eax,%eax,1),%dh
 373:	03 08                	add    (%eax),%ecx
 375:	3a 0b                	cmp    (%ebx),%cl
 377:	3b 0b                	cmp    (%ebx),%ecx
 379:	49                   	dec    %ecx
 37a:	13 02                	adc    (%edx),%eax
 37c:	06                   	push   %es
 37d:	00 00                	add    %al,(%eax)
 37f:	23 34 00             	and    (%eax,%eax,1),%esi
 382:	03 0e                	add    (%esi),%ecx
 384:	3a 0b                	cmp    (%ebx),%cl
 386:	3b 0b                	cmp    (%ebx),%ecx
 388:	49                   	dec    %ecx
 389:	13 3f                	adc    (%edi),%edi
 38b:	0c 3c                	or     $0x3c,%al
 38d:	0c 00                	or     $0x0,%al
 38f:	00 00                	add    %al,(%eax)
 391:	01 11                	add    %edx,(%ecx)
 393:	01 25 0e 13 0b 03    	add    %esp,0x30b130e
 399:	0e                   	push   %cs
 39a:	1b 0e                	sbb    (%esi),%ecx
 39c:	11 01                	adc    %eax,(%ecx)
 39e:	12 01                	adc    (%ecx),%al
 3a0:	10 06                	adc    %al,(%esi)
 3a2:	00 00                	add    %al,(%eax)
 3a4:	02 16                	add    (%esi),%dl
 3a6:	00 03                	add    %al,(%ebx)
 3a8:	0e                   	push   %cs
 3a9:	3a 0b                	cmp    (%ebx),%cl
 3ab:	3b 0b                	cmp    (%ebx),%ecx
 3ad:	49                   	dec    %ecx
 3ae:	13 00                	adc    (%eax),%eax
 3b0:	00 03                	add    %al,(%ebx)
 3b2:	24 00                	and    $0x0,%al
 3b4:	0b 0b                	or     (%ebx),%ecx
 3b6:	3e 0b 03             	or     %ds:(%ebx),%eax
 3b9:	0e                   	push   %cs
 3ba:	00 00                	add    %al,(%eax)
 3bc:	04 24                	add    $0x24,%al
 3be:	00 0b                	add    %cl,(%ebx)
 3c0:	0b 3e                	or     (%esi),%edi
 3c2:	0b 03                	or     (%ebx),%eax
 3c4:	08 00                	or     %al,(%eax)
 3c6:	00 05 13 01 0b 0b    	add    %al,0xb0b0113
 3cc:	3a 0b                	cmp    (%ebx),%cl
 3ce:	3b 0b                	cmp    (%ebx),%ecx
 3d0:	01 13                	add    %edx,(%ebx)
 3d2:	00 00                	add    %al,(%eax)
 3d4:	06                   	push   %es
 3d5:	0d 00 03 0e 3a       	or     $0x3a0e0300,%eax
 3da:	0b 3b                	or     (%ebx),%edi
 3dc:	0b 49 13             	or     0x13(%ecx),%ecx
 3df:	38 0a                	cmp    %cl,(%edx)
 3e1:	00 00                	add    %al,(%eax)
 3e3:	07                   	pop    %es
 3e4:	17                   	pop    %ss
 3e5:	01 03                	add    %eax,(%ebx)
 3e7:	0e                   	push   %cs
 3e8:	0b 0b                	or     (%ebx),%ecx
 3ea:	3a 0b                	cmp    (%ebx),%cl
 3ec:	3b 0b                	cmp    (%ebx),%ecx
 3ee:	01 13                	add    %edx,(%ebx)
 3f0:	00 00                	add    %al,(%eax)
 3f2:	08 0d 00 03 0e 3a    	or     %cl,0x3a0e0300
 3f8:	0b 3b                	or     (%ebx),%edi
 3fa:	0b 49 13             	or     0x13(%ecx),%ecx
 3fd:	00 00                	add    %al,(%eax)
 3ff:	09 0d 00 03 08 3a    	or     %ecx,0x3a080300
 405:	0b 3b                	or     (%ebx),%edi
 407:	0b 49 13             	or     0x13(%ecx),%ecx
 40a:	00 00                	add    %al,(%eax)
 40c:	0a 0f                	or     (%edi),%cl
 40e:	00 0b                	add    %cl,(%ebx)
 410:	0b 49 13             	or     0x13(%ecx),%ecx
 413:	00 00                	add    %al,(%eax)
 415:	0b 2e                	or     (%esi),%ebp
 417:	01 3f                	add    %edi,(%edi)
 419:	0c 03                	or     $0x3,%al
 41b:	0e                   	push   %cs
 41c:	3a 0b                	cmp    (%ebx),%cl
 41e:	3b 0b                	cmp    (%ebx),%ecx
 420:	27                   	daa    
 421:	0c 49                	or     $0x49,%al
 423:	13 11                	adc    (%ecx),%edx
 425:	01 12                	add    %edx,(%edx)
 427:	01 40 06             	add    %eax,0x6(%eax)
 42a:	01 13                	add    %edx,(%ebx)
 42c:	00 00                	add    %al,(%eax)
 42e:	0c 05                	or     $0x5,%al
 430:	00 03                	add    %al,(%ebx)
 432:	08 3a                	or     %bh,(%edx)
 434:	0b 3b                	or     (%ebx),%edi
 436:	0b 49 13             	or     0x13(%ecx),%ecx
 439:	02 06                	add    (%esi),%al
 43b:	00 00                	add    %al,(%eax)
 43d:	0d 34 00 03 08       	or     $0x8030034,%eax
 442:	3a 0b                	cmp    (%ebx),%cl
 444:	3b 0b                	cmp    (%ebx),%ecx
 446:	49                   	dec    %ecx
 447:	13 02                	adc    (%edx),%eax
 449:	06                   	push   %es
 44a:	00 00                	add    %al,(%eax)
 44c:	0e                   	push   %cs
 44d:	2e 01 3f             	add    %edi,%cs:(%edi)
 450:	0c 03                	or     $0x3,%al
 452:	0e                   	push   %cs
 453:	3a 0b                	cmp    (%ebx),%cl
 455:	3b 0b                	cmp    (%ebx),%ecx
 457:	27                   	daa    
 458:	0c 11                	or     $0x11,%al
 45a:	01 12                	add    %edx,(%edx)
 45c:	01 40 06             	add    %eax,0x6(%eax)
 45f:	01 13                	add    %edx,(%ebx)
 461:	00 00                	add    %al,(%eax)
 463:	0f 34                	sysenter 
 465:	00 03                	add    %al,(%ebx)
 467:	0e                   	push   %cs
 468:	3a 0b                	cmp    (%ebx),%cl
 46a:	3b 0b                	cmp    (%ebx),%ecx
 46c:	49                   	dec    %ecx
 46d:	13 02                	adc    (%edx),%eax
 46f:	06                   	push   %es
 470:	00 00                	add    %al,(%eax)
 472:	10 05 00 03 0e 3a    	adc    %al,0x3a0e0300
 478:	0b 3b                	or     (%ebx),%edi
 47a:	0b 49 13             	or     0x13(%ecx),%ecx
 47d:	02 0a                	add    (%edx),%cl
 47f:	00 00                	add    %al,(%eax)
 481:	11 0f                	adc    %ecx,(%edi)
 483:	00 0b                	add    %cl,(%ebx)
 485:	0b 00                	or     (%eax),%eax
 487:	00 12                	add    %dl,(%edx)
 489:	05 00 03 08 3a       	add    $0x3a080300,%eax
 48e:	0b 3b                	or     (%ebx),%edi
 490:	0b 49 13             	or     0x13(%ecx),%ecx
 493:	02 0a                	add    (%edx),%cl
 495:	00 00                	add    %al,(%eax)
 497:	13 01                	adc    (%ecx),%eax
 499:	01 49 13             	add    %ecx,0x13(%ecx)
 49c:	01 13                	add    %edx,(%ebx)
 49e:	00 00                	add    %al,(%eax)
 4a0:	14 21                	adc    $0x21,%al
 4a2:	00 49 13             	add    %cl,0x13(%ecx)
 4a5:	2f                   	das    
 4a6:	0b 00                	or     (%eax),%eax
 4a8:	00 15 34 00 03 0e    	add    %dl,0xe030034
 4ae:	3a 0b                	cmp    (%ebx),%cl
 4b0:	3b 0b                	cmp    (%ebx),%ecx
 4b2:	49                   	dec    %ecx
 4b3:	13 02                	adc    (%edx),%eax
 4b5:	0a 00                	or     (%eax),%al
 4b7:	00 16                	add    %dl,(%esi)
 4b9:	21 00                	and    %eax,(%eax)
 4bb:	49                   	dec    %ecx
 4bc:	13 2f                	adc    (%edi),%ebp
 4be:	06                   	push   %es
 4bf:	00 00                	add    %al,(%eax)
 4c1:	17                   	pop    %ss
 4c2:	34 00                	xor    $0x0,%al
 4c4:	03 0e                	add    (%esi),%ecx
 4c6:	3a 0b                	cmp    (%ebx),%cl
 4c8:	3b 0b                	cmp    (%ebx),%ecx
 4ca:	49                   	dec    %ecx
 4cb:	13 3f                	adc    (%edi),%edi
 4cd:	0c 02                	or     $0x2,%al
 4cf:	0a 00                	or     (%eax),%al
 4d1:	00 00                	add    %al,(%eax)
 4d3:	01 11                	add    %edx,(%ecx)
 4d5:	01 25 0e 13 0b 03    	add    %esp,0x30b130e
 4db:	0e                   	push   %cs
 4dc:	1b 0e                	sbb    (%esi),%ecx
 4de:	11 01                	adc    %eax,(%ecx)
 4e0:	12 01                	adc    (%ecx),%al
 4e2:	10 06                	adc    %al,(%esi)
 4e4:	00 00                	add    %al,(%eax)
 4e6:	02 24 00             	add    (%eax,%eax,1),%ah
 4e9:	0b 0b                	or     (%ebx),%ecx
 4eb:	3e 0b 03             	or     %ds:(%ebx),%eax
 4ee:	0e                   	push   %cs
 4ef:	00 00                	add    %al,(%eax)
 4f1:	03 24 00             	add    (%eax,%eax,1),%esp
 4f4:	0b 0b                	or     (%ebx),%ecx
 4f6:	3e 0b 03             	or     %ds:(%ebx),%eax
 4f9:	08 00                	or     %al,(%eax)
 4fb:	00 04 2e             	add    %al,(%esi,%ebp,1)
 4fe:	01 3f                	add    %edi,(%edi)
 500:	0c 03                	or     $0x3,%al
 502:	0e                   	push   %cs
 503:	3a 0b                	cmp    (%ebx),%cl
 505:	3b 0b                	cmp    (%ebx),%ecx
 507:	27                   	daa    
 508:	0c 49                	or     $0x49,%al
 50a:	13 11                	adc    (%ecx),%edx
 50c:	01 12                	add    %edx,(%edx)
 50e:	01 40 06             	add    %eax,0x6(%eax)
 511:	01 13                	add    %edx,(%ebx)
 513:	00 00                	add    %al,(%eax)
 515:	05 05 00 03 0e       	add    $0xe030005,%eax
 51a:	3a 0b                	cmp    (%ebx),%cl
 51c:	3b 0b                	cmp    (%ebx),%ecx
 51e:	49                   	dec    %ecx
 51f:	13 02                	adc    (%edx),%eax
 521:	0a 00                	or     (%eax),%al
 523:	00 06                	add    %al,(%esi)
 525:	05 00 03 0e 3a       	add    $0x3a0e0300,%eax
 52a:	0b 3b                	or     (%ebx),%edi
 52c:	0b 49 13             	or     0x13(%ecx),%ecx
 52f:	02 06                	add    (%esi),%al
 531:	00 00                	add    %al,(%eax)
 533:	07                   	pop    %es
 534:	34 00                	xor    $0x0,%al
 536:	03 08                	add    (%eax),%ecx
 538:	3a 0b                	cmp    (%ebx),%cl
 53a:	3b 0b                	cmp    (%ebx),%ecx
 53c:	49                   	dec    %ecx
 53d:	13 02                	adc    (%edx),%eax
 53f:	06                   	push   %es
 540:	00 00                	add    %al,(%eax)
 542:	08 34 00             	or     %dh,(%eax,%eax,1)
 545:	03 0e                	add    (%esi),%ecx
 547:	3a 0b                	cmp    (%ebx),%cl
 549:	3b 0b                	cmp    (%ebx),%ecx
 54b:	49                   	dec    %ecx
 54c:	13 02                	adc    (%edx),%eax
 54e:	06                   	push   %es
 54f:	00 00                	add    %al,(%eax)
 551:	09 34 00             	or     %esi,(%eax,%eax,1)
 554:	03 0e                	add    (%esi),%ecx
 556:	3a 0b                	cmp    (%ebx),%cl
 558:	3b 0b                	cmp    (%ebx),%ecx
 55a:	49                   	dec    %ecx
 55b:	13 00                	adc    (%eax),%eax
 55d:	00 0a                	add    %cl,(%edx)
 55f:	15 01 27 0c 01       	adc    $0x10c2701,%eax
 564:	13 00                	adc    (%eax),%eax
 566:	00 0b                	add    %cl,(%ebx)
 568:	05 00 49 13 00       	add    $0x134900,%eax
 56d:	00 0c 0f             	add    %cl,(%edi,%ecx,1)
 570:	00 0b                	add    %cl,(%ebx)
 572:	0b 49 13             	or     0x13(%ecx),%ecx
 575:	00 00                	add    %al,(%eax)
 577:	0d 26 00 49 13       	or     $0x13490026,%eax
 57c:	00 00                	add    %al,(%eax)
 57e:	0e                   	push   %cs
 57f:	0f 00 0b             	str    (%ebx)
 582:	0b 00                	or     (%eax),%eax
 584:	00 00                	add    %al,(%eax)
 586:	01 11                	add    %edx,(%ecx)
 588:	01 25 0e 13 0b 03    	add    %esp,0x30b130e
 58e:	0e                   	push   %cs
 58f:	1b 0e                	sbb    (%esi),%ecx
 591:	11 01                	adc    %eax,(%ecx)
 593:	12 01                	adc    (%ecx),%al
 595:	10 06                	adc    %al,(%esi)
 597:	00 00                	add    %al,(%eax)
 599:	02 24 00             	add    (%eax,%eax,1),%ah
 59c:	0b 0b                	or     (%ebx),%ecx
 59e:	3e 0b 03             	or     %ds:(%ebx),%eax
 5a1:	0e                   	push   %cs
 5a2:	00 00                	add    %al,(%eax)
 5a4:	03 24 00             	add    (%eax,%eax,1),%esp
 5a7:	0b 0b                	or     (%ebx),%ecx
 5a9:	3e 0b 03             	or     %ds:(%ebx),%eax
 5ac:	08 00                	or     %al,(%eax)
 5ae:	00 04 16             	add    %al,(%esi,%edx,1)
 5b1:	00 03                	add    %al,(%ebx)
 5b3:	0e                   	push   %cs
 5b4:	3a 0b                	cmp    (%ebx),%cl
 5b6:	3b 0b                	cmp    (%ebx),%ecx
 5b8:	49                   	dec    %ecx
 5b9:	13 00                	adc    (%eax),%eax
 5bb:	00 05 2e 01 03 0e    	add    %al,0xe03012e
 5c1:	3a 0b                	cmp    (%ebx),%cl
 5c3:	3b 0b                	cmp    (%ebx),%ecx
 5c5:	27                   	daa    
 5c6:	0c 49                	or     $0x49,%al
 5c8:	13 20                	adc    (%eax),%esp
 5ca:	0b 01                	or     (%ecx),%eax
 5cc:	13 00                	adc    (%eax),%eax
 5ce:	00 06                	add    %al,(%esi)
 5d0:	05 00 03 0e 3a       	add    $0x3a0e0300,%eax
 5d5:	0b 3b                	or     (%ebx),%edi
 5d7:	0b 49 13             	or     0x13(%ecx),%ecx
 5da:	00 00                	add    %al,(%eax)
 5dc:	07                   	pop    %es
 5dd:	34 00                	xor    $0x0,%al
 5df:	03 0e                	add    (%esi),%ecx
 5e1:	3a 0b                	cmp    (%ebx),%cl
 5e3:	3b 0b                	cmp    (%ebx),%ecx
 5e5:	49                   	dec    %ecx
 5e6:	13 00                	adc    (%eax),%eax
 5e8:	00 08                	add    %cl,(%eax)
 5ea:	2e 00 03             	add    %al,%cs:(%ebx)
 5ed:	0e                   	push   %cs
 5ee:	3a 0b                	cmp    (%ebx),%cl
 5f0:	3b 0b                	cmp    (%ebx),%ecx
 5f2:	27                   	daa    
 5f3:	0c 49                	or     $0x49,%al
 5f5:	13 20                	adc    (%eax),%esp
 5f7:	0b 00                	or     (%eax),%eax
 5f9:	00 09                	add    %cl,(%ecx)
 5fb:	2e 01 03             	add    %eax,%cs:(%ebx)
 5fe:	0e                   	push   %cs
 5ff:	3a 0b                	cmp    (%ebx),%cl
 601:	3b 0b                	cmp    (%ebx),%ecx
 603:	27                   	daa    
 604:	0c 20                	or     $0x20,%al
 606:	0b 01                	or     (%ecx),%eax
 608:	13 00                	adc    (%eax),%eax
 60a:	00 0a                	add    %cl,(%edx)
 60c:	2e 01 3f             	add    %edi,%cs:(%edi)
 60f:	0c 03                	or     $0x3,%al
 611:	0e                   	push   %cs
 612:	3a 0b                	cmp    (%ebx),%cl
 614:	3b 0b                	cmp    (%ebx),%ecx
 616:	27                   	daa    
 617:	0c 11                	or     $0x11,%al
 619:	01 12                	add    %edx,(%edx)
 61b:	01 40 06             	add    %eax,0x6(%eax)
 61e:	01 13                	add    %edx,(%ebx)
 620:	00 00                	add    %al,(%eax)
 622:	0b 05 00 03 08 3a    	or     0x3a080300,%eax
 628:	0b 3b                	or     (%ebx),%edi
 62a:	0b 49 13             	or     0x13(%ecx),%ecx
 62d:	02 0a                	add    (%edx),%cl
 62f:	00 00                	add    %al,(%eax)
 631:	0c 1d                	or     $0x1d,%al
 633:	01 31                	add    %esi,(%ecx)
 635:	13 52 01             	adc    0x1(%edx),%edx
 638:	55                   	push   %ebp
 639:	06                   	push   %es
 63a:	58                   	pop    %eax
 63b:	0b 59 0b             	or     0xb(%ecx),%ebx
 63e:	01 13                	add    %edx,(%ebx)
 640:	00 00                	add    %al,(%eax)
 642:	0d 1d 01 31 13       	or     $0x1331011d,%eax
 647:	52                   	push   %edx
 648:	01 55 06             	add    %edx,0x6(%ebp)
 64b:	58                   	pop    %eax
 64c:	0b 59 0b             	or     0xb(%ecx),%ebx
 64f:	00 00                	add    %al,(%eax)
 651:	0e                   	push   %cs
 652:	05 00 31 13 1c       	add    $0x1c133100,%eax
 657:	05 00 00 0f 0b       	add    $0xb0f0000,%eax
 65c:	01 55 06             	add    %edx,0x6(%ebp)
 65f:	00 00                	add    %al,(%eax)
 661:	10 34 00             	adc    %dh,(%eax,%eax,1)
 664:	31 13                	xor    %edx,(%ebx)
 666:	02 06                	add    (%esi),%al
 668:	00 00                	add    %al,(%eax)
 66a:	11 1d 01 31 13 11    	adc    %ebx,0x11133101
 670:	01 12                	add    %edx,(%edx)
 672:	01 58 0b             	add    %ebx,0xb(%eax)
 675:	59                   	pop    %ecx
 676:	0b 00                	or     (%eax),%eax
 678:	00 12                	add    %dl,(%edx)
 67a:	05 00 31 13 02       	add    $0x2133100,%eax
 67f:	0a 00                	or     (%eax),%al
 681:	00 13                	add    %dl,(%ebx)
 683:	05 00 31 13 1c       	add    $0x1c133100,%eax
 688:	0b 00                	or     (%eax),%eax
 68a:	00 14 1d 01 31 13 11 	add    %dl,0x11133101(,%ebx,1)
 691:	01 12                	add    %edx,(%edx)
 693:	01 58 0b             	add    %ebx,0xb(%eax)
 696:	59                   	pop    %ecx
 697:	0b 01                	or     (%ecx),%eax
 699:	13 00                	adc    (%eax),%eax
 69b:	00 15 05 00 31 13    	add    %dl,0x13310005
 6a1:	1c 0d                	sbb    $0xd,%al
 6a3:	00 00                	add    %al,(%eax)
 6a5:	16                   	push   %ss
 6a6:	2e 01 3f             	add    %edi,%cs:(%edi)
 6a9:	0c 03                	or     $0x3,%al
 6ab:	0e                   	push   %cs
 6ac:	3a 0b                	cmp    (%ebx),%cl
 6ae:	3b 0b                	cmp    (%ebx),%ecx
 6b0:	27                   	daa    
 6b1:	0c 49                	or     $0x49,%al
 6b3:	13 11                	adc    (%ecx),%edx
 6b5:	01 12                	add    %edx,(%edx)
 6b7:	01 40 06             	add    %eax,0x6(%eax)
 6ba:	01 13                	add    %edx,(%ebx)
 6bc:	00 00                	add    %al,(%eax)
 6be:	17                   	pop    %ss
 6bf:	18 00                	sbb    %al,(%eax)
 6c1:	00 00                	add    %al,(%eax)
 6c3:	18 34 00             	sbb    %dh,(%eax,%eax,1)
 6c6:	03 0e                	add    (%esi),%ecx
 6c8:	3a 0b                	cmp    (%ebx),%cl
 6ca:	3b 0b                	cmp    (%ebx),%ecx
 6cc:	49                   	dec    %ecx
 6cd:	13 02                	adc    (%edx),%eax
 6cf:	0a 00                	or     (%eax),%al
 6d1:	00 19                	add    %bl,(%ecx)
 6d3:	0f 00 0b             	str    (%ebx)
 6d6:	0b 49 13             	or     0x13(%ecx),%ecx
 6d9:	00 00                	add    %al,(%eax)
 6db:	1a 26                	sbb    (%esi),%ah
 6dd:	00 49 13             	add    %cl,0x13(%ecx)
 6e0:	00 00                	add    %al,(%eax)
 6e2:	1b 0f                	sbb    (%edi),%ecx
 6e4:	00 0b                	add    %cl,(%ebx)
 6e6:	0b 00                	or     (%eax),%eax
 6e8:	00 00                	add    %al,(%eax)
 6ea:	01 11                	add    %edx,(%ecx)
 6ec:	01 25 0e 13 0b 03    	add    %esp,0x30b130e
 6f2:	0e                   	push   %cs
 6f3:	1b 0e                	sbb    (%esi),%ecx
 6f5:	11 01                	adc    %eax,(%ecx)
 6f7:	12 01                	adc    (%ecx),%al
 6f9:	10 06                	adc    %al,(%esi)
 6fb:	00 00                	add    %al,(%eax)
 6fd:	02 16                	add    (%esi),%dl
 6ff:	00 03                	add    %al,(%ebx)
 701:	0e                   	push   %cs
 702:	3a 0b                	cmp    (%ebx),%cl
 704:	3b 0b                	cmp    (%ebx),%ecx
 706:	49                   	dec    %ecx
 707:	13 00                	adc    (%eax),%eax
 709:	00 03                	add    %al,(%ebx)
 70b:	24 00                	and    $0x0,%al
 70d:	0b 0b                	or     (%ebx),%ecx
 70f:	3e 0b 03             	or     %ds:(%ebx),%eax
 712:	0e                   	push   %cs
 713:	00 00                	add    %al,(%eax)
 715:	04 24                	add    $0x24,%al
 717:	00 0b                	add    %cl,(%ebx)
 719:	0b 3e                	or     (%esi),%edi
 71b:	0b 03                	or     (%ebx),%eax
 71d:	08 00                	or     %al,(%eax)
 71f:	00 05 16 00 03 08    	add    %al,0x8030016
 725:	3a 0b                	cmp    (%ebx),%cl
 727:	3b 0b                	cmp    (%ebx),%ecx
 729:	49                   	dec    %ecx
 72a:	13 00                	adc    (%eax),%eax
 72c:	00 06                	add    %al,(%esi)
 72e:	13 01                	adc    (%ecx),%eax
 730:	03 0e                	add    (%esi),%ecx
 732:	0b 0b                	or     (%ebx),%ecx
 734:	3a 0b                	cmp    (%ebx),%cl
 736:	3b 0b                	cmp    (%ebx),%ecx
 738:	01 13                	add    %edx,(%ebx)
 73a:	00 00                	add    %al,(%eax)
 73c:	07                   	pop    %es
 73d:	0d 00 03 0e 3a       	or     $0x3a0e0300,%eax
 742:	0b 3b                	or     (%ebx),%edi
 744:	0b 49 13             	or     0x13(%ecx),%ecx
 747:	0b 0b                	or     (%ebx),%ecx
 749:	0d 0b 0c 0b 38       	or     $0x380b0c0b,%eax
 74e:	0a 00                	or     (%eax),%al
 750:	00 08                	add    %cl,(%eax)
 752:	0d 00 03 08 3a       	or     $0x3a080300,%eax
 757:	0b 3b                	or     (%ebx),%edi
 759:	0b 49 13             	or     0x13(%ecx),%ecx
 75c:	0b 0b                	or     (%ebx),%ecx
 75e:	0d 0b 0c 0b 38       	or     $0x380b0c0b,%eax
 763:	0a 00                	or     (%eax),%al
 765:	00 09                	add    %cl,(%ecx)
 767:	13 01                	adc    (%ecx),%eax
 769:	03 08                	add    (%eax),%ecx
 76b:	0b 0b                	or     (%ebx),%ecx
 76d:	3a 0b                	cmp    (%ebx),%cl
 76f:	3b 0b                	cmp    (%ebx),%ecx
 771:	01 13                	add    %edx,(%ebx)
 773:	00 00                	add    %al,(%eax)
 775:	0a 0d 00 03 0e 3a    	or     0x3a0e0300,%cl
 77b:	0b 3b                	or     (%ebx),%edi
 77d:	0b 49 13             	or     0x13(%ecx),%ecx
 780:	38 0a                	cmp    %cl,(%edx)
 782:	00 00                	add    %al,(%eax)
 784:	0b 0d 00 03 08 3a    	or     0x3a080300,%ecx
 78a:	0b 3b                	or     (%ebx),%edi
 78c:	0b 49 13             	or     0x13(%ecx),%ecx
 78f:	38 0a                	cmp    %cl,(%edx)
 791:	00 00                	add    %al,(%eax)
 793:	0c 01                	or     $0x1,%al
 795:	01 49 13             	add    %ecx,0x13(%ecx)
 798:	01 13                	add    %edx,(%ebx)
 79a:	00 00                	add    %al,(%eax)
 79c:	0d 21 00 49 13       	or     $0x13490021,%eax
 7a1:	2f                   	das    
 7a2:	0b 00                	or     (%eax),%eax
 7a4:	00 0e                	add    %cl,(%esi)
 7a6:	2e 01 03             	add    %eax,%cs:(%ebx)
 7a9:	0e                   	push   %cs
 7aa:	3a 0b                	cmp    (%ebx),%cl
 7ac:	3b 0b                	cmp    (%ebx),%ecx
 7ae:	27                   	daa    
 7af:	0c 20                	or     $0x20,%al
 7b1:	0b 01                	or     (%ecx),%eax
 7b3:	13 00                	adc    (%eax),%eax
 7b5:	00 0f                	add    %cl,(%edi)
 7b7:	05 00 03 0e 3a       	add    $0x3a0e0300,%eax
 7bc:	0b 3b                	or     (%ebx),%edi
 7be:	0b 49 13             	or     0x13(%ecx),%ecx
 7c1:	00 00                	add    %al,(%eax)
 7c3:	10 0f                	adc    %cl,(%edi)
 7c5:	00 0b                	add    %cl,(%ebx)
 7c7:	0b 00                	or     (%eax),%eax
 7c9:	00 11                	add    %dl,(%ecx)
 7cb:	2e 01 03             	add    %eax,%cs:(%ebx)
 7ce:	0e                   	push   %cs
 7cf:	3a 0b                	cmp    (%ebx),%cl
 7d1:	3b 0b                	cmp    (%ebx),%ecx
 7d3:	27                   	daa    
 7d4:	0c 49                	or     $0x49,%al
 7d6:	13 20                	adc    (%eax),%esp
 7d8:	0b 01                	or     (%ecx),%eax
 7da:	13 00                	adc    (%eax),%eax
 7dc:	00 12                	add    %dl,(%edx)
 7de:	34 00                	xor    $0x0,%al
 7e0:	03 08                	add    (%eax),%ecx
 7e2:	3a 0b                	cmp    (%ebx),%cl
 7e4:	3b 0b                	cmp    (%ebx),%ecx
 7e6:	49                   	dec    %ecx
 7e7:	13 00                	adc    (%eax),%eax
 7e9:	00 13                	add    %dl,(%ebx)
 7eb:	35 00 49 13 00       	xor    $0x134900,%eax
 7f0:	00 14 05 00 03 08 3a 	add    %dl,0x3a080300(,%eax,1)
 7f7:	0b 3b                	or     (%ebx),%edi
 7f9:	0b 49 13             	or     0x13(%ecx),%ecx
 7fc:	00 00                	add    %al,(%eax)
 7fe:	15 34 00 03 0e       	adc    $0xe030034,%eax
 803:	3a 0b                	cmp    (%ebx),%cl
 805:	3b 0b                	cmp    (%ebx),%ecx
 807:	49                   	dec    %ecx
 808:	13 00                	adc    (%eax),%eax
 80a:	00 16                	add    %dl,(%esi)
 80c:	0f 00 0b             	str    (%ebx)
 80f:	0b 49 13             	or     0x13(%ecx),%ecx
 812:	00 00                	add    %al,(%eax)
 814:	17                   	pop    %ss
 815:	2e 01 3f             	add    %edi,%cs:(%edi)
 818:	0c 03                	or     $0x3,%al
 81a:	0e                   	push   %cs
 81b:	3a 0b                	cmp    (%ebx),%cl
 81d:	3b 0b                	cmp    (%ebx),%ecx
 81f:	27                   	daa    
 820:	0c 11                	or     $0x11,%al
 822:	01 12                	add    %edx,(%edx)
 824:	01 40 06             	add    %eax,0x6(%eax)
 827:	01 13                	add    %edx,(%ebx)
 829:	00 00                	add    %al,(%eax)
 82b:	18 34 00             	sbb    %dh,(%eax,%eax,1)
 82e:	03 08                	add    (%eax),%ecx
 830:	3a 0b                	cmp    (%ebx),%cl
 832:	3b 0b                	cmp    (%ebx),%ecx
 834:	49                   	dec    %ecx
 835:	13 02                	adc    (%edx),%eax
 837:	06                   	push   %es
 838:	00 00                	add    %al,(%eax)
 83a:	19 34 00             	sbb    %esi,(%eax,%eax,1)
 83d:	03 0e                	add    (%esi),%ecx
 83f:	3a 0b                	cmp    (%ebx),%cl
 841:	3b 0b                	cmp    (%ebx),%ecx
 843:	49                   	dec    %ecx
 844:	13 02                	adc    (%edx),%eax
 846:	06                   	push   %es
 847:	00 00                	add    %al,(%eax)
 849:	1a 1d 01 31 13 11    	sbb    0x11133101,%bl
 84f:	01 12                	add    %edx,(%edx)
 851:	01 58 0b             	add    %ebx,0xb(%eax)
 854:	59                   	pop    %ecx
 855:	0b 01                	or     (%ecx),%eax
 857:	13 00                	adc    (%eax),%eax
 859:	00 1b                	add    %bl,(%ebx)
 85b:	05 00 31 13 02       	add    $0x2133100,%eax
 860:	0a 00                	or     (%eax),%al
 862:	00 1c 0b             	add    %bl,(%ebx,%ecx,1)
 865:	01 11                	add    %edx,(%ecx)
 867:	01 12                	add    %edx,(%edx)
 869:	01 00                	add    %eax,(%eax)
 86b:	00 1d 34 00 31 13    	add    %bl,0x13310034
 871:	02 0a                	add    (%edx),%cl
 873:	00 00                	add    %al,(%eax)
 875:	1e                   	push   %ds
 876:	1d 01 31 13 11       	sbb    $0x11133101,%eax
 87b:	01 12                	add    %edx,(%edx)
 87d:	01 58 0b             	add    %ebx,0xb(%eax)
 880:	59                   	pop    %ecx
 881:	0b 00                	or     (%eax),%eax
 883:	00 1f                	add    %bl,(%edi)
 885:	05 00 31 13 02       	add    $0x2133100,%eax
 88a:	06                   	push   %es
 88b:	00 00                	add    %al,(%eax)
 88d:	20 1d 01 31 13 52    	and    %bl,0x52133101
 893:	01 55 06             	add    %edx,0x6(%ebp)
 896:	58                   	pop    %eax
 897:	0b 59 0b             	or     0xb(%ecx),%ebx
 89a:	00 00                	add    %al,(%eax)
 89c:	21 05 00 31 13 1c    	and    %eax,0x1c133100
 8a2:	0b 00                	or     (%eax),%eax
 8a4:	00 22                	add    %ah,(%edx)
 8a6:	0b 01                	or     (%ecx),%eax
 8a8:	55                   	push   %ebp
 8a9:	06                   	push   %es
 8aa:	00 00                	add    %al,(%eax)
 8ac:	23 21                	and    (%ecx),%esp
 8ae:	00 49 13             	add    %cl,0x13(%ecx)
 8b1:	2f                   	das    
 8b2:	05 00 00 24 34       	add    $0x34240000,%eax
 8b7:	00 03                	add    %al,(%ebx)
 8b9:	0e                   	push   %cs
 8ba:	3a 0b                	cmp    (%ebx),%cl
 8bc:	3b 0b                	cmp    (%ebx),%ecx
 8be:	49                   	dec    %ecx
 8bf:	13 3f                	adc    (%edi),%edi
 8c1:	0c 02                	or     $0x2,%al
 8c3:	0a 00                	or     (%eax),%al
 8c5:	00 25 34 00 03 08    	add    %ah,0x8030034
 8cb:	3a 0b                	cmp    (%ebx),%cl
 8cd:	3b 0b                	cmp    (%ebx),%ecx
 8cf:	49                   	dec    %ecx
 8d0:	13 3f                	adc    (%edi),%edi
 8d2:	0c 02                	or     $0x2,%al
 8d4:	0a 00                	or     (%eax),%al
 8d6:	00 00                	add    %al,(%eax)
 8d8:	01 11                	add    %edx,(%ecx)
 8da:	01 25 0e 13 0b 03    	add    %esp,0x30b130e
 8e0:	0e                   	push   %cs
 8e1:	1b 0e                	sbb    (%esi),%ecx
 8e3:	11 01                	adc    %eax,(%ecx)
 8e5:	12 01                	adc    (%ecx),%al
 8e7:	10 06                	adc    %al,(%esi)
 8e9:	00 00                	add    %al,(%eax)
 8eb:	02 16                	add    (%esi),%dl
 8ed:	00 03                	add    %al,(%ebx)
 8ef:	0e                   	push   %cs
 8f0:	3a 0b                	cmp    (%ebx),%cl
 8f2:	3b 0b                	cmp    (%ebx),%ecx
 8f4:	49                   	dec    %ecx
 8f5:	13 00                	adc    (%eax),%eax
 8f7:	00 03                	add    %al,(%ebx)
 8f9:	24 00                	and    $0x0,%al
 8fb:	0b 0b                	or     (%ebx),%ecx
 8fd:	3e 0b 03             	or     %ds:(%ebx),%eax
 900:	0e                   	push   %cs
 901:	00 00                	add    %al,(%eax)
 903:	04 24                	add    $0x24,%al
 905:	00 0b                	add    %cl,(%ebx)
 907:	0b 3e                	or     (%esi),%edi
 909:	0b 03                	or     (%ebx),%eax
 90b:	08 00                	or     %al,(%eax)
 90d:	00 05 13 01 03 0e    	add    %al,0xe030113
 913:	0b 0b                	or     (%ebx),%ecx
 915:	3a 0b                	cmp    (%ebx),%cl
 917:	3b 0b                	cmp    (%ebx),%ecx
 919:	01 13                	add    %edx,(%ebx)
 91b:	00 00                	add    %al,(%eax)
 91d:	06                   	push   %es
 91e:	0d 00 03 0e 3a       	or     $0x3a0e0300,%eax
 923:	0b 3b                	or     (%ebx),%edi
 925:	0b 49 13             	or     0x13(%ecx),%ecx
 928:	38 0a                	cmp    %cl,(%edx)
 92a:	00 00                	add    %al,(%eax)
 92c:	07                   	pop    %es
 92d:	0f 00 0b             	str    (%ebx)
 930:	0b 49 13             	or     0x13(%ecx),%ecx
 933:	00 00                	add    %al,(%eax)
 935:	08 2e                	or     %ch,(%esi)
 937:	01 03                	add    %eax,(%ebx)
 939:	0e                   	push   %cs
 93a:	3a 0b                	cmp    (%ebx),%cl
 93c:	3b 0b                	cmp    (%ebx),%ecx
 93e:	27                   	daa    
 93f:	0c 49                	or     $0x49,%al
 941:	13 20                	adc    (%eax),%esp
 943:	0b 01                	or     (%ecx),%eax
 945:	13 00                	adc    (%eax),%eax
 947:	00 09                	add    %cl,(%ecx)
 949:	34 00                	xor    $0x0,%al
 94b:	03 0e                	add    (%esi),%ecx
 94d:	3a 0b                	cmp    (%ebx),%cl
 94f:	3b 0b                	cmp    (%ebx),%ecx
 951:	49                   	dec    %ecx
 952:	13 00                	adc    (%eax),%eax
 954:	00 0a                	add    %cl,(%edx)
 956:	35 00 49 13 00       	xor    $0x134900,%eax
 95b:	00 0b                	add    %cl,(%ebx)
 95d:	2e 00 03             	add    %al,%cs:(%ebx)
 960:	08 3a                	or     %bh,(%edx)
 962:	0b 3b                	or     (%ebx),%edi
 964:	0b 27                	or     (%edi),%esp
 966:	0c 20                	or     $0x20,%al
 968:	0b 00                	or     (%eax),%eax
 96a:	00 0c 2e             	add    %cl,(%esi,%ebp,1)
 96d:	00 03                	add    %al,(%ebx)
 96f:	0e                   	push   %cs
 970:	3a 0b                	cmp    (%ebx),%cl
 972:	3b 0b                	cmp    (%ebx),%ecx
 974:	20 0b                	and    %cl,(%ebx)
 976:	00 00                	add    %al,(%eax)
 978:	0d 2e 01 3f 0c       	or     $0xc3f012e,%eax
 97d:	03 0e                	add    (%esi),%ecx
 97f:	3a 0b                	cmp    (%ebx),%cl
 981:	3b 0b                	cmp    (%ebx),%ecx
 983:	27                   	daa    
 984:	0c 11                	or     $0x11,%al
 986:	01 12                	add    %edx,(%edx)
 988:	01 40 06             	add    %eax,0x6(%eax)
 98b:	01 13                	add    %edx,(%ebx)
 98d:	00 00                	add    %al,(%eax)
 98f:	0e                   	push   %cs
 990:	34 00                	xor    $0x0,%al
 992:	03 08                	add    (%eax),%ecx
 994:	3a 0b                	cmp    (%ebx),%cl
 996:	3b 0b                	cmp    (%ebx),%ecx
 998:	49                   	dec    %ecx
 999:	13 02                	adc    (%edx),%eax
 99b:	06                   	push   %es
 99c:	00 00                	add    %al,(%eax)
 99e:	0f 1d 01             	nopl   (%ecx)
 9a1:	31 13                	xor    %edx,(%ebx)
 9a3:	11 01                	adc    %eax,(%ecx)
 9a5:	12 01                	adc    (%ecx),%al
 9a7:	58                   	pop    %eax
 9a8:	0b 59 0b             	or     0xb(%ecx),%ebx
 9ab:	01 13                	add    %edx,(%ebx)
 9ad:	00 00                	add    %al,(%eax)
 9af:	10 0b                	adc    %cl,(%ebx)
 9b1:	01 11                	add    %edx,(%ecx)
 9b3:	01 12                	add    %edx,(%edx)
 9b5:	01 00                	add    %eax,(%eax)
 9b7:	00 11                	add    %dl,(%ecx)
 9b9:	34 00                	xor    $0x0,%al
 9bb:	31 13                	xor    %edx,(%ebx)
 9bd:	02 0a                	add    (%edx),%cl
 9bf:	00 00                	add    %al,(%eax)
 9c1:	12 1d 01 31 13 11    	adc    0x11133101,%bl
 9c7:	01 12                	add    %edx,(%edx)
 9c9:	01 58 0b             	add    %ebx,0xb(%eax)
 9cc:	59                   	pop    %ecx
 9cd:	0b 00                	or     (%eax),%eax
 9cf:	00 13                	add    %dl,(%ebx)
 9d1:	2e 00 3f             	add    %bh,%cs:(%edi)
 9d4:	0c 03                	or     $0x3,%al
 9d6:	0e                   	push   %cs
 9d7:	3a 0b                	cmp    (%ebx),%cl
 9d9:	3b 0b                	cmp    (%ebx),%ecx
 9db:	27                   	daa    
 9dc:	0c 11                	or     $0x11,%al
 9de:	01 12                	add    %edx,(%edx)
 9e0:	01 40 06             	add    %eax,0x6(%eax)
 9e3:	00 00                	add    %al,(%eax)
 9e5:	14 1d                	adc    $0x1d,%al
 9e7:	00 31                	add    %dh,(%ecx)
 9e9:	13 11                	adc    (%ecx),%edx
 9eb:	01 12                	add    %edx,(%edx)
 9ed:	01 58 0b             	add    %ebx,0xb(%eax)
 9f0:	59                   	pop    %ecx
 9f1:	0b 00                	or     (%eax),%eax
 9f3:	00 15 34 00 03 0e    	add    %dl,0xe030034
 9f9:	3a 0b                	cmp    (%ebx),%cl
 9fb:	3b 0b                	cmp    (%ebx),%ecx
 9fd:	49                   	dec    %ecx
 9fe:	13 02                	adc    (%edx),%eax
 a00:	0a 00                	or     (%eax),%al
 a02:	00 16                	add    %dl,(%esi)
 a04:	15 00 27 0c 00       	adc    $0xc2700,%eax
 a09:	00 17                	add    %dl,(%edi)
 a0b:	01 01                	add    %eax,(%ecx)
 a0d:	49                   	dec    %ecx
 a0e:	13 01                	adc    (%ecx),%eax
 a10:	13 00                	adc    (%eax),%eax
 a12:	00 18                	add    %bl,(%eax)
 a14:	21 00                	and    %eax,(%eax)
 a16:	49                   	dec    %ecx
 a17:	13 2f                	adc    (%edi),%ebp
 a19:	0b 00                	or     (%eax),%eax
 a1b:	00 19                	add    %bl,(%ecx)
 a1d:	34 00                	xor    $0x0,%al
 a1f:	03 08                	add    (%eax),%ecx
 a21:	3a 0b                	cmp    (%ebx),%cl
 a23:	3b 0b                	cmp    (%ebx),%ecx
 a25:	49                   	dec    %ecx
 a26:	13 3f                	adc    (%edi),%edi
 a28:	0c 02                	or     $0x2,%al
 a2a:	0a 00                	or     (%eax),%al
 a2c:	00 1a                	add    %bl,(%edx)
 a2e:	34 00                	xor    $0x0,%al
 a30:	03 0e                	add    (%esi),%ecx
 a32:	3a 0b                	cmp    (%ebx),%cl
 a34:	3b 0b                	cmp    (%ebx),%ecx
 a36:	49                   	dec    %ecx
 a37:	13 3f                	adc    (%edi),%edi
 a39:	0c 02                	or     $0x2,%al
 a3b:	0a 00                	or     (%eax),%al
 a3d:	00 00                	add    %al,(%eax)
 a3f:	01 11                	add    %edx,(%ecx)
 a41:	01 25 0e 13 0b 03    	add    %esp,0x30b130e
 a47:	0e                   	push   %cs
 a48:	1b 0e                	sbb    (%esi),%ecx
 a4a:	11 01                	adc    %eax,(%ecx)
 a4c:	12 01                	adc    (%ecx),%al
 a4e:	10 06                	adc    %al,(%esi)
 a50:	00 00                	add    %al,(%eax)
 a52:	02 16                	add    (%esi),%dl
 a54:	00 03                	add    %al,(%ebx)
 a56:	0e                   	push   %cs
 a57:	3a 0b                	cmp    (%ebx),%cl
 a59:	3b 0b                	cmp    (%ebx),%ecx
 a5b:	49                   	dec    %ecx
 a5c:	13 00                	adc    (%eax),%eax
 a5e:	00 03                	add    %al,(%ebx)
 a60:	24 00                	and    $0x0,%al
 a62:	0b 0b                	or     (%ebx),%ecx
 a64:	3e 0b 03             	or     %ds:(%ebx),%eax
 a67:	0e                   	push   %cs
 a68:	00 00                	add    %al,(%eax)
 a6a:	04 24                	add    $0x24,%al
 a6c:	00 0b                	add    %cl,(%ebx)
 a6e:	0b 3e                	or     (%esi),%edi
 a70:	0b 03                	or     (%ebx),%eax
 a72:	08 00                	or     %al,(%eax)
 a74:	00 05 13 01 03 0e    	add    %al,0xe030113
 a7a:	0b 0b                	or     (%ebx),%ecx
 a7c:	3a 0b                	cmp    (%ebx),%cl
 a7e:	3b 0b                	cmp    (%ebx),%ecx
 a80:	01 13                	add    %edx,(%ebx)
 a82:	00 00                	add    %al,(%eax)
 a84:	06                   	push   %es
 a85:	0d 00 03 0e 3a       	or     $0x3a0e0300,%eax
 a8a:	0b 3b                	or     (%ebx),%edi
 a8c:	0b 49 13             	or     0x13(%ecx),%ecx
 a8f:	0b 0b                	or     (%ebx),%ecx
 a91:	0d 0b 0c 0b 38       	or     $0x380b0c0b,%eax
 a96:	0a 00                	or     (%eax),%al
 a98:	00 07                	add    %al,(%edi)
 a9a:	0d 00 03 08 3a       	or     $0x3a080300,%eax
 a9f:	0b 3b                	or     (%ebx),%edi
 aa1:	0b 49 13             	or     0x13(%ecx),%ecx
 aa4:	0b 0b                	or     (%ebx),%ecx
 aa6:	0d 0b 0c 0b 38       	or     $0x380b0c0b,%eax
 aab:	0a 00                	or     (%eax),%al
 aad:	00 08                	add    %cl,(%eax)
 aaf:	2e 01 03             	add    %eax,%cs:(%ebx)
 ab2:	0e                   	push   %cs
 ab3:	3a 0b                	cmp    (%ebx),%cl
 ab5:	3b 0b                	cmp    (%ebx),%ecx
 ab7:	27                   	daa    
 ab8:	0c 20                	or     $0x20,%al
 aba:	0b 01                	or     (%ecx),%eax
 abc:	13 00                	adc    (%eax),%eax
 abe:	00 09                	add    %cl,(%ecx)
 ac0:	05 00 03 08 3a       	add    $0x3a080300,%eax
 ac5:	0b 3b                	or     (%ebx),%edi
 ac7:	0b 49 13             	or     0x13(%ecx),%ecx
 aca:	00 00                	add    %al,(%eax)
 acc:	0a 05 00 03 0e 3a    	or     0x3a0e0300,%al
 ad2:	0b 3b                	or     (%ebx),%edi
 ad4:	0b 49 13             	or     0x13(%ecx),%ecx
 ad7:	00 00                	add    %al,(%eax)
 ad9:	0b 34 00             	or     (%eax,%eax,1),%esi
 adc:	03 0e                	add    (%esi),%ecx
 ade:	3a 0b                	cmp    (%ebx),%cl
 ae0:	3b 0b                	cmp    (%ebx),%ecx
 ae2:	49                   	dec    %ecx
 ae3:	13 00                	adc    (%eax),%eax
 ae5:	00 0c 0f             	add    %cl,(%edi,%ecx,1)
 ae8:	00 0b                	add    %cl,(%ebx)
 aea:	0b 49 13             	or     0x13(%ecx),%ecx
 aed:	00 00                	add    %al,(%eax)
 aef:	0d 01 01 49 13       	or     $0x13490101,%eax
 af4:	01 13                	add    %edx,(%ebx)
 af6:	00 00                	add    %al,(%eax)
 af8:	0e                   	push   %cs
 af9:	21 00                	and    %eax,(%eax)
 afb:	49                   	dec    %ecx
 afc:	13 2f                	adc    (%edi),%ebp
 afe:	0b 00                	or     (%eax),%eax
 b00:	00 0f                	add    %cl,(%edi)
 b02:	35 00 49 13 00       	xor    $0x134900,%eax
 b07:	00 10                	add    %dl,(%eax)
 b09:	2e 01 3f             	add    %edi,%cs:(%edi)
 b0c:	0c 03                	or     $0x3,%al
 b0e:	0e                   	push   %cs
 b0f:	3a 0b                	cmp    (%ebx),%cl
 b11:	3b 0b                	cmp    (%ebx),%ecx
 b13:	27                   	daa    
 b14:	0c 11                	or     $0x11,%al
 b16:	01 12                	add    %edx,(%edx)
 b18:	01 40 06             	add    %eax,0x6(%eax)
 b1b:	01 13                	add    %edx,(%ebx)
 b1d:	00 00                	add    %al,(%eax)
 b1f:	11 34 00             	adc    %esi,(%eax,%eax,1)
 b22:	03 08                	add    (%eax),%ecx
 b24:	3a 0b                	cmp    (%ebx),%cl
 b26:	3b 0b                	cmp    (%ebx),%ecx
 b28:	49                   	dec    %ecx
 b29:	13 02                	adc    (%edx),%eax
 b2b:	06                   	push   %es
 b2c:	00 00                	add    %al,(%eax)
 b2e:	12 1d 01 31 13 52    	adc    0x52133101,%bl
 b34:	01 55 06             	add    %edx,0x6(%ebp)
 b37:	58                   	pop    %eax
 b38:	0b 59 0b             	or     0xb(%ecx),%ebx
 b3b:	00 00                	add    %al,(%eax)
 b3d:	13 05 00 31 13 1c    	adc    0x1c133100,%eax
 b43:	05 00 00 14 05       	add    $0x5140000,%eax
 b48:	00 31                	add    %dh,(%ecx)
 b4a:	13 02                	adc    (%edx),%eax
 b4c:	0a 00                	or     (%eax),%al
 b4e:	00 15 0b 01 55 06    	add    %dl,0x655010b
 b54:	00 00                	add    %al,(%eax)
 b56:	16                   	push   %ss
 b57:	34 00                	xor    $0x0,%al
 b59:	31 13                	xor    %edx,(%ebx)
 b5b:	02 0a                	add    (%edx),%cl
 b5d:	00 00                	add    %al,(%eax)
 b5f:	17                   	pop    %ss
 b60:	34 00                	xor    $0x0,%al
 b62:	03 08                	add    (%eax),%ecx
 b64:	3a 0b                	cmp    (%ebx),%cl
 b66:	3b 0b                	cmp    (%ebx),%ecx
 b68:	49                   	dec    %ecx
 b69:	13 3f                	adc    (%edi),%edi
 b6b:	0c 02                	or     $0x2,%al
 b6d:	0a 00                	or     (%eax),%al
 b6f:	00 00                	add    %al,(%eax)
 b71:	01 11                	add    %edx,(%ecx)
 b73:	01 25 0e 13 0b 03    	add    %esp,0x30b130e
 b79:	0e                   	push   %cs
 b7a:	1b 0e                	sbb    (%esi),%ecx
 b7c:	11 01                	adc    %eax,(%ecx)
 b7e:	12 01                	adc    (%ecx),%al
 b80:	10 06                	adc    %al,(%esi)
 b82:	00 00                	add    %al,(%eax)
 b84:	02 16                	add    (%esi),%dl
 b86:	00 03                	add    %al,(%ebx)
 b88:	0e                   	push   %cs
 b89:	3a 0b                	cmp    (%ebx),%cl
 b8b:	3b 0b                	cmp    (%ebx),%ecx
 b8d:	49                   	dec    %ecx
 b8e:	13 00                	adc    (%eax),%eax
 b90:	00 03                	add    %al,(%ebx)
 b92:	24 00                	and    $0x0,%al
 b94:	0b 0b                	or     (%ebx),%ecx
 b96:	3e 0b 03             	or     %ds:(%ebx),%eax
 b99:	0e                   	push   %cs
 b9a:	00 00                	add    %al,(%eax)
 b9c:	04 24                	add    $0x24,%al
 b9e:	00 0b                	add    %cl,(%ebx)
 ba0:	0b 3e                	or     (%esi),%edi
 ba2:	0b 03                	or     (%ebx),%eax
 ba4:	08 00                	or     %al,(%eax)
 ba6:	00 05 13 01 03 0e    	add    %al,0xe030113
 bac:	0b 0b                	or     (%ebx),%ecx
 bae:	3a 0b                	cmp    (%ebx),%cl
 bb0:	3b 0b                	cmp    (%ebx),%ecx
 bb2:	01 13                	add    %edx,(%ebx)
 bb4:	00 00                	add    %al,(%eax)
 bb6:	06                   	push   %es
 bb7:	0d 00 03 08 3a       	or     $0x3a080300,%eax
 bbc:	0b 3b                	or     (%ebx),%edi
 bbe:	0b 49 13             	or     0x13(%ecx),%ecx
 bc1:	38 0a                	cmp    %cl,(%edx)
 bc3:	00 00                	add    %al,(%eax)
 bc5:	07                   	pop    %es
 bc6:	0d 00 03 0e 3a       	or     $0x3a0e0300,%eax
 bcb:	0b 3b                	or     (%ebx),%edi
 bcd:	0b 49 13             	or     0x13(%ecx),%ecx
 bd0:	38 0a                	cmp    %cl,(%edx)
 bd2:	00 00                	add    %al,(%eax)
 bd4:	08 0f                	or     %cl,(%edi)
 bd6:	00 0b                	add    %cl,(%ebx)
 bd8:	0b 49 13             	or     0x13(%ecx),%ecx
 bdb:	00 00                	add    %al,(%eax)
 bdd:	09 13                	or     %edx,(%ebx)
 bdf:	01 03                	add    %eax,(%ebx)
 be1:	08 0b                	or     %cl,(%ebx)
 be3:	05 3a 0b 3b 0b       	add    $0xb3b0b3a,%eax
 be8:	01 13                	add    %edx,(%ebx)
 bea:	00 00                	add    %al,(%eax)
 bec:	0a 01                	or     (%ecx),%al
 bee:	01 49 13             	add    %ecx,0x13(%ecx)
 bf1:	01 13                	add    %edx,(%ebx)
 bf3:	00 00                	add    %al,(%eax)
 bf5:	0b 21                	or     (%ecx),%esp
 bf7:	00 49 13             	add    %cl,0x13(%ecx)
 bfa:	2f                   	das    
 bfb:	05 00 00 0c 2e       	add    $0x2e0c0000,%eax
 c00:	00 03                	add    %al,(%ebx)
 c02:	08 3a                	or     %bh,(%edx)
 c04:	0b 3b                	or     (%ebx),%edi
 c06:	0b 27                	or     (%edi),%esp
 c08:	0c 20                	or     $0x20,%al
 c0a:	0b 00                	or     (%eax),%eax
 c0c:	00 0d 2e 01 3f 0c    	add    %cl,0xc3f012e
 c12:	03 0e                	add    (%esi),%ecx
 c14:	3a 0b                	cmp    (%ebx),%cl
 c16:	3b 0b                	cmp    (%ebx),%ecx
 c18:	27                   	daa    
 c19:	0c 11                	or     $0x11,%al
 c1b:	01 12                	add    %edx,(%edx)
 c1d:	01 40 06             	add    %eax,0x6(%eax)
 c20:	01 13                	add    %edx,(%ebx)
 c22:	00 00                	add    %al,(%eax)
 c24:	0e                   	push   %cs
 c25:	05 00 03 08 3a       	add    $0x3a080300,%eax
 c2a:	0b 3b                	or     (%ebx),%edi
 c2c:	0b 49 13             	or     0x13(%ecx),%ecx
 c2f:	02 0a                	add    (%edx),%cl
 c31:	00 00                	add    %al,(%eax)
 c33:	0f 34                	sysenter 
 c35:	00 03                	add    %al,(%ebx)
 c37:	08 3a                	or     %bh,(%edx)
 c39:	0b 3b                	or     (%ebx),%edi
 c3b:	0b 49 13             	or     0x13(%ecx),%ecx
 c3e:	02 06                	add    (%esi),%al
 c40:	00 00                	add    %al,(%eax)
 c42:	10 1d 00 31 13 11    	adc    %bl,0x11133100
 c48:	01 12                	add    %edx,(%edx)
 c4a:	01 58 0b             	add    %ebx,0xb(%eax)
 c4d:	59                   	pop    %ecx
 c4e:	0b 00                	or     (%eax),%eax
 c50:	00 11                	add    %dl,(%ecx)
 c52:	34 00                	xor    $0x0,%al
 c54:	03 0e                	add    (%esi),%ecx
 c56:	3a 0b                	cmp    (%ebx),%cl
 c58:	3b 0b                	cmp    (%ebx),%ecx
 c5a:	49                   	dec    %ecx
 c5b:	13 3f                	adc    (%edi),%edi
 c5d:	0c 3c                	or     $0x3c,%al
 c5f:	0c 00                	or     $0x0,%al
 c61:	00 00                	add    %al,(%eax)
 c63:	01 11                	add    %edx,(%ecx)
 c65:	01 25 0e 13 0b 03    	add    %esp,0x30b130e
 c6b:	0e                   	push   %cs
 c6c:	1b 0e                	sbb    (%esi),%ecx
 c6e:	11 01                	adc    %eax,(%ecx)
 c70:	12 01                	adc    (%ecx),%al
 c72:	10 06                	adc    %al,(%esi)
 c74:	00 00                	add    %al,(%eax)
 c76:	02 24 00             	add    (%eax,%eax,1),%ah
 c79:	0b 0b                	or     (%ebx),%ecx
 c7b:	3e 0b 03             	or     %ds:(%ebx),%eax
 c7e:	0e                   	push   %cs
 c7f:	00 00                	add    %al,(%eax)
 c81:	03 24 00             	add    (%eax,%eax,1),%esp
 c84:	0b 0b                	or     (%ebx),%ecx
 c86:	3e 0b 03             	or     %ds:(%ebx),%eax
 c89:	08 00                	or     %al,(%eax)
 c8b:	00 04 16             	add    %al,(%esi,%edx,1)
 c8e:	00 03                	add    %al,(%ebx)
 c90:	0e                   	push   %cs
 c91:	3a 0b                	cmp    (%ebx),%cl
 c93:	3b 0b                	cmp    (%ebx),%ecx
 c95:	49                   	dec    %ecx
 c96:	13 00                	adc    (%eax),%eax
 c98:	00 05 2e 01 03 0e    	add    %al,0xe03012e
 c9e:	3a 0b                	cmp    (%ebx),%cl
 ca0:	3b 0b                	cmp    (%ebx),%ecx
 ca2:	27                   	daa    
 ca3:	0c 20                	or     $0x20,%al
 ca5:	0b 01                	or     (%ecx),%eax
 ca7:	13 00                	adc    (%eax),%eax
 ca9:	00 06                	add    %al,(%esi)
 cab:	05 00 03 0e 3a       	add    $0x3a0e0300,%eax
 cb0:	0b 3b                	or     (%ebx),%edi
 cb2:	0b 49 13             	or     0x13(%ecx),%ecx
 cb5:	00 00                	add    %al,(%eax)
 cb7:	07                   	pop    %es
 cb8:	2e 01 3f             	add    %edi,%cs:(%edi)
 cbb:	0c 03                	or     $0x3,%al
 cbd:	0e                   	push   %cs
 cbe:	3a 0b                	cmp    (%ebx),%cl
 cc0:	3b 0b                	cmp    (%ebx),%ecx
 cc2:	27                   	daa    
 cc3:	0c 11                	or     $0x11,%al
 cc5:	01 12                	add    %edx,(%edx)
 cc7:	01 40 06             	add    %eax,0x6(%eax)
 cca:	00 00                	add    %al,(%eax)
 ccc:	08 1d 01 31 13 52    	or     %bl,0x52133101
 cd2:	01 55 06             	add    %edx,0x6(%ebp)
 cd5:	58                   	pop    %eax
 cd6:	0b 59 0b             	or     0xb(%ecx),%ebx
 cd9:	01 13                	add    %edx,(%ebx)
 cdb:	00 00                	add    %al,(%eax)
 cdd:	09 05 00 31 13 1c    	or     %eax,0x1c133100
 ce3:	0d 00 00 0a 05       	or     $0x50a0000,%eax
 ce8:	00 31                	add    %dh,(%ecx)
 cea:	13 1c 0b             	adc    (%ebx,%ecx,1),%ebx
 ced:	00 00                	add    %al,(%eax)
 cef:	0b 1d 01 31 13 11    	or     0x11133101,%ebx
 cf5:	01 12                	add    %edx,(%edx)
 cf7:	01 58 0b             	add    %ebx,0xb(%eax)
 cfa:	59                   	pop    %ecx
 cfb:	0b 01                	or     (%ecx),%eax
 cfd:	13 00                	adc    (%eax),%eax
 cff:	00 0c 1d 01 31 13 11 	add    %cl,0x11133101(,%ebx,1)
 d06:	01 12                	add    %edx,(%edx)
 d08:	01 58 0b             	add    %ebx,0xb(%eax)
 d0b:	59                   	pop    %ecx
 d0c:	0b 00                	or     (%eax),%eax
 d0e:	00 00                	add    %al,(%eax)
 d10:	01 11                	add    %edx,(%ecx)
 d12:	01 25 0e 13 0b 03    	add    %esp,0x30b130e
 d18:	0e                   	push   %cs
 d19:	1b 0e                	sbb    (%esi),%ecx
 d1b:	11 01                	adc    %eax,(%ecx)
 d1d:	12 01                	adc    (%ecx),%al
 d1f:	10 06                	adc    %al,(%esi)
 d21:	00 00                	add    %al,(%eax)
 d23:	02 16                	add    (%esi),%dl
 d25:	00 03                	add    %al,(%ebx)
 d27:	0e                   	push   %cs
 d28:	3a 0b                	cmp    (%ebx),%cl
 d2a:	3b 0b                	cmp    (%ebx),%ecx
 d2c:	49                   	dec    %ecx
 d2d:	13 00                	adc    (%eax),%eax
 d2f:	00 03                	add    %al,(%ebx)
 d31:	24 00                	and    $0x0,%al
 d33:	0b 0b                	or     (%ebx),%ecx
 d35:	3e 0b 03             	or     %ds:(%ebx),%eax
 d38:	0e                   	push   %cs
 d39:	00 00                	add    %al,(%eax)
 d3b:	04 24                	add    $0x24,%al
 d3d:	00 0b                	add    %cl,(%ebx)
 d3f:	0b 3e                	or     (%esi),%edi
 d41:	0b 03                	or     (%ebx),%eax
 d43:	08 00                	or     %al,(%eax)
 d45:	00 05 13 01 03 0e    	add    %al,0xe030113
 d4b:	0b 0b                	or     (%ebx),%ecx
 d4d:	3a 0b                	cmp    (%ebx),%cl
 d4f:	3b 0b                	cmp    (%ebx),%ecx
 d51:	01 13                	add    %edx,(%ebx)
 d53:	00 00                	add    %al,(%eax)
 d55:	06                   	push   %es
 d56:	0d 00 03 08 3a       	or     $0x3a080300,%eax
 d5b:	0b 3b                	or     (%ebx),%edi
 d5d:	0b 49 13             	or     0x13(%ecx),%ecx
 d60:	38 0a                	cmp    %cl,(%edx)
 d62:	00 00                	add    %al,(%eax)
 d64:	07                   	pop    %es
 d65:	0d 00 03 0e 3a       	or     $0x3a0e0300,%eax
 d6a:	0b 3b                	or     (%ebx),%edi
 d6c:	0b 49 13             	or     0x13(%ecx),%ecx
 d6f:	38 0a                	cmp    %cl,(%edx)
 d71:	00 00                	add    %al,(%eax)
 d73:	08 0f                	or     %cl,(%edi)
 d75:	00 0b                	add    %cl,(%ebx)
 d77:	0b 49 13             	or     0x13(%ecx),%ecx
 d7a:	00 00                	add    %al,(%eax)
 d7c:	09 13                	or     %edx,(%ebx)
 d7e:	01 03                	add    %eax,(%ebx)
 d80:	08 0b                	or     %cl,(%ebx)
 d82:	05 3a 0b 3b 0b       	add    $0xb3b0b3a,%eax
 d87:	01 13                	add    %edx,(%ebx)
 d89:	00 00                	add    %al,(%eax)
 d8b:	0a 01                	or     (%ecx),%al
 d8d:	01 49 13             	add    %ecx,0x13(%ecx)
 d90:	01 13                	add    %edx,(%ebx)
 d92:	00 00                	add    %al,(%eax)
 d94:	0b 21                	or     (%ecx),%esp
 d96:	00 49 13             	add    %cl,0x13(%ecx)
 d99:	2f                   	das    
 d9a:	05 00 00 0c 16       	add    $0x160c0000,%eax
 d9f:	00 03                	add    %al,(%ebx)
 da1:	08 3a                	or     %bh,(%edx)
 da3:	0b 3b                	or     (%ebx),%edi
 da5:	0b 49 13             	or     0x13(%ecx),%ecx
 da8:	00 00                	add    %al,(%eax)
 daa:	0d 2e 01 03 0e       	or     $0xe03012e,%eax
 daf:	3a 0b                	cmp    (%ebx),%cl
 db1:	3b 0b                	cmp    (%ebx),%ecx
 db3:	27                   	daa    
 db4:	0c 20                	or     $0x20,%al
 db6:	0b 01                	or     (%ecx),%eax
 db8:	13 00                	adc    (%eax),%eax
 dba:	00 0e                	add    %cl,(%esi)
 dbc:	05 00 03 0e 3a       	add    $0x3a0e0300,%eax
 dc1:	0b 3b                	or     (%ebx),%edi
 dc3:	0b 49 13             	or     0x13(%ecx),%ecx
 dc6:	00 00                	add    %al,(%eax)
 dc8:	0f 2e 01             	ucomiss (%ecx),%xmm0
 dcb:	03 0e                	add    (%esi),%ecx
 dcd:	3a 0b                	cmp    (%ebx),%cl
 dcf:	3b 0b                	cmp    (%ebx),%ecx
 dd1:	27                   	daa    
 dd2:	0c 49                	or     $0x49,%al
 dd4:	13 20                	adc    (%eax),%esp
 dd6:	0b 01                	or     (%ecx),%eax
 dd8:	13 00                	adc    (%eax),%eax
 dda:	00 10                	add    %dl,(%eax)
 ddc:	34 00                	xor    $0x0,%al
 dde:	03 0e                	add    (%esi),%ecx
 de0:	3a 0b                	cmp    (%ebx),%cl
 de2:	3b 0b                	cmp    (%ebx),%ecx
 de4:	49                   	dec    %ecx
 de5:	13 00                	adc    (%eax),%eax
 de7:	00 11                	add    %dl,(%ecx)
 de9:	2e 01 3f             	add    %edi,%cs:(%edi)
 dec:	0c 03                	or     $0x3,%al
 dee:	0e                   	push   %cs
 def:	3a 0b                	cmp    (%ebx),%cl
 df1:	3b 0b                	cmp    (%ebx),%ecx
 df3:	27                   	daa    
 df4:	0c 11                	or     $0x11,%al
 df6:	01 12                	add    %edx,(%edx)
 df8:	01 40 06             	add    %eax,0x6(%eax)
 dfb:	01 13                	add    %edx,(%ebx)
 dfd:	00 00                	add    %al,(%eax)
 dff:	12 1d 01 31 13 11    	adc    0x11133101,%bl
 e05:	01 12                	add    %edx,(%edx)
 e07:	01 58 0b             	add    %ebx,0xb(%eax)
 e0a:	59                   	pop    %ecx
 e0b:	0b 00                	or     (%eax),%eax
 e0d:	00 13                	add    %dl,(%ebx)
 e0f:	05 00 31 13 02       	add    $0x2133100,%eax
 e14:	0a 00                	or     (%eax),%al
 e16:	00 14 34             	add    %dl,(%esp,%esi,1)
 e19:	00 03                	add    %al,(%ebx)
 e1b:	0e                   	push   %cs
 e1c:	3a 0b                	cmp    (%ebx),%cl
 e1e:	3b 0b                	cmp    (%ebx),%ecx
 e20:	49                   	dec    %ecx
 e21:	13 02                	adc    (%edx),%eax
 e23:	06                   	push   %es
 e24:	00 00                	add    %al,(%eax)
 e26:	15 1d 01 31 13       	adc    $0x1331011d,%eax
 e2b:	52                   	push   %edx
 e2c:	01 55 06             	add    %edx,0x6(%ebp)
 e2f:	58                   	pop    %eax
 e30:	0b 59 0b             	or     0xb(%ecx),%ebx
 e33:	01 13                	add    %edx,(%ebx)
 e35:	00 00                	add    %al,(%eax)
 e37:	16                   	push   %ss
 e38:	05 00 31 13 02       	add    $0x2133100,%eax
 e3d:	06                   	push   %es
 e3e:	00 00                	add    %al,(%eax)
 e40:	17                   	pop    %ss
 e41:	0b 01                	or     (%ecx),%eax
 e43:	55                   	push   %ebp
 e44:	06                   	push   %es
 e45:	00 00                	add    %al,(%eax)
 e47:	18 34 00             	sbb    %dh,(%eax,%eax,1)
 e4a:	31 13                	xor    %edx,(%ebx)
 e4c:	02 06                	add    (%esi),%al
 e4e:	00 00                	add    %al,(%eax)
 e50:	19 2e                	sbb    %ebp,(%esi)
 e52:	01 3f                	add    %edi,(%edi)
 e54:	0c 03                	or     $0x3,%al
 e56:	0e                   	push   %cs
 e57:	3a 0b                	cmp    (%ebx),%cl
 e59:	3b 0b                	cmp    (%ebx),%ecx
 e5b:	27                   	daa    
 e5c:	0c 49                	or     $0x49,%al
 e5e:	13 11                	adc    (%ecx),%edx
 e60:	01 12                	add    %edx,(%edx)
 e62:	01 40 06             	add    %eax,0x6(%eax)
 e65:	01 13                	add    %edx,(%ebx)
 e67:	00 00                	add    %al,(%eax)
 e69:	1a 34 00             	sbb    (%eax,%eax,1),%dh
 e6c:	03 0e                	add    (%esi),%ecx
 e6e:	3a 0b                	cmp    (%ebx),%cl
 e70:	3b 0b                	cmp    (%ebx),%ecx
 e72:	49                   	dec    %ecx
 e73:	13 3f                	adc    (%edi),%edi
 e75:	0c 02                	or     $0x2,%al
 e77:	0a 00                	or     (%eax),%al
 e79:	00 00                	add    %al,(%eax)
 e7b:	01 11                	add    %edx,(%ecx)
 e7d:	01 25 0e 13 0b 03    	add    %esp,0x30b130e
 e83:	0e                   	push   %cs
 e84:	1b 0e                	sbb    (%esi),%ecx
 e86:	11 01                	adc    %eax,(%ecx)
 e88:	12 01                	adc    (%ecx),%al
 e8a:	10 06                	adc    %al,(%esi)
 e8c:	00 00                	add    %al,(%eax)
 e8e:	02 16                	add    (%esi),%dl
 e90:	00 03                	add    %al,(%ebx)
 e92:	0e                   	push   %cs
 e93:	3a 0b                	cmp    (%ebx),%cl
 e95:	3b 0b                	cmp    (%ebx),%ecx
 e97:	49                   	dec    %ecx
 e98:	13 00                	adc    (%eax),%eax
 e9a:	00 03                	add    %al,(%ebx)
 e9c:	24 00                	and    $0x0,%al
 e9e:	0b 0b                	or     (%ebx),%ecx
 ea0:	3e 0b 03             	or     %ds:(%ebx),%eax
 ea3:	0e                   	push   %cs
 ea4:	00 00                	add    %al,(%eax)
 ea6:	04 24                	add    $0x24,%al
 ea8:	00 0b                	add    %cl,(%ebx)
 eaa:	0b 3e                	or     (%esi),%edi
 eac:	0b 03                	or     (%ebx),%eax
 eae:	08 00                	or     %al,(%eax)
 eb0:	00 05 13 01 03 0e    	add    %al,0xe030113
 eb6:	0b 0b                	or     (%ebx),%ecx
 eb8:	3a 0b                	cmp    (%ebx),%cl
 eba:	3b 0b                	cmp    (%ebx),%ecx
 ebc:	01 13                	add    %edx,(%ebx)
 ebe:	00 00                	add    %al,(%eax)
 ec0:	06                   	push   %es
 ec1:	0d 00 03 08 3a       	or     $0x3a080300,%eax
 ec6:	0b 3b                	or     (%ebx),%edi
 ec8:	0b 49 13             	or     0x13(%ecx),%ecx
 ecb:	38 0a                	cmp    %cl,(%edx)
 ecd:	00 00                	add    %al,(%eax)
 ecf:	07                   	pop    %es
 ed0:	0d 00 03 0e 3a       	or     $0x3a0e0300,%eax
 ed5:	0b 3b                	or     (%ebx),%edi
 ed7:	0b 49 13             	or     0x13(%ecx),%ecx
 eda:	38 0a                	cmp    %cl,(%edx)
 edc:	00 00                	add    %al,(%eax)
 ede:	08 0f                	or     %cl,(%edi)
 ee0:	00 0b                	add    %cl,(%ebx)
 ee2:	0b 49 13             	or     0x13(%ecx),%ecx
 ee5:	00 00                	add    %al,(%eax)
 ee7:	09 13                	or     %edx,(%ebx)
 ee9:	01 03                	add    %eax,(%ebx)
 eeb:	08 0b                	or     %cl,(%ebx)
 eed:	05 3a 0b 3b 0b       	add    $0xb3b0b3a,%eax
 ef2:	01 13                	add    %edx,(%ebx)
 ef4:	00 00                	add    %al,(%eax)
 ef6:	0a 01                	or     (%ecx),%al
 ef8:	01 49 13             	add    %ecx,0x13(%ecx)
 efb:	01 13                	add    %edx,(%ebx)
 efd:	00 00                	add    %al,(%eax)
 eff:	0b 21                	or     (%ecx),%esp
 f01:	00 49 13             	add    %cl,0x13(%ecx)
 f04:	2f                   	das    
 f05:	05 00 00 0c 16       	add    $0x160c0000,%eax
 f0a:	00 03                	add    %al,(%ebx)
 f0c:	08 3a                	or     %bh,(%edx)
 f0e:	0b 3b                	or     (%ebx),%edi
 f10:	0b 49 13             	or     0x13(%ecx),%ecx
 f13:	00 00                	add    %al,(%eax)
 f15:	0d 2e 01 03 0e       	or     $0xe03012e,%eax
 f1a:	3a 0b                	cmp    (%ebx),%cl
 f1c:	3b 0b                	cmp    (%ebx),%ecx
 f1e:	27                   	daa    
 f1f:	0c 20                	or     $0x20,%al
 f21:	0b 01                	or     (%ecx),%eax
 f23:	13 00                	adc    (%eax),%eax
 f25:	00 0e                	add    %cl,(%esi)
 f27:	05 00 03 0e 3a       	add    $0x3a0e0300,%eax
 f2c:	0b 3b                	or     (%ebx),%edi
 f2e:	0b 49 13             	or     0x13(%ecx),%ecx
 f31:	00 00                	add    %al,(%eax)
 f33:	0f 34                	sysenter 
 f35:	00 03                	add    %al,(%ebx)
 f37:	0e                   	push   %cs
 f38:	3a 0b                	cmp    (%ebx),%cl
 f3a:	3b 0b                	cmp    (%ebx),%ecx
 f3c:	49                   	dec    %ecx
 f3d:	13 00                	adc    (%eax),%eax
 f3f:	00 10                	add    %dl,(%eax)
 f41:	2e 01 3f             	add    %edi,%cs:(%edi)
 f44:	0c 03                	or     $0x3,%al
 f46:	0e                   	push   %cs
 f47:	3a 0b                	cmp    (%ebx),%cl
 f49:	3b 0b                	cmp    (%ebx),%ecx
 f4b:	27                   	daa    
 f4c:	0c 49                	or     $0x49,%al
 f4e:	13 11                	adc    (%ecx),%edx
 f50:	01 12                	add    %edx,(%edx)
 f52:	01 40 06             	add    %eax,0x6(%eax)
 f55:	01 13                	add    %edx,(%ebx)
 f57:	00 00                	add    %al,(%eax)
 f59:	11 05 00 03 0e 3a    	adc    %eax,0x3a0e0300
 f5f:	0b 3b                	or     (%ebx),%edi
 f61:	0b 49 13             	or     0x13(%ecx),%ecx
 f64:	02 0a                	add    (%edx),%cl
 f66:	00 00                	add    %al,(%eax)
 f68:	12 34 00             	adc    (%eax,%eax,1),%dh
 f6b:	03 08                	add    (%eax),%ecx
 f6d:	3a 0b                	cmp    (%ebx),%cl
 f6f:	3b 0b                	cmp    (%ebx),%ecx
 f71:	49                   	dec    %ecx
 f72:	13 02                	adc    (%edx),%eax
 f74:	06                   	push   %es
 f75:	00 00                	add    %al,(%eax)
 f77:	13 0f                	adc    (%edi),%ecx
 f79:	00 0b                	add    %cl,(%ebx)
 f7b:	0b 00                	or     (%eax),%eax
 f7d:	00 14 2e             	add    %dl,(%esi,%ebp,1)
 f80:	01 3f                	add    %edi,(%edi)
 f82:	0c 03                	or     $0x3,%al
 f84:	0e                   	push   %cs
 f85:	3a 0b                	cmp    (%ebx),%cl
 f87:	3b 0b                	cmp    (%ebx),%ecx
 f89:	27                   	daa    
 f8a:	0c 11                	or     $0x11,%al
 f8c:	01 12                	add    %edx,(%edx)
 f8e:	01 40 06             	add    %eax,0x6(%eax)
 f91:	01 13                	add    %edx,(%ebx)
 f93:	00 00                	add    %al,(%eax)
 f95:	15 1d 01 31 13       	adc    $0x1331011d,%eax
 f9a:	52                   	push   %edx
 f9b:	01 55 06             	add    %edx,0x6(%ebp)
 f9e:	58                   	pop    %eax
 f9f:	0b 59 0b             	or     0xb(%ecx),%ebx
 fa2:	00 00                	add    %al,(%eax)
 fa4:	16                   	push   %ss
 fa5:	05 00 31 13 02       	add    $0x2133100,%eax
 faa:	0a 00                	or     (%eax),%al
 fac:	00 17                	add    %dl,(%edi)
 fae:	05 00 31 13 00       	add    $0x133100,%eax
 fb3:	00 18                	add    %bl,(%eax)
 fb5:	05 00 31 13 02       	add    $0x2133100,%eax
 fba:	06                   	push   %es
 fbb:	00 00                	add    %al,(%eax)
 fbd:	19 0b                	sbb    %ecx,(%ebx)
 fbf:	01 55 06             	add    %edx,0x6(%ebp)
 fc2:	00 00                	add    %al,(%eax)
 fc4:	1a 34 00             	sbb    (%eax,%eax,1),%dh
 fc7:	31 13                	xor    %edx,(%ebx)
 fc9:	02 06                	add    (%esi),%al
 fcb:	00 00                	add    %al,(%eax)
 fcd:	1b 34 00             	sbb    (%eax,%eax,1),%esi
 fd0:	03 0e                	add    (%esi),%ecx
 fd2:	3a 0b                	cmp    (%ebx),%cl
 fd4:	3b 0b                	cmp    (%ebx),%ecx
 fd6:	49                   	dec    %ecx
 fd7:	13 3f                	adc    (%edi),%edi
 fd9:	0c 3c                	or     $0x3c,%al
 fdb:	0c 00                	or     $0x0,%al
 fdd:	00 1c 34             	add    %bl,(%esp,%esi,1)
 fe0:	00 03                	add    %al,(%ebx)
 fe2:	08 3a                	or     %bh,(%edx)
 fe4:	0b 3b                	or     (%ebx),%edi
 fe6:	0b 49 13             	or     0x13(%ecx),%ecx
 fe9:	3f                   	aas    
 fea:	0c 02                	or     $0x2,%al
 fec:	0a 00                	or     (%eax),%al
	...

Disassembly of section .debug_line:

00000000 <.debug_line>:
   0:	a0 00 00 00 02       	mov    0x2000000,%al
   5:	00 3c 00             	add    %bh,(%eax,%eax,1)
   8:	00 00                	add    %al,(%eax)
   a:	01 01                	add    %eax,(%ecx)
   c:	fb                   	sti    
   d:	0e                   	push   %cs
   e:	0d 00 01 01 01       	or     $0x1010100,%eax
  13:	01 00                	add    %eax,(%eax)
  15:	00 00                	add    %al,(%eax)
  17:	01 00                	add    %eax,(%eax)
  19:	00 01                	add    %al,(%ecx)
  1b:	73 72                	jae    8f <memcpy-0xc00fff71>
  1d:	63 2f                	arpl   %bp,(%edi)
  1f:	6c                   	insb   (%dx),%es:(%edi)
  20:	69 62 00 2e 2f 69 6e 	imul   $0x6e692f2e,0x0(%edx),%esp
  27:	63 6c 75 64          	arpl   %bp,0x64(%ebp,%esi,2)
  2b:	65 00 00             	add    %al,%gs:(%eax)
  2e:	73 74                	jae    a4 <memcpy-0xc00fff5c>
  30:	72 69                	jb     9b <memcpy-0xc00fff65>
  32:	6e                   	outsb  %ds:(%esi),(%dx)
  33:	67 2e 63 00          	arpl   %ax,%cs:(%bx,%si)
  37:	01 00                	add    %eax,(%eax)
  39:	00 74 79 70          	add    %dh,0x70(%ecx,%edi,2)
  3d:	65                   	gs
  3e:	73 2e                	jae    6e <memcpy-0xc00fff92>
  40:	68 00 02 00 00       	push   $0x200
  45:	00 00                	add    %al,(%eax)
  47:	05 02 00 00 10       	add    $0x10000002,%eax
  4c:	c0 17 82             	rclb   $0x82,(%edi)
  4f:	68 9f 9d 50 a1       	push   $0xa1509d9f
  54:	74 3e                	je     94 <memcpy-0xc00fff6c>
  56:	d7                   	xlat   %ds:(%ebx)
  57:	2f                   	das    
  58:	3a 5d 03             	cmp    0x3(%ebp),%bl
  5b:	11 d6                	adc    %edx,%esi
  5d:	82                   	(bad)  
  5e:	92                   	xchg   %eax,%edx
  5f:	83 00 02             	addl   $0x2,(%eax)
  62:	04 01                	add    $0x1,%al
  64:	76 00                	jbe    66 <memcpy-0xc00fff9a>
  66:	02 04 01             	add    (%ecx,%eax,1),%al
  69:	d8 00                	fadds  (%eax)
  6b:	02 04 01             	add    (%ecx,%eax,1),%al
  6e:	2c 00                	sub    $0x0,%al
  70:	02 04 01             	add    (%ecx,%eax,1),%al
  73:	30 30                	xor    %dh,(%eax)
  75:	00 02                	add    %al,(%edx)
  77:	04 01                	add    $0x1,%al
  79:	03 79 ba             	add    -0x46(%ecx),%edi
  7c:	03 70 08             	add    0x8(%eax),%esi
  7f:	e4 66                	in     $0x66,%al
  81:	96                   	xchg   %eax,%esi
  82:	38 4e 95             	cmp    %cl,-0x6b(%esi)
  85:	1b 80 30 08 22 77    	sbb    0x77220830(%eax),%eax
  8b:	03 0f                	add    (%edi),%ecx
  8d:	c8 3c 3e 1f          	enter  $0x3e3c,$0x1f
  91:	bb ca 3c 3e 1f       	mov    $0x1f3e3cca,%ebx
  96:	bb cb 68 08 91       	mov    $0x910868cb,%ebx
  9b:	f5                   	cmc    
  9c:	68 08 91 02 02       	push   $0x2029108
  a1:	00 01                	add    %al,(%ecx)
  a3:	01 7f 00             	add    %edi,0x0(%edi)
  a6:	00 00                	add    %al,(%eax)
  a8:	02 00                	add    (%eax),%al
  aa:	39 00                	cmp    %eax,(%eax)
  ac:	00 00                	add    %al,(%eax)
  ae:	01 01                	add    %eax,(%ecx)
  b0:	fb                   	sti    
  b1:	0e                   	push   %cs
  b2:	0d 00 01 01 01       	or     $0x1010100,%eax
  b7:	01 00                	add    %eax,(%eax)
  b9:	00 00                	add    %al,(%eax)
  bb:	01 00                	add    %eax,(%eax)
  bd:	00 01                	add    %al,(%ecx)
  bf:	73 72                	jae    133 <memcpy-0xc00ffecd>
  c1:	63 2f                	arpl   %bp,(%edi)
  c3:	6c                   	insb   (%dx),%es:(%edi)
  c4:	69 62 00 2e 2f 69 6e 	imul   $0x6e692f2e,0x0(%edx),%esp
  cb:	63 6c 75 64          	arpl   %bp,0x64(%ebp,%esi,2)
  cf:	65 00 00             	add    %al,%gs:(%eax)
  d2:	61                   	popa   
  d3:	62 6f 72             	bound  %ebp,0x72(%edi)
  d6:	74 2e                	je     106 <memcpy-0xc00ffefa>
  d8:	63 00                	arpl   %ax,(%eax)
  da:	01 00                	add    %eax,(%eax)
  dc:	00 78 38             	add    %bh,0x38(%eax)
  df:	36                   	ss
  e0:	2e                   	cs
  e1:	68 00 02 00 00       	push   $0x200
  e6:	00 00                	add    %al,(%eax)
  e8:	05 02 b0 01 10       	add    $0x1001b002,%eax
  ed:	c0 16 04             	rclb   $0x4,(%esi)
  f0:	02 03                	add    (%ebx),%al
  f2:	9b                   	fwait
  f3:	01 66 04             	add    %esp,0x4(%esi)
  f6:	01 03                	add    %eax,(%ebx)
  f8:	e7 7e                	out    %eax,$0x7e
  fa:	20 04 02             	and    %al,(%edx,%eax,1)
  fd:	03 9f 01 08 90 04    	add    0x4900801(%edi),%ebx
 103:	01 03                	add    %eax,(%ebx)
 105:	e3 7e                	jecxz  185 <memcpy-0xc00ffe7b>
 107:	20 d9                	and    %bl,%cl
 109:	04 02                	add    $0x2,%al
 10b:	03 94 01 66 04 01 03 	add    0x3010466(%ecx,%eax,1),%edx
 112:	ee                   	out    %al,(%dx)
 113:	7e 20                	jle    135 <memcpy-0xc00ffecb>
 115:	04 02                	add    $0x2,%al
 117:	03 98 01 08 2e 04    	add    0x42e0801(%eax),%ebx
 11d:	01 03                	add    %eax,(%ebx)
 11f:	ea 7e 20 02 02 00 01 	ljmp   $0x100,$0x202207e
 126:	01 4e 01             	add    %ecx,0x1(%esi)
 129:	00 00                	add    %al,(%eax)
 12b:	02 00                	add    (%eax),%al
 12d:	72 00                	jb     12f <memcpy-0xc00ffed1>
 12f:	00 00                	add    %al,(%eax)
 131:	01 01                	add    %eax,(%ecx)
 133:	fb                   	sti    
 134:	0e                   	push   %cs
 135:	0d 00 01 01 01       	or     $0x1010100,%eax
 13a:	01 00                	add    %eax,(%eax)
 13c:	00 00                	add    %al,(%eax)
 13e:	01 00                	add    %eax,(%eax)
 140:	00 01                	add    %al,(%ecx)
 142:	73 72                	jae    1b6 <memcpy-0xc00ffe4a>
 144:	63 2f                	arpl   %bp,(%edi)
 146:	6c                   	insb   (%dx),%es:(%edi)
 147:	69 62 00 2e 2f 69 6e 	imul   $0x6e692f2e,0x0(%edx),%esp
 14e:	63 6c 75 64          	arpl   %bp,0x64(%ebp,%esi,2)
 152:	65 00 2e             	add    %ch,%gs:(%esi)
 155:	2f                   	das    
 156:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%esi),%ebp
 15d:	2f                   	das    
 15e:	61                   	popa   
 15f:	64                   	fs
 160:	74 00                	je     162 <memcpy-0xc00ffe9e>
 162:	00 73 79             	add    %dh,0x79(%ebx)
 165:	6e                   	outsb  %ds:(%esi),(%dx)
 166:	63 2e                	arpl   %bp,(%esi)
 168:	63 00                	arpl   %ax,(%eax)
 16a:	01 00                	add    %eax,(%eax)
 16c:	00 78 38             	add    %bh,0x38(%eax)
 16f:	36                   	ss
 170:	2e                   	cs
 171:	68 00 02 00 00       	push   $0x200
 176:	6c                   	insb   (%dx),%es:(%edi)
 177:	69 73 74 2e 68 00 03 	imul   $0x300682e,0x74(%ebx),%esi
 17e:	00 00                	add    %al,(%eax)
 180:	74 79                	je     1fb <memcpy-0xc00ffe05>
 182:	70 65                	jo     1e9 <memcpy-0xc00ffe17>
 184:	73 2e                	jae    1b4 <memcpy-0xc00ffe4c>
 186:	68 00 02 00 00       	push   $0x200
 18b:	70 72                	jo     1ff <memcpy-0xc00ffe01>
 18d:	6f                   	outsl  %ds:(%esi),(%dx)
 18e:	63 65 73             	arpl   %sp,0x73(%ebp)
 191:	73 2e                	jae    1c1 <memcpy-0xc00ffe3f>
 193:	68 00 02 00 00       	push   $0x200
 198:	73 79                	jae    213 <memcpy-0xc00ffded>
 19a:	6e                   	outsb  %ds:(%esi),(%dx)
 19b:	63 2e                	arpl   %bp,(%esi)
 19d:	68 00 02 00 00       	push   $0x200
 1a2:	00 00                	add    %al,(%eax)
 1a4:	05 02 00 02 10       	add    $0x10020002,%eax
 1a9:	c0 03 15             	rolb   $0x15,(%ebx)
 1ac:	01 67 bb             	add    %esp,-0x45(%edi)
 1af:	3d 3b 3d 04 02       	cmp    $0x2043d3b,%eax
 1b4:	03 94 01 2e 59 04 01 	add    0x104592e(%ecx,%eax,1),%edx
 1bb:	03 f3                	add    %ebx,%esi
 1bd:	7e 3c                	jle    1fb <memcpy-0xc00ffe05>
 1bf:	59                   	pop    %ecx
 1c0:	00 02                	add    %al,(%edx)
 1c2:	04 01                	add    $0x1,%al
 1c4:	65 00 02             	add    %al,%gs:(%edx)
 1c7:	04 01                	add    $0x1,%al
 1c9:	08 3d 04 02 03 8b    	or     %bh,0x8b030204
 1cf:	01 4a 59             	add    %ecx,0x59(%edx)
 1d2:	04 01                	add    $0x1,%al
 1d4:	03 ec                	add    %esp,%ebp
 1d6:	7e 3c                	jle    214 <memcpy-0xc00ffdec>
 1d8:	59                   	pop    %ecx
 1d9:	04 02                	add    $0x2,%al
 1db:	03 85 01 4a 04 01    	add    0x1044a01(%ebp),%eax
 1e1:	03 82 7f 20 62 4e    	add    0x4e62207f(%edx),%eax
 1e7:	00 02                	add    %al,(%edx)
 1e9:	04 01                	add    $0x1,%al
 1eb:	03 75 4a             	add    0x4a(%ebp),%esi
 1ee:	03 0e                	add    (%esi),%ecx
 1f0:	02 28                	add    (%eax),%ch
 1f2:	01 67 bb             	add    %esp,-0x45(%edi)
 1f5:	3d 2d 3d 84 04       	cmp    $0x4843d2d,%eax
 1fa:	02 03                	add    (%ebx),%al
 1fc:	f0 00 66 04          	lock add %ah,0x4(%esi)
 200:	01 03                	add    %eax,(%ebx)
 202:	90                   	nop
 203:	7f 20                	jg     225 <memcpy-0xc00ffddb>
 205:	00 02                	add    %al,(%edx)
 207:	04 01                	add    $0x1,%al
 209:	e0 02                	loopne 20d <memcpy-0xc00ffdf3>
 20b:	28 19                	sub    %bl,(%ecx)
 20d:	3c 3d                	cmp    $0x3d,%al
 20f:	59                   	pop    %ecx
 210:	04 03                	add    $0x3,%al
 212:	39 04 01             	cmp    %eax,(%ecx,%eax,1)
 215:	6a bd                	push   $0xffffffbd
 217:	08 21                	or     %ah,(%ecx)
 219:	59                   	pop    %ecx
 21a:	59                   	pop    %ecx
 21b:	2d 2f 33 b9 9b       	sub    $0x9bb9332f,%eax
 220:	04 03                	add    $0x3,%al
 222:	03 62 90             	add    -0x70(%edx),%esp
 225:	03 77 3c             	add    0x3c(%edi),%esi
 228:	77 2c                	ja     256 <memcpy-0xc00ffdaa>
 22a:	3d 3d 59 04 01       	cmp    $0x104593d,%eax
 22f:	03 24 3c             	add    (%esp,%edi,1),%esp
 232:	04 03                	add    $0x3,%al
 234:	03 58 c8             	add    -0x38(%eax),%ebx
 237:	04 01                	add    $0x1,%al
 239:	03 2e                	add    (%esi),%ebp
 23b:	02 28                	add    (%eax),%ch
 23d:	01 e5                	add    %esp,%ebp
 23f:	59                   	pop    %ecx
 240:	59                   	pop    %ecx
 241:	2d 2f 35 8f 04       	sub    $0x48f352f,%eax
 246:	03 03                	add    (%ebx),%eax
 248:	6a 82                	push   $0xffffff82
 24a:	04 01                	add    $0x1,%al
 24c:	03 11                	add    (%ecx),%edx
 24e:	3c 04                	cmp    $0x4,%al
 250:	03 03                	add    (%ebx),%eax
 252:	61                   	popa   
 253:	74 04                	je     259 <memcpy-0xc00ffda7>
 255:	01 03                	add    %eax,(%ebx)
 257:	20 2e                	and    %ch,(%esi)
 259:	04 03                	add    $0x3,%al
 25b:	03 60 3c             	add    0x3c(%eax),%esp
 25e:	2f                   	das    
 25f:	2f                   	das    
 260:	3d 75 04 01 03       	cmp    $0x3010475,%eax
 265:	1e                   	push   %ds
 266:	66 85 8f 00 02 04 01 	test   %cx,0x1040200(%edi)
 26d:	b5 04                	mov    $0x4,%ch
 26f:	03 03                	add    (%ebx),%eax
 271:	61                   	popa   
 272:	08 e4                	or     %ah,%ah
 274:	02 16                	add    (%esi),%dl
 276:	00 01                	add    %al,(%ecx)
 278:	01 25 01 00 00 02    	add    %esp,0x2000001
 27e:	00 48 00             	add    %cl,0x0(%eax)
 281:	00 00                	add    %al,(%eax)
 283:	01 01                	add    %eax,(%ecx)
 285:	fb                   	sti    
 286:	0e                   	push   %cs
 287:	0d 00 01 01 01       	or     $0x1010100,%eax
 28c:	01 00                	add    %eax,(%eax)
 28e:	00 00                	add    %al,(%eax)
 290:	01 00                	add    %eax,(%eax)
 292:	00 01                	add    %al,(%ecx)
 294:	73 72                	jae    308 <memcpy-0xc00ffcf8>
 296:	63 2f                	arpl   %bp,(%edi)
 298:	6c                   	insb   (%dx),%es:(%edi)
 299:	69 62 00 2e 2f 69 6e 	imul   $0x6e692f2e,0x0(%edx),%esp
 2a0:	63 6c 75 64          	arpl   %bp,0x64(%ebp,%esi,2)
 2a4:	65 00 00             	add    %al,%gs:(%eax)
 2a7:	6d                   	insl   (%dx),%es:(%edi)
 2a8:	61                   	popa   
 2a9:	6c                   	insb   (%dx),%es:(%edi)
 2aa:	6c                   	insb   (%dx),%es:(%edi)
 2ab:	6f                   	outsl  %ds:(%esi),(%dx)
 2ac:	63 2e                	arpl   %bp,(%esi)
 2ae:	63 00                	arpl   %ax,(%eax)
 2b0:	01 00                	add    %eax,(%eax)
 2b2:	00 74 79 70          	add    %dh,0x70(%ecx,%edi,2)
 2b6:	65                   	gs
 2b7:	73 2e                	jae    2e7 <memcpy-0xc00ffd19>
 2b9:	68 00 02 00 00       	push   $0x200
 2be:	6d                   	insl   (%dx),%es:(%edi)
 2bf:	61                   	popa   
 2c0:	6c                   	insb   (%dx),%es:(%edi)
 2c1:	6c                   	insb   (%dx),%es:(%edi)
 2c2:	6f                   	outsl  %ds:(%esi),(%dx)
 2c3:	63 2e                	arpl   %bp,(%esi)
 2c5:	68 00 02 00 00       	push   $0x200
 2ca:	00 00                	add    %al,(%eax)
 2cc:	05 02 50 04 10       	add    $0x10045002,%eax
 2d1:	c0 03 23             	rolb   $0x23,(%ebx)
 2d4:	01 82 3d a0 75 2c    	add    %eax,0x2c75a03d(%edx)
 2da:	30 00                	xor    %al,(%eax)
 2dc:	02 04 01             	add    (%ecx,%eax,1),%al
 2df:	06                   	push   %es
 2e0:	74 06                	je     2e8 <memcpy-0xc00ffd18>
 2e2:	59                   	pop    %ecx
 2e3:	00 02                	add    %al,(%edx)
 2e5:	04 01                	add    $0x1,%al
 2e7:	06                   	push   %es
 2e8:	90                   	nop
 2e9:	06                   	push   %es
 2ea:	67 00 02             	add    %al,(%bp,%si)
 2ed:	04 01                	add    $0x1,%al
 2ef:	06                   	push   %es
 2f0:	90                   	nop
 2f1:	06                   	push   %es
 2f2:	67 00 02             	add    %al,(%bp,%si)
 2f5:	04 01                	add    $0x1,%al
 2f7:	06                   	push   %es
 2f8:	90                   	nop
 2f9:	06                   	push   %es
 2fa:	67 2f                	addr16 das 
 2fc:	57                   	push   %edi
 2fd:	3e                   	ds
 2fe:	56                   	push   %esi
 2ff:	30 57 2f             	xor    %dl,0x2f(%edi)
 302:	83 00 02             	addl   $0x2,(%eax)
 305:	04 01                	add    $0x1,%al
 307:	03 76 74             	add    0x74(%esi),%esi
 30a:	00 02                	add    %al,(%edx)
 30c:	04 01                	add    $0x1,%al
 30e:	03 0a                	add    (%edx),%ecx
 310:	08 e4                	or     %ah,%ah
 312:	00 02                	add    %al,(%edx)
 314:	04 01                	add    $0x1,%al
 316:	3b 00                	cmp    (%eax),%eax
 318:	02 04 01             	add    (%ecx,%eax,1),%al
 31b:	75 69                	jne    386 <memcpy-0xc00ffc7a>
 31d:	83 57 44 03          	adcl   $0x3,0x44(%edi)
 321:	78 08                	js     32b <memcpy-0xc00ffcd5>
 323:	ba 35 03 79 74       	mov    $0x74790335,%edx
 328:	36 00 02             	add    %al,%ss:(%edx)
 32b:	04 01                	add    $0x1,%al
 32d:	f4                   	hlt    
 32e:	00 02                	add    %al,(%edx)
 330:	04 01                	add    $0x1,%al
 332:	31 00                	xor    %eax,(%eax)
 334:	02 04 01             	add    (%ecx,%eax,1),%al
 337:	2c 00                	sub    $0x0,%al
 339:	02 04 01             	add    (%ecx,%eax,1),%al
 33c:	3e                   	ds
 33d:	06                   	push   %es
 33e:	2e                   	cs
 33f:	06                   	push   %es
 340:	03 78 3c             	add    0x3c(%eax),%edi
 343:	03 0a                	add    (%edx),%ecx
 345:	58                   	pop    %eax
 346:	67 08 15             	or     %dl,(%di)
 349:	82                   	(bad)  
 34a:	3d a5 98 83 3b       	cmp    $0x3b8398a5,%eax
 34f:	2f                   	das    
 350:	2f                   	das    
 351:	75 2d                	jne    380 <memcpy-0xc00ffc80>
 353:	4c                   	dec    %esp
 354:	75 9f                	jne    2f5 <memcpy-0xc00ffd0b>
 356:	4b                   	dec    %ebx
 357:	95                   	xchg   %eax,%ebp
 358:	39 3d 3f 00 02 04    	cmp    %edi,0x402003f
 35e:	01 03                	add    %eax,(%ebx)
 360:	64                   	fs
 361:	74 00                	je     363 <memcpy-0xc00ffc9d>
 363:	02 04 01             	add    (%ecx,%eax,1),%al
 366:	08 43 91             	or     %al,-0x6f(%ebx)
 369:	5f                   	pop    %edi
 36a:	03 7a 3c             	add    0x3c(%edx),%edi
 36d:	7a 59                	jp     3c8 <memcpy-0xc00ffc38>
 36f:	3b 2f                	cmp    (%edi),%ebp
 371:	00 02                	add    %al,(%edx)
 373:	04 01                	add    $0x1,%al
 375:	06                   	push   %es
 376:	2e 00 02             	add    %al,%cs:(%edx)
 379:	04 01                	add    $0x1,%al
 37b:	06                   	push   %es
 37c:	08 e9                	or     %ch,%cl
 37e:	03 0a                	add    (%edx),%ecx
 380:	08 e4                	or     %ah,%ah
 382:	08 24 49             	or     %ah,(%ecx,%ecx,2)
 385:	3d 00 02 04 01       	cmp    $0x1040200,%eax
 38a:	06                   	push   %es
 38b:	2e                   	cs
 38c:	06                   	push   %es
 38d:	08 3d 3d 00 02 04    	or     %bh,0x402003d
 393:	01 06                	add    %eax,(%esi)
 395:	ba 06 08 9f 9f       	mov    $0x9f9f0806,%edx
 39a:	a0 3b 75 02 0a       	mov    0xa02753b,%al
 39f:	00 01                	add    %al,(%ecx)
 3a1:	01 b4 00 00 00 02 00 	add    %esi,0x20000(%eax,%eax,1)
 3a8:	29 00                	sub    %eax,(%eax)
 3aa:	00 00                	add    %al,(%eax)
 3ac:	01 01                	add    %eax,(%ecx)
 3ae:	fb                   	sti    
 3af:	0e                   	push   %cs
 3b0:	0d 00 01 01 01       	or     $0x1010100,%eax
 3b5:	01 00                	add    %eax,(%eax)
 3b7:	00 00                	add    %al,(%eax)
 3b9:	01 00                	add    %eax,(%eax)
 3bb:	00 01                	add    %al,(%ecx)
 3bd:	73 72                	jae    431 <memcpy-0xc00ffbcf>
 3bf:	63 2f                	arpl   %bp,(%edi)
 3c1:	6c                   	insb   (%dx),%es:(%edi)
 3c2:	69 62 00 00 76 66 70 	imul   $0x70667600,0x0(%edx),%esp
 3c9:	72 69                	jb     434 <memcpy-0xc00ffbcc>
 3cb:	6e                   	outsb  %ds:(%esi),(%dx)
 3cc:	74 66                	je     434 <memcpy-0xc00ffbcc>
 3ce:	2e 63 00             	arpl   %ax,%cs:(%eax)
 3d1:	01 00                	add    %eax,(%eax)
 3d3:	00 00                	add    %al,(%eax)
 3d5:	00 05 02 e0 06 10    	add    %al,0x1006e002
 3db:	c0 03 13             	rolb   $0x13,(%ebx)
 3de:	01 4f 29             	add    %ecx,0x29(%edi)
 3e1:	58                   	pop    %eax
 3e2:	00 02                	add    %al,(%edx)
 3e4:	04 01                	add    $0x1,%al
 3e6:	cf                   	iret   
 3e7:	75 4b                	jne    434 <memcpy-0xc00ffbcc>
 3e9:	3a 3e                	cmp    (%esi),%bh
 3eb:	80 03 17             	addb   $0x17,(%ebx)
 3ee:	74 03                	je     3f3 <memcpy-0xc00ffc0d>
 3f0:	6f                   	outsl  %ds:(%esi),(%dx)
 3f1:	f2 75 4b             	repnz jne 43f <memcpy-0xc00ffbc1>
 3f4:	03 0a                	add    (%edx),%ecx
 3f6:	02 25 01 03 77 08    	add    0x8770301,%ah
 3fc:	74 00                	je     3fe <memcpy-0xc00ffc02>
 3fe:	02 04 01             	add    (%ecx,%eax,1),%al
 401:	08 72 08             	or     %dh,0x8(%edx)
 404:	75 89                	jne    38f <memcpy-0xc00ffc71>
 406:	3b 3d 9d 67 81 67    	cmp    0x6781679d,%edi
 40c:	03 6a ac             	add    -0x54(%edx),%ebp
 40f:	00 02                	add    %al,(%edx)
 411:	04 02                	add    $0x2,%al
 413:	03 16                	add    (%esi),%edx
 415:	90                   	nop
 416:	08 2f                	or     %ch,(%edi)
 418:	08 4b 3b             	or     %cl,0x3b(%ebx)
 41b:	3d 9d 67 81 67       	cmp    $0x6781679d,%eax
 420:	03 68 ac             	add    -0x54(%eax),%ebp
 423:	00 02                	add    %al,(%edx)
 425:	04 02                	add    $0x2,%al
 427:	03 18                	add    (%eax),%ebx
 429:	90                   	nop
 42a:	08 2d 03 7a 08 4a    	or     %ch,0x4a087a03
 430:	02 28                	add    (%eax),%ch
 432:	15 3b 3d 9d 67       	adc    $0x679d3d3b,%eax
 437:	81 67 03 6c ac 00 02 	andl   $0x200ac6c,0x3(%edi)
 43e:	04 02                	add    $0x2,%al
 440:	03 14 90             	add    (%eax,%edx,4),%edx
 443:	08 31                	or     %dh,(%ecx)
 445:	08 45 03             	or     %al,0x3(%ebp)
 448:	6e                   	outsb  %ds:(%esi),(%dx)
 449:	08 d6                	or     %dl,%dh
 44b:	00 02                	add    %al,(%edx)
 44d:	04 02                	add    $0x2,%al
 44f:	03 12                	add    (%edx),%edx
 451:	90                   	nop
 452:	06                   	push   %es
 453:	08 2e                	or     %ch,(%esi)
 455:	02 0e                	add    (%esi),%cl
 457:	00 01                	add    %al,(%ecx)
 459:	01 a9 00 00 00 02    	add    %ebp,0x2000000(%ecx)
 45f:	00 44 00 00          	add    %al,0x0(%eax,%eax,1)
 463:	00 01                	add    %al,(%ecx)
 465:	01 fb                	add    %edi,%ebx
 467:	0e                   	push   %cs
 468:	0d 00 01 01 01       	or     $0x1010100,%eax
 46d:	01 00                	add    %eax,(%eax)
 46f:	00 00                	add    %al,(%eax)
 471:	01 00                	add    %eax,(%eax)
 473:	00 01                	add    %al,(%ecx)
 475:	73 72                	jae    4e9 <memcpy-0xc00ffb17>
 477:	63 2f                	arpl   %bp,(%edi)
 479:	6c                   	insb   (%dx),%es:(%edi)
 47a:	69 62 00 2e 2f 69 6e 	imul   $0x6e692f2e,0x0(%edx),%esp
 481:	63 6c 75 64          	arpl   %bp,0x64(%ebp,%esi,2)
 485:	65 00 00             	add    %al,%gs:(%eax)
 488:	64 65 62 75 67       	fs bound %esi,%fs:%gs:0x67(%ebp)
 48d:	2e 63 00             	arpl   %ax,%cs:(%eax)
 490:	01 00                	add    %eax,(%eax)
 492:	00 78 38             	add    %bh,0x38(%eax)
 495:	36                   	ss
 496:	2e                   	cs
 497:	68 00 02 00 00       	push   $0x200
 49c:	74 79                	je     517 <memcpy-0xc00ffae9>
 49e:	70 65                	jo     505 <memcpy-0xc00ffafb>
 4a0:	73 2e                	jae    4d0 <memcpy-0xc00ffb30>
 4a2:	68 00 02 00 00       	push   $0x200
 4a7:	00 00                	add    %al,(%eax)
 4a9:	05 02 40 09 10       	add    $0x10094002,%eax
 4ae:	c0 03 16             	rolb   $0x16,(%ebx)
 4b1:	01 04 02             	add    %eax,(%edx,%eax,1)
 4b4:	03 cc                	add    %esp,%ecx
 4b6:	01 20                	add    %esp,(%eax)
 4b8:	04 01                	add    $0x1,%al
 4ba:	03 b4 7e 58 2e 04 02 	add    0x2042e58(%esi,%edi,2),%esi
 4c1:	00 02                	add    %al,(%edx)
 4c3:	04 01                	add    $0x1,%al
 4c5:	03 cc                	add    %esp,%ecx
 4c7:	01 82 04 01 00 02    	add    %eax,0x2000104(%edx)
 4cd:	04 01                	add    $0x1,%al
 4cf:	03 b5 7e 20 04 02    	add    0x204207e(%ebp),%esi
 4d5:	03 da                	add    %edx,%ebx
 4d7:	01 4a 04             	add    %ecx,0x4(%edx)
 4da:	01 03                	add    %eax,(%ebx)
 4dc:	a8 7e                	test   $0x7e,%al
 4de:	82                   	(bad)  
 4df:	03 6d 3c             	add    0x3c(%ebp),%ebp
 4e2:	04 02                	add    $0x2,%al
 4e4:	03 eb                	add    %ebx,%ebp
 4e6:	01 20                	add    %esp,(%eax)
 4e8:	04 01                	add    $0x1,%al
 4ea:	03 95 7e 58 04 02    	add    0x204587e(%ebp),%edx
 4f0:	03 eb                	add    %ebx,%ebp
 4f2:	01 2e                	add    %ebp,(%esi)
 4f4:	04 01                	add    $0x1,%al
 4f6:	03 9d 7e 02 30 01    	add    0x130027e(%ebp),%ebx
 4fc:	03 10                	add    (%eax),%edx
 4fe:	82                   	(bad)  
 4ff:	68 08 91 02 02       	push   $0x2029108
 504:	00 01                	add    %al,(%ecx)
 506:	01 f2                	add    %esi,%edx
 508:	00 00                	add    %al,(%eax)
 50a:	00 02                	add    %al,(%edx)
 50c:	00 48 00             	add    %cl,0x0(%eax)
 50f:	00 00                	add    %al,(%eax)
 511:	01 01                	add    %eax,(%ecx)
 513:	fb                   	sti    
 514:	0e                   	push   %cs
 515:	0d 00 01 01 01       	or     $0x1010100,%eax
 51a:	01 00                	add    %eax,(%eax)
 51c:	00 00                	add    %al,(%eax)
 51e:	01 00                	add    %eax,(%eax)
 520:	00 01                	add    %al,(%ecx)
 522:	73 72                	jae    596 <memcpy-0xc00ffa6a>
 524:	63 2f                	arpl   %bp,(%edi)
 526:	6b 65 72 6e          	imul   $0x6e,0x72(%ebp),%esp
 52a:	65                   	gs
 52b:	6c                   	insb   (%dx),%es:(%edi)
 52c:	2f                   	das    
 52d:	76 6d                	jbe    59c <memcpy-0xc00ffa64>
 52f:	00 2e                	add    %ch,(%esi)
 531:	2f                   	das    
 532:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%esi),%ebp
 539:	00 00                	add    %al,(%eax)
 53b:	6b 76 6d 2e          	imul   $0x2e,0x6d(%esi),%esi
 53f:	63 00                	arpl   %ax,(%eax)
 541:	01 00                	add    %eax,(%eax)
 543:	00 78 38             	add    %bh,0x38(%eax)
 546:	36                   	ss
 547:	2e                   	cs
 548:	68 00 02 00 00       	push   $0x200
 54d:	74 79                	je     5c8 <memcpy-0xc00ffa38>
 54f:	70 65                	jo     5b6 <memcpy-0xc00ffa4a>
 551:	73 2e                	jae    581 <memcpy-0xc00ffa7f>
 553:	68 00 02 00 00       	push   $0x200
 558:	00 00                	add    %al,(%eax)
 55a:	05 02 d0 09 10       	add    $0x1009d002,%eax
 55f:	c0 03 0b             	rolb   $0xb,(%ebx)
 562:	01 22                	add    %esp,(%edx)
 564:	56                   	push   %esi
 565:	32 2a                	xor    (%edx),%ch
 567:	00 02                	add    %al,(%edx)
 569:	04 02                	add    $0x2,%al
 56b:	6b 00 02             	imul   $0x2,(%eax),%eax
 56e:	04 02                	add    $0x2,%al
 570:	2d 00 02 04 02       	sub    $0x2040200,%eax
 575:	59                   	pop    %ecx
 576:	00 02                	add    %al,(%edx)
 578:	04 02                	add    $0x2,%al
 57a:	59                   	pop    %ecx
 57b:	00 02                	add    %al,(%edx)
 57d:	04 02                	add    $0x2,%al
 57f:	3a 78 08             	cmp    0x8(%eax),%bh
 582:	a7                   	cmpsl  %es:(%edi),%ds:(%esi)
 583:	5e                   	pop    %esi
 584:	00 02                	add    %al,(%edx)
 586:	04 02                	add    $0x2,%al
 588:	92                   	xchg   %eax,%edx
 589:	00 02                	add    %al,(%edx)
 58b:	04 02                	add    $0x2,%al
 58d:	2c 00                	sub    $0x0,%al
 58f:	02 04 02             	add    (%edx,%eax,1),%al
 592:	68 00 02 04 02       	push   $0x2040200
 597:	c7 00 02 04 02 84    	movl   $0x84020402,(%eax)
 59d:	00 02                	add    %al,(%edx)
 59f:	04 02                	add    $0x2,%al
 5a1:	39 04 02             	cmp    %eax,(%edx,%eax,1)
 5a4:	03 ad 01 82 03 73    	add    0x73038201(%ebp),%ebp
 5aa:	82                   	(bad)  
 5ab:	67 04 01             	addr16 add $0x1,%al
 5ae:	03 e5                	add    %ebp,%esp
 5b0:	7e 3c                	jle    5ee <memcpy-0xc00ffa12>
 5b2:	04 02                	add    $0x2,%al
 5b4:	03 a1 01 58 04 01    	add    0x1045801(%ecx),%esp
 5ba:	03 e0                	add    %eax,%esp
 5bc:	7e 3c                	jle    5fa <memcpy-0xc00ffa06>
 5be:	e7 17                	out    %eax,$0x17
 5c0:	04 02                	add    $0x2,%al
 5c2:	03 a6 01 08 4a 04    	add    0x44a0801(%esi),%esp
 5c8:	01 03                	add    %eax,(%ebx)
 5ca:	d5 7e                	aad    $0x7e
 5cc:	58                   	pop    %eax
 5cd:	25 37 04 02 03       	and    $0x3020437,%eax
 5d2:	aa                   	stos   %al,%es:(%edi)
 5d3:	01 2e                	add    %ebp,(%esi)
 5d5:	91                   	xchg   %eax,%ecx
 5d6:	67 04 01             	addr16 add $0x1,%al
 5d9:	03 d9                	add    %ecx,%ebx
 5db:	7e 3c                	jle    619 <memcpy-0xc00ff9e7>
 5dd:	62 02                	bound  %eax,(%edx)
 5df:	2e 13 02             	adc    %cs:(%edx),%eax
 5e2:	2e 13 02             	adc    %cs:(%edx),%eax
 5e5:	2e 13 02             	adc    %cs:(%edx),%eax
 5e8:	2e 13 04 02          	adc    %cs:(%edx,%eax,1),%eax
 5ec:	03 a7 01 08 66 67    	add    0x67660801(%edi),%esp
 5f2:	04 01                	add    $0x1,%al
 5f4:	03 da                	add    %edx,%ebx
 5f6:	7e 82                	jle    57a <memcpy-0xc00ffa86>
 5f8:	02 02                	add    (%edx),%al
 5fa:	00 01                	add    %al,(%ecx)
 5fc:	01 b9 01 00 00 02    	add    %edi,0x2000001(%ecx)
 602:	00 68 00             	add    %ch,0x0(%eax)
 605:	00 00                	add    %al,(%eax)
 607:	01 01                	add    %eax,(%ecx)
 609:	fb                   	sti    
 60a:	0e                   	push   %cs
 60b:	0d 00 01 01 01       	or     $0x1010100,%eax
 610:	01 00                	add    %eax,(%eax)
 612:	00 00                	add    %al,(%eax)
 614:	01 00                	add    %eax,(%eax)
 616:	00 01                	add    %al,(%ecx)
 618:	73 72                	jae    68c <memcpy-0xc00ff974>
 61a:	63 2f                	arpl   %bp,(%edi)
 61c:	6b 65 72 6e          	imul   $0x6e,0x72(%ebp),%esp
 620:	65                   	gs
 621:	6c                   	insb   (%dx),%es:(%edi)
 622:	00 2e                	add    %ch,(%esi)
 624:	2f                   	das    
 625:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%esi),%ebp
 62c:	00 2e                	add    %ch,(%esi)
 62e:	2f                   	das    
 62f:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%esi),%ebp
 636:	2f                   	das    
 637:	61                   	popa   
 638:	64                   	fs
 639:	74 00                	je     63b <memcpy-0xc00ff9c5>
 63b:	00 6d 61             	add    %ch,0x61(%ebp)
 63e:	69 6e 2e 63 00 01 00 	imul   $0x10063,0x2e(%esi),%ebp
 645:	00 78 38             	add    %bh,0x38(%eax)
 648:	36                   	ss
 649:	2e                   	cs
 64a:	68 00 02 00 00       	push   $0x200
 64f:	74 79                	je     6ca <memcpy-0xc00ff936>
 651:	70 65                	jo     6b8 <memcpy-0xc00ff948>
 653:	73 2e                	jae    683 <memcpy-0xc00ff97d>
 655:	68 00 02 00 00       	push   $0x200
 65a:	6c                   	insb   (%dx),%es:(%edi)
 65b:	69 73 74 2e 68 00 03 	imul   $0x300682e,0x74(%ebx),%esi
 662:	00 00                	add    %al,(%eax)
 664:	73 79                	jae    6df <memcpy-0xc00ff921>
 666:	6e                   	outsb  %ds:(%esi),(%dx)
 667:	63 2e                	arpl   %bp,(%esi)
 669:	68 00 02 00 00       	push   $0x200
 66e:	00 00                	add    %al,(%eax)
 670:	05 02 90 0b 10       	add    $0x100b9002,%eax
 675:	c0 03 17             	rolb   $0x17,(%ebx)
 678:	01 50 03             	add    %edx,0x3(%eax)
 67b:	7a 58                	jp     6d5 <memcpy-0xc00ff92b>
 67d:	4b                   	dec    %ebx
 67e:	08 31                	or     %dh,(%ecx)
 680:	04 02                	add    $0x2,%al
 682:	03 91 01 ba 59 04    	add    0x459ba01(%ecx),%edx
 688:	01 03                	add    %eax,(%ebx)
 68a:	ee                   	out    %al,(%dx)
 68b:	7e 3c                	jle    6c9 <memcpy-0xc00ff937>
 68d:	91                   	xchg   %eax,%ecx
 68e:	04 02                	add    $0x2,%al
 690:	03 90 01 02 28 01    	add    0x1280201(%eax),%edx
 696:	59                   	pop    %ecx
 697:	04 01                	add    $0x1,%al
 699:	03 ef                	add    %edi,%ebp
 69b:	7e 3c                	jle    6d9 <memcpy-0xc00ff927>
 69d:	91                   	xchg   %eax,%ecx
 69e:	04 02                	add    $0x2,%al
 6a0:	03 8f 01 08 c8 59    	add    0x59c80801(%edi),%ecx
 6a6:	04 01                	add    $0x1,%al
 6a8:	03 f0                	add    %eax,%esi
 6aa:	7e 3c                	jle    6e8 <memcpy-0xc00ff918>
 6ac:	91                   	xchg   %eax,%ecx
 6ad:	04 02                	add    $0x2,%al
 6af:	03 8e 01 ba 59 04    	add    0x459ba01(%esi),%ecx
 6b5:	01 03                	add    %eax,(%ebx)
 6b7:	f1                   	icebp  
 6b8:	7e 3c                	jle    6f6 <memcpy-0xc00ff90a>
 6ba:	59                   	pop    %ecx
 6bb:	04 02                	add    $0x2,%al
 6bd:	03 8d 01 ba 59 04    	add    0x459ba01(%ebp),%ecx
 6c3:	01 03                	add    %eax,(%ebx)
 6c5:	f2 7e 3c             	repnz jle 704 <memcpy-0xc00ff8fc>
 6c8:	8b 04 02             	mov    (%edx,%eax,1),%eax
 6cb:	03 92 01 ba 59 04    	add    0x459ba01(%edx),%edx
 6d1:	01 03                	add    %eax,(%ebx)
 6d3:	ed                   	in     (%dx),%eax
 6d4:	7e 3c                	jle    712 <memcpy-0xc00ff8ee>
 6d6:	00 02                	add    %al,(%edx)
 6d8:	04 01                	add    $0x1,%al
 6da:	06                   	push   %es
 6db:	90                   	nop
 6dc:	00 02                	add    %al,(%edx)
 6de:	04 01                	add    $0x1,%al
 6e0:	06                   	push   %es
 6e1:	08 e8                	or     %ch,%al
 6e3:	00 02                	add    %al,(%edx)
 6e5:	04 01                	add    $0x1,%al
 6e7:	08 73 00             	or     %dh,0x0(%ebx)
 6ea:	02 04 01             	add    (%ecx,%eax,1),%al
 6ed:	08 e3                	or     %ah,%bl
 6ef:	00 02                	add    %al,(%edx)
 6f1:	04 01                	add    $0x1,%al
 6f3:	08 e3                	or     %ah,%bl
 6f5:	00 02                	add    %al,(%edx)
 6f7:	04 01                	add    $0x1,%al
 6f9:	08 e8                	or     %ch,%al
 6fb:	03 6c 08 e4          	add    -0x1c(%eax,%ecx,1),%ebp
 6ff:	4f                   	dec    %edi
 700:	53                   	push   %ebx
 701:	e7 04                	out    %eax,$0x4
 703:	02 03                	add    (%ebx),%al
 705:	9e                   	sahf   
 706:	01 ba 59 04 01 03    	add    %edi,0x3010459(%edx)
 70c:	e1 7e                	loope  78c <memcpy-0xc00ff874>
 70e:	3c 91                	cmp    $0x91,%al
 710:	04 02                	add    $0x2,%al
 712:	03 9d 01 02 23 01    	add    0x1230201(%ebp),%ebx
 718:	59                   	pop    %ecx
 719:	04 01                	add    $0x1,%al
 71b:	03 e2                	add    %edx,%esp
 71d:	7e 3c                	jle    75b <memcpy-0xc00ff8a5>
 71f:	91                   	xchg   %eax,%ecx
 720:	04 02                	add    $0x2,%al
 722:	03 9c 01 08 74 59 04 	add    0x4597408(%ecx,%eax,1),%ebx
 729:	01 03                	add    %eax,(%ebx)
 72b:	e3 7e                	jecxz  7ab <memcpy-0xc00ff855>
 72d:	3c 91                	cmp    $0x91,%al
 72f:	04 02                	add    $0x2,%al
 731:	03 9b 01 ba 59 04    	add    0x459ba01(%ebx),%ebx
 737:	01 03                	add    %eax,(%ebx)
 739:	e4 7e                	in     $0x7e,%al
 73b:	3c 59                	cmp    $0x59,%al
 73d:	04 02                	add    $0x2,%al
 73f:	03 9a 01 ba 59 04    	add    0x459ba01(%edx),%ebx
 745:	01 03                	add    %eax,(%ebx)
 747:	e5 7e                	in     $0x7e,%eax
 749:	3c 8b                	cmp    $0x8b,%al
 74b:	04 02                	add    $0x2,%al
 74d:	03 9f 01 ba 59 04    	add    0x459ba01(%edi),%ebx
 753:	01 03                	add    %eax,(%ebx)
 755:	e0 7e                	loopne 7d5 <memcpy-0xc00ff82b>
 757:	3c 00                	cmp    $0x0,%al
 759:	02 04 01             	add    (%ecx,%eax,1),%al
 75c:	06                   	push   %es
 75d:	90                   	nop
 75e:	00 02                	add    %al,(%edx)
 760:	04 01                	add    $0x1,%al
 762:	06                   	push   %es
 763:	08 a2 00 02 04 01    	or     %ah,0x1040200(%edx)
 769:	08 73 00             	or     %dh,0x0(%ebx)
 76c:	02 04 01             	add    (%ecx,%eax,1),%al
 76f:	08 e3                	or     %ah,%bl
 771:	00 02                	add    %al,(%edx)
 773:	04 01                	add    $0x1,%al
 775:	08 e3                	or     %ah,%bl
 777:	00 02                	add    %al,(%edx)
 779:	04 01                	add    $0x1,%al
 77b:	08 e8                	or     %ch,%al
 77d:	03 12                	add    (%edx),%edx
 77f:	02 28                	add    (%eax),%ch
 781:	01 67 08             	add    %esp,0x8(%edi)
 784:	3d 08 3d 08 3d       	cmp    $0x3d083d08,%eax
 789:	08 3d 08 3d 08 3d    	or     %bh,0x3d083d08
 78f:	08 3d 08 3d 08 3d    	or     %bh,0x3d083d08
 795:	08 3d 32 67 59 59    	or     %bh,0x59596732
 79b:	59                   	pop    %ecx
 79c:	59                   	pop    %ecx
 79d:	59                   	pop    %ecx
 79e:	bb 04 02 03 df       	mov    $0xdf030204,%ebx
 7a3:	00 58 00             	add    %bl,0x0(%eax)
 7a6:	02 04 01             	add    (%ecx,%eax,1),%al
 7a9:	03 0c 82             	add    (%edx,%eax,4),%ecx
 7ac:	04 01                	add    $0x1,%al
 7ae:	03 9d 7f 82 67 5a    	add    0x5a67827f(%ebp),%ebx
 7b4:	67 02 05             	add    (%di),%al
 7b7:	00 01                	add    %al,(%ecx)
 7b9:	01 f5                	add    %esi,%ebp
 7bb:	00 00                	add    %al,(%eax)
 7bd:	00 02                	add    %al,(%edx)
 7bf:	00 49 00             	add    %cl,0x0(%ecx)
 7c2:	00 00                	add    %al,(%eax)
 7c4:	01 01                	add    %eax,(%ecx)
 7c6:	fb                   	sti    
 7c7:	0e                   	push   %cs
 7c8:	0d 00 01 01 01       	or     $0x1010100,%eax
 7cd:	01 00                	add    %eax,(%eax)
 7cf:	00 00                	add    %al,(%eax)
 7d1:	01 00                	add    %eax,(%eax)
 7d3:	00 01                	add    %al,(%ecx)
 7d5:	73 72                	jae    849 <memcpy-0xc00ff7b7>
 7d7:	63 2f                	arpl   %bp,(%edi)
 7d9:	6b 65 72 6e          	imul   $0x6e,0x72(%ebp),%esp
 7dd:	65                   	gs
 7de:	6c                   	insb   (%dx),%es:(%edi)
 7df:	2f                   	das    
 7e0:	69 72 71 00 2e 2f 69 	imul   $0x692f2e00,0x71(%edx),%esi
 7e7:	6e                   	outsb  %ds:(%esi),(%dx)
 7e8:	63 6c 75 64          	arpl   %bp,0x64(%ebp,%esi,2)
 7ec:	65 00 00             	add    %al,%gs:(%eax)
 7ef:	69 64 74 2e 63 00 01 	imul   $0x10063,0x2e(%esp,%esi,2),%esp
 7f6:	00 
 7f7:	00 78 38             	add    %bh,0x38(%eax)
 7fa:	36                   	ss
 7fb:	2e                   	cs
 7fc:	68 00 02 00 00       	push   $0x200
 801:	74 79                	je     87c <memcpy-0xc00ff784>
 803:	70 65                	jo     86a <memcpy-0xc00ff796>
 805:	73 2e                	jae    835 <memcpy-0xc00ff7cb>
 807:	68 00 02 00 00       	push   $0x200
 80c:	00 00                	add    %al,(%eax)
 80e:	05 02 10 10 10       	add    $0x10101002,%eax
 813:	c0 18 22             	rcrb   $0x22,(%eax)
 816:	2c 92                	sub    $0x92,%al
 818:	00 02                	add    %al,(%edx)
 81a:	04 02                	add    $0x2,%al
 81c:	bb 00 02 04 02       	mov    $0x2040200,%ebx
 821:	02 23                	add    (%ebx),%ah
 823:	11 a3 08 3d 08 3d    	adc    %esp,0x3d083d08(%ebx)
 829:	08 3d 08 3d 08 3d    	or     %bh,0x3d083d08
 82f:	08 3d 03 7a d6 08    	or     %bh,0x8d67a03
 835:	67 08 67 08          	or     %ah,0x8(%bx)
 839:	67 08 67 08          	or     %ah,0x8(%bx)
 83d:	67 08 67 08          	or     %ah,0x8(%bx)
 841:	bb 08 3d 08 3d       	mov    $0x3d083d08,%ebx
 846:	08 3d 08 3d 08 3d    	or     %bh,0x3d083d08
 84c:	08 3d 03 7a d6 08    	or     %bh,0x8d67a03
 852:	67 08 67 08          	or     %ah,0x8(%bx)
 856:	67 08 67 08          	or     %ah,0x8(%bx)
 85a:	67 08 67 08          	or     %ah,0x8(%bx)
 85e:	59                   	pop    %ecx
 85f:	08 3f                	or     %bh,(%edi)
 861:	08 3d 08 3d 08 3f    	or     %bh,0x3f083d08
 867:	04 02                	add    $0x2,%al
 869:	03 af 01 58 04 01    	add    0x1045801(%edi),%ebp
 86f:	03 d1                	add    %ecx,%edx
 871:	7e 90                	jle    803 <memcpy-0xc00ff7fd>
 873:	04 02                	add    $0x2,%al
 875:	03 b0 01 90 75 04    	add    0x4759001(%eax),%esi
 87b:	01 03                	add    %eax,(%ebx)
 87d:	cf                   	iret   
 87e:	7e 3c                	jle    8bc <memcpy-0xc00ff744>
 880:	04 02                	add    $0x2,%al
 882:	03 b2 01 66 57 04    	add    0x4576601(%edx),%esi
 888:	01 03                	add    %eax,(%ebx)
 88a:	c6                   	(bad)  
 88b:	7e 74                	jle    901 <memcpy-0xc00ff6ff>
 88d:	04 02                	add    $0x2,%al
 88f:	03 bb 01 74 04 01    	add    0x1047401(%ebx),%edi
 895:	03 c6                	add    %esi,%eax
 897:	7e 3c                	jle    8d5 <memcpy-0xc00ff72b>
 899:	03 0b                	add    (%ebx),%ecx
 89b:	90                   	nop
 89c:	03 75 20             	add    0x20(%ebp),%esi
 89f:	03 0b                	add    (%ebx),%ecx
 8a1:	74 03                	je     8a6 <memcpy-0xc00ff75a>
 8a3:	75 20                	jne    8c5 <memcpy-0xc00ff73b>
 8a5:	77 08                	ja     8af <memcpy-0xc00ff751>
 8a7:	67 08 67 08          	or     %ah,0x8(%bx)
 8ab:	69 08 69 02 02 00    	imul   $0x20269,(%eax),%ecx
 8b1:	01 01                	add    %eax,(%ecx)
 8b3:	bd 00 00 00 02       	mov    $0x2000000,%ebp
 8b8:	00 75 00             	add    %dh,0x0(%ebp)
 8bb:	00 00                	add    %al,(%eax)
 8bd:	01 01                	add    %eax,(%ecx)
 8bf:	fb                   	sti    
 8c0:	0e                   	push   %cs
 8c1:	0d 00 01 01 01       	or     $0x1010100,%eax
 8c6:	01 00                	add    %eax,(%eax)
 8c8:	00 00                	add    %al,(%eax)
 8ca:	01 00                	add    %eax,(%eax)
 8cc:	00 01                	add    %al,(%ecx)
 8ce:	73 72                	jae    942 <memcpy-0xc00ff6be>
 8d0:	63 2f                	arpl   %bp,(%edi)
 8d2:	6b 65 72 6e          	imul   $0x6e,0x72(%ebp),%esp
 8d6:	65                   	gs
 8d7:	6c                   	insb   (%dx),%es:(%edi)
 8d8:	2f                   	das    
 8d9:	69 72 71 00 2e 2f 69 	imul   $0x692f2e00,0x71(%edx),%esi
 8e0:	6e                   	outsb  %ds:(%esi),(%dx)
 8e1:	63 6c 75 64          	arpl   %bp,0x64(%ebp,%esi,2)
 8e5:	65 00 2e             	add    %ch,%gs:(%esi)
 8e8:	2f                   	das    
 8e9:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%esi),%ebp
 8f0:	2f                   	das    
 8f1:	61                   	popa   
 8f2:	64                   	fs
 8f3:	74 00                	je     8f5 <memcpy-0xc00ff70b>
 8f5:	00 69 72             	add    %ch,0x72(%ecx)
 8f8:	71 5f                	jno    959 <memcpy-0xc00ff6a7>
 8fa:	68 61 6e 64 6c       	push   $0x6c646e61
 8ff:	65 2e 63 00          	gs arpl %ax,%cs:%gs:(%eax)
 903:	01 00                	add    %eax,(%eax)
 905:	00 78 38             	add    %bh,0x38(%eax)
 908:	36                   	ss
 909:	2e                   	cs
 90a:	68 00 02 00 00       	push   $0x200
 90f:	74 79                	je     98a <memcpy-0xc00ff676>
 911:	70 65                	jo     978 <memcpy-0xc00ff688>
 913:	73 2e                	jae    943 <memcpy-0xc00ff6bd>
 915:	68 00 02 00 00       	push   $0x200
 91a:	6c                   	insb   (%dx),%es:(%edi)
 91b:	69 73 74 2e 68 00 03 	imul   $0x300682e,0x74(%ebx),%esi
 922:	00 00                	add    %al,(%eax)
 924:	70 72                	jo     998 <memcpy-0xc00ff668>
 926:	6f                   	outsl  %ds:(%esi),(%dx)
 927:	63 65 73             	arpl   %sp,0x73(%ebp)
 92a:	73 2e                	jae    95a <memcpy-0xc00ff6a6>
 92c:	68 00 02 00 00       	push   $0x200
 931:	00 00                	add    %al,(%eax)
 933:	05 02 b0 13 10       	add    $0x1013b002,%eax
 938:	c0 14 e5 3d 84 89 84 	rclb   $0x91,-0x7b767bc3(,%eiz,8)
 93f:	91 
 940:	2f                   	das    
 941:	5a                   	pop    %edx
 942:	5a                   	pop    %edx
 943:	64                   	fs
 944:	5a                   	pop    %edx
 945:	03 78 66             	add    0x66(%eax),%edi
 948:	8a 03                	mov    (%ebx),%al
 94a:	71 f2                	jno    93e <memcpy-0xc00ff6c2>
 94c:	04 02                	add    $0x2,%al
 94e:	03 99 01 82 04 01    	add    0x1048201(%ecx),%ebx
 954:	03 ea                	add    %edx,%ebp
 956:	7e 20                	jle    978 <memcpy-0xc00ff688>
 958:	f3 08 2f             	repz or %ch,(%edi)
 95b:	03 0a                	add    (%edx),%ecx
 95d:	08 c8                	or     %cl,%al
 95f:	03 77 3c             	add    0x3c(%edi),%esi
 962:	03 09                	add    (%ecx),%ecx
 964:	74 03                	je     969 <memcpy-0xc00ff697>
 966:	77 66                	ja     9ce <memcpy-0xc00ff632>
 968:	00 02                	add    %al,(%edx)
 96a:	04 01                	add    $0x1,%al
 96c:	03 78 66             	add    0x66(%eax),%edi
 96f:	02 19                	add    (%ecx),%bl
 971:	00 01                	add    %al,(%ecx)
 973:	01 78 00             	add    %edi,0x0(%eax)
 976:	00 00                	add    %al,(%eax)
 978:	02 00                	add    (%eax),%al
 97a:	4b                   	dec    %ebx
 97b:	00 00                	add    %al,(%eax)
 97d:	00 01                	add    %al,(%ecx)
 97f:	01 fb                	add    %edi,%ebx
 981:	0e                   	push   %cs
 982:	0d 00 01 01 01       	or     $0x1010100,%eax
 987:	01 00                	add    %eax,(%eax)
 989:	00 00                	add    %al,(%eax)
 98b:	01 00                	add    %eax,(%eax)
 98d:	00 01                	add    %al,(%ecx)
 98f:	73 72                	jae    a03 <memcpy-0xc00ff5fd>
 991:	63 2f                	arpl   %bp,(%edi)
 993:	6b 65 72 6e          	imul   $0x6e,0x72(%ebp),%esp
 997:	65                   	gs
 998:	6c                   	insb   (%dx),%es:(%edi)
 999:	2f                   	das    
 99a:	69 72 71 00 2e 2f 69 	imul   $0x692f2e00,0x71(%edx),%esi
 9a1:	6e                   	outsb  %ds:(%esi),(%dx)
 9a2:	63 6c 75 64          	arpl   %bp,0x64(%ebp,%esi,2)
 9a6:	65 00 00             	add    %al,%gs:(%eax)
 9a9:	69 38 32 35 39 2e    	imul   $0x2e393532,(%eax),%edi
 9af:	63 00                	arpl   %ax,(%eax)
 9b1:	01 00                	add    %eax,(%eax)
 9b3:	00 78 38             	add    %bh,0x38(%eax)
 9b6:	36                   	ss
 9b7:	2e                   	cs
 9b8:	68 00 02 00 00       	push   $0x200
 9bd:	74 79                	je     a38 <memcpy-0xc00ff5c8>
 9bf:	70 65                	jo     a26 <memcpy-0xc00ff5da>
 9c1:	73 2e                	jae    9f1 <memcpy-0xc00ff60f>
 9c3:	68 00 02 00 00       	push   $0x200
 9c8:	00 00                	add    %al,(%eax)
 9ca:	05 02 a0 14 10       	add    $0x1014a002,%eax
 9cf:	c0 17 04             	rclb   $0x4,(%edi)
 9d2:	02 03                	add    (%ebx),%al
 9d4:	ec                   	in     (%dx),%al
 9d5:	01 20                	add    %esp,(%eax)
 9d7:	04 01                	add    $0x1,%al
 9d9:	03 94 7e 58 04 02 03 	add    0x3020458(%esi,%edi,2),%edx
 9e0:	ec                   	in     (%dx),%al
 9e1:	01 2e                	add    %ebp,(%esi)
 9e3:	04 01                	add    $0x1,%al
 9e5:	03 a4 7e 02 5d 01 02 	add    0x2015d02(%esi,%edi,2),%esp
 9ec:	02 00                	add    (%eax),%al
 9ee:	01 01                	add    %eax,(%ecx)
 9f0:	d7                   	xlat   %ds:(%ebx)
 9f1:	00 00                	add    %al,(%eax)
 9f3:	00 02                	add    %al,(%edx)
 9f5:	00 70 00             	add    %dh,0x0(%eax)
 9f8:	00 00                	add    %al,(%eax)
 9fa:	01 01                	add    %eax,(%ecx)
 9fc:	fb                   	sti    
 9fd:	0e                   	push   %cs
 9fe:	0d 00 01 01 01       	or     $0x1010100,%eax
 a03:	01 00                	add    %eax,(%eax)
 a05:	00 00                	add    %al,(%eax)
 a07:	01 00                	add    %eax,(%eax)
 a09:	00 01                	add    %al,(%ecx)
 a0b:	73 72                	jae    a7f <memcpy-0xc00ff581>
 a0d:	63 2f                	arpl   %bp,(%edi)
 a0f:	70 72                	jo     a83 <memcpy-0xc00ff57d>
 a11:	6f                   	outsl  %ds:(%esi),(%dx)
 a12:	63 65 73             	arpl   %sp,0x73(%ebp)
 a15:	73 00                	jae    a17 <memcpy-0xc00ff5e9>
 a17:	2e                   	cs
 a18:	2f                   	das    
 a19:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%esi),%ebp
 a20:	2f                   	das    
 a21:	61                   	popa   
 a22:	64                   	fs
 a23:	74 00                	je     a25 <memcpy-0xc00ff5db>
 a25:	2e                   	cs
 a26:	2f                   	das    
 a27:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%esi),%ebp
 a2e:	00 00                	add    %al,(%eax)
 a30:	73 63                	jae    a95 <memcpy-0xc00ff56b>
 a32:	68 65 64 75 6c       	push   $0x6c756465
 a37:	65 2e 63 00          	gs arpl %ax,%cs:%gs:(%eax)
 a3b:	01 00                	add    %eax,(%eax)
 a3d:	00 6c 69 73          	add    %ch,0x73(%ecx,%ebp,2)
 a41:	74 2e                	je     a71 <memcpy-0xc00ff58f>
 a43:	68 00 02 00 00       	push   $0x200
 a48:	74 79                	je     ac3 <memcpy-0xc00ff53d>
 a4a:	70 65                	jo     ab1 <memcpy-0xc00ff54f>
 a4c:	73 2e                	jae    a7c <memcpy-0xc00ff584>
 a4e:	68 00 03 00 00       	push   $0x300
 a53:	78 38                	js     a8d <memcpy-0xc00ff573>
 a55:	36                   	ss
 a56:	2e                   	cs
 a57:	68 00 03 00 00       	push   $0x300
 a5c:	70 72                	jo     ad0 <memcpy-0xc00ff530>
 a5e:	6f                   	outsl  %ds:(%esi),(%dx)
 a5f:	63 65 73             	arpl   %sp,0x73(%ebp)
 a62:	73 2e                	jae    a92 <memcpy-0xc00ff56e>
 a64:	68 00 03 00 00       	push   $0x300
 a69:	00 00                	add    %al,(%eax)
 a6b:	05 02 10 15 10       	add    $0x10151002,%eax
 a70:	c0 03 17             	rolb   $0x17,(%ebx)
 a73:	01 04 02             	add    %eax,(%edx,%eax,1)
 a76:	03 14 3c             	add    (%esp,%edi,1),%edx
 a79:	04 01                	add    $0x1,%al
 a7b:	03 6e 08             	add    0x8(%esi),%ebp
 a7e:	3c 93                	cmp    $0x93,%al
 a80:	75 bb                	jne    a3d <memcpy-0xc00ff5c3>
 a82:	04 02                	add    $0x2,%al
 a84:	6a 4b                	push   $0x4b
 a86:	2f                   	das    
 a87:	3d 75 03 77 66       	cmp    $0x66770375,%eax
 a8c:	03 73 58             	add    0x58(%ebx),%esi
 a8f:	69 2c 3d 67 04 01 03 	imul   $0x2004a0e,0x3010467(,%edi,1),%ebp
 a96:	0e 4a 00 02 
 a9a:	04 01                	add    $0x1,%al
 a9c:	70 04                	jo     aa2 <memcpy-0xc00ff55e>
 a9e:	02 08                	add    (%eax),%cl
 aa0:	79 04                	jns    aa6 <memcpy-0xc00ff55a>
 aa2:	01 08                	add    %ecx,(%eax)
 aa4:	76 04                	jbe    aaa <memcpy-0xc00ff556>
 aa6:	02 03                	add    (%ebx),%al
 aa8:	0c 66                	or     $0x66,%al
 aaa:	04 01                	add    $0x1,%al
 aac:	03 75 58             	add    0x58(%ebp),%esi
 aaf:	75 3d                	jne    aee <memcpy-0xc00ff512>
 ab1:	00 02                	add    %al,(%edx)
 ab3:	04 01                	add    $0x1,%al
 ab5:	3a 00                	cmp    (%eax),%al
 ab7:	02 04 01             	add    (%ecx,%eax,1),%al
 aba:	08 84 00 02 04 01 1f 	or     %al,0x1f010402(%eax,%eax,1)
 ac1:	00 02                	add    %al,(%edx)
 ac3:	04 01                	add    $0x1,%al
 ac5:	3d 02 01 00 01       	cmp    $0x1000102,%eax
 aca:	01 d3                	add    %edx,%ebx
 acc:	00 00                	add    %al,(%eax)
 ace:	00 02                	add    %al,(%edx)
 ad0:	00 6e 00             	add    %ch,0x0(%esi)
 ad3:	00 00                	add    %al,(%eax)
 ad5:	01 01                	add    %eax,(%ecx)
 ad7:	fb                   	sti    
 ad8:	0e                   	push   %cs
 ad9:	0d 00 01 01 01       	or     $0x1010100,%eax
 ade:	01 00                	add    %eax,(%eax)
 ae0:	00 00                	add    %al,(%eax)
 ae2:	01 00                	add    %eax,(%eax)
 ae4:	00 01                	add    %al,(%ecx)
 ae6:	73 72                	jae    b5a <memcpy-0xc00ff4a6>
 ae8:	63 2f                	arpl   %bp,(%edi)
 aea:	70 72                	jo     b5e <memcpy-0xc00ff4a2>
 aec:	6f                   	outsl  %ds:(%esi),(%dx)
 aed:	63 65 73             	arpl   %sp,0x73(%ebp)
 af0:	73 00                	jae    af2 <memcpy-0xc00ff50e>
 af2:	2e                   	cs
 af3:	2f                   	das    
 af4:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%esi),%ebp
 afb:	2f                   	das    
 afc:	61                   	popa   
 afd:	64                   	fs
 afe:	74 00                	je     b00 <memcpy-0xc00ff500>
 b00:	2e                   	cs
 b01:	2f                   	das    
 b02:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%esi),%ebp
 b09:	00 00                	add    %al,(%eax)
 b0b:	74 68                	je     b75 <memcpy-0xc00ff48b>
 b0d:	72 65                	jb     b74 <memcpy-0xc00ff48c>
 b0f:	61                   	popa   
 b10:	64 2e 63 00          	fs arpl %ax,%cs:%fs:(%eax)
 b14:	01 00                	add    %eax,(%eax)
 b16:	00 6c 69 73          	add    %ch,0x73(%ecx,%ebp,2)
 b1a:	74 2e                	je     b4a <memcpy-0xc00ff4b6>
 b1c:	68 00 02 00 00       	push   $0x200
 b21:	74 79                	je     b9c <memcpy-0xc00ff464>
 b23:	70 65                	jo     b8a <memcpy-0xc00ff476>
 b25:	73 2e                	jae    b55 <memcpy-0xc00ff4ab>
 b27:	68 00 03 00 00       	push   $0x300
 b2c:	78 38                	js     b66 <memcpy-0xc00ff49a>
 b2e:	36                   	ss
 b2f:	2e                   	cs
 b30:	68 00 03 00 00       	push   $0x300
 b35:	70 72                	jo     ba9 <memcpy-0xc00ff457>
 b37:	6f                   	outsl  %ds:(%esi),(%dx)
 b38:	63 65 73             	arpl   %sp,0x73(%ebp)
 b3b:	73 2e                	jae    b6b <memcpy-0xc00ff495>
 b3d:	68 00 03 00 00       	push   $0x300
 b42:	00 00                	add    %al,(%eax)
 b44:	05 02 f0 15 10       	add    $0x1015f002,%eax
 b49:	c0 03 17             	rolb   $0x17,(%ebx)
 b4c:	01 67 bb             	add    %esp,-0x45(%edi)
 b4f:	84 65 78             	test   %ah,0x78(%ebp)
 b52:	08 39                	or     %bh,(%ecx)
 b54:	bb 86 3a 02 32       	mov    $0x32023a86,%ebx
 b59:	13 08                	adc    (%eax),%ecx
 b5b:	3d 67 9f a0 00       	cmp    $0xa09f67,%eax
 b60:	02 04 01             	add    (%ecx,%eax,1),%al
 b63:	03 75 66             	add    0x66(%ebp),%esi
 b66:	03 0e                	add    (%esi),%ecx
 b68:	02 28                	add    (%eax),%ch
 b6a:	01 04 02             	add    %eax,(%edx,%eax,1)
 b6d:	03 76 08             	add    0x8(%esi),%esi
 b70:	20 03                	and    %al,(%ebx)
 b72:	72 66                	jb     bda <memcpy-0xc00ff426>
 b74:	78 2b                	js     ba1 <memcpy-0xc00ff45f>
 b76:	75 3d                	jne    bb5 <memcpy-0xc00ff44b>
 b78:	67 04 01             	addr16 add $0x1,%al
 b7b:	03 16                	add    (%esi),%edx
 b7d:	4a                   	dec    %edx
 b7e:	04 02                	add    $0x2,%al
 b80:	03 66 08             	add    0x8(%esi),%esp
 b83:	2e                   	cs
 b84:	04 01                	add    $0x1,%al
 b86:	03 1d 08 74 75 04    	add    0x4757408,%ebx
 b8c:	02 03                	add    (%ebx),%al
 b8e:	75 66                	jne    bf6 <memcpy-0xc00ff40a>
 b90:	59                   	pop    %ecx
 b91:	3d 3d 75 04 01       	cmp    $0x104753d,%eax
 b96:	6e                   	outsb  %ds:(%esi),(%dx)
 b97:	2f                   	das    
 b98:	04 02                	add    $0x2,%al
 b9a:	03 73 90             	add    -0x70(%ebx),%esi
 b9d:	02 16                	add    (%esi),%dl
 b9f:	00 01                	add    %al,(%ecx)
 ba1:	01                   	.byte 0x1

Disassembly of section .debug_str:

00000000 <.debug_str>:
   0:	76 61                	jbe    63 <memcpy-0xc00fff9d>
   2:	6c                   	insb   (%dx),%es:(%edi)
   3:	75 65                	jne    6a <memcpy-0xc00fff96>
   5:	00 75 69             	add    %dh,0x69(%ebp)
   8:	6e                   	outsb  %ds:(%esi),(%dx)
   9:	74 33                	je     3e <memcpy-0xc00fffc2>
   b:	32 5f 74             	xor    0x74(%edi),%bl
   e:	00 73 69             	add    %dh,0x69(%ebx)
  11:	7a 65                	jp     78 <memcpy-0xc00fff88>
  13:	5f                   	pop    %edi
  14:	74 00                	je     16 <memcpy-0xc00fffea>
  16:	69 74 6f 61 5f 62 75 	imul   $0x6675625f,0x61(%edi,%ebp,2),%esi
  1d:	66 
  1e:	00 69 74             	add    %ch,0x74(%ecx)
  21:	6f                   	outsl  %ds:(%esi),(%dx)
  22:	61                   	popa   
  23:	00 73 72             	add    %dh,0x72(%ebx)
  26:	63 2f                	arpl   %bp,(%edi)
  28:	6c                   	insb   (%dx),%es:(%edi)
  29:	69 62 2f 73 74 72 69 	imul   $0x69727473,0x2f(%edx),%esp
  30:	6e                   	outsb  %ds:(%esi),(%dx)
  31:	67 2e 63 00          	arpl   %ax,%cs:(%bx,%si)
  35:	75 74                	jne    ab <memcpy-0xc00fff55>
  37:	6f                   	outsl  %ds:(%esi),(%dx)
  38:	61                   	popa   
  39:	00 74 6f 75          	add    %dh,0x75(%edi,%ebp,2)
  3d:	70 70                	jo     af <memcpy-0xc00fff51>
  3f:	65                   	gs
  40:	72 00                	jb     42 <memcpy-0xc00fffbe>
  42:	62 61 73             	bound  %esp,0x73(%ecx)
  45:	65 00 75 6e          	add    %dh,%gs:0x6e(%ebp)
  49:	73 69                	jae    b4 <memcpy-0xc00fff4c>
  4b:	67 6e                	outsb  %ds:(%si),(%dx)
  4d:	65 64 20 63 68       	gs and %ah,%fs:%gs:0x68(%ebx)
  52:	61                   	popa   
  53:	72 00                	jb     55 <memcpy-0xc00fffab>
  55:	2f                   	das    
  56:	68 6f 6d 65 2f       	push   $0x2f656d6f
  5b:	6c                   	insb   (%dx),%es:(%edi)
  5c:	65 6f                	outsl  %gs:(%esi),(%dx)
  5e:	66                   	data16
  5f:	65 6e                	outsb  %gs:(%esi),(%dx)
  61:	2f                   	das    
  62:	6c                   	insb   (%dx),%es:(%edi)
  63:	65 6f                	outsl  %gs:(%esi),(%dx)
  65:	66                   	data16
  66:	65 6e                	outsb  %gs:(%esi),(%dx)
  68:	63 6f 64             	arpl   %bp,0x64(%edi)
  6b:	65                   	gs
  6c:	2f                   	das    
  6d:	4f                   	dec    %edi
  6e:	53                   	push   %ebx
  6f:	4c                   	dec    %esp
  70:	61                   	popa   
  71:	62 31                	bound  %esi,(%ecx)
  73:	00 62 6f             	add    %ah,0x6f(%edx)
  76:	6f                   	outsl  %ds:(%esi),(%dx)
  77:	6c                   	insb   (%dx),%es:(%edi)
  78:	65                   	gs
  79:	61                   	popa   
  7a:	6e                   	outsb  %ds:(%esi),(%dx)
  7b:	00 6e 65             	add    %ch,0x65(%esi)
  7e:	67 61                	addr16 popa 
  80:	74 69                	je     eb <memcpy-0xc00fff15>
  82:	76 65                	jbe    e9 <memcpy-0xc00fff17>
  84:	00 6d 65             	add    %ch,0x65(%ebp)
  87:	6d                   	insl   (%dx),%es:(%edi)
  88:	63 70 79             	arpl   %si,0x79(%eax)
  8b:	00 47 4e             	add    %al,0x4e(%edi)
  8e:	55                   	push   %ebp
  8f:	20 43 20             	and    %al,0x20(%ebx)
  92:	34 2e                	xor    $0x2e,%al
  94:	36 2e 33 00          	ss xor %cs:%ss:(%eax),%eax
  98:	73 68                	jae    102 <memcpy-0xc00ffefe>
  9a:	6f                   	outsl  %ds:(%esi),(%dx)
  9b:	72 74                	jb     111 <memcpy-0xc00ffeef>
  9d:	20 75 6e             	and    %dh,0x6e(%ebp)
  a0:	73 69                	jae    10b <memcpy-0xc00ffef5>
  a2:	67 6e                	outsb  %ds:(%si),(%dx)
  a4:	65 64 20 69 6e       	gs and %ch,%fs:%gs:0x6e(%ecx)
  a9:	74 00                	je     ab <memcpy-0xc00fff55>
  ab:	64 69 67 69 74 73 00 	imul   $0x74007374,%fs:0x69(%edi),%esp
  b2:	74 
  b3:	6f                   	outsl  %ds:(%esi),(%dx)
  b4:	6c                   	insb   (%dx),%es:(%edi)
  b5:	6f                   	outsl  %ds:(%esi),(%dx)
  b6:	77 65                	ja     11d <memcpy-0xc00ffee3>
  b8:	72 00                	jb     ba <memcpy-0xc00fff46>
  ba:	73 74                	jae    130 <memcpy-0xc00ffed0>
  bc:	61                   	popa   
  bd:	72 74                	jb     133 <memcpy-0xc00ffecd>
  bf:	00 73 68             	add    %dh,0x68(%ebx)
  c2:	6f                   	outsl  %ds:(%esi),(%dx)
  c3:	72 74                	jb     139 <memcpy-0xc00ffec7>
  c5:	20 69 6e             	and    %ch,0x6e(%ecx)
  c8:	74 00                	je     ca <memcpy-0xc00fff36>
  ca:	6d                   	insl   (%dx),%es:(%edi)
  cb:	65                   	gs
  cc:	6d                   	insl   (%dx),%es:(%edi)
  cd:	73 65                	jae    134 <memcpy-0xc00ffecc>
  cf:	74 00                	je     d1 <memcpy-0xc00fff2f>
  d1:	75 74                	jne    147 <memcpy-0xc00ffeb9>
  d3:	6f                   	outsl  %ds:(%esi),(%dx)
  d4:	61                   	popa   
  d5:	5f                   	pop    %edi
  d6:	62 75 66             	bound  %esi,0x66(%ebp)
  d9:	00 77 61             	add    %dh,0x61(%edi)
  dc:	69 74 5f 69 6e 74 72 	imul   $0x72746e,0x69(%edi,%ebx,2),%esi
  e3:	00 
  e4:	70 61                	jo     147 <memcpy-0xc00ffeb9>
  e6:	6e                   	outsb  %ds:(%esi),(%dx)
  e7:	69 63 00 66 69 6c 65 	imul   $0x656c6966,0x0(%ebx),%esp
  ee:	00 73 72             	add    %dh,0x72(%ebx)
  f1:	63 2f                	arpl   %bp,(%edi)
  f3:	6c                   	insb   (%dx),%es:(%edi)
  f4:	69 62 2f 61 62 6f 72 	imul   $0x726f6261,0x2f(%edx),%esp
  fb:	74 2e                	je     12b <memcpy-0xc00ffed5>
  fd:	63 00                	arpl   %ax,(%eax)
  ff:	6c                   	insb   (%dx),%es:(%edi)
 100:	69 6e 65 00 61 62 6f 	imul   $0x6f626100,0x65(%esi),%ebp
 107:	72 74                	jb     17d <memcpy-0xc00ffe83>
 109:	00 53 65             	add    %dl,0x65(%ebx)
 10c:	6d                   	insl   (%dx),%es:(%edi)
 10d:	61                   	popa   
 10e:	70 68                	jo     178 <memcpy-0xc00ffe88>
 110:	6f                   	outsl  %ds:(%esi),(%dx)
 111:	72 65                	jb     178 <memcpy-0xc00ffe88>
 113:	00 54 72 61          	add    %dl,0x61(%edx,%esi,2)
 117:	70 46                	jo     15f <memcpy-0xc00ffea1>
 119:	72 61                	jb     17c <memcpy-0xc00ffe84>
 11b:	6d                   	insl   (%dx),%es:(%edi)
 11c:	65 00 6c 69 73       	add    %ch,%gs:0x73(%ecx,%ebp,2)
 121:	74 5f                	je     182 <memcpy-0xc00ffe7e>
 123:	64                   	fs
 124:	65                   	gs
 125:	6c                   	insb   (%dx),%es:(%edi)
 126:	00 65 66             	add    %ah,0x66(%ebp)
 129:	6c                   	insb   (%dx),%es:(%edi)
 12a:	61                   	popa   
 12b:	67 73 00             	addr16 jae 12e <memcpy-0xc00ffed2>
 12e:	6c                   	insb   (%dx),%es:(%edi)
 12f:	69 73 74 5f 61 64 64 	imul   $0x6464615f,0x74(%ebx),%esi
 136:	5f                   	pop    %edi
 137:	62 65 66             	bound  %esp,0x66(%ebp)
 13a:	6f                   	outsl  %ds:(%esi),(%dx)
 13b:	72 65                	jb     1a2 <memcpy-0xc00ffe5e>
 13d:	00 6c 69 73          	add    %ch,0x73(%ecx,%ebp,2)
 141:	74 5f                	je     1a2 <memcpy-0xc00ffe5e>
 143:	61                   	popa   
 144:	64 64 00 73 65       	fs add %dh,%fs:0x65(%ebx)
 149:	6d                   	insl   (%dx),%es:(%edi)
 14a:	71 00                	jno    14c <memcpy-0xc00ffeb4>
 14c:	6c                   	insb   (%dx),%es:(%edi)
 14d:	69 73 74 00 75 69 6e 	imul   $0x6e697500,0x74(%ebx),%esi
 154:	74 38                	je     18e <memcpy-0xc00ffe72>
 156:	5f                   	pop    %edi
 157:	74 00                	je     159 <memcpy-0xc00ffea7>
 159:	6c                   	insb   (%dx),%es:(%edi)
 15a:	6f                   	outsl  %ds:(%esi),(%dx)
 15b:	63 6b 5f             	arpl   %bp,0x5f(%ebx)
 15e:	63 6f 75             	arpl   %bp,0x75(%edi)
 161:	6e                   	outsb  %ds:(%esi),(%dx)
 162:	74 00                	je     164 <memcpy-0xc00ffe9c>
 164:	6c                   	insb   (%dx),%es:(%edi)
 165:	69 73 74 5f 65 6d 70 	imul   $0x706d655f,0x74(%ebx),%esi
 16c:	74 79                	je     1e7 <memcpy-0xc00ffe19>
 16e:	00 71 75             	add    %dh,0x75(%ecx)
 171:	65                   	gs
 172:	75 65                	jne    1d9 <memcpy-0xc00ffe27>
 174:	00 6e 65             	add    %ch,0x65(%esi)
 177:	77 5f                	ja     1d8 <memcpy-0xc00ffe28>
 179:	73 65                	jae    1e0 <memcpy-0xc00ffe20>
 17b:	6d                   	insl   (%dx),%es:(%edi)
 17c:	00 6c 69 73          	add    %ch,0x73(%ecx,%ebp,2)
 180:	74 5f                	je     1e1 <memcpy-0xc00ffe1f>
 182:	69 6e 69 74 00 72 65 	imul   $0x65720074,0x69(%esi),%ebp
 189:	61                   	popa   
 18a:	64                   	fs
 18b:	66                   	data16
 18c:	00 75 6e             	add    %dh,0x6e(%ebp)
 18f:	6c                   	insb   (%dx),%es:(%edi)
 190:	6f                   	outsl  %ds:(%esi),(%dx)
 191:	63 6b 00             	arpl   %bp,0x0(%ebx)
 194:	6b 73 74 61          	imul   $0x61,0x74(%ebx),%esi
 198:	63 6b 00             	arpl   %bp,0x0(%ebx)
 19b:	64                   	fs
 19c:	61                   	popa   
 19d:	74 61                	je     200 <memcpy-0xc00ffe00>
 19f:	00 73 72             	add    %dh,0x72(%ebx)
 1a2:	63 2f                	arpl   %bp,(%edi)
 1a4:	6c                   	insb   (%dx),%es:(%edi)
 1a5:	69 62 2f 73 79 6e 63 	imul   $0x636e7973,0x2f(%edx),%esp
 1ac:	2e 63 00             	arpl   %ax,%cs:(%eax)
 1af:	65                   	gs
 1b0:	73 70                	jae    222 <memcpy-0xc00ffdde>
 1b2:	5f                   	pop    %edi
 1b3:	00 62 6c             	add    %ah,0x6c(%edx)
 1b6:	6f                   	outsl  %ds:(%esi),(%dx)
 1b7:	63 6b 00             	arpl   %bp,0x0(%ebx)
 1ba:	63 75 72             	arpl   %si,0x72(%ebp)
 1bd:	72 65                	jb     224 <memcpy-0xc00ffddc>
 1bf:	6e                   	outsb  %ds:(%esi),(%dx)
 1c0:	74 5f                	je     221 <memcpy-0xc00ffddf>
 1c2:	70 63                	jo     227 <memcpy-0xc00ffdd9>
 1c4:	62 00                	bound  %eax,(%eax)
 1c6:	4c                   	dec    %esp
 1c7:	69 73 74 48 65 61 64 	imul   $0x64616548,0x74(%ebx),%esi
 1ce:	00 70 72             	add    %dh,0x72(%eax)
 1d1:	65                   	gs
 1d2:	76 00                	jbe    1d4 <memcpy-0xc00ffe2c>
 1d4:	69 6e 74 65 72 72 75 	imul   $0x75727265,0x74(%esi),%ebp
 1db:	70 74                	jo     251 <memcpy-0xc00ffdaf>
 1dd:	5f                   	pop    %edi
 1de:	66                   	data16
 1df:	6c                   	insb   (%dx),%es:(%edi)
 1e0:	61                   	popa   
 1e1:	67 00 70 6f          	add    %dh,0x6f(%bx,%si)
 1e5:	6f                   	outsl  %ds:(%esi),(%dx)
 1e6:	6c                   	insb   (%dx),%es:(%edi)
 1e7:	00 70 61             	add    %dh,0x61(%eax)
 1ea:	67                   	addr16
 1eb:	65                   	gs
 1ec:	5f                   	pop    %edi
 1ed:	69 6e 69 74 65 64 00 	imul   $0x646574,0x69(%esi),%ebp
 1f4:	74 6f                	je     265 <memcpy-0xc00ffd9b>
 1f6:	5f                   	pop    %edi
 1f7:	66                   	data16
 1f8:	72 65                	jb     25f <memcpy-0xc00ffda1>
 1fa:	65 00 6e 62          	add    %ch,%gs:0x62(%esi)
 1fe:	79 74                	jns    274 <memcpy-0xc00ffd8c>
 200:	65 00 67 65          	add    %ah,%gs:0x65(%edi)
 204:	74 5f                	je     265 <memcpy-0xc00ffd9b>
 206:	62 75 63             	bound  %esi,0x63(%ebp)
 209:	6b 65 74 00          	imul   $0x0,0x74(%ebp),%esp
 20d:	70 61                	jo     270 <memcpy-0xc00ffd90>
 20f:	5f                   	pop    %edi
 210:	70 65                	jo     277 <memcpy-0xc00ffd89>
 212:	72 6c                	jb     280 <memcpy-0xc00ffd80>
 214:	65                   	gs
 215:	76 65                	jbe    27c <memcpy-0xc00ffd84>
 217:	6c                   	insb   (%dx),%es:(%edi)
 218:	00 6e 6d             	add    %ch,0x6d(%esi)
 21b:	61                   	popa   
 21c:	6c                   	insb   (%dx),%es:(%edi)
 21d:	6c                   	insb   (%dx),%es:(%edi)
 21e:	6f                   	outsl  %ds:(%esi),(%dx)
 21f:	63 00                	arpl   %ax,(%eax)
 221:	6f                   	outsl  %ds:(%esi),(%dx)
 222:	76 65                	jbe    289 <memcpy-0xc00ffd77>
 224:	72 68                	jb     28e <memcpy-0xc00ffd72>
 226:	65                   	gs
 227:	61                   	popa   
 228:	64 00 70 61          	add    %dh,%fs:0x61(%eax)
 22c:	67                   	addr16
 22d:	65                   	gs
 22e:	5f                   	pop    %edi
 22f:	69 6e 69 74 00 6e 65 	imul   $0x656e0074,0x69(%esi),%ebp
 236:	78 74                	js     2ac <memcpy-0xc00ffd54>
 238:	66                   	data16
 239:	00 6f 76             	add    %ch,0x76(%edi)
 23c:	75 5f                	jne    29d <memcpy-0xc00ffd63>
 23e:	6d                   	insl   (%dx),%es:(%edi)
 23f:	61                   	popa   
 240:	67 69 63 00 73 72 63 	imul   $0x2f637273,0x0(%bp,%di),%esp
 247:	2f 
 248:	6c                   	insb   (%dx),%es:(%edi)
 249:	69 62 2f 6d 61 6c 6c 	imul   $0x6c6c616d,0x2f(%edx),%esp
 250:	6f                   	outsl  %ds:(%esi),(%dx)
 251:	63 2e                	arpl   %bp,(%esi)
 253:	63 00                	arpl   %ax,(%eax)
 255:	6f                   	outsl  %ds:(%esi),(%dx)
 256:	76 75                	jbe    2cd <memcpy-0xc00ffd33>
 258:	5f                   	pop    %edi
 259:	62 75 63             	bound  %esi,0x63(%ebp)
 25c:	6b 65 74 00          	imul   $0x0,0x74(%ebp),%esp
 260:	6f                   	outsl  %ds:(%esi),(%dx)
 261:	76 5f                	jbe    2c2 <memcpy-0xc00ffd3e>
 263:	6e                   	outsb  %ds:(%esi),(%dx)
 264:	65                   	gs
 265:	78 74                	js     2db <memcpy-0xc00ffd25>
 267:	00 66 69             	add    %ah,0x69(%esi)
 26a:	65                   	gs
 26b:	6c                   	insb   (%dx),%es:(%edi)
 26c:	64                   	fs
 26d:	5f                   	pop    %edi
 26e:	77 69                	ja     2d9 <memcpy-0xc00ffd27>
 270:	64                   	fs
 271:	74 68                	je     2db <memcpy-0xc00ffd25>
 273:	00 62 75             	add    %ah,0x75(%edx)
 276:	66 5f                	pop    %di
 278:	69 6e 74 00 70 75 74 	imul   $0x74757000,0x74(%esi),%ebp
 27f:	63 68 61             	arpl   %bp,0x61(%eax)
 282:	72 5f                	jb     2e3 <memcpy-0xc00ffd1d>
 284:	66                   	data16
 285:	75 6e                	jne    2f5 <memcpy-0xc00ffd0b>
 287:	63 00                	arpl   %ax,(%eax)
 289:	76 66                	jbe    2f1 <memcpy-0xc00ffd0f>
 28b:	70 72                	jo     2ff <memcpy-0xc00ffd01>
 28d:	69 6e 74 66 00 62 75 	imul   $0x75620066,0x74(%esi),%ebp
 294:	66 5f                	pop    %di
 296:	73 74                	jae    30c <memcpy-0xc00ffcf4>
 298:	72 00                	jb     29a <memcpy-0xc00ffd66>
 29a:	66 6f                	outsw  %ds:(%esi),(%dx)
 29c:	72 6d                	jb     30b <memcpy-0xc00ffcf5>
 29e:	61                   	popa   
 29f:	74 00                	je     2a1 <memcpy-0xc00ffd5f>
 2a1:	62 75 66             	bound  %esi,0x66(%ebp)
 2a4:	5f                   	pop    %edi
 2a5:	75 6e                	jne    315 <memcpy-0xc00ffceb>
 2a7:	73 69                	jae    312 <memcpy-0xc00ffcee>
 2a9:	67 6e                	outsb  %ds:(%si),(%dx)
 2ab:	65                   	gs
 2ac:	64                   	fs
 2ad:	5f                   	pop    %edi
 2ae:	69 6e 74 00 73 72 63 	imul   $0x63727300,0x74(%esi),%ebp
 2b5:	2f                   	das    
 2b6:	6c                   	insb   (%dx),%es:(%edi)
 2b7:	69 62 2f 76 66 70 72 	imul   $0x72706676,0x2f(%edx),%esp
 2be:	69 6e 74 66 2e 63 00 	imul   $0x632e66,0x74(%esi),%ebp
 2c5:	61                   	popa   
 2c6:	72 67                	jb     32f <memcpy-0xc00ffcd1>
 2c8:	73 00                	jae    2ca <memcpy-0xc00ffd36>
 2ca:	69 6e 5f 62 79 74 65 	imul   $0x65747962,0x5f(%esi),%ebp
 2d1:	00 69 6e             	add    %ch,0x6e(%ecx)
 2d4:	69 74 5f 64 65 62 75 	imul   $0x67756265,0x64(%edi,%ebx,2),%esi
 2db:	67 
 2dc:	00 6f 75             	add    %ch,0x75(%edi)
 2df:	74 5f                	je     340 <memcpy-0xc00ffcc0>
 2e1:	62 79 74             	bound  %edi,0x74(%ecx)
 2e4:	65 00 73 72          	add    %dh,%gs:0x72(%ebx)
 2e8:	63 2f                	arpl   %bp,(%edi)
 2ea:	6c                   	insb   (%dx),%es:(%edi)
 2eb:	69 62 2f 64 65 62 75 	imul   $0x75626564,0x2f(%edx),%esp
 2f2:	67 2e 63 00          	arpl   %ax,%cs:(%bx,%si)
 2f6:	73 65                	jae    35d <memcpy-0xc00ffca3>
 2f8:	72 69                	jb     363 <memcpy-0xc00ffc9d>
 2fa:	61                   	popa   
 2fb:	6c                   	insb   (%dx),%es:(%edi)
 2fc:	5f                   	pop    %edi
 2fd:	69 64 6c 65 00 73 65 	imul   $0x72657300,0x65(%esp,%ebp,2),%esp
 304:	72 
 305:	69 61 6c 5f 70 72 69 	imul   $0x6972705f,0x6c(%ecx),%esp
 30c:	6e                   	outsb  %ds:(%esi),(%dx)
 30d:	74 63                	je     372 <memcpy-0xc00ffc8e>
 30f:	00 70 6f             	add    %dh,0x6f(%eax)
 312:	72 74                	jb     388 <memcpy-0xc00ffc78>
 314:	00 70 72             	add    %dh,0x72(%eax)
 317:	69 6e 74 6b 00 75 69 	imul   $0x6975006b,0x74(%esi),%ebp
 31e:	6e                   	outsb  %ds:(%esi),(%dx)
 31f:	74 31                	je     352 <memcpy-0xc00ffcae>
 321:	36                   	ss
 322:	5f                   	pop    %edi
 323:	74 00                	je     325 <memcpy-0xc00ffcdb>
 325:	64 6f                	outsl  %fs:(%esi),(%dx)
 327:	6e                   	outsb  %ds:(%esi),(%dx)
 328:	74 63                	je     38d <memcpy-0xc00ffc73>
 32a:	61                   	popa   
 32b:	72 65                	jb     392 <memcpy-0xc00ffc6e>
 32d:	00 72 73             	add    %dh,0x73(%edx)
 330:	76 31                	jbe    363 <memcpy-0xc00ffc9d>
 332:	00 69 6e             	add    %ch,0x6e(%ecx)
 335:	69 74 5f 6b 76 6d 00 	imul   $0x65006d76,0x6b(%edi,%ebx,2),%esi
 33c:	65 
 33d:	73 70                	jae    3af <memcpy-0xc00ffc51>
 33f:	30 00                	xor    %al,(%eax)
 341:	73 72                	jae    3b5 <memcpy-0xc00ffc4b>
 343:	63 2f                	arpl   %bp,(%edi)
 345:	6b 65 72 6e          	imul   $0x6e,0x72(%ebp),%esp
 349:	65                   	gs
 34a:	6c                   	insb   (%dx),%es:(%edi)
 34b:	2f                   	das    
 34c:	76 6d                	jbe    3bb <memcpy-0xc00ffc45>
 34e:	2f                   	das    
 34f:	6b 76 6d 2e          	imul   $0x2e,0x6d(%esi),%esi
 353:	63 00                	arpl   %ax,(%eax)
 355:	6c                   	insb   (%dx),%es:(%edi)
 356:	69 6d 5f 31 35 5f 30 	imul   $0x305f3531,0x5f(%ebp),%ebp
 35d:	00 53 65             	add    %dl,0x65(%ebx)
 360:	67 44                	addr16 inc %esp
 362:	65                   	gs
 363:	73 63                	jae    3c8 <memcpy-0xc00ffc38>
 365:	00 73 65             	add    %dh,0x65(%ebx)
 368:	74 5f                	je     3c9 <memcpy-0xc00ffc37>
 36a:	67                   	addr16
 36b:	64                   	fs
 36c:	74 00                	je     36e <memcpy-0xc00ffc92>
 36e:	67                   	addr16
 36f:	65                   	gs
 370:	74 5f                	je     3d1 <memcpy-0xc00ffc2f>
 372:	63 72 30             	arpl   %si,0x30(%edx)
 375:	00 73 65             	add    %dh,0x65(%ebx)
 378:	74 5f                	je     3d9 <memcpy-0xc00ffc27>
 37a:	63 72 30             	arpl   %si,0x30(%edx)
 37d:	00 73 65             	add    %dh,0x65(%ebx)
 380:	74 5f                	je     3e1 <memcpy-0xc00ffc1f>
 382:	63 72 33             	arpl   %si,0x33(%edx)
 385:	00 73 69             	add    %dh,0x69(%ebx)
 388:	7a 65                	jp     3ef <memcpy-0xc00ffc11>
 38a:	00 6c 69 6e          	add    %ch,0x6e(%ecx,%ebp,2)
 38e:	6b 00 6c             	imul   $0x6c,(%eax),%eax
 391:	69 6d 5f 31 39 5f 31 	imul   $0x315f3931,0x5f(%ebp),%ebp
 398:	36 00 6b 70          	add    %ch,%ss:0x70(%ebx)
 39c:	64 69 72 00 74 79 70 	imul   $0x65707974,%fs:0x0(%edx),%esi
 3a3:	65 
 3a4:	00 62 61             	add    %ah,0x61(%edx)
 3a7:	73 65                	jae    40e <memcpy-0xc00ffbf2>
 3a9:	5f                   	pop    %edi
 3aa:	31 35 5f 30 00 6b    	xor    %esi,0x6b00305f
 3b0:	70 74                	jo     426 <memcpy-0xc00ffbda>
 3b2:	61                   	popa   
 3b3:	62 00                	bound  %eax,(%eax)
 3b5:	62 61 73             	bound  %esp,0x73(%ecx)
 3b8:	65                   	gs
 3b9:	5f                   	pop    %edi
 3ba:	32 33                	xor    (%ebx),%dh
 3bc:	5f                   	pop    %edi
 3bd:	31 36                	xor    %esi,(%esi)
 3bf:	00 69 6e             	add    %ch,0x6e(%ecx)
 3c2:	69 74 5f 73 65 67 00 	imul   $0x62006765,0x73(%edi,%ebx,2),%esi
 3c9:	62 
 3ca:	61                   	popa   
 3cb:	73 65                	jae    432 <memcpy-0xc00ffbce>
 3cd:	5f                   	pop    %edi
 3ce:	33 31                	xor    (%ecx),%esi
 3d0:	5f                   	pop    %edi
 3d1:	32 34 00             	xor    (%eax,%eax,1),%dh
 3d4:	73 72                	jae    448 <memcpy-0xc00ffbb8>
 3d6:	63 2f                	arpl   %bp,(%edi)
 3d8:	6b 65 72 6e          	imul   $0x6e,0x72(%ebp),%esp
 3dc:	65                   	gs
 3dd:	6c                   	insb   (%dx),%es:(%edi)
 3de:	2f                   	das    
 3df:	6d                   	insl   (%dx),%es:(%edi)
 3e0:	61                   	popa   
 3e1:	69 6e 2e 63 00 74 65 	imul   $0x65740063,0x2e(%esi),%ebp
 3e8:	73 74                	jae    45e <memcpy-0xc00ffba2>
 3ea:	5f                   	pop    %edi
 3eb:	70 72                	jo     45f <memcpy-0xc00ffba1>
 3ed:	6f                   	outsl  %ds:(%esi),(%dx)
 3ee:	64                   	fs
 3ef:	75 63                	jne    454 <memcpy-0xc00ffbac>
 3f1:	65                   	gs
 3f2:	72 00                	jb     3f4 <memcpy-0xc00ffc0c>
 3f4:	65 6e                	outsb  %gs:(%esi),(%dx)
 3f6:	74 72                	je     46a <memcpy-0xc00ffb96>
 3f8:	79 00                	jns    3fa <memcpy-0xc00ffc06>
 3fa:	74 65                	je     461 <memcpy-0xc00ffb9f>
 3fc:	73 74                	jae    472 <memcpy-0xc00ffb8e>
 3fe:	5f                   	pop    %edi
 3ff:	73 65                	jae    466 <memcpy-0xc00ffb9a>
 401:	74 75                	je     478 <memcpy-0xc00ffb88>
 403:	70 00                	jo     405 <memcpy-0xc00ffbfb>
 405:	6d                   	insl   (%dx),%es:(%edi)
 406:	75 74                	jne    47c <memcpy-0xc00ffb84>
 408:	65                   	gs
 409:	78 00                	js     40b <memcpy-0xc00ffbf5>
 40b:	6f                   	outsl  %ds:(%esi),(%dx)
 40c:	73 5f                	jae    46d <memcpy-0xc00ffb93>
 40e:	69 6e 69 74 00 66 75 	imul   $0x75660074,0x69(%esi),%ebp
 415:	6c                   	insb   (%dx),%es:(%edi)
 416:	6c                   	insb   (%dx),%es:(%edi)
 417:	00 74 65 73          	add    %dh,0x73(%ebp,%eiz,2)
 41b:	74 5f                	je     47c <memcpy-0xc00ffb84>
 41d:	63 6f 6e             	arpl   %bp,0x6e(%edi)
 420:	73 75                	jae    497 <memcpy-0xc00ffb69>
 422:	6d                   	insl   (%dx),%es:(%edi)
 423:	65                   	gs
 424:	72 00                	jb     426 <memcpy-0xc00ffbda>
 426:	69 6e 69 74 5f 69 64 	imul   $0x64695f74,0x69(%esi),%ebp
 42d:	74 00                	je     42f <memcpy-0xc00ffbd1>
 42f:	6f                   	outsl  %ds:(%esi),(%dx)
 430:	66 66 5f             	data32 pop %di
 433:	31 35 5f 30 00 73    	xor    %esi,0x7300305f
 439:	72 63                	jb     49e <memcpy-0xc00ffb62>
 43b:	2f                   	das    
 43c:	6b 65 72 6e          	imul   $0x6e,0x72(%ebp),%esp
 440:	65                   	gs
 441:	6c                   	insb   (%dx),%es:(%edi)
 442:	2f                   	das    
 443:	69 72 71 2f 69 64 74 	imul   $0x7464692f,0x71(%edx),%esi
 44a:	2e 63 00             	arpl   %ax,%cs:(%eax)
 44d:	6f                   	outsl  %ds:(%esi),(%dx)
 44e:	66 66 5f             	data32 pop %di
 451:	33 31                	xor    (%ecx),%esi
 453:	5f                   	pop    %edi
 454:	31 36                	xor    %esi,(%esi)
 456:	00 73 65             	add    %dh,0x65(%ebx)
 459:	74 5f                	je     4ba <memcpy-0xc00ffb46>
 45b:	69 64 74 00 47 61 74 	imul   $0x65746147,0x0(%esp,%esi,2),%esp
 462:	65 
 463:	44                   	inc    %esp
 464:	65                   	gs
 465:	73 63                	jae    4ca <memcpy-0xc00ffb36>
 467:	00 73 72             	add    %dh,0x72(%ebx)
 46a:	63 2f                	arpl   %bp,(%edi)
 46c:	6b 65 72 6e          	imul   $0x6e,0x72(%ebp),%esp
 470:	65                   	gs
 471:	6c                   	insb   (%dx),%es:(%edi)
 472:	2f                   	das    
 473:	69 72 71 2f 69 72 71 	imul   $0x7172692f,0x71(%edx),%esi
 47a:	5f                   	pop    %edi
 47b:	68 61 6e 64 6c       	push   $0x6c646e61
 480:	65 2e 63 00          	gs arpl %ax,%cs:%gs:(%eax)
 484:	69 72 71 5f 68 61 6e 	imul   $0x6e61685f,0x71(%edx),%esi
 48b:	64                   	fs
 48c:	6c                   	insb   (%dx),%es:(%edi)
 48d:	65 00 69 6e          	add    %ch,%gs:0x6e(%ecx)
 491:	69 74 5f 69 38 32 35 	imul   $0x39353238,0x69(%edi,%ebx,2),%esi
 498:	39 
 499:	00 73 72             	add    %dh,0x72(%ebx)
 49c:	63 2f                	arpl   %bp,(%edi)
 49e:	6b 65 72 6e          	imul   $0x6e,0x72(%ebp),%esp
 4a2:	65                   	gs
 4a3:	6c                   	insb   (%dx),%es:(%edi)
 4a4:	2f                   	das    
 4a5:	69 72 71 2f 69 38 32 	imul   $0x3238692f,0x71(%edx),%esi
 4ac:	35 39 2e 63 00       	xor    $0x632e39,%eax
 4b1:	73 63                	jae    516 <memcpy-0xc00ffaea>
 4b3:	68 65 64 75 6c       	push   $0x6c756465
 4b8:	65 00 73 72          	add    %dh,%gs:0x72(%ebx)
 4bc:	63 2f                	arpl   %bp,(%edi)
 4be:	70 72                	jo     532 <memcpy-0xc00fface>
 4c0:	6f                   	outsl  %ds:(%esi),(%dx)
 4c1:	63 65 73             	arpl   %sp,0x73(%ebp)
 4c4:	73 2f                	jae    4f5 <memcpy-0xc00ffb0b>
 4c6:	73 63                	jae    52b <memcpy-0xc00ffad5>
 4c8:	68 65 64 75 6c       	push   $0x6c756465
 4cd:	65 2e 63 00          	gs arpl %ax,%cs:%gs:(%eax)
 4d1:	6c                   	insb   (%dx),%es:(%edi)
 4d2:	69 73 74 5f 61 64 64 	imul   $0x6464615f,0x74(%ebx),%esi
 4d9:	5f                   	pop    %edi
 4da:	61                   	popa   
 4db:	66                   	data16
 4dc:	74 65                	je     543 <memcpy-0xc00ffabd>
 4de:	72 00                	jb     4e0 <memcpy-0xc00ffb20>
 4e0:	72 75                	jb     557 <memcpy-0xc00ffaa9>
 4e2:	6e                   	outsb  %ds:(%esi),(%dx)
 4e3:	71 00                	jno    4e5 <memcpy-0xc00ffb1b>
 4e5:	71 75                	jno    55c <memcpy-0xc00ffaa4>
 4e7:	65                   	gs
 4e8:	75 65                	jne    54f <memcpy-0xc00ffab1>
 4ea:	5f                   	pop    %edi
 4eb:	69 6e 69 74 00 6e 65 	imul   $0x656e0074,0x69(%esi),%ebp
 4f2:	78 74                	js     568 <memcpy-0xc00ffa98>
 4f4:	5f                   	pop    %edi
 4f5:	70 72                	jo     569 <memcpy-0xc00ffa97>
 4f7:	6f                   	outsl  %ds:(%esi),(%dx)
 4f8:	63 65 73             	arpl   %sp,0x73(%ebp)
 4fb:	73 00                	jae    4fd <memcpy-0xc00ffb03>
 4fd:	74 61                	je     560 <memcpy-0xc00ffaa0>
 4ff:	69 6c 00 73 6c 65 65 	imul   $0x7065656c,0x73(%eax,%eax,1),%ebp
 506:	70 
 507:	00 73 72             	add    %dh,0x72(%ebx)
 50a:	63 2f                	arpl   %bp,(%edi)
 50c:	70 72                	jo     580 <memcpy-0xc00ffa80>
 50e:	6f                   	outsl  %ds:(%esi),(%dx)
 50f:	63 65 73             	arpl   %sp,0x73(%ebp)
 512:	73 2f                	jae    543 <memcpy-0xc00ffabd>
 514:	74 68                	je     57e <memcpy-0xc00ffa82>
 516:	72 65                	jb     57d <memcpy-0xc00ffa83>
 518:	61                   	popa   
 519:	64 2e 63 00          	fs arpl %ax,%cs:%fs:(%eax)
 51d:	70 63                	jo     582 <memcpy-0xc00ffa7e>
 51f:	62 5f 74             	bound  %ebx,0x74(%edi)
 522:	6f                   	outsl  %ds:(%esi),(%dx)
 523:	5f                   	pop    %edi
 524:	77 61                	ja     587 <memcpy-0xc00ffa79>
 526:	6b 65 00 77          	imul   $0x77,0x0(%ebp),%esp
 52a:	61                   	popa   
 52b:	6b 65 75 70          	imul   $0x70,0x75(%ebp),%esp
 52f:	00 63 72             	add    %ah,0x72(%ebx)
 532:	65                   	gs
 533:	61                   	popa   
 534:	74 65                	je     59b <memcpy-0xc00ffa65>
 536:	5f                   	pop    %edi
 537:	6b 74 68 72 65       	imul   $0x65,0x72(%eax,%ebp,2),%esi
 53c:	61                   	popa   
 53d:	64                   	fs
	...

Disassembly of section .debug_loc:

00000000 <.debug_loc>:
       0:	00 00                	add    %al,(%eax)
       2:	00 00                	add    %al,(%eax)
       4:	01 00                	add    %eax,(%eax)
       6:	00 00                	add    %al,(%eax)
       8:	02 00                	add    (%eax),%al
       a:	74 04                	je     10 <memcpy-0xc00ffff0>
       c:	01 00                	add    %eax,(%eax)
       e:	00 00                	add    %al,(%eax)
      10:	03 00                	add    (%eax),%eax
      12:	00 00                	add    %al,(%eax)
      14:	02 00                	add    (%eax),%al
      16:	74 08                	je     20 <memcpy-0xc00fffe0>
      18:	03 00                	add    (%eax),%eax
      1a:	00 00                	add    %al,(%eax)
      1c:	29 00                	sub    %eax,(%eax)
      1e:	00 00                	add    %al,(%eax)
      20:	02 00                	add    (%eax),%al
      22:	75 08                	jne    2c <memcpy-0xc00fffd4>
      24:	29 00                	sub    %eax,(%eax)
      26:	00 00                	add    %al,(%eax)
      28:	2a 00                	sub    (%eax),%al
      2a:	00 00                	add    %al,(%eax)
      2c:	02 00                	add    (%eax),%al
      2e:	74 04                	je     34 <memcpy-0xc00fffcc>
	...
      3c:	14 00                	adc    $0x0,%al
      3e:	00 00                	add    %al,(%eax)
      40:	02 00                	add    (%eax),%al
      42:	91                   	xchg   %eax,%ecx
	...
      4f:	00 14 00             	add    %dl,(%eax,%eax,1)
      52:	00 00                	add    %al,(%eax)
      54:	02 00                	add    (%eax),%al
      56:	91                   	xchg   %eax,%ecx
      57:	04 00                	add    $0x0,%al
	...
      61:	00 00                	add    %al,(%eax)
      63:	00 0e                	add    %cl,(%esi)
      65:	00 00                	add    %al,(%eax)
      67:	00 02                	add    %al,(%edx)
      69:	00 91 08 0e 00 00    	add    %dl,0xe08(%ecx)
      6f:	00 14 00             	add    %dl,(%eax,%eax,1)
      72:	00 00                	add    %al,(%eax)
      74:	06                   	push   %es
      75:	00 91 08 06 31 1c    	add    %dl,0x1c310608(%ecx)
      7b:	9f                   	lahf   
	...
      84:	30 00                	xor    %al,(%eax)
      86:	00 00                	add    %al,(%eax)
      88:	31 00                	xor    %eax,(%eax)
      8a:	00 00                	add    %al,(%eax)
      8c:	02 00                	add    (%eax),%al
      8e:	74 04                	je     94 <memcpy-0xc00fff6c>
      90:	31 00                	xor    %eax,(%eax)
      92:	00 00                	add    %al,(%eax)
      94:	33 00                	xor    (%eax),%eax
      96:	00 00                	add    %al,(%eax)
      98:	02 00                	add    (%eax),%al
      9a:	74 08                	je     a4 <memcpy-0xc00fff5c>
      9c:	33 00                	xor    (%eax),%eax
      9e:	00 00                	add    %al,(%eax)
      a0:	54                   	push   %esp
      a1:	00 00                	add    %al,(%eax)
      a3:	00 02                	add    %al,(%edx)
      a5:	00 75 08             	add    %dh,0x8(%ebp)
      a8:	54                   	push   %esp
      a9:	00 00                	add    %al,(%eax)
      ab:	00 55 00             	add    %dl,0x0(%ebp)
      ae:	00 00                	add    %al,(%eax)
      b0:	02 00                	add    (%eax),%al
      b2:	74 04                	je     b8 <memcpy-0xc00fff48>
	...
      bc:	30 00                	xor    %al,(%eax)
      be:	00 00                	add    %al,(%eax)
      c0:	44                   	inc    %esp
      c1:	00 00                	add    %al,(%eax)
      c3:	00 02                	add    %al,(%edx)
      c5:	00 91 00 44 00 00    	add    %dl,0x4400(%ecx)
      cb:	00 52 00             	add    %dl,0x0(%edx)
      ce:	00 00                	add    %al,(%eax)
      d0:	01 00                	add    %eax,(%eax)
      d2:	51                   	push   %ecx
	...
      db:	30 00                	xor    %al,(%eax)
      dd:	00 00                	add    %al,(%eax)
      df:	3a 00                	cmp    (%eax),%al
      e1:	00 00                	add    %al,(%eax)
      e3:	02 00                	add    (%eax),%al
      e5:	91                   	xchg   %eax,%ecx
      e6:	08 3a                	or     %bh,(%edx)
      e8:	00 00                	add    %al,(%eax)
      ea:	00 44 00 00          	add    %al,0x0(%eax,%eax,1)
      ee:	00 06                	add    %al,(%esi)
      f0:	00 91 08 06 31 1c    	add    %dl,0x1c310608(%ecx)
      f6:	9f                   	lahf   
	...
      ff:	60                   	pusha  
     100:	00 00                	add    %al,(%eax)
     102:	00 61 00             	add    %ah,0x0(%ecx)
     105:	00 00                	add    %al,(%eax)
     107:	02 00                	add    (%eax),%al
     109:	74 04                	je     10f <memcpy-0xc00ffef1>
     10b:	61                   	popa   
     10c:	00 00                	add    %al,(%eax)
     10e:	00 63 00             	add    %ah,0x0(%ebx)
     111:	00 00                	add    %al,(%eax)
     113:	02 00                	add    (%eax),%al
     115:	74 08                	je     11f <memcpy-0xc00ffee1>
     117:	63 00                	arpl   %ax,(%eax)
     119:	00 00                	add    %al,(%eax)
     11b:	9c                   	pushf  
     11c:	00 00                	add    %al,(%eax)
     11e:	00 02                	add    %al,(%edx)
     120:	00 75 08             	add    %dh,0x8(%ebp)
     123:	9c                   	pushf  
     124:	00 00                	add    %al,(%eax)
     126:	00 a0 00 00 00 02    	add    %ah,0x2000000(%eax)
     12c:	00 74 04 a0          	add    %dh,-0x60(%esp,%eax,1)
     130:	00 00                	add    %al,(%eax)
     132:	00 bc 00 00 00 02 00 	add    %bh,0x20000(%eax,%eax,1)
     139:	75 08                	jne    143 <memcpy-0xc00ffebd>
	...
     143:	60                   	pusha  
     144:	00 00                	add    %al,(%eax)
     146:	00 80 00 00 00 02    	add    %al,0x2000000(%eax)
     14c:	00 91 00 80 00 00    	add    %dl,0x8000(%ecx)
     152:	00 87 00 00 00 01    	add    %al,0x1000000(%edi)
     158:	00 50 92             	add    %dl,-0x6e(%eax)
     15b:	00 00                	add    %al,(%eax)
     15d:	00 99 00 00 00 01    	add    %bl,0x1000000(%ecx)
     163:	00 50 9d             	add    %dl,-0x63(%eax)
     166:	00 00                	add    %al,(%eax)
     168:	00 bc 00 00 00 02 00 	add    %bh,0x20000(%eax,%eax,1)
     16f:	91                   	xchg   %eax,%ecx
	...
     178:	00 60 00             	add    %ah,0x0(%eax)
     17b:	00 00                	add    %al,(%eax)
     17d:	7c 00                	jl     17f <memcpy-0xc00ffe81>
     17f:	00 00                	add    %al,(%eax)
     181:	02 00                	add    (%eax),%al
     183:	91                   	xchg   %eax,%ecx
     184:	04 7c                	add    $0x7c,%al
     186:	00 00                	add    %al,(%eax)
     188:	00 9d 00 00 00 01    	add    %bl,0x1000000(%ebp)
     18e:	00 51 9d             	add    %dl,-0x63(%ecx)
     191:	00 00                	add    %al,(%eax)
     193:	00 bc 00 00 00 02 00 	add    %bh,0x20000(%eax,%eax,1)
     19a:	91                   	xchg   %eax,%ecx
     19b:	04 00                	add    $0x0,%al
     19d:	00 00                	add    %al,(%eax)
     19f:	00 00                	add    %al,(%eax)
     1a1:	00 00                	add    %al,(%eax)
     1a3:	00 c0                	add    %al,%al
     1a5:	00 00                	add    %al,(%eax)
     1a7:	00 c1                	add    %al,%cl
     1a9:	00 00                	add    %al,(%eax)
     1ab:	00 02                	add    %al,(%edx)
     1ad:	00 74 04 c1          	add    %dh,-0x3f(%esp,%eax,1)
     1b1:	00 00                	add    %al,(%eax)
     1b3:	00 c3                	add    %al,%bl
     1b5:	00 00                	add    %al,(%eax)
     1b7:	00 02                	add    %al,(%edx)
     1b9:	00 74 08 c3          	add    %dh,-0x3d(%eax,%ecx,1)
     1bd:	00 00                	add    %al,(%eax)
     1bf:	00 e0                	add    %ah,%al
     1c1:	00 00                	add    %al,(%eax)
     1c3:	00 02                	add    %al,(%edx)
     1c5:	00 75 08             	add    %dh,0x8(%ebp)
     1c8:	e0 00                	loopne 1ca <memcpy-0xc00ffe36>
     1ca:	00 00                	add    %al,(%eax)
     1cc:	e8 00 00 00 02       	call   20001d1 <memcpy-0xbe0ffe2f>
     1d1:	00 74 04 e8          	add    %dh,-0x18(%esp,%eax,1)
     1d5:	00 00                	add    %al,(%eax)
     1d7:	00 04 01             	add    %al,(%ecx,%eax,1)
     1da:	00 00                	add    %al,(%eax)
     1dc:	02 00                	add    (%eax),%al
     1de:	75 08                	jne    1e8 <memcpy-0xc00ffe18>
     1e0:	04 01                	add    $0x1,%al
     1e2:	00 00                	add    %al,(%eax)
     1e4:	05 01 00 00 02       	add    $0x2000001,%eax
     1e9:	00 74 04 00          	add    %dh,0x0(%esp,%eax,1)
     1ed:	00 00                	add    %al,(%eax)
     1ef:	00 00                	add    %al,(%eax)
     1f1:	00 00                	add    %al,(%eax)
     1f3:	00 c0                	add    %al,%al
     1f5:	00 00                	add    %al,(%eax)
     1f7:	00 e8                	add    %ch,%al
     1f9:	00 00                	add    %al,(%eax)
     1fb:	00 02                	add    %al,(%edx)
     1fd:	00 91 00 e8 00 00    	add    %dl,0xe800(%ecx)
     203:	00 05 01 00 00 05    	add    %al,0x5000001
     209:	00 91 00 06 1f 9f    	add    %dl,-0x60e0fa00(%ecx)
	...
     217:	c0 00 00             	rolb   $0x0,(%eax)
     21a:	00 fc                	add    %bh,%ah
     21c:	00 00                	add    %al,(%eax)
     21e:	00 02                	add    %al,(%edx)
     220:	00 91 04 fc 00 00    	add    %dl,0xfc04(%ecx)
     226:	00 03                	add    %al,(%ebx)
     228:	01 00                	add    %eax,(%eax)
     22a:	00 01                	add    %al,(%ecx)
     22c:	00 50 03             	add    %dl,0x3(%eax)
     22f:	01 00                	add    %eax,(%eax)
     231:	00 05 01 00 00 03    	add    %al,0x3000001
     237:	00 72 7f             	add    %dh,0x7f(%edx)
     23a:	9f                   	lahf   
	...
     243:	c0 00 00             	rolb   $0x0,(%eax)
     246:	00 e8                	add    %ch,%al
     248:	00 00                	add    %al,(%eax)
     24a:	00 02                	add    %al,(%edx)
     24c:	00 30                	add    %dh,(%eax)
     24e:	9f                   	lahf   
     24f:	e8 00 00 00 05       	call   5000254 <memcpy-0xbb0ffdac>
     254:	01 00                	add    %eax,(%eax)
     256:	00 02                	add    %al,(%edx)
     258:	00 31                	add    %dh,(%ecx)
     25a:	9f                   	lahf   
	...
     263:	10 01                	adc    %al,(%ecx)
     265:	00 00                	add    %al,(%eax)
     267:	11 01                	adc    %eax,(%ecx)
     269:	00 00                	add    %al,(%eax)
     26b:	02 00                	add    (%eax),%al
     26d:	74 04                	je     273 <memcpy-0xc00ffd8d>
     26f:	11 01                	adc    %eax,(%ecx)
     271:	00 00                	add    %al,(%eax)
     273:	13 01                	adc    (%ecx),%eax
     275:	00 00                	add    %al,(%eax)
     277:	02 00                	add    (%eax),%al
     279:	74 08                	je     283 <memcpy-0xc00ffd7d>
     27b:	13 01                	adc    (%ecx),%eax
     27d:	00 00                	add    %al,(%eax)
     27f:	17                   	pop    %ss
     280:	01 00                	add    %eax,(%eax)
     282:	00 02                	add    %al,(%edx)
     284:	00 75 08             	add    %dh,0x8(%ebp)
     287:	17                   	pop    %ss
     288:	01 00                	add    %eax,(%eax)
     28a:	00 24 01             	add    %ah,(%ecx,%eax,1)
     28d:	00 00                	add    %al,(%eax)
     28f:	02 00                	add    (%eax),%al
     291:	74 04                	je     297 <memcpy-0xc00ffd69>
	...
     29b:	30 01                	xor    %al,(%ecx)
     29d:	00 00                	add    %al,(%eax)
     29f:	31 01                	xor    %eax,(%ecx)
     2a1:	00 00                	add    %al,(%eax)
     2a3:	02 00                	add    (%eax),%al
     2a5:	74 04                	je     2ab <memcpy-0xc00ffd55>
     2a7:	31 01                	xor    %eax,(%ecx)
     2a9:	00 00                	add    %al,(%eax)
     2ab:	33 01                	xor    (%ecx),%eax
     2ad:	00 00                	add    %al,(%eax)
     2af:	02 00                	add    (%eax),%al
     2b1:	74 08                	je     2bb <memcpy-0xc00ffd45>
     2b3:	33 01                	xor    (%ecx),%eax
     2b5:	00 00                	add    %al,(%eax)
     2b7:	37                   	aaa    
     2b8:	01 00                	add    %eax,(%eax)
     2ba:	00 02                	add    %al,(%edx)
     2bc:	00 75 08             	add    %dh,0x8(%ebp)
     2bf:	37                   	aaa    
     2c0:	01 00                	add    %eax,(%eax)
     2c2:	00 44 01 00          	add    %al,0x0(%ecx,%eax,1)
     2c6:	00 02                	add    %al,(%edx)
     2c8:	00 74 04 00          	add    %dh,0x0(%esp,%eax,1)
     2cc:	00 00                	add    %al,(%eax)
     2ce:	00 00                	add    %al,(%eax)
     2d0:	00 00                	add    %al,(%eax)
     2d2:	00 50 01             	add    %dl,0x1(%eax)
     2d5:	00 00                	add    %al,(%eax)
     2d7:	51                   	push   %ecx
     2d8:	01 00                	add    %eax,(%eax)
     2da:	00 02                	add    %al,(%edx)
     2dc:	00 74 04 51          	add    %dh,0x51(%esp,%eax,1)
     2e0:	01 00                	add    %eax,(%eax)
     2e2:	00 53 01             	add    %dl,0x1(%ebx)
     2e5:	00 00                	add    %al,(%eax)
     2e7:	02 00                	add    (%eax),%al
     2e9:	74 08                	je     2f3 <memcpy-0xc00ffd0d>
     2eb:	53                   	push   %ebx
     2ec:	01 00                	add    %eax,(%eax)
     2ee:	00 71 01             	add    %dh,0x1(%ecx)
     2f1:	00 00                	add    %al,(%eax)
     2f3:	02 00                	add    (%eax),%al
     2f5:	75 08                	jne    2ff <memcpy-0xc00ffd01>
     2f7:	71 01                	jno    2fa <memcpy-0xc00ffd06>
     2f9:	00 00                	add    %al,(%eax)
     2fb:	72 01                	jb     2fe <memcpy-0xc00ffd02>
     2fd:	00 00                	add    %al,(%eax)
     2ff:	02 00                	add    (%eax),%al
     301:	74 04                	je     307 <memcpy-0xc00ffcf9>
	...
     30b:	80 01 00             	addb   $0x0,(%ecx)
     30e:	00 81 01 00 00 02    	add    %al,0x2000001(%ecx)
     314:	00 74 04 81          	add    %dh,-0x7f(%esp,%eax,1)
     318:	01 00                	add    %eax,(%eax)
     31a:	00 83 01 00 00 02    	add    %al,0x2000001(%ebx)
     320:	00 74 08 83          	add    %dh,-0x7d(%eax,%ecx,1)
     324:	01 00                	add    %eax,(%eax)
     326:	00 a1 01 00 00 02    	add    %ah,0x2000001(%ecx)
     32c:	00 75 08             	add    %dh,0x8(%ebp)
     32f:	a1 01 00 00 a2       	mov    0xa2000001,%eax
     334:	01 00                	add    %eax,(%eax)
     336:	00 02                	add    %al,(%edx)
     338:	00 74 04 00          	add    %dh,0x0(%esp,%eax,1)
	...
     344:	00 00                	add    %al,(%eax)
     346:	00 01                	add    %al,(%ecx)
     348:	00 00                	add    %al,(%eax)
     34a:	00 02                	add    %al,(%edx)
     34c:	00 74 04 01          	add    %dh,0x1(%esp,%eax,1)
     350:	00 00                	add    %al,(%eax)
     352:	00 03                	add    %al,(%ebx)
     354:	00 00                	add    %al,(%eax)
     356:	00 02                	add    %al,(%edx)
     358:	00 74 08 03          	add    %dh,0x3(%eax,%ecx,1)
     35c:	00 00                	add    %al,(%eax)
     35e:	00 23                	add    %ah,(%ebx)
     360:	00 00                	add    %al,(%eax)
     362:	00 02                	add    %al,(%edx)
     364:	00 75 08             	add    %dh,0x8(%ebp)
     367:	23 00                	and    (%eax),%eax
     369:	00 00                	add    %al,(%eax)
     36b:	24 00                	and    $0x0,%al
     36d:	00 00                	add    %al,(%eax)
     36f:	02 00                	add    (%eax),%al
     371:	74 04                	je     377 <memcpy-0xc00ffc89>
	...
     37b:	30 00                	xor    %al,(%eax)
     37d:	00 00                	add    %al,(%eax)
     37f:	31 00                	xor    %eax,(%eax)
     381:	00 00                	add    %al,(%eax)
     383:	02 00                	add    (%eax),%al
     385:	74 04                	je     38b <memcpy-0xc00ffc75>
     387:	31 00                	xor    %eax,(%eax)
     389:	00 00                	add    %al,(%eax)
     38b:	33 00                	xor    (%eax),%eax
     38d:	00 00                	add    %al,(%eax)
     38f:	02 00                	add    (%eax),%al
     391:	74 08                	je     39b <memcpy-0xc00ffc65>
     393:	33 00                	xor    (%eax),%eax
     395:	00 00                	add    %al,(%eax)
     397:	4c                   	dec    %esp
     398:	00 00                	add    %al,(%eax)
     39a:	00 02                	add    %al,(%edx)
     39c:	00 75 08             	add    %dh,0x8(%ebp)
     39f:	4c                   	dec    %esp
     3a0:	00 00                	add    %al,(%eax)
     3a2:	00 4d 00             	add    %cl,0x0(%ebp)
     3a5:	00 00                	add    %al,(%eax)
     3a7:	02 00                	add    (%eax),%al
     3a9:	74 04                	je     3af <memcpy-0xc00ffc51>
	...
     3b7:	01 00                	add    %eax,(%eax)
     3b9:	00 00                	add    %al,(%eax)
     3bb:	02 00                	add    (%eax),%al
     3bd:	74 04                	je     3c3 <memcpy-0xc00ffc3d>
     3bf:	01 00                	add    %eax,(%eax)
     3c1:	00 00                	add    %al,(%eax)
     3c3:	03 00                	add    (%eax),%eax
     3c5:	00 00                	add    %al,(%eax)
     3c7:	02 00                	add    (%eax),%al
     3c9:	74 08                	je     3d3 <memcpy-0xc00ffc2d>
     3cb:	03 00                	add    (%eax),%eax
     3cd:	00 00                	add    %al,(%eax)
     3cf:	2b 00                	sub    (%eax),%eax
     3d1:	00 00                	add    %al,(%eax)
     3d3:	02 00                	add    (%eax),%al
     3d5:	75 08                	jne    3df <memcpy-0xc00ffc21>
     3d7:	2b 00                	sub    (%eax),%eax
     3d9:	00 00                	add    %al,(%eax)
     3db:	30 00                	xor    %al,(%eax)
     3dd:	00 00                	add    %al,(%eax)
     3df:	02 00                	add    (%eax),%al
     3e1:	74 04                	je     3e7 <memcpy-0xc00ffc19>
     3e3:	30 00                	xor    %al,(%eax)
     3e5:	00 00                	add    %al,(%eax)
     3e7:	45                   	inc    %ebp
     3e8:	00 00                	add    %al,(%eax)
     3ea:	00 02                	add    %al,(%edx)
     3ec:	00 75 08             	add    %dh,0x8(%ebp)
     3ef:	45                   	inc    %ebp
     3f0:	00 00                	add    %al,(%eax)
     3f2:	00 48 00             	add    %cl,0x0(%eax)
     3f5:	00 00                	add    %al,(%eax)
     3f7:	02 00                	add    (%eax),%al
     3f9:	74 04                	je     3ff <memcpy-0xc00ffc01>
     3fb:	48                   	dec    %eax
     3fc:	00 00                	add    %al,(%eax)
     3fe:	00 5b 00             	add    %bl,0x0(%ebx)
     401:	00 00                	add    %al,(%eax)
     403:	02 00                	add    (%eax),%al
     405:	75 08                	jne    40f <memcpy-0xc00ffbf1>
     407:	5b                   	pop    %ebx
     408:	00 00                	add    %al,(%eax)
     40a:	00 60 00             	add    %ah,0x0(%eax)
     40d:	00 00                	add    %al,(%eax)
     40f:	02 00                	add    (%eax),%al
     411:	74 04                	je     417 <memcpy-0xc00ffbe9>
     413:	60                   	pusha  
     414:	00 00                	add    %al,(%eax)
     416:	00 65 00             	add    %ah,0x0(%ebp)
     419:	00 00                	add    %al,(%eax)
     41b:	02 00                	add    (%eax),%al
     41d:	75 08                	jne    427 <memcpy-0xc00ffbd9>
     41f:	65 00 00             	add    %al,%gs:(%eax)
     422:	00 68 00             	add    %ch,0x0(%eax)
     425:	00 00                	add    %al,(%eax)
     427:	02 00                	add    (%eax),%al
     429:	74 04                	je     42f <memcpy-0xc00ffbd1>
     42b:	68 00 00 00 86       	push   $0x86000000
     430:	00 00                	add    %al,(%eax)
     432:	00 02                	add    %al,(%edx)
     434:	00 75 08             	add    %dh,0x8(%ebp)
	...
     43f:	22 00                	and    (%eax),%al
     441:	00 00                	add    %al,(%eax)
     443:	46                   	inc    %esi
     444:	00 00                	add    %al,(%eax)
     446:	00 02                	add    %al,(%edx)
     448:	00 91 6c 00 00 00    	add    %dl,0x6c(%ecx)
     44e:	00 00                	add    %al,(%eax)
     450:	00 00                	add    %al,(%eax)
     452:	00 4d 00             	add    %cl,0x0(%ebp)
     455:	00 00                	add    %al,(%eax)
     457:	66                   	data16
     458:	00 00                	add    %al,(%eax)
     45a:	00 02                	add    %al,(%edx)
     45c:	00 91 6c 00 00 00    	add    %dl,0x6c(%ecx)
     462:	00 00                	add    %al,(%eax)
     464:	00 00                	add    %al,(%eax)
     466:	00 90 00 00 00 91    	add    %dl,-0x6f000000(%eax)
     46c:	00 00                	add    %al,(%eax)
     46e:	00 02                	add    %al,(%edx)
     470:	00 74 04 91          	add    %dh,-0x6f(%esp,%eax,1)
     474:	00 00                	add    %al,(%eax)
     476:	00 93 00 00 00 02    	add    %dl,0x2000000(%ebx)
     47c:	00 74 08 93          	add    %dh,-0x6d(%eax,%ecx,1)
     480:	00 00                	add    %al,(%eax)
     482:	00 b3 00 00 00 02    	add    %dh,0x2000000(%ebx)
     488:	00 75 08             	add    %dh,0x8(%ebp)
     48b:	b3 00                	mov    $0x0,%bl
     48d:	00 00                	add    %al,(%eax)
     48f:	b8 00 00 00 02       	mov    $0x2000000,%eax
     494:	00 74 04 b8          	add    %dh,-0x48(%esp,%eax,1)
     498:	00 00                	add    %al,(%eax)
     49a:	00 ba 00 00 00 02    	add    %bh,0x2000000(%edx)
     4a0:	00 75 08             	add    %dh,0x8(%ebp)
     4a3:	ba 00 00 00 c8       	mov    $0xc8000000,%edx
     4a8:	00 00                	add    %al,(%eax)
     4aa:	00 02                	add    %al,(%edx)
     4ac:	00 74 04 c8          	add    %dh,-0x38(%esp,%eax,1)
     4b0:	00 00                	add    %al,(%eax)
     4b2:	00 e6                	add    %ah,%dh
     4b4:	00 00                	add    %al,(%eax)
     4b6:	00 02                	add    %al,(%edx)
     4b8:	00 75 08             	add    %dh,0x8(%ebp)
	...
     4c3:	f0 00 00             	lock add %al,(%eax)
     4c6:	00 f1                	add    %dh,%cl
     4c8:	00 00                	add    %al,(%eax)
     4ca:	00 02                	add    %al,(%edx)
     4cc:	00 74 04 f1          	add    %dh,-0xf(%esp,%eax,1)
     4d0:	00 00                	add    %al,(%eax)
     4d2:	00 f3                	add    %dh,%bl
     4d4:	00 00                	add    %al,(%eax)
     4d6:	00 02                	add    %al,(%edx)
     4d8:	00 74 08 f3          	add    %dh,-0xd(%eax,%ecx,1)
     4dc:	00 00                	add    %al,(%eax)
     4de:	00 05 01 00 00 02    	add    %al,0x2000001
     4e4:	00 75 08             	add    %dh,0x8(%ebp)
     4e7:	05 01 00 00 06       	add    $0x6000001,%eax
     4ec:	01 00                	add    %eax,(%eax)
     4ee:	00 02                	add    %al,(%edx)
     4f0:	00 74 04 00          	add    %dh,0x0(%esp,%eax,1)
     4f4:	00 00                	add    %al,(%eax)
     4f6:	00 00                	add    %al,(%eax)
     4f8:	00 00                	add    %al,(%eax)
     4fa:	00 10                	add    %dl,(%eax)
     4fc:	01 00                	add    %eax,(%eax)
     4fe:	00 11                	add    %dl,(%ecx)
     500:	01 00                	add    %eax,(%eax)
     502:	00 02                	add    %al,(%edx)
     504:	00 74 04 11          	add    %dh,0x11(%esp,%eax,1)
     508:	01 00                	add    %eax,(%eax)
     50a:	00 13                	add    %dl,(%ebx)
     50c:	01 00                	add    %eax,(%eax)
     50e:	00 02                	add    %al,(%edx)
     510:	00 74 08 13          	add    %dh,0x13(%eax,%ecx,1)
     514:	01 00                	add    %eax,(%eax)
     516:	00 3d 01 00 00 02    	add    %bh,0x2000001
     51c:	00 75 08             	add    %dh,0x8(%ebp)
     51f:	3d 01 00 00 3e       	cmp    $0x3e000001,%eax
     524:	01 00                	add    %eax,(%eax)
     526:	00 02                	add    %al,(%edx)
     528:	00 74 08 3e          	add    %dh,0x3e(%eax,%ecx,1)
     52c:	01 00                	add    %eax,(%eax)
     52e:	00 48 01             	add    %cl,0x1(%eax)
     531:	00 00                	add    %al,(%eax)
     533:	02 00                	add    (%eax),%al
     535:	74 04                	je     53b <memcpy-0xc00ffac5>
     537:	48                   	dec    %eax
     538:	01 00                	add    %eax,(%eax)
     53a:	00 9a 01 00 00 02    	add    %bl,0x2000001(%edx)
     540:	00 75 08             	add    %dh,0x8(%ebp)
	...
     54b:	5b                   	pop    %ebx
     54c:	01 00                	add    %eax,(%eax)
     54e:	00 9a 01 00 00 03    	add    %bl,0x3000001(%edx)
     554:	00 76 0c             	add    %dh,0xc(%esi)
     557:	9f                   	lahf   
	...
     560:	51                   	push   %ecx
     561:	01 00                	add    %eax,(%eax)
     563:	00 5b 01             	add    %bl,0x1(%ebx)
     566:	00 00                	add    %al,(%eax)
     568:	01 00                	add    %eax,(%eax)
     56a:	52                   	push   %edx
     56b:	72 01                	jb     56e <memcpy-0xc00ffa92>
     56d:	00 00                	add    %al,(%eax)
     56f:	91                   	xchg   %eax,%ecx
     570:	01 00                	add    %eax,(%eax)
     572:	00 01                	add    %al,(%ecx)
     574:	00 52 00             	add    %dl,0x0(%edx)
     577:	00 00                	add    %al,(%eax)
     579:	00 00                	add    %al,(%eax)
     57b:	00 00                	add    %al,(%eax)
     57d:	00 54 01 00          	add    %dl,0x0(%ecx,%eax,1)
     581:	00 5b 01             	add    %bl,0x1(%ebx)
     584:	00 00                	add    %al,(%eax)
     586:	01 00                	add    %eax,(%eax)
     588:	52                   	push   %edx
     589:	72 01                	jb     58c <memcpy-0xc00ffa74>
     58b:	00 00                	add    %al,(%eax)
     58d:	91                   	xchg   %eax,%ecx
     58e:	01 00                	add    %eax,(%eax)
     590:	00 01                	add    %al,(%ecx)
     592:	00 52 00             	add    %dl,0x0(%edx)
     595:	00 00                	add    %al,(%eax)
     597:	00 00                	add    %al,(%eax)
     599:	00 00                	add    %al,(%eax)
     59b:	00 54 01 00          	add    %dl,0x0(%ecx,%eax,1)
     59f:	00 5b 01             	add    %bl,0x1(%ebx)
     5a2:	00 00                	add    %al,(%eax)
     5a4:	02 00                	add    (%eax),%al
     5a6:	72 00                	jb     5a8 <memcpy-0xc00ffa58>
     5a8:	5b                   	pop    %ebx
     5a9:	01 00                	add    %eax,(%eax)
     5ab:	00 9a 01 00 00 01    	add    %bl,0x1000001(%edx)
     5b1:	00 57 00             	add    %dl,0x0(%edi)
     5b4:	00 00                	add    %al,(%eax)
     5b6:	00 00                	add    %al,(%eax)
     5b8:	00 00                	add    %al,(%eax)
     5ba:	00 a0 01 00 00 a1    	add    %ah,-0x5effffff(%eax)
     5c0:	01 00                	add    %eax,(%eax)
     5c2:	00 02                	add    %al,(%edx)
     5c4:	00 74 04 a1          	add    %dh,-0x5f(%esp,%eax,1)
     5c8:	01 00                	add    %eax,(%eax)
     5ca:	00 a3 01 00 00 02    	add    %ah,0x2000001(%ebx)
     5d0:	00 74 08 a3          	add    %dh,-0x5d(%eax,%ecx,1)
     5d4:	01 00                	add    %eax,(%eax)
     5d6:	00 c7                	add    %al,%bh
     5d8:	01 00                	add    %eax,(%eax)
     5da:	00 02                	add    %al,(%edx)
     5dc:	00 75 08             	add    %dh,0x8(%ebp)
     5df:	c7 01 00 00 c8 01    	movl   $0x1c80000,(%ecx)
     5e5:	00 00                	add    %al,(%eax)
     5e7:	02 00                	add    (%eax),%al
     5e9:	74 08                	je     5f3 <memcpy-0xc00ffa0d>
     5eb:	c8 01 00 00          	enter  $0x1,$0x0
     5ef:	d0 01                	rolb   (%ecx)
     5f1:	00 00                	add    %al,(%eax)
     5f3:	02 00                	add    (%eax),%al
     5f5:	74 04                	je     5fb <memcpy-0xc00ffa05>
     5f7:	d0 01                	rolb   (%ecx)
     5f9:	00 00                	add    %al,(%eax)
     5fb:	03 02                	add    (%edx),%eax
     5fd:	00 00                	add    %al,(%eax)
     5ff:	02 00                	add    (%eax),%al
     601:	75 08                	jne    60b <memcpy-0xc00ff9f5>
     603:	03 02                	add    (%edx),%eax
     605:	00 00                	add    %al,(%eax)
     607:	04 02                	add    $0x2,%al
     609:	00 00                	add    %al,(%eax)
     60b:	02 00                	add    (%eax),%al
     60d:	74 08                	je     617 <memcpy-0xc00ff9e9>
     60f:	04 02                	add    $0x2,%al
     611:	00 00                	add    %al,(%eax)
     613:	10 02                	adc    %al,(%edx)
     615:	00 00                	add    %al,(%eax)
     617:	02 00                	add    (%eax),%al
     619:	74 04                	je     61f <memcpy-0xc00ff9e1>
     61b:	10 02                	adc    %al,(%edx)
     61d:	00 00                	add    %al,(%eax)
     61f:	46                   	inc    %esi
     620:	02 00                	add    (%eax),%al
     622:	00 02                	add    %al,(%edx)
     624:	00 75 08             	add    %dh,0x8(%ebp)
	...
     62f:	df 01                	fild   (%ecx)
     631:	00 00                	add    %al,(%eax)
     633:	fe 01                	incb   (%ecx)
     635:	00 00                	add    %al,(%eax)
     637:	01 00                	add    %eax,(%eax)
     639:	53                   	push   %ebx
     63a:	29 02                	sub    %eax,(%edx)
     63c:	00 00                	add    %al,(%eax)
     63e:	46                   	inc    %esi
     63f:	02 00                	add    (%eax),%al
     641:	00 01                	add    %al,(%ecx)
     643:	00 53 00             	add    %dl,0x0(%ebx)
     646:	00 00                	add    %al,(%eax)
     648:	00 00                	add    %al,(%eax)
     64a:	00 00                	add    %al,(%eax)
     64c:	00 df                	add    %bl,%bh
     64e:	01 00                	add    %eax,(%eax)
     650:	00 01                	add    %al,(%ecx)
     652:	02 00                	add    (%eax),%al
     654:	00 01                	add    %al,(%ecx)
     656:	00 56 29             	add    %dl,0x29(%esi)
     659:	02 00                	add    (%eax),%al
     65b:	00 46 02             	add    %al,0x2(%esi)
     65e:	00 00                	add    %al,(%eax)
     660:	01 00                	add    %eax,(%eax)
     662:	56                   	push   %esi
	...
     66b:	e3 01                	jecxz  66e <memcpy-0xc00ff992>
     66d:	00 00                	add    %al,(%eax)
     66f:	fa                   	cli    
     670:	01 00                	add    %eax,(%eax)
     672:	00 02                	add    %al,(%edx)
     674:	00 76 00             	add    %dh,0x0(%esi)
	...
     67f:	e6 01                	out    %al,$0x1
     681:	00 00                	add    %al,(%eax)
     683:	fa                   	cli    
     684:	01 00                	add    %eax,(%eax)
     686:	00 02                	add    %al,(%edx)
     688:	00 76 04             	add    %dh,0x4(%esi)
	...
     697:	01 00                	add    %eax,(%eax)
     699:	00 00                	add    %al,(%eax)
     69b:	02 00                	add    (%eax),%al
     69d:	74 04                	je     6a3 <memcpy-0xc00ff95d>
     69f:	01 00                	add    %eax,(%eax)
     6a1:	00 00                	add    %al,(%eax)
     6a3:	03 00                	add    (%eax),%eax
     6a5:	00 00                	add    %al,(%eax)
     6a7:	02 00                	add    (%eax),%al
     6a9:	74 08                	je     6b3 <memcpy-0xc00ff94d>
     6ab:	03 00                	add    (%eax),%eax
     6ad:	00 00                	add    %al,(%eax)
     6af:	7f 00                	jg     6b1 <memcpy-0xc00ff94f>
     6b1:	00 00                	add    %al,(%eax)
     6b3:	02 00                	add    (%eax),%al
     6b5:	75 08                	jne    6bf <memcpy-0xc00ff941>
     6b7:	7f 00                	jg     6b9 <memcpy-0xc00ff947>
     6b9:	00 00                	add    %al,(%eax)
     6bb:	80 00 00             	addb   $0x0,(%eax)
     6be:	00 02                	add    %al,(%edx)
     6c0:	00 74 04 80          	add    %dh,-0x80(%esp,%eax,1)
     6c4:	00 00                	add    %al,(%eax)
     6c6:	00 ad 00 00 00 02    	add    %ch,0x2000000(%ebp)
     6cc:	00 75 08             	add    %dh,0x8(%ebp)
     6cf:	ad                   	lods   %ds:(%esi),%eax
     6d0:	00 00                	add    %al,(%eax)
     6d2:	00 ae 00 00 00 02    	add    %ch,0x2000000(%esi)
     6d8:	00 74 04 00          	add    %dh,0x0(%esp,%eax,1)
	...
     6e4:	00 00                	add    %al,(%eax)
     6e6:	00 2a                	add    %ch,(%edx)
     6e8:	00 00                	add    %al,(%eax)
     6ea:	00 02                	add    %al,(%edx)
     6ec:	00 91 00 2a 00 00    	add    %dl,0x2a00(%ecx)
     6f2:	00 79 00             	add    %bh,0x0(%ecx)
     6f5:	00 00                	add    %al,(%eax)
     6f7:	01 00                	add    %eax,(%eax)
     6f9:	53                   	push   %ebx
     6fa:	80 00 00             	addb   $0x0,(%eax)
     6fd:	00 99 00 00 00 02    	add    %bl,0x2000000(%ecx)
     703:	00 91 00 99 00 00    	add    %dl,0x9900(%ecx)
     709:	00 ab 00 00 00 01    	add    %ch,0x1000000(%ebx)
     70f:	00 53 00             	add    %dl,0x0(%ebx)
     712:	00 00                	add    %al,(%eax)
     714:	00 00                	add    %al,(%eax)
     716:	00 00                	add    %al,(%eax)
     718:	00 15 00 00 00 27    	add    %dl,0x27000000
     71e:	00 00                	add    %al,(%eax)
     720:	00 02                	add    %al,(%edx)
     722:	00 31                	add    %dh,(%ecx)
     724:	9f                   	lahf   
     725:	27                   	daa    
     726:	00 00                	add    %al,(%eax)
     728:	00 2c 00             	add    %ch,(%eax,%eax,1)
     72b:	00 00                	add    %al,(%eax)
     72d:	02 00                	add    (%eax),%al
     72f:	41                   	inc    %ecx
     730:	9f                   	lahf   
     731:	2c 00                	sub    $0x0,%al
     733:	00 00                	add    %al,(%eax)
     735:	6a 00                	push   $0x0
     737:	00 00                	add    %al,(%eax)
     739:	01 00                	add    %eax,(%eax)
     73b:	50                   	push   %eax
     73c:	6a 00                	push   $0x0
     73e:	00 00                	add    %al,(%eax)
     740:	79 00                	jns    742 <memcpy-0xc00ff8be>
     742:	00 00                	add    %al,(%eax)
     744:	05 00 4f 76 00       	add    $0x764f00,%eax
     749:	1c 9f                	sbb    $0x9f,%al
     74b:	99                   	cltd   
     74c:	00 00                	add    %al,(%eax)
     74e:	00 ae 00 00 00 01    	add    %ch,0x1000000(%esi)
     754:	00 51 00             	add    %dl,0x0(%ecx)
     757:	00 00                	add    %al,(%eax)
     759:	00 00                	add    %al,(%eax)
     75b:	00 00                	add    %al,(%eax)
     75d:	00 b0 00 00 00 b1    	add    %dh,-0x4f000000(%eax)
     763:	00 00                	add    %al,(%eax)
     765:	00 02                	add    %al,(%edx)
     767:	00 74 04 b1          	add    %dh,-0x4f(%esp,%eax,1)
     76b:	00 00                	add    %al,(%eax)
     76d:	00 b8 00 00 00 02    	add    %bh,0x2000000(%eax)
     773:	00 74 08 b8          	add    %dh,-0x48(%eax,%ecx,1)
     777:	00 00                	add    %al,(%eax)
     779:	00 13                	add    %dl,(%ebx)
     77b:	01 00                	add    %eax,(%eax)
     77d:	00 02                	add    %al,(%edx)
     77f:	00 75 08             	add    %dh,0x8(%ebp)
     782:	13 01                	adc    (%ecx),%eax
     784:	00 00                	add    %al,(%eax)
     786:	14 01                	adc    $0x1,%al
     788:	00 00                	add    %al,(%eax)
     78a:	02 00                	add    (%eax),%al
     78c:	74 04                	je     792 <memcpy-0xc00ff86e>
	...
     796:	b0 00                	mov    $0x0,%al
     798:	00 00                	add    %al,(%eax)
     79a:	c5 00                	lds    (%eax),%eax
     79c:	00 00                	add    %al,(%eax)
     79e:	06                   	push   %es
     79f:	00 03                	add    %al,(%ebx)
     7a1:	20 31                	and    %dh,(%ecx)
     7a3:	10 c0                	adc    %al,%al
     7a5:	9f                   	lahf   
     7a6:	f3 00 00             	repz add %al,(%eax)
     7a9:	00 14 01             	add    %dl,(%ecx,%eax,1)
     7ac:	00 00                	add    %al,(%eax)
     7ae:	01 00                	add    %eax,(%eax)
     7b0:	50                   	push   %eax
	...
     7b9:	c5 00                	lds    (%eax),%eax
     7bb:	00 00                	add    %al,(%eax)
     7bd:	f3 00 00             	repz add %al,(%eax)
     7c0:	00 01                	add    %al,(%ecx)
     7c2:	00 50 f3             	add    %dl,-0xd(%eax)
     7c5:	00 00                	add    %al,(%eax)
     7c7:	00 04 01             	add    %al,(%ecx,%eax,1)
     7ca:	00 00                	add    %al,(%eax)
     7cc:	0a 00                	or     (%eax),%al
     7ce:	71 00                	jno    7d0 <memcpy-0xc00ff830>
     7d0:	32 24 03             	xor    (%ebx,%eax,1),%ah
     7d3:	74 30                	je     805 <memcpy-0xc00ff7fb>
     7d5:	10 c0                	adc    %al,%al
     7d7:	22 04 01             	and    (%ecx,%eax,1),%al
     7da:	00 00                	add    %al,(%eax)
     7dc:	14 01                	adc    $0x1,%al
     7de:	00 00                	add    %al,(%eax)
     7e0:	0a 00                	or     (%eax),%al
     7e2:	71 7f                	jno    863 <memcpy-0xc00ff79d>
     7e4:	32 24 03             	xor    (%ebx,%eax,1),%ah
     7e7:	74 30                	je     819 <memcpy-0xc00ff7e7>
     7e9:	10 c0                	adc    %al,%al
     7eb:	22 00                	and    (%eax),%al
     7ed:	00 00                	add    %al,(%eax)
     7ef:	00 00                	add    %al,(%eax)
     7f1:	00 00                	add    %al,(%eax)
     7f3:	00 b0 00 00 00 c5    	add    %dh,-0x3b000000(%eax)
     7f9:	00 00                	add    %al,(%eax)
     7fb:	00 06                	add    %al,(%esi)
     7fd:	00 03                	add    %al,(%ebx)
     7ff:	20 31                	and    %dh,(%ecx)
     801:	10 c0                	adc    %al,%al
     803:	9f                   	lahf   
     804:	f3 00 00             	repz add %al,(%eax)
     807:	00 fa                	add    %bh,%dl
     809:	00 00                	add    %al,(%eax)
     80b:	00 01                	add    %al,(%ecx)
     80d:	00 50 ff             	add    %dl,-0x1(%eax)
     810:	00 00                	add    %al,(%eax)
     812:	00 14 01             	add    %dl,(%ecx,%eax,1)
     815:	00 00                	add    %al,(%eax)
     817:	01 00                	add    %eax,(%eax)
     819:	50                   	push   %eax
	...
     822:	b0 00                	mov    $0x0,%al
     824:	00 00                	add    %al,(%eax)
     826:	c5 00                	lds    (%eax),%eax
     828:	00 00                	add    %al,(%eax)
     82a:	02 00                	add    (%eax),%al
     82c:	30 9f 00 00 00 00    	xor    %bl,0x0(%edi)
     832:	00 00                	add    %al,(%eax)
     834:	00 00                	add    %al,(%eax)
     836:	20 01                	and    %al,(%ecx)
     838:	00 00                	add    %al,(%eax)
     83a:	21 01                	and    %eax,(%ecx)
     83c:	00 00                	add    %al,(%eax)
     83e:	02 00                	add    (%eax),%al
     840:	74 04                	je     846 <memcpy-0xc00ff7ba>
     842:	21 01                	and    %eax,(%ecx)
     844:	00 00                	add    %al,(%eax)
     846:	23 01                	and    (%ecx),%eax
     848:	00 00                	add    %al,(%eax)
     84a:	02 00                	add    (%eax),%al
     84c:	74 08                	je     856 <memcpy-0xc00ff7aa>
     84e:	23 01                	and    (%ecx),%eax
     850:	00 00                	add    %al,(%eax)
     852:	87 01                	xchg   %eax,(%ecx)
     854:	00 00                	add    %al,(%eax)
     856:	02 00                	add    (%eax),%al
     858:	75 08                	jne    862 <memcpy-0xc00ff79e>
     85a:	87 01                	xchg   %eax,(%ecx)
     85c:	00 00                	add    %al,(%eax)
     85e:	88 01                	mov    %al,(%ecx)
     860:	00 00                	add    %al,(%eax)
     862:	02 00                	add    (%eax),%al
     864:	74 04                	je     86a <memcpy-0xc00ff796>
     866:	88 01                	mov    %al,(%ecx)
     868:	00 00                	add    %al,(%eax)
     86a:	f9                   	stc    
     86b:	01 00                	add    %eax,(%eax)
     86d:	00 02                	add    %al,(%edx)
     86f:	00 75 08             	add    %dh,0x8(%ebp)
	...
     87a:	35 01 00 00 61       	xor    $0x61000001,%eax
     87f:	01 00                	add    %eax,(%eax)
     881:	00 02                	add    %al,(%edx)
     883:	00 30                	add    %dh,(%eax)
     885:	9f                   	lahf   
     886:	61                   	popa   
     887:	01 00                	add    %eax,(%eax)
     889:	00 6f 01             	add    %ch,0x1(%edi)
     88c:	00 00                	add    %al,(%eax)
     88e:	0a 00                	or     (%eax),%al
     890:	73 00                	jae    892 <memcpy-0xc00ff76e>
     892:	32 24 03             	xor    (%ebx,%eax,1),%ah
     895:	80 30 10             	xorb   $0x10,(%eax)
     898:	c0 22 6f             	shlb   $0x6f,(%edx)
     89b:	01 00                	add    %eax,(%eax)
     89d:	00 81 01 00 00 01    	add    %al,0x1000001(%ecx)
     8a3:	00 56 9c             	add    %dl,-0x64(%esi)
     8a6:	01 00                	add    %eax,(%eax)
     8a8:	00 d9                	add    %bl,%cl
     8aa:	01 00                	add    %eax,(%eax)
     8ac:	00 02                	add    %al,(%edx)
     8ae:	00 30                	add    %dh,(%eax)
     8b0:	9f                   	lahf   
     8b1:	d9 01                	flds   (%ecx)
     8b3:	00 00                	add    %al,(%eax)
     8b5:	f9                   	stc    
     8b6:	01 00                	add    %eax,(%eax)
     8b8:	00 01                	add    %al,(%ecx)
     8ba:	00 56 00             	add    %dl,0x0(%esi)
     8bd:	00 00                	add    %al,(%eax)
     8bf:	00 00                	add    %al,(%eax)
     8c1:	00 00                	add    %al,(%eax)
     8c3:	00 4b 01             	add    %cl,0x1(%ebx)
     8c6:	00 00                	add    %al,(%eax)
     8c8:	4d                   	dec    %ebp
     8c9:	01 00                	add    %eax,(%eax)
     8cb:	00 01                	add    %al,(%ecx)
     8cd:	00 50 4d             	add    %dl,0x4d(%eax)
     8d0:	01 00                	add    %eax,(%eax)
     8d2:	00 85 01 00 00 01    	add    %al,0x1000001(%ebp)
     8d8:	00 53 be             	add    %dl,-0x42(%ebx)
     8db:	01 00                	add    %eax,(%eax)
     8dd:	00 d3                	add    %dl,%bl
     8df:	01 00                	add    %eax,(%eax)
     8e1:	00 01                	add    %al,(%ecx)
     8e3:	00 50 d3             	add    %dl,-0x2d(%eax)
     8e6:	01 00                	add    %eax,(%eax)
     8e8:	00 f9                	add    %bh,%cl
     8ea:	01 00                	add    %eax,(%eax)
     8ec:	00 01                	add    %al,(%ecx)
     8ee:	00 53 00             	add    %dl,0x0(%ebx)
	...
     8f9:	02 00                	add    (%eax),%al
     8fb:	00 01                	add    %al,(%ecx)
     8fd:	02 00                	add    (%eax),%al
     8ff:	00 02                	add    %al,(%edx)
     901:	00 74 04 01          	add    %dh,0x1(%esp,%eax,1)
     905:	02 00                	add    (%eax),%al
     907:	00 03                	add    %al,(%ebx)
     909:	02 00                	add    (%eax),%al
     90b:	00 02                	add    %al,(%edx)
     90d:	00 74 08 03          	add    %dh,0x3(%eax,%ecx,1)
     911:	02 00                	add    (%eax),%al
     913:	00 7f 02             	add    %bh,0x2(%edi)
     916:	00 00                	add    %al,(%eax)
     918:	02 00                	add    (%eax),%al
     91a:	75 08                	jne    924 <memcpy-0xc00ff6dc>
     91c:	7f 02                	jg     920 <memcpy-0xc00ff6e0>
     91e:	00 00                	add    %al,(%eax)
     920:	80 02 00             	addb   $0x0,(%edx)
     923:	00 02                	add    %al,(%edx)
     925:	00 74 08 80          	add    %dh,-0x80(%eax,%ecx,1)
     929:	02 00                	add    (%eax),%al
     92b:	00 81 02 00 00 02    	add    %al,0x2000002(%ecx)
     931:	00 74 04 00          	add    %dh,0x0(%esp,%eax,1)
     935:	00 00                	add    %al,(%eax)
     937:	00 00                	add    %al,(%eax)
     939:	00 00                	add    %al,(%eax)
     93b:	00 32                	add    %dh,(%edx)
     93d:	02 00                	add    (%eax),%al
     93f:	00 51 02             	add    %dl,0x2(%ecx)
     942:	00 00                	add    %al,(%eax)
     944:	05 00 91 00 06       	add    $0x6009100,%eax
     949:	34 1c                	xor    $0x1c,%al
     94b:	51                   	push   %ecx
     94c:	02 00                	add    (%eax),%al
     94e:	00 7a 02             	add    %bh,0x2(%edx)
     951:	00 00                	add    %al,(%eax)
     953:	01 00                	add    %eax,(%eax)
     955:	53                   	push   %ebx
	...
     95e:	0c 02                	or     $0x2,%al
     960:	00 00                	add    %al,(%eax)
     962:	19 02                	sbb    %eax,(%edx)
     964:	00 00                	add    %al,(%eax)
     966:	02 00                	add    (%eax),%al
     968:	91                   	xchg   %eax,%ecx
     969:	00 19                	add    %bl,(%ecx)
     96b:	02 00                	add    (%eax),%al
     96d:	00 81 02 00 00 06    	add    %al,0x6000002(%ecx)
     973:	00 91 00 06 38 1c    	add    %dl,0x1c380600(%ecx)
     979:	9f                   	lahf   
	...
     986:	01 00                	add    %eax,(%eax)
     988:	00 00                	add    %al,(%eax)
     98a:	02 00                	add    (%eax),%al
     98c:	74 04                	je     992 <memcpy-0xc00ff66e>
     98e:	01 00                	add    %eax,(%eax)
     990:	00 00                	add    %al,(%eax)
     992:	03 00                	add    (%eax),%eax
     994:	00 00                	add    %al,(%eax)
     996:	02 00                	add    (%eax),%al
     998:	74 08                	je     9a2 <memcpy-0xc00ff65e>
     99a:	03 00                	add    (%eax),%eax
     99c:	00 00                	add    %al,(%eax)
     99e:	41                   	inc    %ecx
     99f:	00 00                	add    %al,(%eax)
     9a1:	00 02                	add    %al,(%edx)
     9a3:	00 75 08             	add    %dh,0x8(%ebp)
     9a6:	41                   	inc    %ecx
     9a7:	00 00                	add    %al,(%eax)
     9a9:	00 48 00             	add    %cl,0x0(%eax)
     9ac:	00 00                	add    %al,(%eax)
     9ae:	02 00                	add    (%eax),%al
     9b0:	74 04                	je     9b6 <memcpy-0xc00ff64a>
     9b2:	48                   	dec    %eax
     9b3:	00 00                	add    %al,(%eax)
     9b5:	00 59 02             	add    %bl,0x2(%ecx)
     9b8:	00 00                	add    %al,(%eax)
     9ba:	02 00                	add    (%eax),%al
     9bc:	75 08                	jne    9c6 <memcpy-0xc00ff63a>
	...
     9ca:	11 00                	adc    %eax,(%eax)
     9cc:	00 00                	add    %al,(%eax)
     9ce:	02 00                	add    (%eax),%al
     9d0:	91                   	xchg   %eax,%ecx
     9d1:	04 11                	add    $0x11,%al
     9d3:	00 00                	add    %al,(%eax)
     9d5:	00 1b                	add    %bl,(%ebx)
     9d7:	00 00                	add    %al,(%eax)
     9d9:	00 01                	add    %al,(%ecx)
     9db:	00 53 1b             	add    %dl,0x1b(%ebx)
     9de:	00 00                	add    %al,(%eax)
     9e0:	00 1f                	add    %bl,(%edi)
     9e2:	00 00                	add    %al,(%eax)
     9e4:	00 03                	add    %al,(%ebx)
     9e6:	00 73 01             	add    %dh,0x1(%ebx)
     9e9:	9f                   	lahf   
     9ea:	31 00                	xor    %eax,(%eax)
     9ec:	00 00                	add    %al,(%eax)
     9ee:	34 00                	xor    $0x0,%al
     9f0:	00 00                	add    %al,(%eax)
     9f2:	01 00                	add    %eax,(%eax)
     9f4:	53                   	push   %ebx
     9f5:	34 00                	xor    $0x0,%al
     9f7:	00 00                	add    %al,(%eax)
     9f9:	38 00                	cmp    %al,(%eax)
     9fb:	00 00                	add    %al,(%eax)
     9fd:	03 00                	add    (%eax),%eax
     9ff:	73 01                	jae    a02 <memcpy-0xc00ff5fe>
     a01:	9f                   	lahf   
     a02:	4f                   	dec    %edi
     a03:	00 00                	add    %al,(%eax)
     a05:	00 fe                	add    %bh,%dh
     a07:	00 00                	add    %al,(%eax)
     a09:	00 01                	add    %al,(%ecx)
     a0b:	00 53 fe             	add    %dl,-0x2(%ebx)
     a0e:	00 00                	add    %al,(%eax)
     a10:	00 21                	add    %ah,(%ecx)
     a12:	01 00                	add    %eax,(%eax)
     a14:	00 02                	add    %al,(%edx)
     a16:	00 91 5c 21 01 00    	add    %dl,0x1215c(%ecx)
     a1c:	00 5e 01             	add    %bl,0x1(%esi)
     a1f:	00 00                	add    %al,(%eax)
     a21:	01 00                	add    %eax,(%eax)
     a23:	53                   	push   %ebx
     a24:	5e                   	pop    %esi
     a25:	01 00                	add    %eax,(%eax)
     a27:	00 81 01 00 00 02    	add    %al,0x2000001(%ecx)
     a2d:	00 91 5c 81 01 00    	add    %dl,0x1815c(%ecx)
     a33:	00 e6                	add    %ah,%dh
     a35:	01 00                	add    %eax,(%eax)
     a37:	00 01                	add    %al,(%ecx)
     a39:	00 53 e6             	add    %dl,-0x1a(%ebx)
     a3c:	01 00                	add    %eax,(%eax)
     a3e:	00 09                	add    %cl,(%ecx)
     a40:	02 00                	add    (%eax),%al
     a42:	00 02                	add    %al,(%edx)
     a44:	00 91 5c 09 02 00    	add    %dl,0x2095c(%ecx)
     a4a:	00 36                	add    %dh,(%esi)
     a4c:	02 00                	add    (%eax),%al
     a4e:	00 01                	add    %al,(%ecx)
     a50:	00 53 36             	add    %dl,0x36(%ebx)
     a53:	02 00                	add    (%eax),%al
     a55:	00 59 02             	add    %bl,0x2(%ecx)
     a58:	00 00                	add    %al,(%eax)
     a5a:	02 00                	add    (%eax),%al
     a5c:	91                   	xchg   %eax,%ecx
     a5d:	5c                   	pop    %esp
	...
     a6a:	de 00                	fiadd  (%eax)
     a6c:	00 00                	add    %al,(%eax)
     a6e:	02 00                	add    (%eax),%al
     a70:	91                   	xchg   %eax,%ecx
     a71:	08 de                	or     %bl,%dh
     a73:	00 00                	add    %al,(%eax)
     a75:	00 e5                	add    %ah,%ch
     a77:	00 00                	add    %al,(%eax)
     a79:	00 01                	add    %al,(%ecx)
     a7b:	00 51 e5             	add    %dl,-0x1b(%ecx)
     a7e:	00 00                	add    %al,(%eax)
     a80:	00 21                	add    %ah,(%ecx)
     a82:	01 00                	add    %eax,(%eax)
     a84:	00 02                	add    %al,(%edx)
     a86:	00 91 58 21 01 00    	add    %dl,0x12158(%ecx)
     a8c:	00 3e                	add    %bh,(%esi)
     a8e:	01 00                	add    %eax,(%eax)
     a90:	00 02                	add    %al,(%edx)
     a92:	00 91 08 3e 01 00    	add    %dl,0x13e08(%ecx)
     a98:	00 45 01             	add    %al,0x1(%ebp)
     a9b:	00 00                	add    %al,(%eax)
     a9d:	01 00                	add    %eax,(%eax)
     a9f:	51                   	push   %ecx
     aa0:	45                   	inc    %ebp
     aa1:	01 00                	add    %eax,(%eax)
     aa3:	00 81 01 00 00 02    	add    %al,0x2000001(%ecx)
     aa9:	00 91 58 81 01 00    	add    %dl,0x18158(%ecx)
     aaf:	00 97 01 00 00 02    	add    %dl,0x2000001(%edi)
     ab5:	00 91 08 97 01 00    	add    %dl,0x19708(%ecx)
     abb:	00 9a 01 00 00 01    	add    %bl,0x1000001(%edx)
     ac1:	00 50 9a             	add    %dl,-0x66(%eax)
     ac4:	01 00                	add    %eax,(%eax)
     ac6:	00 aa 01 00 00 02    	add    %ch,0x2000001(%edx)
     acc:	00 91 58 aa 01 00    	add    %dl,0x1aa58(%ecx)
     ad2:	00 c6                	add    %al,%dh
     ad4:	01 00                	add    %eax,(%eax)
     ad6:	00 02                	add    %al,(%edx)
     ad8:	00 91 08 c6 01 00    	add    %dl,0x1c608(%ecx)
     ade:	00 cd                	add    %cl,%ch
     ae0:	01 00                	add    %eax,(%eax)
     ae2:	00 01                	add    %al,(%ecx)
     ae4:	00 52 cd             	add    %dl,-0x33(%edx)
     ae7:	01 00                	add    %eax,(%eax)
     ae9:	00 09                	add    %cl,(%ecx)
     aeb:	02 00                	add    (%eax),%al
     aed:	00 02                	add    %al,(%edx)
     aef:	00 91 58 09 02 00    	add    %dl,0x20958(%ecx)
     af5:	00 1e                	add    %bl,(%esi)
     af7:	02 00                	add    (%eax),%al
     af9:	00 02                	add    %al,(%edx)
     afb:	00 91 08 1e 02 00    	add    %dl,0x21e08(%ecx)
     b01:	00 24 02             	add    %ah,(%edx,%eax,1)
     b04:	00 00                	add    %al,(%eax)
     b06:	01 00                	add    %eax,(%eax)
     b08:	50                   	push   %eax
     b09:	24 02                	and    $0x2,%al
     b0b:	00 00                	add    %al,(%eax)
     b0d:	36 02 00             	add    %ss:(%eax),%al
     b10:	00 01                	add    %al,(%ecx)
     b12:	00 51 36             	add    %dl,0x36(%ecx)
     b15:	02 00                	add    (%eax),%al
     b17:	00 59 02             	add    %bl,0x2(%ecx)
     b1a:	00 00                	add    %al,(%eax)
     b1c:	02 00                	add    (%eax),%al
     b1e:	91                   	xchg   %eax,%ecx
     b1f:	08 00                	or     %al,(%eax)
     b21:	00 00                	add    %al,(%eax)
     b23:	00 00                	add    %al,(%eax)
     b25:	00 00                	add    %al,(%eax)
     b27:	00 1b                	add    %bl,(%ebx)
     b29:	00 00                	add    %al,(%eax)
     b2b:	00 1f                	add    %bl,(%edi)
     b2d:	00 00                	add    %al,(%eax)
     b2f:	00 02                	add    %al,(%edx)
     b31:	00 73 00             	add    %dh,0x0(%ebx)
     b34:	1f                   	pop    %ds
     b35:	00 00                	add    %al,(%eax)
     b37:	00 30                	add    %dh,(%eax)
     b39:	00 00                	add    %al,(%eax)
     b3b:	00 01                	add    %al,(%ecx)
     b3d:	00 50 34             	add    %dl,0x34(%eax)
     b40:	00 00                	add    %al,(%eax)
     b42:	00 38                	add    %bh,(%eax)
     b44:	00 00                	add    %al,(%eax)
     b46:	00 02                	add    %al,(%edx)
     b48:	00 73 00             	add    %dh,0x0(%ebx)
     b4b:	38 00                	cmp    %al,(%eax)
     b4d:	00 00                	add    %al,(%eax)
     b4f:	3d 00 00 00 01       	cmp    $0x1000000,%eax
     b54:	00 50 42             	add    %dl,0x42(%eax)
     b57:	00 00                	add    %al,(%eax)
     b59:	00 4c 00 00          	add    %cl,0x0(%eax,%eax,1)
     b5d:	00 01                	add    %al,(%ecx)
     b5f:	00 50 4c             	add    %dl,0x4c(%eax)
     b62:	00 00                	add    %al,(%eax)
     b64:	00 4f 00             	add    %cl,0x0(%edi)
     b67:	00 00                	add    %al,(%eax)
     b69:	02 00                	add    (%eax),%al
     b6b:	73 01                	jae    b6e <memcpy-0xc00ff492>
     b6d:	4f                   	dec    %edi
     b6e:	00 00                	add    %al,(%eax)
     b70:	00 72 00             	add    %dh,0x0(%edx)
     b73:	00 00                	add    %al,(%eax)
     b75:	02 00                	add    (%eax),%al
     b77:	73 7f                	jae    bf8 <memcpy-0xc00ff408>
     b79:	8e 00                	mov    (%eax),%es
     b7b:	00 00                	add    %al,(%eax)
     b7d:	9b                   	fwait
     b7e:	00 00                	add    %al,(%eax)
     b80:	00 01                	add    %al,(%ecx)
     b82:	00 50 a1             	add    %dl,-0x5f(%eax)
     b85:	00 00                	add    %al,(%eax)
     b87:	00 bb 00 00 00 01    	add    %bh,0x1000000(%ebx)
     b8d:	00 50 be             	add    %dl,-0x42(%eax)
     b90:	00 00                	add    %al,(%eax)
     b92:	00 d8                	add    %bl,%al
     b94:	00 00                	add    %al,(%eax)
     b96:	00 01                	add    %al,(%ecx)
     b98:	00 50 d8             	add    %dl,-0x28(%eax)
     b9b:	00 00                	add    %al,(%eax)
     b9d:	00 e5                	add    %ah,%ch
     b9f:	00 00                	add    %al,(%eax)
     ba1:	00 02                	add    %al,(%edx)
     ba3:	00 73 7f             	add    %dh,0x7f(%ebx)
     ba6:	ef                   	out    %eax,(%dx)
     ba7:	00 00                	add    %al,(%eax)
     ba9:	00 f9                	add    %bh,%cl
     bab:	00 00                	add    %al,(%eax)
     bad:	00 02                	add    %al,(%edx)
     baf:	00 70 00             	add    %dh,0x0(%eax)
     bb2:	f9                   	stc    
     bb3:	00 00                	add    %al,(%eax)
     bb5:	00 0a                	add    %cl,(%edx)
     bb7:	01 00                	add    %eax,(%eax)
     bb9:	00 01                	add    %al,(%ecx)
     bbb:	00 52 0f             	add    %dl,0xf(%edx)
     bbe:	01 00                	add    %eax,(%eax)
     bc0:	00 19                	add    %bl,(%ecx)
     bc2:	01 00                	add    %eax,(%eax)
     bc4:	00 05 00 73 00 77    	add    %al,0x77007300
     bca:	00 22                	add    %ah,(%edx)
     bcc:	21 01                	and    %eax,(%ecx)
     bce:	00 00                	add    %al,(%eax)
     bd0:	38 01                	cmp    %al,(%ecx)
     bd2:	00 00                	add    %al,(%eax)
     bd4:	01 00                	add    %eax,(%eax)
     bd6:	50                   	push   %eax
     bd7:	38 01                	cmp    %al,(%ecx)
     bd9:	00 00                	add    %al,(%eax)
     bdb:	45                   	inc    %ebp
     bdc:	01 00                	add    %eax,(%eax)
     bde:	00 02                	add    %al,(%edx)
     be0:	00 73 7f             	add    %dh,0x7f(%ebx)
     be3:	4f                   	dec    %edi
     be4:	01 00                	add    %eax,(%eax)
     be6:	00 59 01             	add    %bl,0x1(%ecx)
     be9:	00 00                	add    %al,(%eax)
     beb:	02 00                	add    (%eax),%al
     bed:	70 00                	jo     bef <memcpy-0xc00ff411>
     bef:	59                   	pop    %ecx
     bf0:	01 00                	add    %eax,(%eax)
     bf2:	00 6a 01             	add    %ch,0x1(%edx)
     bf5:	00 00                	add    %al,(%eax)
     bf7:	01 00                	add    %eax,(%eax)
     bf9:	52                   	push   %edx
     bfa:	6f                   	outsl  %ds:(%esi),(%dx)
     bfb:	01 00                	add    %eax,(%eax)
     bfd:	00 79 01             	add    %bh,0x1(%ecx)
     c00:	00 00                	add    %al,(%eax)
     c02:	05 00 73 00 77       	add    $0x77007300,%eax
     c07:	00 22                	add    %ah,(%edx)
     c09:	81 01 00 00 8b 01    	addl   $0x18b0000,(%ecx)
     c0f:	00 00                	add    %al,(%eax)
     c11:	01 00                	add    %eax,(%eax)
     c13:	50                   	push   %eax
     c14:	8b 01                	mov    (%ecx),%eax
     c16:	00 00                	add    %al,(%eax)
     c18:	97                   	xchg   %eax,%edi
     c19:	01 00                	add    %eax,(%eax)
     c1b:	00 02                	add    %al,(%edx)
     c1d:	00 73 7f             	add    %dh,0x7f(%ebx)
     c20:	97                   	xchg   %eax,%edi
     c21:	01 00                	add    %eax,(%eax)
     c23:	00 9e 01 00 00 03    	add    %bl,0x3000001(%esi)
     c29:	00 91 08 06 aa 01    	add    %dl,0x1aa0608(%ecx)
     c2f:	00 00                	add    %al,(%eax)
     c31:	c0 01 00             	rolb   $0x0,(%ecx)
     c34:	00 01                	add    %al,(%ecx)
     c36:	00 50 c0             	add    %dl,-0x40(%eax)
     c39:	01 00                	add    %eax,(%eax)
     c3b:	00 cd                	add    %cl,%ch
     c3d:	01 00                	add    %eax,(%eax)
     c3f:	00 02                	add    %al,(%edx)
     c41:	00 73 7f             	add    %dh,0x7f(%ebx)
     c44:	d7                   	xlat   %ds:(%ebx)
     c45:	01 00                	add    %eax,(%eax)
     c47:	00 e1                	add    %ah,%cl
     c49:	01 00                	add    %eax,(%eax)
     c4b:	00 02                	add    %al,(%edx)
     c4d:	00 70 00             	add    %dh,0x0(%eax)
     c50:	e1 01                	loope  c53 <memcpy-0xc00ff3ad>
     c52:	00 00                	add    %al,(%eax)
     c54:	f2 01 00             	repnz add %eax,(%eax)
     c57:	00 01                	add    %al,(%ecx)
     c59:	00 52 f7             	add    %dl,-0x9(%edx)
     c5c:	01 00                	add    %eax,(%eax)
     c5e:	00 01                	add    %al,(%ecx)
     c60:	02 00                	add    (%eax),%al
     c62:	00 05 00 73 00 77    	add    %al,0x77007300
     c68:	00 22                	add    %ah,(%edx)
     c6a:	09 02                	or     %eax,(%edx)
     c6c:	00 00                	add    %al,(%eax)
     c6e:	16                   	push   %ss
     c6f:	02 00                	add    (%eax),%al
     c71:	00 01                	add    %al,(%ecx)
     c73:	00 50 16             	add    %dl,0x16(%eax)
     c76:	02 00                	add    (%eax),%al
     c78:	00 24 02             	add    %ah,(%edx,%eax,1)
     c7b:	00 00                	add    %al,(%eax)
     c7d:	02 00                	add    (%eax),%al
     c7f:	73 7f                	jae    d00 <memcpy-0xc00ff300>
     c81:	24 02                	and    $0x2,%al
     c83:	00 00                	add    %al,(%eax)
     c85:	36 02 00             	add    %ss:(%eax),%al
     c88:	00 04 00             	add    %al,(%eax,%eax,1)
     c8b:	91                   	xchg   %eax,%ecx
     c8c:	08 06                	or     %al,(%esi)
     c8e:	06                   	push   %es
     c8f:	36 02 00             	add    %ss:(%eax),%al
     c92:	00 42 02             	add    %al,0x2(%edx)
     c95:	00 00                	add    %al,(%eax)
     c97:	01 00                	add    %eax,(%eax)
     c99:	50                   	push   %eax
     c9a:	47                   	inc    %edi
     c9b:	02 00                	add    (%eax),%al
     c9d:	00 51 02             	add    %dl,0x2(%ecx)
     ca0:	00 00                	add    %al,(%eax)
     ca2:	05 00 73 00 77       	add    $0x77007300,%eax
     ca7:	00 22                	add    %ah,(%edx)
	...
     cb1:	e6 00                	out    %al,$0x0
     cb3:	00 00                	add    %al,(%eax)
     cb5:	ef                   	out    %eax,(%dx)
     cb6:	00 00                	add    %al,(%eax)
     cb8:	00 01                	add    %al,(%ecx)
     cba:	00 50 ef             	add    %dl,-0x11(%eax)
     cbd:	00 00                	add    %al,(%eax)
     cbf:	00 f9                	add    %bh,%cl
     cc1:	00 00                	add    %al,(%eax)
     cc3:	00 03                	add    %al,(%ebx)
     cc5:	00 70 01             	add    %dh,0x1(%eax)
     cc8:	9f                   	lahf   
     cc9:	46                   	inc    %esi
     cca:	01 00                	add    %eax,(%eax)
     ccc:	00 4f 01             	add    %cl,0x1(%edi)
     ccf:	00 00                	add    %al,(%eax)
     cd1:	01 00                	add    %eax,(%eax)
     cd3:	50                   	push   %eax
     cd4:	4f                   	dec    %edi
     cd5:	01 00                	add    %eax,(%eax)
     cd7:	00 59 01             	add    %bl,0x1(%ecx)
     cda:	00 00                	add    %al,(%eax)
     cdc:	03 00                	add    (%eax),%eax
     cde:	70 01                	jo     ce1 <memcpy-0xc00ff31f>
     ce0:	9f                   	lahf   
     ce1:	ce                   	into   
     ce2:	01 00                	add    %eax,(%eax)
     ce4:	00 d7                	add    %dl,%bh
     ce6:	01 00                	add    %eax,(%eax)
     ce8:	00 01                	add    %al,(%ecx)
     cea:	00 50 d7             	add    %dl,-0x29(%eax)
     ced:	01 00                	add    %eax,(%eax)
     cef:	00 e1                	add    %ah,%cl
     cf1:	01 00                	add    %eax,(%eax)
     cf3:	00 03                	add    %al,(%ebx)
     cf5:	00 70 01             	add    %dh,0x1(%eax)
     cf8:	9f                   	lahf   
     cf9:	1e                   	push   %ds
     cfa:	02 00                	add    (%eax),%al
     cfc:	00 24 02             	add    %ah,(%edx,%eax,1)
     cff:	00 00                	add    %al,(%eax)
     d01:	03 00                	add    (%eax),%eax
     d03:	91                   	xchg   %eax,%ecx
     d04:	08 06                	or     %al,(%esi)
     d06:	24 02                	and    $0x2,%al
     d08:	00 00                	add    %al,(%eax)
     d0a:	36 02 00             	add    %ss:(%eax),%al
     d0d:	00 07                	add    %al,(%edi)
     d0f:	00 91 08 06 06 23    	add    %dl,0x23060608(%ecx)
     d15:	01 9f 00 00 00 00    	add    %ebx,0x0(%edi)
	...
     d23:	11 00                	adc    %eax,(%eax)
     d25:	00 00                	add    %al,(%eax)
     d27:	02 00                	add    (%eax),%al
     d29:	30 9f 11 00 00 00    	xor    %bl,0x11(%edi)
     d2f:	40                   	inc    %eax
     d30:	00 00                	add    %al,(%eax)
     d32:	00 01                	add    %al,(%ecx)
     d34:	00 57 40             	add    %dl,0x40(%edi)
     d37:	00 00                	add    %al,(%eax)
     d39:	00 42 00             	add    %al,0x0(%edx)
     d3c:	00 00                	add    %al,(%eax)
     d3e:	01 00                	add    %eax,(%eax)
     d40:	50                   	push   %eax
     d41:	42                   	inc    %edx
     d42:	00 00                	add    %al,(%eax)
     d44:	00 8e 01 00 00 01    	add    %cl,0x1000001(%esi)
     d4a:	00 57 8e             	add    %dl,-0x72(%edi)
     d4d:	01 00                	add    %eax,(%eax)
     d4f:	00 97 01 00 00 03    	add    %dl,0x3000001(%edi)
     d55:	00 77 7f             	add    %dh,0x7f(%edi)
     d58:	9f                   	lahf   
     d59:	97                   	xchg   %eax,%edi
     d5a:	01 00                	add    %eax,(%eax)
     d5c:	00 59 02             	add    %bl,0x2(%ecx)
     d5f:	00 00                	add    %al,(%eax)
     d61:	01 00                	add    %eax,(%eax)
     d63:	57                   	push   %edi
	...
     d70:	01 00                	add    %eax,(%eax)
     d72:	00 00                	add    %al,(%eax)
     d74:	02 00                	add    (%eax),%al
     d76:	74 04                	je     d7c <memcpy-0xc00ff284>
     d78:	01 00                	add    %eax,(%eax)
     d7a:	00 00                	add    %al,(%eax)
     d7c:	08 00                	or     %al,(%eax)
     d7e:	00 00                	add    %al,(%eax)
     d80:	02 00                	add    (%eax),%al
     d82:	74 08                	je     d8c <memcpy-0xc00ff274>
     d84:	08 00                	or     %al,(%eax)
     d86:	00 00                	add    %al,(%eax)
     d88:	1e                   	push   %ds
     d89:	00 00                	add    %al,(%eax)
     d8b:	00 02                	add    %al,(%edx)
     d8d:	00 75 08             	add    %dh,0x8(%ebp)
     d90:	1e                   	push   %ds
     d91:	00 00                	add    %al,(%eax)
     d93:	00 1f                	add    %bl,(%edi)
     d95:	00 00                	add    %al,(%eax)
     d97:	00 02                	add    %al,(%edx)
     d99:	00 74 04 00          	add    %dh,0x0(%esp,%eax,1)
     d9d:	00 00                	add    %al,(%eax)
     d9f:	00 00                	add    %al,(%eax)
     da1:	00 00                	add    %al,(%eax)
     da3:	00 11                	add    %dl,(%ecx)
     da5:	00 00                	add    %al,(%eax)
     da7:	00 1c 00             	add    %bl,(%eax,%eax,1)
     daa:	00 00                	add    %al,(%eax)
     dac:	01 00                	add    %eax,(%eax)
     dae:	50                   	push   %eax
	...
     db7:	20 00                	and    %al,(%eax)
     db9:	00 00                	add    %al,(%eax)
     dbb:	21 00                	and    %eax,(%eax)
     dbd:	00 00                	add    %al,(%eax)
     dbf:	02 00                	add    (%eax),%al
     dc1:	74 04                	je     dc7 <memcpy-0xc00ff239>
     dc3:	21 00                	and    %eax,(%eax)
     dc5:	00 00                	add    %al,(%eax)
     dc7:	28 00                	sub    %al,(%eax)
     dc9:	00 00                	add    %al,(%eax)
     dcb:	02 00                	add    (%eax),%al
     dcd:	74 08                	je     dd7 <memcpy-0xc00ff229>
     dcf:	28 00                	sub    %al,(%eax)
     dd1:	00 00                	add    %al,(%eax)
     dd3:	59                   	pop    %ecx
     dd4:	00 00                	add    %al,(%eax)
     dd6:	00 02                	add    %al,(%edx)
     dd8:	00 75 08             	add    %dh,0x8(%ebp)
     ddb:	59                   	pop    %ecx
     ddc:	00 00                	add    %al,(%eax)
     dde:	00 5a 00             	add    %bl,0x0(%edx)
     de1:	00 00                	add    %al,(%eax)
     de3:	02 00                	add    (%eax),%al
     de5:	74 04                	je     deb <memcpy-0xc00ff215>
	...
     def:	60                   	pusha  
     df0:	00 00                	add    %al,(%eax)
     df2:	00 61 00             	add    %ah,0x0(%ecx)
     df5:	00 00                	add    %al,(%eax)
     df7:	02 00                	add    (%eax),%al
     df9:	74 04                	je     dff <memcpy-0xc00ff201>
     dfb:	61                   	popa   
     dfc:	00 00                	add    %al,(%eax)
     dfe:	00 63 00             	add    %ah,0x0(%ebx)
     e01:	00 00                	add    %al,(%eax)
     e03:	02 00                	add    (%eax),%al
     e05:	74 08                	je     e0f <memcpy-0xc00ff1f1>
     e07:	63 00                	arpl   %ax,(%eax)
     e09:	00 00                	add    %al,(%eax)
     e0b:	81 00 00 00 02 00    	addl   $0x20000,(%eax)
     e11:	75 08                	jne    e1b <memcpy-0xc00ff1e5>
     e13:	81 00 00 00 82 00    	addl   $0x820000,(%eax)
     e19:	00 00                	add    %al,(%eax)
     e1b:	02 00                	add    (%eax),%al
     e1d:	74 04                	je     e23 <memcpy-0xc00ff1dd>
	...
     e2b:	01 00                	add    %eax,(%eax)
     e2d:	00 00                	add    %al,(%eax)
     e2f:	02 00                	add    (%eax),%al
     e31:	74 04                	je     e37 <memcpy-0xc00ff1c9>
     e33:	01 00                	add    %eax,(%eax)
     e35:	00 00                	add    %al,(%eax)
     e37:	08 00                	or     %al,(%eax)
     e39:	00 00                	add    %al,(%eax)
     e3b:	02 00                	add    (%eax),%al
     e3d:	74 08                	je     e47 <memcpy-0xc00ff1b9>
     e3f:	08 00                	or     %al,(%eax)
     e41:	00 00                	add    %al,(%eax)
     e43:	92                   	xchg   %eax,%edx
     e44:	00 00                	add    %al,(%eax)
     e46:	00 02                	add    %al,(%edx)
     e48:	00 75 08             	add    %dh,0x8(%ebp)
     e4b:	92                   	xchg   %eax,%edx
     e4c:	00 00                	add    %al,(%eax)
     e4e:	00 93 00 00 00 02    	add    %dl,0x2000000(%ebx)
     e54:	00 74 04 00          	add    %dh,0x0(%esp,%eax,1)
     e58:	00 00                	add    %al,(%eax)
     e5a:	00 00                	add    %al,(%eax)
     e5c:	00 00                	add    %al,(%eax)
     e5e:	00 06                	add    %al,(%esi)
     e60:	00 00                	add    %al,(%eax)
     e62:	00 0d 00 00 00 02    	add    %cl,0x2000000
     e68:	00 30                	add    %dh,(%eax)
     e6a:	9f                   	lahf   
     e6b:	1f                   	pop    %ds
     e6c:	00 00                	add    %al,(%eax)
     e6e:	00 41 00             	add    %al,0x0(%ecx)
     e71:	00 00                	add    %al,(%eax)
     e73:	01 00                	add    %eax,(%eax)
     e75:	50                   	push   %eax
     e76:	42                   	inc    %edx
     e77:	00 00                	add    %al,(%eax)
     e79:	00 49 00             	add    %cl,0x0(%ecx)
     e7c:	00 00                	add    %al,(%eax)
     e7e:	02 00                	add    (%eax),%al
     e80:	30 9f 70 00 00 00    	xor    %bl,0x70(%edi)
     e86:	93                   	xchg   %eax,%ebx
     e87:	00 00                	add    %al,(%eax)
     e89:	00 01                	add    %al,(%ecx)
     e8b:	00 52 00             	add    %dl,0x0(%edx)
     e8e:	00 00                	add    %al,(%eax)
     e90:	00 00                	add    %al,(%eax)
     e92:	00 00                	add    %al,(%eax)
     e94:	00 06                	add    %al,(%esi)
     e96:	00 00                	add    %al,(%eax)
     e98:	00 41 00             	add    %al,0x0(%ecx)
     e9b:	00 00                	add    %al,(%eax)
     e9d:	01 00                	add    %eax,(%eax)
     e9f:	52                   	push   %edx
	...
     ea8:	06                   	push   %es
     ea9:	00 00                	add    %al,(%eax)
     eab:	00 49 00             	add    %cl,0x0(%ecx)
     eae:	00 00                	add    %al,(%eax)
     eb0:	06                   	push   %es
     eb1:	00 03                	add    %al,(%ebx)
     eb3:	00 70 44             	add    %dh,0x44(%eax)
     eb6:	00 9f 49 00 00 00    	add    %bl,0x49(%edi)
     ebc:	93                   	xchg   %eax,%ebx
     ebd:	00 00                	add    %al,(%eax)
     ebf:	00 01                	add    %al,(%ecx)
     ec1:	00 51 00             	add    %dl,0x0(%ecx)
     ec4:	00 00                	add    %al,(%eax)
     ec6:	00 00                	add    %al,(%eax)
     ec8:	00 00                	add    %al,(%eax)
     eca:	00 89 00 00 00 8e    	add    %cl,-0x72000000(%ecx)
     ed0:	00 00                	add    %al,(%eax)
     ed2:	00 0a                	add    %cl,(%edx)
     ed4:	00 70 00             	add    %dh,0x0(%eax)
     ed7:	11 80 80 80 80 78    	adc    %eax,0x78808080(%eax)
     edd:	21 9f 8e 00 00 00    	and    %ebx,0x8e(%edi)
     ee3:	93                   	xchg   %eax,%ebx
     ee4:	00 00                	add    %al,(%eax)
     ee6:	00 01                	add    %al,(%ecx)
     ee8:	00 50 00             	add    %dl,0x0(%eax)
     eeb:	00 00                	add    %al,(%eax)
     eed:	00 00                	add    %al,(%eax)
     eef:	00 00                	add    %al,(%eax)
     ef1:	00 a0 00 00 00 bb    	add    %ah,-0x45000000(%eax)
     ef7:	00 00                	add    %al,(%eax)
     ef9:	00 02                	add    %al,(%edx)
     efb:	00 74 04 bb          	add    %dh,-0x45(%esp,%eax,1)
     eff:	00 00                	add    %al,(%eax)
     f01:	00 c0                	add    %al,%al
     f03:	00 00                	add    %al,(%eax)
     f05:	00 02                	add    %al,(%edx)
     f07:	00 74 08 c0          	add    %dh,-0x40(%eax,%ecx,1)
     f0b:	00 00                	add    %al,(%eax)
     f0d:	00 b6 01 00 00 02    	add    %dh,0x2000001(%esi)
     f13:	00 75 08             	add    %dh,0x8(%ebp)
     f16:	b6 01                	mov    $0x1,%dh
     f18:	00 00                	add    %al,(%eax)
     f1a:	b7 01                	mov    $0x1,%bh
     f1c:	00 00                	add    %al,(%eax)
     f1e:	02 00                	add    (%eax),%al
     f20:	74 04                	je     f26 <memcpy-0xc00ff0da>
	...
     f2e:	01 00                	add    %eax,(%eax)
     f30:	00 00                	add    %al,(%eax)
     f32:	02 00                	add    (%eax),%al
     f34:	74 04                	je     f3a <memcpy-0xc00ff0c6>
     f36:	01 00                	add    %eax,(%eax)
     f38:	00 00                	add    %al,(%eax)
     f3a:	03 00                	add    (%eax),%eax
     f3c:	00 00                	add    %al,(%eax)
     f3e:	02 00                	add    (%eax),%al
     f40:	74 08                	je     f4a <memcpy-0xc00ff0b6>
     f42:	03 00                	add    (%eax),%eax
     f44:	00 00                	add    %al,(%eax)
     f46:	a9 01 00 00 02       	test   $0x2000001,%eax
     f4b:	00 75 08             	add    %dh,0x8(%ebp)
	...
     f56:	13 00                	adc    (%eax),%eax
     f58:	00 00                	add    %al,(%eax)
     f5a:	20 00                	and    %al,(%eax)
     f5c:	00 00                	add    %al,(%eax)
     f5e:	05 00 03 00 20       	add    $0x20000300,%eax
     f63:	10 c0                	adc    %al,%al
     f65:	20 00                	and    %al,(%eax)
     f67:	00 00                	add    %al,(%eax)
     f69:	a9 01 00 00 01       	test   $0x1000001,%eax
     f6e:	00 53 00             	add    %dl,0x0(%ebx)
     f71:	00 00                	add    %al,(%eax)
     f73:	00 00                	add    %al,(%eax)
     f75:	00 00                	add    %al,(%eax)
     f77:	00 b0 01 00 00 b1    	add    %dh,-0x4effffff(%eax)
     f7d:	01 00                	add    %eax,(%eax)
     f7f:	00 02                	add    %al,(%edx)
     f81:	00 74 04 b1          	add    %dh,-0x4f(%esp,%eax,1)
     f85:	01 00                	add    %eax,(%eax)
     f87:	00 b3 01 00 00 02    	add    %dh,0x2000001(%ebx)
     f8d:	00 74 08 b3          	add    %dh,-0x4d(%eax,%ecx,1)
     f91:	01 00                	add    %eax,(%eax)
     f93:	00 41 03             	add    %al,0x3(%ecx)
     f96:	00 00                	add    %al,(%eax)
     f98:	02 00                	add    (%eax),%al
     f9a:	75 08                	jne    fa4 <memcpy-0xc00ff05c>
	...
     fa4:	50                   	push   %eax
     fa5:	03 00                	add    (%eax),%eax
     fa7:	00 51 03             	add    %dl,0x3(%ecx)
     faa:	00 00                	add    %al,(%eax)
     fac:	02 00                	add    (%eax),%al
     fae:	74 04                	je     fb4 <memcpy-0xc00ff04c>
     fb0:	51                   	push   %ecx
     fb1:	03 00                	add    (%eax),%eax
     fb3:	00 53 03             	add    %dl,0x3(%ebx)
     fb6:	00 00                	add    %al,(%eax)
     fb8:	02 00                	add    (%eax),%al
     fba:	74 08                	je     fc4 <memcpy-0xc00ff03c>
     fbc:	53                   	push   %ebx
     fbd:	03 00                	add    (%eax),%eax
     fbf:	00 1f                	add    %bl,(%edi)
     fc1:	04 00                	add    $0x0,%al
     fc3:	00 02                	add    %al,(%edx)
     fc5:	00 75 08             	add    %dh,0x8(%ebp)
     fc8:	1f                   	pop    %ds
     fc9:	04 00                	add    $0x0,%al
     fcb:	00 20                	add    %ah,(%eax)
     fcd:	04 00                	add    $0x0,%al
     fcf:	00 02                	add    %al,(%edx)
     fd1:	00 74 04 00          	add    %dh,0x0(%esp,%eax,1)
     fd5:	00 00                	add    %al,(%eax)
     fd7:	00 00                	add    %al,(%eax)
     fd9:	00 00                	add    %al,(%eax)
     fdb:	00 20                	add    %ah,(%eax)
     fdd:	04 00                	add    $0x0,%al
     fdf:	00 21                	add    %ah,(%ecx)
     fe1:	04 00                	add    $0x0,%al
     fe3:	00 02                	add    %al,(%edx)
     fe5:	00 74 04 21          	add    %dh,0x21(%esp,%eax,1)
     fe9:	04 00                	add    $0x0,%al
     feb:	00 23                	add    %ah,(%ebx)
     fed:	04 00                	add    $0x0,%al
     fef:	00 02                	add    %al,(%edx)
     ff1:	00 74 08 23          	add    %dh,0x23(%eax,%ecx,1)
     ff5:	04 00                	add    $0x0,%al
     ff7:	00 5b 04             	add    %bl,0x4(%ebx)
     ffa:	00 00                	add    %al,(%eax)
     ffc:	02 00                	add    (%eax),%al
     ffe:	75 08                	jne    1008 <memcpy-0xc00feff8>
	...
    1008:	60                   	pusha  
    1009:	04 00                	add    $0x0,%al
    100b:	00 61 04             	add    %ah,0x4(%ecx)
    100e:	00 00                	add    %al,(%eax)
    1010:	02 00                	add    (%eax),%al
    1012:	74 04                	je     1018 <memcpy-0xc00fefe8>
    1014:	61                   	popa   
    1015:	04 00                	add    $0x0,%al
    1017:	00 63 04             	add    %ah,0x4(%ebx)
    101a:	00 00                	add    %al,(%eax)
    101c:	02 00                	add    (%eax),%al
    101e:	74 08                	je     1028 <memcpy-0xc00fefd8>
    1020:	63 04 00             	arpl   %ax,(%eax,%eax,1)
    1023:	00 76 04             	add    %dh,0x4(%esi)
    1026:	00 00                	add    %al,(%eax)
    1028:	02 00                	add    (%eax),%al
    102a:	75 08                	jne    1034 <memcpy-0xc00fefcc>
	...
    1038:	01 00                	add    %eax,(%eax)
    103a:	00 00                	add    %al,(%eax)
    103c:	02 00                	add    (%eax),%al
    103e:	74 04                	je     1044 <memcpy-0xc00fefbc>
    1040:	01 00                	add    %eax,(%eax)
    1042:	00 00                	add    %al,(%eax)
    1044:	05 00 00 00 02       	add    $0x2000000,%eax
    1049:	00 74 08 05          	add    %dh,0x5(%eax,%ecx,1)
    104d:	00 00                	add    %al,(%eax)
    104f:	00 9b 03 00 00 02    	add    %bl,0x2000003(%ebx)
    1055:	00 75 08             	add    %dh,0x8(%ebp)
    1058:	9b                   	fwait
    1059:	03 00                	add    (%eax),%eax
    105b:	00 9c 03 00 00 02 00 	add    %bl,0x20000(%ebx,%eax,1)
    1062:	74 04                	je     1068 <memcpy-0xc00fef98>
	...
    1070:	16                   	push   %ss
    1071:	00 00                	add    %al,(%eax)
    1073:	00 02                	add    %al,(%edx)
    1075:	00 30                	add    %dh,(%eax)
    1077:	9f                   	lahf   
    1078:	3e 00 00             	add    %al,%ds:(%eax)
    107b:	00 4a 00             	add    %cl,0x0(%edx)
    107e:	00 00                	add    %al,(%eax)
    1080:	01 00                	add    %eax,(%eax)
    1082:	50                   	push   %eax
	...
    108f:	01 00                	add    %eax,(%eax)
    1091:	00 00                	add    %al,(%eax)
    1093:	02 00                	add    (%eax),%al
    1095:	74 04                	je     109b <memcpy-0xc00fef65>
    1097:	01 00                	add    %eax,(%eax)
    1099:	00 00                	add    %al,(%eax)
    109b:	03 00                	add    (%eax),%eax
    109d:	00 00                	add    %al,(%eax)
    109f:	02 00                	add    (%eax),%al
    10a1:	74 08                	je     10ab <memcpy-0xc00fef55>
    10a3:	03 00                	add    (%eax),%eax
    10a5:	00 00                	add    %al,(%eax)
    10a7:	4c                   	dec    %esp
    10a8:	00 00                	add    %al,(%eax)
    10aa:	00 02                	add    %al,(%edx)
    10ac:	00 75 08             	add    %dh,0x8(%ebp)
    10af:	4c                   	dec    %esp
    10b0:	00 00                	add    %al,(%eax)
    10b2:	00 4d 00             	add    %cl,0x0(%ebp)
    10b5:	00 00                	add    %al,(%eax)
    10b7:	02 00                	add    (%eax),%al
    10b9:	74 08                	je     10c3 <memcpy-0xc00fef3d>
    10bb:	4d                   	dec    %ebp
    10bc:	00 00                	add    %al,(%eax)
    10be:	00 50 00             	add    %dl,0x0(%eax)
    10c1:	00 00                	add    %al,(%eax)
    10c3:	02 00                	add    (%eax),%al
    10c5:	74 04                	je     10cb <memcpy-0xc00fef35>
    10c7:	50                   	push   %eax
    10c8:	00 00                	add    %al,(%eax)
    10ca:	00 60 00             	add    %ah,0x0(%eax)
    10cd:	00 00                	add    %al,(%eax)
    10cf:	02 00                	add    (%eax),%al
    10d1:	75 08                	jne    10db <memcpy-0xc00fef25>
    10d3:	60                   	pusha  
    10d4:	00 00                	add    %al,(%eax)
    10d6:	00 61 00             	add    %ah,0x0(%ecx)
    10d9:	00 00                	add    %al,(%eax)
    10db:	02 00                	add    (%eax),%al
    10dd:	74 08                	je     10e7 <memcpy-0xc00fef19>
    10df:	61                   	popa   
    10e0:	00 00                	add    %al,(%eax)
    10e2:	00 68 00             	add    %ch,0x0(%eax)
    10e5:	00 00                	add    %al,(%eax)
    10e7:	02 00                	add    (%eax),%al
    10e9:	74 04                	je     10ef <memcpy-0xc00fef11>
    10eb:	68 00 00 00 c1       	push   $0xc1000000
    10f0:	00 00                	add    %al,(%eax)
    10f2:	00 02                	add    %al,(%edx)
    10f4:	00 75 08             	add    %dh,0x8(%ebp)
    10f7:	c1 00 00             	roll   $0x0,(%eax)
    10fa:	00 c2                	add    %al,%dl
    10fc:	00 00                	add    %al,(%eax)
    10fe:	00 02                	add    %al,(%edx)
    1100:	00 74 08 c2          	add    %dh,-0x3e(%eax,%ecx,1)
    1104:	00 00                	add    %al,(%eax)
    1106:	00 c8                	add    %cl,%al
    1108:	00 00                	add    %al,(%eax)
    110a:	00 02                	add    %al,(%edx)
    110c:	00 74 04 c8          	add    %dh,-0x38(%esp,%eax,1)
    1110:	00 00                	add    %al,(%eax)
    1112:	00 e1                	add    %ah,%cl
    1114:	00 00                	add    %al,(%eax)
    1116:	00 02                	add    %al,(%edx)
    1118:	00 75 08             	add    %dh,0x8(%ebp)
	...
    1123:	12 00                	adc    (%eax),%al
    1125:	00 00                	add    %al,(%eax)
    1127:	1a 00                	sbb    (%eax),%al
    1129:	00 00                	add    %al,(%eax)
    112b:	05 00 91 00 06       	add    $0x6009100,%eax
    1130:	23 30                	and    (%eax),%esi
    1132:	1a 00                	sbb    (%eax),%al
    1134:	00 00                	add    %al,(%eax)
    1136:	45                   	inc    %ebp
    1137:	00 00                	add    %al,(%eax)
    1139:	00 01                	add    %al,(%ecx)
    113b:	00 56 4e             	add    %dl,0x4e(%esi)
    113e:	00 00                	add    %al,(%eax)
    1140:	00 5e 00             	add    %bl,0x0(%esi)
    1143:	00 00                	add    %al,(%eax)
    1145:	01 00                	add    %eax,(%eax)
    1147:	56                   	push   %esi
    1148:	62 00                	bound  %eax,(%eax)
    114a:	00 00                	add    %al,(%eax)
    114c:	bf 00 00 00 01       	mov    $0x1000000,%edi
    1151:	00 56 c7             	add    %dl,-0x39(%esi)
    1154:	00 00                	add    %al,(%eax)
    1156:	00 e1                	add    %ah,%cl
    1158:	00 00                	add    %al,(%eax)
    115a:	00 01                	add    %al,(%ecx)
    115c:	00 56 00             	add    %dl,0x0(%esi)
	...
    1167:	00 00                	add    %al,(%eax)
    1169:	00 01                	add    %al,(%ecx)
    116b:	00 00                	add    %al,(%eax)
    116d:	00 02                	add    %al,(%edx)
    116f:	00 74 04 01          	add    %dh,0x1(%esp,%eax,1)
    1173:	00 00                	add    %al,(%eax)
    1175:	00 08                	add    %cl,(%eax)
    1177:	00 00                	add    %al,(%eax)
    1179:	00 02                	add    %al,(%edx)
    117b:	00 74 08 08          	add    %dh,0x8(%eax,%ecx,1)
    117f:	00 00                	add    %al,(%eax)
    1181:	00 66 00             	add    %ah,0x0(%esi)
    1184:	00 00                	add    %al,(%eax)
    1186:	02 00                	add    (%eax),%al
    1188:	75 08                	jne    1192 <memcpy-0xc00fee6e>
    118a:	66                   	data16
    118b:	00 00                	add    %al,(%eax)
    118d:	00 67 00             	add    %ah,0x0(%edi)
    1190:	00 00                	add    %al,(%eax)
    1192:	02 00                	add    (%eax),%al
    1194:	74 04                	je     119a <memcpy-0xc00fee66>
	...
    11a2:	01 00                	add    %eax,(%eax)
    11a4:	00 00                	add    %al,(%eax)
    11a6:	02 00                	add    (%eax),%al
    11a8:	74 04                	je     11ae <memcpy-0xc00fee52>
    11aa:	01 00                	add    %eax,(%eax)
    11ac:	00 00                	add    %al,(%eax)
    11ae:	03 00                	add    (%eax),%eax
    11b0:	00 00                	add    %al,(%eax)
    11b2:	02 00                	add    (%eax),%al
    11b4:	74 08                	je     11be <memcpy-0xc00fee42>
    11b6:	03 00                	add    (%eax),%eax
    11b8:	00 00                	add    %al,(%eax)
    11ba:	18 00                	sbb    %al,(%eax)
    11bc:	00 00                	add    %al,(%eax)
    11be:	02 00                	add    (%eax),%al
    11c0:	75 08                	jne    11ca <memcpy-0xc00fee36>
    11c2:	18 00                	sbb    %al,(%eax)
    11c4:	00 00                	add    %al,(%eax)
    11c6:	19 00                	sbb    %eax,(%eax)
    11c8:	00 00                	add    %al,(%eax)
    11ca:	02 00                	add    (%eax),%al
    11cc:	74 04                	je     11d2 <memcpy-0xc00fee2e>
	...
    11d6:	20 00                	and    %al,(%eax)
    11d8:	00 00                	add    %al,(%eax)
    11da:	21 00                	and    %eax,(%eax)
    11dc:	00 00                	add    %al,(%eax)
    11de:	02 00                	add    (%eax),%al
    11e0:	74 04                	je     11e6 <memcpy-0xc00fee1a>
    11e2:	21 00                	and    %eax,(%eax)
    11e4:	00 00                	add    %al,(%eax)
    11e6:	23 00                	and    (%eax),%eax
    11e8:	00 00                	add    %al,(%eax)
    11ea:	02 00                	add    (%eax),%al
    11ec:	74 08                	je     11f6 <memcpy-0xc00fee0a>
    11ee:	23 00                	and    (%eax),%eax
    11f0:	00 00                	add    %al,(%eax)
    11f2:	6e                   	outsb  %ds:(%esi),(%dx)
    11f3:	00 00                	add    %al,(%eax)
    11f5:	00 02                	add    %al,(%edx)
    11f7:	00 75 08             	add    %dh,0x8(%ebp)
    11fa:	6e                   	outsb  %ds:(%esi),(%dx)
    11fb:	00 00                	add    %al,(%eax)
    11fd:	00 70 00             	add    %dh,0x0(%eax)
    1200:	00 00                	add    %al,(%eax)
    1202:	02 00                	add    (%eax),%al
    1204:	74 04                	je     120a <memcpy-0xc00fedf6>
    1206:	70 00                	jo     1208 <memcpy-0xc00fedf8>
    1208:	00 00                	add    %al,(%eax)
    120a:	9e                   	sahf   
    120b:	00 00                	add    %al,(%eax)
    120d:	00 02                	add    %al,(%edx)
    120f:	00 75 08             	add    %dh,0x8(%ebp)
	...
    121a:	39 00                	cmp    %eax,(%eax)
    121c:	00 00                	add    %al,(%eax)
    121e:	3d 00 00 00 05       	cmp    $0x5000000,%eax
    1223:	00 03                	add    %al,(%ebx)
    1225:	40                   	inc    %eax
    1226:	88 44 c0 3d          	mov    %al,0x3d(%eax,%eax,8)
    122a:	00 00                	add    %al,(%eax)
    122c:	00 6d 00             	add    %ch,0x0(%ebp)
    122f:	00 00                	add    %al,(%eax)
    1231:	01 00                	add    %eax,(%eax)
    1233:	53                   	push   %ebx
    1234:	6d                   	insl   (%dx),%es:(%edi)
    1235:	00 00                	add    %al,(%eax)
    1237:	00 6f 00             	add    %ch,0x0(%edi)
    123a:	00 00                	add    %al,(%eax)
    123c:	05 00 03 44 88       	add    $0x88440300,%eax
    1241:	44                   	inc    %esp
    1242:	c0 86 00 00 00 9e 00 	rolb   $0x0,-0x62000000(%esi)
    1249:	00 00                	add    %al,(%eax)
    124b:	01 00                	add    %eax,(%eax)
    124d:	53                   	push   %ebx
	...
    1256:	3f                   	aas    
    1257:	00 00                	add    %al,(%eax)
    1259:	00 6d 00             	add    %ch,0x0(%ebp)
    125c:	00 00                	add    %al,(%eax)
    125e:	02 00                	add    (%eax),%al
    1260:	73 00                	jae    1262 <memcpy-0xc00fed9e>
    1262:	6d                   	insl   (%dx),%es:(%edi)
    1263:	00 00                	add    %al,(%eax)
    1265:	00 6f 00             	add    %ch,0x0(%edi)
    1268:	00 00                	add    %al,(%eax)
    126a:	06                   	push   %es
    126b:	00 03                	add    %al,(%ebx)
    126d:	44                   	inc    %esp
    126e:	88 44 c0 06          	mov    %al,0x6(%eax,%eax,8)
	...
    127a:	42                   	inc    %edx
    127b:	00 00                	add    %al,(%eax)
    127d:	00 6d 00             	add    %ch,0x0(%ebp)
    1280:	00 00                	add    %al,(%eax)
    1282:	02 00                	add    (%eax),%al
    1284:	73 04                	jae    128a <memcpy-0xc00fed76>
    1286:	6d                   	insl   (%dx),%es:(%edi)
    1287:	00 00                	add    %al,(%eax)
    1289:	00 6f 00             	add    %ch,0x0(%edi)
    128c:	00 00                	add    %al,(%eax)
    128e:	08 00                	or     %al,(%eax)
    1290:	03 44 88 44          	add    0x44(%eax,%ecx,4),%eax
    1294:	c0 06 23             	rolb   $0x23,(%esi)
    1297:	04 00                	add    $0x0,%al
    1299:	00 00                	add    %al,(%eax)
    129b:	00 00                	add    %al,(%eax)
    129d:	00 00                	add    %al,(%eax)
    129f:	00 4f 00             	add    %cl,0x0(%edi)
    12a2:	00 00                	add    %al,(%eax)
    12a4:	6d                   	insl   (%dx),%es:(%edi)
    12a5:	00 00                	add    %al,(%eax)
    12a7:	00 01                	add    %al,(%ecx)
    12a9:	00 53 6d             	add    %dl,0x6d(%ebx)
    12ac:	00 00                	add    %al,(%eax)
    12ae:	00 6f 00             	add    %ch,0x0(%edi)
    12b1:	00 00                	add    %al,(%eax)
    12b3:	05 00 03 44 88       	add    $0x88440300,%eax
    12b8:	44                   	inc    %esp
    12b9:	c0 00 00             	rolb   $0x0,(%eax)
    12bc:	00 00                	add    %al,(%eax)
    12be:	00 00                	add    %al,(%eax)
    12c0:	00 00                	add    %al,(%eax)
    12c2:	4f                   	dec    %edi
    12c3:	00 00                	add    %al,(%eax)
    12c5:	00 6f 00             	add    %ch,0x0(%edi)
    12c8:	00 00                	add    %al,(%eax)
    12ca:	06                   	push   %es
    12cb:	00 03                	add    %al,(%ebx)
    12cd:	40                   	inc    %eax
    12ce:	88 44 c0 9f          	mov    %al,-0x61(%eax,%eax,8)
	...
    12da:	54                   	push   %esp
    12db:	00 00                	add    %al,(%eax)
    12dd:	00 6d 00             	add    %ch,0x0(%ebp)
    12e0:	00 00                	add    %al,(%eax)
    12e2:	01 00                	add    %eax,(%eax)
    12e4:	53                   	push   %ebx
    12e5:	6d                   	insl   (%dx),%es:(%edi)
    12e6:	00 00                	add    %al,(%eax)
    12e8:	00 6f 00             	add    %ch,0x0(%edi)
    12eb:	00 00                	add    %al,(%eax)
    12ed:	05 00 03 44 88       	add    $0x88440300,%eax
    12f2:	44                   	inc    %esp
    12f3:	c0 00 00             	rolb   $0x0,(%eax)
    12f6:	00 00                	add    %al,(%eax)
    12f8:	00 00                	add    %al,(%eax)
    12fa:	00 00                	add    %al,(%eax)
    12fc:	54                   	push   %esp
    12fd:	00 00                	add    %al,(%eax)
    12ff:	00 6f 00             	add    %ch,0x0(%edi)
    1302:	00 00                	add    %al,(%eax)
    1304:	05 00 03 44 88       	add    $0x88440300,%eax
    1309:	44                   	inc    %esp
    130a:	c0 00 00             	rolb   $0x0,(%eax)
    130d:	00 00                	add    %al,(%eax)
    130f:	00 00                	add    %al,(%eax)
    1311:	00 00                	add    %al,(%eax)
    1313:	54                   	push   %esp
    1314:	00 00                	add    %al,(%eax)
    1316:	00 6f 00             	add    %ch,0x0(%edi)
    1319:	00 00                	add    %al,(%eax)
    131b:	06                   	push   %es
    131c:	00 03                	add    %al,(%ebx)
    131e:	40                   	inc    %eax
    131f:	88 44 c0 9f          	mov    %al,-0x61(%eax,%eax,8)
	...
    132b:	a0 00 00 00 a1       	mov    0xa1000000,%al
    1330:	00 00                	add    %al,(%eax)
    1332:	00 02                	add    %al,(%edx)
    1334:	00 74 04 a1          	add    %dh,-0x5f(%esp,%eax,1)
    1338:	00 00                	add    %al,(%eax)
    133a:	00 a3 00 00 00 02    	add    %ah,0x2000000(%ebx)
    1340:	00 74 08 a3          	add    %dh,-0x5d(%eax,%ecx,1)
    1344:	00 00                	add    %al,(%eax)
    1346:	00 b6 00 00 00 02    	add    %dh,0x2000000(%esi)
    134c:	00 75 08             	add    %dh,0x8(%ebp)
    134f:	b6 00                	mov    $0x0,%dh
    1351:	00 00                	add    %al,(%eax)
    1353:	b8 00 00 00 02       	mov    $0x2000000,%eax
    1358:	00 74 04 b8          	add    %dh,-0x48(%esp,%eax,1)
    135c:	00 00                	add    %al,(%eax)
    135e:	00 d2                	add    %dl,%dl
    1360:	00 00                	add    %al,(%eax)
    1362:	00 02                	add    %al,(%edx)
    1364:	00 75 08             	add    %dh,0x8(%ebp)
    1367:	d2 00                	rolb   %cl,(%eax)
    1369:	00 00                	add    %al,(%eax)
    136b:	d6                   	(bad)  
    136c:	00 00                	add    %al,(%eax)
    136e:	00 02                	add    %al,(%edx)
    1370:	00 74 04 00          	add    %dh,0x0(%esp,%eax,1)
	...
    137c:	00 00                	add    %al,(%eax)
    137e:	00 01                	add    %al,(%ecx)
    1380:	00 00                	add    %al,(%eax)
    1382:	00 02                	add    %al,(%edx)
    1384:	00 74 04 01          	add    %dh,0x1(%esp,%eax,1)
    1388:	00 00                	add    %al,(%eax)
    138a:	00 03                	add    %al,(%ebx)
    138c:	00 00                	add    %al,(%eax)
    138e:	00 02                	add    %al,(%edx)
    1390:	00 74 08 03          	add    %dh,0x3(%eax,%ecx,1)
    1394:	00 00                	add    %al,(%eax)
    1396:	00 b3 00 00 00 02    	add    %dh,0x2000000(%ebx)
    139c:	00 75 08             	add    %dh,0x8(%ebp)
    139f:	b3 00                	mov    $0x0,%bl
    13a1:	00 00                	add    %al,(%eax)
    13a3:	b8 00 00 00 02       	mov    $0x2000000,%eax
    13a8:	00 74 04 b8          	add    %dh,-0x48(%esp,%eax,1)
    13ac:	00 00                	add    %al,(%eax)
    13ae:	00 d7                	add    %dl,%bh
    13b0:	00 00                	add    %al,(%eax)
    13b2:	00 02                	add    %al,(%edx)
    13b4:	00 75 08             	add    %dh,0x8(%ebp)
	...
    13bf:	12 00                	adc    (%eax),%al
    13c1:	00 00                	add    %al,(%eax)
    13c3:	1a 00                	sbb    (%eax),%al
    13c5:	00 00                	add    %al,(%eax)
    13c7:	01 00                	add    %eax,(%eax)
    13c9:	50                   	push   %eax
    13ca:	b4 00                	mov    $0x0,%ah
    13cc:	00 00                	add    %al,(%eax)
    13ce:	ce                   	into   
    13cf:	00 00                	add    %al,(%eax)
    13d1:	00 01                	add    %al,(%ecx)
    13d3:	00 50 00             	add    %dl,0x0(%eax)
    13d6:	00 00                	add    %al,(%eax)
    13d8:	00 00                	add    %al,(%eax)
    13da:	00 00                	add    %al,(%eax)
    13dc:	00 47 00             	add    %al,0x0(%edi)
    13df:	00 00                	add    %al,(%eax)
    13e1:	b4 00                	mov    $0x0,%ah
    13e3:	00 00                	add    %al,(%eax)
    13e5:	04 00                	add    $0x0,%al
    13e7:	70 91                	jo     137a <memcpy-0xc00fec86>
    13e9:	3e                   	ds
    13ea:	9f                   	lahf   
	...
    13f3:	e0 00                	loopne 13f5 <memcpy-0xc00fec0b>
    13f5:	00 00                	add    %al,(%eax)
    13f7:	e1 00                	loope  13f9 <memcpy-0xc00fec07>
    13f9:	00 00                	add    %al,(%eax)
    13fb:	02 00                	add    (%eax),%al
    13fd:	74 04                	je     1403 <memcpy-0xc00febfd>
    13ff:	e1 00                	loope  1401 <memcpy-0xc00febff>
    1401:	00 00                	add    %al,(%eax)
    1403:	e3 00                	jecxz  1405 <memcpy-0xc00febfb>
    1405:	00 00                	add    %al,(%eax)
    1407:	02 00                	add    (%eax),%al
    1409:	74 08                	je     1413 <memcpy-0xc00febed>
    140b:	e3 00                	jecxz  140d <memcpy-0xc00febf3>
    140d:	00 00                	add    %al,(%eax)
    140f:	20 01                	and    %al,(%ecx)
    1411:	00 00                	add    %al,(%eax)
    1413:	02 00                	add    (%eax),%al
    1415:	75 08                	jne    141f <memcpy-0xc00febe1>
    1417:	20 01                	and    %al,(%ecx)
    1419:	00 00                	add    %al,(%eax)
    141b:	21 01                	and    %eax,(%ecx)
    141d:	00 00                	add    %al,(%eax)
    141f:	02 00                	add    (%eax),%al
    1421:	74 08                	je     142b <memcpy-0xc00febd5>
    1423:	21 01                	and    %eax,(%ecx)
    1425:	00 00                	add    %al,(%eax)
    1427:	28 01                	sub    %al,(%ecx)
    1429:	00 00                	add    %al,(%eax)
    142b:	02 00                	add    (%eax),%al
    142d:	74 04                	je     1433 <memcpy-0xc00febcd>
    142f:	28 01                	sub    %al,(%ecx)
    1431:	00 00                	add    %al,(%eax)
    1433:	3e 01 00             	add    %eax,%ds:(%eax)
    1436:	00 02                	add    %al,(%edx)
    1438:	00 75 08             	add    %dh,0x8(%ebp)
	...
    1443:	ff 00                	incl   (%eax)
    1445:	00 00                	add    %al,(%eax)
    1447:	1b 01                	sbb    (%ecx),%eax
    1449:	00 00                	add    %al,(%eax)
    144b:	01 00                	add    %eax,(%eax)
    144d:	56                   	push   %esi
    144e:	1b 01                	sbb    (%ecx),%eax
    1450:	00 00                	add    %al,(%eax)
    1452:	22 01                	and    (%ecx),%al
    1454:	00 00                	add    %al,(%eax)
    1456:	05 00 91 00 06       	add    $0x6009100,%eax
    145b:	23 08                	and    (%eax),%ecx
    145d:	22 01                	and    (%ecx),%al
    145f:	00 00                	add    %al,(%eax)
    1461:	3e 01 00             	add    %eax,%ds:(%eax)
    1464:	00 01                	add    %al,(%ecx)
    1466:	00 56 00             	add    %dl,0x0(%esi)
    1469:	00 00                	add    %al,(%eax)
    146b:	00 00                	add    %al,(%eax)
    146d:	00 00                	add    %al,(%eax)
    146f:	00 40 01             	add    %al,0x1(%eax)
    1472:	00 00                	add    %al,(%eax)
    1474:	41                   	inc    %ecx
    1475:	01 00                	add    %eax,(%eax)
    1477:	00 02                	add    %al,(%edx)
    1479:	00 74 04 41          	add    %dh,0x41(%esp,%eax,1)
    147d:	01 00                	add    %eax,(%eax)
    147f:	00 43 01             	add    %al,0x1(%ebx)
    1482:	00 00                	add    %al,(%eax)
    1484:	02 00                	add    (%eax),%al
    1486:	74 08                	je     1490 <memcpy-0xc00feb70>
    1488:	43                   	inc    %ebx
    1489:	01 00                	add    %eax,(%eax)
    148b:	00 6c 01 00          	add    %ch,0x0(%ecx,%eax,1)
    148f:	00 02                	add    %al,(%edx)
    1491:	00 75 08             	add    %dh,0x8(%ebp)
    1494:	6c                   	insb   (%dx),%es:(%edi)
    1495:	01 00                	add    %eax,(%eax)
    1497:	00 70 01             	add    %dh,0x1(%eax)
    149a:	00 00                	add    %al,(%eax)
    149c:	02 00                	add    (%eax),%al
    149e:	74 04                	je     14a4 <memcpy-0xc00feb5c>
    14a0:	70 01                	jo     14a3 <memcpy-0xc00feb5d>
    14a2:	00 00                	add    %al,(%eax)
    14a4:	86 01                	xchg   %al,(%ecx)
    14a6:	00 00                	add    %al,(%eax)
    14a8:	02 00                	add    (%eax),%al
    14aa:	75 08                	jne    14b4 <memcpy-0xc00feb4c>
	...
    14b4:	52                   	push   %edx
    14b5:	01 00                	add    %eax,(%eax)
    14b7:	00 6b 01             	add    %ch,0x1(%ebx)
    14ba:	00 00                	add    %al,(%eax)
    14bc:	03 00                	add    (%eax),%eax
    14be:	73 04                	jae    14c4 <memcpy-0xc00feb3c>
    14c0:	9f                   	lahf   
    14c1:	6d                   	insl   (%dx),%es:(%edi)
    14c2:	01 00                	add    %eax,(%eax)
    14c4:	00 86 01 00 00 03    	add    %al,0x3000001(%esi)
    14ca:	00 73 04             	add    %dh,0x4(%ebx)
    14cd:	9f                   	lahf   
	...
    14d6:	55                   	push   %ebp
    14d7:	01 00                	add    %eax,(%eax)
    14d9:	00 6b 01             	add    %ch,0x1(%ebx)
    14dc:	00 00                	add    %al,(%eax)
    14de:	02 00                	add    (%eax),%al
    14e0:	73 04                	jae    14e6 <memcpy-0xc00feb1a>
    14e2:	6b 01 00             	imul   $0x0,(%ecx),%eax
    14e5:	00 6d 01             	add    %ch,0x1(%ebp)
    14e8:	00 00                	add    %al,(%eax)
    14ea:	01 00                	add    %eax,(%eax)
    14ec:	52                   	push   %edx
	...
    14f5:	58                   	pop    %eax
    14f6:	01 00                	add    %eax,(%eax)
    14f8:	00 6b 01             	add    %ch,0x1(%ebx)
    14fb:	00 00                	add    %al,(%eax)
    14fd:	02 00                	add    (%eax),%al
    14ff:	73 08                	jae    1509 <memcpy-0xc00feaf7>
    1501:	6b 01 00             	imul   $0x0,(%ecx),%eax
    1504:	00 6d 01             	add    %ch,0x1(%ebp)
    1507:	00 00                	add    %al,(%eax)
    1509:	01 00                	add    %eax,(%eax)
    150b:	50                   	push   %eax
	...

Disassembly of section .debug_ranges:

00000000 <.debug_ranges>:
   0:	ac                   	lods   %ds:(%esi),%al
   1:	00 00                	add    %al,(%eax)
   3:	00 b2 00 00 00 b8    	add    %dh,-0x48000000(%edx)
   9:	00 00                	add    %al,(%eax)
   b:	00 b9 00 00 00 00    	add    %bh,0x0(%ecx)
  11:	00 00                	add    %al,(%eax)
  13:	00 00                	add    %al,(%eax)
  15:	00 00                	add    %al,(%eax)
  17:	00 51 01             	add    %dl,0x1(%ecx)
  1a:	00 00                	add    %al,(%eax)
  1c:	6b 01 00             	imul   $0x0,(%ecx),%eax
  1f:	00 78 01             	add    %bh,0x1(%eax)
  22:	00 00                	add    %al,(%eax)
  24:	9a 01 00 00 00 00 00 	lcall  $0x0,$0x1
  2b:	00 00                	add    %al,(%eax)
  2d:	00 00                	add    %al,(%eax)
  2f:	00 54 01 00          	add    %dl,0x0(%ecx,%eax,1)
  33:	00 6b 01             	add    %ch,0x1(%ebx)
  36:	00 00                	add    %al,(%eax)
  38:	78 01                	js     3b <memcpy-0xc00fffc5>
  3a:	00 00                	add    %al,(%eax)
  3c:	9a 01 00 00 00 00 00 	lcall  $0x0,$0x1
  43:	00 00                	add    %al,(%eax)
  45:	00 00                	add    %al,(%eax)
  47:	00 d0                	add    %dl,%al
  49:	01 00                	add    %eax,(%eax)
  4b:	00 fb                	add    %bh,%bl
  4d:	01 00                	add    %eax,(%eax)
  4f:	00 10                	add    %dl,(%eax)
  51:	02 00                	add    (%eax),%al
  53:	00 46 02             	add    %al,0x2(%esi)
	...
  5e:	00 00                	add    %al,(%eax)
  60:	da 01                	fiaddl (%ecx)
  62:	00 00                	add    %al,(%eax)
  64:	dc 01                	faddl  (%ecx)
  66:	00 00                	add    %al,(%eax)
  68:	df 01                	fild   (%ecx)
  6a:	00 00                	add    %al,(%eax)
  6c:	f3 01 00             	repz add %eax,(%eax)
  6f:	00 30                	add    %dh,(%eax)
  71:	02 00                	add    (%eax),%al
  73:	00 46 02             	add    %al,0x2(%esi)
	...
  7e:	00 00                	add    %al,(%eax)
  80:	da 01                	fiaddl (%ecx)
  82:	00 00                	add    %al,(%eax)
  84:	dc 01                	faddl  (%ecx)
  86:	00 00                	add    %al,(%eax)
  88:	df 01                	fild   (%ecx)
  8a:	00 00                	add    %al,(%eax)
  8c:	f3 01 00             	repz add %eax,(%eax)
  8f:	00 30                	add    %dh,(%eax)
  91:	02 00                	add    (%eax),%al
  93:	00 46 02             	add    %al,0x2(%esi)
	...
  9e:	00 00                	add    %al,(%eax)
  a0:	01 00                	add    %eax,(%eax)
  a2:	00 00                	add    %al,(%eax)
  a4:	06                   	push   %es
  a5:	00 00                	add    %al,(%eax)
  a7:	00 10                	add    %dl,(%eax)
  a9:	00 00                	add    %al,(%eax)
  ab:	00 11                	add    %dl,(%ecx)
	...
  b5:	00 00                	add    %al,(%eax)
  b7:	00 01                	add    %al,(%ecx)
  b9:	00 00                	add    %al,(%eax)
  bb:	00 06                	add    %al,(%esi)
  bd:	00 00                	add    %al,(%eax)
  bf:	00 10                	add    %dl,(%eax)
  c1:	00 00                	add    %al,(%eax)
  c3:	00 11                	add    %dl,(%ecx)
	...
  cd:	00 00                	add    %al,(%eax)
  cf:	00 01                	add    %al,(%ecx)
  d1:	00 00                	add    %al,(%eax)
  d3:	00 06                	add    %al,(%esi)
  d5:	00 00                	add    %al,(%eax)
  d7:	00 10                	add    %dl,(%eax)
  d9:	00 00                	add    %al,(%eax)
  db:	00 11                	add    %dl,(%ecx)
	...
  e5:	00 00                	add    %al,(%eax)
  e7:	00 21                	add    %ah,(%ecx)
  e9:	00 00                	add    %al,(%eax)
  eb:	00 26                	add    %ah,(%esi)
  ed:	00 00                	add    %al,(%eax)
  ef:	00 28                	add    %ch,(%eax)
  f1:	00 00                	add    %al,(%eax)
  f3:	00 2b                	add    %ch,(%ebx)
	...
  fd:	00 00                	add    %al,(%eax)
  ff:	00 b5 00 00 00 ba    	add    %dh,-0x46000000(%ebp)
 105:	00 00                	add    %al,(%eax)
 107:	00 c0                	add    %al,%al
 109:	00 00                	add    %al,(%eax)
 10b:	00 d2                	add    %dl,%dl
 10d:	00 00                	add    %al,(%eax)
 10f:	00 a7 01 00 00 b5    	add    %ah,-0x4affffff(%edi)
 115:	01 00                	add    %eax,(%eax)
	...
 11f:	00 b5 00 00 00 ba    	add    %dh,-0x46000000(%ebp)
 125:	00 00                	add    %al,(%eax)
 127:	00 c0                	add    %al,%al
 129:	00 00                	add    %al,(%eax)
 12b:	00 d2                	add    %dl,%dl
 12d:	00 00                	add    %al,(%eax)
 12f:	00 a7 01 00 00 b5    	add    %ah,-0x4affffff(%edi)
 135:	01 00                	add    %eax,(%eax)
	...
 13f:	00 ed                	add    %ch,%ch
 141:	02 00                	add    (%eax),%al
 143:	00 f6                	add    %dh,%dh
 145:	02 00                	add    (%eax),%al
 147:	00 ff                	add    %bh,%bh
 149:	02 00                	add    (%eax),%al
 14b:	00 09                	add    %cl,(%ecx)
 14d:	03 00                	add    (%eax),%eax
 14f:	00 0f                	add    %cl,(%edi)
 151:	03 00                	add    (%eax),%eax
 153:	00 1b                	add    %bl,(%ebx)
 155:	03 00                	add    (%eax),%eax
 157:	00 22                	add    %ah,(%edx)
 159:	03 00                	add    (%eax),%eax
 15b:	00 25 03 00 00 00    	add    %ah,0x3
 161:	00 00                	add    %al,(%eax)
 163:	00 00                	add    %al,(%eax)
 165:	00 00                	add    %al,(%eax)
 167:	00 ed                	add    %ch,%ch
 169:	02 00                	add    (%eax),%al
 16b:	00 f6                	add    %dh,%dh
 16d:	02 00                	add    (%eax),%al
 16f:	00 ff                	add    %bh,%bh
 171:	02 00                	add    (%eax),%al
 173:	00 09                	add    %cl,(%ecx)
 175:	03 00                	add    (%eax),%eax
 177:	00 0f                	add    %cl,(%edi)
 179:	03 00                	add    (%eax),%eax
 17b:	00 1b                	add    %bl,(%ebx)
 17d:	03 00                	add    (%eax),%eax
 17f:	00 22                	add    %ah,(%edx)
 181:	03 00                	add    (%eax),%eax
 183:	00 25 03 00 00 00    	add    %ah,0x3
 189:	00 00                	add    %al,(%eax)
 18b:	00 00                	add    %al,(%eax)
 18d:	00 00                	add    %al,(%eax)
 18f:	00 01                	add    %al,(%ecx)
 191:	00 00                	add    %al,(%eax)
 193:	00 06                	add    %al,(%esi)
 195:	00 00                	add    %al,(%eax)
 197:	00 08                	add    %cl,(%eax)
 199:	00 00                	add    %al,(%eax)
 19b:	00 0e                	add    %cl,(%esi)
	...
 1a5:	00 00                	add    %al,(%eax)
 1a7:	00 39                	add    %bh,(%ecx)
 1a9:	00 00                	add    %al,(%eax)
 1ab:	00 4f 00             	add    %cl,0x0(%edi)
 1ae:	00 00                	add    %al,(%eax)
 1b0:	88 00                	mov    %al,(%eax)
 1b2:	00 00                	add    %al,(%eax)
 1b4:	9e                   	sahf   
	...
 1bd:	00 00                	add    %al,(%eax)
 1bf:	00 39                	add    %bh,(%ecx)
 1c1:	00 00                	add    %al,(%eax)
 1c3:	00 4f 00             	add    %cl,0x0(%edi)
 1c6:	00 00                	add    %al,(%eax)
 1c8:	88 00                	mov    %al,(%eax)
 1ca:	00 00                	add    %al,(%eax)
 1cc:	9e                   	sahf   
	...
 1d5:	00 00                	add    %al,(%eax)
 1d7:	00 f2                	add    %dh,%dl
 1d9:	00 00                	add    %al,(%eax)
 1db:	00 15 01 00 00 28    	add    %dl,0x28000001
 1e1:	01 00                	add    %eax,(%eax)
 1e3:	00 3e                	add    %bh,(%esi)
 1e5:	01 00                	add    %eax,(%eax)
	...
 1ef:	00 f8                	add    %bh,%al
 1f1:	00 00                	add    %al,(%eax)
 1f3:	00 15 01 00 00 28    	add    %dl,0x28000001
 1f9:	01 00                	add    %eax,(%eax)
 1fb:	00 3e                	add    %bh,(%esi)
 1fd:	01 00                	add    %eax,(%eax)
	...
 207:	00 4d 01             	add    %cl,0x1(%ebp)
 20a:	00 00                	add    %al,(%eax)
 20c:	65 01 00             	add    %eax,%gs:(%eax)
 20f:	00 70 01             	add    %dh,0x1(%eax)
 212:	00 00                	add    %al,(%eax)
 214:	86 01                	xchg   %al,(%ecx)
	...
 21e:	00 00                	add    %al,(%eax)
 220:	4d                   	dec    %ebp
 221:	01 00                	add    %eax,(%eax)
 223:	00 65 01             	add    %ah,0x1(%ebp)
 226:	00 00                	add    %al,(%eax)
 228:	70 01                	jo     22b <memcpy-0xc00ffdd5>
 22a:	00 00                	add    %al,(%eax)
 22c:	86 01                	xchg   %al,(%ecx)
	...
