-- Missile Trainer
local Trainer = MISSILETRAINER
  :New( 500, "Missile Training Script ACTIVE" )
  :InitMessagesOnOff(true)
  :InitAlertsToAll(true) 
  :InitAlertsHitsOnOff(true)
  :InitAlertsLaunchesOnOff(false) 
  :InitBearingOnOff(false)
  :InitRangeOnOff(false)
  :InitTrackingOnOff(false)
  :InitTrackingToAll(false)
  :InitMenusOnOff(false)
  
 
-- ATIS Nellis AFB on 270.10 MHz AM.
atisNellis=ATIS:New(AIRBASE.Nevada.Nellis_AFB, 270.1)
atisNellis:SetRadioRelayUnitName("RR-KLSV")
atisNellis:SetActiveRunway("21L")
atisNellis:SetTowerFrequencies({327.000, 132.550})
atisNellis:SetTACAN(12)
atisNellis:AddILS(109.1, "21")
atisNellis:Start()

-- ATIS Creech AFB on 290.45 MHz
atisCreech=ATIS:New(AIRBASE.Nevada.Creech_AFB,  290.45)
atisCreech:SetRadioRelayUnitName("RR-KINS")
atisCreech:SetTowerFrequencies({360.6, 118.3})
atisCreech:AddILS(108.7, "08")
atisCreech:SetTACAN(87)
atisCreech:Start()

--

-- Strafe pits. Each pit can consist of multiple targets. Here we have two pits and each of the pits has two targets.
-- These are names of the corresponding units defined in the ME.
local strafepit_left={"GWR Strafe Pit Left 1", "GWR Strafe Pit Left 2"}
local strafepit_right={"GWR Strafe Pit Right 1", "GWR Strafe Pit Right 2"}

-- Table of bombing target names. Again these are the names of the corresponding units as defined in the ME.
local bombtargets={"GWR Bomb Target Circle Left", "GWR Bomb Target Circle Right", "GWR Bomb Target Hard"}

-- Create a range object.
RangeBMGR=RANGE:New("Barry M Goldwater Range")

-- Distance between strafe target and foul line. You have to specify the names of the unit or static objects.
-- Note that this could also be done manually by simply measuring the distance between the target and the foul line in the ME.
RangeBMGR:GetFoullineDistance("GWR Strafe Pit Left 1", "GWR Foul Line Left")

-- Add strafe pits. Each pit (left and right) consists of two targets.
RangeBMGR:AddStrafePit(strafepit_left, 3000, 300, nil, true, 20, fouldist)
RangeBMGR:AddStrafePit(strafepit_right, nil, nil, nil, true, nil, fouldist)

-- Add bombing targets. A good hit is if the bomb falls less then 50 m from the target.
RangeBMGR:AddBombingTargets(bombtargets, 50)

-- Start range.
RangeBMGR:Start()

--

-- Range T61-01
local BTT6101={"61-01 Aircraft #001", "61-01 Aircraft #002"}
RangeT6101=RANGE:New('T61-01')
RangeT6101:AddBombingTargetGroup('61-01', 25)
RangeT6101:AddBombingTargets(BTT6101, 25)
RangeT6101:Start()

--

-- Range T61-03
RangeT6103=RANGE:New('T61-03')
RangeT6103:AddBombingTargetGroup('61-03', 25)
RangeT6103:Start()

--

-- Range T62-01
RangeT6201=RANGE:New('T62-01')
RangeT6201:AddBombingTargetGroup('62-01', 25)
RangeT6201:Start()

--

-- Range T62-02
RangeT6202=RANGE:New('T62-02')
RangeT6202:AddBombingTargetGroup('62-02', 25)
RangeT6202:Start()

--

-- Range T62-03
RangeT6203=RANGE:New('T62-03')
RangeT6203:AddBombingTargetGroup('62-03', 25)
RangeT6203:Start()

--

-- Range T62-04
RangeT6204=RANGE:New('T62-04')
RangeT6204:AddBombingTargetGroup('62-04', 25)
RangeT6204:Start()

--

-- Range T62-08
RangeT6208=RANGE:New('T62-08')
RangeT6208:AddBombingTargetGroup('62-08', 25)
RangeT6208:Start()

--

-- Range T62-09
RangeT6209=RANGE:New('T62-09')
RangeT6209:AddBombingTargetGroup('62-09', 25)
RangeT6209:Start()

--

-- Range T62-11
RangeT6211=RANGE:New('T62-11')
RangeT6211:AddBombingTargetGroup('62-11', 25)
RangeT6211:Start()

--

-- Range T62-12
RangeT6212=RANGE:New('T62-12')
RangeT6212:AddBombingTargetGroup('62-12', 25)
RangeT6212:Start()

--

-- Range T62-13
RangeT6213=RANGE:New('T62-13')
RangeT6213:AddBombingTargetGroup('62-13', 25)
RangeT6213:Start()

--

-- Range T62-14
RangeT6214=RANGE:New('T62-14')
RangeT6214:AddBombingTargetGroup('62-14', 25)
RangeT6214:Start()

--

-- Range T62-21
RangeT6221=RANGE:New('T62-21')
RangeT6221:AddBombingTargetGroup('62-21', 25)
RangeT6221:AddBombingTargetGroup("62-21 #001", 25)
RangeT6221:Start()

--

-- Range T62-22
RangeT6222=RANGE:New('T62-22')
RangeT6222:AddBombingTargetGroup('62-22', 25)
RangeT6222:Start()

--

-- Range T62-31
RangeT6231=RANGE:New('T62-31')
RangeT6231:AddBombingTargetGroup('62-31', 25)
RangeT6231:Start()

--

-- Range T62-32
local BTT6232={"62-32 Aircraft #001", "62-32 Aircraft #002", "62-32 Aircraft #003"}
RangeT6232=RANGE:New('T62-32')
RangeT6232:AddBombingTargetGroup('62-32', 25)
RangeT6232:AddBombingTargets(BTT6232, 25)
RangeT6232:Start()

--

-- Range T62-41
RangeT6241=RANGE:New('T62-41')
RangeT6241:AddBombingTargetGroup('62-41', 25)
RangeT6241:Start()

--

-- Range T62-42
RangeT6242=RANGE:New('T62-42')
RangeT6242:AddBombingTargetGroup('62-42', 25)
RangeT6242:Start()

--

-- Range T62-43
RangeT6243=RANGE:New('T62-43')
RangeT6243:AddBombingTargetGroup('62-43', 25)
RangeT6243:Start()

--

-- Range T62-44
RangeT6244=RANGE:New('T62-44')
RangeT6244:AddBombingTargetGroup('62-44', 25)
RangeT6244:Start()

--

-- Range T62-45
RangeT6245=RANGE:New('T62-45')
RangeT6245:AddBombingTargetGroup('62-45', 25)
RangeT6245:Start()

--

-- Range T62-51
RangeT6251=RANGE:New('T62-51')
RangeT6251:AddBombingTargetGroup('62-51', 25)
RangeT6251:Start()

--

-- Range T62-52
RangeT6252=RANGE:New('T62-52')
RangeT6252:AddBombingTargetGroup('62-52', 25)
RangeT6252:Start()

--

-- Range T62-53
RangeT6253=RANGE:New('T62-53')
RangeT6253:AddBombingTargetGroup('62-53', 25)
RangeT6253:Start()

--

-- Range T62-54
RangeT6254=RANGE:New('T62-54')
RangeT6254:AddBombingTargetGroup('62-54', 25)
RangeT6254:Start()

--

-- Range T62-55
RangeT6255=RANGE:New('T62-55')
RangeT6255:AddBombingTargetGroup('62-55', 25)
RangeT6255:Start()

--

-- Range T62-56
RangeT6256=RANGE:New('T62-56')
RangeT6256:AddBombingTargetGroup('62-56', 25)
RangeT6256:Start()

--

-- Range T62-61
RangeT6261=RANGE:New('T62-61')
RangeT6261:AddBombingTargetGroup('62-61', 25)
RangeT6261:Start()

--

-- Range T62-62
RangeT6262=RANGE:New('T62-62')
RangeT6262:AddBombingTargetGroup('62-62', 25)
RangeT6262:Start()

--

-- Range T62-63
RangeT6263=RANGE:New('T62-63')
RangeT6263:AddBombingTargetGroup('62-63', 25)
RangeT6263:Start()

--

-- Range T62-71
RangeT6271=RANGE:New('T62-71')
RangeT6271:AddBombingTargetGroup('62-71', 25)
RangeT6271:Start()

--

-- Range T62-72
RangeT6272=RANGE:New('T62-72')
RangeT6272:AddBombingTargetGroup('62-72', 25)
RangeT6272:Start()

--

-- Range T62-73
RangeT6273=RANGE:New('T62-73')
RangeT6273:AddBombingTargetGroup('62-73', 25)
RangeT6273:Start()

--

-- Range T62-74
RangeT6274=RANGE:New('T62-74')
RangeT6274:AddBombingTargetGroup('62-74', 25)
RangeT6274:Start()

--

-- Range T62-75
RangeT6275=RANGE:New('T62-75')
RangeT6275:AddBombingTargetGroup('62-75', 25)
RangeT6275:Start()

--

-- Range T62-76
RangeT6276=RANGE:New('T62-76')
RangeT6276:AddBombingTargetGroup('62-76', 25)
RangeT6276:Start()

--

-- Range T62-77
RangeT6277=RANGE:New('T62-77')
RangeT6277:AddBombingTargetGroup('62-77', 25)
RangeT6277:Start()

--

-- Range T62-78
RangeT6278=RANGE:New('T62-78')
RangeT6278:AddBombingTargetGroup('62-78', 25)
RangeT6278:Start()

--

-- Range T62-79
RangeT6279=RANGE:New('T62-79')
RangeT6279:AddBombingTargetGroup('62-79', 25)
RangeT6279:Start()

--

-- Range T62-81
RangeT6281=RANGE:New('T62-81')
RangeT6281:AddBombingTargetGroup('62-81', 25)
RangeT6281:Start()

--

-- Range T62-83
RangeT6283=RANGE:New('T62-83')
RangeT6283:AddBombingTargetGroup('62-83', 25)
RangeT6283:Start()

--

-- Range T62-91
RangeT6291=RANGE:New('T62-91')
RangeT6291:AddBombingTargetGroup('62-91', 25)
RangeT6291:Start()

--

-- Range T62-92
RangeT6292=RANGE:New('T62-92')
RangeT6292:AddBombingTargetGroup('62-92', 25)
RangeT6292:Start()

--

-- Range T62-93
RangeT6293=RANGE:New('T62-93')
RangeT6293:AddBombingTargetGroup('62-93', 25)
RangeT6293:Start()

--

-- Range T63-01
RangeT6301=RANGE:New('T63-01')
RangeT6301:AddBombingTargetGroup('63-01', 25)
RangeT6301:Start()

--

-- Range T63-02
RangeT6302=RANGE:New('T63-02')
RangeT6302:AddBombingTargetGroup('63-02', 25)
RangeT6302:Start()

--

-- Range T63-03
RangeT6303=RANGE:New('T63-03')
RangeT6303:AddBombingTargetGroup('63-03', 25)
RangeT6303:Start()

--

-- Range T63-05
RangeT6305=RANGE:New('T63-05')
RangeT6305:AddBombingTargetGroup('63-05', 25)
RangeT6305:Start()

--

-- Range T63-10
RangeT6310=RANGE:New('T63-10')
RangeT6310:AddBombingTargetGroup('63-10', 25)
-- RangeT6310:AddBombingTargetGroup("63-10 Run-In Markers", 25)
RangeT6310:Start()

--

-- Range T63-12
RangeT6312=RANGE:New('T63-12')
RangeT6312:AddBombingTargetGroup('63-12', 25)
RangeT6312:Start()

--

-- Range T63-15
RangeT6315=RANGE:New('T63-15')
RangeT6315:AddBombingTargetGroup('63-15', 25)
RangeT6315:Start()

--

-- Range T64-05
RangeT6405=RANGE:New('T64-05')
RangeT6405:AddBombingTargetGroup('64-05', 25)
RangeT6405:Start()

--

-- Range T64-08
RangeT6408=RANGE:New('T64-08')
RangeT6408:AddBombingTargetGroup('64-08', 25)
RangeT6408:Start()

--

-- Range T64-09
RangeT6409=RANGE:New('T64-09')
RangeT6409:AddBombingTargetGroup('64-09', 25)
RangeT6409:Start()

--

-- Range T64-10
RangeT6410=RANGE:New('T64-10')
RangeT6410:AddBombingTargetGroup('64-10', 25)
RangeT6410:Start()

--

-- Range T64-11
RangeT6411=RANGE:New('T64-11')
RangeT6411:AddBombingTargetGroup('64-11', 25)
RangeT6411:Start()

--

-- Range T64-12
RangeT6412=RANGE:New('T64-12')
RangeT6412:AddBombingTargetGroup('64-12', 25)
RangeT6412:Start()

--

-- Range T64-13
RangeT6413=RANGE:New('T64-13')
RangeT6413:AddBombingTargetGroup('64-13', 25)
RangeT6413:Start()

--

-- Range T64-14
RangeT6414=RANGE:New('T64-14')
RangeT6414:AddBombingTargetGroup('64-14', 25)
RangeT6414:Start()

--

-- Range T64-15
RangeT6415=RANGE:New('T64-15')
RangeT6415:AddBombingTargetGroup('64-15', 25)
RangeT6415:Start()

--

-- Range T64-17
RangeT6415=RANGE:New('T64-15')
RangeT6415:AddBombingTargetGroup('64-15', 25)
RangeT6415:Start()

--

-- Range T64-19
RangeT6415=RANGE:New('T64-15')
RangeT6415:AddBombingTargetGroup('64-15', 25)
RangeT6415:Start()

--

-- Range T65-01
RangeT6501=RANGE:New('T65-01')
RangeT6501:AddBombingTargetGroup('65-01', 25)
RangeT6501:Start()

--

-- Range T65-02
RangeT6502=RANGE:New('T65-02')
RangeT6502:AddBombingTargetGroup('65-02', 25)
RangeT6502:Start()

--

-- Range T65-03
RangeT6503=RANGE:New('T65-03')
RangeT6503:AddBombingTargetGroup('65-03', 25)
RangeT6503:Start()

--

-- Range T65-04
RangeT6504=RANGE:New('T65-04')
RangeT6504:AddBombingTargetGroup('65-04', 25)
RangeT6504:Start()

--

-- Range T65-05
local BTT6505={"65-05 Building #001", "65-05 Building #002", "65-05 Building #003", "65-05 Building #004", "65-05 Building #005", "65-05 Building #006", "65-05 Building #007", "65-05 Building #008", "65-05 Building #009"}
RangeT6505=RANGE:New('T65-05')
RangeT6505:AddBombingTargetGroup('65-05', 25)
RangeT6505:AddBombingTargets(BTT6505, 25)
RangeT6505:Start()

--

-- Range T65-06
RangeT6506=RANGE:New('T65-06')
RangeT6506:AddBombingTargetGroup('65-06', 25)
RangeT6506:Start()

--

-- Range T65-07
RangeT6507=RANGE:New('T65-07')
RangeT6507:AddBombingTargetGroup('65-07', 25)
RangeT6507:Start()

--

-- Range T65-08
RangeT6508=RANGE:New('T65-08')
RangeT6508:AddBombingTargetGroup('65-08', 25)
RangeT6508:Start()

--

-- Range T65-10
RangeT6510=RANGE:New('T65-10')
RangeT6510:AddBombingTargetGroup('65-10', 25)
RangeT6510:Start()

--

-- Range T65-11
RangeT6511=RANGE:New('T65-11')
RangeT6511:AddBombingTargetGroup('65-11', 25)
RangeT6511:Start()

--

-- Range T66-01
RangeT6601=RANGE:New('T66-01')
RangeT6601:AddBombingTargetGroup('66-01', 25)
RangeT6601:Start()

--

-- Range T66-02
RangeT6602=RANGE:New('T66-02')
RangeT6602:AddBombingTargetGroup('66-02', 25)
RangeT6602:Start()

--

-- Range T66-03
RangeT6603=RANGE:New('T66-03')
RangeT6603:AddBombingTargetGroup('66-03', 25)
RangeT6603:Start()

--

-- Range T66-04
RangeT6604=RANGE:New('T66-04')
RangeT6604:AddBombingTargetGroup('66-04', 25)
RangeT6604:Start()

--

-- Range T66-05
RangeT6605=RANGE:New('T66-05')
RangeT6605:AddBombingTargetGroup('66-05', 25)
RangeT6605:Start()

--

-- Range T66-06
RangeT6606=RANGE:New('T66-06')
RangeT6606:AddBombingTargetGroup('66-06', 25)
RangeT6606:Start()

--

-- Range T66-07
RangeT6607=RANGE:New('T66-07')
RangeT6607:AddBombingTargetGroup('66-07', 25)
RangeT6607:Start()

--

-- Range T66-08
RangeT6608=RANGE:New('T66-08')
RangeT6608:AddBombingTargetGroup('66-08', 25)
RangeT6608:Start()

--

-- Range T66-09
RangeT6609=RANGE:New('T66-09')
RangeT6609:AddBombingTargetGroup('66-09', 25)
RangeT6609:Start()
