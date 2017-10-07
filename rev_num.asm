assume cs:codesg
codesg segment
	dw 0123H,0456H,0789H,0abcH,0defH,0fedH,0cbaH,0987H
	dw 0,0,0,0, 0,0,0,0; 定义八个字型数据，当作栈空间使用

start:mov ax, cs
	mov ss, ax
	mov sp, 32; ss:sp => cs:32
	mov bx, 0; 偏移地址
	mov cx, 8; 循环次数

 s0:push cs:[bx]
 	add bx, 2
 	loop s0

 	mov bx, 0
 	mov cx, 8

  s1:pop cs:[bx]
  	add bx, 2
  	loop s1

  	mov ax,4c00H
  	int 21H

codesg ends
end start

