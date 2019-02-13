set x = WScript.CreateObject("WScript.shell")
mySecret = inputbox("Enter to Encode")
mySecret = StrReverse(mySecret)
x.Run "%windir%\notepad"
wscript.sleep 1000
x.sendkeys encode(mySecret)

function encode(s)
For i =1 To Len(s)
newtxt = Mid(s,i,1)
newtxt = Chr(Asc(newtxt)+4)
coded = coded & newtxt
Next
encode = coded
End Function
