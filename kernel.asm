
kernel:     file format elf32-i386


Disassembly of section .text:

c0100000 <memcpy>:
#include "common.h"
#include "string.h"
#include "assert.h"

void *
memcpy(void *dst, const void *src, size_t count) {
c0100000:	55                   	push   %ebp
c0100001:	89 e5                	mov    %esp,%ebp
c0100003:	56                   	push   %esi
c0100004:	8b 45 08             	mov    0x8(%ebp),%eax
c0100007:	53                   	push   %ebx
c0100008:	8b 5d 10             	mov    0x10(%ebp),%ebx
c010000b:	8b 75 0c             	mov    0xc(%ebp),%esi
	void *ret = dst;
	while (count --) {
c010000e:	85 db                	test   %ebx,%ebx
c0100010:	74 14                	je     c0100026 <memcpy+0x26>
c0100012:	31 d2                	xor    %edx,%edx
c0100014:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
		*(char *)dst = *(char *)src;
c0100018:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
c010001c:	88 0c 10             	mov    %cl,(%eax,%edx,1)
c010001f:	83 c2 01             	add    $0x1,%edx
#include "assert.h"

void *
memcpy(void *dst, const void *src, size_t count) {
	void *ret = dst;
	while (count --) {
c0100022:	39 da                	cmp    %ebx,%edx
c0100024:	75 f2                	jne    c0100018 <memcpy+0x18>
		*(char *)dst = *(char *)src;
		dst = (char *)dst + 1;
		src = (char *)src + 1;
	}
	return ret;
}
c0100026:	5b                   	pop    %ebx
c0100027:	5e                   	pop    %esi
c0100028:	5d                   	pop    %ebp
c0100029:	c3                   	ret    
c010002a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0100030 <memset>:

void *
memset(void *dst, int val, size_t count) {
c0100030:	55                   	push   %ebp
c0100031:	89 e5                	mov    %esp,%ebp
c0100033:	8b 55 10             	mov    0x10(%ebp),%edx
c0100036:	53                   	push   %ebx
c0100037:	8b 45 08             	mov    0x8(%ebp),%eax
	void *start = dst;
	while (count --) {
c010003a:	85 d2                	test   %edx,%edx
c010003c:	74 14                	je     c0100052 <memset+0x22>
c010003e:	0f b6 5d 0c          	movzbl 0xc(%ebp),%ebx
c0100042:	89 c1                	mov    %eax,%ecx
c0100044:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
		*(char *)dst = (char)val;
c0100048:	88 19                	mov    %bl,(%ecx)
		dst = (char *)dst + 1;
c010004a:	83 c1 01             	add    $0x1,%ecx
}

void *
memset(void *dst, int val, size_t count) {
	void *start = dst;
	while (count --) {
c010004d:	83 ea 01             	sub    $0x1,%edx
c0100050:	75 f6                	jne    c0100048 <memset+0x18>
		*(char *)dst = (char)val;
		dst = (char *)dst + 1;
	}
	return start;
}
c0100052:	5b                   	pop    %ebx
c0100053:	5d                   	pop    %ebp
c0100054:	c3                   	ret    
c0100055:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0100059:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0100060 <utoa_buf>:
	}
	return buf;
}

char *
utoa_buf(unsigned int value, char *buf, int base) {
c0100060:	55                   	push   %ebp
c0100061:	89 e5                	mov    %esp,%ebp
c0100063:	56                   	push   %esi
c0100064:	53                   	push   %ebx
c0100065:	83 ec 20             	sub    $0x20,%esp
c0100068:	8b 5d 10             	mov    0x10(%ebp),%ebx
c010006b:	8b 45 08             	mov    0x8(%ebp),%eax
c010006e:	8b 75 0c             	mov    0xc(%ebp),%esi
	static char digits[] = "0123456789abcdef";
	assert(base > 1 && base <= 16);
c0100071:	8d 53 fe             	lea    -0x2(%ebx),%edx
c0100074:	83 fa 0e             	cmp    $0xe,%edx
c0100077:	77 27                	ja     c01000a0 <utoa_buf+0x40>
	*(buf += 34) = 0;
c0100079:	8d 4e 22             	lea    0x22(%esi),%ecx
c010007c:	c6 46 22 00          	movb   $0x0,0x22(%esi)
	do {
		*(--buf) = digits[value % base];
c0100080:	31 d2                	xor    %edx,%edx
c0100082:	83 e9 01             	sub    $0x1,%ecx
c0100085:	f7 f3                	div    %ebx
c0100087:	0f b6 92 05 0c 10 c0 	movzbl -0x3feff3fb(%edx),%edx
		value /= base;
	} while (value > 0);
c010008e:	85 c0                	test   %eax,%eax
utoa_buf(unsigned int value, char *buf, int base) {
	static char digits[] = "0123456789abcdef";
	assert(base > 1 && base <= 16);
	*(buf += 34) = 0;
	do {
		*(--buf) = digits[value % base];
c0100090:	88 11                	mov    %dl,(%ecx)
		value /= base;
	} while (value > 0);
c0100092:	75 ec                	jne    c0100080 <utoa_buf+0x20>
	return buf;
}
c0100094:	83 c4 20             	add    $0x20,%esp
c0100097:	89 c8                	mov    %ecx,%eax
c0100099:	5b                   	pop    %ebx
c010009a:	5e                   	pop    %esi
c010009b:	5d                   	pop    %ebp
c010009c:	c3                   	ret    
c010009d:	8d 76 00             	lea    0x0(%esi),%esi
}

char *
utoa_buf(unsigned int value, char *buf, int base) {
	static char digits[] = "0123456789abcdef";
	assert(base > 1 && base <= 16);
c01000a0:	89 45 f4             	mov    %eax,-0xc(%ebp)
c01000a3:	c7 44 24 04 2b 00 00 	movl   $0x2b,0x4(%esp)
c01000aa:	00 
c01000ab:	c7 04 24 f4 0b 10 c0 	movl   $0xc0100bf4,(%esp)
c01000b2:	e8 f9 00 00 00       	call   c01001b0 <abort>
c01000b7:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01000ba:	eb bd                	jmp    c0100079 <utoa_buf+0x19>
c01000bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

c01000c0 <itoa_buf>:
	}
	return start;
}

char *
itoa_buf(int value, char *buf, int base) {
c01000c0:	55                   	push   %ebp
c01000c1:	89 e5                	mov    %esp,%ebp
c01000c3:	83 ec 18             	sub    $0x18,%esp
c01000c6:	8b 45 08             	mov    0x8(%ebp),%eax
c01000c9:	8b 4d 0c             	mov    0xc(%ebp),%ecx
c01000cc:	8b 55 10             	mov    0x10(%ebp),%edx
	boolean negative = FALSE;
	if (value < 0) {
		negative = TRUE;
		value = -value;
	}
	buf = utoa_buf(value, buf + 1, base);
c01000cf:	83 c1 01             	add    $0x1,%ecx
}

char *
itoa_buf(int value, char *buf, int base) {
	boolean negative = FALSE;
	if (value < 0) {
c01000d2:	85 c0                	test   %eax,%eax
c01000d4:	78 12                	js     c01000e8 <itoa_buf+0x28>
		negative = TRUE;
		value = -value;
	}
	buf = utoa_buf(value, buf + 1, base);
c01000d6:	89 55 10             	mov    %edx,0x10(%ebp)
c01000d9:	89 4d 0c             	mov    %ecx,0xc(%ebp)
c01000dc:	89 45 08             	mov    %eax,0x8(%ebp)
	if (negative) {
		*(--buf) = '-';
	}
	return buf;
}
c01000df:	c9                   	leave  
	boolean negative = FALSE;
	if (value < 0) {
		negative = TRUE;
		value = -value;
	}
	buf = utoa_buf(value, buf + 1, base);
c01000e0:	e9 7b ff ff ff       	jmp    c0100060 <utoa_buf>
c01000e5:	8d 76 00             	lea    0x0(%esi),%esi
char *
itoa_buf(int value, char *buf, int base) {
	boolean negative = FALSE;
	if (value < 0) {
		negative = TRUE;
		value = -value;
c01000e8:	f7 d8                	neg    %eax
	}
	buf = utoa_buf(value, buf + 1, base);
c01000ea:	89 54 24 08          	mov    %edx,0x8(%esp)
c01000ee:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c01000f2:	89 04 24             	mov    %eax,(%esp)
c01000f5:	e8 66 ff ff ff       	call   c0100060 <utoa_buf>
c01000fa:	89 c2                	mov    %eax,%edx
	if (negative) {
		*(--buf) = '-';
c01000fc:	c6 42 ff 2d          	movb   $0x2d,-0x1(%edx)
c0100100:	8d 40 ff             	lea    -0x1(%eax),%eax
	}
	return buf;
}
c0100103:	c9                   	leave  
c0100104:	c3                   	ret    
c0100105:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0100109:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0100110 <toupper>:
	} while (value > 0);
	return buf;
}

int
toupper(int ch) {
c0100110:	55                   	push   %ebp
c0100111:	89 e5                	mov    %esp,%ebp
c0100113:	8b 45 08             	mov    0x8(%ebp),%eax
	return (ch >= 'a' && ch <= 'z') ? (ch - 'a' + 'A') : (ch);
}
c0100116:	5d                   	pop    %ebp
	return buf;
}

int
toupper(int ch) {
	return (ch >= 'a' && ch <= 'z') ? (ch - 'a' + 'A') : (ch);
c0100117:	8d 48 9f             	lea    -0x61(%eax),%ecx
c010011a:	8d 50 e0             	lea    -0x20(%eax),%edx
c010011d:	83 f9 19             	cmp    $0x19,%ecx
c0100120:	0f 46 c2             	cmovbe %edx,%eax
}
c0100123:	c3                   	ret    
c0100124:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c010012a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

c0100130 <tolower>:
int
tolower(int ch) {
c0100130:	55                   	push   %ebp
c0100131:	89 e5                	mov    %esp,%ebp
c0100133:	8b 45 08             	mov    0x8(%ebp),%eax
	return (ch >= 'A' && ch <= 'Z') ? (ch - 'A' + 'a') : (ch);
}
c0100136:	5d                   	pop    %ebp
toupper(int ch) {
	return (ch >= 'a' && ch <= 'z') ? (ch - 'a' + 'A') : (ch);
}
int
tolower(int ch) {
	return (ch >= 'A' && ch <= 'Z') ? (ch - 'A' + 'a') : (ch);
c0100137:	8d 48 bf             	lea    -0x41(%eax),%ecx
c010013a:	8d 50 20             	lea    0x20(%eax),%edx
c010013d:	83 f9 19             	cmp    $0x19,%ecx
c0100140:	0f 46 c2             	cmovbe %edx,%eax
}
c0100143:	c3                   	ret    
c0100144:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c010014a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

c0100150 <itoa>:

char *
itoa(int value, int base) {
c0100150:	55                   	push   %ebp
c0100151:	89 e5                	mov    %esp,%ebp
c0100153:	83 ec 18             	sub    $0x18,%esp
	static char buf[50];
	return itoa_buf(value, buf, base);
c0100156:	8b 45 0c             	mov    0xc(%ebp),%eax
c0100159:	c7 44 24 04 00 30 10 	movl   $0xc0103000,0x4(%esp)
c0100160:	c0 
c0100161:	89 44 24 08          	mov    %eax,0x8(%esp)
c0100165:	8b 45 08             	mov    0x8(%ebp),%eax
c0100168:	89 04 24             	mov    %eax,(%esp)
c010016b:	e8 50 ff ff ff       	call   c01000c0 <itoa_buf>
}
c0100170:	c9                   	leave  
c0100171:	c3                   	ret    
c0100172:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0100179:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0100180 <utoa>:

char *
utoa(unsigned int value, int base) {
c0100180:	55                   	push   %ebp
c0100181:	89 e5                	mov    %esp,%ebp
c0100183:	83 ec 18             	sub    $0x18,%esp
	static char buf[50];
	return utoa_buf(value, buf, base);
c0100186:	8b 45 0c             	mov    0xc(%ebp),%eax
c0100189:	c7 44 24 04 40 30 10 	movl   $0xc0103040,0x4(%esp)
c0100190:	c0 
c0100191:	89 44 24 08          	mov    %eax,0x8(%esp)
c0100195:	8b 45 08             	mov    0x8(%ebp),%eax
c0100198:	89 04 24             	mov    %eax,(%esp)
c010019b:	e8 c0 fe ff ff       	call   c0100060 <utoa_buf>
}
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
#include "debug.h"
#include "x86.h"

void
abort(const char *file, int line) {
c01001b0:	55                   	push   %ebp
c01001b1:	89 e5                	mov    %esp,%ebp
c01001b3:	83 ec 18             	sub    $0x18,%esp
}

// Disable external interrupt
static inline void
cli(void) {
	asm volatile("cli");
c01001b6:	fa                   	cli    
	cli();
	printk("\n\nFatal error (assertion failure) at %s:%d\n", file, line);
c01001b7:	8b 45 0c             	mov    0xc(%ebp),%eax
c01001ba:	c7 04 24 18 0c 10 c0 	movl   $0xc0100c18,(%esp)
c01001c1:	89 44 24 08          	mov    %eax,0x8(%esp)
c01001c5:	8b 45 08             	mov    0x8(%ebp),%eax
c01001c8:	89 44 24 04          	mov    %eax,0x4(%esp)
c01001cc:	e8 8f 02 00 00       	call   c0100460 <printk>
}

// Put processor into idle until being interrupted
static inline void
wait_intr() {
	asm volatile("hlt");
c01001d1:	f4                   	hlt    
	wait_intr();
}
c01001d2:	c9                   	leave  
c01001d3:	c3                   	ret    
c01001d4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c01001da:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

c01001e0 <panic>:

void
panic(const char *str) {
c01001e0:	55                   	push   %ebp
c01001e1:	89 e5                	mov    %esp,%ebp
c01001e3:	83 ec 18             	sub    $0x18,%esp
}

// Disable external interrupt
static inline void
cli(void) {
	asm volatile("cli");
c01001e6:	fa                   	cli    
	cli();
	printk("\n\nFatal error (kernel panic): %s\n", str);
c01001e7:	8b 45 08             	mov    0x8(%ebp),%eax
c01001ea:	c7 04 24 44 0c 10 c0 	movl   $0xc0100c44,(%esp)
c01001f1:	89 44 24 04          	mov    %eax,0x4(%esp)
c01001f5:	e8 66 02 00 00       	call   c0100460 <printk>
}

// Put processor into idle until being interrupted
static inline void
wait_intr() {
	asm volatile("hlt");
c01001fa:	f4                   	hlt    
	wait_intr();
}
c01001fb:	c9                   	leave  
c01001fc:	c3                   	ret    
c01001fd:	90                   	nop
c01001fe:	90                   	nop
c01001ff:	90                   	nop

c0100200 <vfprintf>:
    while((buf = *buf_str++) != '\0'){\
        put_onechar; \
    }

int
vfprintf(void (*putchar_func)(char), const char *format, void **data) {
c0100200:	55                   	push   %ebp
c0100201:	89 e5                	mov    %esp,%ebp
c0100203:	57                   	push   %edi
    char buf;
    char *buf_str;
    int buf_int;
    int buf_unsigned_int;
    int field_width = 0;//final length of output
c0100204:	31 ff                	xor    %edi,%edi
    while((buf = *buf_str++) != '\0'){\
        put_onechar; \
    }

int
vfprintf(void (*putchar_func)(char), const char *format, void **data) {
c0100206:	56                   	push   %esi
c0100207:	53                   	push   %ebx
c0100208:	83 ec 2c             	sub    $0x2c,%esp
c010020b:	8b 75 08             	mov    0x8(%ebp),%esi
c010020e:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c0100211:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    char *buf_str;
    int buf_int;
    int buf_unsigned_int;
    int field_width = 0;//final length of output

    while((buf = *format++) != '\0'){
c0100218:	0f b6 03             	movzbl (%ebx),%eax
c010021b:	84 c0                	test   %al,%al
c010021d:	74 19                	je     c0100238 <vfprintf+0x38>
        if (buf != '%'){
c010021f:	3c 25                	cmp    $0x25,%al
c0100221:	74 25                	je     c0100248 <vfprintf+0x48>
            put_onechar;
c0100223:	0f be c0             	movsbl %al,%eax
    char *buf_str;
    int buf_int;
    int buf_unsigned_int;
    int field_width = 0;//final length of output

    while((buf = *format++) != '\0'){
c0100226:	83 c3 01             	add    $0x1,%ebx
        if (buf != '%'){
            put_onechar;
c0100229:	89 04 24             	mov    %eax,(%esp)
c010022c:	83 c7 01             	add    $0x1,%edi
c010022f:	ff d6                	call   *%esi
    char *buf_str;
    int buf_int;
    int buf_unsigned_int;
    int field_width = 0;//final length of output

    while((buf = *format++) != '\0'){
c0100231:	0f b6 03             	movzbl (%ebx),%eax
c0100234:	84 c0                	test   %al,%al
c0100236:	75 e7                	jne    c010021f <vfprintf+0x1f>
            default: assert(FALSE);break;//wrong input
        }
    }

    return field_width;
}
c0100238:	83 c4 2c             	add    $0x2c,%esp
c010023b:	89 f8                	mov    %edi,%eax
c010023d:	5b                   	pop    %ebx
c010023e:	5e                   	pop    %esi
c010023f:	5f                   	pop    %edi
c0100240:	5d                   	pop    %ebp
c0100241:	c3                   	ret    
c0100242:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        if (buf != '%'){
            put_onechar;
            continue;
        }
        /* begin transform */
        buf = *format++;
c0100248:	0f b6 43 01          	movzbl 0x1(%ebx),%eax
c010024c:	83 c3 02             	add    $0x2,%ebx
        assert(buf != '\0');/* a fmt end with a single % means the input is wrong */
c010024f:	84 c0                	test   %al,%al
c0100251:	74 35                	je     c0100288 <vfprintf+0x88>
        switch(buf){
c0100253:	3c 64                	cmp    $0x64,%al
c0100255:	0f 84 fd 00 00 00    	je     c0100358 <vfprintf+0x158>
c010025b:	7f 43                	jg     c01002a0 <vfprintf+0xa0>
c010025d:	3c 25                	cmp    $0x25,%al
c010025f:	90                   	nop
c0100260:	0f 84 7a 01 00 00    	je     c01003e0 <vfprintf+0x1e0>
c0100266:	3c 63                	cmp    $0x63,%al
c0100268:	0f 84 4a 01 00 00    	je     c01003b8 <vfprintf+0x1b8>
            case 's': buf_str = va_args(data,char *);put_string;break;
            case 'd': buf_int = va_args(data,int);
                      buf_str = itoa(buf_int,10);put_string;break;
            case 'x': buf_unsigned_int = va_args(data,unsigned int);
                      buf_str = utoa(buf_unsigned_int,16);put_string;break;
            default: assert(FALSE);break;//wrong input
c010026e:	c7 44 24 04 2b 00 00 	movl   $0x2b,0x4(%esp)
c0100275:	00 
c0100276:	c7 04 24 68 0c 10 c0 	movl   $0xc0100c68,(%esp)
c010027d:	e8 2e ff ff ff       	call   c01001b0 <abort>
c0100282:	eb 94                	jmp    c0100218 <vfprintf+0x18>
c0100284:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
            put_onechar;
            continue;
        }
        /* begin transform */
        buf = *format++;
        assert(buf != '\0');/* a fmt end with a single % means the input is wrong */
c0100288:	c7 44 24 04 22 00 00 	movl   $0x22,0x4(%esp)
c010028f:	00 
c0100290:	c7 04 24 68 0c 10 c0 	movl   $0xc0100c68,(%esp)
c0100297:	e8 14 ff ff ff       	call   c01001b0 <abort>
c010029c:	eb d0                	jmp    c010026e <vfprintf+0x6e>
c010029e:	66 90                	xchg   %ax,%ax
        switch(buf){
c01002a0:	3c 73                	cmp    $0x73,%al
c01002a2:	74 64                	je     c0100308 <vfprintf+0x108>
c01002a4:	3c 78                	cmp    $0x78,%al
c01002a6:	75 c6                	jne    c010026e <vfprintf+0x6e>
            case 'c': buf = va_args(data,char);put_onechar;break;
            case 's': buf_str = va_args(data,char *);put_string;break;
            case 'd': buf_int = va_args(data,int);
                      buf_str = itoa(buf_int,10);put_string;break;
            case 'x': buf_unsigned_int = va_args(data,unsigned int);
                      buf_str = utoa(buf_unsigned_int,16);put_string;break;
c01002a8:	8b 55 10             	mov    0x10(%ebp),%edx
            case '%': put_onechar;break;
            case 'c': buf = va_args(data,char);put_onechar;break;
            case 's': buf_str = va_args(data,char *);put_string;break;
            case 'd': buf_int = va_args(data,int);
                      buf_str = itoa(buf_int,10);put_string;break;
            case 'x': buf_unsigned_int = va_args(data,unsigned int);
c01002ab:	8b 4d 10             	mov    0x10(%ebp),%ecx
                      buf_str = utoa(buf_unsigned_int,16);put_string;break;
c01002ae:	c7 44 24 04 10 00 00 	movl   $0x10,0x4(%esp)
c01002b5:	00 
c01002b6:	8b 02                	mov    (%edx),%eax
            case '%': put_onechar;break;
            case 'c': buf = va_args(data,char);put_onechar;break;
            case 's': buf_str = va_args(data,char *);put_string;break;
            case 'd': buf_int = va_args(data,int);
                      buf_str = itoa(buf_int,10);put_string;break;
            case 'x': buf_unsigned_int = va_args(data,unsigned int);
c01002b8:	83 c1 04             	add    $0x4,%ecx
c01002bb:	89 4d e0             	mov    %ecx,-0x20(%ebp)
                      buf_str = utoa(buf_unsigned_int,16);put_string;break;
c01002be:	89 04 24             	mov    %eax,(%esp)
c01002c1:	e8 ba fe ff ff       	call   c0100180 <utoa>
            case '%': put_onechar;break;
            case 'c': buf = va_args(data,char);put_onechar;break;
            case 's': buf_str = va_args(data,char *);put_string;break;
            case 'd': buf_int = va_args(data,int);
                      buf_str = itoa(buf_int,10);put_string;break;
            case 'x': buf_unsigned_int = va_args(data,unsigned int);
c01002c6:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c01002c9:	89 4d 10             	mov    %ecx,0x10(%ebp)
                      buf_str = utoa(buf_unsigned_int,16);put_string;break;
c01002cc:	0f b6 10             	movzbl (%eax),%edx
c01002cf:	84 d2                	test   %dl,%dl
c01002d1:	0f 84 41 ff ff ff    	je     c0100218 <vfprintf+0x18>
    while((buf = *buf_str++) != '\0'){\
        put_onechar; \
    }

int
vfprintf(void (*putchar_func)(char), const char *format, void **data) {
c01002d7:	29 f8                	sub    %edi,%eax
c01002d9:	89 5d e4             	mov    %ebx,-0x1c(%ebp)
c01002dc:	89 c3                	mov    %eax,%ebx
c01002de:	66 90                	xchg   %ax,%ax
            case 'c': buf = va_args(data,char);put_onechar;break;
            case 's': buf_str = va_args(data,char *);put_string;break;
            case 'd': buf_int = va_args(data,int);
                      buf_str = itoa(buf_int,10);put_string;break;
            case 'x': buf_unsigned_int = va_args(data,unsigned int);
                      buf_str = utoa(buf_unsigned_int,16);put_string;break;
c01002e0:	0f be d2             	movsbl %dl,%edx
c01002e3:	83 c7 01             	add    $0x1,%edi
c01002e6:	89 14 24             	mov    %edx,(%esp)
c01002e9:	ff d6                	call   *%esi
c01002eb:	0f b6 14 3b          	movzbl (%ebx,%edi,1),%edx
c01002ef:	84 d2                	test   %dl,%dl
c01002f1:	75 ed                	jne    c01002e0 <vfprintf+0xe0>
            case '%': put_onechar;break;
            case 'c': buf = va_args(data,char);put_onechar;break;
            case 's': buf_str = va_args(data,char *);put_string;break;
            case 'd': buf_int = va_args(data,int);
                      buf_str = itoa(buf_int,10);put_string;break;
            case 'x': buf_unsigned_int = va_args(data,unsigned int);
c01002f3:	8b 55 e0             	mov    -0x20(%ebp),%edx
c01002f6:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
c01002f9:	89 55 10             	mov    %edx,0x10(%ebp)
c01002fc:	e9 17 ff ff ff       	jmp    c0100218 <vfprintf+0x18>
c0100301:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        buf = *format++;
        assert(buf != '\0');/* a fmt end with a single % means the input is wrong */
        switch(buf){
            case '%': put_onechar;break;
            case 'c': buf = va_args(data,char);put_onechar;break;
            case 's': buf_str = va_args(data,char *);put_string;break;
c0100308:	8b 4d 10             	mov    0x10(%ebp),%ecx
c010030b:	8b 45 10             	mov    0x10(%ebp),%eax
c010030e:	8b 11                	mov    (%ecx),%edx
c0100310:	83 c0 04             	add    $0x4,%eax
c0100313:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0100316:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0100319:	0f b6 02             	movzbl (%edx),%eax
c010031c:	89 4d 10             	mov    %ecx,0x10(%ebp)
c010031f:	84 c0                	test   %al,%al
c0100321:	0f 84 f1 fe ff ff    	je     c0100218 <vfprintf+0x18>
    while((buf = *buf_str++) != '\0'){\
        put_onechar; \
    }

int
vfprintf(void (*putchar_func)(char), const char *format, void **data) {
c0100327:	29 fa                	sub    %edi,%edx
c0100329:	89 5d e4             	mov    %ebx,-0x1c(%ebp)
c010032c:	89 d3                	mov    %edx,%ebx
c010032e:	66 90                	xchg   %ax,%ax
        buf = *format++;
        assert(buf != '\0');/* a fmt end with a single % means the input is wrong */
        switch(buf){
            case '%': put_onechar;break;
            case 'c': buf = va_args(data,char);put_onechar;break;
            case 's': buf_str = va_args(data,char *);put_string;break;
c0100330:	0f be c0             	movsbl %al,%eax
c0100333:	83 c7 01             	add    $0x1,%edi
c0100336:	89 04 24             	mov    %eax,(%esp)
c0100339:	ff d6                	call   *%esi
c010033b:	0f b6 04 3b          	movzbl (%ebx,%edi,1),%eax
c010033f:	84 c0                	test   %al,%al
c0100341:	75 ed                	jne    c0100330 <vfprintf+0x130>
c0100343:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0100346:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
c0100349:	89 45 10             	mov    %eax,0x10(%ebp)
c010034c:	e9 c7 fe ff ff       	jmp    c0100218 <vfprintf+0x18>
c0100351:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
            case 'd': buf_int = va_args(data,int);
                      buf_str = itoa(buf_int,10);put_string;break;
c0100358:	8b 4d 10             	mov    0x10(%ebp),%ecx
        assert(buf != '\0');/* a fmt end with a single % means the input is wrong */
        switch(buf){
            case '%': put_onechar;break;
            case 'c': buf = va_args(data,char);put_onechar;break;
            case 's': buf_str = va_args(data,char *);put_string;break;
            case 'd': buf_int = va_args(data,int);
c010035b:	8b 55 10             	mov    0x10(%ebp),%edx
                      buf_str = itoa(buf_int,10);put_string;break;
c010035e:	c7 44 24 04 0a 00 00 	movl   $0xa,0x4(%esp)
c0100365:	00 
c0100366:	8b 01                	mov    (%ecx),%eax
        assert(buf != '\0');/* a fmt end with a single % means the input is wrong */
        switch(buf){
            case '%': put_onechar;break;
            case 'c': buf = va_args(data,char);put_onechar;break;
            case 's': buf_str = va_args(data,char *);put_string;break;
            case 'd': buf_int = va_args(data,int);
c0100368:	83 c2 04             	add    $0x4,%edx
c010036b:	89 55 e0             	mov    %edx,-0x20(%ebp)
                      buf_str = itoa(buf_int,10);put_string;break;
c010036e:	89 04 24             	mov    %eax,(%esp)
c0100371:	e8 da fd ff ff       	call   c0100150 <itoa>
        assert(buf != '\0');/* a fmt end with a single % means the input is wrong */
        switch(buf){
            case '%': put_onechar;break;
            case 'c': buf = va_args(data,char);put_onechar;break;
            case 's': buf_str = va_args(data,char *);put_string;break;
            case 'd': buf_int = va_args(data,int);
c0100376:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0100379:	89 4d 10             	mov    %ecx,0x10(%ebp)
                      buf_str = itoa(buf_int,10);put_string;break;
c010037c:	0f b6 10             	movzbl (%eax),%edx
c010037f:	84 d2                	test   %dl,%dl
c0100381:	0f 84 91 fe ff ff    	je     c0100218 <vfprintf+0x18>
    while((buf = *buf_str++) != '\0'){\
        put_onechar; \
    }

int
vfprintf(void (*putchar_func)(char), const char *format, void **data) {
c0100387:	29 f8                	sub    %edi,%eax
c0100389:	89 5d e4             	mov    %ebx,-0x1c(%ebp)
c010038c:	89 c3                	mov    %eax,%ebx
c010038e:	66 90                	xchg   %ax,%ax
        switch(buf){
            case '%': put_onechar;break;
            case 'c': buf = va_args(data,char);put_onechar;break;
            case 's': buf_str = va_args(data,char *);put_string;break;
            case 'd': buf_int = va_args(data,int);
                      buf_str = itoa(buf_int,10);put_string;break;
c0100390:	0f be d2             	movsbl %dl,%edx
c0100393:	83 c7 01             	add    $0x1,%edi
c0100396:	89 14 24             	mov    %edx,(%esp)
c0100399:	ff d6                	call   *%esi
c010039b:	0f b6 14 3b          	movzbl (%ebx,%edi,1),%edx
c010039f:	84 d2                	test   %dl,%dl
c01003a1:	75 ed                	jne    c0100390 <vfprintf+0x190>
            case 'x': buf_unsigned_int = va_args(data,unsigned int);
c01003a3:	8b 55 e0             	mov    -0x20(%ebp),%edx
c01003a6:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
c01003a9:	89 55 10             	mov    %edx,0x10(%ebp)
c01003ac:	e9 67 fe ff ff       	jmp    c0100218 <vfprintf+0x18>
c01003b1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        /* begin transform */
        buf = *format++;
        assert(buf != '\0');/* a fmt end with a single % means the input is wrong */
        switch(buf){
            case '%': put_onechar;break;
            case 'c': buf = va_args(data,char);put_onechar;break;
c01003b8:	8b 45 10             	mov    0x10(%ebp),%eax
c01003bb:	83 c7 01             	add    $0x1,%edi
c01003be:	8b 55 10             	mov    0x10(%ebp),%edx
c01003c1:	83 c0 04             	add    $0x4,%eax
c01003c4:	89 45 e0             	mov    %eax,-0x20(%ebp)
c01003c7:	0f be 02             	movsbl (%edx),%eax
c01003ca:	89 04 24             	mov    %eax,(%esp)
c01003cd:	ff d6                	call   *%esi
c01003cf:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c01003d2:	89 4d 10             	mov    %ecx,0x10(%ebp)
c01003d5:	e9 3e fe ff ff       	jmp    c0100218 <vfprintf+0x18>
c01003da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        }
        /* begin transform */
        buf = *format++;
        assert(buf != '\0');/* a fmt end with a single % means the input is wrong */
        switch(buf){
            case '%': put_onechar;break;
c01003e0:	83 c7 01             	add    $0x1,%edi
c01003e3:	c7 04 24 25 00 00 00 	movl   $0x25,(%esp)
c01003ea:	ff d6                	call   *%esi
c01003ec:	e9 27 fe ff ff       	jmp    c0100218 <vfprintf+0x18>
c01003f1:	90                   	nop
c01003f2:	90                   	nop
c01003f3:	90                   	nop
c01003f4:	90                   	nop
c01003f5:	90                   	nop
c01003f6:	90                   	nop
c01003f7:	90                   	nop
c01003f8:	90                   	nop
c01003f9:	90                   	nop
c01003fa:	90                   	nop
c01003fb:	90                   	nop
c01003fc:	90                   	nop
c01003fd:	90                   	nop
c01003fe:	90                   	nop
c01003ff:	90                   	nop

c0100400 <serial_printc>:
serial_idle(void) {
	return (in_byte(SERIAL_PORT + 5) & 0x20) != 0;
}

void
serial_printc(char ch) {
c0100400:	55                   	push   %ebp

// Read from I/O port
static inline uint8_t
in_byte(uint16_t port) {
	uint8_t data;
	asm volatile("in %1, %0" : "=a"(data) : "d"(port));
c0100401:	ba fd 03 00 00       	mov    $0x3fd,%edx
c0100406:	89 e5                	mov    %esp,%ebp
c0100408:	0f b6 4d 08          	movzbl 0x8(%ebp),%ecx
c010040c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0100410:	ec                   	in     (%dx),%al
	while (serial_idle() != TRUE);
c0100411:	a8 20                	test   $0x20,%al
c0100413:	74 fb                	je     c0100410 <serial_printc+0x10>
}

// Write to I/O port
static inline void
out_byte(uint16_t port, uint8_t data) {
	asm volatile("out %%al, %%dx" : : "a"(data), "d"(port));
c0100415:	ba f8 03 00 00       	mov    $0x3f8,%edx
c010041a:	89 c8                	mov    %ecx,%eax
c010041c:	ee                   	out    %al,(%dx)
	out_byte(SERIAL_PORT, ch);
}
c010041d:	5d                   	pop    %ebp
c010041e:	c3                   	ret    
c010041f:	90                   	nop

c0100420 <init_debug>:
#include "x86.h"

#define SERIAL_PORT  0x3F8

void
init_debug(void) {
c0100420:	55                   	push   %ebp
c0100421:	ba f9 03 00 00       	mov    $0x3f9,%edx
c0100426:	89 e5                	mov    %esp,%ebp
c0100428:	31 c0                	xor    %eax,%eax
c010042a:	ee                   	out    %al,(%dx)
c010042b:	b8 80 ff ff ff       	mov    $0xffffff80,%eax
c0100430:	b2 fb                	mov    $0xfb,%dl
c0100432:	ee                   	out    %al,(%dx)
c0100433:	b8 01 00 00 00       	mov    $0x1,%eax
c0100438:	b2 f8                	mov    $0xf8,%dl
c010043a:	ee                   	out    %al,(%dx)
c010043b:	31 c0                	xor    %eax,%eax
c010043d:	b2 f9                	mov    $0xf9,%dl
c010043f:	ee                   	out    %al,(%dx)
c0100440:	b8 03 00 00 00       	mov    $0x3,%eax
c0100445:	b2 fb                	mov    $0xfb,%dl
c0100447:	ee                   	out    %al,(%dx)
c0100448:	b8 c7 ff ff ff       	mov    $0xffffffc7,%eax
c010044d:	b2 fa                	mov    $0xfa,%dl
c010044f:	ee                   	out    %al,(%dx)
c0100450:	b8 0b 00 00 00       	mov    $0xb,%eax
c0100455:	b2 fc                	mov    $0xfc,%dl
c0100457:	ee                   	out    %al,(%dx)
	out_byte(SERIAL_PORT + 0, 0x01);
	out_byte(SERIAL_PORT + 1, 0x00);
	out_byte(SERIAL_PORT + 3, 0x03);
	out_byte(SERIAL_PORT + 2, 0xC7);
	out_byte(SERIAL_PORT + 4, 0x0B);
}
c0100458:	5d                   	pop    %ebp
c0100459:	c3                   	ret    
c010045a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0100460 <printk>:
}

int vfprintf(void (*)(char), const char *, void **);

int
printk(const char *fmt, ...) {
c0100460:	55                   	push   %ebp
c0100461:	89 e5                	mov    %esp,%ebp
c0100463:	83 ec 18             	sub    $0x18,%esp
	void **args = (void **)&fmt + 1;
	return vfprintf(serial_printc, fmt, args);
c0100466:	8d 45 0c             	lea    0xc(%ebp),%eax
c0100469:	89 44 24 08          	mov    %eax,0x8(%esp)
c010046d:	8b 45 08             	mov    0x8(%ebp),%eax
c0100470:	c7 04 24 00 04 10 c0 	movl   $0xc0100400,(%esp)
c0100477:	89 44 24 04          	mov    %eax,0x4(%esp)
c010047b:	e8 80 fd ff ff       	call   c0100200 <vfprintf>
}
c0100480:	c9                   	leave  
c0100481:	c3                   	ret    
c0100482:	90                   	nop
c0100483:	90                   	nop
c0100484:	90                   	nop
c0100485:	90                   	nop
c0100486:	90                   	nop
c0100487:	90                   	nop
c0100488:	90                   	nop
c0100489:	90                   	nop
c010048a:	90                   	nop
c010048b:	90                   	nop
c010048c:	90                   	nop
c010048d:	90                   	nop
c010048e:	90                   	nop
c010048f:	90                   	nop

c0100490 <init_kvm>:
PTE kptab[MEM_MAX / PG_SIZE] PG_ALIGN; // the kernel page tables
SegDesc gdt[NR_SEG];                   // the new GDT
TSS tss;                               // one TSS for all ring 3 processes

void
init_kvm(void) { // setup kernel memory mapping
c0100490:	55                   	push   %ebp
	uint32_t pa;
	PTE *ptab = (PTE*)va_to_pa(kptab);
c0100491:	ba 00 50 10 00       	mov    $0x105000,%edx
PTE kptab[MEM_MAX / PG_SIZE] PG_ALIGN; // the kernel page tables
SegDesc gdt[NR_SEG];                   // the new GDT
TSS tss;                               // one TSS for all ring 3 processes

void
init_kvm(void) { // setup kernel memory mapping
c0100496:	89 e5                	mov    %esp,%ebp
	uint32_t pa;
	PTE *ptab = (PTE*)va_to_pa(kptab);
	PDE *pdir = (PDE*)va_to_pa(kpdir);
	for (pa = 0; pa < MEM_MAX; pa += PG_SIZE) {
c0100498:	31 c0                	xor    %eax,%eax
PTE kptab[MEM_MAX / PG_SIZE] PG_ALIGN; // the kernel page tables
SegDesc gdt[NR_SEG];                   // the new GDT
TSS tss;                               // one TSS for all ring 3 processes

void
init_kvm(void) { // setup kernel memory mapping
c010049a:	83 ec 28             	sub    $0x28,%esp
c010049d:	8d 76 00             	lea    0x0(%esi),%esi
	uint32_t pa;
	PTE *ptab = (PTE*)va_to_pa(kptab);
	PDE *pdir = (PDE*)va_to_pa(kpdir);
	for (pa = 0; pa < MEM_MAX; pa += PG_SIZE) {
		*ptab = PTE_P | PTE_W | pa;
c01004a0:	89 c1                	mov    %eax,%ecx
void
init_kvm(void) { // setup kernel memory mapping
	uint32_t pa;
	PTE *ptab = (PTE*)va_to_pa(kptab);
	PDE *pdir = (PDE*)va_to_pa(kpdir);
	for (pa = 0; pa < MEM_MAX; pa += PG_SIZE) {
c01004a2:	05 00 10 00 00       	add    $0x1000,%eax
		*ptab = PTE_P | PTE_W | pa;
c01004a7:	83 c9 03             	or     $0x3,%ecx
c01004aa:	89 0a                	mov    %ecx,(%edx)
		ptab ++;
c01004ac:	83 c2 04             	add    $0x4,%edx
void
init_kvm(void) { // setup kernel memory mapping
	uint32_t pa;
	PTE *ptab = (PTE*)va_to_pa(kptab);
	PDE *pdir = (PDE*)va_to_pa(kpdir);
	for (pa = 0; pa < MEM_MAX; pa += PG_SIZE) {
c01004af:	3d 00 00 00 08       	cmp    $0x8000000,%eax
c01004b4:	75 ea                	jne    c01004a0 <init_kvm+0x10>
		*ptab = PTE_P | PTE_W | pa;
		ptab ++;
	}
	memset((void*)va_to_pa(pdir), 0, PG_SIZE);
c01004b6:	c7 44 24 08 00 10 00 	movl   $0x1000,0x8(%esp)
c01004bd:	00 
c01004be:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c01004c5:	00 
c01004c6:	c7 04 24 00 50 12 40 	movl   $0x40125000,(%esp)
c01004cd:	e8 5e fb ff ff       	call   c0100030 <memset>

void
init_kvm(void) { // setup kernel memory mapping
	uint32_t pa;
	PTE *ptab = (PTE*)va_to_pa(kptab);
	PDE *pdir = (PDE*)va_to_pa(kpdir);
c01004d2:	b9 00 50 12 00       	mov    $0x125000,%ecx
	for (pa = 0; pa < MEM_MAX; pa += PG_SIZE) {
		*ptab = PTE_P | PTE_W | pa;
		ptab ++;
	}
	memset((void*)va_to_pa(pdir), 0, PG_SIZE);
	for (pa = 0; pa < MEM_MAX; pa += PG_SIZE * NR_PTE) {
c01004d7:	31 d2                	xor    %edx,%edx
c01004d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
		*(pdir + KOFFSET / PG_SIZE / NR_PTE) = *pdir =
			PTE_P | PTE_W | va_to_pa(&kptab[pa / PG_SIZE]);
c01004e0:	89 d0                	mov    %edx,%eax
	for (pa = 0; pa < MEM_MAX; pa += PG_SIZE) {
		*ptab = PTE_P | PTE_W | pa;
		ptab ++;
	}
	memset((void*)va_to_pa(pdir), 0, PG_SIZE);
	for (pa = 0; pa < MEM_MAX; pa += PG_SIZE * NR_PTE) {
c01004e2:	81 c2 00 00 40 00    	add    $0x400000,%edx
		*(pdir + KOFFSET / PG_SIZE / NR_PTE) = *pdir =
			PTE_P | PTE_W | va_to_pa(&kptab[pa / PG_SIZE]);
c01004e8:	c1 e8 0c             	shr    $0xc,%eax
c01004eb:	8d 04 85 00 50 10 00 	lea    0x105000(,%eax,4),%eax
c01004f2:	83 c8 03             	or     $0x3,%eax
		*ptab = PTE_P | PTE_W | pa;
		ptab ++;
	}
	memset((void*)va_to_pa(pdir), 0, PG_SIZE);
	for (pa = 0; pa < MEM_MAX; pa += PG_SIZE * NR_PTE) {
		*(pdir + KOFFSET / PG_SIZE / NR_PTE) = *pdir =
c01004f5:	89 01                	mov    %eax,(%ecx)
c01004f7:	89 81 00 0c 00 00    	mov    %eax,0xc00(%ecx)
			PTE_P | PTE_W | va_to_pa(&kptab[pa / PG_SIZE]);
		pdir ++;
c01004fd:	83 c1 04             	add    $0x4,%ecx
	for (pa = 0; pa < MEM_MAX; pa += PG_SIZE) {
		*ptab = PTE_P | PTE_W | pa;
		ptab ++;
	}
	memset((void*)va_to_pa(pdir), 0, PG_SIZE);
	for (pa = 0; pa < MEM_MAX; pa += PG_SIZE * NR_PTE) {
c0100500:	81 fa 00 00 00 08    	cmp    $0x8000000,%edx
c0100506:	75 d8                	jne    c01004e0 <init_kvm+0x50>
}

// Write the value to %cr3 (PDBR)
static inline void
set_cr3(void *pdir) {
	asm volatile("movl %0, %%cr3" : : "r"(pdir));
c0100508:	b8 00 50 12 00       	mov    $0x125000,%eax
c010050d:	0f 22 d8             	mov    %eax,%cr3

// Fetch the value of %cr0
static inline uint32_t
get_cr0(void) {
	volatile uint32_t val;
	asm volatile("movl %%cr0, %0" : "=r"(val));
c0100510:	0f 20 c0             	mov    %cr0,%eax
c0100513:	89 45 f4             	mov    %eax,-0xc(%ebp)
	return val;
c0100516:	8b 45 f4             	mov    -0xc(%ebp),%eax
		*(pdir + KOFFSET / PG_SIZE / NR_PTE) = *pdir =
			PTE_P | PTE_W | va_to_pa(&kptab[pa / PG_SIZE]);
		pdir ++;
	}
	set_cr3((void*)va_to_pa(kpdir));  // set PDBR(CR3)
	set_cr0(get_cr0() | CR0_PG);      // enable paging
c0100519:	0d 00 00 00 80       	or     $0x80000000,%eax
}

// Write the value to %cr0
static inline void
set_cr0(uint32_t cr0) {
	asm volatile("movl %0, %%cr0" : : "r"(cr0));
c010051e:	0f 22 c0             	mov    %eax,%cr0
}
c0100521:	c9                   	leave  
c0100522:	c3                   	ret    
c0100523:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0100529:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0100530 <init_seg>:
init_seg() { // setup kernel segements
	gdt[SEG_KCODE] = SEG(STA_X | STA_R, 0,       0xffffffff, DPL_KERN);
	gdt[SEG_KDATA] = SEG(STA_W,         0,       0xffffffff, DPL_KERN);
	gdt[SEG_UCODE] = SEG(STA_X | STA_R, 0,       0xffffffff, DPL_USER);
	gdt[SEG_UDATA] = SEG(STA_W,         0,       0xffffffff, DPL_USER);
	gdt[SEG_TSS] = SEG16(STS_T32A,      &tss, sizeof(tss)-1, DPL_KERN);
c0100530:	b8 40 40 10 c0       	mov    $0xc0104040,%eax
c0100535:	66 a3 2a 40 10 c0    	mov    %ax,0xc010402a
c010053b:	89 c2                	mov    %eax,%edx
c010053d:	c1 e8 18             	shr    $0x18,%eax
c0100540:	a2 2f 40 10 c0       	mov    %al,0xc010402f
// Create and load a GDT descriptor
static inline void
set_gdt(SegDesc *gdt, uint32_t size) {
	volatile static uint16_t data[3];
	data[0] = size - 1;
	data[1] = (uint32_t)gdt;
c0100545:	b8 00 40 10 c0       	mov    $0xc0104000,%eax
	set_cr3((void*)va_to_pa(kpdir));  // set PDBR(CR3)
	set_cr0(get_cr0() | CR0_PG);      // enable paging
}

void
init_seg() { // setup kernel segements
c010054a:	55                   	push   %ebp
	gdt[SEG_KCODE] = SEG(STA_X | STA_R, 0,       0xffffffff, DPL_KERN);
	gdt[SEG_KDATA] = SEG(STA_W,         0,       0xffffffff, DPL_KERN);
	gdt[SEG_UCODE] = SEG(STA_X | STA_R, 0,       0xffffffff, DPL_USER);
	gdt[SEG_UDATA] = SEG(STA_W,         0,       0xffffffff, DPL_USER);
	gdt[SEG_TSS] = SEG16(STS_T32A,      &tss, sizeof(tss)-1, DPL_KERN);
c010054b:	c1 ea 10             	shr    $0x10,%edx
	set_cr3((void*)va_to_pa(kpdir));  // set PDBR(CR3)
	set_cr0(get_cr0() | CR0_PG);      // enable paging
}

void
init_seg() { // setup kernel segements
c010054e:	89 e5                	mov    %esp,%ebp

// Create and load a GDT descriptor
static inline void
set_gdt(SegDesc *gdt, uint32_t size) {
	volatile static uint16_t data[3];
	data[0] = size - 1;
c0100550:	66 c7 05 74 30 10 c0 	movw   $0x2f,0xc0103074
c0100557:	2f 00 
	data[1] = (uint32_t)gdt;
c0100559:	66 a3 76 30 10 c0    	mov    %ax,0xc0103076
	data[2] = (uint32_t)gdt >> 16;
c010055f:	c1 e8 10             	shr    $0x10,%eax
	gdt[SEG_KCODE] = SEG(STA_X | STA_R, 0,       0xffffffff, DPL_KERN);
	gdt[SEG_KDATA] = SEG(STA_W,         0,       0xffffffff, DPL_KERN);
	gdt[SEG_UCODE] = SEG(STA_X | STA_R, 0,       0xffffffff, DPL_USER);
	gdt[SEG_UDATA] = SEG(STA_W,         0,       0xffffffff, DPL_USER);
	gdt[SEG_TSS] = SEG16(STS_T32A,      &tss, sizeof(tss)-1, DPL_KERN);
c0100562:	88 15 2c 40 10 c0    	mov    %dl,0xc010402c
	set_cr0(get_cr0() | CR0_PG);      // enable paging
}

void
init_seg() { // setup kernel segements
	gdt[SEG_KCODE] = SEG(STA_X | STA_R, 0,       0xffffffff, DPL_KERN);
c0100568:	66 c7 05 08 40 10 c0 	movw   $0xffff,0xc0104008
c010056f:	ff ff 
c0100571:	66 c7 05 0a 40 10 c0 	movw   $0x0,0xc010400a
c0100578:	00 00 
c010057a:	c6 05 0c 40 10 c0 00 	movb   $0x0,0xc010400c
c0100581:	c6 05 0d 40 10 c0 9a 	movb   $0x9a,0xc010400d
c0100588:	c6 05 0e 40 10 c0 cf 	movb   $0xcf,0xc010400e
c010058f:	c6 05 0f 40 10 c0 00 	movb   $0x0,0xc010400f
	gdt[SEG_KDATA] = SEG(STA_W,         0,       0xffffffff, DPL_KERN);
c0100596:	66 c7 05 10 40 10 c0 	movw   $0xffff,0xc0104010
c010059d:	ff ff 
c010059f:	66 c7 05 12 40 10 c0 	movw   $0x0,0xc0104012
c01005a6:	00 00 
c01005a8:	c6 05 14 40 10 c0 00 	movb   $0x0,0xc0104014
c01005af:	c6 05 15 40 10 c0 92 	movb   $0x92,0xc0104015
c01005b6:	c6 05 16 40 10 c0 cf 	movb   $0xcf,0xc0104016
c01005bd:	c6 05 17 40 10 c0 00 	movb   $0x0,0xc0104017
	gdt[SEG_UCODE] = SEG(STA_X | STA_R, 0,       0xffffffff, DPL_USER);
c01005c4:	66 c7 05 18 40 10 c0 	movw   $0xffff,0xc0104018
c01005cb:	ff ff 
c01005cd:	66 c7 05 1a 40 10 c0 	movw   $0x0,0xc010401a
c01005d4:	00 00 
c01005d6:	c6 05 1c 40 10 c0 00 	movb   $0x0,0xc010401c
c01005dd:	c6 05 1d 40 10 c0 fa 	movb   $0xfa,0xc010401d
c01005e4:	c6 05 1e 40 10 c0 cf 	movb   $0xcf,0xc010401e
c01005eb:	c6 05 1f 40 10 c0 00 	movb   $0x0,0xc010401f
	gdt[SEG_UDATA] = SEG(STA_W,         0,       0xffffffff, DPL_USER);
c01005f2:	66 c7 05 20 40 10 c0 	movw   $0xffff,0xc0104020
c01005f9:	ff ff 
c01005fb:	66 c7 05 22 40 10 c0 	movw   $0x0,0xc0104022
c0100602:	00 00 
c0100604:	c6 05 24 40 10 c0 00 	movb   $0x0,0xc0104024
c010060b:	c6 05 25 40 10 c0 f2 	movb   $0xf2,0xc0104025
c0100612:	c6 05 26 40 10 c0 cf 	movb   $0xcf,0xc0104026
c0100619:	c6 05 27 40 10 c0 00 	movb   $0x0,0xc0104027
	gdt[SEG_TSS] = SEG16(STS_T32A,      &tss, sizeof(tss)-1, DPL_KERN);
c0100620:	66 c7 05 28 40 10 c0 	movw   $0x63,0xc0104028
c0100627:	63 00 
c0100629:	c6 05 2d 40 10 c0 89 	movb   $0x89,0xc010402d
c0100630:	c6 05 2e 40 10 c0 40 	movb   $0x40,0xc010402e
c0100637:	66 a3 78 30 10 c0    	mov    %ax,0xc0103078
	asm volatile("lgdt (%0)" : : "r"(data));
c010063d:	b8 74 30 10 c0       	mov    $0xc0103074,%eax
c0100642:	0f 01 10             	lgdtl  (%eax)
	set_gdt(gdt, sizeof(gdt));
}
c0100645:	5d                   	pop    %ebp
c0100646:	c3                   	ret    
c0100647:	90                   	nop
c0100648:	90                   	nop
c0100649:	90                   	nop
c010064a:	90                   	nop
c010064b:	90                   	nop
c010064c:	90                   	nop
c010064d:	90                   	nop
c010064e:	90                   	nop
c010064f:	90                   	nop

c0100650 <os_init>:
#include "x86.h"
#include "vm.h"
#include "irq.h"

void
os_init(void) {
c0100650:	55                   	push   %ebp
c0100651:	89 e5                	mov    %esp,%ebp
c0100653:	83 ec 18             	sub    $0x18,%esp
	init_seg();
c0100656:	e8 d5 fe ff ff       	call   c0100530 <init_seg>
	init_debug();
c010065b:	e8 c0 fd ff ff       	call   c0100420 <init_debug>
	init_idt();
c0100660:	e8 4b 00 00 00       	call   c01006b0 <init_idt>
	init_i8259();
c0100665:	e8 86 04 00 00       	call   c0100af0 <init_i8259>
	printk("The OS is now working!\n");
c010066a:	c7 04 24 7b 0c 10 c0 	movl   $0xc0100c7b,(%esp)
c0100671:	e8 ea fd ff ff       	call   c0100460 <printk>
typedef struct TrapFrame TrapFrame;

// Enable external interrupt
static inline void
sti(void) {
	asm volatile("sti");
c0100676:	fb                   	sti    
c0100677:	90                   	nop
}

// Put processor into idle until being interrupted
static inline void
wait_intr() {
	asm volatile("hlt");
c0100678:	f4                   	hlt    
c0100679:	eb fd                	jmp    c0100678 <os_init+0x28>
c010067b:	90                   	nop
c010067c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

c0100680 <entry>:
		wait_intr();
	}
}

void
entry(void) {
c0100680:	55                   	push   %ebp
c0100681:	89 e5                	mov    %esp,%ebp
c0100683:	83 ec 28             	sub    $0x28,%esp
	init_kvm();
c0100686:	e8 05 fe ff ff       	call   c0100490 <init_kvm>
	void(*volatile next)(void) = os_init;
c010068b:	c7 45 f4 50 06 10 c0 	movl   $0xc0100650,-0xc(%ebp)
	asm volatile("addl %0, %%esp" : : ""(KOFFSET));
c0100692:	81 c4 00 00 00 c0    	add    $0xc0000000,%esp
	next();
c0100698:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010069b:	ff d0                	call   *%eax
	panic("init code should never return");
c010069d:	c7 04 24 93 0c 10 c0 	movl   $0xc0100c93,(%esp)
c01006a4:	e8 37 fb ff ff       	call   c01001e0 <panic>
}
c01006a9:	c9                   	leave  
c01006aa:	c3                   	ret    
c01006ab:	90                   	nop
c01006ac:	90                   	nop
c01006ad:	90                   	nop
c01006ae:	90                   	nop
c01006af:	90                   	nop

c01006b0 <init_idt>:
#include "irq.h"

struct GateDesc idt[NR_IRQ];

void
init_idt(void) {
c01006b0:	55                   	push   %ebp
	int i;
	for (i = 0; i < NR_IRQ; i ++) {
c01006b1:	31 c0                	xor    %eax,%eax
#include "irq.h"

struct GateDesc idt[NR_IRQ];

void
init_idt(void) {
c01006b3:	89 e5                	mov    %esp,%ebp
c01006b5:	ba 00 60 12 c0       	mov    $0xc0126000,%edx
c01006ba:	56                   	push   %esi
c01006bb:	53                   	push   %ebx
	int i;
	for (i = 0; i < NR_IRQ; i ++) {
c01006bc:	bb ca 0b 10 c0       	mov    $0xc0100bca,%ebx
c01006c1:	89 de                	mov    %ebx,%esi
c01006c3:	c1 eb 10             	shr    $0x10,%ebx
c01006c6:	66 90                	xchg   %ax,%ax
		idt[i] = GATE(STS_TG32, KSEL(SEG_KCODE), irqall, DPL_KERN);
c01006c8:	66 89 34 c5 00 60 12 	mov    %si,-0x3feda000(,%eax,8)
c01006cf:	c0 
c01006d0:	b9 00 60 12 c0       	mov    $0xc0126000,%ecx
c01006d5:	66 c7 44 c2 02 08 00 	movw   $0x8,0x2(%edx,%eax,8)
c01006dc:	c6 44 c2 04 00       	movb   $0x0,0x4(%edx,%eax,8)
c01006e1:	c6 44 c2 05 8f       	movb   $0x8f,0x5(%edx,%eax,8)
c01006e6:	66 89 5c c2 06       	mov    %bx,0x6(%edx,%eax,8)
struct GateDesc idt[NR_IRQ];

void
init_idt(void) {
	int i;
	for (i = 0; i < NR_IRQ; i ++) {
c01006eb:	83 c0 01             	add    $0x1,%eax
c01006ee:	3d 00 01 00 00       	cmp    $0x100,%eax
c01006f3:	75 d3                	jne    c01006c8 <init_idt+0x18>
		idt[i] = GATE(STS_TG32, KSEL(SEG_KCODE), irqall, DPL_KERN);
	}

	// exceptions
	idt[0]    = GATE(STS_TG32, KSEL(SEG_KCODE), vec0,   DPL_KERN);
c01006f5:	b8 58 0b 10 c0       	mov    $0xc0100b58,%eax
c01006fa:	66 a3 00 60 12 c0    	mov    %ax,0xc0126000
c0100700:	c1 e8 10             	shr    $0x10,%eax
c0100703:	66 a3 06 60 12 c0    	mov    %ax,0xc0126006
	idt[1]    = GATE(STS_TG32, KSEL(SEG_KCODE), vec1,   DPL_KERN);
c0100709:	b8 5e 0b 10 c0       	mov    $0xc0100b5e,%eax
c010070e:	66 a3 08 60 12 c0    	mov    %ax,0xc0126008
c0100714:	c1 e8 10             	shr    $0x10,%eax
c0100717:	66 a3 0e 60 12 c0    	mov    %ax,0xc012600e
	idt[2]    = GATE(STS_TG32, KSEL(SEG_KCODE), vec2,   DPL_KERN);
c010071d:	b8 64 0b 10 c0       	mov    $0xc0100b64,%eax
c0100722:	66 a3 10 60 12 c0    	mov    %ax,0xc0126010
c0100728:	c1 e8 10             	shr    $0x10,%eax
c010072b:	66 a3 16 60 12 c0    	mov    %ax,0xc0126016
	idt[3]    = GATE(STS_TG32, KSEL(SEG_KCODE), vec3,   DPL_KERN);
c0100731:	b8 6a 0b 10 c0       	mov    $0xc0100b6a,%eax
c0100736:	66 a3 18 60 12 c0    	mov    %ax,0xc0126018
c010073c:	c1 e8 10             	shr    $0x10,%eax
c010073f:	66 a3 1e 60 12 c0    	mov    %ax,0xc012601e
	idt[4]    = GATE(STS_TG32, KSEL(SEG_KCODE), vec4,   DPL_KERN);
c0100745:	b8 70 0b 10 c0       	mov    $0xc0100b70,%eax
c010074a:	66 a3 20 60 12 c0    	mov    %ax,0xc0126020
c0100750:	c1 e8 10             	shr    $0x10,%eax
c0100753:	66 a3 26 60 12 c0    	mov    %ax,0xc0126026
	idt[5]    = GATE(STS_TG32, KSEL(SEG_KCODE), vec5,   DPL_KERN);
c0100759:	b8 76 0b 10 c0       	mov    $0xc0100b76,%eax
c010075e:	66 a3 28 60 12 c0    	mov    %ax,0xc0126028
c0100764:	c1 e8 10             	shr    $0x10,%eax
c0100767:	66 a3 2e 60 12 c0    	mov    %ax,0xc012602e
	idt[6]    = GATE(STS_TG32, KSEL(SEG_KCODE), vec6,   DPL_KERN);
c010076d:	b8 7c 0b 10 c0       	mov    $0xc0100b7c,%eax
c0100772:	66 a3 30 60 12 c0    	mov    %ax,0xc0126030
c0100778:	c1 e8 10             	shr    $0x10,%eax
	for (i = 0; i < NR_IRQ; i ++) {
		idt[i] = GATE(STS_TG32, KSEL(SEG_KCODE), irqall, DPL_KERN);
	}

	// exceptions
	idt[0]    = GATE(STS_TG32, KSEL(SEG_KCODE), vec0,   DPL_KERN);
c010077b:	66 c7 05 02 60 12 c0 	movw   $0x8,0xc0126002
c0100782:	08 00 
c0100784:	c6 05 04 60 12 c0 00 	movb   $0x0,0xc0126004
c010078b:	c6 05 05 60 12 c0 8f 	movb   $0x8f,0xc0126005
	idt[1]    = GATE(STS_TG32, KSEL(SEG_KCODE), vec1,   DPL_KERN);
c0100792:	66 c7 05 0a 60 12 c0 	movw   $0x8,0xc012600a
c0100799:	08 00 
c010079b:	c6 05 0c 60 12 c0 00 	movb   $0x0,0xc012600c
c01007a2:	c6 05 0d 60 12 c0 8f 	movb   $0x8f,0xc012600d
	idt[2]    = GATE(STS_TG32, KSEL(SEG_KCODE), vec2,   DPL_KERN);
c01007a9:	66 c7 05 12 60 12 c0 	movw   $0x8,0xc0126012
c01007b0:	08 00 
c01007b2:	c6 05 14 60 12 c0 00 	movb   $0x0,0xc0126014
c01007b9:	c6 05 15 60 12 c0 8f 	movb   $0x8f,0xc0126015
	idt[3]    = GATE(STS_TG32, KSEL(SEG_KCODE), vec3,   DPL_KERN);
c01007c0:	66 c7 05 1a 60 12 c0 	movw   $0x8,0xc012601a
c01007c7:	08 00 
c01007c9:	c6 05 1c 60 12 c0 00 	movb   $0x0,0xc012601c
c01007d0:	c6 05 1d 60 12 c0 8f 	movb   $0x8f,0xc012601d
	idt[4]    = GATE(STS_TG32, KSEL(SEG_KCODE), vec4,   DPL_KERN);
c01007d7:	66 c7 05 22 60 12 c0 	movw   $0x8,0xc0126022
c01007de:	08 00 
c01007e0:	c6 05 24 60 12 c0 00 	movb   $0x0,0xc0126024
c01007e7:	c6 05 25 60 12 c0 8f 	movb   $0x8f,0xc0126025
	idt[5]    = GATE(STS_TG32, KSEL(SEG_KCODE), vec5,   DPL_KERN);
c01007ee:	66 c7 05 2a 60 12 c0 	movw   $0x8,0xc012602a
c01007f5:	08 00 
c01007f7:	c6 05 2c 60 12 c0 00 	movb   $0x0,0xc012602c
c01007fe:	c6 05 2d 60 12 c0 8f 	movb   $0x8f,0xc012602d
	idt[6]    = GATE(STS_TG32, KSEL(SEG_KCODE), vec6,   DPL_KERN);
c0100805:	66 c7 05 32 60 12 c0 	movw   $0x8,0xc0126032
c010080c:	08 00 
c010080e:	c6 05 34 60 12 c0 00 	movb   $0x0,0xc0126034
c0100815:	c6 05 35 60 12 c0 8f 	movb   $0x8f,0xc0126035
c010081c:	66 a3 36 60 12 c0    	mov    %ax,0xc0126036
	idt[7]    = GATE(STS_TG32, KSEL(SEG_KCODE), vec7,   DPL_KERN);
c0100822:	b8 82 0b 10 c0       	mov    $0xc0100b82,%eax
c0100827:	66 a3 38 60 12 c0    	mov    %ax,0xc0126038
c010082d:	c1 e8 10             	shr    $0x10,%eax
c0100830:	66 a3 3e 60 12 c0    	mov    %ax,0xc012603e
	idt[8]    = GATE(STS_TG32, KSEL(SEG_KCODE), vec8,   DPL_KERN);
c0100836:	b8 88 0b 10 c0       	mov    $0xc0100b88,%eax
c010083b:	66 a3 40 60 12 c0    	mov    %ax,0xc0126040
c0100841:	c1 e8 10             	shr    $0x10,%eax
c0100844:	66 a3 46 60 12 c0    	mov    %ax,0xc0126046
	idt[9]    = GATE(STS_TG32, KSEL(SEG_KCODE), vec9,   DPL_KERN);
c010084a:	b8 8c 0b 10 c0       	mov    $0xc0100b8c,%eax
c010084f:	66 a3 48 60 12 c0    	mov    %ax,0xc0126048
c0100855:	c1 e8 10             	shr    $0x10,%eax
c0100858:	66 a3 4e 60 12 c0    	mov    %ax,0xc012604e
	idt[10]   = GATE(STS_TG32, KSEL(SEG_KCODE), vec10,  DPL_KERN);
c010085e:	b8 92 0b 10 c0       	mov    $0xc0100b92,%eax
c0100863:	66 a3 50 60 12 c0    	mov    %ax,0xc0126050
c0100869:	c1 e8 10             	shr    $0x10,%eax
c010086c:	66 a3 56 60 12 c0    	mov    %ax,0xc0126056
	idt[11]   = GATE(STS_TG32, KSEL(SEG_KCODE), vec11,  DPL_KERN);
c0100872:	b8 96 0b 10 c0       	mov    $0xc0100b96,%eax
c0100877:	66 a3 58 60 12 c0    	mov    %ax,0xc0126058
c010087d:	c1 e8 10             	shr    $0x10,%eax
c0100880:	66 a3 5e 60 12 c0    	mov    %ax,0xc012605e
	idt[12]   = GATE(STS_TG32, KSEL(SEG_KCODE), vec12,  DPL_KERN);
c0100886:	b8 9a 0b 10 c0       	mov    $0xc0100b9a,%eax
c010088b:	66 a3 60 60 12 c0    	mov    %ax,0xc0126060
c0100891:	c1 e8 10             	shr    $0x10,%eax
c0100894:	66 a3 66 60 12 c0    	mov    %ax,0xc0126066
	idt[13]   = GATE(STS_TG32, KSEL(SEG_KCODE), vec13,  DPL_KERN);
c010089a:	b8 9e 0b 10 c0       	mov    $0xc0100b9e,%eax
c010089f:	66 a3 68 60 12 c0    	mov    %ax,0xc0126068
c01008a5:	c1 e8 10             	shr    $0x10,%eax
	idt[2]    = GATE(STS_TG32, KSEL(SEG_KCODE), vec2,   DPL_KERN);
	idt[3]    = GATE(STS_TG32, KSEL(SEG_KCODE), vec3,   DPL_KERN);
	idt[4]    = GATE(STS_TG32, KSEL(SEG_KCODE), vec4,   DPL_KERN);
	idt[5]    = GATE(STS_TG32, KSEL(SEG_KCODE), vec5,   DPL_KERN);
	idt[6]    = GATE(STS_TG32, KSEL(SEG_KCODE), vec6,   DPL_KERN);
	idt[7]    = GATE(STS_TG32, KSEL(SEG_KCODE), vec7,   DPL_KERN);
c01008a8:	66 c7 05 3a 60 12 c0 	movw   $0x8,0xc012603a
c01008af:	08 00 
c01008b1:	c6 05 3c 60 12 c0 00 	movb   $0x0,0xc012603c
c01008b8:	c6 05 3d 60 12 c0 8f 	movb   $0x8f,0xc012603d
	idt[8]    = GATE(STS_TG32, KSEL(SEG_KCODE), vec8,   DPL_KERN);
c01008bf:	66 c7 05 42 60 12 c0 	movw   $0x8,0xc0126042
c01008c6:	08 00 
c01008c8:	c6 05 44 60 12 c0 00 	movb   $0x0,0xc0126044
c01008cf:	c6 05 45 60 12 c0 8f 	movb   $0x8f,0xc0126045
	idt[9]    = GATE(STS_TG32, KSEL(SEG_KCODE), vec9,   DPL_KERN);
c01008d6:	66 c7 05 4a 60 12 c0 	movw   $0x8,0xc012604a
c01008dd:	08 00 
c01008df:	c6 05 4c 60 12 c0 00 	movb   $0x0,0xc012604c
c01008e6:	c6 05 4d 60 12 c0 8f 	movb   $0x8f,0xc012604d
	idt[10]   = GATE(STS_TG32, KSEL(SEG_KCODE), vec10,  DPL_KERN);
c01008ed:	66 c7 05 52 60 12 c0 	movw   $0x8,0xc0126052
c01008f4:	08 00 
c01008f6:	c6 05 54 60 12 c0 00 	movb   $0x0,0xc0126054
c01008fd:	c6 05 55 60 12 c0 8f 	movb   $0x8f,0xc0126055
	idt[11]   = GATE(STS_TG32, KSEL(SEG_KCODE), vec11,  DPL_KERN);
c0100904:	66 c7 05 5a 60 12 c0 	movw   $0x8,0xc012605a
c010090b:	08 00 
c010090d:	c6 05 5c 60 12 c0 00 	movb   $0x0,0xc012605c
c0100914:	c6 05 5d 60 12 c0 8f 	movb   $0x8f,0xc012605d
	idt[12]   = GATE(STS_TG32, KSEL(SEG_KCODE), vec12,  DPL_KERN);
c010091b:	66 c7 05 62 60 12 c0 	movw   $0x8,0xc0126062
c0100922:	08 00 
c0100924:	c6 05 64 60 12 c0 00 	movb   $0x0,0xc0126064
c010092b:	c6 05 65 60 12 c0 8f 	movb   $0x8f,0xc0126065
	idt[13]   = GATE(STS_TG32, KSEL(SEG_KCODE), vec13,  DPL_KERN);
c0100932:	66 c7 05 6a 60 12 c0 	movw   $0x8,0xc012606a
c0100939:	08 00 
c010093b:	c6 05 6c 60 12 c0 00 	movb   $0x0,0xc012606c
c0100942:	66 a3 6e 60 12 c0    	mov    %ax,0xc012606e
	idt[14]   = GATE(STS_TG32, KSEL(SEG_KCODE), vec14,  DPL_KERN);
c0100948:	b8 a2 0b 10 c0       	mov    $0xc0100ba2,%eax
c010094d:	66 a3 70 60 12 c0    	mov    %ax,0xc0126070
c0100953:	c1 e8 10             	shr    $0x10,%eax
c0100956:	66 a3 76 60 12 c0    	mov    %ax,0xc0126076

	// interrupts
	idt[32]   = GATE(STS_IG32, KSEL(SEG_KCODE), irq0,   DPL_KERN);
c010095c:	b8 af 0b 10 c0       	mov    $0xc0100baf,%eax
c0100961:	66 a3 00 61 12 c0    	mov    %ax,0xc0126100
c0100967:	c1 e8 10             	shr    $0x10,%eax
c010096a:	66 a3 06 61 12 c0    	mov    %ax,0xc0126106
	idt[33]   = GATE(STS_IG32, KSEL(SEG_KCODE), irq1,   DPL_KERN);
c0100970:	b8 b8 0b 10 c0       	mov    $0xc0100bb8,%eax
c0100975:	66 a3 08 61 12 c0    	mov    %ax,0xc0126108
c010097b:	c1 e8 10             	shr    $0x10,%eax
c010097e:	66 a3 0e 61 12 c0    	mov    %ax,0xc012610e
	idt[46]   = GATE(STS_IG32, KSEL(SEG_KCODE), irq14,  DPL_KERN);
c0100984:	b8 c1 0b 10 c0       	mov    $0xc0100bc1,%eax
c0100989:	66 a3 70 61 12 c0    	mov    %ax,0xc0126170
c010098f:	c1 e8 10             	shr    $0x10,%eax
c0100992:	66 a3 76 61 12 c0    	mov    %ax,0xc0126176

	// system call
	idt[0x80] = GATE(STS_TG32, KSEL(SEG_KCODE), vecsys, DPL_USER);
c0100998:	b8 a6 0b 10 c0       	mov    $0xc0100ba6,%eax

// Create and load a IDT descriptor
static inline void
set_idt(GateDesc *idt, uint32_t size) {
	volatile static uint16_t data[3];
	data[0] = size - 1;
c010099d:	66 c7 05 7c 30 10 c0 	movw   $0x7ff,0xc010307c
c01009a4:	ff 07 
c01009a6:	66 a3 00 64 12 c0    	mov    %ax,0xc0126400
c01009ac:	c1 e8 10             	shr    $0x10,%eax
	data[1] = (uint32_t)idt;
c01009af:	66 89 0d 7e 30 10 c0 	mov    %cx,0xc010307e
	data[2] = (uint32_t)idt >> 16;
c01009b6:	c1 e9 10             	shr    $0x10,%ecx
c01009b9:	66 a3 06 64 12 c0    	mov    %ax,0xc0126406
	asm volatile("lidt (%0)" : : "r"(data));
c01009bf:	b8 7c 30 10 c0       	mov    $0xc010307c,%eax
static inline void
set_idt(GateDesc *idt, uint32_t size) {
	volatile static uint16_t data[3];
	data[0] = size - 1;
	data[1] = (uint32_t)idt;
	data[2] = (uint32_t)idt >> 16;
c01009c4:	66 89 0d 80 30 10 c0 	mov    %cx,0xc0103080
	idt[8]    = GATE(STS_TG32, KSEL(SEG_KCODE), vec8,   DPL_KERN);
	idt[9]    = GATE(STS_TG32, KSEL(SEG_KCODE), vec9,   DPL_KERN);
	idt[10]   = GATE(STS_TG32, KSEL(SEG_KCODE), vec10,  DPL_KERN);
	idt[11]   = GATE(STS_TG32, KSEL(SEG_KCODE), vec11,  DPL_KERN);
	idt[12]   = GATE(STS_TG32, KSEL(SEG_KCODE), vec12,  DPL_KERN);
	idt[13]   = GATE(STS_TG32, KSEL(SEG_KCODE), vec13,  DPL_KERN);
c01009cb:	c6 05 6d 60 12 c0 8f 	movb   $0x8f,0xc012606d
	asm volatile("lidt (%0)" : : "r"(data));
c01009d2:	0f 01 18             	lidtl  (%eax)
	idt[14]   = GATE(STS_TG32, KSEL(SEG_KCODE), vec14,  DPL_KERN);
c01009d5:	66 c7 05 72 60 12 c0 	movw   $0x8,0xc0126072
c01009dc:	08 00 

	// system call
	idt[0x80] = GATE(STS_TG32, KSEL(SEG_KCODE), vecsys, DPL_USER);

	set_idt(idt, sizeof(idt));
}
c01009de:	5b                   	pop    %ebx
	idt[9]    = GATE(STS_TG32, KSEL(SEG_KCODE), vec9,   DPL_KERN);
	idt[10]   = GATE(STS_TG32, KSEL(SEG_KCODE), vec10,  DPL_KERN);
	idt[11]   = GATE(STS_TG32, KSEL(SEG_KCODE), vec11,  DPL_KERN);
	idt[12]   = GATE(STS_TG32, KSEL(SEG_KCODE), vec12,  DPL_KERN);
	idt[13]   = GATE(STS_TG32, KSEL(SEG_KCODE), vec13,  DPL_KERN);
	idt[14]   = GATE(STS_TG32, KSEL(SEG_KCODE), vec14,  DPL_KERN);
c01009df:	c6 05 74 60 12 c0 00 	movb   $0x0,0xc0126074

	// system call
	idt[0x80] = GATE(STS_TG32, KSEL(SEG_KCODE), vecsys, DPL_USER);

	set_idt(idt, sizeof(idt));
}
c01009e6:	5e                   	pop    %esi
	idt[9]    = GATE(STS_TG32, KSEL(SEG_KCODE), vec9,   DPL_KERN);
	idt[10]   = GATE(STS_TG32, KSEL(SEG_KCODE), vec10,  DPL_KERN);
	idt[11]   = GATE(STS_TG32, KSEL(SEG_KCODE), vec11,  DPL_KERN);
	idt[12]   = GATE(STS_TG32, KSEL(SEG_KCODE), vec12,  DPL_KERN);
	idt[13]   = GATE(STS_TG32, KSEL(SEG_KCODE), vec13,  DPL_KERN);
	idt[14]   = GATE(STS_TG32, KSEL(SEG_KCODE), vec14,  DPL_KERN);
c01009e7:	c6 05 75 60 12 c0 8f 	movb   $0x8f,0xc0126075

	// interrupts
	idt[32]   = GATE(STS_IG32, KSEL(SEG_KCODE), irq0,   DPL_KERN);
c01009ee:	66 c7 05 02 61 12 c0 	movw   $0x8,0xc0126102
c01009f5:	08 00 
c01009f7:	c6 05 04 61 12 c0 00 	movb   $0x0,0xc0126104
c01009fe:	c6 05 05 61 12 c0 8e 	movb   $0x8e,0xc0126105
	idt[33]   = GATE(STS_IG32, KSEL(SEG_KCODE), irq1,   DPL_KERN);
c0100a05:	66 c7 05 0a 61 12 c0 	movw   $0x8,0xc012610a
c0100a0c:	08 00 
c0100a0e:	c6 05 0c 61 12 c0 00 	movb   $0x0,0xc012610c
c0100a15:	c6 05 0d 61 12 c0 8e 	movb   $0x8e,0xc012610d
	idt[46]   = GATE(STS_IG32, KSEL(SEG_KCODE), irq14,  DPL_KERN);
c0100a1c:	66 c7 05 72 61 12 c0 	movw   $0x8,0xc0126172
c0100a23:	08 00 
c0100a25:	c6 05 74 61 12 c0 00 	movb   $0x0,0xc0126174
c0100a2c:	c6 05 75 61 12 c0 8e 	movb   $0x8e,0xc0126175

	// system call
	idt[0x80] = GATE(STS_TG32, KSEL(SEG_KCODE), vecsys, DPL_USER);
c0100a33:	66 c7 05 02 64 12 c0 	movw   $0x8,0xc0126402
c0100a3a:	08 00 
c0100a3c:	c6 05 04 64 12 c0 00 	movb   $0x0,0xc0126404
c0100a43:	c6 05 05 64 12 c0 ef 	movb   $0xef,0xc0126405

	set_idt(idt, sizeof(idt));
}
c0100a4a:	5d                   	pop    %ebp
c0100a4b:	c3                   	ret    
c0100a4c:	90                   	nop
c0100a4d:	90                   	nop
c0100a4e:	90                   	nop
c0100a4f:	90                   	nop

c0100a50 <irq_handle>:
#include "x86.h"
#include "kernel.h"

void irq_handle(TrapFrame *tf) {
c0100a50:	55                   	push   %ebp
c0100a51:	89 e5                	mov    %esp,%ebp
c0100a53:	83 ec 18             	sub    $0x18,%esp
c0100a56:	89 5d f8             	mov    %ebx,-0x8(%ebp)
c0100a59:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0100a5c:	89 75 fc             	mov    %esi,-0x4(%ebp)
	int irq = tf->irq;
c0100a5f:	8b 73 30             	mov    0x30(%ebx),%esi
	assert(irq >= 0);
c0100a62:	85 f6                	test   %esi,%esi
c0100a64:	78 12                	js     c0100a78 <irq_handle+0x28>

	if (irq < 1000) {
c0100a66:	81 fe e7 03 00 00    	cmp    $0x3e7,%esi
c0100a6c:	7e 1e                	jle    c0100a8c <irq_handle+0x3c>
		printk(" location  %d:%x, esp %x\n", tf->cs, tf->eip, tf);
		panic("unexpected exception");
	} else if (irq >= 1000) {
		// external interrupt
	}
}
c0100a6e:	8b 5d f8             	mov    -0x8(%ebp),%ebx
c0100a71:	8b 75 fc             	mov    -0x4(%ebp),%esi
c0100a74:	89 ec                	mov    %ebp,%esp
c0100a76:	5d                   	pop    %ebp
c0100a77:	c3                   	ret    
#include "x86.h"
#include "kernel.h"

void irq_handle(TrapFrame *tf) {
	int irq = tf->irq;
	assert(irq >= 0);
c0100a78:	c7 44 24 04 06 00 00 	movl   $0x6,0x4(%esp)
c0100a7f:	00 
c0100a80:	c7 04 24 b1 0c 10 c0 	movl   $0xc0100cb1,(%esp)
c0100a87:	e8 24 f7 ff ff       	call   c01001b0 <abort>
}

// Disable external interrupt
static inline void
cli(void) {
	asm volatile("cli");
c0100a8c:	fa                   	cli    

	if (irq < 1000) {
		// exception
		cli();
		printk("Unexpected exception #%d\n", irq);
c0100a8d:	89 74 24 04          	mov    %esi,0x4(%esp)
c0100a91:	c7 04 24 cd 0c 10 c0 	movl   $0xc0100ccd,(%esp)
c0100a98:	e8 c3 f9 ff ff       	call   c0100460 <printk>
		printk(" errorcode %x\n", tf->err);
c0100a9d:	8b 43 34             	mov    0x34(%ebx),%eax
c0100aa0:	c7 04 24 e7 0c 10 c0 	movl   $0xc0100ce7,(%esp)
c0100aa7:	89 44 24 04          	mov    %eax,0x4(%esp)
c0100aab:	e8 b0 f9 ff ff       	call   c0100460 <printk>
		printk(" location  %d:%x, esp %x\n", tf->cs, tf->eip, tf);
c0100ab0:	89 5c 24 0c          	mov    %ebx,0xc(%esp)
c0100ab4:	8b 43 38             	mov    0x38(%ebx),%eax
c0100ab7:	89 44 24 08          	mov    %eax,0x8(%esp)
c0100abb:	8b 43 3c             	mov    0x3c(%ebx),%eax
c0100abe:	c7 04 24 f6 0c 10 c0 	movl   $0xc0100cf6,(%esp)
c0100ac5:	89 44 24 04          	mov    %eax,0x4(%esp)
c0100ac9:	e8 92 f9 ff ff       	call   c0100460 <printk>
		panic("unexpected exception");
	} else if (irq >= 1000) {
		// external interrupt
	}
}
c0100ace:	8b 5d f8             	mov    -0x8(%ebp),%ebx
		// exception
		cli();
		printk("Unexpected exception #%d\n", irq);
		printk(" errorcode %x\n", tf->err);
		printk(" location  %d:%x, esp %x\n", tf->cs, tf->eip, tf);
		panic("unexpected exception");
c0100ad1:	c7 45 08 10 0d 10 c0 	movl   $0xc0100d10,0x8(%ebp)
	} else if (irq >= 1000) {
		// external interrupt
	}
}
c0100ad8:	8b 75 fc             	mov    -0x4(%ebp),%esi
c0100adb:	89 ec                	mov    %ebp,%esp
c0100add:	5d                   	pop    %ebp
		// exception
		cli();
		printk("Unexpected exception #%d\n", irq);
		printk(" errorcode %x\n", tf->err);
		printk(" location  %d:%x, esp %x\n", tf->cs, tf->eip, tf);
		panic("unexpected exception");
c0100ade:	e9 fd f6 ff ff       	jmp    c01001e0 <panic>
c0100ae3:	90                   	nop
c0100ae4:	90                   	nop
c0100ae5:	90                   	nop
c0100ae6:	90                   	nop
c0100ae7:	90                   	nop
c0100ae8:	90                   	nop
c0100ae9:	90                   	nop
c0100aea:	90                   	nop
c0100aeb:	90                   	nop
c0100aec:	90                   	nop
c0100aed:	90                   	nop
c0100aee:	90                   	nop
c0100aef:	90                   	nop

c0100af0 <init_i8259>:
#include "x86.h"

#define PORT_PIC_MS    0x20
#define PORT_PIC_SL    0xA0

void init_i8259(void) {
c0100af0:	55                   	push   %ebp
}

// Write to I/O port
static inline void
out_byte(uint16_t port, uint8_t data) {
	asm volatile("out %%al, %%dx" : : "a"(data), "d"(port));
c0100af1:	ba 21 00 00 00       	mov    $0x21,%edx
c0100af6:	89 e5                	mov    %esp,%ebp
c0100af8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0100afd:	ee                   	out    %al,(%dx)
c0100afe:	b2 a1                	mov    $0xa1,%dl
c0100b00:	ee                   	out    %al,(%dx)
c0100b01:	b8 11 00 00 00       	mov    $0x11,%eax
c0100b06:	b2 20                	mov    $0x20,%dl
c0100b08:	ee                   	out    %al,(%dx)
c0100b09:	b8 20 00 00 00       	mov    $0x20,%eax
c0100b0e:	b2 21                	mov    $0x21,%dl
c0100b10:	ee                   	out    %al,(%dx)
c0100b11:	b8 04 00 00 00       	mov    $0x4,%eax
c0100b16:	ee                   	out    %al,(%dx)
c0100b17:	b8 03 00 00 00       	mov    $0x3,%eax
c0100b1c:	ee                   	out    %al,(%dx)
c0100b1d:	b8 11 00 00 00       	mov    $0x11,%eax
c0100b22:	b2 a0                	mov    $0xa0,%dl
c0100b24:	ee                   	out    %al,(%dx)
c0100b25:	b8 28 00 00 00       	mov    $0x28,%eax
c0100b2a:	b2 a1                	mov    $0xa1,%dl
c0100b2c:	ee                   	out    %al,(%dx)
c0100b2d:	b8 02 00 00 00       	mov    $0x2,%eax
c0100b32:	ee                   	out    %al,(%dx)
c0100b33:	b8 03 00 00 00       	mov    $0x3,%eax
c0100b38:	ee                   	out    %al,(%dx)
c0100b39:	b8 68 00 00 00       	mov    $0x68,%eax
c0100b3e:	b2 20                	mov    $0x20,%dl
c0100b40:	ee                   	out    %al,(%dx)
c0100b41:	b8 0a 00 00 00       	mov    $0xa,%eax
c0100b46:	ee                   	out    %al,(%dx)
c0100b47:	b8 68 00 00 00       	mov    $0x68,%eax
c0100b4c:	b2 a0                	mov    $0xa0,%dl
c0100b4e:	ee                   	out    %al,(%dx)
c0100b4f:	b8 0a 00 00 00       	mov    $0xa,%eax
c0100b54:	ee                   	out    %al,(%dx)

	out_byte(PORT_PIC_MS    , 0x68);
	out_byte(PORT_PIC_MS    , 0x0A);
	out_byte(PORT_PIC_SL    , 0x68);
	out_byte(PORT_PIC_SL    , 0x0A);
}
c0100b55:	5d                   	pop    %ebp
c0100b56:	c3                   	ret    
c0100b57:	90                   	nop

c0100b58 <vec0>:
c0100b58:	6a 00                	push   $0x0
c0100b5a:	6a 00                	push   $0x0
c0100b5c:	eb 72                	jmp    c0100bd0 <trap>

c0100b5e <vec1>:
c0100b5e:	6a 00                	push   $0x0
c0100b60:	6a 01                	push   $0x1
c0100b62:	eb 6c                	jmp    c0100bd0 <trap>

c0100b64 <vec2>:
c0100b64:	6a 00                	push   $0x0
c0100b66:	6a 02                	push   $0x2
c0100b68:	eb 66                	jmp    c0100bd0 <trap>

c0100b6a <vec3>:
c0100b6a:	6a 00                	push   $0x0
c0100b6c:	6a 03                	push   $0x3
c0100b6e:	eb 60                	jmp    c0100bd0 <trap>

c0100b70 <vec4>:
c0100b70:	6a 00                	push   $0x0
c0100b72:	6a 04                	push   $0x4
c0100b74:	eb 5a                	jmp    c0100bd0 <trap>

c0100b76 <vec5>:
c0100b76:	6a 00                	push   $0x0
c0100b78:	6a 05                	push   $0x5
c0100b7a:	eb 54                	jmp    c0100bd0 <trap>

c0100b7c <vec6>:
c0100b7c:	6a 00                	push   $0x0
c0100b7e:	6a 06                	push   $0x6
c0100b80:	eb 4e                	jmp    c0100bd0 <trap>

c0100b82 <vec7>:
c0100b82:	6a 00                	push   $0x0
c0100b84:	6a 07                	push   $0x7
c0100b86:	eb 48                	jmp    c0100bd0 <trap>

c0100b88 <vec8>:
c0100b88:	6a 08                	push   $0x8
c0100b8a:	eb 44                	jmp    c0100bd0 <trap>

c0100b8c <vec9>:
c0100b8c:	6a 00                	push   $0x0
c0100b8e:	6a 09                	push   $0x9
c0100b90:	eb 3e                	jmp    c0100bd0 <trap>

c0100b92 <vec10>:
c0100b92:	6a 0a                	push   $0xa
c0100b94:	eb 3a                	jmp    c0100bd0 <trap>

c0100b96 <vec11>:
c0100b96:	6a 0b                	push   $0xb
c0100b98:	eb 36                	jmp    c0100bd0 <trap>

c0100b9a <vec12>:
c0100b9a:	6a 0c                	push   $0xc
c0100b9c:	eb 32                	jmp    c0100bd0 <trap>

c0100b9e <vec13>:
c0100b9e:	6a 0d                	push   $0xd
c0100ba0:	eb 2e                	jmp    c0100bd0 <trap>

c0100ba2 <vec14>:
c0100ba2:	6a 0e                	push   $0xe
c0100ba4:	eb 2a                	jmp    c0100bd0 <trap>

c0100ba6 <vecsys>:
c0100ba6:	6a 00                	push   $0x0
c0100ba8:	68 80 00 00 00       	push   $0x80
c0100bad:	eb 21                	jmp    c0100bd0 <trap>

c0100baf <irq0>:
c0100baf:	6a 00                	push   $0x0
c0100bb1:	68 e8 03 00 00       	push   $0x3e8
c0100bb6:	eb 18                	jmp    c0100bd0 <trap>

c0100bb8 <irq1>:
c0100bb8:	6a 00                	push   $0x0
c0100bba:	68 e9 03 00 00       	push   $0x3e9
c0100bbf:	eb 0f                	jmp    c0100bd0 <trap>

c0100bc1 <irq14>:
c0100bc1:	6a 00                	push   $0x0
c0100bc3:	68 f6 03 00 00       	push   $0x3f6
c0100bc8:	eb 06                	jmp    c0100bd0 <trap>

c0100bca <irqall>:
c0100bca:	6a 00                	push   $0x0
c0100bcc:	6a ff                	push   $0xffffffff
c0100bce:	eb 00                	jmp    c0100bd0 <trap>

c0100bd0 <trap>:
c0100bd0:	fa                   	cli    
c0100bd1:	1e                   	push   %ds
c0100bd2:	06                   	push   %es
c0100bd3:	0f a0                	push   %fs
c0100bd5:	0f a8                	push   %gs
c0100bd7:	60                   	pusha  
c0100bd8:	66 b8 10 00          	mov    $0x10,%ax
c0100bdc:	8e d8                	mov    %eax,%ds
c0100bde:	8e c0                	mov    %eax,%es
c0100be0:	54                   	push   %esp
c0100be1:	e8 6a fe ff ff       	call   c0100a50 <irq_handle>
c0100be6:	83 c4 04             	add    $0x4,%esp
c0100be9:	61                   	popa   
c0100bea:	0f a9                	pop    %gs
c0100bec:	0f a1                	pop    %fs
c0100bee:	07                   	pop    %es
c0100bef:	1f                   	pop    %ds
c0100bf0:	83 c4 08             	add    $0x8,%esp
c0100bf3:	cf                   	iret   
