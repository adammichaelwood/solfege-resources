
% BWV 328 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 328"
composer = "Johann Sebastien Bach"
tagline = "Created by Michael Ellis from digital transcriptions by Margaret Greentree (jsbchorales.net)"
}
ASvoiceAA = \relative c'{
    \set Staff.instrumentName = #"Soprano"
    \set Staff.shortInstrumentName = #"S."
    \clef treble
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    e4     g a c a      | % 1
    a2\fermata  r4 c      | % 2
    c b a a      | % 3
    g2.\fermata  c4      | % 4
    c c b a 
    \bar "||"     | % 5
    b4 a a\fermata  a      | % 6
    a g a b      | % 7
    c a g\fermata  c      | % 8
    c c b a      | % 9
    b a a\fermata  a      | % 10
    a g a b      | % 11
    c a g\fermata  c      | % 12
    c c b a      | % 13
    b a a\fermata  a      | % 14
    a g a b      | % 15
    c a g\fermata  e      | % 16
    g a b b 
    \bar "||"     | % 17
    a2.\fermata  e4      | % 18
    g a b b      | % 19
    a2.\fermata  b4      | % 20
    b c8 d e4 a, 
    \bar "||"     | % 21
    a4 g a b      | % 22
    c a g c      | % 23
    c c b a 
    \bar "||"     | % 24
    b4 a a\fermata  a      | % 25
    a g a b      | % 26
    c a g\fermata  c      | % 27
    c c b a      | % 28
    b a a\fermata  a      | % 29
    a g a b      | % 30
    c a g\fermata  c      | % 31
    c c b a      | % 32
    b a a\fermata  a      | % 33
    a g a b      | % 34
    c a g\fermata  c      | % 35
    c c b a      | % 36
    b a a\fermata  a      | % 37
    a g a b      | % 38
    c a g\fermata  c      | % 39
    c c b a      | % 40
    b a a\fermata  a      | % 41
    a g a b      | % 42
    c a g\fermata  c      | % 43
    c c b a      | % 44
    b a a\fermata  a      | % 45
    a g a b      | % 46
    c a g\fermata  a      | % 47
    a a g b 
    \bar "||"     | % 48
    b4 a a\fermata  a      | % 49
    a g a8 b c4      | % 50
    g g e\fermata  a      | % 51
    a a g b      | % 52
    b a a\fermata  a      | % 53
    a g a8 b c4      | % 54
    g g e\fermata  a      | % 55
    a a g b      | % 56
    b a a\fermata  a      | % 57
    a g a8 b c4      | % 58
    g g e\fermata  a      | % 59
    a a g b      | % 60
    b a a\fermata  a      | % 61
    a g a8 b c4      | % 62
    g g e\fermata  a      | % 63
    a a g b      | % 64
    b a a\fermata  a      | % 65
    a g a8 b c4      | % 66
    g g e\fermata  a      | % 67
    a a g b      | % 68
    b a a\fermata  a      | % 69
    a g a8 b c4      | % 70
    g g e\fermata  f      | % 71
    d f e d 
    \bar "||"     | % 72
    e4 fis g\fermata  g      | % 73
    g g a4. f8      | % 74
    g4 f e\fermata  c      | % 75
    d f e d      | % 76
    f d c\fermata  g'      | % 77
    g g a4. f8      | % 78
    g4 f e\fermata  f      | % 79
    f f e d      | % 80
    f d c\fermata  g'      | % 81
    g g a4. f8      | % 82
    g4 f e\fermata  e8 f      | % 83
    g4 a a a      | % 84
    c a a\fermata  a      | % 85
    a g a8 b c4      | % 86
    g g e\fermata  a      | % 87
    a a g b 
    \bar "||"     | % 88
    b4 b a\fermata  a      | % 89
    a g a c      | % 90
    g g e\fermata  a      | % 91
    a a g b      | % 92
    b b a\fermata  a      | % 93
    a g a c      | % 94
    g g e\fermata  a      | % 95
    a a g b      | % 96
    b b a\fermata  a      | % 97
    a g a c      | % 98
    g g e\fermata  f8 e      | % 99
    d4 f g a 
    \bar "||"     | % 100
    g4 f e\fermata  f      | % 101
    f g a g8 f      | % 102
    g4 f e\fermata  g      | % 103
    e c d2      | % 104
    e1~      | % 105
    e\fermata  \bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    b4     e f~ f8 e d4      | % 1
    c2 r4 e8 fis      | % 2
    g a~ a g~ g fis16 e fis4      | % 3
    d2. g4~      | % 4
    g8 fis16 e fis8 a~ a g16 fis e8 d 
    \bar "||"     | % 5
    d8 g4 fis16 e fis4 e8 g~      | % 6
    g f~ f e16 d c4 d16 e f8      | % 7
    e16 fis g4 fis8 d4 g~      | % 8
    g8 fis16 e fis8 a~ a g16 fis e8 d      | % 9
    d g4 fis16 e fis4 e8 g~      | % 10
    g f~ f e16 d c4 d16 e f8      | % 11
    e16 fis g4 fis8 d4 g~      | % 12
    g8 fis16 e fis8 a~ a g16 fis e8 d      | % 13
    d g4 fis16 e fis4 e8 g~      | % 14
    g f~ f e16 d c4 d16 e f8      | % 15
    e16 fis g4 fis8 d4 c      | % 16
    d e8 d16 c f e d4 e16 d 
    \bar "||"     | % 17
    c2. c4      | % 18
    d e8 d16 c f e d4 e16 d      | % 19
    c2. g'8 a      | % 20
    g4 g g~ g8 f16 e 
    \bar "||"     | % 21
    f4. e16 d c8 d16 e f4      | % 22
    e16 fis g4 fis8 d4 g8 f      | % 23
    e fis g a~ a g~ g fis 
    \bar "||"     | % 24
    g8 fis e4 fis d      | % 25
    c16 a d8~ d c~ c d16 c b8 d      | % 26
    g4. fis8 d4 g8 f      | % 27
    e fis g a~ a g~ g fis      | % 28
    g fis e4 fis d      | % 29
    c16 a d8~ d c~ c d16 c b8 d      | % 30
    g4. fis8 d4 g8 f      | % 31
    e fis g a~ a g~ g fis      | % 32
    g fis e4 fis d      | % 33
    c16 a d8~ d c~ c d16 c b8 d      | % 34
    g4. fis8 d4 g8 f      | % 35
    e fis g a~ a g~ g fis      | % 36
    g fis e4 fis d      | % 37
    c16 a d8~ d c~ c d16 c b8 d      | % 38
    g4. fis8 d4 g8 f      | % 39
    e fis g a~ a g~ g fis      | % 40
    g fis e4 fis d      | % 41
    c16 a d8~ d c~ c d16 c b8 d      | % 42
    g4. fis8 d4 g8 f      | % 43
    e fis g a~ a g~ g fis      | % 44
    g fis e4 fis d      | % 45
    c16 a d8~ d c~ c d16 c b8 d      | % 46
    g4. fis8 d4 f      | % 47
    e16 f g8~ g fis~ fis e16 fis g4 
    \bar "||"     | % 48
    g8 f g4~ g8 f c f16 e      | % 49
    f4. e8 f4 f~      | % 50
    f8 e d4 c f      | % 51
    e16 f g8~ g fis~ fis e16 fis g4      | % 52
    g8 f g4~ g8 f c f16 e      | % 53
    f4. e8 f4 f~      | % 54
    f8 e d4 c f      | % 55
    e16 f g8~ g fis~ fis e16 fis g4      | % 56
    g8 f g4~ g8 f c f16 e      | % 57
    f4. e8 f4 f~      | % 58
    f8 e d4 c f      | % 59
    e16 f g8~ g fis~ fis e16 fis g4      | % 60
    g8 f g4~ g8 f c f16 e      | % 61
    f4. e8 f4 f~      | % 62
    f8 e d4 c f      | % 63
    e16 f g8~ g fis~ fis e16 fis g4      | % 64
    g8 f g4~ g8 f c f16 e      | % 65
    f4. e8 f4 f~      | % 66
    f8 e d4 c f      | % 67
    e16 f g8~ g fis~ fis e16 fis g4      | % 68
    g8 f g4~ g8 f c f16 e      | % 69
    f4. e8 f4 f~      | % 70
    f8 e d4 c c~      | % 71
    c8 b c d~ d c d4~ 
    \bar "||"     | % 72
    d8 c16 b c8 b16 a b4 d      | % 73
    e8 f g e c f f16 e d cis      | % 74
    d8 a a d~ d cis a4      | % 75
    g c8 d~ d c~ c b      | % 76
    a16 b c4 b8 g4 c      | % 77
    c8 d e4~ e8 d16 cis d4~      | % 78
    d8 e~ e d~ d cis d4~      | % 79
    d8 c b d~ d c~ c b      | % 80
    c4. b8 g4 c      | % 81
    c8 d e d16 e f4 f      | % 82
    e4. d8 cis4 c      | % 83
    b8 c16 d e8 d c d16 e f4      | % 84
    e~ e16 d c b c4 e      | % 85
    e8 f g4 f g8 f      | % 86
    e4 d c e      | % 87
    f e8 d16 c b4 b8 c16 d 
    \bar "||"     | % 88
    e4~ e16 fis g8~ g fis f4      | % 89
    f c c c8 d      | % 90
    e4 e16 cis d8~ d cis e4      | % 91
    f e8 d16 c b4 b8 c16 d      | % 92
    e4~ e16 fis g8~ g fis f4      | % 93
    f c c c8 d      | % 94
    e4 e16 cis d8~ d cis e4      | % 95
    f e8 d16 c b4 b8 c16 d      | % 96
    e4~ e16 fis g8~ g fis f4      | % 97
    f c c c8 d      | % 98
    e4 e16 cis d8~ d cis d4      | % 99
    a8 bes16 c d4~ d8 e~ e d~ 
    \bar "||"     | % 100
    d8 cis d4 cis d      | % 101
    d~ d8 e f e d4      | % 102
    d d16 cis d8 cis4 d      | % 103
    c g a gis8 a      | % 104
    b c d4 c2~      | % 105
    c4 b8 a b2\fermata  \bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef "treble_8"
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    g'4     b d g,~ g8 f      | % 1
    e2 r4 c'8 d      | % 2
    e d d4 e16 d c4 d16 c      | % 3
    b2. e4~      | % 4
    e8 d16 c d4~ d c8 d16 c 
    \bar "||"     | % 5
    b8 e16 d cis4 d e      | % 6
    d4. c16 b a8 g f4      | % 7
    g8 e' d8. c16 b4 e~      | % 8
    e8 d16 c d4~ d c8 d16 c      | % 9
    b8 e16 d cis4 d e      | % 10
    d4. c16 b a8 g f4      | % 11
    g8 e' d8. c16 b4 e~      | % 12
    e8 d16 c d4~ d c8 d16 c      | % 13
    b8 e16 d cis4 d e      | % 14
    d4. c16 b a8 g f4      | % 15
    g8 e' d8. c16 b4 g~      | % 16
    g8 a16 b c8 a~ a gis16 fis gis4 
    \bar "||"     | % 17
    e2. g4~      | % 18
    g8 a16 b c8 a~ a gis16 fis gis4      | % 19
    e2. e'8 dis      | % 20
    e4 e d e8 a,~ 
    \bar "||"     | % 21
    a8 d16 c b8 c16 b a8 b16 c d4      | % 22
    g,8 e' d8. c16 b4 c      | % 23
    g~ g8 d' d4 d 
    \bar "||"     | % 24
    d4. cis8 d4 f,8 g      | % 25
    a f g4~ g8 fis d'4      | % 26
    c8 e d8. c16 b4 c      | % 27
    g~ g8 d' d4 d      | % 28
    d4. cis8 d4 f,8 g      | % 29
    a f g4~ g8 fis d'4      | % 30
    c8 e d8. c16 b4 c      | % 31
    g~ g8 d' d4 d      | % 32
    d4. cis8 d4 f,8 g      | % 33
    a f g4~ g8 fis d'4      | % 34
    c8 e d8. c16 b4 c      | % 35
    g~ g8 d' d4 d      | % 36
    d4. cis8 d4 f,8 g      | % 37
    a f g4~ g8 fis d'4      | % 38
    c8 e d8. c16 b4 c      | % 39
    g~ g8 d' d4 d      | % 40
    d4. cis8 d4 f,8 g      | % 41
    a f g4~ g8 fis d'4      | % 42
    c8 e d8. c16 b4 c      | % 43
    g~ g8 d' d4 d      | % 44
    d4. cis8 d4 f,8 g      | % 45
    a f g4~ g8 fis d'4      | % 46
    c8 e d8. c16 b4 d      | % 47
    a8 e'~ e d16 c b4 e 
    \bar "||"     | % 48
    d4 e d a8 bes      | % 49
    c4 c c c~      | % 50
    c4. b8 g4 d'      | % 51
    a8 e'~ e d16 c b4 e      | % 52
    d e d a8 bes      | % 53
    c4 c c c~      | % 54
    c4. b8 g4 d'      | % 55
    a8 e'~ e d16 c b4 e      | % 56
    d e d a8 bes      | % 57
    c4 c c c~      | % 58
    c4. b8 g4 d'      | % 59
    a8 e'~ e d16 c b4 e      | % 60
    d e d a8 bes      | % 61
    c4 c c c~      | % 62
    c4. b8 g4 d'      | % 63
    a8 e'~ e d16 c b4 e      | % 64
    d e d a8 bes      | % 65
    c4 c c c~      | % 66
    c4. b8 g4 d'      | % 67
    a8 e'~ e d16 c b4 e      | % 68
    d e d a8 bes      | % 69
    c4 c c c~      | % 70
    c4. b8 g4 a      | % 71
    g c,8 g' g4 g8 d 
    \bar "||"     | % 72
    a'4~ a8 d, d4 b'      | % 73
    c8 d e c a c d16 e f8      | % 74
    f e d a a4 e      | % 75
    d a'8 g g4 g      | % 76
    c,8 a' g8. f16 e4 e8 f      | % 77
    g4 c8 bes a f~ f g16 a      | % 78
    bes4 a a a      | % 79
    g g g g      | % 80
    f8 a g8. f16 e4 e8 f      | % 81
    g a bes4 c d8. c16      | % 82
    bes8 a a4 a a      | % 83
    g8 a16 b c8 b a b16 c d4      | % 84
    c16 b a g a8 f' e4 c8 d      | % 85
    e d~ d c~ c d g, a      | % 86
    b c4 b8 g4 c      | % 87
    d a8 f'~ f e16 d e8 a, 
    \bar "||"     | % 88
    g8 fis g4 d' c~      | % 89
    c8 bes bes4 a8 g f4      | % 90
    e8 g bes4 a c      | % 91
    d a8 f'~ f e16 d e8 a,      | % 92
    g fis g4 d' c~      | % 93
    c8 bes bes4 a8 g f4      | % 94
    e8 g bes4 a c      | % 95
    d a8 f'~ f e16 d e8 a,      | % 96
    g fis g4 d' c~      | % 97
    c8 bes bes4 a8 g f4      | % 98
    e8 g bes4 a a8 g      | % 99
    f4~ f8 g16 a bes8 c16 bes a8 f 
    \bar "||"     | % 100
    bes8 g a4 a a      | % 101
    bes bes c bes      | % 102
    bes a8 gis a4 g      | % 103
    g e f2      | % 104
    e4 b'~ b a~      | % 105
    a gis8 fis gis2 \bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    e,4     e' d c d      | % 1
    a2 r4 a'      | % 2
    e8 fis g4 c, d      | % 3
    g,2. e'4      | % 4
    a d,8 e16 fis g4. fis8 
    \bar "||"     | % 5
    g8 e a4 d, cis      | % 6
    d e f8 e d4      | % 7
    c d g, e'      | % 8
    a d,8 e16 fis g4. fis8      | % 9
    g e a4 d, cis      | % 10
    d e f8 e d4      | % 11
    c d g, e'      | % 12
    a d,8 e16 fis g4. fis8      | % 13
    g e a4 d, cis      | % 14
    d e f8 e d4      | % 15
    c d g, c      | % 16
    b a8 f' d b e4 
    \bar "||"     | % 17
    a,2. c4      | % 18
    b a8 f' d b e4      | % 19
    a,2. e'8 fis      | % 20
    g fis e4 b cis 
    \bar "||"     | % 21
    d4 e f8 e d4      | % 22
    c d g, e'8 d      | % 23
    c d e fis g4 d 
    \bar "||"     | % 24
    g,4 a d, d'8 e      | % 25
    f4 e d g8 f      | % 26
    e c d4 g, e'8 d      | % 27
    c d e fis g4 d      | % 28
    g, a d, d'8 e      | % 29
    f4 e d g8 f      | % 30
    e c d4 g, e'8 d      | % 31
    c d e fis g4 d      | % 32
    g, a d, d'8 e      | % 33
    f4 e d g8 f      | % 34
    e c d4 g, e'8 d      | % 35
    c d e fis g4 d      | % 36
    g, a d, d'8 e      | % 37
    f4 e d g8 f      | % 38
    e c d4 g, e'8 d      | % 39
    c d e fis g4 d      | % 40
    g, a d, d'8 e      | % 41
    f4 e d g8 f      | % 42
    e c d4 g, e'8 d      | % 43
    c d e fis g4 d      | % 44
    g, a d, d'8 e      | % 45
    f4 e d g8 f      | % 46
    e c d4 g, d'      | % 47
    cis d e4. fis8 
    \bar "||"     | % 48
    g4 cis, d f      | % 49
    a,8 bes c4 f,8 g a b      | % 50
    c4 g c d      | % 51
    cis d e4. fis8      | % 52
    g4 cis, d f      | % 53
    a,8 bes c4 f,8 g a b      | % 54
    c4 g c d      | % 55
    cis d e4. fis8      | % 56
    g4 cis, d f      | % 57
    a,8 bes c4 f,8 g a b      | % 58
    c4 g c d      | % 59
    cis d e4. fis8      | % 60
    g4 cis, d f      | % 61
    a,8 bes c4 f,8 g a b      | % 62
    c4 g c d      | % 63
    cis d e4. fis8      | % 64
    g4 cis, d f      | % 65
    a,8 bes c4 f,8 g a b      | % 66
    c4 g c d      | % 67
    cis d e4. fis8      | % 68
    g4 cis, d f      | % 69
    a,8 bes c4 f,8 g a b      | % 70
    c4 g c f,      | % 71
    g a8 b c4 b 
    \bar "||"     | % 72
    a4 d g, g'8 f      | % 73
    e d c4 f8 g16 a bes4~      | % 74
    bes8 cis, d4 a a      | % 75
    b a8 b c4 g      | % 76
    f g c c8 d      | % 77
    e4 c f, bes8 a      | % 78
    g4 d' a d8 c      | % 79
    b a g4 c g      | % 80
    a8 f g4 c, c'8 d      | % 81
    e f g4 f8 e d4      | % 82
    d8 cis d4 a a'      | % 83
    e8 d c4 f8 e d4      | % 84
    a'8 g f d a'4 a,8 b      | % 85
    c d e4. d8 e f      | % 86
    g f g g, c4 a      | % 87
    d c8 d e f g f 
    \bar "||"     | % 88
    e8 d cis4 d f8 e      | % 89
    d4 e f a,8 b      | % 90
    c4 g a a      | % 91
    d c8 d e f g f      | % 92
    e d cis4 d f8 e      | % 93
    d4 e f a,8 b      | % 94
    c4 g a a      | % 95
    d c8 d e f g f      | % 96
    e d cis4 d f8 e      | % 97
    d4 e f a,8 b      | % 98
    c4 g a d      | % 99
    d8 c bes a g4 f 
    \bar "||"     | % 100
    e4 d a' d8 c      | % 101
    bes a g4 f8 g16 a bes4~      | % 102
    bes8 g d'4 a b      | % 103
    c2. b8 a      | % 104
    gis4. e8 a b c d      | % 105
    e2 e, \bar "|." 
}% end of last bar in partorvoice



\addQuote "articulations"   { \ASvoiceAA }
\book {
\layout { \scorepaper }
\score {
<<
\part ASvoiceAA { \ASvoiceAA } { \transpose c c \ASvoiceAA }
\part AAvoiceBA { \AAvoiceBA } { \transpose c c \AAvoiceBA }
\part ATvoiceCA { \quotearticulations \ATvoiceCA \ASvoiceAA } { \transpose c c \ATvoiceCA }
\part ABvoiceDA { \quotearticulations \ABvoiceDA \ASvoiceAA } { \transpose c c \ABvoiceDA }
>>
}
\score {
<<
\new Voice = ASvoiceAA \ASvoiceAA
\new Voice = AAvoiceBA \AAvoiceBA
\new Voice = ATvoiceCA \ATvoiceCA
\new Voice = ABvoiceDA \ABvoiceDA
>>

        \midi   { 
        \context { \Staff  \remove "Staff_performer" }
        \context { \Voice  \consists "Staff_performer" }
        } 
   }
} %%end of book

#(define output-suffix "Soprano")
\book {
\layout { \partpaper }
\score {
<<
\part ASvoiceAA { \ASvoiceAA } { \transpose c c \ASvoiceAA }
>>
}
\score {
<<
\new Voice = ASvoiceAA \ASvoiceAA
>>

        \midi   { 
        \context { \Staff  \remove "Staff_performer" }
        \context { \Voice  \consists "Staff_performer" }
        } 
   }
} %%end of book
#(define output-suffix "Alto")
\book {
\layout { \partpaper }
\score {
<<
\part AAvoiceBA { \AAvoiceBA } { \transpose c c \AAvoiceBA }
>>
}
\score {
<<
\new Voice = AAvoiceBA \AAvoiceBA
>>

        \midi   { 
        \context { \Staff  \remove "Staff_performer" }
        \context { \Voice  \consists "Staff_performer" }
        } 
   }
} %%end of book
#(define output-suffix "Tenor")
\book {
\layout { \partpaper }
\score {
<<
\part ATvoiceCA { \quotearticulations \ATvoiceCA \ASvoiceAA } { \transpose c c \ATvoiceCA }
>>
}
\score {
<<
\new Voice = ATvoiceCA \ATvoiceCA
>>

        \midi   { 
        \context { \Staff  \remove "Staff_performer" }
        \context { \Voice  \consists "Staff_performer" }
        } 
   }
} %%end of book
#(define output-suffix "Bass")
\book {
\layout { \partpaper }
\score {
<<
\part ABvoiceDA { \quotearticulations \ABvoiceDA \ASvoiceAA } { \transpose c c \ABvoiceDA }
>>
}
\score {
<<
\new Voice = ABvoiceDA \ABvoiceDA
>>

        \midi   { 
        \context { \Staff  \remove "Staff_performer" }
        \context { \Voice  \consists "Staff_performer" }
        } 
   }
} %%end of book
