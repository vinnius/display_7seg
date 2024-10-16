;
; 
;
; Created: 12/10/2024 14:43
; Author : vinni
;
.include "m328Pdef.inc"
.include "IncFile1.inc"


.def temp1 = r16
.def temp2 = r17
.def delay = r20

;.cseg
;.org 0x0000

    ; Configura os pinos como saída
    ldi temp1, 0xFF
    out DDRD, temp1
    ldi temp1, 0xFF
    out DDRB, temp1

	main:
    ; Loop principal

	rcall numero_1
	; Delay
    rcall delay_1s

    	rcall numero_2
	; Delay
    rcall delay_1s

	rcall numero_3
	; Delay
    rcall delay_1s

	rcall numero_4
	; Delay
    rcall delay_1s

	rcall numero_5
	; Delay
    rcall delay_1s

	rcall numero_6
	; Delay
    rcall delay_1s



    rjmp main          ; Loop infinito


	; Função de Delay de ~ 1 Segundo
	
	delay_1s:
    ldi temp1, 60      ; Número de loops externos
delay_loop1:
    ldi temp2, 100     ; Número de loops internos
delay_loop2:
    ldi delay, 0xFF    ; Configura o delay interno
delay_loop3:
    dec delay
    brne delay_loop3
    dec temp2
    brne delay_loop2
    dec temp1
    brne delay_loop1
    ret

	
		
	; Número 1
	numero_1:
    ldi r18, 0xB8      ; Carrega o valor hexadecimal no registrador R18
    out PORTD, r18     ; Envia o valor para PORTD
    ldi r19, 0x10      ; Carrega o valor hexadecimal no registrador R19
    out PORTB, r19     ; Envia o valor para PORTB
	ret

	; Número 2
	numero_2:
    ldi r18, 0x78      ; Carrega o valor hexadecimal no registrador R18
    out PORTD, r18     ; Envia o valor para PORTD
    ldi r19, 0x1B      ; Carrega o valor hexadecimal no registrador R19
    out PORTB, r19     ; Envia o valor para PORTB
	ret

	
        ; Número 3
	numero_3:
    ldi r18, 0xF8      ; Carrega o valor hexadecimal no registrador R18
    out PORTD, r18     ; Envia o valor para PORTD
    ldi r19, 0x19      ; Carrega o valor hexadecimal no registrador R19
    out PORTB, r19     ; Envia o valor para PORTB
	ret    
	
	; Número 4
	numero_4:
    ldi r18, 0xF8      ; Carrega o valor hexadecimal no registrador R18
    out PORTD, r18     ; Envia o valor para PORTD
    ldi r19, 0x14      ; Carrega o valor hexadecimal no registrador R19
    out PORTB, r19     ; Envia o valor para PORTB
	ret    	
	
	; Número 5
	numero_5:
    ldi r18, 0xF0      ; Carrega o valor hexadecimal no registrador R18
    out PORTD, r18     ; Envia o valor para PORTD
    ldi r19, 0x1D      ; Carrega o valor hexadecimal no registrador R19
    out PORTB, r19     ; Envia o valor para PORTB
	ret

	; Número 6
        numero_6:
	ldi r18, 0xF0  ; Carrega o valor hexadecimal no registrador R18
    out PORTD, r18     ; Envia o valor para PORTD
    ldi r19, 0x1F      ; Carrega o valor hexadecimal no registrador R19
    out PORTB, r19     ; Envia o valor para PORTB
	ret    	
	
