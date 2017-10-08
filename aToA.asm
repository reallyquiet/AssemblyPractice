assume cs:code,ds:data

data segment
	db 'BaSiC'
	db 'inFORmaTION'
data ends

code segment
start:mov ax, data
	mov ds, ax

	mov bx, 0; ds:bx => 'BaSiC'的第一个字母

	mov cx, 5; 循环次数
    s:  mov al, [bx]
	and al, 11011111B; 变大写
	mov [bx], al

	inc bx
	loop s


	mov bx, 5; ds:bx =>'inFORmaTION'的第一个字母

	mov cx, 11
    s0: mov al, [bx]
	or al, 00100000B; 变小写
	mov [bx], al
	
	inc bx
	loop s0

	mov ax, 4c00H
	int 21H
	
code ends
end start
