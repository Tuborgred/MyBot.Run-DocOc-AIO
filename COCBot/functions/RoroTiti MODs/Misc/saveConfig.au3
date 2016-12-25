; #FUNCTION# ====================================================================================================================
; Name ..........: saveConfig.au3
; Description ...: Saves all of the GUI values to the config.ini and building.ini files
; Syntax ........: saveConfig()
; Parameters ....: NA
; Return values .: NA
; Author ........:
; Modified ......:
; Remarks .......: This file is part of MyBot, previously known as ClashGameBot. Copyright 2015-2016
;                  MyBot is distributed under the terms of the GNU GPL
; Related .......:
; Link ..........: https://github.com/MyBotRun/MyBot/wiki
; Example .......: No
; ===============================================================================================================================

; Config for Adding Quicktrain Combo - DEMEN
If GUICtrlRead($hRadio_Army12) = $GUI_CHECKED Then
	IniWriteS($config, "troop", "QuickTrain12", 1)
Else
	IniWriteS($config, "troop", "QuickTrain12", 0)
EndIf

If GUICtrlRead($hRadio_Army123) = $GUI_CHECKED Then
	IniWriteS($config, "troop", "QuickTrain123", 1)
Else
	IniWriteS($config, "troop", "QuickTrain123", 0)
EndIf

If GUICtrlRead($hRadio_ArmyRandom) = $GUI_CHECKED Then
	IniWriteS($config, "troop", "QuickTrainRandom", 1)
Else
	IniWriteS($config, "troop", "QuickTrainRandom", 0)
EndIf

; Multi Finger (LunaEclipse) added rulesss
IniWrite($config, "MultiFinger", "Select", $iMultiFingerStyle)

IniWrite($config, "upgrade", "chkSmartUpgrade", $ichkSmartUpgrade)
IniWrite($config, "upgrade", "chkIgnoreTH", $ichkIgnoreTH)
IniWrite($config, "upgrade", "chkIgnoreKing", $ichkIgnoreKing)
IniWrite($config, "upgrade", "chkIgnoreQueen", $ichkIgnoreQueen)
IniWrite($config, "upgrade", "chkIgnoreWarden", $ichkIgnoreWarden)
IniWrite($config, "upgrade", "chkIgnoreCC", $ichkIgnoreCC)
IniWrite($config, "upgrade", "chkIgnoreLab", $ichkIgnoreLab)
IniWrite($config, "upgrade", "chkIgnoreBarrack", $ichkIgnoreBarrack)
IniWrite($config, "upgrade", "chkIgnoreDBarrack", $ichkIgnoreDBarrack)
IniWrite($config, "upgrade", "chkIgnoreFactory", $ichkIgnoreFactory)
IniWrite($config, "upgrade", "chkIgnoreDFactory", $ichkIgnoreDFactory)
IniWrite($config, "upgrade", "chkIgnoreGColl", $ichkIgnoreGColl)
IniWrite($config, "upgrade", "chkIgnoreEColl", $ichkIgnoreEColl)
IniWrite($config, "upgrade", "chkIgnoreDColl", $ichkIgnoreDColl)
IniWrite($config, "upgrade", "SmartMinGold", GUICtrlRead($SmartMinGold))
IniWrite($config, "upgrade", "SmartMinElixir", GUICtrlRead($SmartMinElixir))
IniWrite($config, "upgrade", "SmartMinDark", GUICtrlRead($SmartMinDark))

If GUICtrlRead($chkCoCStats) = $GUI_CHECKED Then
	IniWrite($config, "Stats", "chkCoCStats", "1")
Else
	IniWrite($config, "Stats", "chkCoCStats", "0")
EndIf
IniWrite($config, "Stats", "txtAPIKey", GUICtrlRead($txtAPIKey))

;Tresorerie
If GUICtrlRead($chkCollectTresory) = $GUI_CHECKED Then
	IniWrite($config, "other", "CollectTresory", 1)
	IniWrite($config, "other", "treasuryGold", GUICtrlRead($txtTreasuryGold))
	IniWrite($config, "other", "treasuryElixir", GUICtrlRead($txtTreasuryElixir))
	IniWrite($config, "other", "treasuryDark", GUICtrlRead($txtTreasuryDark))
Else
	IniWrite($config, "other", "CollectTresory", 0)
	IniWrite($config, "other", "treasuryGold", GUICtrlRead($txtTreasuryGold))
	IniWrite($config, "other", "treasuryElixir", GUICtrlRead($txtTreasuryElixir))
	IniWrite($config, "other", "treasuryDark", GUICtrlRead($txtTreasuryDark))
EndIf

If GUICtrlRead($chkCollectTresoryGold) = $GUI_CHECKED Then
	IniWrite($config, "other", "CollectTresoryGold", 1)
Else
	IniWrite($config, "other", "CollectTresoryGold", 0)
EndIf

If GUICtrlRead($chkCollectTresoryElixir) = $GUI_CHECKED Then
	IniWrite($config, "other", "CollectTresoryElixir", 1)
Else
	IniWrite($config, "other", "CollectTresoryElixir", 0)
EndIf

If GUICtrlRead($chkCollectTresoryDark) = $GUI_CHECKED Then
	IniWrite($config, "other", "CollectTresoryDark", 1)
Else
	IniWrite($config, "other", "CollectTresoryDark", 0)
EndIf

If GUICtrlRead($chkTRFull) = $GUI_CHECKED Then
	IniWrite($config, "other", "chkTRFull", 1)
Else
	IniWrite($config, "other", "chkTRFull", 0)
EndIf

IniWrite($config, "DeploymentSpeed", "LB", _GUICtrlComboBox_GetCurSel($cmbCSVSpeed[$LB]))
IniWrite($config, "DeploymentSpeed", "DB", _GUICtrlComboBox_GetCurSel($cmbCSVSpeed[$DB]))

If GUICtrlRead($chkAutoHide) = $GUI_CHECKED Then
	$ichkAutoHide = 1
Else
	$ichkAutoHide = 0
EndIf
$ichkAutoHideDelay = GUICtrlRead($txtAutoHideDelay)

IniWriteS($config, "general", "AutoHide", $ichkAutoHide)
IniWriteS($config, "general", "AutoHideDelay", $ichkAutoHideDelay)

; Profile Switch Settings
If GUICtrlRead($chkGoldSwitchMax) = $GUI_CHECKED Then
	IniWrite($config, "profiles", "chkGoldSwitchMax", 1)
Else
	IniWrite($config, "profiles", "chkGoldSwitchMax", 0)
EndIf
IniWrite($config, "profiles", "cmbGoldMaxProfile", _GUICtrlComboBox_GetCurSel($cmbGoldMaxProfile))
IniWrite($config, "profiles", "txtMaxGoldAmount", GUICtrlRead($txtMaxGoldAmount))

If GUICtrlRead($chkGoldSwitchMin) = $GUI_CHECKED Then
	IniWrite($config, "profiles", "chkGoldSwitchMin", 1)
Else
	IniWrite($config, "profiles", "chkGoldSwitchMin", 0)
EndIf
IniWrite($config, "profiles", "cmbGoldMinProfile", _GUICtrlComboBox_GetCurSel($cmbGoldMinProfile))
IniWrite($config, "profiles", "txtMinGoldAmount", GUICtrlRead($txtMinGoldAmount))

If GUICtrlRead($chkElixirSwitchMax) = $GUI_CHECKED Then
	IniWrite($config, "profiles", "chkElixirSwitchMax", 1)
Else
	IniWrite($config, "profiles", "chkElixirSwitchMax", 0)
EndIf
IniWrite($config, "profiles", "cmbElixirMaxProfile", _GUICtrlComboBox_GetCurSel($cmbElixirMaxProfile))
IniWrite($config, "profiles", "txtMaxElixirAmount", GUICtrlRead($txtMaxElixirAmount))

If GUICtrlRead($chkElixirSwitchMin) = $GUI_CHECKED Then
	IniWrite($config, "profiles", "chkElixirSwitchMin", 1)
Else
	IniWrite($config, "profiles", "chkElixirSwitchMin", 0)
EndIf
IniWrite($config, "profiles", "cmbElixirMinProfile", _GUICtrlComboBox_GetCurSel($cmbElixirMinProfile))
IniWrite($config, "profiles", "txtMinElixirAmount", GUICtrlRead($txtMinElixirAmount))

If GUICtrlRead($chkDESwitchMax) = $GUI_CHECKED Then
	IniWrite($config, "profiles", "chkDESwitchMax", 1)
Else
	IniWrite($config, "profiles", "chkDESwitchMax", 0)
EndIf
IniWrite($config, "profiles", "cmbDEMaxProfile", _GUICtrlComboBox_GetCurSel($cmbDEMaxProfile))
IniWrite($config, "profiles", "txtMaxDEAmount", GUICtrlRead($txtMaxDEAmount))

If GUICtrlRead($chkDESwitchMin) = $GUI_CHECKED Then
	IniWrite($config, "profiles", "chkDESwitchMin", 1)
Else
	IniWrite($config, "profiles", "chkDESwitchMin", 0)
EndIf
IniWrite($config, "profiles", "cmbDEMinProfile", _GUICtrlComboBox_GetCurSel($cmbDEMinProfile))
IniWrite($config, "profiles", "txtMinDEAmount", GUICtrlRead($txtMinDEAmount))

If GUICtrlRead($chkTrophySwitchMax) = $GUI_CHECKED Then
	IniWrite($config, "profiles", "chkTrophySwitchMax", 1)
Else
	IniWrite($config, "profiles", "chkTrophySwitchMax", 0)
EndIf
IniWrite($config, "profiles", "cmbTrophyMaxProfile", _GUICtrlComboBox_GetCurSel($cmbTrophyMaxProfile))
IniWrite($config, "profiles", "txtMaxTrophyAmount", GUICtrlRead($txtMaxTrophyAmount))

If GUICtrlRead($chkTrophySwitchMin) = $GUI_CHECKED Then
	IniWrite($config, "profiles", "chkTrophySwitchMin", 1)
Else
	IniWrite($config, "profiles", "chkTrophySwitchMin", 0)
EndIf
IniWrite($config, "profiles", "cmbTrophyMinProfile", _GUICtrlComboBox_GetCurSel($cmbTrophyMinProfile))
IniWrite($config, "profiles", "txtMinTrophyAmount", GUICtrlRead($txtMinTrophyAmount))

; SSA
IniWrite($SSAConfig, "SwitchAccount", "chkEnableSwitchAccount", $ichkSwitchAccount)
IniWrite($SSAConfig, "SwitchAccount", "cmbAccountsQuantity", _GUICtrlComboBox_GetCurSel($cmbAccountsQuantity))
For $i = 1 To 5
	IniWrite($SSAConfig, "SwitchAccount", "chkCanUse[" & $i & "]", $ichkCanUse[$i])
	IniWrite($SSAConfig, "SwitchAccount", "chkDonateAccount[" & $i & "]", $ichkDonateAccount[$i])
	IniWrite($SSAConfig, "SwitchAccount", "cmbAccount[" & $i & "]", _GUICtrlComboBox_GetCurSel($cmbAccount[$i]))
Next

    ;forecast
	IniWrite($config, "forecast", "txtForecastBoost", GUICtrlRead($txtForecastBoost))

	If GUICtrlRead($chkForecastBoost) = $GUI_CHECKED Then
		IniWrite($config, "forecast", "chkForecastBoost", 1)
	Else
		IniWrite($config, "forecast", "chkForecastBoost", 0)
	EndIf

	If GUICtrlRead($chkForecastHopingSwitchMax) = $GUI_CHECKED Then
		IniWrite($config, "profiles", "chkForecastHopingSwitchMax", 1)
	Else
		IniWrite($config, "profiles", "chkForecastHopingSwitchMax", 0)
	EndIf
	IniWrite($config, "profiles", "cmbForecastHopingSwitchMax", _GUICtrlComboBox_GetCurSel($cmbForecastHopingSwitchMax))
	IniWrite($config, "profiles", "txtForecastHopingSwitchMax", GUICtrlRead($txtForecastHopingSwitchMax))

	If GUICtrlRead($chkForecastHopingSwitchMin) = $GUI_CHECKED Then
		IniWrite($config, "profiles", "chkForecastHopingSwitchMin", 1)
	Else
		IniWrite($config, "profiles", "chkForecastHopingSwitchMin", 0)
	EndIf
	IniWrite($config, "profiles", "cmbForecastHopingSwitchMin", _GUICtrlComboBox_GetCurSel($cmbForecastHopingSwitchMin))
	IniWrite($config, "profiles", "txtForecastHopingSwitchMin", GUICtrlRead($txtForecastHopingSwitchMin))