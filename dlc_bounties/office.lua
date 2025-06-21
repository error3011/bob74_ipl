-- Bail office: 565.886, -2688.761, -50.0
exports('GetSummerOfficeObject', function()
    return SummerOffice
end)

SummerOffice = {
    interiorId = GetInteriorAtCoords(565.886, -2688.761, -50.0),

    Ipl = {
        Exterior = {
            ipl = {
                "m24_1_bailoffice_davis",
                "m24_1_bailoffice_delperro",
                "m24_1_bailoffice_missionrow",
                "m24_1_bailoffice_paletobay",
                "m24_1_bailoffice_vinewood"
            },

            Load = function()
                EnableIpl(SummerOffice.Ipl.Exterior.ipl, true)
            end,
            Remove = function()
                EnableIpl(SummerOffice.Ipl.Exterior.ipl, false)
            end
        }
    },

    Style = {
        vintage = "set_style_01",
        patterns = "set_style_02",
        teak = "set_style_03",

        Set = function(style, refresh)
            SummerOffice.Style.Clear(false)

            SetIplPropState(SummerOffice.interiorId, style, true, refresh)
        end,
        Clear = function(refresh)
            SetIplPropState(SummerOffice.interiorId, {
                SummerOffice.Style.vintage,
                SummerOffice.Style.patterns,
                SummerOffice.Style.teak
            }, false, refresh)
        end
    },

    Desk = {
        files = "set_no_staff",
        computers = "set_staff_upgrade",

        Set = function(style, refresh)
            SummerOffice.Desk.Clear(false)

            SetIplPropState(SummerOffice.interiorId, style, true, refresh)
        end,
        Clear = function(refresh)
            SetIplPropState(SummerOffice.interiorId, {
                SummerOffice.Desk.files,
                SummerOffice.Desk.computers
            }, false, refresh)
        end
    },

    Gunsafe = {
        cabinet = "set_gunsafe_off",
        gunsafe = "set_gunsafe_on",

        Set = function(style, refresh)
            SummerOffice.Gunsafe.Clear(false)

            SetIplPropState(SummerOffice.interiorId, style, true, refresh)
        end,
        Clear = function(refresh)
            SetIplPropState(SummerOffice.interiorId, {
                SummerOffice.Gunsafe.cabinet,
                SummerOffice.Gunsafe.gunsafe
            }, false, refresh)
        end
    },

    Trophy = {
        plaque = "set_trophy_10x",
        badge = "set_trophy_24x",
        handcuffs = "set_trophy_100x",

        Enable = function(trophy, state, refresh)
            SetIplPropState(SummerOffice.interiorId, trophy, state, refresh)
        end
    },

    Plant = {
        plant = "set_new_plant",

        Enable = function(state, refresh)
            SetIplPropState(SummerOffice.interiorId, SummerOffice.Plant.plant, state, refresh)
        end
    },

    LoadDefault = function()
        SummerOffice.Ipl.Exterior.Load()

        SummerOffice.Style.Set(SummerOffice.Style.teak, true)
        SummerOffice.Desk.Set(SummerOffice.Desk.files, true)
        SummerOffice.Gunsafe.Set(SummerOffice.Gunsafe.cabinet, true)

        SummerOffice.Trophy.Enable(SummerOffice.Trophy.plaque, true, true)
        SummerOffice.Trophy.Enable(SummerOffice.Trophy.badge, true, true)
        SummerOffice.Trophy.Enable(SummerOffice.Trophy.handcuffs, true, true)

        SummerOffice.Plant.Enable(true, true)

        RefreshInterior(SummerOffice.interiorId)
    end
}
