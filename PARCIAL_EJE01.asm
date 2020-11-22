;nombre: Jhosep Isaac Islam Chachagua
;25-0464-2017
TITLE EJERCICIO1
INCLUDE IRVINE32.INC
INCLUDE MACROS.INC

mDIVISION MACRO N1:REQ, N2:=<0>

.CODE	
	MOV EAX, N1		
		.IF(N2==0) 
			MWRITE "NO SE  PUEDE DIVIDIR ENTRE 0"
			EXIT
		.ENDIF	
		
		.IF(EAX < N2) ; si el dividendo es menor el el divisor 
						; el residuo sera el dividendo
			MWRITE "RESIDUO: "
			CALL WRITEDEC
			EXIT
		.ENDIF		
		LOOP0: SUB EAX, N2
			.IF(EAX >=N2) ; si el dividendo es mayor o igual que el divisor
				JMP LOOP0 ; se puede seguir restando
			.ENDIF			
		
ENDM
.DATA
	_N1 DWORD 0
	_N2 DWORD 0
.CODE
	JI PROC
		CALL CRLF
		
		MWRITE "Ingrese el Dividendo: "
		CALL READDEC ;leer datos de dividendo
		MOV _N1, EAX
		MWRITE "Ingrese el Divisor: "
		CALL READDEC ; leer datos de divisor
		MOV _N2, EAX
		CALL CRLF	
		mDIVISION _N1,_N2 ; llamada a la macro
		
		MWRITE "El Residuo es: "
		CALL WRITEDEC       ; mostrando el residuo de la division por resta sucesiva
		
	EXIT
	JI ENDP 
END JI