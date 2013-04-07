#include "string.h"
#include "assert.h"
#include "common.h"
#include "stdarg.h"
/*
 * use putchar_func to print a string
 *   @putchar_func is a function pointer to print a character
 *   @format is the control format string (e.g. "%d + %d = %d")
 *   @data is the address of the first variable argument
 * please implement it.
 */
#define put_onechar field_width++;putchar_func(buf);

#define put_string \
    while((buf = *buf_str++) != '\0'){\
        put_onechar; \
    }

int
vfprintf(void (*putchar_func)(char), const char *format, void **data) {
    char buf;
    char *buf_str;
    int buf_int;
    int buf_unsigned_int;
    int field_width = 0;//final length of output

    while((buf = *format++) != '\0'){
        if (buf != '%'){
            put_onechar;
            continue;
        }
        /* begin transform */
        buf = *format++;
        assert(buf != '\0');/* a fmt end with a single % means the input is wrong */
        switch(buf){
            case '%': put_onechar;break;
            case 'c': buf = va_args(data,char);put_onechar;break;
            case 's': buf_str = va_args(data,char *);put_string;break;
            case 'd': buf_int = va_args(data,int);
                      buf_str = itoa(buf_int,10);put_string;break;
            case 'x': buf_unsigned_int = va_args(data,unsigned int);
                      buf_str = utoa(buf_unsigned_int,16);put_string;break;
            default: assert(FALSE);break;//wrong input
        }
    }

    return field_width;
}

