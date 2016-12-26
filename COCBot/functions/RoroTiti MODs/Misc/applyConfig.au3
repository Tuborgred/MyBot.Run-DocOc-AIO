; #FUNCTION# ====================================================================================================================
; Name ..........: applyConfig.au3
; Description ...: Applies all of the  variable to the GUI
; Syntax ........: applyConfig()
; Parameters ....: $bRedrawAtExit = True, redraws bot window after config was applied
; Return values .: NA
; Author ........:
; Modified ......:
; Remarks .......: This file is part of MyBot, previously known as ClashGameBot. Copyright 2015-2016
;                  MyBot is distributed under the terms of the GNU GPL
; Related .......:
; Link ..........: https://github.com/MyBotRun/MyBot/wiki
; Example .......: No
; ===============================================================================================================================

; Multi Finger (LunaEclipse) added rulesss
_GUICtrlComboBox_SetCurSel($cmbDBMultiFinger, $iMultiFingerStyle)
cmbDBMultiFinger()

cmbDeployAB()
cmbDeployDB()

_GUICtrlComboBox_SetCurSel($cmbCSVSpeed[$LB], $icmbCSVSpeed[$LB])
_GUICtrlComboBox_SetCurSel($cmbCSVSpeed[$DB], $icmbCSVSpeed[$DB])

If $iRadio_Army12 = 1 Then
	GUICtrlSetState($hRadio_Army12, $GUI_CHECKED)
Else
	GUICtrlSetState($hRadio_Army12, $GUI_UNCHECKED)
EndIf

If $iRadio_Army123 = 1 Then
	GUICtrlSetState($hRadio_Army123, $GUI_CHECKED)
Else
	GUICtrlSetState($hRadio_Army123, $GUI_UNCHECKED)
EndIf

If $iRadio_ArmyRandom = 1 Then
	GUICtrlSetState($hRadio_ArmyRandom, $GUI_CHECKED)
Else
	GUICtrlSetState($hRadio_ArmyRandom, $GUI_UNCHECKED)
EndIf

;Tresorerie
If $ichkCollectTresory = 1 Then
	GUICtrlSetState($chkCollectTresory, $GUI_CHECKED)
	GUICtrlSetData($txtTreasuryGold, $itxtTreasuryGold)
	GUICtrlSetData($txtTreasuryElixir, $itxtTreasuryElixir)
	GUICtrlSetData($txtTreasuryDark, $itxtTreasuryDark)
	For $i = $leurequisertarienTresor To $btnResetDE
		GUICtrlSetState($i, $GUI_SHOW)
	Next
Else
	GUICtrlSetState($chkCollectTresory, $GUI_UNCHECKED)
	GUICtrlSetData($txtTreasuryGold, $itxtTreasuryGold)
	GUICtrlSetData($txtTreasuryElixir, $itxtTreasuryElixir)
	GUICtrlSetData($txtTreasuryDark, $itxtTreasuryDark)
	For $i = $leurequisertarienTresor To $btnResetDE
		GUICtrlSetState($i, $GUI_HIDE)
	Next
EndIf

If $ichkCollectTresoryGold = 1 Then
	GUICtrlSetState($chkCollectTresoryGold, $GUI_CHECKED)
	GUICtrlSetState($txtTreasuryGold, $GUI_SHOW)
	GUICtrlSetState($eIcnGold, $GUI_SHOW)
	GUICtrlSetState($btnResetOR, $GUI_SHOW)
Else
	GUICtrlSetState($chkCollectTresoryGold, $GUI_UNCHECKED)
EndIf
chkCollectTresoryGold()

If $ichkCollectTresoryElixir = 1 Then
	GUICtrlSetState($chkCollectTresoryElixir, $GUI_CHECKED)
Else
	GUICtrlSetState($chkCollectTresoryElixir, $GUI_UNCHECKED)
EndIf
chkCollectTresoryElixir()

If $ichkCollectTresoryDark = 1 Then
	GUICtrlSetState($chkCollectTresoryDark, $GUI_CHECKED)
Else
	GUICtrlSetState($chkCollectTresoryDark, $GUI_UNCHECKED)
EndIf
chkCollectTresoryDark()
chkCollectTresory()

If $ichkTRFull = 1 Then
	GUICtrlSetState($chkTRFull, $GUI_CHECKED)
Else
	GUICtrlSetState($chkTRFull, $GUI_UNCHECKED)
EndIf

If $ichkSmartUpgrade = 1 Then
	GUICtrlSetState($chkSmartUpgrade, $GUI_CHECKED)
Else
	GUICtrlSetState($chkSmartUpgrade, $GUI_UNCHECKED)
EndIf
chkSmartUpgrade()

GUICtrlSetData($SmartMinGold, $iSmartMinGold)
GUICtrlSetData($SmartMinElixir, $iSmartMinElixir)
GUICtrlSetData($SmartMinDark, $iSmartMinDark)

If $ichkIgnoreTH = 1 Then
	GUICtrlSetState($chkIgnoreTH, $GUI_CHECKED)
Else
	GUICtrlSetState($chkIgnoreTH, $GUI_UNCHECKED)
EndIf

If $ichkIgnoreKing = 1 Then
	GUICtrlSetState($chkIgnoreKing, $GUI_CHECKED)
Else
	GUICtrlSetState($chkIgnoreKing, $GUI_UNCHECKED)
EndIf

If $ichkIgnoreQueen = 1 Then
	GUICtrlSetState($chkIgnoreQueen, $GUI_CHECKED)
Else
	GUICtrlSetState($chkIgnoreQueen, $GUI_UNCHECKED)
EndIf

If $ichkIgnoreWarden = 1 Then
	GUICtrlSetState($chkIgnoreWarden, $GUI_CHECKED)
Else
	GUICtrlSetState($chkIgnoreWarden, $GUI_UNCHECKED)
EndIf

If $ichkIgnoreCC = 1 Then
	GUICtrlSetState($chkIgnoreCC, $GUI_CHECKED)
Else
	GUICtrlSetState($chkIgnoreCC, $GUI_UNCHECKED)
EndIf

If $ichkIgnoreLab = 1 Then
	GUICtrlSetState($chkIgnoreLab, $GUI_CHECKED)
Else
	GUICtrlSetState($chkIgnoreLab, $GUI_UNCHECKED)
EndIf

If $ichkIgnoreBarrack = 1 Then
	GUICtrlSetState($chkIgnoreBarrack, $GUI_CHECKED)
Else
	GUICtrlSetState($chkIgnoreBarrack, $GUI_UNCHECKED)
EndIf

If $ichkIgnoreDBarrack = 1 Then
	GUICtrlSetState($chkIgnoreDBarrack, $GUI_CHECKED)
Else
	GUICtrlSetState($chkIgnoreDBarrack, $GUI_UNCHECKED)
EndIf

If $ichkIgnoreFactory = 1 Then
	GUICtrlSetState($chkIgnoreFactory, $GUI_CHECKED)
Else
	GUICtrlSetState($chkIgnoreFactory, $GUI_UNCHECKED)
EndIf

If $ichkIgnoreDFactory = 1 Then
	GUICtrlSetState($chkIgnoreDFactory, $GUI_CHECKED)
Else
	GUICtrlSetState($chkIgnoreDFactory, $GUI_UNCHECKED)
EndIf

If $ichkIgnoreGColl = 1 Then
	GUICtrlSetState($chkIgnoreGColl, $GUI_CHECKED)
Else
	GUICtrlSetState($chkIgnoreGColl, $GUI_UNCHECKED)
EndIf

If $ichkIgnoreEColl = 1 Then
	GUICtrlSetState($chkIgnoreEColl, $GUI_CHECKED)
Else
	GUICtrlSetState($chkIgnoreEColl, $GUI_UNCHECKED)
EndIf

If $ichkIgnoreDColl = 1 Then
	GUICtrlSetState($chkIgnoreDColl, $GUI_CHECKED)
Else
	GUICtrlSetState($chkIgnoreDColl, $GUI_UNCHECKED)
EndIf


If $ichkCoCStats = 1 Then
	GUICtrlSetState($chkCoCStats, $GUI_CHECKED)
Else
	GUICtrlSetState($chkCoCStats, $GUI_UNCHECKED)
EndIf
GUICtrlSetData($txtAPIKey, $MyApiKey)
chkCoCStats()

chkSmartUpgrade()

; Profile Switch
If $ichkGoldSwitchMax = 1 Then
	GUICtrlSetState($chkGoldSwitchMax, $GUI_CHECKED)
Else
	GUICtrlSetState($chkGoldSwitchMax, $GUI_UNCHECKED)
EndIf
_GUICtrlComboBox_SetCurSel($cmbGoldMaxProfile, $icmbGoldMaxProfile)
GUICtrlSetData($txtMaxGoldAmount, $itxtMaxGoldAmount)
If $ichkGoldSwitchMin = 1 Then
	GUICtrlSetState($chkGoldSwitchMin, $GUI_CHECKED)
Else
	GUICtrlSetState($chkGoldSwitchMin, $GUI_UNCHECKED)
EndIf
_GUICtrlComboBox_SetCurSel($cmbGoldMinProfile, $icmbGoldMinProfile)
GUICtrlSetData($txtMinGoldAmount, $itxtMinGoldAmount)

If $ichkElixirSwitchMax = 1 Then
	GUICtrlSetState($chkElixirSwitchMax, $GUI_CHECKED)
Else
	GUICtrlSetState($chkElixirSwitchMax, $GUI_UNCHECKED)
EndIf
_GUICtrlComboBox_SetCurSel($cmbElixirMaxProfile, $icmbElixirMaxProfile)
GUICtrlSetData($txtMaxElixirAmount, $itxtMaxElixirAmount)
If $ichkElixirSwitchMin = 1 Then
	GUICtrlSetState($chkElixirSwitchMin, $GUI_CHECKED)
Else
	GUICtrlSetState($chkElixirSwitchMin, $GUI_UNCHECKED)
EndIf
_GUICtrlComboBox_SetCurSel($cmbElixirMinProfile, $icmbElixirMinProfile)
GUICtrlSetData($txtMinElixirAmount, $itxtMinElixirAmount)

If $ichkDESwitchMax = 1 Then
	GUICtrlSetState($chkDESwitchMax, $GUI_CHECKED)
Else
	GUICtrlSetState($chkDESwitchMax, $GUI_UNCHECKED)
EndIf
_GUICtrlComboBox_SetCurSel($cmbDEMaxProfile, $icmbDEMaxProfile)
GUICtrlSetData($txtMaxDEAmount, $itxtMaxDEAmount)
If $ichkDESwitchMin = 1 Then
	GUICtrlSetState($chkDESwitchMin, $GUI_CHECKED)
Else
	GUICtrlSetState($chkDESwitchMin, $GUI_UNCHECKED)
EndIf
_GUICtrlComboBox_SetCurSel($cmbDEMinProfile, $icmbDEMinProfile)
GUICtrlSetData($txtMinDEAmount, $itxtMinDEAmount)

If $ichkTrophySwitchMax = 1 Then
	GUICtrlSetState($chkTrophySwitchMax, $GUI_CHECKED)
Else
	GUICtrlSetState($chkTrophySwitchMax, $GUI_UNCHECKED)
EndIf
_GUICtrlComboBox_SetCurSel($cmbTrophyMaxProfile, $icmbTrophyMaxProfile)
GUICtrlSetData($txtMaxTrophyAmount, $itxtMaxTrophyAmount)
If $ichkTrophySwitchMin = 1 Then
	GUICtrlSetState($chkTrophySwitchMin, $GUI_CHECKED)
Else
	GUICtrlSetState($chkTrophySwitchMin, $GUI_UNCHECKED)
EndIf
_GUICtrlComboBox_SetCurSel($cmbTrophyMinProfile, $icmbTrophyMinProfile)
GUICtrlSetData($txtMinTrophyAmount, $itxtMinTrophyAmount)

_GUICtrlSlider_SetPos($sldrTransparancyShield, $AndroidShieldTransparency)
_GUICtrlSlider_SetPos($sldrTransparancyIdleShield, $AndroidInactiveTransparency)

If $ichkAutoHide = 1 Then
	GUICtrlSetState($chkAutoHide, $GUI_CHECKED)
Else
	GUICtrlSetState($chkAutoHide, $GUI_UNCHECKED)
EndIf
GUICtrlSetData($txtAutoHideDelay, $ichkAutoHideDelay)
chkAutoHide()

; SSA

If $ichkSwitchAccount = 1 Then
	GUICtrlSetState($chkEnableSwitchAccount, $GUI_CHECKED)
Else
	GUICtrlSetState($chkEnableSwitchAccount, $GUI_UNCHECKED)
EndIf
_GUICtrlComboBox_SetCurSel($cmbAccountsQuantity, $icmbAccountsQuantity)

For $i = 1 To 5
	If $ichkCanUse[$i] = 1 Then
		GUICtrlSetState($chkCanUse[$i], $GUI_CHECKED)
	Else
		GUICtrlSetState($chkCanUse[$i], $GUI_UNCHECKED)
	EndIf
	If $ichkDonateAccount[$i] = 1 Then
		GUICtrlSetState($chkDonateAccount[$i], $GUI_CHECKED)
	Else
		GUICtrlSetState($chkDonateAccount[$i], $GUI_UNCHECKED)
	EndIf
	_GUICtrlComboBox_SetCurSel($cmbAccount[$i], $icmbAccount[$i])
Next

chkSwitchAccount()

    ;Forecast Added by rulesss
	GUICtrlSetData($txtForecastBoost, $iTxtForecastBoost)
	If $iChkForecastBoost = 1 Then
		GUICtrlSetState($chkForecastBoost, $GUI_CHECKED)
	Else
		GUICtrlSetState($chkForecastBoost, $GUI_UNCHECKED)
	EndIf
	chkForecastBoost()

	If $ichkForecastHopingSwitchMax = 1 Then
		GUICtrlSetState($chkForecastHopingSwitchMax, $GUI_CHECKED)
	Else
		GUICtrlSetState($chkForecastHopingSwitchMax, $GUI_UNCHECKED)
	EndIf
	_GUICtrlComboBox_SetCurSel($cmbForecastHopingSwitchMax, $icmbForecastHopingSwitchMax)
	GUICtrlSetData($txtForecastHopingSwitchMax, $itxtForecastHopingSwitchMax)
	chkForecastHopingSwitchMax()

	If $ichkForecastHopingSwitchMin = 1 Then
		GUICtrlSetState($chkForecastHopingSwitchMin, $GUI_CHECKED)
	Else
		GUICtrlSetState($chkForecastHopingSwitchMin, $GUI_UNCHECKED)
	EndIf
	_GUICtrlComboBox_SetCurSel($cmbForecastHopingSwitchMin, $icmbForecastHopingSwitchMin)
	GUICtrlSetData($txtForecastHopingSwitchMin, $itxtForecastHopingSwitchMin)
	chkForecastHopingSwitchMin()
	;Added Multi Switch Language by rulesss and Kychera
	_GUICtrlComboBox_SetCurSel($cmbSwLang, $icmbSwLang)
	$icmbSwLang = _GUICtrlComboBox_GetCurSel($cmbSwLang)