
% BWV 248 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 248"
composer = "Johann Sebastien Bach"
tagline = "Created by Michael Ellis from digital transcriptions by Margaret Greentree (jsbchorales.net)"
}
ATrvoiceAA = \relative c'{
    \set Staff.instrumentName = #"Trumpet 1"
    \set Staff.shortInstrumentName = #"Tr 1"
    \clef treble
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    s8 a'8     d16 e fis e d8 a a fis fis d      | % 1
    d a'' g fis fis e r a,      | % 2
    d16 e fis8~ fis16 g fis e fis e d8~ d16 a d e      | % 3
    fis d a'8 g fis fis e r a      | % 4
    fis16 fis g a fis fis g a fis8 b r16 a g fis      | % 5
    e e fis g e e fis g e8 a r16 g fis e      | % 6
    d d' cis b d, cis' b a d, b' a g d a' g fis      | % 7
    g8 e e a, a g' r a      | % 8
    g16 fis e d fis8 e d4~ d16 e32 fis g16 fis32 e      | % 9
    d4~ d16 e32 fis g16 fis32 e d16 e32 fis g16 fis32 e d16 e32 fis g16 fis32 e      | % 10
    d8 gis r16 b a gis a8 a, r g'      | % 11
    fis d' e, cis' d4 r      | % 12
    R1  | % 
    r4 r8 a16 g fis e d e fis g fis g      | % 14
    fis1~      | % 15
    fis2. r4      | % 16
    R1  | % 
    r2 r4 r8 a,      | % 18
    d16 e fis e d8 a a fis fis d      | % 19
    d a'' g fis fis e r a,      | % 20
    d16 e fis8~ fis16 g fis e fis e d8~ d16 a d e      | % 21
    fis d a'8 g fis fis e r a      | % 22
    fis16 fis g a fis fis g a fis8 b r16 a g fis      | % 23
    e e fis g e e fis g e8 a r16 g fis e      | % 24
    d d' cis b d, cis' b a d, b' a g d a' g fis      | % 25
    g8 e e a, a g' r a      | % 26
    g16 fis e d fis8 e d4~ d16 e32 fis g16 fis32 e      | % 27
    d4~ d16 e32 fis g16 fis32 e d16 e32 fis g16 fis32 e d16 e32 fis g16 fis32 e      | % 28
    d8 gis r16 b a gis a8 a, r g'      | % 29
    fis d' e, cis' d4 r      | % 30
    R1  | % 
    r4 r8 a16 g fis e d e fis g fis g      | % 32
    fis1~      | % 33
    fis2. r4      | % 34
    R1  | % 
    r2 r4 r8 a,      | % 36
    d16 e fis e d8 a a fis fis d      | % 37
    d a'' g fis fis e r a,      | % 38
    d16 e fis8~ fis16 g fis e fis e d8~ d16 a d e      | % 39
    fis d a'8 g fis fis e r4      | % 40
    r2 r4 r8 a      | % 41
    fis16 fis g a fis fis g a fis8 b r16 a g fis      | % 42
    e e fis g e e fis g e8 a r16 g fis e      | % 43
    d d' cis b d, cis' b a d, b' a g d a' g fis      | % 44
    g8 e e fis, fis fis fis fis      | % 45
    fis fis fis fis fis fis fis fis      | % 46
    fis fis16 fis fis8 fis fis4 r      | % 47
    r r8 b' e, r r4      | % 48
    R1  | % 
    r4 r8 gis a16 b cis b a8 e      | % 50
    e a a a, a e'16 e e8 e      | % 51
    e16 fis gis a b8 r r a16 b cis8 r      | % 52
    R1 *3  | % 
    r2 r4 r16 g fis e      | % 56
    d e fis e d8 a a fis fis d      | % 57
    d a'' g fis fis e r a,      | % 58
    d16 e fis8~ fis16 g fis e fis e d8~ d16 a d e      | % 59
    fis d a'8 g fis fis e r a      | % 60
    fis16 fis g a fis fis g a fis8 b r16 a g fis      | % 61
    e e fis g e e fis g e8 a r16 g fis e      | % 62
    d d' cis b d, cis' b a d, b' a g d a' g fis      | % 63
    g8 e e a, a g' r a      | % 64
    g16 fis e d fis8 e d4~ d16 e32 fis g16 fis32 e      | % 65
    d4~ d16 e32 fis g16 fis32 e d16 e32 fis g16 fis32 e d16 e32 fis g16 fis32 e      | % 66
    d8 gis r16 b a gis a8 a, r g'      | % 67
    fis d' e, cis' d4 s4 \bar "|." 
}% end of last bar in partorvoice

 

ATrvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Trumpet 2"
    \set Staff.shortInstrumentName = #"Tr 2"
    \clef treble
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    r8 s8     R1  | % 
    r8 fis' e d d a r4      | % 2
    R1  | % 
    r8 fis' e d d a r4      | % 4
    r2 r8 fis'16 e fis8 r      | % 5
    r2 r8 e16 d e8 r      | % 6
    R1  | % 
    r2 r8 e16 e e8 e      | % 8
    d fis b a16 g fis8 r r4      | % 9
    a8 r r4 r2      | % 10
    R1  | % 
    r8 fis b a a4 r      | % 12
    R1 *7  | % 
    r8 fis e d d a r4      | % 20
    R1  | % 
    r8 fis' e d d a r4      | % 22
    r2 r8 fis'16 e fis8 r      | % 23
    r2 r8 e16 d e8 r      | % 24
    R1  | % 
    r2 r8 e16 e e8 e      | % 26
    d fis b a16 g fis8 r r4      | % 27
    a8 r r4 r2      | % 28
    R1  | % 
    r8 fis b a a4 r      | % 30
    R1 *7  | % 
    r8 fis e d d a r4      | % 38
    R1  | % 
    r8 fis' e d d a r4      | % 40
    R1  | % 
    r2 r8 fis'16 e fis8 r      | % 42
    r2 r8 e16 d e8 r      | % 43
    R1 *3  | % 
    r8 fis,16 fis fis8 fis fis4 r      | % 47
    R1 *4  | % 
    r8 gis'16 a b8 r r a16 b cis8 r      | % 52
    R1 *5  | % 
    r8 fis, e d d a r4      | % 58
    R1  | % 
    r8 fis' e d d a r4      | % 60
    r2 r8 fis'16 e fis8 r      | % 61
    r2 r8 e16 d e8 r      | % 62
    R1  | % 
    r2 r8 e16 e e8 e      | % 64
    d fis b a16 g fis8 r r4      | % 65
    a8 r r4 r2      | % 66
    R1  | % 
    r8 fis b a a4 s4 \bar "|." 
}% end of last bar in partorvoice

 

ATrvoiceCA = \relative c'{
    \set Staff.instrumentName = #"Trumpet 3"
    \set Staff.shortInstrumentName = #"Tr 3"
    \clef treble
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    r8 s8     R1  | % 
    r8 a' a a a a r4      | % 2
    R1  | % 
    r8 a a a a a r4      | % 4
    r2 r8 d16 a fis8 r      | % 5
    r2 r8 a16 a a8 r      | % 6
    R1  | % 
    r2 r8 a16 a a8 a      | % 8
    a d,16 d d8 a' d, r r4      | % 9
    fis8 r r4 r2      | % 10
    R1  | % 
    r8 d' g e fis4 r      | % 12
    R1 *7  | % 
    r8 a, a a a a r4      | % 20
    R1  | % 
    r8 a a a a a r4      | % 22
    r2 r8 d16 a fis8 r      | % 23
    r2 r8 a16 a a8 r      | % 24
    R1  | % 
    r2 r8 a16 a a8 a      | % 26
    a d,16 d d8 a' d, r r4      | % 27
    fis8 r r4 r2      | % 28
    R1  | % 
    r8 d' g e fis4 r      | % 30
    R1 *7  | % 
    r8 a, a a a a r4      | % 38
    R1  | % 
    r8 a a a a a r4      | % 40
    R1  | % 
    r2 r8 d16 a fis8 r      | % 42
    r2 r8 a16 a a8 r      | % 43
    R1 *3  | % 
    r8 fis16 fis fis8 fis fis4 r      | % 47
    R1 *4  | % 
    r2 r8 fis16 fis fis8 r      | % 52
    R1 *5  | % 
    r8 a a a a a r4      | % 58
    R1  | % 
    r8 a a a a a r4      | % 60
    r2 r8 d16 a fis8 r      | % 61
    r2 r8 a16 a a8 r      | % 62
    R1  | % 
    r2 r8 a16 a a8 a      | % 64
    a d,16 d d8 a' d, r r4      | % 65
    fis8 r r4 r2      | % 66
    R1  | % 
    r8 d' g e fis4 s4 \bar "|." 
}% end of last bar in partorvoice

 

ATimpvoiceDA = \relative c{
    \set Staff.instrumentName = #"Timpani"
    \set Staff.shortInstrumentName = #"Timp"
    \clef bass
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    r8 s8     R1  | % 
    r8 d a d a a r4      | % 2
    R1  | % 
    r8 d a d a a r4      | % 4
    r2 r8 d16 d d8 r      | % 5
    r2 r8 a16 a a8 r      | % 6
    R1  | % 
    r2 r8 a16 a a8 a      | % 8
    d d16 d d8 a d r r4      | % 9
    d8 r r4 r2      | % 10
    R1  | % 
    r8 d16 d d8 a d4 r      | % 12
    R1 *7  | % 
    r8 d a d a a r4      | % 20
    R1  | % 
    r8 d a d a a r4      | % 22
    r2 r8 d16 d d8 r      | % 23
    r2 r8 a16 a a8 r      | % 24
    R1  | % 
    r2 r8 a16 a a8 a      | % 26
    d d16 d d8 a d r r4      | % 27
    d8 r r4 r2      | % 28
    R1  | % 
    r8 d16 d d8 a d4 r      | % 30
    R1 *7  | % 
    r8 d a d a a r4      | % 38
    R1  | % 
    r8 d a d a a r4      | % 40
    R1  | % 
    r2 r8 d16 d d8 r      | % 42
    r2 r8 a16 a a8 r      | % 43
    R1 *14  | % 
    r8 d a d a a r4      | % 58
    R1  | % 
    r8 d a d a a r4      | % 60
    r2 r8 d16 d d8 r      | % 61
    r2 r8 a16 a a8 r      | % 62
    R1  | % 
    r2 r8 a16 a a8 a      | % 64
    d d16 d d8 a d r r4      | % 65
    d8 r r4 r2      | % 66
    R1  | % 
    r8 d16 d d8 a d4 s4 \bar "|." 
}% end of last bar in partorvoice

 

AObvoiceEA = \relative c'{
    \set Staff.instrumentName = #"Oboe 1"
    \set Staff.shortInstrumentName = #"Ob 1"
    \clef treble
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    r8 s8     r4 r16 a' b cis d a d e fis d fis g      | % 1
    a8 a g fis fis e r4      | % 2
    r r8 d d a a fis      | % 3
    fis a' g fis fis e r4      | % 4
    r8 e fis r r b16 a b8 r      | % 5
    r d, e r r a16 g a8 r      | % 6
    r fis fis fis r g a a      | % 7
    r b16 a g8 r r g16 fis g8 a      | % 8
    g16 fis e d fis8 e d d'16 cis d8 d,      | % 9
    d a'16 g a8 d, b' r a r      | % 10
    gis d16 cis b8 b' a a,16 b cis8 g'      | % 11
    fis d' e, cis' d,4 fis,      | % 12
    b a g fis      | % 13
    e2 fis4 r      | % 14
    r r16 fis gis ais b fis b cis d b d e      | % 15
    fis8 fis e d d cis cis4      | % 16
    d d cis8. d32 e cis4      | % 17
    b2. r4      | % 18
    r r16 a b cis d a d e fis d fis g      | % 19
    a8 a g fis fis e r4      | % 20
    r r8 d d a a fis      | % 21
    fis a' g fis fis e r4      | % 22
    r8 e fis r r b16 a b8 r      | % 23
    r d, e r r a16 g a8 r      | % 24
    r fis fis fis r g a a      | % 25
    r b16 a g8 r r g16 fis g8 a      | % 26
    g16 fis e d fis8 e d d'16 cis d8 d,      | % 27
    d a'16 g a8 d, b' r a r      | % 28
    gis d16 cis b8 b' a a,16 b cis8 g'      | % 29
    fis d' e, cis' d,4 fis,      | % 30
    b a g fis      | % 31
    e2 fis4 r      | % 32
    r r16 fis gis ais b fis b cis d b d e      | % 33
    fis8 fis e d d cis cis4      | % 34
    d d cis8. d32 e cis4      | % 35
    b2. r4      | % 36
    r r16 a b cis d a d e fis d fis g      | % 37
    a8 a g fis fis e r4      | % 38
    r r8 d d a a fis      | % 39
    fis a' g fis e e d4      | % 40
    cis a b cis      | % 41
    d2 d8 b'16 a b8 r      | % 42
    r d, e r r a16 g a8 r      | % 43
    r4 a, b a      | % 44
    g g8 fis fis4 r8 fis'      | % 45
    b16 cis d cis b8 fis fis d d b      | % 46
    b fis' e d d cis r4      | % 47
    r8 cis d r r b'16 a b8 d,      | % 48
    cis4 e d cis      | % 49
    b2 cis4 r16 e, fis gis      | % 50
    a gis a b cis b cis d e8 cis' b a      | % 51
    a gis r cis, fis16 gis a gis fis8 cis      | % 52
    cis a a fis fis g' fis e      | % 53
    d b b gis gis fis' e d      | % 54
    cis a a fis fis e' d c      | % 55
    b g fis d' e, d' cis a      | % 56
    fis4 r16 a b cis d a d e fis d fis g      | % 57
    a8 a g fis fis e r4      | % 58
    r r8 d d a a fis      | % 59
    fis a' g fis fis e r4      | % 60
    r8 e fis r r b16 a b8 r      | % 61
    r d, e r r a16 g a8 r      | % 62
    r fis fis fis r g a a      | % 63
    r b16 a g8 r r g16 fis g8 a      | % 64
    g16 fis e d fis8 e d d'16 cis d8 d,      | % 65
    d a'16 g a8 d, b' r a r      | % 66
    gis d16 cis b8 b' a a,16 b cis8 g'      | % 67
    fis d' e, cis' d,4 s4 \bar "|." 
}% end of last bar in partorvoice

 

AObvoiceFA = \relative c'{
    \set Staff.instrumentName = #"Oboe 2"
    \set Staff.shortInstrumentName = #"Ob 2"
    \clef treble
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    r8 s8     r2 r16 a' b cis d a d e      | % 1
    fis8 fis e d d cis r4      | % 2
    r8 d d a a fis fis d      | % 3
    d fis' e d d cis r4      | % 4
    r8 a a r r fis'16 e fis8 r      | % 5
    r a, a r r e'16 d e8 r      | % 6
    r d d d r d fis fis      | % 7
    r g16 fis e8 r r a, cis e      | % 8
    d d d cis d r r d      | % 9
    a r r a' g r d r      | % 10
    d r gis, r e r e' r      | % 11
    a, fis' g e d4 fis,      | % 12
    b a g fis      | % 13
    e2 fis4 r      | % 14
    r2 r16 fis gis ais b fis b cis      | % 15
    d8 d cis b b ais cis4      | % 16
    d d cis8. d32 e cis4      | % 17
    b2. r4      | % 18
    r2 r16 a b cis d a d e      | % 19
    fis8 fis e d d cis r4      | % 20
    r8 d d a a fis fis d      | % 21
    d fis' e d d cis r4      | % 22
    r8 a a r r fis'16 e fis8 r      | % 23
    r a, a r r e'16 d e8 r      | % 24
    r d d d r d fis fis      | % 25
    r g16 fis e8 r r a, cis e      | % 26
    d d d cis d r r d      | % 27
    a r r a' g r d r      | % 28
    d r gis, r e r e' r      | % 29
    a, fis' g e d4 fis,      | % 30
    b a g fis      | % 31
    e2 fis4 r      | % 32
    r2 r16 fis gis ais b fis b cis      | % 33
    d8 d cis b b ais cis4      | % 34
    d d cis8. d32 e cis4      | % 35
    b2. r4      | % 36
    r2 r16 a b cis d a d e      | % 37
    fis8 fis e d d cis r4      | % 38
    r8 d d a a fis fis d      | % 39
    d fis' e d d cis d4      | % 40
    cis a b cis      | % 41
    d2 d8 b'16 a b8 r      | % 42
    r a, a r r e'16 d e8 r      | % 43
    r4 a, b a      | % 44
    g g8 fis fis4 r8 fis'      | % 45
    b16 cis d cis b8 fis fis d d b      | % 46
    b d cis b b ais r4      | % 47
    r8 g fis r r e'16 fis e8 d      | % 48
    cis4 e d cis      | % 49
    b2 cis4 r      | % 50
    r16 e, fis gis a gis a b cis8 e d cis      | % 51
    cis b r cis fis16 gis a gis fis8 cis      | % 52
    cis a a fis fis e' d cis      | % 53
    b b b gis gis d' cis b      | % 54
    a a a fis fis c' b a      | % 55
    g4 fis e a      | % 56
    fis2 r16 a b cis d a d e      | % 57
    fis8 fis e d d cis r4      | % 58
    r8 d d a a fis fis d      | % 59
    d fis' e d d cis r4      | % 60
    r8 a a r r fis'16 e fis8 r      | % 61
    r a, a r r e'16 d e8 r      | % 62
    r d d d r d fis e      | % 63
    r g16 fis e8 r r a, cis e      | % 64
    d d d cis d r r d      | % 65
    a r r a' g r d r      | % 66
    d r gis, r e r e' r      | % 67
    a, fis' g e d4 s4 \bar "|." 
}% end of last bar in partorvoice

 

AVnvoiceGA = \relative c'{
    \set Staff.instrumentName = #"Violin 1"
    \set Staff.shortInstrumentName = #"Vn 1"
    \clef treble
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    r8 s8     R1  | % 
    r8 a'' g fis fis e r4      | % 2
    R1  | % 
    r8 a g fis fis e r4      | % 4
    r r8 e fis b16 a b8 r      | % 5
    r4 r8 d, e a16 g a8 r      | % 6
    d,1~      | % 7
    d8 e,16 fis g e fis g a e a cis e cis a a'      | % 8
    g fis e d fis8 e d d'16 cis d8 d,      | % 9
    d a'16 g a8 d, b' r a r      | % 10
    gis d16 cis b8 b' a a,16 b cis8 g'      | % 11
    fis d' e, cis' d,4 r16 fis, g a      | % 12
    d, b' a g d a' g fis d g fis e d fis e d      | % 13
    e d' cis b a g fis e d4 r8 fis      | % 14
    b16 cis d cis b8 fis fis d d b      | % 15
    b fis'' e d d cis r16 cis b ais      | % 16
    b b cis d b b cis d cis8 g' r16 g fis e      | % 17
    d d e fis d d e fis e8 b' r16 b a g      | % 18
    fis8 r r4 r2      | % 19
    r8 a g fis fis e r4      | % 20
    R1  | % 
    r8 a g fis fis e r4      | % 22
    r r8 e fis b16 a b8 r      | % 23
    r4 r8 d, e a16 g a8 r      | % 24
    d,1~      | % 25
    d8 e,16 fis g e fis g a e a cis e cis a a'      | % 26
    g fis e d fis8 e d d'16 cis d8 d,      | % 27
    d a'16 g a8 d, b' r a r      | % 28
    gis d16 cis b8 b' a a,16 b cis8 g'      | % 29
    fis d' e, cis' d,4 r16 fis, g a      | % 30
    d, b' a g d a' g fis d g fis e d fis e d      | % 31
    e d' cis b a g fis e d4 r8 fis      | % 32
    b16 cis d cis b8 fis fis d d b      | % 33
    b fis'' e d d cis r16 cis b ais      | % 34
    b b cis d b b cis d cis8 g' r16 g fis e      | % 35
    d d e fis d d e fis e8 b' r16 b a g      | % 36
    fis8 r r4 r2      | % 37
    r8 a g fis fis e r4      | % 38
    R1  | % 
    r8 a g fis fis e r16 gis, a b      | % 40
    cis a cis e a fis, g a b g b d g8 r      | % 41
    r2 r8 b16 a b8 r      | % 42
    r4 r8 d, e a16 g a8 r      | % 43
    r d, d d r d d d      | % 44
    r e e e r e e e      | % 45
    d4 r16 fis, gis ais b fis b cis d b d e      | % 46
    fis8 fis e d d cis r16 g' fis e      | % 47
    d d e fis d d e fis e8 b' r16 fis e d      | % 48
    cis cis d e cis cis d e d8 a' r16 cis, b a      | % 49
    b a' gis fis e d cis b a4 r      | % 50
    r2 r8 cis' b a      | % 51
    a gis r b b a r16 cis, dis eis      | % 52
    fis cis fis gis a fis a b cis8 g fis e      | % 53
    d16 b d e fis b, d fis b8 fis e d      | % 54
    cis16 a cis d e a, cis e a8 e d c      | % 55
    b16 g b cis d g fis e d fis e d a e' d cis      | % 56
    d,8 a' a fis fis d d a      | % 57
    a a'' g fis fis e r4      | % 58
    R1  | % 
    r8 a g fis fis e r4      | % 60
    r r8 e fis b16 a b8 r      | % 61
    r4 r8 d, e a16 g a8 r      | % 62
    d,1~      | % 63
    d8 e,16 fis g e fis g a e a cis e cis a a'      | % 64
    g fis e d fis8 e d d'16 cis d8 d,      | % 65
    d a'16 g a8 d, b' r a r      | % 66
    gis d16 cis b8 b' a a,16 b cis8 g'      | % 67
    fis d' e, cis' d,4 s4 \bar "|." 
}% end of last bar in partorvoice

 

AVnvoiceHA = \relative c'{
    \set Staff.instrumentName = #"Violin 2"
    \set Staff.shortInstrumentName = #"Vn 2"
    \clef treble
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    r8 s8     R1  | % 
    r8 fis' e d d cis r4      | % 2
    R1  | % 
    r8 fis e d d cis r4      | % 4
    r r8 e d fis16 e fis8 r      | % 5
    r4 r8 a, a e'16 d e8 r      | % 6
    b1~      | % 7
    b8 b' g d r e cis e      | % 8
    a, b b cis fis, r r g'      | % 9
    a r r c, b r d r      | % 10
    e r e r e r e r      | % 11
    a, fis' g e fis4 r16 fis, g a      | % 12
    d, b' a g d a' g fis d g fis e d fis e d      | % 13
    e d' cis b a g fis e d4 r8 fis      | % 14
    b16 cis d cis b8 fis fis d d b      | % 15
    b d' cis b b ais r16 cis b ais      | % 16
    b b cis d b b cis d cis8 g' r16 g fis e      | % 17
    d d e fis d d e fis e8 b' r16 b a g      | % 18
    fis8 r r4 r2      | % 19
    r8 fis e d d cis r4      | % 20
    R1  | % 
    r8 fis e d d cis r4      | % 22
    r r8 e d fis16 e fis8 r      | % 23
    r4 r8 a, a e'16 d e8 r      | % 24
    b1~      | % 25
    b8 b' g d r e cis e      | % 26
    a, b b cis fis, r r g'      | % 27
    a r r c, b r d r      | % 28
    e r e r e r e r      | % 29
    a, fis' g e fis4 r16 fis, g a      | % 30
    d, b' a g d a' g fis d g fis e d fis e d      | % 31
    e d' cis b a g fis e d4 r8 fis      | % 32
    b16 cis d cis b8 fis fis d d b      | % 33
    b d' cis b b ais r16 cis b ais      | % 34
    b b cis d b b cis d cis8 g' r16 g fis e      | % 35
    d d e fis d d e fis e8 b' r16 b a g      | % 36
    fis8 r r4 r2      | % 37
    r8 fis e d d cis r4      | % 38
    R1  | % 
    r8 fis e d d cis r16 gis a b      | % 40
    cis a cis e a fis, g a b g b d g8 r      | % 41
    r2 r8 fis16 e fis8 r      | % 42
    r4 r8 a, a e'16 d e8 r      | % 43
    r b a a r g a b      | % 44
    r b b cis r cis ais ais      | % 45
    b4 r r16 fis gis ais b fis b cis      | % 46
    d8 d cis b b ais r16 g' fis e      | % 47
    d d e fis d d e fis e8 b' r16 fis e d      | % 48
    cis cis d e cis cis d e d8 a' r16 cis, b a      | % 49
    b a' gis fis e d cis b a4 r      | % 50
    r2 r8 e' d cis      | % 51
    cis b r gis' fis cis r4      | % 52
    r16 cis dis eis fis cis fis gis ais8 e d cis      | % 53
    b16 fis b cis d fis, b cis d8 d cis b      | % 54
    a16 e a b cis e, a b c8 c b a      | % 55
    g16 e b' cis d g fis e d fis e d a e' d cis      | % 56
    b8 g g e e a, a d      | % 57
    d fis' e d d cis r4      | % 58
    R1  | % 
    r8 fis e d d cis r4      | % 60
    r r8 e d fis16 e fis8 r      | % 61
    r4 r8 a, a e'16 d e8 r      | % 62
    b1~      | % 63
    b8 b' g d r e cis e      | % 64
    a, b b cis fis, r r g'      | % 65
    a r r c, b r d r      | % 66
    e r e r e r e r      | % 67
    a, fis' g e fis4 s4 \bar "|." 
}% end of last bar in partorvoice

 

AVlavoiceIA = \relative c'{
    \set Staff.instrumentName = #"Viola"
    \set Staff.shortInstrumentName = #"Vla"
    \clef alto
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    r8 s8     R1  | % 
    r8 d a a' a a, r4      | % 2
    R1  | % 
    r8 d a a' a a, r4      | % 4
    r r8 a' a d16 a fis8 r      | % 5
    r4 r8 b e, a,16 b a8 r      | % 6
    fis'2 b,4 d      | % 7
    e8 b e a r a e e      | % 8
    fis fis b, e b' r r b      | % 9
    a r r a g r a r      | % 10
    b r b r e, r a r      | % 11
    a b e, a a4 r16 fis g a      | % 12
    d, b' a g d a' g fis d g fis e d fis e d      | % 13
    e d' cis b a g fis e d4 r8 fis      | % 14
    b16 cis d cis b8 fis fis d d b      | % 15
    b b fis fis' fis fis, r16 cis'' b ais      | % 16
    b b cis d b b cis d cis8 b ais4      | % 17
    b r8 d, d cis16 b cis8. d16      | % 18
    d8 r r4 r2      | % 19
    r8 d a a' a a, r4      | % 20
    R1  | % 
    r8 d a a' a a, r4      | % 22
    r r8 a' a d16 a fis8 r      | % 23
    r4 r8 b e, a,16 b a8 r      | % 24
    fis'2 b,4 d      | % 25
    e8 b e a r a e e      | % 26
    fis fis b, e b' r r b      | % 27
    a r r a g r a r      | % 28
    b r b r e, r a r      | % 29
    a b e, a a4 r16 fis g a      | % 30
    d, b' a g d a' g fis d g fis e d fis e d      | % 31
    e d' cis b a g fis e d4 r8 fis      | % 32
    b16 cis d cis b8 fis fis d d b      | % 33
    b b fis fis' fis fis, r16 cis'' b ais      | % 34
    b b cis d b b cis d cis8 b ais4      | % 35
    b r8 d, d cis16 b cis8. d16      | % 36
    d8 r r4 r2      | % 37
    r8 d a a' a a, r4      | % 38
    R1  | % 
    r8 d a a' a a, b e      | % 40
    e a d, d d g g e      | % 41
    b r r4 r8 d'16 a fis8 r      | % 42
    r4 r8 b e, a,16 b a8 r      | % 43
    r fis' fis fis r b, fis' fis      | % 44
    r e e ais, r fis' cis fis      | % 45
    fis4 r r2      | % 46
    r8 b, fis fis' fis fis, r4      | % 47
    r2 r8 b16 cis b8 gis'      | % 48
    e e a, b fis' d a' e      | % 49
    fis b b gis e4 r      | % 50
    r2 r8 a, e e'      | % 51
    e e, r cis' cis fis r4      | % 52
    r2 r8 ais16 gis ais b cis ais      | % 53
    fis8 fis, r4 r8 gis'16 fis gis a b gis      | % 54
    e8 e, r4 r8 fis'16 e fis g a fis      | % 55
    g8 g, a d, a' b cis e      | % 56
    fis d d a' a fis fis d      | % 57
    d d a a' a a, r4      | % 58
    R1  | % 
    r8 d a a' a a, r4      | % 60
    r r8 a' a d16 a fis8 r      | % 61
    r4 r8 b e, a,16 b a8 r      | % 62
    fis'2 b,4 d      | % 63
    e8 b e a r a e e      | % 64
    fis fis b, e b' r r b      | % 65
    a r r a g r a r      | % 66
    b r b r e, r a r      | % 67
    a b e, a a4 s4 \bar "|." 
}% end of last bar in partorvoice

 

ASvoiceJA = \relative c'{
    \set Staff.instrumentName = #"Soprano"
    \set Staff.shortInstrumentName = #"S."
    \clef treble
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    r8 s8     R1 *11  | % 
    r2 r4 fis      | % 12
    b a g fis      | % 13
    e2 fis4 r      | % 14
    R1  | % 
    r2 r4 cis'      | % 16
    d d cis8. d32 e cis4      | % 17
    b2 r      | % 18
    R1 *11  | % 
    r2 r4 fis      | % 30
    b a g fis      | % 31
    e2 fis4 r      | % 32
    R1  | % 
    r2 r4 cis'      | % 34
    d d cis8. d32 e cis4      | % 35
    b2 r      | % 36
    R1 *3  | % 
    r2 r4 d      | % 40
    cis a b cis      | % 41
    d2 d4 r      | % 42
    R1  | % 
    r4 a b a      | % 44
    g g8 fis fis4 r      | % 45
    R1 *2  | % 
    r2 r4 d'      | % 48
    cis e d cis      | % 49
    b2 cis4 r      | % 50
    R1 *4  | % 
    r2 r4 fis,      | % 55
    g fis e a      | % 56
    fis1      | % 57
    R1 *10  | % 
    r2 r4 s4 \bar "|." 
}% end of last bar in partorvoice

 

AAvoiceKA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    r8 s8     R1 *11  | % 
    r2 r4 d      | % 12
    d8 e fis4 b,8 cis d4      | % 13
    d cis d r      | % 14
    R1  | % 
    r2 r4 ais'      | % 16
    b b b ais      | % 17
    fis2 r      | % 18
    R1 *11  | % 
    r2 r4 d      | % 30
    d8 e fis4 b,8 cis d4      | % 31
    d cis d r      | % 32
    R1  | % 
    r2 r4 ais'      | % 34
    b b b ais      | % 35
    fis2 r      | % 36
    R1 *3  | % 
    r2 r4 b      | % 40
    a a8 g16 fis g4 g8 e      | % 41
    d4. b'8 a4 r      | % 42
    R1  | % 
    r4 a8 fis g4 fis      | % 44
    fis8 e e4 cis r      | % 45
    R1 *2  | % 
    r2 r4 b'      | % 48
    a4. e8 fis4. e8      | % 49
    fis d e4 e r      | % 50
    R1 *4  | % 
    r2 r4 fis      | % 55
    b,8 e d4 d8 cis16 b cis4      | % 56
    d1      | % 57
    R1 *10  | % 
    r2 r4 s4 \bar "|." 
}% end of last bar in partorvoice

 

ATvoiceLA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    r8 s8     R1 *11  | % 
    r2 r4 a'      | % 12
    b8 cis d4 g, a      | % 13
    b8 g e a a4 r      | % 14
    R1  | % 
    r2 r4 fis'      | % 16
    fis d8 fis g e fis cis      | % 17
    d2 r      | % 18
    R1 *11  | % 
    r2 r4 a      | % 30
    b8 cis d4 g, a      | % 31
    b8 g e a a4 r      | % 32
    R1  | % 
    r2 r4 fis'      | % 34
    fis d8 fis g e fis cis      | % 35
    d2 r      | % 36
    R1 *3  | % 
    r2 r4 e      | % 40
    e d d e8 cis      | % 41
    fis4. b,8 fis'4 r      | % 42
    R1  | % 
    r4 d d d      | % 44
    b b8 ais ais4 r      | % 45
    R1 *2  | % 
    r2 r4 e'      | % 48
    e4. b8 a4. a8      | % 49
    a b gis4 a r      | % 50
    R1 *4  | % 
    r2 r4 d      | % 55
    d8 cis16 b a4 a a      | % 56
    a1      | % 57
    R1 *10  | % 
    r2 r4 s4 \bar "|." 
}% end of last bar in partorvoice

 

ABvoiceMA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    r8 s8     R1 *11  | % 
    r2 r4 d      | % 12
    g fis b a      | % 13
    g a d, r      | % 14
    R1  | % 
    r2 r4 fis      | % 16
    b8 fis g d e cis fis4      | % 17
    b,2 r      | % 18
    R1 *11  | % 
    r2 r4 d      | % 30
    g fis b a      | % 31
    g a d, r      | % 32
    R1  | % 
    r2 r4 fis      | % 34
    b8 fis g d e cis fis4      | % 35
    b,2 r      | % 36
    R1 *3  | % 
    r2 r4 a'8 gis      | % 40
    a g fis d g fis e a      | % 41
    b a b g d4 r      | % 42
    R1  | % 
    r4 fis8 d g4 d8 b      | % 44
    e4 e fis r      | % 45
    R1 *2  | % 
    r2 r4 gis8 e      | % 48
    a4. gis8 fis4. cis8      | % 49
    d b e4 a, r      | % 50
    R1 *4  | % 
    r2 r4 d      | % 55
    e fis8 g a g a a,      | % 56
    d1      | % 57
    R1 *10  | % 
    r2 r4 s4 \bar "|." 
}% end of last bar in partorvoice

 

AContvoiceNA = \relative c{
    \set Staff.instrumentName = #"Continuo"
    \set Staff.shortInstrumentName = #"Cont"
    \clef bass
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    r8 s8     d8 d, r4 r2      | % 1
    r8 d'16 cis d e fis g a g a b a g fis e      | % 2
    d8 d, r4 r2      | % 3
    r8 d'16 cis d e fis g a g a b a g fis e      | % 4
    d8 cis d cis d d'16 cis d8 b      | % 5
    cis, b cis b cis cis'16 b cis8 a      | % 6
    b, b' a a, g g' fis fis,      | % 7
    e16 fis g a b cis d b cis a cis e a8 cis,      | % 8
    d b g a b b'16 a b8 b,      | % 9
    fis fis'16 e fis8 d g g, fis fis'      | % 10
    e e, d d' cis16 d' cis b a g fis e      | % 11
    d cis b a g8 a d, d'16 e d c b a      | % 12
    g8 g' fis fis, b b' a a,      | % 13
    g g' a a, d fis16 e d8 cis      | % 14
    b b' r4 r2      | % 15
    r8 b,16 ais b cis d e fis e fis g fis e d cis      | % 16
    b8 b' g d e cis fis fis,      | % 17
    b fis' b fis g e a16 g fis e      | % 18
    d8 d, r4 r2      | % 19
    r8 d'16 cis d e fis g a g a b a g fis e      | % 20
    d8 d, r4 r2      | % 21
    r8 d'16 cis d e fis g a g a b a g fis e      | % 22
    d8 cis d cis d d'16 cis d8 b      | % 23
    cis, b cis b cis cis'16 b cis8 a      | % 24
    b, b' a a, g g' fis fis,      | % 25
    e16 fis g a b cis d b cis a cis e a8 cis,      | % 26
    d b g a b b'16 a b8 b,      | % 27
    fis fis'16 e fis8 d g g, fis fis'      | % 28
    e e, d d' cis16 d' cis b a g fis e      | % 29
    d cis b a g8 a d, d'16 e d c b a      | % 30
    g8 g' fis fis, b b' a a,      | % 31
    g g' a a, d fis16 e d8 cis      | % 32
    b b' r4 r2      | % 33
    r8 b,16 ais b cis d e fis e fis g fis e d cis      | % 34
    b8 b' g d e cis fis fis,      | % 35
    b fis' b fis g e a16 g fis e      | % 36
    d8 d, r4 r2      | % 37
    r8 d'16 cis d e fis g a g a b a g fis e      | % 38
    d8 d, r4 r2      | % 39
    r8 d'16 cis d e fis g a gis a b a gis fis e      | % 40
    a8 g fis d g fis e a      | % 41
    b a b g d d'16 cis d8 b      | % 42
    cis, b cis b cis cis'16 b cis8 a      | % 43
    b, b' fis d g, g' d b      | % 44
    e,16 fis g a b d cis b ais fis ais cis fis e d cis      | % 45
    b8 b' r4 r2      | % 46
    r8 b,16 ais b cis d e fis e fis g fis e d cis      | % 47
    b8 ais b a gis gis'16 fis gis8 e      | % 48
    a, gis a gis fis fis'16 e fis8 cis      | % 49
    d b e e, a a' r4      | % 50
    r2 r8 a,16 gis a b cis d      | % 51
    e fis gis fis eis dis eis cis fis8 fis, r4      | % 52
    r2 r8 fis16 e fis gis ais fis      | % 53
    b8 b' r4 r8 e,,16 d e fis gis e      | % 54
    a8 a' r4 r8 d,,16 c d e fis d      | % 55
    e8 e' fis g a g a a,      | % 56
    d d, r4 r2      | % 57
    r8 d'16 cis d e fis g a g a b a g fis e      | % 58
    d8 d, r4 r2      | % 59
    r8 d'16 cis d e fis g a g a b a g fis e      | % 60
    d8 cis d cis d d'16 cis d8 b      | % 61
    cis, b cis b cis cis'16 b cis8 a      | % 62
    b, b' a a, g g' fis fis,      | % 63
    e16 fis g a b cis d b cis a cis e a8 cis,      | % 64
    d b g a b b'16 a b8 b,      | % 65
    fis fis'16 e fis8 d g g, fis fis'      | % 66
    e e, d d' cis16 d' cis b a g fis e      | % 67
    d cis b a g8 a d,4 s4 \bar "|." 
}% end of last bar in partorvoice



\book {
\layout { \scorepaper }
\score {
<<
\part ATrvoiceAA { \ATrvoiceAA } { \transpose d c \ATrvoiceAA }
\part ATrvoiceBA { \ATrvoiceBA } { \transpose d c \ATrvoiceBA }
\part ATrvoiceCA { \ATrvoiceCA } { \transpose d c \ATrvoiceCA }
\part ATimpvoiceDA { \ATimpvoiceDA } { \transpose d c \ATimpvoiceDA }
\part AObvoiceEA { \AObvoiceEA } { \transpose d c \AObvoiceEA }
\part AObvoiceFA { \AObvoiceFA } { \transpose d c \AObvoiceFA }
\part AVnvoiceGA { \AVnvoiceGA } { \transpose d c \AVnvoiceGA }
\part AVnvoiceHA { \AVnvoiceHA } { \transpose d c \AVnvoiceHA }
\part AVlavoiceIA { \AVlavoiceIA } { \transpose d c \AVlavoiceIA }
\part ASvoiceJA { \ASvoiceJA } { \transpose d c \ASvoiceJA }
\part AAvoiceKA { \AAvoiceKA } { \transpose d c \AAvoiceKA }
\part ATvoiceLA { \ATvoiceLA } { \transpose d c \ATvoiceLA }
\part ABvoiceMA { \ABvoiceMA } { \transpose d c \ABvoiceMA }
\part AContvoiceNA { \AContvoiceNA } { \transpose d c \AContvoiceNA }
>>
}
\score {
<<
\new Voice = ATrvoiceAA \ATrvoiceAA
\new Voice = ATrvoiceBA \ATrvoiceBA
\new Voice = ATrvoiceCA \ATrvoiceCA
\new Voice = ATimpvoiceDA \ATimpvoiceDA
\new Voice = AObvoiceEA \AObvoiceEA
\new Voice = AObvoiceFA \AObvoiceFA
\new Voice = AVnvoiceGA \AVnvoiceGA
\new Voice = AVnvoiceHA \AVnvoiceHA
\new Voice = AVlavoiceIA \AVlavoiceIA
\new Voice = ASvoiceJA \ASvoiceJA
\new Voice = AAvoiceKA \AAvoiceKA
\new Voice = ATvoiceLA \ATvoiceLA
\new Voice = ABvoiceMA \ABvoiceMA
\new Voice = AContvoiceNA \AContvoiceNA
>>

        \midi   { 
        \context { \Staff  \remove "Staff_performer" }
        \context { \Voice  \consists "Staff_performer" }
        } 
   }
} %%end of book

#(define output-suffix "Trumpe")
\book {
\layout { \partpaper }
\score {
<<
\part ATrvoiceAA { \ATrvoiceAA } { \transpose d c \ATrvoiceAA }
>>
}
\score {
<<
\new Voice = ATrvoiceAA \ATrvoiceAA
>>

        \midi   { 
        \context { \Staff  \remove "Staff_performer" }
        \context { \Voice  \consists "Staff_performer" }
        } 
   }
} %%end of book
#(define output-suffix "Trumpe")
\book {
\layout { \partpaper }
\score {
<<
\part ATrvoiceBA { \ATrvoiceBA } { \transpose d c \ATrvoiceBA }
>>
}
\score {
<<
\new Voice = ATrvoiceBA \ATrvoiceBA
>>

        \midi   { 
        \context { \Staff  \remove "Staff_performer" }
        \context { \Voice  \consists "Staff_performer" }
        } 
   }
} %%end of book
#(define output-suffix "Trumpe")
\book {
\layout { \partpaper }
\score {
<<
\part ATrvoiceCA { \ATrvoiceCA } { \transpose d c \ATrvoiceCA }
>>
}
\score {
<<
\new Voice = ATrvoiceCA \ATrvoiceCA
>>

        \midi   { 
        \context { \Staff  \remove "Staff_performer" }
        \context { \Voice  \consists "Staff_performer" }
        } 
   }
} %%end of book
#(define output-suffix "Timpani")
\book {
\layout { \partpaper }
\score {
<<
\part ATimpvoiceDA { \ATimpvoiceDA } { \transpose d c \ATimpvoiceDA }
>>
}
\score {
<<
\new Voice = ATimpvoiceDA \ATimpvoiceDA
>>

        \midi   { 
        \context { \Staff  \remove "Staff_performer" }
        \context { \Voice  \consists "Staff_performer" }
        } 
   }
} %%end of book
#(define output-suffix "Obo")
\book {
\layout { \partpaper }
\score {
<<
\part AObvoiceEA { \AObvoiceEA } { \transpose d c \AObvoiceEA }
>>
}
\score {
<<
\new Voice = AObvoiceEA \AObvoiceEA
>>

        \midi   { 
        \context { \Staff  \remove "Staff_performer" }
        \context { \Voice  \consists "Staff_performer" }
        } 
   }
} %%end of book
#(define output-suffix "Obo")
\book {
\layout { \partpaper }
\score {
<<
\part AObvoiceFA { \AObvoiceFA } { \transpose d c \AObvoiceFA }
>>
}
\score {
<<
\new Voice = AObvoiceFA \AObvoiceFA
>>

        \midi   { 
        \context { \Staff  \remove "Staff_performer" }
        \context { \Voice  \consists "Staff_performer" }
        } 
   }
} %%end of book
#(define output-suffix "Violi")
\book {
\layout { \partpaper }
\score {
<<
\part AVnvoiceGA { \AVnvoiceGA } { \transpose d c \AVnvoiceGA }
>>
}
\score {
<<
\new Voice = AVnvoiceGA \AVnvoiceGA
>>

        \midi   { 
        \context { \Staff  \remove "Staff_performer" }
        \context { \Voice  \consists "Staff_performer" }
        } 
   }
} %%end of book
#(define output-suffix "Violi")
\book {
\layout { \partpaper }
\score {
<<
\part AVnvoiceHA { \AVnvoiceHA } { \transpose d c \AVnvoiceHA }
>>
}
\score {
<<
\new Voice = AVnvoiceHA \AVnvoiceHA
>>

        \midi   { 
        \context { \Staff  \remove "Staff_performer" }
        \context { \Voice  \consists "Staff_performer" }
        } 
   }
} %%end of book
#(define output-suffix "Viola")
\book {
\layout { \partpaper }
\score {
<<
\part AVlavoiceIA { \AVlavoiceIA } { \transpose d c \AVlavoiceIA }
>>
}
\score {
<<
\new Voice = AVlavoiceIA \AVlavoiceIA
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
\part ASvoiceJA { \ASvoiceJA } { \transpose d c \ASvoiceJA }
>>
}
\score {
<<
\new Voice = ASvoiceJA \ASvoiceJA
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
\part AAvoiceKA { \AAvoiceKA } { \transpose d c \AAvoiceKA }
>>
}
\score {
<<
\new Voice = AAvoiceKA \AAvoiceKA
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
\part ATvoiceLA { \ATvoiceLA } { \transpose d c \ATvoiceLA }
>>
}
\score {
<<
\new Voice = ATvoiceLA \ATvoiceLA
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
\part ABvoiceMA { \ABvoiceMA } { \transpose d c \ABvoiceMA }
>>
}
\score {
<<
\new Voice = ABvoiceMA \ABvoiceMA
>>

        \midi   { 
        \context { \Staff  \remove "Staff_performer" }
        \context { \Voice  \consists "Staff_performer" }
        } 
   }
} %%end of book
#(define output-suffix "Continuo")
\book {
\layout { \partpaper }
\score {
<<
\part AContvoiceNA { \AContvoiceNA } { \transpose d c \AContvoiceNA }
>>
}
\score {
<<
\new Voice = AContvoiceNA \AContvoiceNA
>>

        \midi   { 
        \context { \Staff  \remove "Staff_performer" }
        \context { \Voice  \consists "Staff_performer" }
        } 
   }
} %%end of book
