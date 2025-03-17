 // Apple symbols. It's the Mach-O format, equivalent is .section .text for e.g. x86
.section __TEXT,__text
.global _main

.align 4

_main:
	// 4	AUE_NULL	ALL	{ user_ssize_t write(int fd, user_addr_t cbuf, user_size_t nbyte); }
	mov x0, #1 // fd, 1 = sysout
	adr x1, helloworld //user_addr_t, buffer
	mov x2, #8 // buffer length
	mov x16, #4 // write syscall
	svc #0

	// close neatly.
	// 1	AUE_EXIT	ALL	{ void exit(int rval) NO_SYSCALL_STUB; }
	mov x0, #0 // went fine and all
	mov x16, #1 // syscall
	svc #0



helloworld:
	.ascii "Hello!\n"
