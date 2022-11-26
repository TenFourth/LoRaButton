100 WAN_JOIN
110 IF WAN_JOINSTAT <> 1 THEN
120   Gosub _BLINK_LED
130   DEEP 0
140 ENDIF
150 Do
160   V=Adc(27)
170   Txd(8)=1
180   TXD(9)=V>>8:TXD(10)=V&255
190   TXD(7)=3 'length
200   Wan_Tx
210   If Stat=0 Then
220     Outp 18,1:Delay 5000:Outp 18,0
230   Else
240     Gosub _BLINK_LED
250   EndIf
260   SLEEP 0
270 Loop
280 '
290 _BLINK_LED
300 For I=0 To 10
310   Outp 18,1:Delay 92:Outp 18,0:Delay 230
320 Next
330 Return
