local FacMenu_Main = {
    Init = function(self)
        self:SetSize(1536, 832)
        self:Center()
        self:SetVisible()
        self:MakePopup()
        local x,y = self:GetSize()
        local button_close = vgui.Create("DButton", self)
        button_close:SetText("Close")
        button:SetSize(110, 26)
        button_close:SetPos(125,212)
        button.DoClick = function()
            self:SetVisible(false)
        end
    end,

    Paint = function(self,w,h)
        draw.RoundedBox(0, 512, 290, 1536, 832, Color(35,35,35,0))
        surface.SetDrawColor(35, 35, 35)
    end
}
vgui.Register("faction_menu", FacMenu_Main)

local us_menu = {
    Init = function(self)
        self:SetSize(1536, 832)
        self:Center()
        self:SetVisible()
        self:MakePopup()
        local x,y = self:GetSize()
        local button_join = vgui.Create("DButton", self)
        button_join:SetText("Close")
        button_join:SetSize(110, 26)
        button_join:SetPos(125,212)
        button_join.DoClick = function()
            self:SetVisible(false)
        end
        local button_back = vgui.Create("DButton", self)
        button_back:SetText("Close")
        button_back:SetSize(110, 26)
        button_back:SetPos(125,212)
        button_back.DoClick = function()
            self:SetVisible(false)
        end
    end,

    Paint = function(self,w,h)
        draw.RoundedBox(0, 512, 290, 1536, 832, Color(35,35,35,0))
        surface.SetDrawColor(35, 35, 35)
    end
}
vgui.Register("us_fac_menu", us_menu)

local taliban_menu = {
    Init = function(self)
        self:SetSize(1536, 832)
        self:Center()
        self:SetVisible()
        self:MakePopup()
        local x,y = self:GetSize()
        local button_join = vgui.Create("DButton", self)
        button_join:SetText("Close")
        button_join:SetSize(110, 26)
        button_join:SetPos(125,212)
        button_join.DoClick = function()
            self:SetVisible(false)
        end
        local button_back = vgui.Create("DButton", self)
        button_back:SetText("Close")
        button_back:SetSize(110, 26)
        button_back:SetPos(125,212)
        button_back.DoClick = function()
            self:SetVisible(false)
        end
    end,

    Paint = function(self,w,h)
        draw.RoundedBox(0, 512, 290, 1536, 832, Color(35,35,35,0))
        surface.SetDrawColor(35, 35, 35)
    end
}
vgui.Register("taliban_fac_menu", taliban_menu)

local pla_menu = {
    Init = function(self)
        self:SetSize(1536, 832)
        self:Center()
        self:SetVisible()
        self:MakePopup()
        local x,y = self:GetSize()
        local button_back = vgui.Create("DButton", self)
        button_bac:SetText("Close")
        button:SetSize(110, 26)
        button_back:SetPos(125,212)
        button_back.DoClick = function()
            self:SetVisible(false)
            FacMenu_Main:SetVisible(true)
        end
    end,

    Paint = function(self,w,h)
        draw.RoundedBox(0, 512, 290, 1536, 832, Color(35,35,35,0))
        surface.SetDrawColor(35, 35, 35)
    end
}
vgui.Register("pla_fac_menu", pla_menu)

local ru_menu = {
    Init = function(self)
        self:SetSize(1536, 832)
        self:Center()
        self:SetVisible()
        self:MakePopup()
        local x,y = self:GetSize()
        local button_back = vgui.Create("DButton", self)
        button_back:SetText("Close")
        button_back:SetSize(110, 26)
        button_back:SetPos(125,212)
        button_back.DoClick = function()
            self:SetVisible(false)
            FacMenu_Main:SetVisible(true)
        end
    end,

    Paint = function(self,w,h)
        draw.RoundedBox(0, 512, 290, 1536, 832, Color(35,35,35,0))
        surface.SetDrawColor(35, 35, 35)
    end
}
vgui.Register("ru_fac_menu", ru_menu)

local un_menu = {
    Init = function(self)
        self:SetSize(1536, 832)
        self:Center()
        self:SetVisible()
        self:MakePopup()
        local x,y = self:GetSize()
        local button_back = vgui.Create("DButton", self)
        button_back:SetText("Close")
        button_back:SetSize(110, 26)
        button_back:SetPos(125,212)
        button_back.DoClick = function()
            self:SetVisible(false)
            FacMenu_Main:SetVisible(true)
        end
    end,

    Paint = function(self,w,h)
        draw.RoundedBox(0, 512, 290, 1536, 832, Color(35,35,35,0))
        surface.SetDrawColor(35, 35, 35)
    end
}
vgui.Register("un_fac_menu", un_menu)

local aus_menu = {
    Init = function(self)
        self:SetSize(1536, 832)
        self:Center()
        self:SetVisible()
        self:MakePopup()
        local x,y = self:GetSize()
        local button_bac = vgui.Create("DButton", self)
        button_back:SetText("Close")
        button_back:SetSize(110, 26)
        button_back:SetPos(125,212)
        button_back.DoClick = function()
            self:SetVisible(false)
            FacMenu_Main:SetVisible(true)
        end
    end,

    Paint = function(self,w,h)
        draw.RoundedBox(0, 512, 290, 1536, 832, Color(35,35,35,0))
        surface.SetDrawColor(35, 35, 35)
    end
}
vgui.Register("aus_fac_menu", aus_menu)

