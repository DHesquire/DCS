-- MISSILE TRAINER
-- local Trainer = MISSILETRAINER
--   :New( 500, "Missile Training Script ACTIVE" )
--   :InitMessagesOnOff(true)
--   :InitAlertsToAll(true) 
--   :InitAlertsHitsOnOff(true)
--   :InitAlertsLaunchesOnOff(false) 
--   :InitBearingOnOff(false)
--   :InitRangeOnOff(false)
--   :InitTrackingOnOff(false)
--   :InitTrackingToAll(false)
--   :InitMenusOnOff(false)

--

-- ATIS
-- ATIS Nellis AFB on 270.10 MHz AM.
atisNellis=ATIS:New(AIRBASE.Nevada.Nellis_AFB, 270.1)
atisNellis:SetRadioRelayUnitName("RR-KLSV")
atisNellis:SetTowerFrequencies({327.0, 132.550})
atisNellis:SetActiveRunway("03R")
atisNellis:AddILS(109.1, "03")
atisNellis:SetTACAN(12)
atisNellis:Start()

-- ATIS Creech AFB on 290.45 MHz
atisCreech=ATIS:New(AIRBASE.Nevada.Creech_AFB, 290.45)
atisCreech:SetRadioRelayUnitName("RR-KINS")
atisCreech:SetTowerFrequencies({360.6, 118.3})
atisCreech:SetActiveRunway("08")
atisCreech:AddILS(108.7, "08")
atisCreech:SetTACAN(87)
atisCreech:Start()

-- ATIS Homey/Groom Lake/DREAMLAND on 128.8 MHz
atisDreamland=ATIS:New(AIRBASE.Nevada.Groom_Lake_AFB, 128.8)
atisDreamland:SetRadioRelayUnitName("RR-KXTA")
atisDreamland:SetTowerFrequencies({250.05, 118.0})
atisDreamland:SetActiveRunway("32R")
atisDreamland:AddILS(109.3, "32R")
atisDreamland:SetTACAN(18)
atisDreamland:Start()

-- ATIS Tonopah Test Range/SILVERBOW on 113.0 MHz
atisSilverbow=ATIS:New(AIRBASE.Nevada.Tonopah_Test_Range_Airfield, 113.0)
atisSilverbow:SetRadioRelayUnitName("RR-KTNX")
atisSilverbow:SetTowerFrequencies({257.95, 124.75})
atisSilverbow:SetActiveRunway("32")
atisSilverbow:AddILS(111.7, "32")
atisSilverbow:SetTACAN(77)
atisSilverbow:SetVOR(113.0)
atisSilverbow:Start()

--

-- RANGES
-- Range 61B
local BT61B={"61-01 Aircraft #001", "61-01 Aircraft #002"}
Range61=RANGE:New('R61 (341.925MHz)')
Range61:AddBombingTargetGroup(GROUP:FindByName("61-01"), 25)
Range61:AddBombingTargetGroup(GROUP:FindByName("61-03"), 25)
Range61:AddBombingTargets(BT61B, 25)
Range61:SetInstructorRadio(377.800, "RR-BLACKJACK")
-- Range61:SetInstructorRadio(123.550, "RR-BLACKJACK")
Range61:SetRangeControl(341.925, "RR-BLACKJACK")
--Range61:SetRangeZone("zR61")
Range61:Start()

--

-- Range 62A
Range62=RANGE:New('R62 (234.250MHz)')
Range62:AddBombingTargetGroup(GROUP:FindByName("62-01"), 25)
Range62:AddBombingTargetGroup(GROUP:FindByName("62-02"), 25)
Range62:AddBombingTargetGroup(GROUP:FindByName("62-04"), 25)

-- Range 62B
local BTT6232={"62-32 Aircraft #001", "62-32 Aircraft #002", "62-32 Aircraft #003"}
Range62:AddBombingTargetGroup(GROUP:FindByName("62-03"), 25)
Range62:AddBombingTargetGroup(GROUP:FindByName("62-08"), 25)
Range62:AddBombingTargetGroup(GROUP:FindByName("62-09"), 25)
Range62:AddBombingTargetGroup(GROUP:FindByName("62-11"), 25)
Range62:AddBombingTargetGroup(GROUP:FindByName("62-12"), 25)
Range62:AddBombingTargetGroup(GROUP:FindByName("62-13"), 25)
Range62:AddBombingTargetGroup(GROUP:FindByName("62-14"), 25)
Range62:AddBombingTargetGroup(GROUP:FindByName("62-21"), 25)
Range62:AddBombingTargetGroup(GROUP:FindByName("62-21 #001"), 25)
Range62:AddBombingTargetGroup(GROUP:FindByName("62-22"), 25)
Range62:AddBombingTargetGroup(GROUP:FindByName("62-31"), 25)
Range62:AddBombingTargetGroup(GROUP:FindByName("62-32"), 25)
Range62:AddBombingTargets(BTT6232, 25)
Range62:AddBombingTargetGroup(GROUP:FindByName("62-41"), 25)
Range62:AddBombingTargetGroup(GROUP:FindByName("62-42"), 25)
Range62:AddBombingTargetGroup(GROUP:FindByName("62-43"), 25)
Range62:AddBombingTargetGroup(GROUP:FindByName("62-44"), 25)
Range62:AddBombingTargetGroup(GROUP:FindByName("62-45"), 25)
Range62:AddBombingTargetGroup(GROUP:FindByName("62-51"), 25)
Range62:AddBombingTargetGroup(GROUP:FindByName("62-52"), 25)
Range62:AddBombingTargetGroup(GROUP:FindByName("62-53"), 25)
Range62:AddBombingTargetGroup(GROUP:FindByName("62-54"), 25)
Range62:AddBombingTargetGroup(GROUP:FindByName("62-55"), 25)
Range62:AddBombingTargetGroup(GROUP:FindByName("62-56"), 25)
Range62:AddBombingTargetGroup(GROUP:FindByName("62-61"), 25)
Range62:AddBombingTargetGroup(GROUP:FindByName("62-62"), 25)
Range62:AddBombingTargetGroup(GROUP:FindByName("62-63"), 25)
Range62:AddBombingTargetGroup(GROUP:FindByName("62-71"), 25)
Range62:AddBombingTargetGroup(GROUP:FindByName("62-72"), 25)
Range62:AddBombingTargetGroup(GROUP:FindByName("62-73"), 25)
Range62:AddBombingTargetGroup(GROUP:FindByName("62-74"), 25)
Range62:AddBombingTargetGroup(GROUP:FindByName("62-75"), 25)
Range62:AddBombingTargetGroup(GROUP:FindByName("62-76"), 25)
Range62:AddBombingTargetGroup(GROUP:FindByName("62-77"), 25)
Range62:AddBombingTargetGroup(GROUP:FindByName("62-78"), 25)
Range62:AddBombingTargetGroup(GROUP:FindByName("62-79"), 25)
Range62:AddBombingTargetGroup(GROUP:FindByName("62-81"), 25)
Range62:AddBombingTargetGroup(GROUP:FindByName("62-83"), 25)
Range62:AddBombingTargetGroup(GROUP:FindByName("62-91"), 25)
Range62:AddBombingTargetGroup(GROUP:FindByName("62-92"), 25)
Range62:AddBombingTargetGroup(GROUP:FindByName("62-93"), 25)
Range62:SetInstructorRadio(377.800, "RR-BLACKJACK")
-- Range62:SetInstructorRadio(123.550, "RR-BLACKJACK")
Range62:SetRangeControl(234.250, "RR-BLACKJACK")
--Range62:SetRangeZone("zR62")
Range62:Start()

--

-- Range 63B
local SPT63BL={"R63B Strafe Lane L1", "R63B Strafe Lane L2", "R63B Strafe Lane L3"}
local SPT63BR={"R63B Strafe Lane R1", "R63B Strafe Lane R2", "R63B Strafe Lane R3"}
local BTT63B={'R63BEC', 'R63BWC', "R63B Hard Target"}
Range63=RANGE:New('R63 (361.600MHz)')
Range63:AddBombingTargetGroup(GROUP:FindByName("63-01"), 25)
Range63:AddBombingTargetGroup(GROUP:FindByName("63-02"), 25)
Range63:AddBombingTargetGroup(GROUP:FindByName("63-03"), 25)
Range63:AddBombingTargetGroup(GROUP:FindByName("63-05"), 25)
Range63:AddBombingTargetGroup(GROUP:FindByName("63-10"), 25)
-- Range63:AddBombingTargetGroup("63-10 Run-In Markers", 25)
Range63:AddBombingTargetGroup(GROUP:FindByName("63-12"), 25)
Range63:AddBombingTargetGroup(GROUP:FindByName("63-15"), 25)
Range63:AddBombingTargetGroup(GROUP:FindByName("R-63B Class A Range #001"), 25)
Range63:AddBombingTargetGroup(GROUP:FindByName("R-63B Class A Range #002"), 25)
Range63:AddBombingTargets(BTT63B, 50)
Range63:GetFoullineDistance("R63B Strafe Lane L2", "Unit #145")
Range63:AddStrafePit(SPT63BL, 3000, 300, nil, true, 20, 610)
Range63:AddStrafePit(SPT63BR, 3000, 300, nil, true, 20, 610)
Range63:SetInstructorRadio(377.800, "RR-BLACKJACK")
-- Range63:SetInstructorRadio(123.550, "RR-BLACKJACK")
Range63:SetRangeControl(361.600, "RR-BLACKJACK")
-- Range63:SetRangeControl(274.875, "RR-BLACKJACK")
--Range63:SetRangeZone("zR63")
Range63:Start()

--

-- Range 64A
Range64=RANGE:New('R64 (288.800MHz)')
Range64:AddBombingTargetGroup(GROUP:FindByName("64-10"), 25)
Range64:AddBombingTargetGroup(GROUP:FindByName("64-11"), 25)
Range64:AddBombingTargetGroup(GROUP:FindByName("64-12"), 25)

-- Range 64B
Range64:AddBombingTargetGroup(GROUP:FindByName("64-13"), 25)
Range64:AddBombingTargetGroup(GROUP:FindByName("64-14"), 25)
Range64:AddBombingTargetGroup(GROUP:FindByName("64-15"), 25)
Range64:AddBombingTargetGroup(GROUP:FindByName("64-17"), 25)
Range64:AddBombingTargetGroup(GROUP:FindByName("64-19"), 25)

-- Range 64C
local SPT64CL={"R64C Strafe Lane L1", "R64C Strafe Lane L2", "R64C Strafe Lane L3"}
local SPT64CR={"R64C Strafe Lane R1", "R64C Strafe Lane R2", "R64C Strafe Lane R3"}
local BTT64C={'R64CEC', 'R64CWC', "Unit #1431", "Unit #1432"}
Range64:AddBombingTargetGroup(GROUP:FindByName("64-05"), 25)
Range64:AddBombingTargetGroup(GROUP:FindByName("64-08"), 25)
Range64:AddBombingTargetGroup(GROUP:FindByName("64-09"), 25)
Range64:AddBombingTargets(BTT64C, 50)
Range64:GetFoullineDistance("R64C Strafe Lane L2", "Unit #1421")
Range64:AddStrafePit(SPT64CL, 3000, 300, nil, true, 20, 610)
Range64:AddStrafePit(SPT64CR, 3000, 300, nil, true, 20, 610)
Range64:SetInstructorRadio(377.800, "RR-BLACKJACK")
-- Range64:SetInstructorRadio(123.550, "RR-BLACKJACK")
Range64:SetRangeControl(288.800, "RR-BLACKJACK")
-- Range64:SetRangeControl(268.000, "RR-BLACKJACK")
--Range64:SetRangeZone("zR64")
Range64:Start()

--

-- Range 65C
local BTT6505={"65-05 Building #001", "65-05 Building #002", "65-05 Building #003", "65-05 Building #004", "65-05 Building #005", "65-05 Building #006", "65-05 Building #007", "65-05 Building #008", "65-05 Building #009"}
Range65=RANGE:New('R65 (225.450MHz)')
Range65:AddBombingTargetGroup(GROUP:FindByName("65-01"), 25)
Range65:AddBombingTargetGroup(GROUP:FindByName("65-02"), 25)
Range65:AddBombingTargetGroup(GROUP:FindByName("65-03"), 25)
Range65:AddBombingTargetGroup(GROUP:FindByName("65-04"), 25)
Range65:AddBombingTargetGroup(GROUP:FindByName("65-05"), 25)
Range65:AddBombingTargets(BTT6505, 25)
Range65:AddBombingTargetGroup(GROUP:FindByName("65-06"), 25)
Range65:AddBombingTargetGroup(GROUP:FindByName("65-07"), 25)
Range65:AddBombingTargetGroup(GROUP:FindByName("65-08"), 25)
Range65:AddBombingTargetGroup(GROUP:FindByName("65-11"), 25)

-- Range 65D
Range65:AddBombingTargetGroup(GROUP:FindByName("65-10"), 25)
Range65:SetInstructorRadio(377.800, "RR-BLACKJACK")
-- Range65:SetInstructorRadio(123.550, "RR-BLACKJACK")
Range65:SetRangeControl(225.450, "RR-BLACKJACK")
--Range65:SetRangeZone("zR65")
Range65:Start()

--

-- Range 66 (Leach Lake Tactics Range)
local BTT6601={"T66-01-1", "T66-01-2", "T66-01-3", "T66-01-4", "T66-01-5", "T66-01-6", "T66-01-7"}
local BTT6602={"T66-02-1", "T66-02-2", "T66-02-3", "T66-02-4", "T66-02-5", "T66-02-6", "T66-02-7", "T66-02-8", "T66-02-9", "T66-02-10"}
Range66=RANGE:New('LLTR66 (381.100MHz)')
Range66:AddBombingTargets(BTT6601, 25)
Range66:AddBombingTargets(BTT6602, 25)
Range66:AddBombingTargetGroup(GROUP:FindByName("66-03"), 25)
Range66:AddBombingTargetGroup(GROUP:FindByName("66-04"), 25)
Range66:AddBombingTargetGroup(GROUP:FindByName("66-05"), 25)
Range66:AddBombingTargetGroup(GROUP:FindByName("66-06"), 25)
Range66:AddBombingTargetGroup(GROUP:FindByName("66-07"), 25)
Range66:AddBombingTargetGroup(GROUP:FindByName("66-08"), 25)
Range66:AddBombingTargetGroup(GROUP:FindByName("66-09"), 25)
Range66:SetInstructorRadio(348.700, "RR-JOSHUA")
-- Range66:SetInstructorRadio(133.650, "RR-JOSHUA")
Range66:SetRangeControl(381.100, "RR-JOSHUA")
--Range66:SetRangeZone("zR66")
Range66:Start()

--

-- Range 71S
local BTT7113={"71-13 Fuel Tank #001", "71-13 Fuel Tank #002", "71-13 POL"}
local BTT7122={"71-22 T25"}
Range71=RANGE:New('R71 (335.450MHz)')
Range71:AddBombingTargetGroup(GROUP:FindByName("71-03"), 25)
Range71:AddBombingTargetGroup(GROUP:FindByName("71-07"), 25)
Range71:AddBombingTargetGroup(GROUP:FindByName("71-08"), 25)
Range71:AddBombingTargetGroup(GROUP:FindByName("71-09"), 25)
Range71:AddBombingTargetGroup(GROUP:FindByName("71-12"), 25)
Range71:AddBombingTargetGroup(GROUP:FindByName("71-13"), 25)
Range71:AddBombingTargets(BTT7113, 25)
Range71:AddBombingTargetGroup(GROUP:FindByName("71-14"), 25)
Range71:AddBombingTargetGroup(GROUP:FindByName("71-21"), 25)
Range71:AddBombingTargetGroup(GROUP:FindByName("71-22"), 25)
Range71:AddBombingTargets(BTT7122, 25)
Range71:AddBombingTargetGroup(GROUP:FindByName("71-23"), 25)
Range71:AddBombingTargetGroup(GROUP:FindByName("71-24"), 25)
Range71:AddBombingTargetGroup(GROUP:FindByName("71-25"), 25)
Range71:AddBombingTargetGroup(GROUP:FindByName("71-26"), 25)
Range71:SetInstructorRadio(377.800, "RR-BLACKJACK")
-- Range71:SetInstructorRadio(123.550, "RR-BLACKJACK")
Range71:SetRangeControl(335.450, "RR-BLACKJACK")
-- Range71:SetRangeControl(288.225, "RR-BLACKJACK")
--Range71:SetRangeZone("zR71")
Range71:Start()

--

-- Range 74B
Range74=RANGE:New('R74 (228.000MHz)')
Range74:AddBombingTargetGroup(GROUP:FindByName("74-03"), 25)
Range74:AddBombingTargetGroup(GROUP:FindByName("74-04"), 25)
Range74:AddBombingTargetGroup(GROUP:FindByName("74-32"), 25)
Range74:AddBombingTargetGroup(GROUP:FindByName("74-33"), 25)
Range74:AddBombingTargetGroup(GROUP:FindByName("74-39"), 25)

-- Range 74C
Range74:AddBombingTargetGroup(GROUP:FindByName("74-01"), 25)
Range74:AddBombingTargetGroup(GROUP:FindByName("74-06"), 25)
Range74:AddBombingTargetGroup(GROUP:FindByName("74-08"), 25)
Range74:AddBombingTargetGroup(GROUP:FindByName("74-11"), 25)
Range74:AddBombingTargetGroup(GROUP:FindByName("74-21"), 25)
Range74:AddBombingTargetGroup(GROUP:FindByName("74-25"), 25)
Range74:AddBombingTargetGroup(GROUP:FindByName("74-26"), 25)
Range74:AddBombingTargetGroup(GROUP:FindByName("74-27"), 25)
Range74:AddBombingTargetGroup(GROUP:FindByName("74-29"), 25)
Range74:AddBombingTargetGroup(GROUP:FindByName("74-30"), 25)
Range74:AddBombingTargetGroup(GROUP:FindByName("74-36"), 25)
Range74:AddBombingTargetGroup(GROUP:FindByName("74-42"), 25)

-- Range T74-47
local BTT7447={'74-47-121', '74-47-122'}
Range74:AddBombingTargets(BTT7447, 25)
Range74:SetInstructorRadio(377.800, "RR-BLACKJACK")
-- Range74:SetInstructorRadio(123.550, "RR-BLACKJACK")
Range74:SetRangeControl(228.000, "RR-BLACKJACK")
-- Range74:SetRangeControl(288.225, "RR-BLACKJACK")
--Range74:SetRangeZone("zR74")
Range74:Start()

--

-- Range 75E
Range75=RANGE:New('R75 (363.900MHz)')
local BTT7510={"75-10 T3", "75-10 T4", "75-10 T5"}
Range75:AddBombingTargetGroup(GROUP:FindByName("75-04"), 25)
Range75:AddBombingTargetGroup(GROUP:FindByName("75-10"), 25)
Range75:AddBombingTargets(BTT7510, 25)
Range75:AddBombingTargetGroup(GROUP:FindByName("75-29"), 25)
Range75:AddBombingTargetGroup(GROUP:FindByName("75-32"), 25)
Range75:AddBombingTargetGroup(GROUP:FindByName("75-34"), 25)
Range75:AddBombingTargetGroup(GROUP:FindByName("75-43"), 25)
Range75:AddBombingTargetGroup(GROUP:FindByName("75-46"), 25)

-- Range 75W
local BTT7503={"75-03 T18"}
Range75:AddBombingTargetGroup(GROUP:FindByName("75-03"), 25)
Range75:AddBombingTargets(BTT7503, 25)
Range75:AddBombingTargetGroup(GROUP:FindByName("75-06"), 25)
Range75:AddBombingTargetGroup(GROUP:FindByName("75-08"), 25)
Range75:AddBombingTargetGroup(GROUP:FindByName("75-15"), 25)
Range75:AddBombingTargetGroup(GROUP:FindByName("75-16"), 25)
Range75:AddBombingTargetGroup(GROUP:FindByName("75-19"), 25)
Range75:AddBombingTargetGroup(GROUP:FindByName("75-20"), 25)
Range75:AddBombingTargetGroup(GROUP:FindByName("75-47"), 25)
Range75:AddBombingTargetGroup(GROUP:FindByName("75-47 #001"), 25)
Range75:SetInstructorRadio(377.800, "RR-BLACKJACK")
-- Range75:SetInstructorRadio(123.550, "RR-BLACKJACK")
Range75:SetRangeControl(363.900, "RR-BLACKJACK")
-- Range75:SetRangeControl(288.225, "RR-BLACKJACK")
--Range75:SetRangeZone("zR75")
Range75:Start()

--

-- Range 76
local BTT7601={"76-01 Bunker", "76-01 Fuel Tank #001", "76-01 Fuel Tank #002", "76-01 Fuel Tank #003", "76-01 Fuel Tank #004", "76-01 Fuel Tank #005", "76-01 Fuel Tank #006", "76-01 Fuel Tank #007", "76-01 Fuel Tank #008", "76-01 Fuel Tank #009", "76-01 Fuel Tank #010", "76-01 Fuel Tank #011", "76-01 Fuel Tank #012", "76-01 Fuel Tank #013", "76-01 Fuel Tank #014", "76-01 Fuel Tank #015", "76-01 Fuel Tank #016", "76-01 Fuel Tank #017", "76-01 Fuel Tank #018", "76-01 Fuel Tank #019", "76-01 Fuel Tank #020", "76-01 Fuel Tank #021", "76-01 Fuel Tank #022", "76-01 Fuel Tank #023", "76-01 Fuel Tank #024", "76-01 Fuel Tank #025", "76-01 Fuel Tank #026", "76-01 Fuel Tank #027", "76-01 Fuel Tank #028", "76-01 Fuel Tank #029", "76-01 Fuel Tank #030", "76-01 Fuel Tank #031", "76-01 Fuel Tank #032", "76-01 Fuel Tank #033", "76-01 Fuel Tank #034", "76-01 Fuel Tank #035", "76-01 Fuel Tank #036"}
local BTT7611={"76-11 Fuel Tank #001", "76-11 Fuel Tank #002", "76-11 Fuel Tank #003", "76-11 Fuel Tank #004", "76-11 Fuel Tank #005", "76-11 Fuel Tank #006", "76-11 Fuel Tank #007", "76-11 Fuel Tank #008", "76-11 Fuel Tank #009", "76-11 Radio Tower"}
Range76=RANGE:New('R76 (354.300MHz)')
Range76:AddBombingTargetGroup(GROUP:FindByName("76-01 #001"), 25)
Range76:AddBombingTargetGroup(GROUP:FindByName("76-01 #002"), 25)
Range76:AddBombingTargets(BTT7601, 25)
Range76:AddBombingTargetGroup(GROUP:FindByName("76-03"), 25)
Range76:AddBombingTargetGroup(GROUP:FindByName("76-05"), 25)
Range76:AddBombingTargetGroup(GROUP:FindByName("76-07"), 25)
Range76:AddBombingTargetGroup(GROUP:FindByName("76-07 Aircraft"), 25)
Range76:AddBombingTargetGroup(GROUP:FindByName("76-08"), 25)
Range76:AddBombingTargetGroup(GROUP:FindByName("76-09"), 25)
Range76:AddBombingTargetGroup(GROUP:FindByName("76-10"), 25)
Range76:AddBombingTargetGroup(GROUP:FindByName("76-11 #001"), 25)
Range76:AddBombingTargetGroup(GROUP:FindByName("76-11 #002"), 25)
Range76:AddBombingTargets(BTT7611, 25)
Range76:AddBombingTargetGroup(GROUP:FindByName("76-20"), 25)
Range76:AddBombingTargetGroup(GROUP:FindByName("76-21"), 25)
Range76:AddBombingTargetGroup(GROUP:FindByName("76-29"), 25)
Range76:AddBombingTargetGroup(GROUP:FindByName("76-30"), 25)
Range76:SetInstructorRadio(377.800, "RR-BLACKJACK")
-- Range76:SetInstructorRadio(123.550, "RR-BLACKJACK")
Range76:SetRangeControl(354.300, "RR-BLACKJACK")
-- Range76:SetRangeControl(288.225, "RR-BLACKJACK")
--Range76:SetRangeZone("zR76")
Range76:Start()

--

-- Range ECS
local BTT7702={"77-02 Tank #001", "77-02 Tank #002", "77-02 Tank #003"}
Range77=RANGE:New('ECS (293.500MHz)')
Range77:AddBombingTargetGroup(GROUP:FindByName("77-01"), 25)
Range77:AddBombingTargetGroup(GROUP:FindByName("77-02"), 25)
Range77:AddBombingTargets(BTT7702, 25)
Range77:AddBombingTargetGroup(GROUP:FindByName("77-69"), 25)
Range77:SetInstructorRadio(377.800, "RR-BLACKJACK")
-- Range77:SetInstructorRadio(123.550, "RR-BLACKJACK")
Range77:SetRangeControl(293.500, "RR-BLACKJACK")
-- Range77:SetRangeControl(379.650, "RR-BLACKJACK")
--Range77:SetRangeZone("zR77")
Range77:Start()
