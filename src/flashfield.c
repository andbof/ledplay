#include <stdint.h>

struct {
	uint64_t key;
	uint32_t reserved1;
	uint8_t nvm;
	uint8_t security;
	uint8_t protection;
	uint8_t reserved2;
} __attribute__((packed))
flash_conf
__attribute__((used,section(".flashfield")))
= {
	.key = 0x1234567890abcd,
	.reserved1 = 0xffffffff,
	.nvm = 0xff,
	.security = (1 << 7) | (1 << 2),
	.protection = (1 << 6) | (1 << 1),
	.reserved2 = 0xff,
};
