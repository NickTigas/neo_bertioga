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
    DB 081h
    DB 0C1h
    DB 0E1h
    DB 091h
    DB 089h
    DB 085h
    DB 083h
    DB 081h
    DB 081h
    DB 00h

LETTER_E:
    DB 0FFh
    DB 080h
    DB 080h
    DB 0FEh
    DB 080h
    DB 080h
    DB 080h
    DB 080h
    DB 0FFh
    DB 00h

LETTER_B:
    DB 0FEh
    DB 081h
    DB 081h
    DB 0FEh
    DB 081h
    DB 081h
    DB 081h
    DB 081h
    DB 0FEh
    DB 00h

LETTER_R:
    DB 0FEh
    DB 081h
    DB 081h
    DB 0FEh
    DB 088h
    DB 084h
    DB 082h
    DB 081h
    DB 081h
    DB 00h

LETTER_T:
    DB 0FFh
    DB 010h
    DB 010h
    DB 010h
    DB 010h
    DB 010h
    DB 010h
    DB 010h
    DB 010h
    DB 00h

LETTER_I:
    DB 0FFh
    DB 010h
    DB 010h
    DB 010h
    DB 010h
    DB 010h
    DB 010h
    DB 010h
    DB 0FFh
    DB 00h

LETTER_O:
    DB 03Ch
    DB 042h
    DB 081h
    DB 081h
    DB 081h
    DB 081h
    DB 081h
    DB 042h
    DB 03Ch
    DB 000h

LETTER_G:
    DB 03Eh
    DB 041h
    DB 080h
    DB 080h
    DB 08Fh
    DB 081h
    DB 081h
    DB 041h
    DB 03Eh
    DB 00h

LETTER_A:
    DB 010h
    DB 028h
    DB 044h
    DB 082h
    DB 082h
    DB 0FEh
    DB 082h
    DB 082h
    DB 082h
    DB 00h