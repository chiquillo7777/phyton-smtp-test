Title Nombre_del_Programa     <.Asm>
;@Author : 
;@Carnet : 
;Multiplicar con SHL 100 X 50 
Include Irvine32.Inc

.Data
 
.Code
Main Proc
	mov eax,0
	mov ebx,0
	mov edx,0
    mov edx,100
	shl edx,1
	add ebx,edx
	mov edx,100
	shl edx,4
	add ebx,edx
	mov edx,100
	shl edx,5
	add ebx,edx
	mov eax,ebx
	call writeint
	call crlf
	call waitmsg
	 Exit
Main EndP
     End Main