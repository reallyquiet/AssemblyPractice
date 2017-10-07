assume cs:code,ds:data,ss:stack

data segment
	dw 0123H,0456H,0789H,0abcH,0defH,0fedH,0cbaH,0987H
data ends

stack segment
	dw 0,0,0,0, 0,0,0,0
stack ends

code segment
start:mov ax, stack
	mov ss, ax
	mov sp, 16; ss:sp => cs:16
	mov ax, data
	mov ds, ax; ds => data段
	mov bx, 0; 偏移地址
	mov cx, 8; 循环次数

 s0:push [bx]
 	add bx, 2
 	loop s0

 	mov bx, 0
 	mov cx, 8

  s1:pop cs:[bx]
  	add bx, 2
  	loop s1

  	mov ax,4c00H
  	int 21H

code ends
end start

