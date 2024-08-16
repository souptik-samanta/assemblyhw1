section .data
    hello db 'Hello, World!', 0  ; The string to print

section .text
    global _start

_start:
    ; write(1, hello, 13)
    mov eax, 4            ; syscall number for sys_write
    mov ebx, 1            ; file descriptor 1 (stdout)
    mov ecx, hello        ; pointer to the string
    mov edx, 13           ; length of the string
    int 0x80              ; call kernel

    ; exit(0)
    mov eax, 1            ; syscall number for sys_exit
    xor ebx, ebx          ; return code 0
    int 0x80              ; call kernel
