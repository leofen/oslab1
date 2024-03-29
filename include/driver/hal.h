#ifndef __MOD_HAL_H__
#define __MOD_HAL_H__

#include "message.h"
#include "adt/list.h"

#define MSG_DEVRD  1
#define MSG_DEVWR  2

typedef struct Msg_header{
    int32_t type;
    pid_t src,dest;
}Msg_header;

struct DevMessage {
	Msg_header header; // header与Message的头部定义保持一致即可(src, dst, type)
	int dev_id;
	off_t offset;
	void *buf;
	size_t count;
};
typedef struct DevMessage DevMessage;

struct Device {
	const char *name;
	pid_t pid;
	int dev_id;
	
	ListHead list;
};
typedef struct Device Device;

size_t dev_read(Device *dev, off_t offset, void *buf, size_t count);
size_t dev_write(Device *dev, off_t offset, void *buf, size_t count);

void hal_register(const char *name, pid_t pid, int dev_id);
Device *hal_get(const char *name);
void hal_list(void);
void init_hal(void);
#endif
