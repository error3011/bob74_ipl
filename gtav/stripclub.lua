exports('GetStripClubObject', function()
    return StripClub
end)

StripClub = {
    interiorId = GetInteriorAtCoords(105.4093, -1295.8901, 29.2100),

    Mess = {
        mess = "V_19_Trevor_Mess", -- A bit of mess in the office
        Enable = function(state)
            SetIplPropState(StripClub.interiorId, StripClub.Mess.mess, state, true)
        end
    },

    LoadDefault = function()
        StripClub.Mess.Enable(false)
    end
}
