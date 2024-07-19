local Translations = {
    menus = {
        ["vehicles"] = "%{role} - Vehicles",
        ["vehicleseats"] = "%{qtd} seat(s)",
        ["close"] = "Close",
    },
    text = {
        ["veh_button"] = "[E] - Grab / Store Vehicle"
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
