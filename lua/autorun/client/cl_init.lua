AddCSLuaFile("cl_matlib.lua")

concommand.Add("cg_fac_open", function()
    MatLib.SetThemeColor(Color(35, 35, 35))
    local frame = MatLib.Frame(492, 290, 1556, 832, "CG Faction Menu")
    -- local fw, fh = frame:GetSize()
    local close = MatLib.Button(frame, 710, 750, 176, 58, "Close")

    close.DoClick = function()
        frame:Close()
    end
end)

concommand.Add("matlib_settings", function()
    local frame = MatLib.Frame(-1, -1, ScrW() * 0.5, ScrH() * 0.7, "MatLib - Settings")
    local scroll = MatLib.ScrollPanel(frame, 0, frame:GetHeaderHeight(), frame:GetWide(), frame:GetTall() - frame:GetHeaderHeight())
    local infoItem = MatLib.ScrollItem(scroll, frame:GetTall() * 0.1)
    MatLib.HeaderText(infoItem, infoItem:GetWide() * 0.025, infoItem:GetTall() * 0.1, "Settings")
    MatLib.Text(infoItem, infoItem:GetWide() * 0.025, infoItem:GetTall() * 0.6, "This is the settings page. Edit MatLib to your liking here.")
    local darkTheme = MatLib.ScrollItem(scroll, frame:GetTall() * 0.1)
    MatLib.HeaderText(darkTheme, darkTheme:GetWide() * 0.025, darkTheme:GetTall() * 0.1, "Dark Theme")
    MatLib.Text(darkTheme, darkTheme:GetWide() * 0.025, darkTheme:GetTall() * 0.6, "Enables Dark Theme. Some items might require you to re-open the UI.")
    local darkThemeButton = MatLib.Switch(darkTheme, darkTheme:GetWide() * 0.85, darkTheme:GetTall() * 0.3, darkTheme:GetWide() * 0.1, darkTheme:GetTall() * 0.4, MatLib.Colors.DarkMode)

    darkThemeButton.DoClick = function(self)
        self.value = not self.value -- If you are overriding doClick, you MUST include this line.
        MatLib.SetDarkMode(self.value, false)
    end

    if (not _G.MatLib_Theme) then
        _G.MatLib_Theme = "Teal"
    end

    local colorBox = MatLib.ScrollItem(scroll, frame:GetTall() * 0.1)
    MatLib.HeaderText(colorBox, colorBox:GetWide() * 0.025, colorBox:GetTall() * 0.1, "Theme Color")
    MatLib.Text(colorBox, colorBox:GetWide() * 0.025, colorBox:GetTall() * 0.6, "The Theme Color for the UI.")

    local colorBoxField = MatLib.ComboBox(colorBox, colorBox:GetWide() * 0.85, colorBox:GetTall() * 0.3, colorBox:GetWide() * 0.1, colorBox:GetTall() * 0.4, _G.MatLib_Theme, {"Teal", "Orange", "Green", "Blue", "Cyan", "Purple", "Pink", "Red", "Black"})

    colorBoxField.OnSelect = function(self)
        _G.MatLib_Theme = self:GetSelected()
        local colors = {}
        colors["Teal"] = Color(0, 128, 128)
        colors["Orange"] = Color(255, 127, 50)
        colors["Green"] = Color(0, 200, 0)
        colors["Blue"] = Color(25, 0, 255)
        colors["Cyan"] = Color(0, 200, 200)
        colors["Purple"] = Color(150, 0, 255)
        colors["Pink"] = Color(255, 0, 255)
        colors["Red"] = Color(255, 50, 50)
        colors["Black"] = Color(0, 0, 0)
        MatLib.SetThemeColor(colors[_G.MatLib_Theme])
    end
end)

concommand.Add("close_settings", function()
    frame:SetVisible(false)
end)
-- concommand.Add("cg_fac_close", function()
--     MainFacMenu:SetVisible(false)
-- end)