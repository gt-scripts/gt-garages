fx_version "cerulean"
game "gta5"

description "GT Generic Garage Script"
author "GFive"
version "VERSION_IDENTIFIER"

shared_scripts {
    "@qb-core/shared/locale.lua",
    "locales/en.lua",
    "locales/*.lua",
    "shared/*.lua"
}

client_scripts {
    "@PolyZone/client.lua",
    "@PolyZone/BoxZone.lua",
    "client/*.lua"
}

dependencies {
    "qb-core",
    "PolyZone"
}

lua54 "yes"