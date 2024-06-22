function ShowReloadUIPopup()
    StaticPopupDialogs["RELOAD_UI"] = {
        text = "Settings have been applied. You need to reload the UI for changes to take effect. Do you want to reload now?",
        button1 = "Yes",
        button2 = "No",
        OnAccept = function()
            ReloadUI()
        end,
        timeout = 0,
        whileDead = true,
        hideOnEscape = true,
        preferredIndex = 3
    }
    StaticPopup_Show("RELOAD_UI")
end
