function MainFacMenu_Create()
    MainFacMenu = vgui.Create("DFrame")
    MainFacMenu:SetPos(512, 67)
    MainFacMenu:SetSize(1536, 832)
    MainFacMenu:SetTitle("CG Faction Menu")
    MainFacMenu:SetVisible(false)
    MainFacMenu:SetDraggable(false)
    MainFacMenu:ShowCloseButton(true)
    MainFacMenu:SetBackgroundBlur(false)
    MainFacMenu:MakePopup()
    close_button = vgui.Create("DButton", MainFacMenu)
    close_button:SetText("Close")
    close_button:SetPos(1191, 1058)
    close_button:SetSize(176, 58)
    close_button.DoClick = function()
        MainFacMenu:SetVisible(false)
    end
    -- MainFacMenu.Paint = function()
    --     MainFacMenu.DrawTexturedRect(512, 290, 1536, 70)
    -- end
end

function USFac_Menu_Create()
    USFac_Menu = vgui.Create("DFrame")
    USFac_Menu:SetPos(512, 67)
    USFac_Menu:SetSize(1536, 832)
    USFac_Menu:SetTitle("The United States Army")
    USFac_Menu:SetVisible(false)
    USFac_Menu:SetDraggable(false)
    USFac_Menu:ShowCloseButton(true)
    USFac_Menu:SetBackgroundBlur(false)
    USFac_Menu:MakePopup()
    back_button = vgui.Create("DButton", USFac_Menu)
    back_button:SetText("Back")
    back_button:SetPos(1083, 1192)
    back_button:SetSize(176, 58)

    back_button.DoClick = function()
        USFac_Menu:SetVisible(false)
        MainFacMenu:SetVisible(true)
    end

    join_button = vgui.Create("DButton", USFac_Menu)
    join_button:SetText("Join")
    join_button:SetPos(1301, 1192)
    join_button:SetSize(176, 58)

    join_button.DoClick = function()
        USFac_Menu:SetVisible(false)
    end
    -- Also Join The Team Etc
end

hook.Add("Initialize", "InitGUI", MainFacMenu_Create())

concommand.Add("cg_fac_open", function()
    MainFacMenu:SetVisible(true)
end)

concommand.Add("cg_fac_close", function()
    MainFacMenu:SetVisible(false)
end)