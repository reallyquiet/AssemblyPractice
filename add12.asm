assume cs:code
code segment
	mov ax, 0ffffH
	mov ds, ax
	mov bx, 0

	mov dx, 0; 中间变量

	mov cx, 12; 循环次数

s:  mov al, [bx]
	mov ah, 0
	add dx, ax
	inc bx
	loop s

	mov ax, 4c00H
	int 21H

code ends
end