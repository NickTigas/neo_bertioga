; 9x9 FONT
; 0 = OFF
; 1 = ON
;
; Cada linha usa 2 bytes:
; - primeiro byte = bits 8..1
; - segundo byte = bit 0 no bit mais alto
;
; Exemplo:
; 111111111 = 0FFh,80h
; 100000001 = 081h,00h

LETTER_N:
    DB 081h,00h
    DB 0C1h,00h
    DB 0E1h,00h
    DB 0F1h,00h
    DB 0F9h,00h
    DB 08Dh,00h
    DB 087h,00h
    DB 083h,00h
    DB 081h,00h

LETTER_E:
    DB 0FFh,80h
    DB 080h,00h
    DB 080h,00h
    DB 0FEh,00h
    DB 080h,00h
    DB 080h,00h
    DB 080h,00h
    DB 080h,00h
    DB 0FFh,80h

LETTER_B:
    DB 0FEh,00h
    DB 081h,00h
    DB 081h,00h
    DB 0FEh,00h
    DB 081h,00h
    DB 081h,00h
    DB 081h,00h
    DB 081h,00h
    DB 0FEh,00h

LETTER_R:
    DB 0FEh,00h
    DB 081h,00h
    DB 081h,00h
    DB 0FEh,00h
    DB 088h,00h
    DB 084h,00h
    DB 082h,00h
    DB 081h,00h
    DB 081h,00h

LETTER_T:
    DB 0FFh,80h
    DB 010h,00h
    DB 010h,00h
    DB 010h,00h
    DB 010h,00h
    DB 010h,00h
    DB 010h,00h
    DB 010h,00h
    DB 010h,00h

LETTER_I:
    DB 0FFh,80h
    DB 010h,00h
    DB 010h,00h
    DB 010h,00h
    DB 010h,00h
    DB 010h,00h
    DB 010h,00h
    DB 010h,00h
    DB 0FFh,80h

LETTER_O:
    DB 07Fh,00h
    DB 081h,00h
    DB 081h,00h
    DB 081h,00h
    DB 081h,00h
    DB 081h,00h
    DB 081h,00h
    DB 081h,00h
    DB 07Fh,00h

LETTER_G:
    DB 07Fh,00h
    DB 081h,00h
    DB 080h,00h
    DB 080h,00h
    DB 08Fh,00h
    DB 081h,00h
    DB 081h,00h
    DB 081h,00h
    DB 07Fh,00h

LETTER_A:
    DB 010h,00h
    DB 028h,00h
    DB 044h,00h
    DB 082h,00h
    DB 082h,00h
    DB 0FEh,00h
    DB 082h,00h
    DB 082h,00h
    DB 082h,00h