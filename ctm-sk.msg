; This file is a part of CuteMouse source
; Here are messages in Slovak
; Translated by Henrich Fukna <henrich.fukna@kiwwi.sk>, <fuky@azet.sk>
;
; Note: this file should be used with codepage 852

E_needvga       db 'No VGA? Use older CTMOUSE if you need EGA RIL support',nl,eos
E_error		db nl,'Chyba: Nezn?my ',eos
E_option	db 'prep?na?',eos
E_argument	db 'argument prep?na?a',eos
E_help		db 5,nl,'Nap??te /? do pr?kazov?ho riadku pre n?pove?',eos

E_mousepresent	db 5,'Slu?ba my?i u? je pr?tomn?',eos
E_notfound	db 5,'Chyba: zariadenie nen?jden?',eos
;;+E_noIRQ	db 5,'Chyba: IRQ nedetegovan?',eos

E_nocute	db 1,'CuteMouse ovl?da? nie je nain?talovan?!',eos
E_notunload	db 2,'Ovl?da? nemo?no odin?talova?: niektor? preru?enia s? zmenen?...',eos
S_unloaded	db 0,'Ovl?da? ?spe?ne odin?talovan?...',eos

S_reset		db 'Rezidentn? ?as? nastaven? na ',eos
S_installed	db 'In?talovan? na ',eos
S_atPS2		db 'porte PS/2',eos
S_atCOM		db 'COM'
com_port	db ?,' ('
S_atIO		db '0000h/IRQ'
IRQno		db ?
S_in		db ') pre ',eos
S_inMSYS	db 'Mouse Systems m?d',eos
S_inMS		db 'Microsoft m?d',eos
S_inLT		db 'Logitech m?d',eos
S_wheel		db ' (podpora kolieska)'
S_CRLF		db nl,eos

Copyright	db nl,'CuteMouse v',CTMRELEASE,' [FreeDOS]',nl,eos
Syntax		label byte
    db 0,'Mo?nosti:',nl
    db '  /P	   - vyn?ti PS/2 m?d',nl
    db '  /S[c[i]] - vyn?ti s?riov? m?d na COM porte c (1-4) s IRQ i (1-7)',nl
;;+ db '  /S$a[,i] - vyn?ti s?riov? m?d na I/O adrese a (hexadecim?lne ??slo)',nl
;;+ db '	     s IRQ i (1-7)',nl
    db '  /O       - enable PS2 and BIOS USB wheel detection (might hang)',nl
; 2008: made /Y (ignore MSys) the default and introduced /M (enable MSys)
;   db '  /Y	   - do not try Mouse Systems mode for non-PnP devices',nl,nl
    db '  /M       - try *old* Mouse Systems / Genius for non-PnP mice',nl,nl
    db '  /V	   - opa?n? h?adanie: PS/2 po s?riov?ch my?iach',nl
    db '  /3	   - vyn?ti 3-tla??tkov? m?d (pre Microsoft a PS/2 my?i)',nl
    db '  /R[h[v]] - horizont?lne/vertik?lne rozl??enie (h,v=0-9; ch?baj?ca vo?ba R,',nl
    db '	     ?iadne argumenty alebo 0 ako argument po R znamen? automatick?',nl
    db '	     rozl??enie, ch?baj?ci druh? argument znamen? rovnak? hodnotu',nl
    db '	     ako pre prv? argument)',nl
    db '  /L	   - m?d pre ?av? ruku (prednastaven? pre prav? ruku)',nl
    db '  /B	   - preru?? vykon?vanie ak slu?ba my?i je u? pr?tomn?',nl
    db '  /N	   - na??ta CuteMouse ako nov? TSR, aj ke? je u? CuteMouse na??tan?',nl
    db '	     (vhodn? pre d?vkov? s?bory ktor? odin?tal?vaj? CuteMouse na konci)',nl
    db '  /W	   - zabr?ni na??taniu TSR do UMB',nl
    db '  /U	   - odin?taluje ovl?da?',nl
    db '  /?	   - zobraz? n?vod na pou?itie',eos
