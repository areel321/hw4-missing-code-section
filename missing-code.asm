;;; ; missing_code.asm
;;; ; Allison Reel
;;; ;
;;; ; a description of the program
;;; ;
;;; ; to assemble and run:
;;; ;
;;; ; nasm -f elf missing_code.asm
;;; ; ld -melf_i386 -o missing_code missing_code.o
;;; ; ./missing_code
;;; ; -------------------------------------------------------------------
;;; ------------------------------------------------------------
    ;;; data areas
;;; ------------------------------------------------------------
    section .data
plus    db "+ | "
msg1    db "Assembly"
message db "hello there", 10, 10
        db "******--------------------------------*****"
msg2    db "CSC231a"
lf      db 10
msg3    db " Language"
msg4    db "|"
;;; ------------------------------------------------------------
;;; code area
;;; ------------------------------------------------------------
        section .text
        global _start
_start:
;;; ---- DO NOT EDIT ABOVE THIS LINE
    ;;; add your code here!
        mov eax,4
        mov ebx,1
        mov ecx, plus
        mov edx, 1
        int 0x80
        
        mov eax,4
        mov ebx,1
        mov ecx, message+30
        mov edx, 19
        int 0x80
        
        mov eax,4
        mov ebx,1
        mov ecx, plus
        mov edx, 1
        int 0x80
        
        mov eax,4
        mov ebx,1
        mov ecx, lf
        mov edx, 1
        int 0x80
        
        mov eax,4
        mov ebx,1
        mov ecx, msg4
        mov edx, 1
        int 0x80
        
        mov eax,4
        mov ebx,1
        mov ecx, msg3
        mov edx, 1
        int 0x80
        
        mov eax,4
        mov ebx,1
        mov ecx, msg1
        mov edx, 8
        int 0x80
        
        mov eax,4
        mov ebx,1
        mov ecx, msg3
        mov edx, 9
        int 0x80
        
        mov eax,4
        mov ebx,1
        mov ecx, msg3
        mov edx, 1
        int 0x80

        mov eax,4
        mov ebx,1
        mov ecx, msg4
        mov edx, 1
        int 0x80
        
        mov eax,4
        mov ebx,1
        mov ecx, lf
        mov edx, 1
        int 0x80
        
        mov eax,4
        mov ebx,1
        mov ecx, plus
        mov edx, 1
        int 0x80
        
        mov eax,4
        mov ebx,1
        mov ecx, message+30
        mov edx, 19
        int 0x80
        
        mov eax,4
        mov ebx,1
        mov ecx, plus
        mov edx, 1
        int 0x80
        
        
;;; ---- DO NOT EDIT BELOW THIS LINE
    ;;; exit()
        mov eax,1
        mov ebx,0
        int 0x80 ; final system call

