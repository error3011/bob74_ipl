-- Counterfit Lab: 930.0, -2213.2, -50.0
exports('GetChopShopCounterfeit4', function()
    return ChopShopCounterfeit4
end)

ChopShopCounterfeit4 = {
    interiorId = GetInteriorAtCoords(930.0, -2213.2, -50.0),

    Tint = {
        tint = "Set_Tints",

        Set = function(enable, refresh)
            SetIplPropState(ChopShopCounterfeit4.interiorId, ChopShopCounterfeit4.Tint.tint, enable, refresh)
        end,

        Clear = function(refresh)
            SetIplPropState(ChopShopCounterfeit4.interiorId, ChopShopCounterfeit4.Tint.tint, false, refresh)
        end
    },

    RightDoor = {
        door = "Set_Door_Right",

        Set = function(enable, refresh)
            SetIplPropState(ChopShopCounterfeit4.interiorId, ChopShopCounterfeit4.RightDoor.door, enable, refresh)
        end,

        Clear = function(refresh)
            SetIplPropState(ChopShopCounterfeit4.interiorId, ChopShopCounterfeit4.RightDoor.door, false, refresh)
        end
    },

    LeftDoor = {
        door = "Set_Door_Left",

        Set = function(enable, refresh)
            SetIplPropState(ChopShopCounterfeit4.interiorId, ChopShopCounterfeit4.LeftDoor.door, enable, refresh)
        end,

        Clear = function(refresh)
            SetIplPropState(ChopShopCounterfeit4.interiorId, ChopShopCounterfeit4.LeftDoor.door, false, refresh)
        end
    },

    LoadDefault = function()
        ChopShopCounterfeit4.Tint.Set(false, true)
        ChopShopCounterfeit4.RightDoor.Set(false, true)
        ChopShopCounterfeit4.LeftDoor.Set(false, true)
        RefreshInterior(ChopShopCounterfeit4.interiorId)
    end

}
