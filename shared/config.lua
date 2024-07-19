Config = {
    Debug = false,
    FuelScript = 'LegacyFuel',
    Garages = {
        ["police"] = {
            [1] = {
                minimumGrade = 1,
                takeOut = vector4(-1094.68, -1845.56, 0.07, 81.91),
                width = 10,
                length = 10,
                vehicles = {"libertyboat"}
            },
            [2] = {
                minimumGrade = 1,
                takeOut = vector4(-670.29, 6180.43, 0.45, 37.94),
                width = 8.5,
                length = 6.8,
                vehicles = {"libertyboat"}
            },
        },
        ["mafia"] = {
            [1] = {
                minimumGrade = 1,
                takeOut = vector4(-2266.38, 3225.26, 33.0, 239.88),
                width = 9.5,
                length = 9.5,
                vehicles = {"velum2"}
            },
            [2] = {
                minimumGrade = 1,
                takeOut = vector4(4066.09, -4680.48, 4.61, 20.1),
                width = 9.5,
                length = 9.5,
                vehicles = {"velum2", "manchez"}
            },
            [3] = {
                minimumGrade = 1,
                takeOut = vector4(-1918.71, 2056.76, 140.08, 257.46),
                width = 2.5,
                length = 5,
                vehicles = {"impaler"}
            },
        },
        ["cartel"] = {
            [1] = {
                minimumGrade = 1,
                takeOut = vector4(1397.43, 2996.6, 41.48, 315.21),
                width = 9.5,
                length = 9.5,
                vehicles = {"velum2"}
            },
            [2] = {
                minimumGrade = 1,
                takeOut = vector4(4476.89, -4457.04, 4.61, 199.8),
                width = 9.5,
                length = 9.5,
                vehicles = {"velum2", "manchez"}
            },
            [3] = {
                minimumGrade = 1,
                takeOut = vector4(1395.2, 1116.55, 114.54, 89.32),
                width = 2.5,
                length = 5,
                vehicles = {"virgo"}
            },
        },
        ["mercenarios"] = {
            [1] = {
                minimumGrade = 2,
                takeOut = vector4(2145.95, 4817.94, 42.21, 117.07),
                width = 9.5,
                length = 9.5,
                vehicles = {"velum2"}
            },
            [2] = {
                minimumGrade = 2,
                takeOut = vector4(4379.76, -4558.55, 4.61, 19.98),
                width = 9.5,
                length = 9.5,
                vehicles = {"velum2", "manchez"}
            },
            [3] = { --Garagem dos Veículos exclusivos
                minimumGrade = 2,
                takeOut = vector4(2158.61, 4831.62, 41.47, 111.22),
                width = 9.5,
                length = 9.5,
                vehicles = {"maverick"}
            },
            [4] = { --Garagem dos Veículos exclusivos
                minimumGrade = 1,
                takeOut = vector4(2122.0, 4765.9, 40.82, 25.81),
                width = 9.5,
                length = 9.5,
                vehicles = {"granger2"}
            },
        },
        ["callisto"] = {
            [1] = {
                minimumGrade = 1,
                takeOut = vector4(-1313.34, -2161.0, 14.88, 149.96),
                width = 9.5,
                length = 9.5,
                vehicles = {"velum2"}
            },
            [2] = {
                minimumGrade = 1,
                takeOut = vector4(4522.03, -4467.71, 4.61, 110.18),
                width = 9.5,
                length = 9.5,
                vehicles = {"velum2", "manchez"}
            },
            [3] = {
                minimumGrade = 1,
                takeOut = vector4(356.66, -2.33, 82.52, 218.45),
                width = 9.5,
                length = 9.5,
                vehicles = {"virgo"}
            },
        },
        ["drifters"] = {
            [1] = {
                minimumGrade = 1,
                takeOut = vector4(-77.75, 347.11, 111.9, 335.2),
                width = 2.5,
                length = 8.5,
                vehicles = {"moonbeam2"}
            },
        },
        ["vanilla"] = {
            [1] = {
                minimumGrade = 1,
                takeOut = vector4(96.92, -1279.48, 28.76, 95.66),
                width = 2.5,
                length = 8.5,
                vehicles = {"stretch"}
            },
        },
        ["bahama"] = {
            [1] = {
                minimumGrade = 1,
                takeOut = vector4(-1403.14, -635.19, 28.4, 213.58),
                width = 2.5,
                length = 8,
                vehicles = {"patriot2"}
            },
        },
        ["caju"] = {
            [1] = {
                minimumGrade = 1,
                takeOut = vector4(-1822.26, -2813.58, 14.89, 151.16),
                width = 9.5,
                length = 9.5,
                vehicles = {"velum2"}
            },
            [2] = {
                minimumGrade = 1,
                takeOut = vector4(4432.26, -4494.91, 4.61, 197.19),
                width = 9.5,
                length = 9.5,
                vehicles = {"velum2", "manchez"}
            },
        },
        ["barragem"] = {
            [1] = {
                minimumGrade = 1,
                takeOut = vector4(-1096.73, -3511.45, 15.08, 330.25),
                width = 9.5,
                length = 9.5,
                vehicles = {"velum2"}
            },
            [2] = {
                minimumGrade = 1,
                takeOut = vector4(4274.5, -4546.95, 4.61, 197.39),
                width = 9.5,
                length = 9.5,
                vehicles = {"velum2", "manchez"}
            },
        },
        ["motoclub"] = {
            [1] = {
                minimumGrade = 1,
                takeOut = vector4(14.77, 6462.29, 31.08, 228.09),
                width = 2.5,
                length = 6.8,
                vehicles = {"avarus"}
            },
        },
        ["armeiro"] = {
            [1] = {
                minimumGrade = 1,
                takeOut = vector4(-2767.74, 2290.12, 0.75, 41.18),
                width = 2.5,
                length = 6.8,
                vehicles = {"dinghy2"}
            },
        },
        ["contrabando"] = {
            [1] = {
                minimumGrade = 1,
                takeOut = vector4(-350.37, -2786.05, 4.82, 271.71),
                width = 2.5,
                length = 6.8,
                vehicles = {"blista"}
            },
        },
        ["ambulance"] = {
            [1] = {
                minimumGrade = 1,
                takeOut = vector4(1103.52, -1516.89, 47.55, 296.08),
                width = 6.8,
                length = 6.8,
                vehicles = {"cdamedicheli"}
            },
            [2] = {
                minimumGrade = 1,
                takeOut = vector4(-784.38, -1440.28, 0.45, 138.08),
                width = 6.8,
                length = 6.8,
                vehicles = {"defender"}
            },
            [3] = {
                minimumGrade = 1,
                takeOut = vector4(-122.69, 6710.52, 0.45, 19.05),
                width = 6.8,
                length = 6.8,
                vehicles = {"defender"}
            },
        },
        ["lawyer"] = {
            [1] = {
                minimumGrade = 2,
                takeOut = vector4(251.11, -1070.63, 29.21, 1.59),
                width = 2.5,
                length = 4.8,
                vehicles = {"xls2"}
            },
            [2] = {
                minimumGrade = 1,
                takeOut = vector4(236.03, -1071.49, 28.66, 2.29),
                width = 2.5,
                length = 4.8,
                vehicles = {"sentinel"}
            },
        },
        ["prefeitura"] = {
            [1] = {
                minimumGrade = 4,
                takeOut = vector4(-1323.16, -580.62, 29.31, 32.94),
                width = 2.5,
                length = 4.8,
                vehicles = {"coach", "windsor2"}
            },
        },
    }
}
