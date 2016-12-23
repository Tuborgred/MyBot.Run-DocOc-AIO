; #FUNCTION# ====================================================================================================================
; Name ..........: MBR GUI Design
; Description ...: This file Includes GUI Design
; Syntax ........:
; Parameters ....: None
; Return values .: None
; Author ........:
; Modified ......:
; Remarks .......: This file is part of MyBot, previously known as ClashGameBot. Copyright 2015-2016
;                  MyBot is distributed under the terms of the GNU GPL
; Related .......:
; Link ..........: https://github.com/MyBotRun/MyBot/wiki
; Example .......: No
; ===============================================================================================================================
$hGUI_MOD = GUICreate("", $_GUI_MAIN_WIDTH - 20, $_GUI_MAIN_HEIGHT - 255, $_GUI_CHILD_LEFT, $_GUI_CHILD_TOP, BitOR($WS_CHILD, $WS_TABSTOP), -1, $frmBotEx)
;GUISetBkColor($COLOR_WHITE, $hGUI_BOT)

GUISwitch($hGUI_MOD)

$hGUI_MOD_TAB = GUICtrlCreateTab(0, 0, $_GUI_MAIN_WIDTH - 20, $_GUI_MAIN_HEIGHT - 255, BitOR($TCS_MULTILINE, $TCS_RIGHTJUSTIFY))

Global $FirstControlToHideMOD = GUICtrlCreateDummy()

$hGUI_MOD_TAB_ITEM1 = GUICtrlCreateTabItem("Miscellaneous")

Local $xStart = 0, $yStart = 0

; Collect Treasury

Local $x = $xStart + 230, $y = $yStart - 80

$grpTreasury = GUICtrlCreateGroup("Collect Treasury", $x - 226, $y + 110, 440, 100) ;70
$chkCollectTresory = GUICtrlCreateCheckbox("Enable", $x - 210, $y + 135, -1, -1)
$txtTip = "Enable auto collect of treasury."
_GUICtrlSetTip(-1, $txtTip)
GUICtrlSetOnEvent(-1, "chkCollectTresory")
GUICtrlSetState(-1, $GUI_UNCHECKED)
$leurequisertarienTresor = GUICtrlCreateLabel("", $x - 180, $y + 135, -1, -1, $SS_RIGHT)
GUICtrlCreateIcon($pIconLib, $eIcnGold, $x - 120, $y + 150, 16, 16)
GUICtrlSetState(-1, $GUI_HIDE)
$chkTRFull = GUICtrlCreateCheckbox("When Full", $x - 210, $y + 165, -1, -1)
$txtTip = "Check to the bot collect the treasury when full"
_GUICtrlSetTip(-1, $txtTip)
GUICtrlSetState(-1, $GUI_HIDE)
$txtTreasuryGold = GUICtrlCreateInput("0", $x - 100, $y + 150, 60, 18, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
$txtTip = "Minimum Gold amount below which the bot will collect the treasury."
_GUICtrlSetTip(-1, $txtTip)
GUICtrlSetLimit(-1, 7)
GUICtrlSetState(-1, $GUI_HIDE)

$chkCollectTresoryGold = GUICtrlCreateCheckbox("Gold", $x - 90, $y + 125, -1, -1)
$txtTip = "Enable automatic collect of treasury according to Gold amount."
_GUICtrlSetTip(-1, $txtTip)
GUICtrlSetOnEvent(-1, "chkCollectTresoryGold")
GUICtrlSetState(-1, $GUI_UNCHECKED)
GUICtrlSetState(-1, $GUI_HIDE)
GUICtrlCreateIcon($pIconLib, $eIcnElixir, $x - 15, $y + 150, 16, 16)
GUICtrlSetState(-1, $GUI_HIDE)
$btnResetOR = GUICtrlCreateButton("Reset", $x - 92, $y + 180, 45, 18)
GUICtrlSetOnEvent(-1, "ResetOr")
GUICtrlSetState(-1, $GUI_HIDE)

$txtTreasuryElixir = GUICtrlCreateInput("0", $x + 5, $y + 150, 60, 18, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
$txtTip = "Minimum Elixir amount below which the bot will collect the treasury."
_GUICtrlSetTip(-1, $txtTip)
GUICtrlSetLimit(-1, 7)
GUICtrlSetState(-1, $GUI_HIDE)
$chkCollectTresoryElixir = GUICtrlCreateCheckbox("Elixir", $x + 10, $y + 125, -1, -1)
$txtTip = "Enable automatic collect of treasury according to Elixir amount."
_GUICtrlSetTip(-1, $txtTip)
GUICtrlSetOnEvent(-1, "chkCollectTresoryElixir")
GUICtrlSetState(-1, $GUI_UNCHECKED)
GUICtrlSetState(-1, $GUI_HIDE)
GUICtrlCreateIcon($pIconLib, $eIcnDark, $x + 90, $y + 150, 16, 16)
GUICtrlSetState(-1, $GUI_HIDE)
$btnResetEL = GUICtrlCreateButton("Reset", $x + 13, $y + 180, 45, 18)
GUICtrlSetOnEvent(-1, "ResetEL")
GUICtrlSetState(-1, $GUI_HIDE)

$txtTreasuryDark = GUICtrlCreateInput("0", $x + 110, $y + 150, 60, 18, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
$txtTip = "Minimum Dark Elixir amount below which the bot will collect the treasury."
_GUICtrlSetTip(-1, $txtTip)
GUICtrlSetLimit(-1, 6)
GUICtrlSetState(-1, $GUI_HIDE)
$chkCollectTresoryDark = GUICtrlCreateCheckbox("Dark Elixir", $x + 115, $y + 125, -1, -1)
$txtTip = "Enable automatic collect of treasury according to Dark Elixir amount."
_GUICtrlSetTip(-1, $txtTip)
GUICtrlSetOnEvent(-1, "chkCollectTresoryDark")
GUICtrlSetState(-1, $GUI_UNCHECKED)
GUICtrlSetState(-1, $GUI_HIDE)
$btnResetDE = GUICtrlCreateButton("Reset", $x + 118, $y + 180, 45, 18)
GUICtrlSetOnEvent(-1, "ResetDE")
GUICtrlSetState(-1, $GUI_HIDE)

GUICtrlCreateGroup("", -99, -99, 1, 1)

;GUI modification by rulesss
  Local $x = 24, $y = 135
	  $grpCoCStats = GUICtrlCreateGroup("", $x - 20, $y, 440, 35)
   $y += 10
   $x+= -10
	   $chkCoCStats = GUICtrlCreateCheckbox(GetTranslated(110, 1,"CoCStats Activate"), $x , $y , -1, -1)
		   $txtTip = GetTranslated(110,2,"Activate sending raid results to CoCStats.com")
		   GUICtrlSetTip(-1, $txtTip)
		   GUICtrlSetOnEvent(-1, "chkCoCStats")
   $x += 135
	   $lblAPIKey = GUICtrlCreateLabel(GetTranslated(110, 3,"API Key:"), $x - 18, $y + 4 , -1, 21, $SS_LEFT)
		   $txtAPIKey = GUICtrlCreateInput("", $x + 30, $y , 250, 20, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER))
		   $txtTip = GetTranslated(110,4,"Join in CoCStats.com and input API Key here")
		   GUICtrlSetTip(-1, $txtTip)
		GUICtrlCreateGroup("", -99, -99, 1, 1)
	 GUICtrlCreateGroup("", -99, -99, 1, 1)

GUICtrlCreateTabItem("")

$hGUI_MOD_TAB_ITEM2 = GUICtrlCreateTabItem(GetTranslated(655,13, "Switch Profiles"))

Local $x = 25, $y = 45

$grpGoldSwitch = GUICtrlCreateGroup(GetTranslated(19, 7, "Gold Switch Profile Conditions"), $x - 20, $y - 20, 438, 75) ;Gold Switch
$chkGoldSwitchMax = GUICtrlCreateCheckbox(GetTranslated(19, 8, "Switch To"), $x - 10, $y - 5, -1, -1)
$txtTip = GetTranslated(19, 9, "Enable this to switch profiles when gold is above amount.")
_GUICtrlSetTip(-1, $txtTip)
$cmbGoldMaxProfile = GUICtrlCreateCombo("", $x + 60, $y - 5, 75, -1, BitOR($CBS_DROPDOWNLIST, $CBS_AUTOHSCROLL))
$txtTip = GetTranslated(19, 10, "Select which profile to be switched to when conditions met")
_GUICtrlSetTip(-1, $txtTip)
$lblGoldMax = GUICtrlCreateLabel(GetTranslated(19, 11, "When Gold is Above"), $x + 145, $y, -1, -1)
$txtMaxGoldAmount = GUICtrlCreateInput("6000000", $x + 275, $y - 5, 50, 18, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
$txtTip = GetTranslated(19, 12, "Set the amount of Gold to trigger switching Profile.")
_GUICtrlSetTip(-1, $txtTip)
GUICtrlSetLimit(-1, 7)

$y += 30
$chkGoldSwitchMin = GUICtrlCreateCheckbox(GetTranslated(19, 8, "Switch To"), $x - 10, $y - 5, -1, -1)
$txtTip = GetTranslated(19, 13, "Enable this to switch profiles when gold is below amount.")
_GUICtrlSetTip(-1, $txtTip)
$cmbGoldMinProfile = GUICtrlCreateCombo("", $x + 60, $y - 5, 75, -1, BitOR($CBS_DROPDOWNLIST, $CBS_AUTOHSCROLL))
$txtTip = GetTranslated(19, 10, "Select which profile to be switched to when conditions met")
_GUICtrlSetTip(-1, $txtTip)
$lblGoldMin = GUICtrlCreateLabel(GetTranslated(19, 14, "When Gold is Below"), $x + 145, $y, -1, -1)
$txtMinGoldAmount = GUICtrlCreateInput("500000", $x + 275, $y - 5, 50, 18, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
$txtTip = GetTranslated(19, 12, "Set the amount of Gold to trigger switching Profile.")
_GUICtrlSetTip(-1, $txtTip)
GUICtrlSetLimit(-1, 7)
$picProfileGold = GUICtrlCreatePic(@ScriptDir & "\Images\GoldStorage.jpg", $x + 350, $y - 40, 60, 60)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$y += 48
$grpElixirSwitch = GUICtrlCreateGroup(GetTranslated(19, 15, "Elixir Switch Profile Conditions"), $x - 20, $y - 20, 438, 75) ; Elixir Switch
$chkElixirSwitchMax = GUICtrlCreateCheckbox(GetTranslated(19, 8, "Switch To"), $x - 10, $y - 5, -1, -1)
$txtTip = GetTranslated(19, 16, "Enable this to switch profiles when Elixir is above amount.")
_GUICtrlSetTip(-1, $txtTip)

$cmbElixirMaxProfile = GUICtrlCreateCombo("", $x + 60, $y - 5, 75, -1, BitOR($CBS_DROPDOWNLIST, $CBS_AUTOHSCROLL))
$txtTip = GetTranslated(19, 10, "Select which profile to be switched to when conditions met")
_GUICtrlSetTip(-1, $txtTip)
$lblElixirMax = GUICtrlCreateLabel(GetTranslated(19, 17, "When Elixir is Above"), $x + 145, $y, -1, -1)
$txtMaxElixirAmount = GUICtrlCreateInput("6000000", $x + 275, $y - 5, 50, 18, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
$txtTip = GetTranslated(19, 18, "Set the amount of Elixir to trigger switching Profile.")
_GUICtrlSetTip(-1, $txtTip)
GUICtrlSetLimit(-1, 7)
$y += 30
$chkElixirSwitchMin = GUICtrlCreateCheckbox(GetTranslated(19, 8, "Switch To"), $x - 10, $y - 5, -1, -1)
$txtTip = GetTranslated(19, 19, "Enable this to switch profiles when Elixir is below amount.")
_GUICtrlSetTip(-1, $txtTip)
$cmbElixirMinProfile = GUICtrlCreateCombo("", $x + 60, $y - 5, 75, -1, BitOR($CBS_DROPDOWNLIST, $CBS_AUTOHSCROLL))
$txtTip = GetTranslated(19, 10, "Select which profile to be switched to when conditions met")
_GUICtrlSetTip(-1, $txtTip)
$lblElixirMin = GUICtrlCreateLabel(GetTranslated(19, 20, "When Elixir is Below"), $x + 145, $y, -1, -1)
$txtMinElixirAmount = GUICtrlCreateInput("500000", $x + 275, $y - 5, 50, 18, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
$txtTip = GetTranslated(19, 18, "Set the amount of Elixir to trigger switching Profile.")
_GUICtrlSetTip(-1, $txtTip)
GUICtrlSetLimit(-1, 7)
$picProfileElixir = GUICtrlCreatePic(@ScriptDir & "\Images\ElixirStorage.jpg", $x + 350, $y - 40, 60, 60)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$y += 48
$grpDESwitch = GUICtrlCreateGroup(GetTranslated(19, 21, "Dark Elixir Switch Profile Conditions"), $x - 20, $y - 20, 438, 75) ;DE Switch
$chkDESwitchMax = GUICtrlCreateCheckbox(GetTranslated(19, 8, "Switch To"), $x - 10, $y - 5, -1, -1)
$txtTip = GetTranslated(19, 22, "Enable this to switch profiles when Dark Elixir is above amount.")
_GUICtrlSetTip(-1, $txtTip)
$cmbDEMaxProfile = GUICtrlCreateCombo("", $x + 60, $y - 5, 75, -1, BitOR($CBS_DROPDOWNLIST, $CBS_AUTOHSCROLL))
$txtTip = GetTranslated(19, 10, "Select which profile to be switched to when conditions met")
_GUICtrlSetTip(-1, $txtTip)
$lblDEMax = GUICtrlCreateLabel(GetTranslated(19, 23, "When Dark Elixir is Above"), $x + 145, $y, -1, -1)
$txtMaxDEAmount = GUICtrlCreateInput("200000", $x + 275, $y - 5, 50, 18, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
$txtTip = GetTranslated(19, 24, "Set the amount of Dark Elixir to trigger switching Profile.")
_GUICtrlSetTip(-1, $txtTip)
GUICtrlSetLimit(-1, 6)
$y += 30
$chkDESwitchMin = GUICtrlCreateCheckbox(GetTranslated(19, 8, "Switch To"), $x - 10, $y - 5, -1, -1)
$txtTip = GetTranslated(19, 25, "Enable this to switch profiles when Dark Elixir is below amount.")
_GUICtrlSetTip(-1, $txtTip)
$cmbDEMinProfile = GUICtrlCreateCombo("", $x + 60, $y - 5, 75, -1, BitOR($CBS_DROPDOWNLIST, $CBS_AUTOHSCROLL))
$txtTip = GetTranslated(19, 10, "Select which profile to be switched to when conditions met")
_GUICtrlSetTip(-1, $txtTip)
$lblDEMin = GUICtrlCreateLabel(GetTranslated(19, 26, "When  Dark Elixir is Below"), $x + 145, $y, -1, -1)
$txtMinDEAmount = GUICtrlCreateInput("10000", $x + 275, $y - 5, 50, 18, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
$txtTip = GetTranslated(19, 24, "Set the amount of Dark Elixir to trigger switching Profile.")
_GUICtrlSetTip(-1, $txtTip)
GUICtrlSetLimit(-1, 6)
$picProfileDE = GUICtrlCreatePic(@ScriptDir & "\Images\DEStorage.jpg", $x + 350, $y - 40, 60, 60)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$y += 48
$grpTrophySwitch = GUICtrlCreateGroup(GetTranslated(19, 27, "Trophy Switch Profile Conditions"), $x - 20, $y - 20, 438, 75) ; Trophy Switch
$chkTrophySwitchMax = GUICtrlCreateCheckbox(GetTranslated(19, 8, "Switch To"), $x - 10, $y - 5, -1, -1)
$txtTip = GetTranslated(19, 28, "Enable this to switch profiles when Trophies are above amount.")
_GUICtrlSetTip(-1, $txtTip)
$cmbTrophyMaxProfile = GUICtrlCreateCombo("", $x + 60, $y - 5, 75, -1, BitOR($CBS_DROPDOWNLIST, $CBS_AUTOHSCROLL))
$txtTip = GetTranslated(19, 10, "Select which profile to be switched to when conditions met")
_GUICtrlSetTip(-1, $txtTip)
$lblTrophyMax = GUICtrlCreateLabel(GetTranslated(19, 29, "When Trophies are Above"), $x + 145, $y, -1, -1)
$txtMaxTrophyAmount = GUICtrlCreateInput("3000", $x + 275, $y - 5, 50, 18, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
$txtTip = GetTranslated(19, 30, "Set the amount of Trophies to trigger switching Profile.")
_GUICtrlSetTip(-1, $txtTip)
GUICtrlSetLimit(-1, 4)
$y += 30
$chkTrophySwitchMin = GUICtrlCreateCheckbox(GetTranslated(19, 8, "Switch To"), $x - 10, $y - 5, -1, -1)
$txtTip = GetTranslated(19, 31, "Enable this to switch profiles when Trophies are below amount.")
_GUICtrlSetTip(-1, $txtTip)
$cmbTrophyMinProfile = GUICtrlCreateCombo("", $x + 60, $y - 5, 75, -1, BitOR($CBS_DROPDOWNLIST, $CBS_AUTOHSCROLL))
$txtTip = GetTranslated(19, 10, "Select which profile to be switched to when conditions met")
_GUICtrlSetTip(-1, $txtTip)
$lblTrophyMin = GUICtrlCreateLabel(GetTranslated(19, 32, "When Trophies are Below"), $x + 145, $y, -1, -1)
$txtMinTrophyAmount = GUICtrlCreateInput("1000", $x + 275, $y - 5, 50, 18, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
$txtTip = GetTranslated(19, 30, "Set the amount of Trophies to trigger switching Profile.")
_GUICtrlSetTip(-1, $txtTip)
GUICtrlSetLimit(-1, 4)
$picProfileTrophy = GUICtrlCreatePic(@ScriptDir & "\Images\TrophyLeague.jpg", $x + 350, $y - 40, 60, 60)
GUICtrlCreateGroup("", -99, -99, 1, 1)
setupProfileComboBoxswitch()

GUICtrlCreateTabItem("")

;~ -------------------------------------------------------------
;~ This dummy is used in btnStart and btnStop to disable/enable all labels, text, buttons etc. on all tabs.                   A LAISSER IMPERATIVEMENT !!!!!!!!!!!!!!
;~ -------------------------------------------------------------
Global $LastControlToHideMOD = GUICtrlCreateDummy()
Global $iPrevState[$LastControlToHideMOD + 1]
;~ -------------------------------------------------------------
$hGUI_MOD_TAB_ITEM3 = GUICtrlCreateTabItem(GetTranslated(106,1,"Chat"))

$chatIni = $sProfilePath & "\" & $sCurrProfile & "\chat.ini"
   ChatbotReadSettings()

	Local $x = 22, $y = 47   

   GUICtrlCreateGroup(GetTranslated(106, 2,"Global Chat"), $x - 20, $y - 20, 215, 360)
    $y -= 5
   $chkGlobalChat = GUICtrlCreateCheckbox("", $x - 10, $y, 13, 13)
	_GUICtrlSetTip($chkGlobalChat, GetTranslated(106, 4, "Use global chat to send messages"))
   GUICtrlSetState($chkGlobalChat, $ChatbotChatGlobal)
   GUICtrlSetOnEvent(-1, "ChatGuiCheckboxUpdate")
	GUICtrlCreateLabel(GetTranslated(106, 3, "Advertise in global"), $x + 7, $y, -1, -1)
	GUICtrlSetBkColor(-1, $GUI_BKCOLOR_TRANSPARENT)
   $y += 18
   $chkGlobalScramble = GUICtrlCreateCheckbox("", $x - 10, $y, 13, 13)
	_GUICtrlSetTip($chkGlobalScramble, GetTranslated(106, 6, "Scramble the message pieces defined in the textboxes below to be in a random order"))
   GUICtrlSetState($chkGlobalScramble, $ChatbotScrambleGlobal)
   GUICtrlSetOnEvent(-1, "ChatGuiCheckboxUpdate")
	GUICtrlCreateLabel(GetTranslated(106, 5, "Scramble global chats"), $x + 7, $y, -1, -1)
   $y += 18
   $chkSwitchLang = GUICtrlCreateCheckbox("", $x - 10, $y, 13, 13)
	_GUICtrlSetTip($chkSwitchLang, GetTranslated(106, 8, "Switch languages after spamming for a new global chatroom"))
   GUICtrlSetState($chkSwitchLang, $ChatbotSwitchLang)
   GUICtrlSetOnEvent(-1, "ChatGuiCheckboxUpdate")
	GUICtrlCreateLabel(GetTranslated(106, 7, "Switch languages"), $x + 7, $y, -1, -1)
	;======kychera===========
   $cmbLang = GUICtrlCreateCombo("", $x + 120, $y, 45, 45, BitOR($CBS_DROPDOWNLIST, $CBS_AUTOHSCROLL))
   GUICtrlSetData(-1, "FR|DE|ES|IT|NL|NO|PR|TR|RU", "RU")
   ;==========================
   $y += 22
  $ChatbotChatDelayLabel = GUICtrlCreateLabel(GetTranslated(106,9,"Chat Delay"), $x - 10, $y)
   GUICtrlSetTip($ChatbotChatDelayLabel, GetTranslated(106,10,"Delay chat between number of bot cycles"))
   $chkchatdelay = GUICtrlCreateInput("0", $x + 50, $y - 1, 35, 18, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
   GUICtrlSetLimit(-1, 2)
   $y += 20
   $editGlobalMessages1 = GUICtrlCreateEdit(_ArrayToString($GlobalMessages1, @CRLF), $x - 15, $y, 202, 65)
   GUICtrlSetTip($editGlobalMessages1, GetTranslated(106,11,"Take one item randomly from this list (one per line) and add it to create a message to send to global"))
   GUICtrlSetOnEvent(-1, "ChatGuiEditUpdate")
   $y += 65
   $editGlobalMessages2 = GUICtrlCreateEdit(_ArrayToString($GlobalMessages2, @CRLF), $x - 15, $y, 202, 65)
   GUICtrlSetTip($editGlobalMessages2, GetTranslated(106,12,"Take one item randomly from this list (one per line) and add it to create a message to send to global"))
   GUICtrlSetOnEvent(-1, "ChatGuiEditUpdate")
   $y += 65
   $editGlobalMessages3 = GUICtrlCreateEdit(_ArrayToString($GlobalMessages3, @CRLF), $x - 15, $y, 202, 65)
   GUICtrlSetTip($editGlobalMessages3, GetTranslated(106,13,"Take one item randomly from this list (one per line) and add it to create a message to send to global"))
   GUICtrlSetOnEvent(-1, "ChatGuiEditUpdate")
   $y += 65
   $editGlobalMessages4 = GUICtrlCreateEdit(_ArrayToString($GlobalMessages4, @CRLF), $x - 15, $y, 202, 55)
   GUICtrlSetTip($editGlobalMessages4, GetTranslated(106,14,"Take one item randomly from this list (one per line) and add it to create a message to send to global"))
   GUICtrlSetOnEvent(-1, "ChatGuiEditUpdate")
   $y += 65
   GUICtrlCreateGroup("", -99, -99, 1, 1)

	Local $x = 240, $y = 47

   GUICtrlCreateGroup(GetTranslated(106,15,"Clan Chat"), $x - 20, $y - 20, 218, 360)
   $y -= 5
   $chkClanChat = GUICtrlCreateCheckbox("", $x - 10, $y, 13, 13)
	_GUICtrlSetTip($chkClanChat, GetTranslated(106, 17, "Use clan chat to send messages"))
   GUICtrlSetState($chkClanChat, $ChatbotChatClan)
   GUICtrlSetOnEvent(-1, "ChatGuiCheckboxUpdate")
	GUICtrlCreateLabel(GetTranslated(106, 16, "Chat in clan chat") & ":", $x + 7, $y, -1, -1)
	$chkRusLang = GUICtrlCreateCheckbox(GetTranslated(106, 52, "Russian"), $x + 130, $y - 5)
   GUICtrlSetState(-1, $GUI_UNCHECKED)
   _GUICtrlSetTip(-1, GetTranslated(106,51, "On. Russian send text. Note: The input language in the Android emulator must be RUSSIAN."))
   ;GUICtrlSetOnEvent(-1, "chkRusLang")
   $y += 22
   $chkUseResponses = GUICtrlCreateCheckbox("", $x - 10, $y, 13, 13);GUICtrlCreateCheckbox(GetTranslated(106,18,"Use custom responses"), $x - 10, $y)
   GUICtrlSetTip($chkUseResponses, GetTranslated(106,19,"Use the keywords and responses defined below"))
   GUICtrlSetState($chkUseResponses, $ChatbotClanUseResponses)
   GUICtrlSetOnEvent(-1, "ChatGuiCheckboxUpdate")
   GUICtrlCreateLabel(GetTranslated(106,18,"Use custom responses"), $x + 7, $y, -1, -1)
   $y += 22
   $chkUseGeneric = GUICtrlCreateCheckbox("", $x - 10, $y, 13, 13)
   GUICtrlSetTip($chkUseGeneric, GetTranslated(106,25,"Use generic chats if reading the latest chat failed or there are no new chats"))
   GUICtrlSetState($chkUseGeneric, $ChatbotClanAlwaysMsg)
   GUICtrlSetOnEvent(-1, "ChatGuiCheckboxUpdate")
   GUICtrlCreateLabel(GetTranslated(106,24,"Use generic chats"), $x + 7, $y, -1, -1)
   $y += 22
   $chkChatPushbullet = GUICtrlCreateCheckbox("", $x - 10, $y, 13, 13)
   GUICtrlSetTip($chkChatPushbullet, GetTranslated(106,27,"Send and recieve chats via pushbullet or telegram. Use BOT <myvillage> GETCHATS <interval|NOW|STOP> to get the latest clan chat as an image, and BOT <myvillage> SENDCHAT <chat message> to send a chat to your clan"))
   GUICtrlSetState($chkChatPushbullet, $ChatbotUsePushbullet)
   GUICtrlSetOnEvent(-1, "ChatGuiCheckboxUpdate")
   GUICtrlCreateLabel(GetTranslated(106,26,"Use remote for chatting"), $x + 7, $y, -1, -1)
   $y += 22
   $chkPbSendNewChats = GUICtrlCreateCheckbox("", $x - 10, $y, 13, 13)
   GUICtrlSetTip($chkPbSendNewChats, GetTranslated(106,29,"Will send an image of your clan chat via pushbullet & telegram when a new chat is detected. Not guaranteed to be 100% accurate."))
   GUICtrlSetState($chkPbSendNewChats, $ChatbotPbSendNew)
   GUICtrlSetOnEvent(-1, "ChatGuiCheckboxUpdate")
   GUICtrlCreateLabel(GetTranslated(106,28,"Notify me new clan chat"), $x + 7, $y, -1, -1)
   $y += 25

   $editResponses = GUICtrlCreateEdit(_ArrayToString($ClanResponses, ":", -1, -1, @CRLF), $x - 15, $y, 206, 80)
   GUICtrlSetTip($editResponses, GetTranslated(106,30,"Look for the specified keywords in clan messages and respond with the responses. One item per line, in the format keyword:response"))
   GUICtrlSetOnEvent(-1, "ChatGuiEditUpdate")
   $y += 92
   $editGeneric = GUICtrlCreateEdit(_ArrayToString($ClanMessages, @CRLF), $x - 15, $y, 206, 80)
   GUICtrlSetTip($editGeneric, GetTranslated(106,31,"Generic messages to send, one per line"))
   GUICtrlSetOnEvent(-1, "ChatGuiEditUpdate")

   ChatGuicheckboxUpdateAT()
   GUICtrlCreateTabItem("")
