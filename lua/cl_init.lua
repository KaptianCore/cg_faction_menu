AddCSLuaFile("vgui/menu_main.lua")

net.Recieve("openfacmenu", function()
    if (!faction_menu) then
        faction_menu = vgui.Create("faction_menu")
        faction_menu:SetVisible(false)
    end
    if (faction_menu:IsVisible()) then
        faction_menu:SetVisible(false)
    else
        faction_menu:SetVisible(true)
    end
end)