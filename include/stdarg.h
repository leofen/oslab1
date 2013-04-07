#ifndef __STDARG_H_
#define __STDARG_H_

#define __va_rounded_size(TYPE) \
    ((sizeof(TYPE) + sizeof(int) - 1) & ~(sizeof(int) - 1))

#define va_args(AP,TYPE) \
    (*(TYPE *) ((AP += __va_rounded_size(TYPE)/sizeof(int)) - __va_rounded_size(TYPE)/sizeof(int)))

#endif /*staarg.h*/
