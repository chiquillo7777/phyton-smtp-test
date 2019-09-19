Title Nombre_del_Programa     <.Asm>
;@Author : 
;@Carnet : 

Include Irvine32.Inc

.Data


.Code
Main Proc
	 mov eax,0
     Call ClrScr
	 mov ax,3
     mov bl,2
	 div bl
	 
	 movzx eax,ax	 ;call dumpregs
	 call writeint
     Call CrLf
     Call WaitMsg 
     Exit
Main EndP
     End Main