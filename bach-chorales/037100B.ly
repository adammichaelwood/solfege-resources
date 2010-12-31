
% BWV 371 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 371"
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
    g'2 a      | % 1
    b\fermata  a4 c      | % 2
    c b a a      | % 3
    g2\fermata  a4 a      | % 4
    g f e e      | % 5
    d2\fermata  d4 a'      | % 6
    a g a b      | % 7
    c b a2      | % 8
    g\fermata  g4 f8 g      | % 9
    a4 g g f      | % 10
    e1\fermata  
    \bar "||"     | % 11
    e2 d      | % 12
    g a4 b      | % 13
    c c c2\fermata       | % 14
    c4 c b a      | % 15
    g a b b      | % 16
    b2\fermata  e,4 d      | % 17
    g a8 b c4 c      | % 18
    c2\fermata  c4 c      | % 19
    b a g\fermata  a      | % 20
    a g f e      | % 21
    d2\fermata  d4 a'      | % 22
    a g a b      | % 23
    c b a2      | % 24
    g\fermata  g4 f8 g      | % 25
    a4 g g f      | % 26
    e1\fermata  
    \bar "||"     | % 27
    b'2 c      | % 28
    d\fermata  r4 b      | % 29
    d c b a      | % 30
    g2\fermata  b4 c      | % 31
    d b8 c d4 c      | % 32
    b a g\fermata  a      | % 33
    a g f e      | % 34
    d2\fermata  d4 a'      | % 35
    a g a b      | % 36
    c b a2      | % 37
    g\fermata  g4 f8 g      | % 38
    a4 g g f      | % 39
    e1\fermata  \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    e8 f g4~ g8 fis16 e fis4      | % 1
    g2 f4 e      | % 2
    a g~ g8 fis16 e fis4      | % 3
    d2 f8 e d cis      | % 4
    d cis d4~ d8 cis16 b cis4      | % 5
    a2 d4 e      | % 6
    f16 e d4 e16 d c8 f4 e8~      | % 7
    e16 fis g4 g8~ g fis16 e fis4      | % 8
    d2 e4 d      | % 9
    c8 d e4 e d      | % 10
    c b8 a b2 
    \bar "||"     | % 11
    b4 c8 b a4 b8 c      | % 12
    d f e d c d16 e f4      | % 13
    e16 f g4 f8~ f e16 d e4      | % 14
    e16 fis g4 fis8~ fis e16 d cis b a8      | % 15
    d c4 a'8~ a g fis16 e fis8      | % 16
    e2 c4. b8      | % 17
    c d16 e f e f8 e4 f~      | % 18
    f8 e16 d e4 e8 a16 gis a4~      | % 19
    a8 g4 fis8 d4 f8 g      | % 20
    a g16 f f8 e~ e d4 cis8      | % 21
    a2 a4 d16 e f8      | % 22
    f4. e8~ e16 d e g f e fis a      | % 23
    g8 d d g~ g fis16 e fis4      | % 24
    d2 e4 f8 e      | % 25
    f4~ f8 e16 d e4. d16 c      | % 26
    b8 d c2 b4 
    \bar "||"     | % 27
    g'2 g      | % 28
    g r4 g      | % 29
    g4. a4 g fis8      | % 30
    d2 g4 a~      | % 31
    a8 g16 fis g4 g4. fis8      | % 32
    b,16 c d8 e d16 c b4 d      | % 33
    d8 ees d cis d4. cis8      | % 34
    a2 d4 e      | % 35
    a,8 fis'4 e8 fis4. e16 dis      | % 36
    e8 d4 g fis16 e fis4      | % 37
    d2 d8 e d e      | % 38
    f e d g cis, a d4      | % 39
    cis c b2 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef "treble_8"
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    b'4. c16 d e8 a, d4      | % 1
    d2 d4 c8 d      | % 2
    e2~ e8 c a d16 c      | % 3
    b2 d8 c16 bes a4      | % 4
    bes a8 d bes g e a16 g      | % 5
    f2 f4 e8 a      | % 6
    a d16 c b8 c16 b a8 c d c16 b      | % 7
    a8 g16 a b8 c16 d e8 c a d      | % 8
    b2 c4. bes8      | % 9
    a b c bes a bes4 a8      | % 10
    a4 gis8 fis gis2 
    \bar "||"     | % 11
    g4 a8 g fis4 g~      | % 12
    g8 d' c b a4. g16 f      | % 13
    g8 c16 bes a4 g2      | % 14
    a4 a b8 g e' d16 c      | % 15
    b8 c16 bes a8 d16 c b8 d~ d16 c b a      | % 16
    g2 g4 g      | % 17
    g c8 d g,4 a~      | % 18
    a8 g16 f g4 c8 d e4~      | % 19
    e8 d e d16 c b4 d~      | % 20
    d8 cis d a a4 bes8 a16 g      | % 21
    f2 f8 g a d      | % 22
    d b g c16 b a4. g16 fis      | % 23
    e8 a b e~ e c a d16 c      | % 24
    b2 c4. bes8      | % 25
    c16 bes c8 d g, c bes a b16 a      | % 26
    gis4 a2 gis4 
    \bar "||"     | % 27
    e'2 e      | % 28
    b r4 d      | % 29
    d e8 d d4 e8 d16 c      | % 30
    b2 e4 e      | % 31
    d d8 c b4. a8~      | % 32
    a g4 fis8 g4 f8 g      | % 33
    a c4 bes8~ bes b e, a16 g      | % 34
    fis2 b4 cis      | % 35
    d4. c16 b c8 fis,~ fis g16 a      | % 36
    g8 a4 g8 e'16 d c4 b16 a      | % 37
    b2 b8 bes a g      | % 38
    f4. e16 d e8 f16 g a8 b~      | % 39
    b a16 gis a4~ a8 gis16 fis gis4 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    e4. d8 c4 d      | % 1
    g,2 d'4 a8 b      | % 2
    c d e d c a d4      | % 3
    g,2 d'8 e f4~      | % 4
    f8 e f bes g e a a,      | % 5
    d2 d4. cis8      | % 6
    d f4 e8 f a4 gis8      | % 7
    a e4 d8 c a d4      | % 8
    g,2 c4 d8 e      | % 9
    f4 c cis d      | % 10
    e1 
    \bar "||"     | % 11
    e8 d c2 b8 a      | % 12
    b4 e~ e d      | % 13
    e f c2      | % 14
    a4 d g,8 g'4 f8~      | % 15
    f e f fis g b,16 c d8 dis      | % 16
    e2 e8 c g' f      | % 17
    e4. d8 c b a b      | % 18
    c2 a8 b c d      | % 19
    e b c d g,4 d'8 e      | % 20
    f a, b cis d f, g a      | % 21
    d,2 d'8 e f d      | % 22
    bes b c4~ c8 cis d dis      | % 23
    e fis g e c a d4      | % 24
    g,2 c8 bes a g      | % 25
    f a bes b c cis d4~      | % 26
    d8 c16 b c8 d e2 
    \bar "||"     | % 27
    e,4 e'2 d8 c      | % 28
    g'2 r4 g,8 a      | % 29
    b4 e,8 fis g b c d      | % 30
    g,2 e8 e' d c      | % 31
    b b'4 a8 g fis e4~      | % 32
    e8 b c d g,4 d'8 e      | % 33
    f fis g4~ g8 gis a a,      | % 34
    d2 g,8 g'4 fis16 e      | % 35
    fis8 b e,4~ e8 dis16 cis dis8 b      | % 36
    e fis g e c a d4      | % 37
    g,2 g'8 cis, d4~      | % 38
    d8 c b bes a4. gis8      | % 39
    a b c d e2 \bar "|."\bar "|." 
}% end of last bar in partorvoice



\addQuote "articulations"   { \ASvoiceAA }
\book {
\layout { \scorepaper }
\score {
<<
\part ASvoiceAA { \ASvoiceAA } { \transpose c c \ASvoiceAA }
\part AAvoiceBA { \quotearticulations \AAvoiceBA \ASvoiceAA } { \transpose c c \AAvoiceBA }
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
\part AAvoiceBA { \quotearticulations \AAvoiceBA \ASvoiceAA } { \transpose c c \AAvoiceBA }
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
