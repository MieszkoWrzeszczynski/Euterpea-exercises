import Euterpea

main_riff_first_tact = line [g 4 en :=: d 4 en, rest en, f 4 en :=: as 4 en, rest en, c 4 en :=: g 4 en, rest qn, d 4 en :=: g 4 en]
main_riff_second_tact = line [rest en, f 4 en :=: as 4 en, rest en, gs 4 en :=: cs 4 en, g 4 qn :=: c 4 qn, rest qn]
main_riff_3_tact =  line $ take 6 $ lineToList main_riff_first_tact
main_riff_3_tact_all = line $ lineToList main_riff_3_tact ++ [f 4 en :=: as 4 en]
main_riff_4_tact = line [rest en, g 4 hn :=: d 4 hn, rest en, rest hn]

guitar_intro = instrument OverdrivenGuitar (main_riff_first_tact :+: main_riff_second_tact :+: main_riff_3_tact_all :+: main_riff_4_tact)

bassDrumPhrase = times 4 $ line [perc PedalHiHat sn :=: perc OpenHiHat sn, rest sn,
                       times 3 (line [perc PedalHiHat sn, perc PedalHiHat sn, perc PedalHiHat sn :=: perc OpenHiHat sn,rest sn]),
                       rest sn, perc PedalHiHat sn]

snareDrum =  times 4 $ line [rest qn, perc AcousticSnare qn, rest qn, perc AcousticSnare qn]
percussion = bassDrumPhrase :+: (bassDrumPhrase :=: snareDrum)

music = guitar_intro :+: ( times 2 guitar_intro :=: percussion)
