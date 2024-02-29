name="Skin editor"
description = "changes your skin in real time"

importLib("BlockRGB.lua")

--convert block -> rbg without having to place it - make module to go thru all blocks and get it and put it in a table

--find closest block
--rbg to block

--make some kind of orginizy folder thingy (last)



--Press button and the statue becomes your skin 
---> loop thru png and convert png coords to minecraft coords
---> convert the rgb to block
---> set da block

--make it constantly check and change your skin
---> loop tru png and check minecraft skin
---> change the png based on what we see

IRLcoordsx = {}
IRLcoordsy = {}
IRLcoordsxIRL ={}
IRLcoordsyIRL = {}
IRLcoordszIRL = {}

IRLcoordsx[ 0]= 8; IRLcoordsy[ 0]= 8; IRLcoordsxIRL[ 0]=-13; IRLcoordsyIRL[ 0]= 40; IRLcoordszIRL[ 0]= 7
IRLcoordsx[ 1]= 8; IRLcoordsy[ 1]= 9; IRLcoordsxIRL[ 1]=-13; IRLcoordsyIRL[ 1]= 39; IRLcoordszIRL[ 1]= 7
IRLcoordsx[ 2]= 8; IRLcoordsy[ 2]= 10; IRLcoordsxIRL[ 2]=-13; IRLcoordsyIRL[ 2]= 38; IRLcoordszIRL[ 2]= 7
IRLcoordsx[ 3]= 8; IRLcoordsy[ 3]= 11; IRLcoordsxIRL[ 3]=-13; IRLcoordsyIRL[ 3]= 37; IRLcoordszIRL[ 3]= 7
IRLcoordsx[ 4]= 8; IRLcoordsy[ 4]= 12; IRLcoordsxIRL[ 4]=-13; IRLcoordsyIRL[ 4]= 36; IRLcoordszIRL[ 4]= 7
IRLcoordsx[ 5]= 8; IRLcoordsy[ 5]= 13; IRLcoordsxIRL[ 5]=-13; IRLcoordsyIRL[ 5]= 35; IRLcoordszIRL[ 5]= 7
IRLcoordsx[ 6]= 8; IRLcoordsy[ 6]= 14; IRLcoordsxIRL[ 6]=-13; IRLcoordsyIRL[ 6]= 34; IRLcoordszIRL[ 6]= 7
IRLcoordsx[ 7]= 8; IRLcoordsy[ 7]= 15; IRLcoordsxIRL[ 7]=-13; IRLcoordsyIRL[ 7]= 33; IRLcoordszIRL[ 7]= 7
IRLcoordsx[ 8]= 9; IRLcoordsy[ 8]= 8; IRLcoordsxIRL[ 8]=-12; IRLcoordsyIRL[ 8]= 40; IRLcoordszIRL[ 8]= 7
IRLcoordsx[ 9]= 9; IRLcoordsy[ 9]= 9; IRLcoordsxIRL[ 9]=-12; IRLcoordsyIRL[ 9]= 39; IRLcoordszIRL[ 9]= 7
IRLcoordsx[ 10]= 9; IRLcoordsy[ 10]= 10; IRLcoordsxIRL[ 10]=-12; IRLcoordsyIRL[ 10]= 38; IRLcoordszIRL[ 10]= 7
IRLcoordsx[ 11]= 9; IRLcoordsy[ 11]= 11; IRLcoordsxIRL[ 11]=-12; IRLcoordsyIRL[ 11]= 37; IRLcoordszIRL[ 11]= 7
IRLcoordsx[ 12]= 9; IRLcoordsy[ 12]= 12; IRLcoordsxIRL[ 12]=-12; IRLcoordsyIRL[ 12]= 36; IRLcoordszIRL[ 12]= 7
IRLcoordsx[ 13]= 9; IRLcoordsy[ 13]= 13; IRLcoordsxIRL[ 13]=-12; IRLcoordsyIRL[ 13]= 35; IRLcoordszIRL[ 13]= 7
IRLcoordsx[ 14]= 9; IRLcoordsy[ 14]= 14; IRLcoordsxIRL[ 14]=-12; IRLcoordsyIRL[ 14]= 34; IRLcoordszIRL[ 14]= 7
IRLcoordsx[ 15]= 9; IRLcoordsy[ 15]= 15; IRLcoordsxIRL[ 15]=-12; IRLcoordsyIRL[ 15]= 33; IRLcoordszIRL[ 15]= 7
IRLcoordsx[ 16]= 10; IRLcoordsy[ 16]= 8; IRLcoordsxIRL[ 16]=-11; IRLcoordsyIRL[ 16]= 40; IRLcoordszIRL[ 16]= 7
IRLcoordsx[ 17]= 10; IRLcoordsy[ 17]= 9; IRLcoordsxIRL[ 17]=-11; IRLcoordsyIRL[ 17]= 39; IRLcoordszIRL[ 17]= 7
IRLcoordsx[ 18]= 10; IRLcoordsy[ 18]= 10; IRLcoordsxIRL[ 18]=-11; IRLcoordsyIRL[ 18]= 38; IRLcoordszIRL[ 18]= 7
IRLcoordsx[ 19]= 10; IRLcoordsy[ 19]= 11; IRLcoordsxIRL[ 19]=-11; IRLcoordsyIRL[ 19]= 37; IRLcoordszIRL[ 19]= 7
IRLcoordsx[ 20]= 10; IRLcoordsy[ 20]= 12; IRLcoordsxIRL[ 20]=-11; IRLcoordsyIRL[ 20]= 36; IRLcoordszIRL[ 20]= 7
IRLcoordsx[ 21]= 10; IRLcoordsy[ 21]= 13; IRLcoordsxIRL[ 21]=-11; IRLcoordsyIRL[ 21]= 35; IRLcoordszIRL[ 21]= 7
IRLcoordsx[ 22]= 10; IRLcoordsy[ 22]= 14; IRLcoordsxIRL[ 22]=-11; IRLcoordsyIRL[ 22]= 34; IRLcoordszIRL[ 22]= 7
IRLcoordsx[ 23]= 10; IRLcoordsy[ 23]= 15; IRLcoordsxIRL[ 23]=-11; IRLcoordsyIRL[ 23]= 33; IRLcoordszIRL[ 23]= 7
IRLcoordsx[ 24]= 11; IRLcoordsy[ 24]= 8; IRLcoordsxIRL[ 24]=-10; IRLcoordsyIRL[ 24]= 40; IRLcoordszIRL[ 24]= 7
IRLcoordsx[ 25]= 11; IRLcoordsy[ 25]= 9; IRLcoordsxIRL[ 25]=-10; IRLcoordsyIRL[ 25]= 39; IRLcoordszIRL[ 25]= 7
IRLcoordsx[ 26]= 11; IRLcoordsy[ 26]= 10; IRLcoordsxIRL[ 26]=-10; IRLcoordsyIRL[ 26]= 38; IRLcoordszIRL[ 26]= 7
IRLcoordsx[ 27]= 11; IRLcoordsy[ 27]= 11; IRLcoordsxIRL[ 27]=-10; IRLcoordsyIRL[ 27]= 37; IRLcoordszIRL[ 27]= 7
IRLcoordsx[ 28]= 11; IRLcoordsy[ 28]= 12; IRLcoordsxIRL[ 28]=-10; IRLcoordsyIRL[ 28]= 36; IRLcoordszIRL[ 28]= 7
IRLcoordsx[ 29]= 11; IRLcoordsy[ 29]= 13; IRLcoordsxIRL[ 29]=-10; IRLcoordsyIRL[ 29]= 35; IRLcoordszIRL[ 29]= 7
IRLcoordsx[ 30]= 11; IRLcoordsy[ 30]= 14; IRLcoordsxIRL[ 30]=-10; IRLcoordsyIRL[ 30]= 34; IRLcoordszIRL[ 30]= 7
IRLcoordsx[ 31]= 11; IRLcoordsy[ 31]= 15; IRLcoordsxIRL[ 31]=-10; IRLcoordsyIRL[ 31]= 33; IRLcoordszIRL[ 31]= 7
IRLcoordsx[ 32]= 12; IRLcoordsy[ 32]= 8; IRLcoordsxIRL[ 32]=-9; IRLcoordsyIRL[ 32]= 40; IRLcoordszIRL[ 32]= 7
IRLcoordsx[ 33]= 12; IRLcoordsy[ 33]= 9; IRLcoordsxIRL[ 33]=-9; IRLcoordsyIRL[ 33]= 39; IRLcoordszIRL[ 33]= 7
IRLcoordsx[ 34]= 12; IRLcoordsy[ 34]= 10; IRLcoordsxIRL[ 34]=-9; IRLcoordsyIRL[ 34]= 38; IRLcoordszIRL[ 34]= 7
IRLcoordsx[ 35]= 12; IRLcoordsy[ 35]= 11; IRLcoordsxIRL[ 35]=-9; IRLcoordsyIRL[ 35]= 37; IRLcoordszIRL[ 35]= 7
IRLcoordsx[ 36]= 12; IRLcoordsy[ 36]= 12; IRLcoordsxIRL[ 36]=-9; IRLcoordsyIRL[ 36]= 36; IRLcoordszIRL[ 36]= 7
IRLcoordsx[ 37]= 12; IRLcoordsy[ 37]= 13; IRLcoordsxIRL[ 37]=-9; IRLcoordsyIRL[ 37]= 35; IRLcoordszIRL[ 37]= 7
IRLcoordsx[ 38]= 12; IRLcoordsy[ 38]= 14; IRLcoordsxIRL[ 38]=-9; IRLcoordsyIRL[ 38]= 34; IRLcoordszIRL[ 38]= 7
IRLcoordsx[ 39]= 12; IRLcoordsy[ 39]= 15; IRLcoordsxIRL[ 39]=-9; IRLcoordsyIRL[ 39]= 33; IRLcoordszIRL[ 39]= 7
IRLcoordsx[ 40]= 13; IRLcoordsy[ 40]= 8; IRLcoordsxIRL[ 40]=-8; IRLcoordsyIRL[ 40]= 40; IRLcoordszIRL[ 40]= 7
IRLcoordsx[ 41]= 13; IRLcoordsy[ 41]= 9; IRLcoordsxIRL[ 41]=-8; IRLcoordsyIRL[ 41]= 39; IRLcoordszIRL[ 41]= 7
IRLcoordsx[ 42]= 13; IRLcoordsy[ 42]= 10; IRLcoordsxIRL[ 42]=-8; IRLcoordsyIRL[ 42]= 38; IRLcoordszIRL[ 42]= 7
IRLcoordsx[ 43]= 13; IRLcoordsy[ 43]= 11; IRLcoordsxIRL[ 43]=-8; IRLcoordsyIRL[ 43]= 37; IRLcoordszIRL[ 43]= 7
IRLcoordsx[ 44]= 13; IRLcoordsy[ 44]= 12; IRLcoordsxIRL[ 44]=-8; IRLcoordsyIRL[ 44]= 36; IRLcoordszIRL[ 44]= 7
IRLcoordsx[ 45]= 13; IRLcoordsy[ 45]= 13; IRLcoordsxIRL[ 45]=-8; IRLcoordsyIRL[ 45]= 35; IRLcoordszIRL[ 45]= 7
IRLcoordsx[ 46]= 13; IRLcoordsy[ 46]= 14; IRLcoordsxIRL[ 46]=-8; IRLcoordsyIRL[ 46]= 34; IRLcoordszIRL[ 46]= 7
IRLcoordsx[ 47]= 13; IRLcoordsy[ 47]= 15; IRLcoordsxIRL[ 47]=-8; IRLcoordsyIRL[ 47]= 33; IRLcoordszIRL[ 47]= 7
IRLcoordsx[ 48]= 14; IRLcoordsy[ 48]= 8; IRLcoordsxIRL[ 48]=-7; IRLcoordsyIRL[ 48]= 40; IRLcoordszIRL[ 48]= 7
IRLcoordsx[ 49]= 14; IRLcoordsy[ 49]= 9; IRLcoordsxIRL[ 49]=-7; IRLcoordsyIRL[ 49]= 39; IRLcoordszIRL[ 49]= 7
IRLcoordsx[ 50]= 14; IRLcoordsy[ 50]= 10; IRLcoordsxIRL[ 50]=-7; IRLcoordsyIRL[ 50]= 38; IRLcoordszIRL[ 50]= 7
IRLcoordsx[ 51]= 14; IRLcoordsy[ 51]= 11; IRLcoordsxIRL[ 51]=-7; IRLcoordsyIRL[ 51]= 37; IRLcoordszIRL[ 51]= 7
IRLcoordsx[ 52]= 14; IRLcoordsy[ 52]= 12; IRLcoordsxIRL[ 52]=-7; IRLcoordsyIRL[ 52]= 36; IRLcoordszIRL[ 52]= 7
IRLcoordsx[ 53]= 14; IRLcoordsy[ 53]= 13; IRLcoordsxIRL[ 53]=-7; IRLcoordsyIRL[ 53]= 35; IRLcoordszIRL[ 53]= 7
IRLcoordsx[ 54]= 14; IRLcoordsy[ 54]= 14; IRLcoordsxIRL[ 54]=-7; IRLcoordsyIRL[ 54]= 34; IRLcoordszIRL[ 54]= 7
IRLcoordsx[ 55]= 14; IRLcoordsy[ 55]= 15; IRLcoordsxIRL[ 55]=-7; IRLcoordsyIRL[ 55]= 33; IRLcoordszIRL[ 55]= 7
IRLcoordsx[ 56]= 15; IRLcoordsy[ 56]= 8; IRLcoordsxIRL[ 56]=-6; IRLcoordsyIRL[ 56]= 40; IRLcoordszIRL[ 56]= 7
IRLcoordsx[ 57]= 15; IRLcoordsy[ 57]= 9; IRLcoordsxIRL[ 57]=-6; IRLcoordsyIRL[ 57]= 39; IRLcoordszIRL[ 57]= 7
IRLcoordsx[ 58]= 15; IRLcoordsy[ 58]= 10; IRLcoordsxIRL[ 58]=-6; IRLcoordsyIRL[ 58]= 38; IRLcoordszIRL[ 58]= 7
IRLcoordsx[ 59]= 15; IRLcoordsy[ 59]= 11; IRLcoordsxIRL[ 59]=-6; IRLcoordsyIRL[ 59]= 37; IRLcoordszIRL[ 59]= 7
IRLcoordsx[ 60]= 15; IRLcoordsy[ 60]= 12; IRLcoordsxIRL[ 60]=-6; IRLcoordsyIRL[ 60]= 36; IRLcoordszIRL[ 60]= 7
IRLcoordsx[ 61]= 15; IRLcoordsy[ 61]= 13; IRLcoordsxIRL[ 61]=-6; IRLcoordsyIRL[ 61]= 35; IRLcoordszIRL[ 61]= 7
IRLcoordsx[ 62]= 15; IRLcoordsy[ 62]= 14; IRLcoordsxIRL[ 62]=-6; IRLcoordsyIRL[ 62]= 34; IRLcoordszIRL[ 62]= 7
IRLcoordsx[ 63]= 15; IRLcoordsy[ 63]= 15; IRLcoordsxIRL[ 63]=-6; IRLcoordsyIRL[ 63]= 33; IRLcoordszIRL[ 63]= 7
IRLcoordsx[ 64]= 24; IRLcoordsy[ 64]= 8; IRLcoordsxIRL[ 64]=-6; IRLcoordsyIRL[ 64]= 40; IRLcoordszIRL[ 64]=-2
IRLcoordsx[ 65]= 24; IRLcoordsy[ 65]= 9; IRLcoordsxIRL[ 65]=-6; IRLcoordsyIRL[ 65]= 39; IRLcoordszIRL[ 65]=-2
IRLcoordsx[ 66]= 24; IRLcoordsy[ 66]= 10; IRLcoordsxIRL[ 66]=-6; IRLcoordsyIRL[ 66]= 38; IRLcoordszIRL[ 66]=-2
IRLcoordsx[ 67]= 24; IRLcoordsy[ 67]= 11; IRLcoordsxIRL[ 67]=-6; IRLcoordsyIRL[ 67]= 37; IRLcoordszIRL[ 67]=-2
IRLcoordsx[ 68]= 24; IRLcoordsy[ 68]= 12; IRLcoordsxIRL[ 68]=-6; IRLcoordsyIRL[ 68]= 36; IRLcoordszIRL[ 68]=-2
IRLcoordsx[ 69]= 24; IRLcoordsy[ 69]= 13; IRLcoordsxIRL[ 69]=-6; IRLcoordsyIRL[ 69]= 35; IRLcoordszIRL[ 69]=-2
IRLcoordsx[ 70]= 24; IRLcoordsy[ 70]= 14; IRLcoordsxIRL[ 70]=-6; IRLcoordsyIRL[ 70]= 34; IRLcoordszIRL[ 70]=-2
IRLcoordsx[ 71]= 24; IRLcoordsy[ 71]= 15; IRLcoordsxIRL[ 71]=-6; IRLcoordsyIRL[ 71]= 33; IRLcoordszIRL[ 71]=-2
IRLcoordsx[ 72]= 25; IRLcoordsy[ 72]= 8; IRLcoordsxIRL[ 72]=-7; IRLcoordsyIRL[ 72]= 40; IRLcoordszIRL[ 72]=-2
IRLcoordsx[ 73]= 25; IRLcoordsy[ 73]= 9; IRLcoordsxIRL[ 73]=-7; IRLcoordsyIRL[ 73]= 39; IRLcoordszIRL[ 73]=-2
IRLcoordsx[ 74]= 25; IRLcoordsy[ 74]= 10; IRLcoordsxIRL[ 74]=-7; IRLcoordsyIRL[ 74]= 38; IRLcoordszIRL[ 74]=-2
IRLcoordsx[ 75]= 25; IRLcoordsy[ 75]= 11; IRLcoordsxIRL[ 75]=-7; IRLcoordsyIRL[ 75]= 37; IRLcoordszIRL[ 75]=-2
IRLcoordsx[ 76]= 25; IRLcoordsy[ 76]= 12; IRLcoordsxIRL[ 76]=-7; IRLcoordsyIRL[ 76]= 36; IRLcoordszIRL[ 76]=-2
IRLcoordsx[ 77]= 25; IRLcoordsy[ 77]= 13; IRLcoordsxIRL[ 77]=-7; IRLcoordsyIRL[ 77]= 35; IRLcoordszIRL[ 77]=-2
IRLcoordsx[ 78]= 25; IRLcoordsy[ 78]= 14; IRLcoordsxIRL[ 78]=-7; IRLcoordsyIRL[ 78]= 34; IRLcoordszIRL[ 78]=-2
IRLcoordsx[ 79]= 25; IRLcoordsy[ 79]= 15; IRLcoordsxIRL[ 79]=-7; IRLcoordsyIRL[ 79]= 33; IRLcoordszIRL[ 79]=-2
IRLcoordsx[ 80]= 26; IRLcoordsy[ 80]= 8; IRLcoordsxIRL[ 80]=-8; IRLcoordsyIRL[ 80]= 40; IRLcoordszIRL[ 80]=-2
IRLcoordsx[ 81]= 26; IRLcoordsy[ 81]= 9; IRLcoordsxIRL[ 81]=-8; IRLcoordsyIRL[ 81]= 39; IRLcoordszIRL[ 81]=-2
IRLcoordsx[ 82]= 26; IRLcoordsy[ 82]= 10; IRLcoordsxIRL[ 82]=-8; IRLcoordsyIRL[ 82]= 38; IRLcoordszIRL[ 82]=-2
IRLcoordsx[ 83]= 26; IRLcoordsy[ 83]= 11; IRLcoordsxIRL[ 83]=-8; IRLcoordsyIRL[ 83]= 37; IRLcoordszIRL[ 83]=-2
IRLcoordsx[ 84]= 26; IRLcoordsy[ 84]= 12; IRLcoordsxIRL[ 84]=-8; IRLcoordsyIRL[ 84]= 36; IRLcoordszIRL[ 84]=-2
IRLcoordsx[ 85]= 26; IRLcoordsy[ 85]= 13; IRLcoordsxIRL[ 85]=-8; IRLcoordsyIRL[ 85]= 35; IRLcoordszIRL[ 85]=-2
IRLcoordsx[ 86]= 26; IRLcoordsy[ 86]= 14; IRLcoordsxIRL[ 86]=-8; IRLcoordsyIRL[ 86]= 34; IRLcoordszIRL[ 86]=-2
IRLcoordsx[ 87]= 26; IRLcoordsy[ 87]= 15; IRLcoordsxIRL[ 87]=-8; IRLcoordsyIRL[ 87]= 33; IRLcoordszIRL[ 87]=-2
IRLcoordsx[ 88]= 27; IRLcoordsy[ 88]= 8; IRLcoordsxIRL[ 88]=-9; IRLcoordsyIRL[ 88]= 40; IRLcoordszIRL[ 88]=-2
IRLcoordsx[ 89]= 27; IRLcoordsy[ 89]= 9; IRLcoordsxIRL[ 89]=-9; IRLcoordsyIRL[ 89]= 39; IRLcoordszIRL[ 89]=-2
IRLcoordsx[ 90]= 27; IRLcoordsy[ 90]= 10; IRLcoordsxIRL[ 90]=-9; IRLcoordsyIRL[ 90]= 38; IRLcoordszIRL[ 90]=-2
IRLcoordsx[ 91]= 27; IRLcoordsy[ 91]= 11; IRLcoordsxIRL[ 91]=-9; IRLcoordsyIRL[ 91]= 37; IRLcoordszIRL[ 91]=-2
IRLcoordsx[ 92]= 27; IRLcoordsy[ 92]= 12; IRLcoordsxIRL[ 92]=-9; IRLcoordsyIRL[ 92]= 36; IRLcoordszIRL[ 92]=-2
IRLcoordsx[ 93]= 27; IRLcoordsy[ 93]= 13; IRLcoordsxIRL[ 93]=-9; IRLcoordsyIRL[ 93]= 35; IRLcoordszIRL[ 93]=-2
IRLcoordsx[ 94]= 27; IRLcoordsy[ 94]= 14; IRLcoordsxIRL[ 94]=-9; IRLcoordsyIRL[ 94]= 34; IRLcoordszIRL[ 94]=-2
IRLcoordsx[ 95]= 27; IRLcoordsy[ 95]= 15; IRLcoordsxIRL[ 95]=-9; IRLcoordsyIRL[ 95]= 33; IRLcoordszIRL[ 95]=-2
IRLcoordsx[ 96]= 28; IRLcoordsy[ 96]= 8; IRLcoordsxIRL[ 96]=-10; IRLcoordsyIRL[ 96]= 40; IRLcoordszIRL[ 96]=-2
IRLcoordsx[ 97]= 28; IRLcoordsy[ 97]= 9; IRLcoordsxIRL[ 97]=-10; IRLcoordsyIRL[ 97]= 39; IRLcoordszIRL[ 97]=-2
IRLcoordsx[ 98]= 28; IRLcoordsy[ 98]= 10; IRLcoordsxIRL[ 98]=-10; IRLcoordsyIRL[ 98]= 38; IRLcoordszIRL[ 98]=-2
IRLcoordsx[ 99]= 28; IRLcoordsy[ 99]= 11; IRLcoordsxIRL[ 99]=-10; IRLcoordsyIRL[ 99]= 37; IRLcoordszIRL[ 99]=-2
IRLcoordsx[ 100]= 28; IRLcoordsy[ 100]= 12; IRLcoordsxIRL[ 100]=-10; IRLcoordsyIRL[ 100]= 36; IRLcoordszIRL[ 100]=-2
IRLcoordsx[ 101]= 28; IRLcoordsy[ 101]= 13; IRLcoordsxIRL[ 101]=-10; IRLcoordsyIRL[ 101]= 35; IRLcoordszIRL[ 101]=-2
IRLcoordsx[ 102]= 28; IRLcoordsy[ 102]= 14; IRLcoordsxIRL[ 102]=-10; IRLcoordsyIRL[ 102]= 34; IRLcoordszIRL[ 102]=-2
IRLcoordsx[ 103]= 28; IRLcoordsy[ 103]= 15; IRLcoordsxIRL[ 103]=-10; IRLcoordsyIRL[ 103]= 33; IRLcoordszIRL[ 103]=-2
IRLcoordsx[ 104]= 29; IRLcoordsy[ 104]= 8; IRLcoordsxIRL[ 104]=-11; IRLcoordsyIRL[ 104]= 40; IRLcoordszIRL[ 104]=-2
IRLcoordsx[ 105]= 29; IRLcoordsy[ 105]= 9; IRLcoordsxIRL[ 105]=-11; IRLcoordsyIRL[ 105]= 39; IRLcoordszIRL[ 105]=-2
IRLcoordsx[ 106]= 29; IRLcoordsy[ 106]= 10; IRLcoordsxIRL[ 106]=-11; IRLcoordsyIRL[ 106]= 38; IRLcoordszIRL[ 106]=-2
IRLcoordsx[ 107]= 29; IRLcoordsy[ 107]= 11; IRLcoordsxIRL[ 107]=-11; IRLcoordsyIRL[ 107]= 37; IRLcoordszIRL[ 107]=-2
IRLcoordsx[ 108]= 29; IRLcoordsy[ 108]= 12; IRLcoordsxIRL[ 108]=-11; IRLcoordsyIRL[ 108]= 36; IRLcoordszIRL[ 108]=-2
IRLcoordsx[ 109]= 29; IRLcoordsy[ 109]= 13; IRLcoordsxIRL[ 109]=-11; IRLcoordsyIRL[ 109]= 35; IRLcoordszIRL[ 109]=-2
IRLcoordsx[ 110]= 29; IRLcoordsy[ 110]= 14; IRLcoordsxIRL[ 110]=-11; IRLcoordsyIRL[ 110]= 34; IRLcoordszIRL[ 110]=-2
IRLcoordsx[ 111]= 29; IRLcoordsy[ 111]= 15; IRLcoordsxIRL[ 111]=-11; IRLcoordsyIRL[ 111]= 33; IRLcoordszIRL[ 111]=-2
IRLcoordsx[ 112]= 30; IRLcoordsy[ 112]= 8; IRLcoordsxIRL[ 112]=-12; IRLcoordsyIRL[ 112]= 40; IRLcoordszIRL[ 112]=-2
IRLcoordsx[ 113]= 30; IRLcoordsy[ 113]= 9; IRLcoordsxIRL[ 113]=-12; IRLcoordsyIRL[ 113]= 39; IRLcoordszIRL[ 113]=-2
IRLcoordsx[ 114]= 30; IRLcoordsy[ 114]= 10; IRLcoordsxIRL[ 114]=-12; IRLcoordsyIRL[ 114]= 38; IRLcoordszIRL[ 114]=-2
IRLcoordsx[ 115]= 30; IRLcoordsy[ 115]= 11; IRLcoordsxIRL[ 115]=-12; IRLcoordsyIRL[ 115]= 37; IRLcoordszIRL[ 115]=-2
IRLcoordsx[ 116]= 30; IRLcoordsy[ 116]= 12; IRLcoordsxIRL[ 116]=-12; IRLcoordsyIRL[ 116]= 36; IRLcoordszIRL[ 116]=-2
IRLcoordsx[ 117]= 30; IRLcoordsy[ 117]= 13; IRLcoordsxIRL[ 117]=-12; IRLcoordsyIRL[ 117]= 35; IRLcoordszIRL[ 117]=-2
IRLcoordsx[ 118]= 30; IRLcoordsy[ 118]= 14; IRLcoordsxIRL[ 118]=-12; IRLcoordsyIRL[ 118]= 34; IRLcoordszIRL[ 118]=-2
IRLcoordsx[ 119]= 30; IRLcoordsy[ 119]= 15; IRLcoordsxIRL[ 119]=-12; IRLcoordsyIRL[ 119]= 33; IRLcoordszIRL[ 119]=-2
IRLcoordsx[ 120]= 31; IRLcoordsy[ 120]= 8; IRLcoordsxIRL[ 120]=-13; IRLcoordsyIRL[ 120]= 40; IRLcoordszIRL[ 120]=-2
IRLcoordsx[ 121]= 31; IRLcoordsy[ 121]= 9; IRLcoordsxIRL[ 121]=-13; IRLcoordsyIRL[ 121]= 39; IRLcoordszIRL[ 121]=-2
IRLcoordsx[ 122]= 31; IRLcoordsy[ 122]= 10; IRLcoordsxIRL[ 122]=-13; IRLcoordsyIRL[ 122]= 38; IRLcoordszIRL[ 122]=-2
IRLcoordsx[ 123]= 31; IRLcoordsy[ 123]= 11; IRLcoordsxIRL[ 123]=-13; IRLcoordsyIRL[ 123]= 37; IRLcoordszIRL[ 123]=-2
IRLcoordsx[ 124]= 31; IRLcoordsy[ 124]= 12; IRLcoordsxIRL[ 124]=-13; IRLcoordsyIRL[ 124]= 36; IRLcoordszIRL[ 124]=-2
IRLcoordsx[ 125]= 31; IRLcoordsy[ 125]= 13; IRLcoordsxIRL[ 125]=-13; IRLcoordsyIRL[ 125]= 35; IRLcoordszIRL[ 125]=-2
IRLcoordsx[ 126]= 31; IRLcoordsy[ 126]= 14; IRLcoordsxIRL[ 126]=-13; IRLcoordsyIRL[ 126]= 34; IRLcoordszIRL[ 126]=-2
IRLcoordsx[ 127]= 31; IRLcoordsy[ 127]= 15; IRLcoordsxIRL[ 127]=-13; IRLcoordsyIRL[ 127]= 33; IRLcoordszIRL[ 127]=-2
IRLcoordsx[ 128]= 0; IRLcoordsy[ 128]= 8; IRLcoordsxIRL[ 128]=-14; IRLcoordsyIRL[ 128]= 40; IRLcoordszIRL[ 128]=-1
IRLcoordsx[ 129]= 0; IRLcoordsy[ 129]= 9; IRLcoordsxIRL[ 129]=-14; IRLcoordsyIRL[ 129]= 39; IRLcoordszIRL[ 129]=-1
IRLcoordsx[ 130]= 0; IRLcoordsy[ 130]= 10; IRLcoordsxIRL[ 130]=-14; IRLcoordsyIRL[ 130]= 38; IRLcoordszIRL[ 130]=-1
IRLcoordsx[ 131]= 0; IRLcoordsy[ 131]= 11; IRLcoordsxIRL[ 131]=-14; IRLcoordsyIRL[ 131]= 37; IRLcoordszIRL[ 131]=-1
IRLcoordsx[ 132]= 0; IRLcoordsy[ 132]= 12; IRLcoordsxIRL[ 132]=-14; IRLcoordsyIRL[ 132]= 36; IRLcoordszIRL[ 132]=-1
IRLcoordsx[ 133]= 0; IRLcoordsy[ 133]= 13; IRLcoordsxIRL[ 133]=-14; IRLcoordsyIRL[ 133]= 35; IRLcoordszIRL[ 133]=-1
IRLcoordsx[ 134]= 0; IRLcoordsy[ 134]= 14; IRLcoordsxIRL[ 134]=-14; IRLcoordsyIRL[ 134]= 34; IRLcoordszIRL[ 134]=-1
IRLcoordsx[ 135]= 0; IRLcoordsy[ 135]= 15; IRLcoordsxIRL[ 135]=-14; IRLcoordsyIRL[ 135]= 33; IRLcoordszIRL[ 135]=-1
IRLcoordsx[ 136]= 1; IRLcoordsy[ 136]= 8; IRLcoordsxIRL[ 136]=-14; IRLcoordsyIRL[ 136]= 40; IRLcoordszIRL[ 136]= 0
IRLcoordsx[ 137]= 1; IRLcoordsy[ 137]= 9; IRLcoordsxIRL[ 137]=-14; IRLcoordsyIRL[ 137]= 39; IRLcoordszIRL[ 137]= 0
IRLcoordsx[ 138]= 1; IRLcoordsy[ 138]= 10; IRLcoordsxIRL[ 138]=-14; IRLcoordsyIRL[ 138]= 38; IRLcoordszIRL[ 138]= 0
IRLcoordsx[ 139]= 1; IRLcoordsy[ 139]= 11; IRLcoordsxIRL[ 139]=-14; IRLcoordsyIRL[ 139]= 37; IRLcoordszIRL[ 139]= 0
IRLcoordsx[ 140]= 1; IRLcoordsy[ 140]= 12; IRLcoordsxIRL[ 140]=-14; IRLcoordsyIRL[ 140]= 36; IRLcoordszIRL[ 140]= 0
IRLcoordsx[ 141]= 1; IRLcoordsy[ 141]= 13; IRLcoordsxIRL[ 141]=-14; IRLcoordsyIRL[ 141]= 35; IRLcoordszIRL[ 141]= 0
IRLcoordsx[ 142]= 1; IRLcoordsy[ 142]= 14; IRLcoordsxIRL[ 142]=-14; IRLcoordsyIRL[ 142]= 34; IRLcoordszIRL[ 142]= 0
IRLcoordsx[ 143]= 1; IRLcoordsy[ 143]= 15; IRLcoordsxIRL[ 143]=-14; IRLcoordsyIRL[ 143]= 33; IRLcoordszIRL[ 143]= 0
IRLcoordsx[ 144]= 2; IRLcoordsy[ 144]= 8; IRLcoordsxIRL[ 144]=-14; IRLcoordsyIRL[ 144]= 40; IRLcoordszIRL[ 144]= 1
IRLcoordsx[ 145]= 2; IRLcoordsy[ 145]= 9; IRLcoordsxIRL[ 145]=-14; IRLcoordsyIRL[ 145]= 39; IRLcoordszIRL[ 145]= 1
IRLcoordsx[ 146]= 2; IRLcoordsy[ 146]= 10; IRLcoordsxIRL[ 146]=-14; IRLcoordsyIRL[ 146]= 38; IRLcoordszIRL[ 146]= 1
IRLcoordsx[ 147]= 2; IRLcoordsy[ 147]= 11; IRLcoordsxIRL[ 147]=-14; IRLcoordsyIRL[ 147]= 37; IRLcoordszIRL[ 147]= 1
IRLcoordsx[ 148]= 2; IRLcoordsy[ 148]= 12; IRLcoordsxIRL[ 148]=-14; IRLcoordsyIRL[ 148]= 36; IRLcoordszIRL[ 148]= 1
IRLcoordsx[ 149]= 2; IRLcoordsy[ 149]= 13; IRLcoordsxIRL[ 149]=-14; IRLcoordsyIRL[ 149]= 35; IRLcoordszIRL[ 149]= 1
IRLcoordsx[ 150]= 2; IRLcoordsy[ 150]= 14; IRLcoordsxIRL[ 150]=-14; IRLcoordsyIRL[ 150]= 34; IRLcoordszIRL[ 150]= 1
IRLcoordsx[ 151]= 2; IRLcoordsy[ 151]= 15; IRLcoordsxIRL[ 151]=-14; IRLcoordsyIRL[ 151]= 33; IRLcoordszIRL[ 151]= 1
IRLcoordsx[ 152]= 3; IRLcoordsy[ 152]= 8; IRLcoordsxIRL[ 152]=-14; IRLcoordsyIRL[ 152]= 40; IRLcoordszIRL[ 152]= 2
IRLcoordsx[ 153]= 3; IRLcoordsy[ 153]= 9; IRLcoordsxIRL[ 153]=-14; IRLcoordsyIRL[ 153]= 39; IRLcoordszIRL[ 153]= 2
IRLcoordsx[ 154]= 3; IRLcoordsy[ 154]= 10; IRLcoordsxIRL[ 154]=-14; IRLcoordsyIRL[ 154]= 38; IRLcoordszIRL[ 154]= 2
IRLcoordsx[ 155]= 3; IRLcoordsy[ 155]= 11; IRLcoordsxIRL[ 155]=-14; IRLcoordsyIRL[ 155]= 37; IRLcoordszIRL[ 155]= 2
IRLcoordsx[ 156]= 3; IRLcoordsy[ 156]= 12; IRLcoordsxIRL[ 156]=-14; IRLcoordsyIRL[ 156]= 36; IRLcoordszIRL[ 156]= 2
IRLcoordsx[ 157]= 3; IRLcoordsy[ 157]= 13; IRLcoordsxIRL[ 157]=-14; IRLcoordsyIRL[ 157]= 35; IRLcoordszIRL[ 157]= 2
IRLcoordsx[ 158]= 3; IRLcoordsy[ 158]= 14; IRLcoordsxIRL[ 158]=-14; IRLcoordsyIRL[ 158]= 34; IRLcoordszIRL[ 158]= 2
IRLcoordsx[ 159]= 3; IRLcoordsy[ 159]= 15; IRLcoordsxIRL[ 159]=-14; IRLcoordsyIRL[ 159]= 33; IRLcoordszIRL[ 159]= 2
IRLcoordsx[ 160]= 4; IRLcoordsy[ 160]= 8; IRLcoordsxIRL[ 160]=-14; IRLcoordsyIRL[ 160]= 40; IRLcoordszIRL[ 160]= 3
IRLcoordsx[ 161]= 4; IRLcoordsy[ 161]= 9; IRLcoordsxIRL[ 161]=-14; IRLcoordsyIRL[ 161]= 39; IRLcoordszIRL[ 161]= 3
IRLcoordsx[ 162]= 4; IRLcoordsy[ 162]= 10; IRLcoordsxIRL[ 162]=-14; IRLcoordsyIRL[ 162]= 38; IRLcoordszIRL[ 162]= 3
IRLcoordsx[ 163]= 4; IRLcoordsy[ 163]= 11; IRLcoordsxIRL[ 163]=-14; IRLcoordsyIRL[ 163]= 37; IRLcoordszIRL[ 163]= 3
IRLcoordsx[ 164]= 4; IRLcoordsy[ 164]= 12; IRLcoordsxIRL[ 164]=-14; IRLcoordsyIRL[ 164]= 36; IRLcoordszIRL[ 164]= 3
IRLcoordsx[ 165]= 4; IRLcoordsy[ 165]= 13; IRLcoordsxIRL[ 165]=-14; IRLcoordsyIRL[ 165]= 35; IRLcoordszIRL[ 165]= 3
IRLcoordsx[ 166]= 4; IRLcoordsy[ 166]= 14; IRLcoordsxIRL[ 166]=-14; IRLcoordsyIRL[ 166]= 34; IRLcoordszIRL[ 166]= 3
IRLcoordsx[ 167]= 4; IRLcoordsy[ 167]= 15; IRLcoordsxIRL[ 167]=-14; IRLcoordsyIRL[ 167]= 33; IRLcoordszIRL[ 167]= 3
IRLcoordsx[ 168]= 5; IRLcoordsy[ 168]= 8; IRLcoordsxIRL[ 168]=-14; IRLcoordsyIRL[ 168]= 40; IRLcoordszIRL[ 168]= 4
IRLcoordsx[ 169]= 5; IRLcoordsy[ 169]= 9; IRLcoordsxIRL[ 169]=-14; IRLcoordsyIRL[ 169]= 39; IRLcoordszIRL[ 169]= 4
IRLcoordsx[ 170]= 5; IRLcoordsy[ 170]= 10; IRLcoordsxIRL[ 170]=-14; IRLcoordsyIRL[ 170]= 38; IRLcoordszIRL[ 170]= 4
IRLcoordsx[ 171]= 5; IRLcoordsy[ 171]= 11; IRLcoordsxIRL[ 171]=-14; IRLcoordsyIRL[ 171]= 37; IRLcoordszIRL[ 171]= 4
IRLcoordsx[ 172]= 5; IRLcoordsy[ 172]= 12; IRLcoordsxIRL[ 172]=-14; IRLcoordsyIRL[ 172]= 36; IRLcoordszIRL[ 172]= 4
IRLcoordsx[ 173]= 5; IRLcoordsy[ 173]= 13; IRLcoordsxIRL[ 173]=-14; IRLcoordsyIRL[ 173]= 35; IRLcoordszIRL[ 173]= 4
IRLcoordsx[ 174]= 5; IRLcoordsy[ 174]= 14; IRLcoordsxIRL[ 174]=-14; IRLcoordsyIRL[ 174]= 34; IRLcoordszIRL[ 174]= 4
IRLcoordsx[ 175]= 5; IRLcoordsy[ 175]= 15; IRLcoordsxIRL[ 175]=-14; IRLcoordsyIRL[ 175]= 33; IRLcoordszIRL[ 175]= 4
IRLcoordsx[ 176]= 6; IRLcoordsy[ 176]= 8; IRLcoordsxIRL[ 176]=-14; IRLcoordsyIRL[ 176]= 40; IRLcoordszIRL[ 176]= 5
IRLcoordsx[ 177]= 6; IRLcoordsy[ 177]= 9; IRLcoordsxIRL[ 177]=-14; IRLcoordsyIRL[ 177]= 39; IRLcoordszIRL[ 177]= 5
IRLcoordsx[ 178]= 6; IRLcoordsy[ 178]= 10; IRLcoordsxIRL[ 178]=-14; IRLcoordsyIRL[ 178]= 38; IRLcoordszIRL[ 178]= 5
IRLcoordsx[ 179]= 6; IRLcoordsy[ 179]= 11; IRLcoordsxIRL[ 179]=-14; IRLcoordsyIRL[ 179]= 37; IRLcoordszIRL[ 179]= 5
IRLcoordsx[ 180]= 6; IRLcoordsy[ 180]= 12; IRLcoordsxIRL[ 180]=-14; IRLcoordsyIRL[ 180]= 36; IRLcoordszIRL[ 180]= 5
IRLcoordsx[ 181]= 6; IRLcoordsy[ 181]= 13; IRLcoordsxIRL[ 181]=-14; IRLcoordsyIRL[ 181]= 35; IRLcoordszIRL[ 181]= 5
IRLcoordsx[ 182]= 6; IRLcoordsy[ 182]= 14; IRLcoordsxIRL[ 182]=-14; IRLcoordsyIRL[ 182]= 34; IRLcoordszIRL[ 182]= 5
IRLcoordsx[ 183]= 6; IRLcoordsy[ 183]= 15; IRLcoordsxIRL[ 183]=-14; IRLcoordsyIRL[ 183]= 33; IRLcoordszIRL[ 183]= 5
IRLcoordsx[ 184]= 7; IRLcoordsy[ 184]= 8; IRLcoordsxIRL[ 184]=-14; IRLcoordsyIRL[ 184]= 40; IRLcoordszIRL[ 184]= 6
IRLcoordsx[ 185]= 7; IRLcoordsy[ 185]= 9; IRLcoordsxIRL[ 185]=-14; IRLcoordsyIRL[ 185]= 39; IRLcoordszIRL[ 185]= 6
IRLcoordsx[ 186]= 7; IRLcoordsy[ 186]= 10; IRLcoordsxIRL[ 186]=-14; IRLcoordsyIRL[ 186]= 38; IRLcoordszIRL[ 186]= 6
IRLcoordsx[ 187]= 7; IRLcoordsy[ 187]= 11; IRLcoordsxIRL[ 187]=-14; IRLcoordsyIRL[ 187]= 37; IRLcoordszIRL[ 187]= 6
IRLcoordsx[ 188]= 7; IRLcoordsy[ 188]= 12; IRLcoordsxIRL[ 188]=-14; IRLcoordsyIRL[ 188]= 36; IRLcoordszIRL[ 188]= 6
IRLcoordsx[ 189]= 7; IRLcoordsy[ 189]= 13; IRLcoordsxIRL[ 189]=-14; IRLcoordsyIRL[ 189]= 35; IRLcoordszIRL[ 189]= 6
IRLcoordsx[ 190]= 7; IRLcoordsy[ 190]= 14; IRLcoordsxIRL[ 190]=-14; IRLcoordsyIRL[ 190]= 34; IRLcoordszIRL[ 190]= 6
IRLcoordsx[ 191]= 7; IRLcoordsy[ 191]= 15; IRLcoordsxIRL[ 191]=-14; IRLcoordsyIRL[ 191]= 33; IRLcoordszIRL[ 191]= 6
IRLcoordsx[ 192]= 16; IRLcoordsy[ 192]= 8; IRLcoordsxIRL[ 192]=-5; IRLcoordsyIRL[ 192]= 40; IRLcoordszIRL[ 192]= 6
IRLcoordsx[ 193]= 16; IRLcoordsy[ 193]= 9; IRLcoordsxIRL[ 193]=-5; IRLcoordsyIRL[ 193]= 39; IRLcoordszIRL[ 193]= 6
IRLcoordsx[ 194]= 16; IRLcoordsy[ 194]= 10; IRLcoordsxIRL[ 194]=-5; IRLcoordsyIRL[ 194]= 38; IRLcoordszIRL[ 194]= 6
IRLcoordsx[ 195]= 16; IRLcoordsy[ 195]= 11; IRLcoordsxIRL[ 195]=-5; IRLcoordsyIRL[ 195]= 37; IRLcoordszIRL[ 195]= 6
IRLcoordsx[ 196]= 16; IRLcoordsy[ 196]= 12; IRLcoordsxIRL[ 196]=-5; IRLcoordsyIRL[ 196]= 36; IRLcoordszIRL[ 196]= 6
IRLcoordsx[ 197]= 16; IRLcoordsy[ 197]= 13; IRLcoordsxIRL[ 197]=-5; IRLcoordsyIRL[ 197]= 35; IRLcoordszIRL[ 197]= 6
IRLcoordsx[ 198]= 16; IRLcoordsy[ 198]= 14; IRLcoordsxIRL[ 198]=-5; IRLcoordsyIRL[ 198]= 34; IRLcoordszIRL[ 198]= 6
IRLcoordsx[ 199]= 16; IRLcoordsy[ 199]= 15; IRLcoordsxIRL[ 199]=-5; IRLcoordsyIRL[ 199]= 33; IRLcoordszIRL[ 199]= 6
IRLcoordsx[ 200]= 17; IRLcoordsy[ 200]= 8; IRLcoordsxIRL[ 200]=-5; IRLcoordsyIRL[ 200]= 40; IRLcoordszIRL[ 200]= 5
IRLcoordsx[ 201]= 17; IRLcoordsy[ 201]= 9; IRLcoordsxIRL[ 201]=-5; IRLcoordsyIRL[ 201]= 39; IRLcoordszIRL[ 201]= 5
IRLcoordsx[ 202]= 17; IRLcoordsy[ 202]= 10; IRLcoordsxIRL[ 202]=-5; IRLcoordsyIRL[ 202]= 38; IRLcoordszIRL[ 202]= 5
IRLcoordsx[ 203]= 17; IRLcoordsy[ 203]= 11; IRLcoordsxIRL[ 203]=-5; IRLcoordsyIRL[ 203]= 37; IRLcoordszIRL[ 203]= 5
IRLcoordsx[ 204]= 17; IRLcoordsy[ 204]= 12; IRLcoordsxIRL[ 204]=-5; IRLcoordsyIRL[ 204]= 36; IRLcoordszIRL[ 204]= 5
IRLcoordsx[ 205]= 17; IRLcoordsy[ 205]= 13; IRLcoordsxIRL[ 205]=-5; IRLcoordsyIRL[ 205]= 35; IRLcoordszIRL[ 205]= 5
IRLcoordsx[ 206]= 17; IRLcoordsy[ 206]= 14; IRLcoordsxIRL[ 206]=-5; IRLcoordsyIRL[ 206]= 34; IRLcoordszIRL[ 206]= 5
IRLcoordsx[ 207]= 17; IRLcoordsy[ 207]= 15; IRLcoordsxIRL[ 207]=-5; IRLcoordsyIRL[ 207]= 33; IRLcoordszIRL[ 207]= 5
IRLcoordsx[ 208]= 18; IRLcoordsy[ 208]= 8; IRLcoordsxIRL[ 208]=-5; IRLcoordsyIRL[ 208]= 40; IRLcoordszIRL[ 208]= 4
IRLcoordsx[ 209]= 18; IRLcoordsy[ 209]= 9; IRLcoordsxIRL[ 209]=-5; IRLcoordsyIRL[ 209]= 39; IRLcoordszIRL[ 209]= 4
IRLcoordsx[ 210]= 18; IRLcoordsy[ 210]= 10; IRLcoordsxIRL[ 210]=-5; IRLcoordsyIRL[ 210]= 38; IRLcoordszIRL[ 210]= 4
IRLcoordsx[ 211]= 18; IRLcoordsy[ 211]= 11; IRLcoordsxIRL[ 211]=-5; IRLcoordsyIRL[ 211]= 37; IRLcoordszIRL[ 211]= 4
IRLcoordsx[ 212]= 18; IRLcoordsy[ 212]= 12; IRLcoordsxIRL[ 212]=-5; IRLcoordsyIRL[ 212]= 36; IRLcoordszIRL[ 212]= 4
IRLcoordsx[ 213]= 18; IRLcoordsy[ 213]= 13; IRLcoordsxIRL[ 213]=-5; IRLcoordsyIRL[ 213]= 35; IRLcoordszIRL[ 213]= 4
IRLcoordsx[ 214]= 18; IRLcoordsy[ 214]= 14; IRLcoordsxIRL[ 214]=-5; IRLcoordsyIRL[ 214]= 34; IRLcoordszIRL[ 214]= 4
IRLcoordsx[ 215]= 18; IRLcoordsy[ 215]= 15; IRLcoordsxIRL[ 215]=-5; IRLcoordsyIRL[ 215]= 33; IRLcoordszIRL[ 215]= 4
IRLcoordsx[ 216]= 19; IRLcoordsy[ 216]= 8; IRLcoordsxIRL[ 216]=-5; IRLcoordsyIRL[ 216]= 40; IRLcoordszIRL[ 216]= 3
IRLcoordsx[ 217]= 19; IRLcoordsy[ 217]= 9; IRLcoordsxIRL[ 217]=-5; IRLcoordsyIRL[ 217]= 39; IRLcoordszIRL[ 217]= 3
IRLcoordsx[ 218]= 19; IRLcoordsy[ 218]= 10; IRLcoordsxIRL[ 218]=-5; IRLcoordsyIRL[ 218]= 38; IRLcoordszIRL[ 218]= 3
IRLcoordsx[ 219]= 19; IRLcoordsy[ 219]= 11; IRLcoordsxIRL[ 219]=-5; IRLcoordsyIRL[ 219]= 37; IRLcoordszIRL[ 219]= 3
IRLcoordsx[ 220]= 19; IRLcoordsy[ 220]= 12; IRLcoordsxIRL[ 220]=-5; IRLcoordsyIRL[ 220]= 36; IRLcoordszIRL[ 220]= 3
IRLcoordsx[ 221]= 19; IRLcoordsy[ 221]= 13; IRLcoordsxIRL[ 221]=-5; IRLcoordsyIRL[ 221]= 35; IRLcoordszIRL[ 221]= 3
IRLcoordsx[ 222]= 19; IRLcoordsy[ 222]= 14; IRLcoordsxIRL[ 222]=-5; IRLcoordsyIRL[ 222]= 34; IRLcoordszIRL[ 222]= 3
IRLcoordsx[ 223]= 19; IRLcoordsy[ 223]= 15; IRLcoordsxIRL[ 223]=-5; IRLcoordsyIRL[ 223]= 33; IRLcoordszIRL[ 223]= 3
IRLcoordsx[ 224]= 20; IRLcoordsy[ 224]= 8; IRLcoordsxIRL[ 224]=-5; IRLcoordsyIRL[ 224]= 40; IRLcoordszIRL[ 224]= 2
IRLcoordsx[ 225]= 20; IRLcoordsy[ 225]= 9; IRLcoordsxIRL[ 225]=-5; IRLcoordsyIRL[ 225]= 39; IRLcoordszIRL[ 225]= 2
IRLcoordsx[ 226]= 20; IRLcoordsy[ 226]= 10; IRLcoordsxIRL[ 226]=-5; IRLcoordsyIRL[ 226]= 38; IRLcoordszIRL[ 226]= 2
IRLcoordsx[ 227]= 20; IRLcoordsy[ 227]= 11; IRLcoordsxIRL[ 227]=-5; IRLcoordsyIRL[ 227]= 37; IRLcoordszIRL[ 227]= 2
IRLcoordsx[ 228]= 20; IRLcoordsy[ 228]= 12; IRLcoordsxIRL[ 228]=-5; IRLcoordsyIRL[ 228]= 36; IRLcoordszIRL[ 228]= 2
IRLcoordsx[ 229]= 20; IRLcoordsy[ 229]= 13; IRLcoordsxIRL[ 229]=-5; IRLcoordsyIRL[ 229]= 35; IRLcoordszIRL[ 229]= 2
IRLcoordsx[ 230]= 20; IRLcoordsy[ 230]= 14; IRLcoordsxIRL[ 230]=-5; IRLcoordsyIRL[ 230]= 34; IRLcoordszIRL[ 230]= 2
IRLcoordsx[ 231]= 20; IRLcoordsy[ 231]= 15; IRLcoordsxIRL[ 231]=-5; IRLcoordsyIRL[ 231]= 33; IRLcoordszIRL[ 231]= 2
IRLcoordsx[ 232]= 21; IRLcoordsy[ 232]= 8; IRLcoordsxIRL[ 232]=-5; IRLcoordsyIRL[ 232]= 40; IRLcoordszIRL[ 232]= 1
IRLcoordsx[ 233]= 21; IRLcoordsy[ 233]= 9; IRLcoordsxIRL[ 233]=-5; IRLcoordsyIRL[ 233]= 39; IRLcoordszIRL[ 233]= 1
IRLcoordsx[ 234]= 21; IRLcoordsy[ 234]= 10; IRLcoordsxIRL[ 234]=-5; IRLcoordsyIRL[ 234]= 38; IRLcoordszIRL[ 234]= 1
IRLcoordsx[ 235]= 21; IRLcoordsy[ 235]= 11; IRLcoordsxIRL[ 235]=-5; IRLcoordsyIRL[ 235]= 37; IRLcoordszIRL[ 235]= 1
IRLcoordsx[ 236]= 21; IRLcoordsy[ 236]= 12; IRLcoordsxIRL[ 236]=-5; IRLcoordsyIRL[ 236]= 36; IRLcoordszIRL[ 236]= 1
IRLcoordsx[ 237]= 21; IRLcoordsy[ 237]= 13; IRLcoordsxIRL[ 237]=-5; IRLcoordsyIRL[ 237]= 35; IRLcoordszIRL[ 237]= 1
IRLcoordsx[ 238]= 21; IRLcoordsy[ 238]= 14; IRLcoordsxIRL[ 238]=-5; IRLcoordsyIRL[ 238]= 34; IRLcoordszIRL[ 238]= 1
IRLcoordsx[ 239]= 21; IRLcoordsy[ 239]= 15; IRLcoordsxIRL[ 239]=-5; IRLcoordsyIRL[ 239]= 33; IRLcoordszIRL[ 239]= 1
IRLcoordsx[ 240]= 22; IRLcoordsy[ 240]= 8; IRLcoordsxIRL[ 240]=-5; IRLcoordsyIRL[ 240]= 40; IRLcoordszIRL[ 240]= 0
IRLcoordsx[ 241]= 22; IRLcoordsy[ 241]= 9; IRLcoordsxIRL[ 241]=-5; IRLcoordsyIRL[ 241]= 39; IRLcoordszIRL[ 241]= 0
IRLcoordsx[ 242]= 22; IRLcoordsy[ 242]= 10; IRLcoordsxIRL[ 242]=-5; IRLcoordsyIRL[ 242]= 38; IRLcoordszIRL[ 242]= 0
IRLcoordsx[ 243]= 22; IRLcoordsy[ 243]= 11; IRLcoordsxIRL[ 243]=-5; IRLcoordsyIRL[ 243]= 37; IRLcoordszIRL[ 243]= 0
IRLcoordsx[ 244]= 22; IRLcoordsy[ 244]= 12; IRLcoordsxIRL[ 244]=-5; IRLcoordsyIRL[ 244]= 36; IRLcoordszIRL[ 244]= 0
IRLcoordsx[ 245]= 22; IRLcoordsy[ 245]= 13; IRLcoordsxIRL[ 245]=-5; IRLcoordsyIRL[ 245]= 35; IRLcoordszIRL[ 245]= 0
IRLcoordsx[ 246]= 22; IRLcoordsy[ 246]= 14; IRLcoordsxIRL[ 246]=-5; IRLcoordsyIRL[ 246]= 34; IRLcoordszIRL[ 246]= 0
IRLcoordsx[ 247]= 22; IRLcoordsy[ 247]= 15; IRLcoordsxIRL[ 247]=-5; IRLcoordsyIRL[ 247]= 33; IRLcoordszIRL[ 247]= 0
IRLcoordsx[ 248]= 23; IRLcoordsy[ 248]= 8; IRLcoordsxIRL[ 248]=-5; IRLcoordsyIRL[ 248]= 40; IRLcoordszIRL[ 248]=-1
IRLcoordsx[ 249]= 23; IRLcoordsy[ 249]= 9; IRLcoordsxIRL[ 249]=-5; IRLcoordsyIRL[ 249]= 39; IRLcoordszIRL[ 249]=-1
IRLcoordsx[ 250]= 23; IRLcoordsy[ 250]= 10; IRLcoordsxIRL[ 250]=-5; IRLcoordsyIRL[ 250]= 38; IRLcoordszIRL[ 250]=-1
IRLcoordsx[ 251]= 23; IRLcoordsy[ 251]= 11; IRLcoordsxIRL[ 251]=-5; IRLcoordsyIRL[ 251]= 37; IRLcoordszIRL[ 251]=-1
IRLcoordsx[ 252]= 23; IRLcoordsy[ 252]= 12; IRLcoordsxIRL[ 252]=-5; IRLcoordsyIRL[ 252]= 36; IRLcoordszIRL[ 252]=-1
IRLcoordsx[ 253]= 23; IRLcoordsy[ 253]= 13; IRLcoordsxIRL[ 253]=-5; IRLcoordsyIRL[ 253]= 35; IRLcoordszIRL[ 253]=-1
IRLcoordsx[ 254]= 23; IRLcoordsy[ 254]= 14; IRLcoordsxIRL[ 254]=-5; IRLcoordsyIRL[ 254]= 34; IRLcoordszIRL[ 254]=-1
IRLcoordsx[ 255]= 23; IRLcoordsy[ 255]= 15; IRLcoordsxIRL[ 255]=-5; IRLcoordsyIRL[ 255]= 33; IRLcoordszIRL[ 255]=-1
IRLcoordsx[ 256]= 8; IRLcoordsy[ 256]= 0; IRLcoordsxIRL[ 256]=-13; IRLcoordsyIRL[ 256]= 41; IRLcoordszIRL[ 256]=-1
IRLcoordsx[ 257]= 8; IRLcoordsy[ 257]= 1; IRLcoordsxIRL[ 257]=-13; IRLcoordsyIRL[ 257]= 41; IRLcoordszIRL[ 257]= 0
IRLcoordsx[ 258]= 8; IRLcoordsy[ 258]= 2; IRLcoordsxIRL[ 258]=-13; IRLcoordsyIRL[ 258]= 41; IRLcoordszIRL[ 258]= 1
IRLcoordsx[ 259]= 8; IRLcoordsy[ 259]= 3; IRLcoordsxIRL[ 259]=-13; IRLcoordsyIRL[ 259]= 41; IRLcoordszIRL[ 259]= 2
IRLcoordsx[ 260]= 8; IRLcoordsy[ 260]= 4; IRLcoordsxIRL[ 260]=-13; IRLcoordsyIRL[ 260]= 41; IRLcoordszIRL[ 260]= 3
IRLcoordsx[ 261]= 8; IRLcoordsy[ 261]= 5; IRLcoordsxIRL[ 261]=-13; IRLcoordsyIRL[ 261]= 41; IRLcoordszIRL[ 261]= 4
IRLcoordsx[ 262]= 8; IRLcoordsy[ 262]= 6; IRLcoordsxIRL[ 262]=-13; IRLcoordsyIRL[ 262]= 41; IRLcoordszIRL[ 262]= 5
IRLcoordsx[ 263]= 8; IRLcoordsy[ 263]= 7; IRLcoordsxIRL[ 263]=-13; IRLcoordsyIRL[ 263]= 41; IRLcoordszIRL[ 263]= 6
IRLcoordsx[ 264]= 9; IRLcoordsy[ 264]= 0; IRLcoordsxIRL[ 264]=-12; IRLcoordsyIRL[ 264]= 41; IRLcoordszIRL[ 264]=-1
IRLcoordsx[ 265]= 9; IRLcoordsy[ 265]= 1; IRLcoordsxIRL[ 265]=-12; IRLcoordsyIRL[ 265]= 41; IRLcoordszIRL[ 265]= 0
IRLcoordsx[ 266]= 9; IRLcoordsy[ 266]= 2; IRLcoordsxIRL[ 266]=-12; IRLcoordsyIRL[ 266]= 41; IRLcoordszIRL[ 266]= 1
IRLcoordsx[ 267]= 9; IRLcoordsy[ 267]= 3; IRLcoordsxIRL[ 267]=-12; IRLcoordsyIRL[ 267]= 41; IRLcoordszIRL[ 267]= 2
IRLcoordsx[ 268]= 9; IRLcoordsy[ 268]= 4; IRLcoordsxIRL[ 268]=-12; IRLcoordsyIRL[ 268]= 41; IRLcoordszIRL[ 268]= 3
IRLcoordsx[ 269]= 9; IRLcoordsy[ 269]= 5; IRLcoordsxIRL[ 269]=-12; IRLcoordsyIRL[ 269]= 41; IRLcoordszIRL[ 269]= 4
IRLcoordsx[ 270]= 9; IRLcoordsy[ 270]= 6; IRLcoordsxIRL[ 270]=-12; IRLcoordsyIRL[ 270]= 41; IRLcoordszIRL[ 270]= 5
IRLcoordsx[ 271]= 9; IRLcoordsy[ 271]= 7; IRLcoordsxIRL[ 271]=-12; IRLcoordsyIRL[ 271]= 41; IRLcoordszIRL[ 271]= 6
IRLcoordsx[ 272]= 10; IRLcoordsy[ 272]= 0; IRLcoordsxIRL[ 272]=-11; IRLcoordsyIRL[ 272]= 41; IRLcoordszIRL[ 272]=-1
IRLcoordsx[ 273]= 10; IRLcoordsy[ 273]= 1; IRLcoordsxIRL[ 273]=-11; IRLcoordsyIRL[ 273]= 41; IRLcoordszIRL[ 273]= 0
IRLcoordsx[ 274]= 10; IRLcoordsy[ 274]= 2; IRLcoordsxIRL[ 274]=-11; IRLcoordsyIRL[ 274]= 41; IRLcoordszIRL[ 274]= 1
IRLcoordsx[ 275]= 10; IRLcoordsy[ 275]= 3; IRLcoordsxIRL[ 275]=-11; IRLcoordsyIRL[ 275]= 41; IRLcoordszIRL[ 275]= 2
IRLcoordsx[ 276]= 10; IRLcoordsy[ 276]= 4; IRLcoordsxIRL[ 276]=-11; IRLcoordsyIRL[ 276]= 41; IRLcoordszIRL[ 276]= 3
IRLcoordsx[ 277]= 10; IRLcoordsy[ 277]= 5; IRLcoordsxIRL[ 277]=-11; IRLcoordsyIRL[ 277]= 41; IRLcoordszIRL[ 277]= 4
IRLcoordsx[ 278]= 10; IRLcoordsy[ 278]= 6; IRLcoordsxIRL[ 278]=-11; IRLcoordsyIRL[ 278]= 41; IRLcoordszIRL[ 278]= 5
IRLcoordsx[ 279]= 10; IRLcoordsy[ 279]= 7; IRLcoordsxIRL[ 279]=-11; IRLcoordsyIRL[ 279]= 41; IRLcoordszIRL[ 279]= 6
IRLcoordsx[ 280]= 11; IRLcoordsy[ 280]= 0; IRLcoordsxIRL[ 280]=-10; IRLcoordsyIRL[ 280]= 41; IRLcoordszIRL[ 280]=-1
IRLcoordsx[ 281]= 11; IRLcoordsy[ 281]= 1; IRLcoordsxIRL[ 281]=-10; IRLcoordsyIRL[ 281]= 41; IRLcoordszIRL[ 281]= 0
IRLcoordsx[ 282]= 11; IRLcoordsy[ 282]= 2; IRLcoordsxIRL[ 282]=-10; IRLcoordsyIRL[ 282]= 41; IRLcoordszIRL[ 282]= 1
IRLcoordsx[ 283]= 11; IRLcoordsy[ 283]= 3; IRLcoordsxIRL[ 283]=-10; IRLcoordsyIRL[ 283]= 41; IRLcoordszIRL[ 283]= 2
IRLcoordsx[ 284]= 11; IRLcoordsy[ 284]= 4; IRLcoordsxIRL[ 284]=-10; IRLcoordsyIRL[ 284]= 41; IRLcoordszIRL[ 284]= 3
IRLcoordsx[ 285]= 11; IRLcoordsy[ 285]= 5; IRLcoordsxIRL[ 285]=-10; IRLcoordsyIRL[ 285]= 41; IRLcoordszIRL[ 285]= 4
IRLcoordsx[ 286]= 11; IRLcoordsy[ 286]= 6; IRLcoordsxIRL[ 286]=-10; IRLcoordsyIRL[ 286]= 41; IRLcoordszIRL[ 286]= 5
IRLcoordsx[ 287]= 11; IRLcoordsy[ 287]= 7; IRLcoordsxIRL[ 287]=-10; IRLcoordsyIRL[ 287]= 41; IRLcoordszIRL[ 287]= 6
IRLcoordsx[ 288]= 12; IRLcoordsy[ 288]= 0; IRLcoordsxIRL[ 288]=-9; IRLcoordsyIRL[ 288]= 41; IRLcoordszIRL[ 288]=-1
IRLcoordsx[ 289]= 12; IRLcoordsy[ 289]= 1; IRLcoordsxIRL[ 289]=-9; IRLcoordsyIRL[ 289]= 41; IRLcoordszIRL[ 289]= 0
IRLcoordsx[ 290]= 12; IRLcoordsy[ 290]= 2; IRLcoordsxIRL[ 290]=-9; IRLcoordsyIRL[ 290]= 41; IRLcoordszIRL[ 290]= 1
IRLcoordsx[ 291]= 12; IRLcoordsy[ 291]= 3; IRLcoordsxIRL[ 291]=-9; IRLcoordsyIRL[ 291]= 41; IRLcoordszIRL[ 291]= 2
IRLcoordsx[ 292]= 12; IRLcoordsy[ 292]= 4; IRLcoordsxIRL[ 292]=-9; IRLcoordsyIRL[ 292]= 41; IRLcoordszIRL[ 292]= 3
IRLcoordsx[ 293]= 12; IRLcoordsy[ 293]= 5; IRLcoordsxIRL[ 293]=-9; IRLcoordsyIRL[ 293]= 41; IRLcoordszIRL[ 293]= 4
IRLcoordsx[ 294]= 12; IRLcoordsy[ 294]= 6; IRLcoordsxIRL[ 294]=-9; IRLcoordsyIRL[ 294]= 41; IRLcoordszIRL[ 294]= 5
IRLcoordsx[ 295]= 12; IRLcoordsy[ 295]= 7; IRLcoordsxIRL[ 295]=-9; IRLcoordsyIRL[ 295]= 41; IRLcoordszIRL[ 295]= 6
IRLcoordsx[ 296]= 13; IRLcoordsy[ 296]= 0; IRLcoordsxIRL[ 296]=-8; IRLcoordsyIRL[ 296]= 41; IRLcoordszIRL[ 296]=-1
IRLcoordsx[ 297]= 13; IRLcoordsy[ 297]= 1; IRLcoordsxIRL[ 297]=-8; IRLcoordsyIRL[ 297]= 41; IRLcoordszIRL[ 297]= 0
IRLcoordsx[ 298]= 13; IRLcoordsy[ 298]= 2; IRLcoordsxIRL[ 298]=-8; IRLcoordsyIRL[ 298]= 41; IRLcoordszIRL[ 298]= 1
IRLcoordsx[ 299]= 13; IRLcoordsy[ 299]= 3; IRLcoordsxIRL[ 299]=-8; IRLcoordsyIRL[ 299]= 41; IRLcoordszIRL[ 299]= 2
IRLcoordsx[ 300]= 13; IRLcoordsy[ 300]= 4; IRLcoordsxIRL[ 300]=-8; IRLcoordsyIRL[ 300]= 41; IRLcoordszIRL[ 300]= 3
IRLcoordsx[ 301]= 13; IRLcoordsy[ 301]= 5; IRLcoordsxIRL[ 301]=-8; IRLcoordsyIRL[ 301]= 41; IRLcoordszIRL[ 301]= 4
IRLcoordsx[ 302]= 13; IRLcoordsy[ 302]= 6; IRLcoordsxIRL[ 302]=-8; IRLcoordsyIRL[ 302]= 41; IRLcoordszIRL[ 302]= 5
IRLcoordsx[ 303]= 13; IRLcoordsy[ 303]= 7; IRLcoordsxIRL[ 303]=-8; IRLcoordsyIRL[ 303]= 41; IRLcoordszIRL[ 303]= 6
IRLcoordsx[ 304]= 14; IRLcoordsy[ 304]= 0; IRLcoordsxIRL[ 304]=-7; IRLcoordsyIRL[ 304]= 41; IRLcoordszIRL[ 304]=-1
IRLcoordsx[ 305]= 14; IRLcoordsy[ 305]= 1; IRLcoordsxIRL[ 305]=-7; IRLcoordsyIRL[ 305]= 41; IRLcoordszIRL[ 305]= 0
IRLcoordsx[ 306]= 14; IRLcoordsy[ 306]= 2; IRLcoordsxIRL[ 306]=-7; IRLcoordsyIRL[ 306]= 41; IRLcoordszIRL[ 306]= 1
IRLcoordsx[ 307]= 14; IRLcoordsy[ 307]= 3; IRLcoordsxIRL[ 307]=-7; IRLcoordsyIRL[ 307]= 41; IRLcoordszIRL[ 307]= 2
IRLcoordsx[ 308]= 14; IRLcoordsy[ 308]= 4; IRLcoordsxIRL[ 308]=-7; IRLcoordsyIRL[ 308]= 41; IRLcoordszIRL[ 308]= 3
IRLcoordsx[ 309]= 14; IRLcoordsy[ 309]= 5; IRLcoordsxIRL[ 309]=-7; IRLcoordsyIRL[ 309]= 41; IRLcoordszIRL[ 309]= 4
IRLcoordsx[ 310]= 14; IRLcoordsy[ 310]= 6; IRLcoordsxIRL[ 310]=-7; IRLcoordsyIRL[ 310]= 41; IRLcoordszIRL[ 310]= 5
IRLcoordsx[ 311]= 14; IRLcoordsy[ 311]= 7; IRLcoordsxIRL[ 311]=-7; IRLcoordsyIRL[ 311]= 41; IRLcoordszIRL[ 311]= 6
IRLcoordsx[ 312]= 15; IRLcoordsy[ 312]= 0; IRLcoordsxIRL[ 312]=-6; IRLcoordsyIRL[ 312]= 41; IRLcoordszIRL[ 312]=-1
IRLcoordsx[ 313]= 15; IRLcoordsy[ 313]= 1; IRLcoordsxIRL[ 313]=-6; IRLcoordsyIRL[ 313]= 41; IRLcoordszIRL[ 313]= 0
IRLcoordsx[ 314]= 15; IRLcoordsy[ 314]= 2; IRLcoordsxIRL[ 314]=-6; IRLcoordsyIRL[ 314]= 41; IRLcoordszIRL[ 314]= 1
IRLcoordsx[ 315]= 15; IRLcoordsy[ 315]= 3; IRLcoordsxIRL[ 315]=-6; IRLcoordsyIRL[ 315]= 41; IRLcoordszIRL[ 315]= 2
IRLcoordsx[ 316]= 15; IRLcoordsy[ 316]= 4; IRLcoordsxIRL[ 316]=-6; IRLcoordsyIRL[ 316]= 41; IRLcoordszIRL[ 316]= 3
IRLcoordsx[ 317]= 15; IRLcoordsy[ 317]= 5; IRLcoordsxIRL[ 317]=-6; IRLcoordsyIRL[ 317]= 41; IRLcoordszIRL[ 317]= 4
IRLcoordsx[ 318]= 15; IRLcoordsy[ 318]= 6; IRLcoordsxIRL[ 318]=-6; IRLcoordsyIRL[ 318]= 41; IRLcoordszIRL[ 318]= 5
IRLcoordsx[ 319]= 15; IRLcoordsy[ 319]= 7; IRLcoordsxIRL[ 319]=-6; IRLcoordsyIRL[ 319]= 41; IRLcoordszIRL[ 319]= 6
IRLcoordsx[ 320]= 16; IRLcoordsy[ 320]= 0; IRLcoordsxIRL[ 320]=-13; IRLcoordsyIRL[ 320]= 32; IRLcoordszIRL[ 320]=-1
IRLcoordsx[ 321]= 16; IRLcoordsy[ 321]= 1; IRLcoordsxIRL[ 321]=-13; IRLcoordsyIRL[ 321]= 32; IRLcoordszIRL[ 321]= 0
IRLcoordsx[ 322]= 16; IRLcoordsy[ 322]= 2; IRLcoordsxIRL[ 322]=-13; IRLcoordsyIRL[ 322]= 32; IRLcoordszIRL[ 322]= 1
IRLcoordsx[ 323]= 16; IRLcoordsy[ 323]= 3; IRLcoordsxIRL[ 323]=-13; IRLcoordsyIRL[ 323]= 32; IRLcoordszIRL[ 323]= 2
IRLcoordsx[ 324]= 16; IRLcoordsy[ 324]= 4; IRLcoordsxIRL[ 324]=-13; IRLcoordsyIRL[ 324]= 32; IRLcoordszIRL[ 324]= 3
IRLcoordsx[ 325]= 16; IRLcoordsy[ 325]= 5; IRLcoordsxIRL[ 325]=-13; IRLcoordsyIRL[ 325]= 32; IRLcoordszIRL[ 325]= 4
IRLcoordsx[ 326]= 16; IRLcoordsy[ 326]= 6; IRLcoordsxIRL[ 326]=-13; IRLcoordsyIRL[ 326]= 32; IRLcoordszIRL[ 326]= 5
IRLcoordsx[ 327]= 16; IRLcoordsy[ 327]= 7; IRLcoordsxIRL[ 327]=-13; IRLcoordsyIRL[ 327]= 32; IRLcoordszIRL[ 327]= 6
IRLcoordsx[ 328]= 17; IRLcoordsy[ 328]= 0; IRLcoordsxIRL[ 328]=-12; IRLcoordsyIRL[ 328]= 32; IRLcoordszIRL[ 328]=-1
IRLcoordsx[ 329]= 17; IRLcoordsy[ 329]= 1; IRLcoordsxIRL[ 329]=-12; IRLcoordsyIRL[ 329]= 32; IRLcoordszIRL[ 329]= 0
IRLcoordsx[ 330]= 17; IRLcoordsy[ 330]= 2; IRLcoordsxIRL[ 330]=-12; IRLcoordsyIRL[ 330]= 32; IRLcoordszIRL[ 330]= 1
IRLcoordsx[ 331]= 17; IRLcoordsy[ 331]= 3; IRLcoordsxIRL[ 331]=-12; IRLcoordsyIRL[ 331]= 32; IRLcoordszIRL[ 331]= 2
IRLcoordsx[ 332]= 17; IRLcoordsy[ 332]= 4; IRLcoordsxIRL[ 332]=-12; IRLcoordsyIRL[ 332]= 32; IRLcoordszIRL[ 332]= 3
IRLcoordsx[ 333]= 17; IRLcoordsy[ 333]= 5; IRLcoordsxIRL[ 333]=-12; IRLcoordsyIRL[ 333]= 32; IRLcoordszIRL[ 333]= 4
IRLcoordsx[ 334]= 17; IRLcoordsy[ 334]= 6; IRLcoordsxIRL[ 334]=-12; IRLcoordsyIRL[ 334]= 32; IRLcoordszIRL[ 334]= 5
IRLcoordsx[ 335]= 17; IRLcoordsy[ 335]= 7; IRLcoordsxIRL[ 335]=-12; IRLcoordsyIRL[ 335]= 32; IRLcoordszIRL[ 335]= 6
IRLcoordsx[ 336]= 18; IRLcoordsy[ 336]= 0; IRLcoordsxIRL[ 336]=-11; IRLcoordsyIRL[ 336]= 32; IRLcoordszIRL[ 336]=-1
IRLcoordsx[ 337]= 18; IRLcoordsy[ 337]= 1; IRLcoordsxIRL[ 337]=-11; IRLcoordsyIRL[ 337]= 32; IRLcoordszIRL[ 337]= 0
IRLcoordsx[ 338]= 18; IRLcoordsy[ 338]= 2; IRLcoordsxIRL[ 338]=-11; IRLcoordsyIRL[ 338]= 32; IRLcoordszIRL[ 338]= 1
IRLcoordsx[ 339]= 18; IRLcoordsy[ 339]= 3; IRLcoordsxIRL[ 339]=-11; IRLcoordsyIRL[ 339]= 32; IRLcoordszIRL[ 339]= 2
IRLcoordsx[ 340]= 18; IRLcoordsy[ 340]= 4; IRLcoordsxIRL[ 340]=-11; IRLcoordsyIRL[ 340]= 32; IRLcoordszIRL[ 340]= 3
IRLcoordsx[ 341]= 18; IRLcoordsy[ 341]= 5; IRLcoordsxIRL[ 341]=-11; IRLcoordsyIRL[ 341]= 32; IRLcoordszIRL[ 341]= 4
IRLcoordsx[ 342]= 18; IRLcoordsy[ 342]= 6; IRLcoordsxIRL[ 342]=-11; IRLcoordsyIRL[ 342]= 32; IRLcoordszIRL[ 342]= 5
IRLcoordsx[ 343]= 18; IRLcoordsy[ 343]= 7; IRLcoordsxIRL[ 343]=-11; IRLcoordsyIRL[ 343]= 32; IRLcoordszIRL[ 343]= 6
IRLcoordsx[ 344]= 19; IRLcoordsy[ 344]= 0; IRLcoordsxIRL[ 344]=-10; IRLcoordsyIRL[ 344]= 32; IRLcoordszIRL[ 344]=-1
IRLcoordsx[ 345]= 19; IRLcoordsy[ 345]= 1; IRLcoordsxIRL[ 345]=-10; IRLcoordsyIRL[ 345]= 32; IRLcoordszIRL[ 345]= 0
IRLcoordsx[ 346]= 19; IRLcoordsy[ 346]= 2; IRLcoordsxIRL[ 346]=-10; IRLcoordsyIRL[ 346]= 32; IRLcoordszIRL[ 346]= 1
IRLcoordsx[ 347]= 19; IRLcoordsy[ 347]= 3; IRLcoordsxIRL[ 347]=-10; IRLcoordsyIRL[ 347]= 32; IRLcoordszIRL[ 347]= 2
IRLcoordsx[ 348]= 19; IRLcoordsy[ 348]= 4; IRLcoordsxIRL[ 348]=-10; IRLcoordsyIRL[ 348]= 32; IRLcoordszIRL[ 348]= 3
IRLcoordsx[ 349]= 19; IRLcoordsy[ 349]= 5; IRLcoordsxIRL[ 349]=-10; IRLcoordsyIRL[ 349]= 32; IRLcoordszIRL[ 349]= 4
IRLcoordsx[ 350]= 19; IRLcoordsy[ 350]= 6; IRLcoordsxIRL[ 350]=-10; IRLcoordsyIRL[ 350]= 32; IRLcoordszIRL[ 350]= 5
IRLcoordsx[ 351]= 19; IRLcoordsy[ 351]= 7; IRLcoordsxIRL[ 351]=-10; IRLcoordsyIRL[ 351]= 32; IRLcoordszIRL[ 351]= 6
IRLcoordsx[ 352]= 20; IRLcoordsy[ 352]= 0; IRLcoordsxIRL[ 352]=-9; IRLcoordsyIRL[ 352]= 32; IRLcoordszIRL[ 352]=-1
IRLcoordsx[ 353]= 20; IRLcoordsy[ 353]= 1; IRLcoordsxIRL[ 353]=-9; IRLcoordsyIRL[ 353]= 32; IRLcoordszIRL[ 353]= 0
IRLcoordsx[ 354]= 20; IRLcoordsy[ 354]= 2; IRLcoordsxIRL[ 354]=-9; IRLcoordsyIRL[ 354]= 32; IRLcoordszIRL[ 354]= 1
IRLcoordsx[ 355]= 20; IRLcoordsy[ 355]= 3; IRLcoordsxIRL[ 355]=-9; IRLcoordsyIRL[ 355]= 32; IRLcoordszIRL[ 355]= 2
IRLcoordsx[ 356]= 20; IRLcoordsy[ 356]= 4; IRLcoordsxIRL[ 356]=-9; IRLcoordsyIRL[ 356]= 32; IRLcoordszIRL[ 356]= 3
IRLcoordsx[ 357]= 20; IRLcoordsy[ 357]= 5; IRLcoordsxIRL[ 357]=-9; IRLcoordsyIRL[ 357]= 32; IRLcoordszIRL[ 357]= 4
IRLcoordsx[ 358]= 20; IRLcoordsy[ 358]= 6; IRLcoordsxIRL[ 358]=-9; IRLcoordsyIRL[ 358]= 32; IRLcoordszIRL[ 358]= 5
IRLcoordsx[ 359]= 20; IRLcoordsy[ 359]= 7; IRLcoordsxIRL[ 359]=-9; IRLcoordsyIRL[ 359]= 32; IRLcoordszIRL[ 359]= 6
IRLcoordsx[ 360]= 21; IRLcoordsy[ 360]= 0; IRLcoordsxIRL[ 360]=-8; IRLcoordsyIRL[ 360]= 32; IRLcoordszIRL[ 360]=-1
IRLcoordsx[ 361]= 21; IRLcoordsy[ 361]= 1; IRLcoordsxIRL[ 361]=-8; IRLcoordsyIRL[ 361]= 32; IRLcoordszIRL[ 361]= 0
IRLcoordsx[ 362]= 21; IRLcoordsy[ 362]= 2; IRLcoordsxIRL[ 362]=-8; IRLcoordsyIRL[ 362]= 32; IRLcoordszIRL[ 362]= 1
IRLcoordsx[ 363]= 21; IRLcoordsy[ 363]= 3; IRLcoordsxIRL[ 363]=-8; IRLcoordsyIRL[ 363]= 32; IRLcoordszIRL[ 363]= 2
IRLcoordsx[ 364]= 21; IRLcoordsy[ 364]= 4; IRLcoordsxIRL[ 364]=-8; IRLcoordsyIRL[ 364]= 32; IRLcoordszIRL[ 364]= 3
IRLcoordsx[ 365]= 21; IRLcoordsy[ 365]= 5; IRLcoordsxIRL[ 365]=-8; IRLcoordsyIRL[ 365]= 32; IRLcoordszIRL[ 365]= 4
IRLcoordsx[ 366]= 21; IRLcoordsy[ 366]= 6; IRLcoordsxIRL[ 366]=-8; IRLcoordsyIRL[ 366]= 32; IRLcoordszIRL[ 366]= 5
IRLcoordsx[ 367]= 21; IRLcoordsy[ 367]= 7; IRLcoordsxIRL[ 367]=-8; IRLcoordsyIRL[ 367]= 32; IRLcoordszIRL[ 367]= 6
IRLcoordsx[ 368]= 22; IRLcoordsy[ 368]= 0; IRLcoordsxIRL[ 368]=-7; IRLcoordsyIRL[ 368]= 32; IRLcoordszIRL[ 368]=-1
IRLcoordsx[ 369]= 22; IRLcoordsy[ 369]= 1; IRLcoordsxIRL[ 369]=-7; IRLcoordsyIRL[ 369]= 32; IRLcoordszIRL[ 369]= 0
IRLcoordsx[ 370]= 22; IRLcoordsy[ 370]= 2; IRLcoordsxIRL[ 370]=-7; IRLcoordsyIRL[ 370]= 32; IRLcoordszIRL[ 370]= 1
IRLcoordsx[ 371]= 22; IRLcoordsy[ 371]= 3; IRLcoordsxIRL[ 371]=-7; IRLcoordsyIRL[ 371]= 32; IRLcoordszIRL[ 371]= 2
IRLcoordsx[ 372]= 22; IRLcoordsy[ 372]= 4; IRLcoordsxIRL[ 372]=-7; IRLcoordsyIRL[ 372]= 32; IRLcoordszIRL[ 372]= 3
IRLcoordsx[ 373]= 22; IRLcoordsy[ 373]= 5; IRLcoordsxIRL[ 373]=-7; IRLcoordsyIRL[ 373]= 32; IRLcoordszIRL[ 373]= 4
IRLcoordsx[ 374]= 22; IRLcoordsy[ 374]= 6; IRLcoordsxIRL[ 374]=-7; IRLcoordsyIRL[ 374]= 32; IRLcoordszIRL[ 374]= 5
IRLcoordsx[ 375]= 22; IRLcoordsy[ 375]= 7; IRLcoordsxIRL[ 375]=-7; IRLcoordsyIRL[ 375]= 32; IRLcoordszIRL[ 375]= 6
IRLcoordsx[ 376]= 23; IRLcoordsy[ 376]= 0; IRLcoordsxIRL[ 376]=-6; IRLcoordsyIRL[ 376]= 32; IRLcoordszIRL[ 376]=-1
IRLcoordsx[ 377]= 23; IRLcoordsy[ 377]= 1; IRLcoordsxIRL[ 377]=-6; IRLcoordsyIRL[ 377]= 32; IRLcoordszIRL[ 377]= 0
IRLcoordsx[ 378]= 23; IRLcoordsy[ 378]= 2; IRLcoordsxIRL[ 378]=-6; IRLcoordsyIRL[ 378]= 32; IRLcoordszIRL[ 378]= 1
IRLcoordsx[ 379]= 23; IRLcoordsy[ 379]= 3; IRLcoordsxIRL[ 379]=-6; IRLcoordsyIRL[ 379]= 32; IRLcoordszIRL[ 379]= 2
IRLcoordsx[ 380]= 23; IRLcoordsy[ 380]= 4; IRLcoordsxIRL[ 380]=-6; IRLcoordsyIRL[ 380]= 32; IRLcoordszIRL[ 380]= 3
IRLcoordsx[ 381]= 23; IRLcoordsy[ 381]= 5; IRLcoordsxIRL[ 381]=-6; IRLcoordsyIRL[ 381]= 32; IRLcoordszIRL[ 381]= 4
IRLcoordsx[ 382]= 23; IRLcoordsy[ 382]= 6; IRLcoordsxIRL[ 382]=-6; IRLcoordsyIRL[ 382]= 32; IRLcoordszIRL[ 382]= 5
IRLcoordsx[ 383]= 23; IRLcoordsy[ 383]= 7; IRLcoordsxIRL[ 383]=-6; IRLcoordsyIRL[ 383]= 32; IRLcoordszIRL[ 383]= 6
IRLcoordsx[ 384]= 20; IRLcoordsy[ 384]= 20; IRLcoordsxIRL[ 384]=-13; IRLcoordsyIRL[ 384]= 28; IRLcoordszIRL[ 384]=-1
IRLcoordsx[ 385]= 20; IRLcoordsy[ 385]= 21; IRLcoordsxIRL[ 385]=-13; IRLcoordsyIRL[ 385]= 27; IRLcoordszIRL[ 385]=-1
IRLcoordsx[ 386]= 20; IRLcoordsy[ 386]= 22; IRLcoordsxIRL[ 386]=-13; IRLcoordsyIRL[ 386]= 26; IRLcoordszIRL[ 386]=-1
IRLcoordsx[ 387]= 20; IRLcoordsy[ 387]= 23; IRLcoordsxIRL[ 387]=-13; IRLcoordsyIRL[ 387]= 25; IRLcoordszIRL[ 387]=-1
IRLcoordsx[ 388]= 20; IRLcoordsy[ 388]= 24; IRLcoordsxIRL[ 388]=-13; IRLcoordsyIRL[ 388]= 24; IRLcoordszIRL[ 388]=-1
IRLcoordsx[ 389]= 20; IRLcoordsy[ 389]= 25; IRLcoordsxIRL[ 389]=-13; IRLcoordsyIRL[ 389]= 23; IRLcoordszIRL[ 389]=-1
IRLcoordsx[ 390]= 20; IRLcoordsy[ 390]= 26; IRLcoordsxIRL[ 390]=-13; IRLcoordsyIRL[ 390]= 22; IRLcoordszIRL[ 390]=-1
IRLcoordsx[ 391]= 20; IRLcoordsy[ 391]= 27; IRLcoordsxIRL[ 391]=-13; IRLcoordsyIRL[ 391]= 21; IRLcoordszIRL[ 391]=-1
IRLcoordsx[ 392]= 20; IRLcoordsy[ 392]= 28; IRLcoordsxIRL[ 392]=-13; IRLcoordsyIRL[ 392]= 20; IRLcoordszIRL[ 392]=-1
IRLcoordsx[ 393]= 20; IRLcoordsy[ 393]= 29; IRLcoordsxIRL[ 393]=-13; IRLcoordsyIRL[ 393]= 19; IRLcoordszIRL[ 393]=-1
IRLcoordsx[ 394]= 20; IRLcoordsy[ 394]= 30; IRLcoordsxIRL[ 394]=-13; IRLcoordsyIRL[ 394]= 18; IRLcoordszIRL[ 394]=-1
IRLcoordsx[ 395]= 20; IRLcoordsy[ 395]= 31; IRLcoordsxIRL[ 395]=-13; IRLcoordsyIRL[ 395]= 17; IRLcoordszIRL[ 395]=-1
IRLcoordsx[ 396]= 21; IRLcoordsy[ 396]= 20; IRLcoordsxIRL[ 396]=-12; IRLcoordsyIRL[ 396]= 28; IRLcoordszIRL[ 396]=-1
IRLcoordsx[ 397]= 21; IRLcoordsy[ 397]= 21; IRLcoordsxIRL[ 397]=-12; IRLcoordsyIRL[ 397]= 27; IRLcoordszIRL[ 397]=-1
IRLcoordsx[ 398]= 21; IRLcoordsy[ 398]= 22; IRLcoordsxIRL[ 398]=-12; IRLcoordsyIRL[ 398]= 26; IRLcoordszIRL[ 398]=-1
IRLcoordsx[ 399]= 21; IRLcoordsy[ 399]= 23; IRLcoordsxIRL[ 399]=-12; IRLcoordsyIRL[ 399]= 25; IRLcoordszIRL[ 399]=-1
IRLcoordsx[ 400]= 21; IRLcoordsy[ 400]= 24; IRLcoordsxIRL[ 400]=-12; IRLcoordsyIRL[ 400]= 24; IRLcoordszIRL[ 400]=-1
IRLcoordsx[ 401]= 21; IRLcoordsy[ 401]= 25; IRLcoordsxIRL[ 401]=-12; IRLcoordsyIRL[ 401]= 23; IRLcoordszIRL[ 401]=-1
IRLcoordsx[ 402]= 21; IRLcoordsy[ 402]= 26; IRLcoordsxIRL[ 402]=-12; IRLcoordsyIRL[ 402]= 22; IRLcoordszIRL[ 402]=-1
IRLcoordsx[ 403]= 21; IRLcoordsy[ 403]= 27; IRLcoordsxIRL[ 403]=-12; IRLcoordsyIRL[ 403]= 21; IRLcoordszIRL[ 403]=-1
IRLcoordsx[ 404]= 21; IRLcoordsy[ 404]= 28; IRLcoordsxIRL[ 404]=-12; IRLcoordsyIRL[ 404]= 20; IRLcoordszIRL[ 404]=-1
IRLcoordsx[ 405]= 21; IRLcoordsy[ 405]= 29; IRLcoordsxIRL[ 405]=-12; IRLcoordsyIRL[ 405]= 19; IRLcoordszIRL[ 405]=-1
IRLcoordsx[ 406]= 21; IRLcoordsy[ 406]= 30; IRLcoordsxIRL[ 406]=-12; IRLcoordsyIRL[ 406]= 18; IRLcoordszIRL[ 406]=-1
IRLcoordsx[ 407]= 21; IRLcoordsy[ 407]= 31; IRLcoordsxIRL[ 407]=-12; IRLcoordsyIRL[ 407]= 17; IRLcoordszIRL[ 407]=-1
IRLcoordsx[ 408]= 22; IRLcoordsy[ 408]= 20; IRLcoordsxIRL[ 408]=-11; IRLcoordsyIRL[ 408]= 28; IRLcoordszIRL[ 408]=-1
IRLcoordsx[ 409]= 22; IRLcoordsy[ 409]= 21; IRLcoordsxIRL[ 409]=-11; IRLcoordsyIRL[ 409]= 27; IRLcoordszIRL[ 409]=-1
IRLcoordsx[ 410]= 22; IRLcoordsy[ 410]= 22; IRLcoordsxIRL[ 410]=-11; IRLcoordsyIRL[ 410]= 26; IRLcoordszIRL[ 410]=-1
IRLcoordsx[ 411]= 22; IRLcoordsy[ 411]= 23; IRLcoordsxIRL[ 411]=-11; IRLcoordsyIRL[ 411]= 25; IRLcoordszIRL[ 411]=-1
IRLcoordsx[ 412]= 22; IRLcoordsy[ 412]= 24; IRLcoordsxIRL[ 412]=-11; IRLcoordsyIRL[ 412]= 24; IRLcoordszIRL[ 412]=-1
IRLcoordsx[ 413]= 22; IRLcoordsy[ 413]= 25; IRLcoordsxIRL[ 413]=-11; IRLcoordsyIRL[ 413]= 23; IRLcoordszIRL[ 413]=-1
IRLcoordsx[ 414]= 22; IRLcoordsy[ 414]= 26; IRLcoordsxIRL[ 414]=-11; IRLcoordsyIRL[ 414]= 22; IRLcoordszIRL[ 414]=-1
IRLcoordsx[ 415]= 22; IRLcoordsy[ 415]= 27; IRLcoordsxIRL[ 415]=-11; IRLcoordsyIRL[ 415]= 21; IRLcoordszIRL[ 415]=-1
IRLcoordsx[ 416]= 22; IRLcoordsy[ 416]= 28; IRLcoordsxIRL[ 416]=-11; IRLcoordsyIRL[ 416]= 20; IRLcoordszIRL[ 416]=-1
IRLcoordsx[ 417]= 22; IRLcoordsy[ 417]= 29; IRLcoordsxIRL[ 417]=-11; IRLcoordsyIRL[ 417]= 19; IRLcoordszIRL[ 417]=-1
IRLcoordsx[ 418]= 22; IRLcoordsy[ 418]= 30; IRLcoordsxIRL[ 418]=-11; IRLcoordsyIRL[ 418]= 18; IRLcoordszIRL[ 418]=-1
IRLcoordsx[ 419]= 22; IRLcoordsy[ 419]= 31; IRLcoordsxIRL[ 419]=-11; IRLcoordsyIRL[ 419]= 17; IRLcoordszIRL[ 419]=-1
IRLcoordsx[ 420]= 23; IRLcoordsy[ 420]= 20; IRLcoordsxIRL[ 420]=-10; IRLcoordsyIRL[ 420]= 28; IRLcoordszIRL[ 420]=-1
IRLcoordsx[ 421]= 23; IRLcoordsy[ 421]= 21; IRLcoordsxIRL[ 421]=-10; IRLcoordsyIRL[ 421]= 27; IRLcoordszIRL[ 421]=-1
IRLcoordsx[ 422]= 23; IRLcoordsy[ 422]= 22; IRLcoordsxIRL[ 422]=-10; IRLcoordsyIRL[ 422]= 26; IRLcoordszIRL[ 422]=-1
IRLcoordsx[ 423]= 23; IRLcoordsy[ 423]= 23; IRLcoordsxIRL[ 423]=-10; IRLcoordsyIRL[ 423]= 25; IRLcoordszIRL[ 423]=-1
IRLcoordsx[ 424]= 23; IRLcoordsy[ 424]= 24; IRLcoordsxIRL[ 424]=-10; IRLcoordsyIRL[ 424]= 24; IRLcoordszIRL[ 424]=-1
IRLcoordsx[ 425]= 23; IRLcoordsy[ 425]= 25; IRLcoordsxIRL[ 425]=-10; IRLcoordsyIRL[ 425]= 23; IRLcoordszIRL[ 425]=-1
IRLcoordsx[ 426]= 23; IRLcoordsy[ 426]= 26; IRLcoordsxIRL[ 426]=-10; IRLcoordsyIRL[ 426]= 22; IRLcoordszIRL[ 426]=-1
IRLcoordsx[ 427]= 23; IRLcoordsy[ 427]= 27; IRLcoordsxIRL[ 427]=-10; IRLcoordsyIRL[ 427]= 21; IRLcoordszIRL[ 427]=-1
IRLcoordsx[ 428]= 23; IRLcoordsy[ 428]= 28; IRLcoordsxIRL[ 428]=-10; IRLcoordsyIRL[ 428]= 20; IRLcoordszIRL[ 428]=-1
IRLcoordsx[ 429]= 23; IRLcoordsy[ 429]= 29; IRLcoordsxIRL[ 429]=-10; IRLcoordsyIRL[ 429]= 19; IRLcoordszIRL[ 429]=-1
IRLcoordsx[ 430]= 23; IRLcoordsy[ 430]= 30; IRLcoordsxIRL[ 430]=-10; IRLcoordsyIRL[ 430]= 18; IRLcoordszIRL[ 430]=-1
IRLcoordsx[ 431]= 23; IRLcoordsy[ 431]= 31; IRLcoordsxIRL[ 431]=-10; IRLcoordsyIRL[ 431]= 17; IRLcoordszIRL[ 431]=-1
IRLcoordsx[ 432]= 24; IRLcoordsy[ 432]= 20; IRLcoordsxIRL[ 432]=-9; IRLcoordsyIRL[ 432]= 28; IRLcoordszIRL[ 432]=-1
IRLcoordsx[ 433]= 24; IRLcoordsy[ 433]= 21; IRLcoordsxIRL[ 433]=-9; IRLcoordsyIRL[ 433]= 27; IRLcoordszIRL[ 433]=-1
IRLcoordsx[ 434]= 24; IRLcoordsy[ 434]= 22; IRLcoordsxIRL[ 434]=-9; IRLcoordsyIRL[ 434]= 26; IRLcoordszIRL[ 434]=-1
IRLcoordsx[ 435]= 24; IRLcoordsy[ 435]= 23; IRLcoordsxIRL[ 435]=-9; IRLcoordsyIRL[ 435]= 25; IRLcoordszIRL[ 435]=-1
IRLcoordsx[ 436]= 24; IRLcoordsy[ 436]= 24; IRLcoordsxIRL[ 436]=-9; IRLcoordsyIRL[ 436]= 24; IRLcoordszIRL[ 436]=-1
IRLcoordsx[ 437]= 24; IRLcoordsy[ 437]= 25; IRLcoordsxIRL[ 437]=-9; IRLcoordsyIRL[ 437]= 23; IRLcoordszIRL[ 437]=-1
IRLcoordsx[ 438]= 24; IRLcoordsy[ 438]= 26; IRLcoordsxIRL[ 438]=-9; IRLcoordsyIRL[ 438]= 22; IRLcoordszIRL[ 438]=-1
IRLcoordsx[ 439]= 24; IRLcoordsy[ 439]= 27; IRLcoordsxIRL[ 439]=-9; IRLcoordsyIRL[ 439]= 21; IRLcoordszIRL[ 439]=-1
IRLcoordsx[ 440]= 24; IRLcoordsy[ 440]= 28; IRLcoordsxIRL[ 440]=-9; IRLcoordsyIRL[ 440]= 20; IRLcoordszIRL[ 440]=-1
IRLcoordsx[ 441]= 24; IRLcoordsy[ 441]= 29; IRLcoordsxIRL[ 441]=-9; IRLcoordsyIRL[ 441]= 19; IRLcoordszIRL[ 441]=-1
IRLcoordsx[ 442]= 24; IRLcoordsy[ 442]= 30; IRLcoordsxIRL[ 442]=-9; IRLcoordsyIRL[ 442]= 18; IRLcoordszIRL[ 442]=-1
IRLcoordsx[ 443]= 24; IRLcoordsy[ 443]= 31; IRLcoordsxIRL[ 443]=-9; IRLcoordsyIRL[ 443]= 17; IRLcoordszIRL[ 443]=-1
IRLcoordsx[ 444]= 25; IRLcoordsy[ 444]= 20; IRLcoordsxIRL[ 444]=-8; IRLcoordsyIRL[ 444]= 28; IRLcoordszIRL[ 444]=-1
IRLcoordsx[ 445]= 25; IRLcoordsy[ 445]= 21; IRLcoordsxIRL[ 445]=-8; IRLcoordsyIRL[ 445]= 27; IRLcoordszIRL[ 445]=-1
IRLcoordsx[ 446]= 25; IRLcoordsy[ 446]= 22; IRLcoordsxIRL[ 446]=-8; IRLcoordsyIRL[ 446]= 26; IRLcoordszIRL[ 446]=-1
IRLcoordsx[ 447]= 25; IRLcoordsy[ 447]= 23; IRLcoordsxIRL[ 447]=-8; IRLcoordsyIRL[ 447]= 25; IRLcoordszIRL[ 447]=-1
IRLcoordsx[ 448]= 25; IRLcoordsy[ 448]= 24; IRLcoordsxIRL[ 448]=-8; IRLcoordsyIRL[ 448]= 24; IRLcoordszIRL[ 448]=-1
IRLcoordsx[ 449]= 25; IRLcoordsy[ 449]= 25; IRLcoordsxIRL[ 449]=-8; IRLcoordsyIRL[ 449]= 23; IRLcoordszIRL[ 449]=-1
IRLcoordsx[ 450]= 25; IRLcoordsy[ 450]= 26; IRLcoordsxIRL[ 450]=-8; IRLcoordsyIRL[ 450]= 22; IRLcoordszIRL[ 450]=-1
IRLcoordsx[ 451]= 25; IRLcoordsy[ 451]= 27; IRLcoordsxIRL[ 451]=-8; IRLcoordsyIRL[ 451]= 21; IRLcoordszIRL[ 451]=-1
IRLcoordsx[ 452]= 25; IRLcoordsy[ 452]= 28; IRLcoordsxIRL[ 452]=-8; IRLcoordsyIRL[ 452]= 20; IRLcoordszIRL[ 452]=-1
IRLcoordsx[ 453]= 25; IRLcoordsy[ 453]= 29; IRLcoordsxIRL[ 453]=-8; IRLcoordsyIRL[ 453]= 19; IRLcoordszIRL[ 453]=-1
IRLcoordsx[ 454]= 25; IRLcoordsy[ 454]= 30; IRLcoordsxIRL[ 454]=-8; IRLcoordsyIRL[ 454]= 18; IRLcoordszIRL[ 454]=-1
IRLcoordsx[ 455]= 25; IRLcoordsy[ 455]= 31; IRLcoordsxIRL[ 455]=-8; IRLcoordsyIRL[ 455]= 17; IRLcoordszIRL[ 455]=-1
IRLcoordsx[ 456]= 26; IRLcoordsy[ 456]= 20; IRLcoordsxIRL[ 456]=-7; IRLcoordsyIRL[ 456]= 28; IRLcoordszIRL[ 456]=-1
IRLcoordsx[ 457]= 26; IRLcoordsy[ 457]= 21; IRLcoordsxIRL[ 457]=-7; IRLcoordsyIRL[ 457]= 27; IRLcoordszIRL[ 457]=-1
IRLcoordsx[ 458]= 26; IRLcoordsy[ 458]= 22; IRLcoordsxIRL[ 458]=-7; IRLcoordsyIRL[ 458]= 26; IRLcoordszIRL[ 458]=-1
IRLcoordsx[ 459]= 26; IRLcoordsy[ 459]= 23; IRLcoordsxIRL[ 459]=-7; IRLcoordsyIRL[ 459]= 25; IRLcoordszIRL[ 459]=-1
IRLcoordsx[ 460]= 26; IRLcoordsy[ 460]= 24; IRLcoordsxIRL[ 460]=-7; IRLcoordsyIRL[ 460]= 24; IRLcoordszIRL[ 460]=-1
IRLcoordsx[ 461]= 26; IRLcoordsy[ 461]= 25; IRLcoordsxIRL[ 461]=-7; IRLcoordsyIRL[ 461]= 23; IRLcoordszIRL[ 461]=-1
IRLcoordsx[ 462]= 26; IRLcoordsy[ 462]= 26; IRLcoordsxIRL[ 462]=-7; IRLcoordsyIRL[ 462]= 22; IRLcoordszIRL[ 462]=-1
IRLcoordsx[ 463]= 26; IRLcoordsy[ 463]= 27; IRLcoordsxIRL[ 463]=-7; IRLcoordsyIRL[ 463]= 21; IRLcoordszIRL[ 463]=-1
IRLcoordsx[ 464]= 26; IRLcoordsy[ 464]= 28; IRLcoordsxIRL[ 464]=-7; IRLcoordsyIRL[ 464]= 20; IRLcoordszIRL[ 464]=-1
IRLcoordsx[ 465]= 26; IRLcoordsy[ 465]= 29; IRLcoordsxIRL[ 465]=-7; IRLcoordsyIRL[ 465]= 19; IRLcoordszIRL[ 465]=-1
IRLcoordsx[ 466]= 26; IRLcoordsy[ 466]= 30; IRLcoordsxIRL[ 466]=-7; IRLcoordsyIRL[ 466]= 18; IRLcoordszIRL[ 466]=-1
IRLcoordsx[ 467]= 26; IRLcoordsy[ 467]= 31; IRLcoordsxIRL[ 467]=-7; IRLcoordsyIRL[ 467]= 17; IRLcoordszIRL[ 467]=-1
IRLcoordsx[ 468]= 27; IRLcoordsy[ 468]= 20; IRLcoordsxIRL[ 468]=-6; IRLcoordsyIRL[ 468]= 28; IRLcoordszIRL[ 468]=-1
IRLcoordsx[ 469]= 27; IRLcoordsy[ 469]= 21; IRLcoordsxIRL[ 469]=-6; IRLcoordsyIRL[ 469]= 27; IRLcoordszIRL[ 469]=-1
IRLcoordsx[ 470]= 27; IRLcoordsy[ 470]= 22; IRLcoordsxIRL[ 470]=-6; IRLcoordsyIRL[ 470]= 26; IRLcoordszIRL[ 470]=-1
IRLcoordsx[ 471]= 27; IRLcoordsy[ 471]= 23; IRLcoordsxIRL[ 471]=-6; IRLcoordsyIRL[ 471]= 25; IRLcoordszIRL[ 471]=-1
IRLcoordsx[ 472]= 27; IRLcoordsy[ 472]= 24; IRLcoordsxIRL[ 472]=-6; IRLcoordsyIRL[ 472]= 24; IRLcoordszIRL[ 472]=-1
IRLcoordsx[ 473]= 27; IRLcoordsy[ 473]= 25; IRLcoordsxIRL[ 473]=-6; IRLcoordsyIRL[ 473]= 23; IRLcoordszIRL[ 473]=-1
IRLcoordsx[ 474]= 27; IRLcoordsy[ 474]= 26; IRLcoordsxIRL[ 474]=-6; IRLcoordsyIRL[ 474]= 22; IRLcoordszIRL[ 474]=-1
IRLcoordsx[ 475]= 27; IRLcoordsy[ 475]= 27; IRLcoordsxIRL[ 475]=-6; IRLcoordsyIRL[ 475]= 21; IRLcoordszIRL[ 475]=-1
IRLcoordsx[ 476]= 27; IRLcoordsy[ 476]= 28; IRLcoordsxIRL[ 476]=-6; IRLcoordsyIRL[ 476]= 20; IRLcoordszIRL[ 476]=-1
IRLcoordsx[ 477]= 27; IRLcoordsy[ 477]= 29; IRLcoordsxIRL[ 477]=-6; IRLcoordsyIRL[ 477]= 19; IRLcoordszIRL[ 477]=-1
IRLcoordsx[ 478]= 27; IRLcoordsy[ 478]= 30; IRLcoordsxIRL[ 478]=-6; IRLcoordsyIRL[ 478]= 18; IRLcoordszIRL[ 478]=-1
IRLcoordsx[ 479]= 27; IRLcoordsy[ 479]= 31; IRLcoordsxIRL[ 479]=-6; IRLcoordsyIRL[ 479]= 17; IRLcoordszIRL[ 479]=-1
IRLcoordsx[ 480]= 32; IRLcoordsy[ 480]= 20; IRLcoordsxIRL[ 480]=-6; IRLcoordsyIRL[ 480]= 28; IRLcoordszIRL[ 480]= 5
IRLcoordsx[ 481]= 32; IRLcoordsy[ 481]= 21; IRLcoordsxIRL[ 481]=-6; IRLcoordsyIRL[ 481]= 27; IRLcoordszIRL[ 481]= 5
IRLcoordsx[ 482]= 32; IRLcoordsy[ 482]= 22; IRLcoordsxIRL[ 482]=-6; IRLcoordsyIRL[ 482]= 26; IRLcoordszIRL[ 482]= 5
IRLcoordsx[ 483]= 32; IRLcoordsy[ 483]= 23; IRLcoordsxIRL[ 483]=-6; IRLcoordsyIRL[ 483]= 25; IRLcoordszIRL[ 483]= 5
IRLcoordsx[ 484]= 32; IRLcoordsy[ 484]= 24; IRLcoordsxIRL[ 484]=-6; IRLcoordsyIRL[ 484]= 24; IRLcoordszIRL[ 484]= 5
IRLcoordsx[ 485]= 32; IRLcoordsy[ 485]= 25; IRLcoordsxIRL[ 485]=-6; IRLcoordsyIRL[ 485]= 23; IRLcoordszIRL[ 485]= 5
IRLcoordsx[ 486]= 32; IRLcoordsy[ 486]= 26; IRLcoordsxIRL[ 486]=-6; IRLcoordsyIRL[ 486]= 22; IRLcoordszIRL[ 486]= 5
IRLcoordsx[ 487]= 32; IRLcoordsy[ 487]= 27; IRLcoordsxIRL[ 487]=-6; IRLcoordsyIRL[ 487]= 21; IRLcoordszIRL[ 487]= 5
IRLcoordsx[ 488]= 32; IRLcoordsy[ 488]= 28; IRLcoordsxIRL[ 488]=-6; IRLcoordsyIRL[ 488]= 20; IRLcoordszIRL[ 488]= 5
IRLcoordsx[ 489]= 32; IRLcoordsy[ 489]= 29; IRLcoordsxIRL[ 489]=-6; IRLcoordsyIRL[ 489]= 19; IRLcoordszIRL[ 489]= 5
IRLcoordsx[ 490]= 32; IRLcoordsy[ 490]= 30; IRLcoordsxIRL[ 490]=-6; IRLcoordsyIRL[ 490]= 18; IRLcoordszIRL[ 490]= 5
IRLcoordsx[ 491]= 32; IRLcoordsy[ 491]= 31; IRLcoordsxIRL[ 491]=-6; IRLcoordsyIRL[ 491]= 17; IRLcoordszIRL[ 491]= 5
IRLcoordsx[ 492]= 33; IRLcoordsy[ 492]= 20; IRLcoordsxIRL[ 492]=-7; IRLcoordsyIRL[ 492]= 28; IRLcoordszIRL[ 492]= 5
IRLcoordsx[ 493]= 33; IRLcoordsy[ 493]= 21; IRLcoordsxIRL[ 493]=-7; IRLcoordsyIRL[ 493]= 27; IRLcoordszIRL[ 493]= 5
IRLcoordsx[ 494]= 33; IRLcoordsy[ 494]= 22; IRLcoordsxIRL[ 494]=-7; IRLcoordsyIRL[ 494]= 26; IRLcoordszIRL[ 494]= 5
IRLcoordsx[ 495]= 33; IRLcoordsy[ 495]= 23; IRLcoordsxIRL[ 495]=-7; IRLcoordsyIRL[ 495]= 25; IRLcoordszIRL[ 495]= 5
IRLcoordsx[ 496]= 33; IRLcoordsy[ 496]= 24; IRLcoordsxIRL[ 496]=-7; IRLcoordsyIRL[ 496]= 24; IRLcoordszIRL[ 496]= 5
IRLcoordsx[ 497]= 33; IRLcoordsy[ 497]= 25; IRLcoordsxIRL[ 497]=-7; IRLcoordsyIRL[ 497]= 23; IRLcoordszIRL[ 497]= 5
IRLcoordsx[ 498]= 33; IRLcoordsy[ 498]= 26; IRLcoordsxIRL[ 498]=-7; IRLcoordsyIRL[ 498]= 22; IRLcoordszIRL[ 498]= 5
IRLcoordsx[ 499]= 33; IRLcoordsy[ 499]= 27; IRLcoordsxIRL[ 499]=-7; IRLcoordsyIRL[ 499]= 21; IRLcoordszIRL[ 499]= 5
IRLcoordsx[ 500]= 33; IRLcoordsy[ 500]= 28; IRLcoordsxIRL[ 500]=-7; IRLcoordsyIRL[ 500]= 20; IRLcoordszIRL[ 500]= 5
IRLcoordsx[ 501]= 33; IRLcoordsy[ 501]= 29; IRLcoordsxIRL[ 501]=-7; IRLcoordsyIRL[ 501]= 19; IRLcoordszIRL[ 501]= 5
IRLcoordsx[ 502]= 33; IRLcoordsy[ 502]= 30; IRLcoordsxIRL[ 502]=-7; IRLcoordsyIRL[ 502]= 18; IRLcoordszIRL[ 502]= 5
IRLcoordsx[ 503]= 33; IRLcoordsy[ 503]= 31; IRLcoordsxIRL[ 503]=-7; IRLcoordsyIRL[ 503]= 17; IRLcoordszIRL[ 503]= 5
IRLcoordsx[ 504]= 34; IRLcoordsy[ 504]= 20; IRLcoordsxIRL[ 504]=-8; IRLcoordsyIRL[ 504]= 28; IRLcoordszIRL[ 504]= 5
IRLcoordsx[ 505]= 34; IRLcoordsy[ 505]= 21; IRLcoordsxIRL[ 505]=-8; IRLcoordsyIRL[ 505]= 27; IRLcoordszIRL[ 505]= 5
IRLcoordsx[ 506]= 34; IRLcoordsy[ 506]= 22; IRLcoordsxIRL[ 506]=-8; IRLcoordsyIRL[ 506]= 26; IRLcoordszIRL[ 506]= 5
IRLcoordsx[ 507]= 34; IRLcoordsy[ 507]= 23; IRLcoordsxIRL[ 507]=-8; IRLcoordsyIRL[ 507]= 25; IRLcoordszIRL[ 507]= 5
IRLcoordsx[ 508]= 34; IRLcoordsy[ 508]= 24; IRLcoordsxIRL[ 508]=-8; IRLcoordsyIRL[ 508]= 24; IRLcoordszIRL[ 508]= 5
IRLcoordsx[ 509]= 34; IRLcoordsy[ 509]= 25; IRLcoordsxIRL[ 509]=-8; IRLcoordsyIRL[ 509]= 23; IRLcoordszIRL[ 509]= 5
IRLcoordsx[ 510]= 34; IRLcoordsy[ 510]= 26; IRLcoordsxIRL[ 510]=-8; IRLcoordsyIRL[ 510]= 22; IRLcoordszIRL[ 510]= 5
IRLcoordsx[ 511]= 34; IRLcoordsy[ 511]= 27; IRLcoordsxIRL[ 511]=-8; IRLcoordsyIRL[ 511]= 21; IRLcoordszIRL[ 511]= 5
IRLcoordsx[ 512]= 34; IRLcoordsy[ 512]= 28; IRLcoordsxIRL[ 512]=-8; IRLcoordsyIRL[ 512]= 20; IRLcoordszIRL[ 512]= 5
IRLcoordsx[ 513]= 34; IRLcoordsy[ 513]= 29; IRLcoordsxIRL[ 513]=-8; IRLcoordsyIRL[ 513]= 19; IRLcoordszIRL[ 513]= 5
IRLcoordsx[ 514]= 34; IRLcoordsy[ 514]= 30; IRLcoordsxIRL[ 514]=-8; IRLcoordsyIRL[ 514]= 18; IRLcoordszIRL[ 514]= 5
IRLcoordsx[ 515]= 34; IRLcoordsy[ 515]= 31; IRLcoordsxIRL[ 515]=-8; IRLcoordsyIRL[ 515]= 17; IRLcoordszIRL[ 515]= 5
IRLcoordsx[ 516]= 35; IRLcoordsy[ 516]= 20; IRLcoordsxIRL[ 516]=-9; IRLcoordsyIRL[ 516]= 28; IRLcoordszIRL[ 516]= 5
IRLcoordsx[ 517]= 35; IRLcoordsy[ 517]= 21; IRLcoordsxIRL[ 517]=-9; IRLcoordsyIRL[ 517]= 27; IRLcoordszIRL[ 517]= 5
IRLcoordsx[ 518]= 35; IRLcoordsy[ 518]= 22; IRLcoordsxIRL[ 518]=-9; IRLcoordsyIRL[ 518]= 26; IRLcoordszIRL[ 518]= 5
IRLcoordsx[ 519]= 35; IRLcoordsy[ 519]= 23; IRLcoordsxIRL[ 519]=-9; IRLcoordsyIRL[ 519]= 25; IRLcoordszIRL[ 519]= 5
IRLcoordsx[ 520]= 35; IRLcoordsy[ 520]= 24; IRLcoordsxIRL[ 520]=-9; IRLcoordsyIRL[ 520]= 24; IRLcoordszIRL[ 520]= 5
IRLcoordsx[ 521]= 35; IRLcoordsy[ 521]= 25; IRLcoordsxIRL[ 521]=-9; IRLcoordsyIRL[ 521]= 23; IRLcoordszIRL[ 521]= 5
IRLcoordsx[ 522]= 35; IRLcoordsy[ 522]= 26; IRLcoordsxIRL[ 522]=-9; IRLcoordsyIRL[ 522]= 22; IRLcoordszIRL[ 522]= 5
IRLcoordsx[ 523]= 35; IRLcoordsy[ 523]= 27; IRLcoordsxIRL[ 523]=-9; IRLcoordsyIRL[ 523]= 21; IRLcoordszIRL[ 523]= 5
IRLcoordsx[ 524]= 35; IRLcoordsy[ 524]= 28; IRLcoordsxIRL[ 524]=-9; IRLcoordsyIRL[ 524]= 20; IRLcoordszIRL[ 524]= 5
IRLcoordsx[ 525]= 35; IRLcoordsy[ 525]= 29; IRLcoordsxIRL[ 525]=-9; IRLcoordsyIRL[ 525]= 19; IRLcoordszIRL[ 525]= 5
IRLcoordsx[ 526]= 35; IRLcoordsy[ 526]= 30; IRLcoordsxIRL[ 526]=-9; IRLcoordsyIRL[ 526]= 18; IRLcoordszIRL[ 526]= 5
IRLcoordsx[ 527]= 35; IRLcoordsy[ 527]= 31; IRLcoordsxIRL[ 527]=-9; IRLcoordsyIRL[ 527]= 17; IRLcoordszIRL[ 527]= 5
IRLcoordsx[ 528]= 36; IRLcoordsy[ 528]= 20; IRLcoordsxIRL[ 528]=-10; IRLcoordsyIRL[ 528]= 28; IRLcoordszIRL[ 528]= 5
IRLcoordsx[ 529]= 36; IRLcoordsy[ 529]= 21; IRLcoordsxIRL[ 529]=-10; IRLcoordsyIRL[ 529]= 27; IRLcoordszIRL[ 529]= 5
IRLcoordsx[ 530]= 36; IRLcoordsy[ 530]= 22; IRLcoordsxIRL[ 530]=-10; IRLcoordsyIRL[ 530]= 26; IRLcoordszIRL[ 530]= 5
IRLcoordsx[ 531]= 36; IRLcoordsy[ 531]= 23; IRLcoordsxIRL[ 531]=-10; IRLcoordsyIRL[ 531]= 25; IRLcoordszIRL[ 531]= 5
IRLcoordsx[ 532]= 36; IRLcoordsy[ 532]= 24; IRLcoordsxIRL[ 532]=-10; IRLcoordsyIRL[ 532]= 24; IRLcoordszIRL[ 532]= 5
IRLcoordsx[ 533]= 36; IRLcoordsy[ 533]= 25; IRLcoordsxIRL[ 533]=-10; IRLcoordsyIRL[ 533]= 23; IRLcoordszIRL[ 533]= 5
IRLcoordsx[ 534]= 36; IRLcoordsy[ 534]= 26; IRLcoordsxIRL[ 534]=-10; IRLcoordsyIRL[ 534]= 22; IRLcoordszIRL[ 534]= 5
IRLcoordsx[ 535]= 36; IRLcoordsy[ 535]= 27; IRLcoordsxIRL[ 535]=-10; IRLcoordsyIRL[ 535]= 21; IRLcoordszIRL[ 535]= 5
IRLcoordsx[ 536]= 36; IRLcoordsy[ 536]= 28; IRLcoordsxIRL[ 536]=-10; IRLcoordsyIRL[ 536]= 20; IRLcoordszIRL[ 536]= 5
IRLcoordsx[ 537]= 36; IRLcoordsy[ 537]= 29; IRLcoordsxIRL[ 537]=-10; IRLcoordsyIRL[ 537]= 19; IRLcoordszIRL[ 537]= 5
IRLcoordsx[ 538]= 36; IRLcoordsy[ 538]= 30; IRLcoordsxIRL[ 538]=-10; IRLcoordsyIRL[ 538]= 18; IRLcoordszIRL[ 538]= 5
IRLcoordsx[ 539]= 36; IRLcoordsy[ 539]= 31; IRLcoordsxIRL[ 539]=-10; IRLcoordsyIRL[ 539]= 17; IRLcoordszIRL[ 539]= 5
IRLcoordsx[ 540]= 37; IRLcoordsy[ 540]= 20; IRLcoordsxIRL[ 540]=-11; IRLcoordsyIRL[ 540]= 28; IRLcoordszIRL[ 540]= 5
IRLcoordsx[ 541]= 37; IRLcoordsy[ 541]= 21; IRLcoordsxIRL[ 541]=-11; IRLcoordsyIRL[ 541]= 27; IRLcoordszIRL[ 541]= 5
IRLcoordsx[ 542]= 37; IRLcoordsy[ 542]= 22; IRLcoordsxIRL[ 542]=-11; IRLcoordsyIRL[ 542]= 26; IRLcoordszIRL[ 542]= 5
IRLcoordsx[ 543]= 37; IRLcoordsy[ 543]= 23; IRLcoordsxIRL[ 543]=-11; IRLcoordsyIRL[ 543]= 25; IRLcoordszIRL[ 543]= 5
IRLcoordsx[ 544]= 37; IRLcoordsy[ 544]= 24; IRLcoordsxIRL[ 544]=-11; IRLcoordsyIRL[ 544]= 24; IRLcoordszIRL[ 544]= 5
IRLcoordsx[ 545]= 37; IRLcoordsy[ 545]= 25; IRLcoordsxIRL[ 545]=-11; IRLcoordsyIRL[ 545]= 23; IRLcoordszIRL[ 545]= 5
IRLcoordsx[ 546]= 37; IRLcoordsy[ 546]= 26; IRLcoordsxIRL[ 546]=-11; IRLcoordsyIRL[ 546]= 22; IRLcoordszIRL[ 546]= 5
IRLcoordsx[ 547]= 37; IRLcoordsy[ 547]= 27; IRLcoordsxIRL[ 547]=-11; IRLcoordsyIRL[ 547]= 21; IRLcoordszIRL[ 547]= 5
IRLcoordsx[ 548]= 37; IRLcoordsy[ 548]= 28; IRLcoordsxIRL[ 548]=-11; IRLcoordsyIRL[ 548]= 20; IRLcoordszIRL[ 548]= 5
IRLcoordsx[ 549]= 37; IRLcoordsy[ 549]= 29; IRLcoordsxIRL[ 549]=-11; IRLcoordsyIRL[ 549]= 19; IRLcoordszIRL[ 549]= 5
IRLcoordsx[ 550]= 37; IRLcoordsy[ 550]= 30; IRLcoordsxIRL[ 550]=-11; IRLcoordsyIRL[ 550]= 18; IRLcoordszIRL[ 550]= 5
IRLcoordsx[ 551]= 37; IRLcoordsy[ 551]= 31; IRLcoordsxIRL[ 551]=-11; IRLcoordsyIRL[ 551]= 17; IRLcoordszIRL[ 551]= 5
IRLcoordsx[ 552]= 38; IRLcoordsy[ 552]= 20; IRLcoordsxIRL[ 552]=-12; IRLcoordsyIRL[ 552]= 28; IRLcoordszIRL[ 552]= 5
IRLcoordsx[ 553]= 38; IRLcoordsy[ 553]= 21; IRLcoordsxIRL[ 553]=-12; IRLcoordsyIRL[ 553]= 27; IRLcoordszIRL[ 553]= 5
IRLcoordsx[ 554]= 38; IRLcoordsy[ 554]= 22; IRLcoordsxIRL[ 554]=-12; IRLcoordsyIRL[ 554]= 26; IRLcoordszIRL[ 554]= 5
IRLcoordsx[ 555]= 38; IRLcoordsy[ 555]= 23; IRLcoordsxIRL[ 555]=-12; IRLcoordsyIRL[ 555]= 25; IRLcoordszIRL[ 555]= 5
IRLcoordsx[ 556]= 38; IRLcoordsy[ 556]= 24; IRLcoordsxIRL[ 556]=-12; IRLcoordsyIRL[ 556]= 24; IRLcoordszIRL[ 556]= 5
IRLcoordsx[ 557]= 38; IRLcoordsy[ 557]= 25; IRLcoordsxIRL[ 557]=-12; IRLcoordsyIRL[ 557]= 23; IRLcoordszIRL[ 557]= 5
IRLcoordsx[ 558]= 38; IRLcoordsy[ 558]= 26; IRLcoordsxIRL[ 558]=-12; IRLcoordsyIRL[ 558]= 22; IRLcoordszIRL[ 558]= 5
IRLcoordsx[ 559]= 38; IRLcoordsy[ 559]= 27; IRLcoordsxIRL[ 559]=-12; IRLcoordsyIRL[ 559]= 21; IRLcoordszIRL[ 559]= 5
IRLcoordsx[ 560]= 38; IRLcoordsy[ 560]= 28; IRLcoordsxIRL[ 560]=-12; IRLcoordsyIRL[ 560]= 20; IRLcoordszIRL[ 560]= 5
IRLcoordsx[ 561]= 38; IRLcoordsy[ 561]= 29; IRLcoordsxIRL[ 561]=-12; IRLcoordsyIRL[ 561]= 19; IRLcoordszIRL[ 561]= 5
IRLcoordsx[ 562]= 38; IRLcoordsy[ 562]= 30; IRLcoordsxIRL[ 562]=-12; IRLcoordsyIRL[ 562]= 18; IRLcoordszIRL[ 562]= 5
IRLcoordsx[ 563]= 38; IRLcoordsy[ 563]= 31; IRLcoordsxIRL[ 563]=-12; IRLcoordsyIRL[ 563]= 17; IRLcoordszIRL[ 563]= 5
IRLcoordsx[ 564]= 39; IRLcoordsy[ 564]= 20; IRLcoordsxIRL[ 564]=-13; IRLcoordsyIRL[ 564]= 28; IRLcoordszIRL[ 564]= 5
IRLcoordsx[ 565]= 39; IRLcoordsy[ 565]= 21; IRLcoordsxIRL[ 565]=-13; IRLcoordsyIRL[ 565]= 27; IRLcoordszIRL[ 565]= 5
IRLcoordsx[ 566]= 39; IRLcoordsy[ 566]= 22; IRLcoordsxIRL[ 566]=-13; IRLcoordsyIRL[ 566]= 26; IRLcoordszIRL[ 566]= 5
IRLcoordsx[ 567]= 39; IRLcoordsy[ 567]= 23; IRLcoordsxIRL[ 567]=-13; IRLcoordsyIRL[ 567]= 25; IRLcoordszIRL[ 567]= 5
IRLcoordsx[ 568]= 39; IRLcoordsy[ 568]= 24; IRLcoordsxIRL[ 568]=-13; IRLcoordsyIRL[ 568]= 24; IRLcoordszIRL[ 568]= 5
IRLcoordsx[ 569]= 39; IRLcoordsy[ 569]= 25; IRLcoordsxIRL[ 569]=-13; IRLcoordsyIRL[ 569]= 23; IRLcoordszIRL[ 569]= 5
IRLcoordsx[ 570]= 39; IRLcoordsy[ 570]= 26; IRLcoordsxIRL[ 570]=-13; IRLcoordsyIRL[ 570]= 22; IRLcoordszIRL[ 570]= 5
IRLcoordsx[ 571]= 39; IRLcoordsy[ 571]= 27; IRLcoordsxIRL[ 571]=-13; IRLcoordsyIRL[ 571]= 21; IRLcoordszIRL[ 571]= 5
IRLcoordsx[ 572]= 39; IRLcoordsy[ 572]= 28; IRLcoordsxIRL[ 572]=-13; IRLcoordsyIRL[ 572]= 20; IRLcoordszIRL[ 572]= 5
IRLcoordsx[ 573]= 39; IRLcoordsy[ 573]= 29; IRLcoordsxIRL[ 573]=-13; IRLcoordsyIRL[ 573]= 19; IRLcoordszIRL[ 573]= 5
IRLcoordsx[ 574]= 39; IRLcoordsy[ 574]= 30; IRLcoordsxIRL[ 574]=-13; IRLcoordsyIRL[ 574]= 18; IRLcoordszIRL[ 574]= 5
IRLcoordsx[ 575]= 39; IRLcoordsy[ 575]= 31; IRLcoordsxIRL[ 575]=-13; IRLcoordsyIRL[ 575]= 17; IRLcoordszIRL[ 575]= 5
IRLcoordsx[ 576]= 16; IRLcoordsy[ 576]= 20; IRLcoordsxIRL[ 576]=-5; IRLcoordsyIRL[ 576]= 28; IRLcoordszIRL[ 576]= 0
IRLcoordsx[ 577]= 16; IRLcoordsy[ 577]= 21; IRLcoordsxIRL[ 577]=-5; IRLcoordsyIRL[ 577]= 27; IRLcoordszIRL[ 577]= 0
IRLcoordsx[ 578]= 16; IRLcoordsy[ 578]= 22; IRLcoordsxIRL[ 578]=-5; IRLcoordsyIRL[ 578]= 26; IRLcoordszIRL[ 578]= 0
IRLcoordsx[ 579]= 16; IRLcoordsy[ 579]= 23; IRLcoordsxIRL[ 579]=-5; IRLcoordsyIRL[ 579]= 25; IRLcoordszIRL[ 579]= 0
IRLcoordsx[ 580]= 16; IRLcoordsy[ 580]= 24; IRLcoordsxIRL[ 580]=-5; IRLcoordsyIRL[ 580]= 24; IRLcoordszIRL[ 580]= 0
IRLcoordsx[ 581]= 16; IRLcoordsy[ 581]= 25; IRLcoordsxIRL[ 581]=-5; IRLcoordsyIRL[ 581]= 23; IRLcoordszIRL[ 581]= 0
IRLcoordsx[ 582]= 16; IRLcoordsy[ 582]= 26; IRLcoordsxIRL[ 582]=-5; IRLcoordsyIRL[ 582]= 22; IRLcoordszIRL[ 582]= 0
IRLcoordsx[ 583]= 16; IRLcoordsy[ 583]= 27; IRLcoordsxIRL[ 583]=-5; IRLcoordsyIRL[ 583]= 21; IRLcoordszIRL[ 583]= 0
IRLcoordsx[ 584]= 16; IRLcoordsy[ 584]= 28; IRLcoordsxIRL[ 584]=-5; IRLcoordsyIRL[ 584]= 20; IRLcoordszIRL[ 584]= 0
IRLcoordsx[ 585]= 16; IRLcoordsy[ 585]= 29; IRLcoordsxIRL[ 585]=-5; IRLcoordsyIRL[ 585]= 19; IRLcoordszIRL[ 585]= 0
IRLcoordsx[ 586]= 16; IRLcoordsy[ 586]= 30; IRLcoordsxIRL[ 586]=-5; IRLcoordsyIRL[ 586]= 18; IRLcoordszIRL[ 586]= 0
IRLcoordsx[ 587]= 16; IRLcoordsy[ 587]= 31; IRLcoordsxIRL[ 587]=-5; IRLcoordsyIRL[ 587]= 17; IRLcoordszIRL[ 587]= 0
IRLcoordsx[ 588]= 17; IRLcoordsy[ 588]= 20; IRLcoordsxIRL[ 588]=-5; IRLcoordsyIRL[ 588]= 28; IRLcoordszIRL[ 588]= 1
IRLcoordsx[ 589]= 17; IRLcoordsy[ 589]= 21; IRLcoordsxIRL[ 589]=-5; IRLcoordsyIRL[ 589]= 27; IRLcoordszIRL[ 589]= 1
IRLcoordsx[ 590]= 17; IRLcoordsy[ 590]= 22; IRLcoordsxIRL[ 590]=-5; IRLcoordsyIRL[ 590]= 26; IRLcoordszIRL[ 590]= 1
IRLcoordsx[ 591]= 17; IRLcoordsy[ 591]= 23; IRLcoordsxIRL[ 591]=-5; IRLcoordsyIRL[ 591]= 25; IRLcoordszIRL[ 591]= 1
IRLcoordsx[ 592]= 17; IRLcoordsy[ 592]= 24; IRLcoordsxIRL[ 592]=-5; IRLcoordsyIRL[ 592]= 24; IRLcoordszIRL[ 592]= 1
IRLcoordsx[ 593]= 17; IRLcoordsy[ 593]= 25; IRLcoordsxIRL[ 593]=-5; IRLcoordsyIRL[ 593]= 23; IRLcoordszIRL[ 593]= 1
IRLcoordsx[ 594]= 17; IRLcoordsy[ 594]= 26; IRLcoordsxIRL[ 594]=-5; IRLcoordsyIRL[ 594]= 22; IRLcoordszIRL[ 594]= 1
IRLcoordsx[ 595]= 17; IRLcoordsy[ 595]= 27; IRLcoordsxIRL[ 595]=-5; IRLcoordsyIRL[ 595]= 21; IRLcoordszIRL[ 595]= 1
IRLcoordsx[ 596]= 17; IRLcoordsy[ 596]= 28; IRLcoordsxIRL[ 596]=-5; IRLcoordsyIRL[ 596]= 20; IRLcoordszIRL[ 596]= 1
IRLcoordsx[ 597]= 17; IRLcoordsy[ 597]= 29; IRLcoordsxIRL[ 597]=-5; IRLcoordsyIRL[ 597]= 19; IRLcoordszIRL[ 597]= 1
IRLcoordsx[ 598]= 17; IRLcoordsy[ 598]= 30; IRLcoordsxIRL[ 598]=-5; IRLcoordsyIRL[ 598]= 18; IRLcoordszIRL[ 598]= 1
IRLcoordsx[ 599]= 17; IRLcoordsy[ 599]= 31; IRLcoordsxIRL[ 599]=-5; IRLcoordsyIRL[ 599]= 17; IRLcoordszIRL[ 599]= 1
IRLcoordsx[ 600]= 18; IRLcoordsy[ 600]= 20; IRLcoordsxIRL[ 600]=-5; IRLcoordsyIRL[ 600]= 28; IRLcoordszIRL[ 600]= 2
IRLcoordsx[ 601]= 18; IRLcoordsy[ 601]= 21; IRLcoordsxIRL[ 601]=-5; IRLcoordsyIRL[ 601]= 27; IRLcoordszIRL[ 601]= 2
IRLcoordsx[ 602]= 18; IRLcoordsy[ 602]= 22; IRLcoordsxIRL[ 602]=-5; IRLcoordsyIRL[ 602]= 26; IRLcoordszIRL[ 602]= 2
IRLcoordsx[ 603]= 18; IRLcoordsy[ 603]= 23; IRLcoordsxIRL[ 603]=-5; IRLcoordsyIRL[ 603]= 25; IRLcoordszIRL[ 603]= 2
IRLcoordsx[ 604]= 18; IRLcoordsy[ 604]= 24; IRLcoordsxIRL[ 604]=-5; IRLcoordsyIRL[ 604]= 24; IRLcoordszIRL[ 604]= 2
IRLcoordsx[ 605]= 18; IRLcoordsy[ 605]= 25; IRLcoordsxIRL[ 605]=-5; IRLcoordsyIRL[ 605]= 23; IRLcoordszIRL[ 605]= 2
IRLcoordsx[ 606]= 18; IRLcoordsy[ 606]= 26; IRLcoordsxIRL[ 606]=-5; IRLcoordsyIRL[ 606]= 22; IRLcoordszIRL[ 606]= 2
IRLcoordsx[ 607]= 18; IRLcoordsy[ 607]= 27; IRLcoordsxIRL[ 607]=-5; IRLcoordsyIRL[ 607]= 21; IRLcoordszIRL[ 607]= 2
IRLcoordsx[ 608]= 18; IRLcoordsy[ 608]= 28; IRLcoordsxIRL[ 608]=-5; IRLcoordsyIRL[ 608]= 20; IRLcoordszIRL[ 608]= 2
IRLcoordsx[ 609]= 18; IRLcoordsy[ 609]= 29; IRLcoordsxIRL[ 609]=-5; IRLcoordsyIRL[ 609]= 19; IRLcoordszIRL[ 609]= 2
IRLcoordsx[ 610]= 18; IRLcoordsy[ 610]= 30; IRLcoordsxIRL[ 610]=-5; IRLcoordsyIRL[ 610]= 18; IRLcoordszIRL[ 610]= 2
IRLcoordsx[ 611]= 18; IRLcoordsy[ 611]= 31; IRLcoordsxIRL[ 611]=-5; IRLcoordsyIRL[ 611]= 17; IRLcoordszIRL[ 611]= 2
IRLcoordsx[ 612]= 19; IRLcoordsy[ 612]= 20; IRLcoordsxIRL[ 612]=-5; IRLcoordsyIRL[ 612]= 28; IRLcoordszIRL[ 612]= 3
IRLcoordsx[ 613]= 19; IRLcoordsy[ 613]= 21; IRLcoordsxIRL[ 613]=-5; IRLcoordsyIRL[ 613]= 27; IRLcoordszIRL[ 613]= 3
IRLcoordsx[ 614]= 19; IRLcoordsy[ 614]= 22; IRLcoordsxIRL[ 614]=-5; IRLcoordsyIRL[ 614]= 26; IRLcoordszIRL[ 614]= 3
IRLcoordsx[ 615]= 19; IRLcoordsy[ 615]= 23; IRLcoordsxIRL[ 615]=-5; IRLcoordsyIRL[ 615]= 25; IRLcoordszIRL[ 615]= 3
IRLcoordsx[ 616]= 19; IRLcoordsy[ 616]= 24; IRLcoordsxIRL[ 616]=-5; IRLcoordsyIRL[ 616]= 24; IRLcoordszIRL[ 616]= 3
IRLcoordsx[ 617]= 19; IRLcoordsy[ 617]= 25; IRLcoordsxIRL[ 617]=-5; IRLcoordsyIRL[ 617]= 23; IRLcoordszIRL[ 617]= 3
IRLcoordsx[ 618]= 19; IRLcoordsy[ 618]= 26; IRLcoordsxIRL[ 618]=-5; IRLcoordsyIRL[ 618]= 22; IRLcoordszIRL[ 618]= 3
IRLcoordsx[ 619]= 19; IRLcoordsy[ 619]= 27; IRLcoordsxIRL[ 619]=-5; IRLcoordsyIRL[ 619]= 21; IRLcoordszIRL[ 619]= 3
IRLcoordsx[ 620]= 19; IRLcoordsy[ 620]= 28; IRLcoordsxIRL[ 620]=-5; IRLcoordsyIRL[ 620]= 20; IRLcoordszIRL[ 620]= 3
IRLcoordsx[ 621]= 19; IRLcoordsy[ 621]= 29; IRLcoordsxIRL[ 621]=-5; IRLcoordsyIRL[ 621]= 19; IRLcoordszIRL[ 621]= 3
IRLcoordsx[ 622]= 19; IRLcoordsy[ 622]= 30; IRLcoordsxIRL[ 622]=-5; IRLcoordsyIRL[ 622]= 18; IRLcoordszIRL[ 622]= 3
IRLcoordsx[ 623]= 19; IRLcoordsy[ 623]= 31; IRLcoordsxIRL[ 623]=-5; IRLcoordsyIRL[ 623]= 17; IRLcoordszIRL[ 623]= 3
IRLcoordsx[ 624]= 28; IRLcoordsy[ 624]= 20; IRLcoordsxIRL[ 624]=-14; IRLcoordsyIRL[ 624]= 28; IRLcoordszIRL[ 624]= 4
IRLcoordsx[ 625]= 28; IRLcoordsy[ 625]= 21; IRLcoordsxIRL[ 625]=-14; IRLcoordsyIRL[ 625]= 27; IRLcoordszIRL[ 625]= 4
IRLcoordsx[ 626]= 28; IRLcoordsy[ 626]= 22; IRLcoordsxIRL[ 626]=-14; IRLcoordsyIRL[ 626]= 26; IRLcoordszIRL[ 626]= 4
IRLcoordsx[ 627]= 28; IRLcoordsy[ 627]= 23; IRLcoordsxIRL[ 627]=-14; IRLcoordsyIRL[ 627]= 25; IRLcoordszIRL[ 627]= 4
IRLcoordsx[ 628]= 28; IRLcoordsy[ 628]= 24; IRLcoordsxIRL[ 628]=-14; IRLcoordsyIRL[ 628]= 24; IRLcoordszIRL[ 628]= 4
IRLcoordsx[ 629]= 28; IRLcoordsy[ 629]= 25; IRLcoordsxIRL[ 629]=-14; IRLcoordsyIRL[ 629]= 23; IRLcoordszIRL[ 629]= 4
IRLcoordsx[ 630]= 28; IRLcoordsy[ 630]= 26; IRLcoordsxIRL[ 630]=-14; IRLcoordsyIRL[ 630]= 22; IRLcoordszIRL[ 630]= 4
IRLcoordsx[ 631]= 28; IRLcoordsy[ 631]= 27; IRLcoordsxIRL[ 631]=-14; IRLcoordsyIRL[ 631]= 21; IRLcoordszIRL[ 631]= 4
IRLcoordsx[ 632]= 28; IRLcoordsy[ 632]= 28; IRLcoordsxIRL[ 632]=-14; IRLcoordsyIRL[ 632]= 20; IRLcoordszIRL[ 632]= 4
IRLcoordsx[ 633]= 28; IRLcoordsy[ 633]= 29; IRLcoordsxIRL[ 633]=-14; IRLcoordsyIRL[ 633]= 19; IRLcoordszIRL[ 633]= 4
IRLcoordsx[ 634]= 28; IRLcoordsy[ 634]= 30; IRLcoordsxIRL[ 634]=-14; IRLcoordsyIRL[ 634]= 18; IRLcoordszIRL[ 634]= 4
IRLcoordsx[ 635]= 28; IRLcoordsy[ 635]= 31; IRLcoordsxIRL[ 635]=-14; IRLcoordsyIRL[ 635]= 17; IRLcoordszIRL[ 635]= 4
IRLcoordsx[ 636]= 29; IRLcoordsy[ 636]= 20; IRLcoordsxIRL[ 636]=-14; IRLcoordsyIRL[ 636]= 28; IRLcoordszIRL[ 636]= 3
IRLcoordsx[ 637]= 29; IRLcoordsy[ 637]= 21; IRLcoordsxIRL[ 637]=-14; IRLcoordsyIRL[ 637]= 27; IRLcoordszIRL[ 637]= 3
IRLcoordsx[ 638]= 29; IRLcoordsy[ 638]= 22; IRLcoordsxIRL[ 638]=-14; IRLcoordsyIRL[ 638]= 26; IRLcoordszIRL[ 638]= 3
IRLcoordsx[ 639]= 29; IRLcoordsy[ 639]= 23; IRLcoordsxIRL[ 639]=-14; IRLcoordsyIRL[ 639]= 25; IRLcoordszIRL[ 639]= 3
IRLcoordsx[ 640]= 29; IRLcoordsy[ 640]= 24; IRLcoordsxIRL[ 640]=-14; IRLcoordsyIRL[ 640]= 24; IRLcoordszIRL[ 640]= 3
IRLcoordsx[ 641]= 29; IRLcoordsy[ 641]= 25; IRLcoordsxIRL[ 641]=-14; IRLcoordsyIRL[ 641]= 23; IRLcoordszIRL[ 641]= 3
IRLcoordsx[ 642]= 29; IRLcoordsy[ 642]= 26; IRLcoordsxIRL[ 642]=-14; IRLcoordsyIRL[ 642]= 22; IRLcoordszIRL[ 642]= 3
IRLcoordsx[ 643]= 29; IRLcoordsy[ 643]= 27; IRLcoordsxIRL[ 643]=-14; IRLcoordsyIRL[ 643]= 21; IRLcoordszIRL[ 643]= 3
IRLcoordsx[ 644]= 29; IRLcoordsy[ 644]= 28; IRLcoordsxIRL[ 644]=-14; IRLcoordsyIRL[ 644]= 20; IRLcoordszIRL[ 644]= 3
IRLcoordsx[ 645]= 29; IRLcoordsy[ 645]= 29; IRLcoordsxIRL[ 645]=-14; IRLcoordsyIRL[ 645]= 19; IRLcoordszIRL[ 645]= 3
IRLcoordsx[ 646]= 29; IRLcoordsy[ 646]= 30; IRLcoordsxIRL[ 646]=-14; IRLcoordsyIRL[ 646]= 18; IRLcoordszIRL[ 646]= 3
IRLcoordsx[ 647]= 29; IRLcoordsy[ 647]= 31; IRLcoordsxIRL[ 647]=-14; IRLcoordsyIRL[ 647]= 17; IRLcoordszIRL[ 647]= 3
IRLcoordsx[ 648]= 30; IRLcoordsy[ 648]= 20; IRLcoordsxIRL[ 648]=-14; IRLcoordsyIRL[ 648]= 28; IRLcoordszIRL[ 648]= 2
IRLcoordsx[ 649]= 30; IRLcoordsy[ 649]= 21; IRLcoordsxIRL[ 649]=-14; IRLcoordsyIRL[ 649]= 27; IRLcoordszIRL[ 649]= 2
IRLcoordsx[ 650]= 30; IRLcoordsy[ 650]= 22; IRLcoordsxIRL[ 650]=-14; IRLcoordsyIRL[ 650]= 26; IRLcoordszIRL[ 650]= 2
IRLcoordsx[ 651]= 30; IRLcoordsy[ 651]= 23; IRLcoordsxIRL[ 651]=-14; IRLcoordsyIRL[ 651]= 25; IRLcoordszIRL[ 651]= 2
IRLcoordsx[ 652]= 30; IRLcoordsy[ 652]= 24; IRLcoordsxIRL[ 652]=-14; IRLcoordsyIRL[ 652]= 24; IRLcoordszIRL[ 652]= 2
IRLcoordsx[ 653]= 30; IRLcoordsy[ 653]= 25; IRLcoordsxIRL[ 653]=-14; IRLcoordsyIRL[ 653]= 23; IRLcoordszIRL[ 653]= 2
IRLcoordsx[ 654]= 30; IRLcoordsy[ 654]= 26; IRLcoordsxIRL[ 654]=-14; IRLcoordsyIRL[ 654]= 22; IRLcoordszIRL[ 654]= 2
IRLcoordsx[ 655]= 30; IRLcoordsy[ 655]= 27; IRLcoordsxIRL[ 655]=-14; IRLcoordsyIRL[ 655]= 21; IRLcoordszIRL[ 655]= 2
IRLcoordsx[ 656]= 30; IRLcoordsy[ 656]= 28; IRLcoordsxIRL[ 656]=-14; IRLcoordsyIRL[ 656]= 20; IRLcoordszIRL[ 656]= 2
IRLcoordsx[ 657]= 30; IRLcoordsy[ 657]= 29; IRLcoordsxIRL[ 657]=-14; IRLcoordsyIRL[ 657]= 19; IRLcoordszIRL[ 657]= 2
IRLcoordsx[ 658]= 30; IRLcoordsy[ 658]= 30; IRLcoordsxIRL[ 658]=-14; IRLcoordsyIRL[ 658]= 18; IRLcoordszIRL[ 658]= 2
IRLcoordsx[ 659]= 30; IRLcoordsy[ 659]= 31; IRLcoordsxIRL[ 659]=-14; IRLcoordsyIRL[ 659]= 17; IRLcoordszIRL[ 659]= 2
IRLcoordsx[ 660]= 31; IRLcoordsy[ 660]= 20; IRLcoordsxIRL[ 660]=-14; IRLcoordsyIRL[ 660]= 28; IRLcoordszIRL[ 660]= 1
IRLcoordsx[ 661]= 31; IRLcoordsy[ 661]= 21; IRLcoordsxIRL[ 661]=-14; IRLcoordsyIRL[ 661]= 27; IRLcoordszIRL[ 661]= 1
IRLcoordsx[ 662]= 31; IRLcoordsy[ 662]= 22; IRLcoordsxIRL[ 662]=-14; IRLcoordsyIRL[ 662]= 26; IRLcoordszIRL[ 662]= 1
IRLcoordsx[ 663]= 31; IRLcoordsy[ 663]= 23; IRLcoordsxIRL[ 663]=-14; IRLcoordsyIRL[ 663]= 25; IRLcoordszIRL[ 663]= 1
IRLcoordsx[ 664]= 31; IRLcoordsy[ 664]= 24; IRLcoordsxIRL[ 664]=-14; IRLcoordsyIRL[ 664]= 24; IRLcoordszIRL[ 664]= 1
IRLcoordsx[ 665]= 31; IRLcoordsy[ 665]= 25; IRLcoordsxIRL[ 665]=-14; IRLcoordsyIRL[ 665]= 23; IRLcoordszIRL[ 665]= 1
IRLcoordsx[ 666]= 31; IRLcoordsy[ 666]= 26; IRLcoordsxIRL[ 666]=-14; IRLcoordsyIRL[ 666]= 22; IRLcoordszIRL[ 666]= 1
IRLcoordsx[ 667]= 31; IRLcoordsy[ 667]= 27; IRLcoordsxIRL[ 667]=-14; IRLcoordsyIRL[ 667]= 21; IRLcoordszIRL[ 667]= 1
IRLcoordsx[ 668]= 31; IRLcoordsy[ 668]= 28; IRLcoordsxIRL[ 668]=-14; IRLcoordsyIRL[ 668]= 20; IRLcoordszIRL[ 668]= 1
IRLcoordsx[ 669]= 31; IRLcoordsy[ 669]= 29; IRLcoordsxIRL[ 669]=-14; IRLcoordsyIRL[ 669]= 19; IRLcoordszIRL[ 669]= 1
IRLcoordsx[ 670]= 31; IRLcoordsy[ 670]= 30; IRLcoordsxIRL[ 670]=-14; IRLcoordsyIRL[ 670]= 18; IRLcoordszIRL[ 670]= 1
IRLcoordsx[ 671]= 31; IRLcoordsy[ 671]= 31; IRLcoordsxIRL[ 671]=-14; IRLcoordsyIRL[ 671]= 17; IRLcoordszIRL[ 671]= 1
IRLcoordsx[ 672]= 20; IRLcoordsy[ 672]= 16; IRLcoordsxIRL[ 672]=-13; IRLcoordsyIRL[ 672]= 29; IRLcoordszIRL[ 672]= 0
IRLcoordsx[ 673]= 20; IRLcoordsy[ 673]= 17; IRLcoordsxIRL[ 673]=-13; IRLcoordsyIRL[ 673]= 29; IRLcoordszIRL[ 673]= 1
IRLcoordsx[ 674]= 20; IRLcoordsy[ 674]= 18; IRLcoordsxIRL[ 674]=-13; IRLcoordsyIRL[ 674]= 29; IRLcoordszIRL[ 674]= 2
IRLcoordsx[ 675]= 20; IRLcoordsy[ 675]= 19; IRLcoordsxIRL[ 675]=-13; IRLcoordsyIRL[ 675]= 29; IRLcoordszIRL[ 675]= 3
IRLcoordsx[ 676]= 21; IRLcoordsy[ 676]= 16; IRLcoordsxIRL[ 676]=-12; IRLcoordsyIRL[ 676]= 29; IRLcoordszIRL[ 676]= 0
IRLcoordsx[ 677]= 21; IRLcoordsy[ 677]= 17; IRLcoordsxIRL[ 677]=-12; IRLcoordsyIRL[ 677]= 29; IRLcoordszIRL[ 677]= 1
IRLcoordsx[ 678]= 21; IRLcoordsy[ 678]= 18; IRLcoordsxIRL[ 678]=-12; IRLcoordsyIRL[ 678]= 29; IRLcoordszIRL[ 678]= 2
IRLcoordsx[ 679]= 21; IRLcoordsy[ 679]= 19; IRLcoordsxIRL[ 679]=-12; IRLcoordsyIRL[ 679]= 29; IRLcoordszIRL[ 679]= 3
IRLcoordsx[ 680]= 22; IRLcoordsy[ 680]= 16; IRLcoordsxIRL[ 680]=-11; IRLcoordsyIRL[ 680]= 29; IRLcoordszIRL[ 680]= 0
IRLcoordsx[ 681]= 22; IRLcoordsy[ 681]= 17; IRLcoordsxIRL[ 681]=-11; IRLcoordsyIRL[ 681]= 29; IRLcoordszIRL[ 681]= 1
IRLcoordsx[ 682]= 22; IRLcoordsy[ 682]= 18; IRLcoordsxIRL[ 682]=-11; IRLcoordsyIRL[ 682]= 29; IRLcoordszIRL[ 682]= 2
IRLcoordsx[ 683]= 22; IRLcoordsy[ 683]= 19; IRLcoordsxIRL[ 683]=-11; IRLcoordsyIRL[ 683]= 29; IRLcoordszIRL[ 683]= 3
IRLcoordsx[ 684]= 23; IRLcoordsy[ 684]= 16; IRLcoordsxIRL[ 684]=-10; IRLcoordsyIRL[ 684]= 29; IRLcoordszIRL[ 684]= 0
IRLcoordsx[ 685]= 23; IRLcoordsy[ 685]= 17; IRLcoordsxIRL[ 685]=-10; IRLcoordsyIRL[ 685]= 29; IRLcoordszIRL[ 685]= 1
IRLcoordsx[ 686]= 23; IRLcoordsy[ 686]= 18; IRLcoordsxIRL[ 686]=-10; IRLcoordsyIRL[ 686]= 29; IRLcoordszIRL[ 686]= 2
IRLcoordsx[ 687]= 23; IRLcoordsy[ 687]= 19; IRLcoordsxIRL[ 687]=-10; IRLcoordsyIRL[ 687]= 29; IRLcoordszIRL[ 687]= 3
IRLcoordsx[ 688]= 24; IRLcoordsy[ 688]= 16; IRLcoordsxIRL[ 688]=-9; IRLcoordsyIRL[ 688]= 29; IRLcoordszIRL[ 688]= 0
IRLcoordsx[ 689]= 24; IRLcoordsy[ 689]= 17; IRLcoordsxIRL[ 689]=-9; IRLcoordsyIRL[ 689]= 29; IRLcoordszIRL[ 689]= 1
IRLcoordsx[ 690]= 24; IRLcoordsy[ 690]= 18; IRLcoordsxIRL[ 690]=-9; IRLcoordsyIRL[ 690]= 29; IRLcoordszIRL[ 690]= 2
IRLcoordsx[ 691]= 24; IRLcoordsy[ 691]= 19; IRLcoordsxIRL[ 691]=-9; IRLcoordsyIRL[ 691]= 29; IRLcoordszIRL[ 691]= 3
IRLcoordsx[ 692]= 25; IRLcoordsy[ 692]= 16; IRLcoordsxIRL[ 692]=-8; IRLcoordsyIRL[ 692]= 29; IRLcoordszIRL[ 692]= 0
IRLcoordsx[ 693]= 25; IRLcoordsy[ 693]= 17; IRLcoordsxIRL[ 693]=-8; IRLcoordsyIRL[ 693]= 29; IRLcoordszIRL[ 693]= 1
IRLcoordsx[ 694]= 25; IRLcoordsy[ 694]= 18; IRLcoordsxIRL[ 694]=-8; IRLcoordsyIRL[ 694]= 29; IRLcoordszIRL[ 694]= 2
IRLcoordsx[ 695]= 25; IRLcoordsy[ 695]= 19; IRLcoordsxIRL[ 695]=-8; IRLcoordsyIRL[ 695]= 29; IRLcoordszIRL[ 695]= 3
IRLcoordsx[ 696]= 26; IRLcoordsy[ 696]= 16; IRLcoordsxIRL[ 696]=-7; IRLcoordsyIRL[ 696]= 29; IRLcoordszIRL[ 696]= 0
IRLcoordsx[ 697]= 26; IRLcoordsy[ 697]= 17; IRLcoordsxIRL[ 697]=-7; IRLcoordsyIRL[ 697]= 29; IRLcoordszIRL[ 697]= 1
IRLcoordsx[ 698]= 26; IRLcoordsy[ 698]= 18; IRLcoordsxIRL[ 698]=-7; IRLcoordsyIRL[ 698]= 29; IRLcoordszIRL[ 698]= 2
IRLcoordsx[ 699]= 26; IRLcoordsy[ 699]= 19; IRLcoordsxIRL[ 699]=-7; IRLcoordsyIRL[ 699]= 29; IRLcoordszIRL[ 699]= 3
IRLcoordsx[ 700]= 27; IRLcoordsy[ 700]= 16; IRLcoordsxIRL[ 700]=-6; IRLcoordsyIRL[ 700]= 29; IRLcoordszIRL[ 700]= 0
IRLcoordsx[ 701]= 27; IRLcoordsy[ 701]= 17; IRLcoordsxIRL[ 701]=-6; IRLcoordsyIRL[ 701]= 29; IRLcoordszIRL[ 701]= 1
IRLcoordsx[ 702]= 27; IRLcoordsy[ 702]= 18; IRLcoordsxIRL[ 702]=-6; IRLcoordsyIRL[ 702]= 29; IRLcoordszIRL[ 702]= 2
IRLcoordsx[ 703]= 27; IRLcoordsy[ 703]= 19; IRLcoordsxIRL[ 703]=-6; IRLcoordsyIRL[ 703]= 29; IRLcoordszIRL[ 703]= 3
IRLcoordsx[ 704]= 28; IRLcoordsy[ 704]= 16; IRLcoordsxIRL[ 704]=-13; IRLcoordsyIRL[ 704]= 16; IRLcoordszIRL[ 704]= 0
IRLcoordsx[ 705]= 28; IRLcoordsy[ 705]= 17; IRLcoordsxIRL[ 705]=-13; IRLcoordsyIRL[ 705]= 16; IRLcoordszIRL[ 705]= 1
IRLcoordsx[ 706]= 28; IRLcoordsy[ 706]= 18; IRLcoordsxIRL[ 706]=-13; IRLcoordsyIRL[ 706]= 16; IRLcoordszIRL[ 706]= 2
IRLcoordsx[ 707]= 28; IRLcoordsy[ 707]= 19; IRLcoordsxIRL[ 707]=-13; IRLcoordsyIRL[ 707]= 16; IRLcoordszIRL[ 707]= 3
IRLcoordsx[ 708]= 29; IRLcoordsy[ 708]= 16; IRLcoordsxIRL[ 708]=-12; IRLcoordsyIRL[ 708]= 16; IRLcoordszIRL[ 708]= 0
IRLcoordsx[ 709]= 29; IRLcoordsy[ 709]= 17; IRLcoordsxIRL[ 709]=-12; IRLcoordsyIRL[ 709]= 16; IRLcoordszIRL[ 709]= 1
IRLcoordsx[ 710]= 29; IRLcoordsy[ 710]= 18; IRLcoordsxIRL[ 710]=-12; IRLcoordsyIRL[ 710]= 16; IRLcoordszIRL[ 710]= 2
IRLcoordsx[ 711]= 29; IRLcoordsy[ 711]= 19; IRLcoordsxIRL[ 711]=-12; IRLcoordsyIRL[ 711]= 16; IRLcoordszIRL[ 711]= 3
IRLcoordsx[ 712]= 30; IRLcoordsy[ 712]= 16; IRLcoordsxIRL[ 712]=-11; IRLcoordsyIRL[ 712]= 16; IRLcoordszIRL[ 712]= 0
IRLcoordsx[ 713]= 30; IRLcoordsy[ 713]= 17; IRLcoordsxIRL[ 713]=-11; IRLcoordsyIRL[ 713]= 16; IRLcoordszIRL[ 713]= 1
IRLcoordsx[ 714]= 30; IRLcoordsy[ 714]= 18; IRLcoordsxIRL[ 714]=-11; IRLcoordsyIRL[ 714]= 16; IRLcoordszIRL[ 714]= 2
IRLcoordsx[ 715]= 30; IRLcoordsy[ 715]= 19; IRLcoordsxIRL[ 715]=-11; IRLcoordsyIRL[ 715]= 16; IRLcoordszIRL[ 715]= 3
IRLcoordsx[ 716]= 31; IRLcoordsy[ 716]= 16; IRLcoordsxIRL[ 716]=-10; IRLcoordsyIRL[ 716]= 16; IRLcoordszIRL[ 716]= 0
IRLcoordsx[ 717]= 31; IRLcoordsy[ 717]= 17; IRLcoordsxIRL[ 717]=-10; IRLcoordsyIRL[ 717]= 16; IRLcoordszIRL[ 717]= 1
IRLcoordsx[ 718]= 31; IRLcoordsy[ 718]= 18; IRLcoordsxIRL[ 718]=-10; IRLcoordsyIRL[ 718]= 16; IRLcoordszIRL[ 718]= 2
IRLcoordsx[ 719]= 31; IRLcoordsy[ 719]= 19; IRLcoordsxIRL[ 719]=-10; IRLcoordsyIRL[ 719]= 16; IRLcoordszIRL[ 719]= 3
IRLcoordsx[ 720]= 32; IRLcoordsy[ 720]= 16; IRLcoordsxIRL[ 720]=-9; IRLcoordsyIRL[ 720]= 16; IRLcoordszIRL[ 720]= 0
IRLcoordsx[ 721]= 32; IRLcoordsy[ 721]= 17; IRLcoordsxIRL[ 721]=-9; IRLcoordsyIRL[ 721]= 16; IRLcoordszIRL[ 721]= 1
IRLcoordsx[ 722]= 32; IRLcoordsy[ 722]= 18; IRLcoordsxIRL[ 722]=-9; IRLcoordsyIRL[ 722]= 16; IRLcoordszIRL[ 722]= 2
IRLcoordsx[ 723]= 32; IRLcoordsy[ 723]= 19; IRLcoordsxIRL[ 723]=-9; IRLcoordsyIRL[ 723]= 16; IRLcoordszIRL[ 723]= 3
IRLcoordsx[ 724]= 33; IRLcoordsy[ 724]= 16; IRLcoordsxIRL[ 724]=-8; IRLcoordsyIRL[ 724]= 16; IRLcoordszIRL[ 724]= 0
IRLcoordsx[ 725]= 33; IRLcoordsy[ 725]= 17; IRLcoordsxIRL[ 725]=-8; IRLcoordsyIRL[ 725]= 16; IRLcoordszIRL[ 725]= 1
IRLcoordsx[ 726]= 33; IRLcoordsy[ 726]= 18; IRLcoordsxIRL[ 726]=-8; IRLcoordsyIRL[ 726]= 16; IRLcoordszIRL[ 726]= 2
IRLcoordsx[ 727]= 33; IRLcoordsy[ 727]= 19; IRLcoordsxIRL[ 727]=-8; IRLcoordsyIRL[ 727]= 16; IRLcoordszIRL[ 727]= 3
IRLcoordsx[ 728]= 34; IRLcoordsy[ 728]= 16; IRLcoordsxIRL[ 728]=-7; IRLcoordsyIRL[ 728]= 16; IRLcoordszIRL[ 728]= 0
IRLcoordsx[ 729]= 34; IRLcoordsy[ 729]= 17; IRLcoordsxIRL[ 729]=-7; IRLcoordsyIRL[ 729]= 16; IRLcoordszIRL[ 729]= 1
IRLcoordsx[ 730]= 34; IRLcoordsy[ 730]= 18; IRLcoordsxIRL[ 730]=-7; IRLcoordsyIRL[ 730]= 16; IRLcoordszIRL[ 730]= 2
IRLcoordsx[ 731]= 34; IRLcoordsy[ 731]= 19; IRLcoordsxIRL[ 731]=-7; IRLcoordsyIRL[ 731]= 16; IRLcoordszIRL[ 731]= 3
IRLcoordsx[ 732]= 35; IRLcoordsy[ 732]= 16; IRLcoordsxIRL[ 732]=-6; IRLcoordsyIRL[ 732]= 16; IRLcoordszIRL[ 732]= 0
IRLcoordsx[ 733]= 35; IRLcoordsy[ 733]= 17; IRLcoordsxIRL[ 733]=-6; IRLcoordsyIRL[ 733]= 16; IRLcoordszIRL[ 733]= 1
IRLcoordsx[ 734]= 35; IRLcoordsy[ 734]= 18; IRLcoordsxIRL[ 734]=-6; IRLcoordsyIRL[ 734]= 16; IRLcoordszIRL[ 734]= 2
IRLcoordsx[ 735]= 35; IRLcoordsy[ 735]= 19; IRLcoordsxIRL[ 735]=-6; IRLcoordsyIRL[ 735]= 16; IRLcoordszIRL[ 735]= 3






registerCommand("myFace",function()
    -- mySkin = player.skin().texture()
    mySkin = gfx2.loadImage("mySkin2.png")
    for i = 0, 735 do
        curColour = mySkin:getPixel(IRLcoordsx[i]+1,IRLcoordsy[i]+1)
        print(curColour)
        curColourBlock = RGBtoBlock(curColour.r,curColour.g,curColour.b)
        client.execute("execute setblock "..IRLcoordsxIRL[i] .. " " .. IRLcoordsyIRL[i] .. " " .. IRLcoordszIRL[i] .. " " .. curColourBlock)
    end
end)
hit = 0

registerCommand("updateFace",function()
    
    yourSkin2 = gfx2.loadImage("mySkin2.png")
    for i = 0, 735 do
        curColourBlock = dimension.getBlock(IRLcoordsxIRL[i],IRLcoordsyIRL[i],IRLcoordszIRL[i])
        --print(curColourBlock.name)
        curColourR, curColourG, curColourB = blockToRGB("minecraft:" .. curColourBlock.name)
        --print(curColourR,curColourG,curColourB)
        -- player.skin().save("mySkin2.png")
        
        yourSkin2:setPixel(IRLcoordsx[i]+1,IRLcoordsy[i]+1,curColourR,curColourG,curColourB) -- apparently i dont know how this works (was that what i was meant to comment... good)

       
        -- player.skin().setSkin("mySkin.png")
        --print("hi")
    end
    yourSkin2:save("mySkin2.png") 
end)
    

