;=== Test Cases/Test Data ===
; UseCase 1:		J1939-Claim Address
; Critical (C):		Y
; TestCase No.:		TC_UC8_02
; TestCases:		Create or load Database(dbf) files
; Test Strategy:	Black Box
; Test Data:		-
; === Test Procedure ===

ConsoleWrite("****Start : TC_UC8_02.au3****"&@CRLF)
_launchApp()
if $app=0 Then
	_loadConfig("UseCase4")
EndIf
_loadJ1939Database("J1939Test",25,10,8)
send("!JDC")	; Close the db
_associateDB("&J1939","J1939Test.dbf")
ConsoleWrite("$msgCount : "&$msgCount&@CRLF)
ConsoleWrite("$msg1SigCount : "&$msg1SigCount&@CRLF)
ConsoleWrite("$flag : "&$flag&@CRLF)

ConsoleWrite("****End : TC_UC8_02.au3****"&@CRLF)
ConsoleWrite(@CRLF)
ConsoleWrite(@CRLF)