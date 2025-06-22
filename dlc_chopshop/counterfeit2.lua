-- Counterfit Lab: 930.0, -2240.1, -50.0
exports('GetChopShopCounterfeit2', function()
    return ChopShopCounterfeit2
end)

ChopShopCounterfeit2 = {
    interiorId = GetInteriorAtCoords(930.0, -2240.1, -50.0),

    Tint = {
        tint = "Set_Tints",

        Set = function(enable, refresh)
            SetIplPropState(ChopShopCounterfeit2.interiorId, ChopShopCounterfeit2.Tint.tint, enable, refresh)
        end,

        Clear = function(refresh)
            SetIplPropState(ChopShopCounterfeit2.interiorId, ChopShopCounterfeit2.Tint.tint, false, refresh)
        end
    },

    RightDoor = {
        door = "Set_Door_Right",

        Set = function(enable, refresh)
            SetIplPropState(ChopShopCounterfeit2.interiorId, ChopShopCounterfeit2.RightDoor.door, enable, refresh)
        end,

        Clear = function(refresh)
            SetIplPropState(ChopShopCounterfeit2.interiorId, ChopShopCounterfeit2.RightDoor.door, false, refresh)
        end
    },

    LeftDoor = {
        door = "Set_Door_Left",

        Set = function(enable, refresh)
            SetIplPropState(ChopShopCounterfeit2.interiorId, ChopShopCounterfeit2.LeftDoor.door, enable, refresh)
        end,

        Clear = function(refresh)
            SetIplPropState(ChopShopCounterfeit2.interiorId, ChopShopCounterfeit2.LeftDoor.door, false, refresh)
        end
    },

    LoadDefault = function()
        ChopShopCounterfeit2.Tint.Set(false, true)
        ChopShopCounterfeit2.RightDoor.Set(false, true)
        ChopShopCounterfeit2.LeftDoor.Set(false, true)
        RefreshInterior(ChopShopCounterfeit2.interiorId)
    end

}
