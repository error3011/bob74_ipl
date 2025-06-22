-- Counterfit Lab: 930.0, -2270.0, -50.0
exports('GetChopShopCounterfeit1', function()
    return ChopShopCounterfeit1
end)

ChopShopCounterfeit1 = {
    interiorId = GetInteriorAtCoords(930.0, -2270.0, -50.0),

    Tint = {
        tint = "Set_Tints",

        Set = function(enable, refresh)
            SetIplPropState(ChopShopCounterfeit1.interiorId, ChopShopCounterfeit1.Tint.tint, enable, refresh)
        end,

        Clear = function(refresh)
            SetIplPropState(ChopShopCounterfeit1.interiorId, ChopShopCounterfeit1.Tint.tint, false, refresh)
        end
    },

    RightDoor = {
        door = "Set_Door_Right",

        Set = function(enable, refresh)
            SetIplPropState(ChopShopCounterfeit1.interiorId, ChopShopCounterfeit1.RightDoor.door, enable, refresh)
        end,

        Clear = function(refresh)
            SetIplPropState(ChopShopCounterfeit1.interiorId, ChopShopCounterfeit1.RightDoor.door, false, refresh)
        end
    },

    LeftDoor = {
        door = "Set_Door_Left",

        Set = function(enable, refresh)
            SetIplPropState(ChopShopCounterfeit1.interiorId, ChopShopCounterfeit1.LeftDoor.door, enable, refresh)
        end,

        Clear = function(refresh)
            SetIplPropState(ChopShopCounterfeit1.interiorId, ChopShopCounterfeit1.LeftDoor.door, false, refresh)
        end
    },

    LoadDefault = function()
        ChopShopCounterfeit1.Tint.Set(true, true)
        ChopShopCounterfeit1.RightDoor.Set(true, true)
        ChopShopCounterfeit1.LeftDoor.Set(true, true)
        RefreshInterior(ChopShopCounterfeit1.interiorId)
    end

}
