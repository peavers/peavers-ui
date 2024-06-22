function ApplyBlizzardUILayout()

    local layoutData = "1 39 0 0 1 7 7 UIParent 0.0 45.0 -1 ##$$%/&('%)#+#,$ 0 1 1 7 7 UIParent 0.0 45.0 -1 ##$$%/&('%(#,$ 0 2 1 7 7 UIParent 0.0 45.0 -1 ##$$%/&('%(#,$ 0 3 1 5 5 UIParent -5.0 -77.0 -1 #$$$%/&('%(#,$ 0 4 1 5 5 UIParent -5.0 -77.0 -1 #$$$%/&('%(#,$ 0 5 1 1 4 UIParent 0.0 0.0 -1 ##$$%/&('%(#,$ 0 6 1 1 4 UIParent 0.0 -50.0 -1 ##$$%/&('%(#,$ 0 7 1 1 4 UIParent 0.0 -100.0 -1 ##$$%/&('%(#,$ 0 10 1 7 7 UIParent 0.0 45.0 -1 ##$$&('% 0 11 1 7 7 UIParent 0.0 45.0 -1 ##$$&('%,# 0 12 1 7 7 UIParent 0.0 45.0 -1 ##$$&('% 1 -1 1 4 4 UIParent 0.0 0.0 -1 ##$#%# 2 -1 1 2 2 UIParent 0.0 0.0 -1 ##$#%# 3 0 0 0 0 UIParent -10.0 -10.5 -1 $#3# 3 1 0 6 8 PlayerFrame -34.0 -1.0 -1 %#3# 3 2 0 1 1 UIParent -646.5 -108.0 -1 %#&#3# 3 3 1 0 2 CompactRaidFrameManager 0.0 -7.0 -1 '#(#)#-#.#/#1$3# 3 4 1 0 2 CompactRaidFrameManager 0.0 -5.0 -1 ,#-#.#/#0#1#2( 3 5 1 5 5 UIParent 0.0 0.0 -1 &#*$3# 3 6 1 5 5 UIParent 0.0 0.0 -1 -#.#/#4& 3 7 1 4 4 UIParent 0.0 0.0 -1 3# 4 -1 0 1 1 UIParent 7.7 -62.8 -1 # 5 -1 1 7 7 UIParent 0.0 45.0 -1 # 6 0 0 2 2 UIParent -182.7 -3.5 -1 ##$#%#&5(&)( 6 1 0 1 1 UIParent 760.0 -102.0 -1 ##$#%#'+(&)( 7 -1 0 1 1 UIParent 4.5 -5.6 -1 # 8 -1 0 1 1 UIParent -862.0 -1062.0 -1 #'$A%$&7 9 -1 1 7 7 UIParent 0.0 45.0 -1 # 10 -1 1 0 0 UIParent 16.0 -116.0 -1 # 11 -1 1 8 8 UIParent -9.0 85.0 -1 # 12 -1 0 5 5 UIParent -2.0 -52.6 -1 #P$# 13 -1 0 3 3 UIParent 1468.7 -379.8 -1 ##$#%)&- 14 -1 1 2 2 MicroButtonAndBagsBar 0.0 0.0 -1 ##$#%( 15 0 1 7 7 StatusTrackingBarManager 0.0 0.0 -1 # 15 1 1 7 7 StatusTrackingBarManager 0.0 17.0 -1 # 16 -1 1 5 5 UIParent 0.0 0.0 -1 #( 17 -1 1 1 1 UIParent 0.0 -100.0 -1 ## 18 -1 1 5 5 UIParent 0.0 0.0 -1 #- 19 -1 1 7 7 UIParent 0.0 0.0 -1 ##"

    if not EditModeManagerFrame then
        print("Blizzard Edit Mode is not available")
        return
    end

    -- The API function to import the layout
    C_EditMode.ImportLayout(layoutData)

    print("Blizzard UI layout imported successfully")
end
