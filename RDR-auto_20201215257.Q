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
Description=�Զ�����/��������
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
Function ���ٿ�(ofx, ofy)
    KeyDown "Space", 1
    '�ȵ���ʾ����
    �ӳ� 1835, 908, "FFFFFF"
    KeyUp "Space", 1
End Function
Function �ӳ�(x ,y, c)
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
// ����john֮������ui��̧�߲�֪��Ϊʲô
offsetx = 0
offsety = 0
If env = env2
offsetx = 50 
offsety =24
End If
KeyDown "Enter", 1
Delay 97
KeyUp "Enter", 1
'�ȴ���ʼ��
�ӳ� 1826 - offsetx, 954 - offsety, "FFFFFF"
���ٿ� offsetx, offsety
'������
�ӳ� 1835 - offsetx, 908 - offsety, "FFFFFF"
KeyDown "R", 1
Delay 93
KeyUp "R", 1

While True
    '�ȴ���ʾ��ʼ������һ�ݿ���
    Delay 1000  // ��ֹ�жϹ��쵼�����У���Ϊ�տ������һ�����Բ���ǷЧ��
    �ӳ� 1852 - offsetx, 964 - offsety, "FFFFFF"
    cc = GetPixelColor(1819 - offsetx, 915 - offsety)
    If cc <> "FFFFFF" Then 
    	// �������·ֿ���Ϊ��ɫʱ
		KeyDown "F", 1
		Delay 81
		KeyUp "F", 1// ����

		ExitScript
    End If
    KeyDown "Space", 1
	Delay 81
	KeyUp "Space", 1
    �ӳ� 1826 - offsetx, 954 - offsety, "FFFFFF"
    ���ٿ� offsetx, offsety
    �ӳ� 1835 - offsetx, 908 - offsety, "FFFFFF"
    KeyDown "R", 1
    Delay 93
    KeyUp "R", 1
Wend