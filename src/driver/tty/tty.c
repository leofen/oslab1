#include "kernel.h"
#include "driver/tty.h"
#include "irq.h"
#include "debug.h"


void send_keymsg(void);

void init_console();

void init_tty(void) {
	add_irq_handle(1, send_keymsg);
	init_console();
}

