[General]
SyntaxVersion=2
BeginHotkey=49
BeginHotkeyMod=1
PauseHotkey=0
PauseHotkeyMod=0
StopHotkey=50
StopHotkeyMod=1
RunOnce=1
EnableWindow=
MacroID=43e785d0-e608-4edd-a575-f189b7fde419
Description=自动烤肉/制作道具
Enable=1
AutoRun=0
[Repeat]
Type=0
Number=1
[SetupUI]
Type=2
QUI=
[Relative]
SetupOCXFile=
[Comment]

[Script]
Function 加速烤(ofx, ofy)
    KeyDown "Space", 1
    '等到显示收起
    延迟 1835, 908, "FFFFFF"
    KeyUp "Space", 1
End Function
Function 延迟(x ,y, c)
    i=0
    While i<>1
        Delay 10
        IfColor x,y,c,0 Then
            i = 1  
        End If
    Wend
End Function

env = "Arthur"
env1 = "Arthur"
env2 = "john"
// 换成john之后总体ui会抬高不知道为什么
offsetx = 0
offsety = 0
If env = env2
offsetx = 50 
offsety =24
End If
KeyDown "Enter", 1
Delay 97
KeyUp "Enter", 1
'等待开始考
延迟 1826 - offsetx, 954 - offsety, "FFFFFF"
加速烤 offsetx, offsety
'收起烤肉
延迟 1835 - offsetx, 908 - offsety, "FFFFFF"
KeyDown "R", 1
Delay 93
KeyUp "R", 1

While True
    '等待显示开始制作下一份烤肉
    Delay 1000  // 防止判断过快导致误判，因为收烤肉大于一秒所以不亏欠效率
    延迟 1852 - offsetx, 964 - offsety, "FFFFFF"
    cc = GetPixelColor(1819 - offsetx, 915 - offsety)
    If cc <> "FFFFFF" Then 
    	// 当制作下分烤肉为灰色时
		KeyDown "F", 1
		Delay 81
		KeyUp "F", 1// 结束

		ExitScript
    End If
    KeyDown "Space", 1
	Delay 81
	KeyUp "Space", 1
    延迟 1826 - offsetx, 954 - offsety, "FFFFFF"
    加速烤 offsetx, offsety
    延迟 1835 - offsetx, 908 - offsety, "FFFFFF"
    KeyDown "R", 1
    Delay 93
    KeyUp "R", 1
Wend
