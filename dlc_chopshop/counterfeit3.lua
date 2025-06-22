-- Counterfit Lab: 930.0, -2183.3, -50.0
exports('GetChopShopCounterfeit3', function()
    return ChopShopCounterfeit3
end)

ChopShopCounterfeit3 = {
    interiorId = GetInteriorAtCoords(930.0, -2183.3, -50.0),

    Tint = {
        tint = "Set_Tints",

        Set = function(enable, refresh)
            SetIplPropState(ChopShopCounterfeit3.interiorId, ChopShopCounterfeit3.Tint.tint, enable, refresh)
        end,

        Clear = function(refresh)
            SetIplPropState(ChopShopCounterfeit3.interiorId, ChopShopCounterfeit3.Tint.tint, false, refresh)
        end
    },

    RightDoor = {
        door = "Set_Door_Right",

        Set = function(enable, refresh)
            SetIplPropState(ChopShopCounterfeit3.interiorId, ChopShopCounterfeit3.RightDoor.door, enable, refresh)
        end,

        Clear = function(refresh)
            SetIplPropState(ChopShopCounterfeit3.interiorId, ChopShopCounterfeit3.RightDoor.door, false, refresh)
        end
    },

    LeftDoor = {
        door = "Set_Door_Left",

        Set = function(enable, refresh)
            SetIplPropState(ChopShopCounterfeit3.interiorId, ChopShopCounterfeit3.LeftDoor.door, enable, refresh)
        end,

        Clear = function(refresh)
            SetIplPropState(ChopShopCounterfeit3.interiorId, ChopShopCounterfeit3.LeftDoor.door, false, refresh)
        end
    },

    LoadDefault = function()
        ChopShopCounterfeit3.Tint.Set(false, true)
        ChopShopCounterfeit3.RightDoor.Set(false, true)
        ChopShopCounterfeit3.LeftDoor.Set(false, true)
        RefreshInterior(ChopShopCounterfeit3.interiorId)
    end

}
