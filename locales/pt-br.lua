local Translations = {
    menus = {
        ["vehicles"] = "%{role} - Veículos",
        ["vehicleseats"] = "%{qtd} assento(s)",
        ["close"] = "Fechar",
    },
    text = {
        ["veh_button"] = "[E] - Retirar / Guardar Veículo"
    }
}

if GetConvar('qb_locale', 'en') == 'pt-br' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end
