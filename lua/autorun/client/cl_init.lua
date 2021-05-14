AddCSLuaFile("cl_matlib.lua")
concommand.Add("cg_fac_open", function()
    local frame = MatLib.Frame(-1, -1, ScrW() * 0.4, ScrH() * 0.3, "Daily Fact")
    local fw,fh = frame:GetSize()

    MatLib.HeaderText(frame, fw * 0.05, fh * 0.2, "CG Faction Menu")
    local close = MatLib.Button(frame, fw * 0.05, fh * 0.825, fw * 0.4, fh * 0.1, "Close")
    close.DoClick = function()
        frame:Close()
    end
end)

-- concommand.Add("cg_fac_close", function()
--     MainFacMenu:SetVisible(false)
-- end)