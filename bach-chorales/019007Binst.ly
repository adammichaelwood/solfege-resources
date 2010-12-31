
% BWV 190 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 190"
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
    r4     R1 *2  | % 
    r2 r8 b''16 b a b a g      | % 3
    fis e fis g fis g fis e d4 r      | % 4
    R1 *2  | % 
    r2 r8 a'16 g a b a g      | % 7
    fis e fis g fis g fis e d4 r      | % 8
    R1 *2  | % 
    r2 r8 b'16 b a b a g      | % 11
    fis e fis g fis g fis e d4 r      | % 12
    R1 *2  | % 
    r2 r8 a'16 g a b a g      | % 15
    fis e fis g fis g fis e d4 r      | % 16
    r2 r8 a'16 g a b a g      | % 17
    fis e fis g fis g fis e d4 r      | % 18
    r2 r8 a'16 g a b a g      | % 19
    fis e fis g fis g fis e d4 r      | % 20
    R1 *2  | % 
    r2 r8 b'16 a b c b a      | % 23
    g fis g a g a g fis e4 r      | % 24
    R1 *2  | % 
    r2 r8 b'16 a b c b a      | % 27
    g fis g a g a g fis e4 r      | % 28
    R1 *2  | % 
    r2 r8 b'16 b a b a g      | % 31
    fis e fis g fis g fis e d4 s4 \bar "|." 
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
    r4     R1 *2  | % 
    r2 r8 e'16 e e g fis e      | % 3
    d8 a'16 g a b a g fis4 r      | % 4
    R1 *2  | % 
    r2 r8 e16 e e g fis e      | % 7
    d8 a'16 g a b a g fis4 r      | % 8
    R1 *2  | % 
    r2 r8 e16 e e g fis e      | % 11
    d8 a'16 g a b a g fis4 r      | % 12
    R1 *2  | % 
    r2 r8 e16 e e g fis e      | % 15
    d8 a'16 g a b a g fis4 r      | % 16
    r2 r8 e16 e e g fis e      | % 17
    d8 a'16 g a b a g fis4 r      | % 18
    r2 r8 e16 e e g fis e      | % 19
    d8 a'16 g a b a g fis4 r      | % 20
    R1 *2  | % 
    r2 r8 fis16 fis fis a g fis      | % 23
    e8 b'16 a b cis b a g4 r      | % 24
    R1 *2  | % 
    r2 r8 fis16 fis fis a g fis      | % 27
    e8 b'16 a b c b a g4 r      | % 28
    R1 *2  | % 
    r2 r8 e16 e e g fis e      | % 31
    d8 a'16 g a b a g fis4 s4 \bar "|." 
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
    r4     R1 *2  | % 
    r2 r8 d16 fis a8 a      | % 3
    a d16 d d a d a a4 r      | % 4
    R1 *2  | % 
    r2 r8 a16 a a8 a      | % 7
    a d16 d d a d a a4 r      | % 8
    R1 *2  | % 
    r2 r8 d,16 fis a8 a      | % 11
    a d16 d d a d a a4 r      | % 12
    R1 *2  | % 
    r2 r8 a16 a a8 a      | % 15
    a d16 d d a d a a4 r      | % 16
    r2 r8 a16 a a8 a      | % 17
    a d16 a d a d a a4 r      | % 18
    r2 r8 a16 a a8 a      | % 19
    a d16 a d a d a a4 r      | % 20
    R1 *10  | % 
    r2 r8 d,16 fis a8 a      | % 31
    a d16 d d a d a a4 s4 \bar "|." 
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
    r4     R1 *2  | % 
    r2 r8 d16 d a8 a      | % 3
    d d16 d d d d d d4 r      | % 4
    R1 *2  | % 
    r2 r8 a16 a a8 a      | % 7
    d d16 d d d d d d4 r      | % 8
    R1 *2  | % 
    r2 r8 d16 d a8 a      | % 11
    d d16 d d d d d d4 r      | % 12
    R1 *2  | % 
    r2 r8 a16 a a8 a      | % 15
    d d16 d d d d d d4 r      | % 16
    r2 r8 a16 a a8 a      | % 17
    d d16 d d d d d d4 r      | % 18
    r2 r8 a16 a a8 a      | % 19
    d d16 d d d d d d4 r      | % 20
    R1 *10  | % 
    r2 r8 d16 d a8 a      | % 31
    d d16 d d d d d d4 s4 \bar "|." 
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
    fis'4     fis d e fis      | % 1
    g2 e4\fermata  e      | % 2
    e d d cis      | % 3
    d2.\fermata  e4      | % 4
    e e e fis      | % 5
    d2 d4\fermata  d      | % 6
    cis d e e      | % 7
    d2.\fermata  fis4      | % 8
    fis d e fis      | % 9
    g2 e4\fermata  e      | % 10
    e d d cis      | % 11
    d2.\fermata  e4      | % 12
    e e e fis      | % 13
    d2 d4\fermata  d      | % 14
    cis d e e      | % 15
    d2.\fermata  cis4      | % 16
    cis cis cis cis      | % 17
    d2 d4\fermata  cis      | % 18
    cis cis cis cis      | % 19
    d2 d4\fermata  fis      | % 20
    fis d e fis      | % 21
    g2 fis4 fis      | % 22
    e fis dis dis      | % 23
    e2.\fermata  fis4      | % 24
    fis d e fis      | % 25
    g2 fis4 fis      | % 26
    e fis dis dis      | % 27
    e2.\fermata  fis4      | % 28
    fis d e fis      | % 29
    g2 e4 e      | % 30
    e d d cis      | % 31
    d2.\fermata  s4 \bar "|." 
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
    a'4     a a b c      | % 1
    d2 c4 c      | % 2
    cis b b8 e, a4      | % 3
    a2. cis4      | % 4
    b b cis cis      | % 5
    b2 b4 b      | % 6
    g a a a      | % 7
    a2. a4      | % 8
    a a b c      | % 9
    d2 c4 c      | % 10
    cis b b8 e, a4      | % 11
    a2. cis4      | % 12
    b b cis cis      | % 13
    b2 b4 b      | % 14
    g a a a      | % 15
    a2. a4      | % 16
    a a a a      | % 17
    a2 a4 a      | % 18
    a a a a      | % 19
    a2 a4 d      | % 20
    d a b c      | % 21
    d a a b      | % 22
    b c b b      | % 23
    b2. d4      | % 24
    d a b c      | % 25
    d a a b      | % 26
    b c b b      | % 27
    b2. cis4      | % 28
    b b b dis      | % 29
    e2 ais,4 b      | % 30
    cis b b a      | % 31
    a2. s4 \bar "|." 
}% end of last bar in partorvoice

 

AObvoiceGA = \relative c'{
    \set Staff.instrumentName = #"Oboe 3"
    \set Staff.shortInstrumentName = #"Ob 3"
    \clef treble
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    d4     d fis g a      | % 1
    b2 g4 g      | % 2
    fis fis e e      | % 3
    fis2. a4      | % 4
    e gis a ais      | % 5
    fis2 fis4 fis      | % 6
    e fis8 d' d4 cis      | % 7
    fis,2. d4      | % 8
    d fis g a      | % 9
    b2 g4 g      | % 10
    fis fis e e      | % 11
    fis2. a4      | % 12
    e gis a ais      | % 13
    fis2 fis4 fis      | % 14
    e fis8 d' d4 cis      | % 15
    fis,2. e4      | % 16
    e e fis g8 e      | % 17
    fis2 fis4 e      | % 18
    e e fis g8 e      | % 19
    fis2 fis4 a      | % 20
    a fis g a      | % 21
    g e d fis      | % 22
    g a fis fis      | % 23
    g2. a4      | % 24
    a fis g a      | % 25
    g e d fis      | % 26
    g a fis fis      | % 27
    g2. fis4      | % 28
    d fis g a      | % 29
    b2 e,8 fis g4      | % 30
    fis fis e e      | % 31
    fis2. s4 \bar "|." 
}% end of last bar in partorvoice

 

AVnvoiceHA = \relative c'{
    \set Staff.instrumentName = #"Violin 1"
    \set Staff.shortInstrumentName = #"Vn 1"
    \clef treble
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    fis'4     fis d e fis      | % 1
    g2 e4\fermata  e      | % 2
    e d d cis      | % 3
    d2.\fermata  e4      | % 4
    e e e fis      | % 5
    d2 d4\fermata  d      | % 6
    cis d e e      | % 7
    d2.\fermata  fis4      | % 8
    fis d e fis      | % 9
    g2 e4\fermata  e      | % 10
    e d d cis      | % 11
    d2.\fermata  e4      | % 12
    e e e fis      | % 13
    d2 d4\fermata  d      | % 14
    cis d e e      | % 15
    d2.\fermata  cis4      | % 16
    cis cis cis cis      | % 17
    d2 d4\fermata  cis      | % 18
    cis cis cis cis      | % 19
    d2 d4\fermata  fis      | % 20
    fis d e fis      | % 21
    g2 fis4 fis      | % 22
    e fis dis dis      | % 23
    e2.\fermata  fis4      | % 24
    fis d e fis      | % 25
    g2 fis4 fis      | % 26
    e fis dis dis      | % 27
    e2.\fermata  fis4      | % 28
    fis d e fis      | % 29
    g2 e4 e      | % 30
    e d d cis      | % 31
    d2.\fermata  s4 \bar "|." 
}% end of last bar in partorvoice

 

AVnvoiceIA = \relative c'{
    \set Staff.instrumentName = #"Violin 2"
    \set Staff.shortInstrumentName = #"Vn 2"
    \clef treble
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    a'4     a fis g a      | % 1
    b2 g4 g      | % 2
    fis fis e a      | % 3
    a2. a4      | % 4
    e gis a ais      | % 5
    b2 b4 fis      | % 6
    e fis g8 a16 b a8 e      | % 7
    fis2. a4      | % 8
    a fis g a      | % 9
    b2 g4 g      | % 10
    fis fis e a      | % 11
    a2. a4      | % 12
    e gis a ais      | % 13
    b2 b4 fis      | % 14
    e fis g8 a16 b a8 e      | % 15
    fis2. e4      | % 16
    a a a a      | % 17
    a2 a4 e      | % 18
    a a a a      | % 19
    a2 a4 a      | % 20
    a fis g a      | % 21
    g a a b      | % 22
    g a fis fis      | % 23
    g2. a4      | % 24
    a fis g a      | % 25
    g a a b      | % 26
    g a fis fis      | % 27
    g2. fis4      | % 28
    fis fis e dis      | % 29
    e fis g g      | % 30
    fis fis e e      | % 31
    fis2. s4 \bar "|." 
}% end of last bar in partorvoice

 

AVlavoiceJA = \relative c'{
    \set Staff.instrumentName = #"Viola"
    \set Staff.shortInstrumentName = #"Vla"
    \clef alto
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    d4     d a b c      | % 1
    d2 c4 c      | % 2
    cis d b e      | % 3
    fis2. cis4      | % 4
    b8 cis d4 cis cis      | % 5
    d8 e fis4 fis b,      | % 6
    g a8 d d4 cis      | % 7
    a2. d4      | % 8
    d a b c      | % 9
    d2 c4 c      | % 10
    cis d b e      | % 11
    fis2. cis4      | % 12
    b8 cis d4 cis cis      | % 13
    d8 e fis4 fis b,      | % 14
    g a8 d d4 cis      | % 15
    a2. a4      | % 16
    e' e fis g8 e      | % 17
    fis2 fis4 a,      | % 18
    e' e fis g8 e      | % 19
    fis2 fis4 d      | % 20
    d a b c      | % 21
    d a d fis      | % 22
    b, c b b      | % 23
    b2. d4      | % 24
    d a b c      | % 25
    d a d fis      | % 26
    b, c b b      | % 27
    b2. cis4      | % 28
    d fis b, a      | % 29
    b2 ais4 b      | % 30
    cis b b a      | % 31
    a2. s4 \bar "|." 
}% end of last bar in partorvoice

 

ASvoiceKA = \relative c'{
    \set Staff.instrumentName = #"Soprano"
    \set Staff.shortInstrumentName = #"S."
    \clef treble
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    fis'4     fis d e fis      | % 1
    g2 e4\fermata  e      | % 2
    e d d cis      | % 3
    d2.\fermata  e4      | % 4
    e e e fis      | % 5
    d2 d4\fermata  d      | % 6
    cis d e e      | % 7
    d2.\fermata  fis4      | % 8
    fis d e fis      | % 9
    g2 e4\fermata  e      | % 10
    e d d cis      | % 11
    d2.\fermata  e4      | % 12
    e e e fis      | % 13
    d2 d4\fermata  d      | % 14
    cis d e e      | % 15
    d2.\fermata  cis4      | % 16
    cis cis cis cis      | % 17
    d2 d4\fermata  cis      | % 18
    cis cis cis cis      | % 19
    d2 d4\fermata  fis      | % 20
    fis d e fis      | % 21
    g2 fis4 fis      | % 22
    e fis dis dis      | % 23
    e2.\fermata  fis4      | % 24
    fis d e fis      | % 25
    g2 fis4 fis      | % 26
    e fis dis dis      | % 27
    e2.\fermata  fis4      | % 28
    fis d e fis      | % 29
    g2 e4 e      | % 30
    e d d cis      | % 31
    d2.\fermata  s4 \bar "|." 
}% end of last bar in partorvoice

 

AAvoiceLA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    a'4     a fis g a      | % 1
    b2 g4 g      | % 2
    fis fis e a      | % 3
    a2. a4      | % 4
    e gis a ais      | % 5
    b2 b4 fis      | % 6
    e fis g8 a16 b a8 e      | % 7
    fis2. a4      | % 8
    a fis g a      | % 9
    b2 g4 g      | % 10
    fis fis e a      | % 11
    a2. a4      | % 12
    e gis a ais      | % 13
    b2 b4 fis      | % 14
    e fis g8 a16 b a8 e      | % 15
    fis2. e4      | % 16
    a a a a      | % 17
    a2 a4 e      | % 18
    a a a a      | % 19
    a2 a4 a      | % 20
    a fis g a      | % 21
    g a a b      | % 22
    g a fis fis      | % 23
    g2. a4      | % 24
    a fis g a      | % 25
    g a a b      | % 26
    g a fis fis      | % 27
    g2. fis4      | % 28
    fis fis e dis      | % 29
    e fis g g      | % 30
    fis fis e e      | % 31
    fis2. s4 \bar "|." 
}% end of last bar in partorvoice

 

ATvoiceMA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    d'4     d a b c      | % 1
    d2 c4 c      | % 2
    cis d b e      | % 3
    fis2. cis4      | % 4
    b8 cis d4 cis cis      | % 5
    d8 e fis4 fis b,      | % 6
    g a8 d d4 cis      | % 7
    a2. d4      | % 8
    d a b c      | % 9
    d2 c4 c      | % 10
    cis d b e      | % 11
    fis2. cis4      | % 12
    b8 cis d4 cis cis      | % 13
    d8 e fis4 fis b,      | % 14
    g a8 d d4 cis      | % 15
    a2. a4      | % 16
    e' e fis g8 e      | % 17
    fis2 fis4 a,      | % 18
    e' e fis g8 e      | % 19
    fis2 fis4 d      | % 20
    d a b c      | % 21
    d a d fis      | % 22
    b, c b b      | % 23
    b2. d4      | % 24
    d a b c      | % 25
    d a d fis      | % 26
    b, c b b      | % 27
    b2. cis4      | % 28
    d fis b, a      | % 29
    b2 ais4 b      | % 30
    cis b b a      | % 31
    a2. s4 \bar "|." 
}% end of last bar in partorvoice

 

ABvoiceNA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    d4     d' c b a      | % 1
    g2 c,4 b'      | % 2
    ais b gis a      | % 3
    d,2. a'4      | % 4
    gis e a fis      | % 5
    b2 b4 b      | % 6
    e, d a' a,      | % 7
    d2. d4      | % 8
    d' c b a      | % 9
    g2 c,4 b'      | % 10
    ais b gis a      | % 11
    d,2. a'4      | % 12
    gis e a fis      | % 13
    b2 b4 b      | % 14
    e, d a' a,      | % 15
    d2. a4      | % 16
    a' g fis a      | % 17
    d,2 d4 a      | % 18
    a' g fis a      | % 19
    d,2 d4 d      | % 20
    d' c b a      | % 21
    b cis d dis,      | % 22
    e a b b,      | % 23
    e2. d4      | % 24
    d' c b a      | % 25
    b cis d dis,      | % 26
    e a b b,      | % 27
    e2. ais4      | % 28
    b a g fis      | % 29
    e d cis b      | % 30
    ais b gis a      | % 31
    d,2. s4 \bar "|." 
}% end of last bar in partorvoice

 

AContvoiceOA = \relative c{
    \set Staff.instrumentName = #"Continuo"
    \set Staff.shortInstrumentName = #"Cont"
    \clef bass
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    d4     d' c b a      | % 1
    g2 c,4 b      | % 2
    ais b gis a      | % 3
    d,2. a''4      | % 4
    gis e a fis      | % 5
    b2 b4 b      | % 6
    e, d a' a,      | % 7
    d2. d4      | % 8
    d' c b a      | % 9
    g2 c,4 b      | % 10
    ais b gis a      | % 11
    d,2. a''4      | % 12
    gis e a fis      | % 13
    b2 b4 b      | % 14
    e, d a' a,      | % 15
    d2. a4      | % 16
    a' g fis a      | % 17
    d,2 d4 a      | % 18
    a' g fis a      | % 19
    d,2 d4 d      | % 20
    d' c b a      | % 21
    b cis d dis,      | % 22
    e a b b,      | % 23
    e2. d4      | % 24
    d' c b a      | % 25
    b cis d dis,      | % 26
    e a b b,      | % 27
    e2. ais4      | % 28
    b a g fis      | % 29
    e d cis b      | % 30
    ais b gis a      | % 31
    d2. s4 \bar "|." 
}% end of last bar in partorvoice



\addQuote "articulations"   { \AObvoiceEA }
\book {
\layout { \scorepaper }
\score {
<<
\part ATrvoiceAA { \quotearticulations \ATrvoiceAA \AObvoiceEA } { \transpose d c \ATrvoiceAA }
\part ATrvoiceBA { \quotearticulations \ATrvoiceBA \AObvoiceEA } { \transpose d c \ATrvoiceBA }
\part ATrvoiceCA { \quotearticulations \ATrvoiceCA \AObvoiceEA } { \transpose d c \ATrvoiceCA }
\part ATimpvoiceDA { \quotearticulations \ATimpvoiceDA \AObvoiceEA } { \transpose d c \ATimpvoiceDA }
\part AObvoiceEA { \AObvoiceEA } { \transpose d c \AObvoiceEA }
\part AObvoiceFA { \quotearticulations \AObvoiceFA \AObvoiceEA } { \transpose d c \AObvoiceFA }
\part AObvoiceGA { \quotearticulations \AObvoiceGA \AObvoiceEA } { \transpose d c \AObvoiceGA }
\part AVnvoiceHA { \AVnvoiceHA } { \transpose d c \AVnvoiceHA }
\part AVnvoiceIA { \quotearticulations \AVnvoiceIA \AObvoiceEA } { \transpose d c \AVnvoiceIA }
\part AVlavoiceJA { \quotearticulations \AVlavoiceJA \AObvoiceEA } { \transpose d c \AVlavoiceJA }
\part ASvoiceKA { \ASvoiceKA } { \transpose d c \ASvoiceKA }
\part AAvoiceLA { \quotearticulations \AAvoiceLA \AObvoiceEA } { \transpose d c \AAvoiceLA }
\part ATvoiceMA { \quotearticulations \ATvoiceMA \AObvoiceEA } { \transpose d c \ATvoiceMA }
\part ABvoiceNA { \quotearticulations \ABvoiceNA \AObvoiceEA } { \transpose d c \ABvoiceNA }
\part AContvoiceOA { \quotearticulations \AContvoiceOA \AObvoiceEA } { \transpose d c \AContvoiceOA }
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
\new Voice = AObvoiceGA \AObvoiceGA
\new Voice = AVnvoiceHA \AVnvoiceHA
\new Voice = AVnvoiceIA \AVnvoiceIA
\new Voice = AVlavoiceJA \AVlavoiceJA
\new Voice = ASvoiceKA \ASvoiceKA
\new Voice = AAvoiceLA \AAvoiceLA
\new Voice = ATvoiceMA \ATvoiceMA
\new Voice = ABvoiceNA \ABvoiceNA
\new Voice = AContvoiceOA \AContvoiceOA
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
\part ATrvoiceAA { \quotearticulations \ATrvoiceAA \AObvoiceEA } { \transpose d c \ATrvoiceAA }
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
\part ATrvoiceBA { \quotearticulations \ATrvoiceBA \AObvoiceEA } { \transpose d c \ATrvoiceBA }
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
\part ATrvoiceCA { \quotearticulations \ATrvoiceCA \AObvoiceEA } { \transpose d c \ATrvoiceCA }
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
\part ATimpvoiceDA { \quotearticulations \ATimpvoiceDA \AObvoiceEA } { \transpose d c \ATimpvoiceDA }
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
\part AObvoiceFA { \quotearticulations \AObvoiceFA \AObvoiceEA } { \transpose d c \AObvoiceFA }
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
#(define output-suffix "Obo")
\book {
\layout { \partpaper }
\score {
<<
\part AObvoiceGA { \quotearticulations \AObvoiceGA \AObvoiceEA } { \transpose d c \AObvoiceGA }
>>
}
\score {
<<
\new Voice = AObvoiceGA \AObvoiceGA
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
#(define output-suffix "Violi")
\book {
\layout { \partpaper }
\score {
<<
\part AVnvoiceIA { \quotearticulations \AVnvoiceIA \AObvoiceEA } { \transpose d c \AVnvoiceIA }
>>
}
\score {
<<
\new Voice = AVnvoiceIA \AVnvoiceIA
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
\part AVlavoiceJA { \quotearticulations \AVlavoiceJA \AObvoiceEA } { \transpose d c \AVlavoiceJA }
>>
}
\score {
<<
\new Voice = AVlavoiceJA \AVlavoiceJA
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
\part ASvoiceKA { \ASvoiceKA } { \transpose d c \ASvoiceKA }
>>
}
\score {
<<
\new Voice = ASvoiceKA \ASvoiceKA
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
\part AAvoiceLA { \quotearticulations \AAvoiceLA \AObvoiceEA } { \transpose d c \AAvoiceLA }
>>
}
\score {
<<
\new Voice = AAvoiceLA \AAvoiceLA
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
\part ATvoiceMA { \quotearticulations \ATvoiceMA \AObvoiceEA } { \transpose d c \ATvoiceMA }
>>
}
\score {
<<
\new Voice = ATvoiceMA \ATvoiceMA
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
\part ABvoiceNA { \quotearticulations \ABvoiceNA \AObvoiceEA } { \transpose d c \ABvoiceNA }
>>
}
\score {
<<
\new Voice = ABvoiceNA \ABvoiceNA
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
\part AContvoiceOA { \quotearticulations \AContvoiceOA \AObvoiceEA } { \transpose d c \AContvoiceOA }
>>
}
\score {
<<
\new Voice = AContvoiceOA \AContvoiceOA
>>

        \midi   { 
        \context { \Staff  \remove "Staff_performer" }
        \context { \Voice  \consists "Staff_performer" }
        } 
   }
} %%end of book
