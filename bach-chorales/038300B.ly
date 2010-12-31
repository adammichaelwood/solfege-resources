
% BWV 383 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 383"
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
    g'4 g a b      | % 1
    c c b2      | % 2
    a\fermata  b4 c      | % 3
    d a g f      | % 4
    e1\fermata       | % 5
    g4 g a b      | % 6
    c c b2      | % 7
    a\fermata  b4 c      | % 8
    d a g f      | % 9
    e1\fermata       | % 10
    r4 d e f      | % 11
    g4. f8 e4 d      | % 12
    c2\fermata  r4 c      | % 13
    g' g a b      | % 14
    c c b2      | % 15
    a\fermata  b4 c      | % 16
    d a g f      | % 17
    e2\fermata  r4 a      | % 18
    g e f g8. f16      | % 19
    e2\fermata  r4 a      | % 20
    g e f g      | % 21
    e2\fermata  a4 g      | % 22
    a b c b8 a      | % 23
    g4 f e\fermata  d      | % 24
    a'2 g4 f      | % 25
    e2\fermata  a4 g      | % 26
    a b c8 b a4      | % 27
    g2\fermata  c4 b      | % 28
    d a g f      | % 29
    e2\fermata  r4 d      | % 30
    a'2 g4 f      | % 31
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
    e4 e e e      | % 1
    e8 fis16 gis a4 a gis      | % 2
    e2 g4 g      | % 3
    a8 g f4~ f8 e~ e d16 c      | % 4
    b1      | % 5
    e4 e e e      | % 6
    e8 fis16 gis a4 a gis      | % 7
    e2 g4 g      | % 8
    a8 g f4~ f8 e~ e d16 c      | % 9
    b1      | % 10
    r4 b c8 b c4      | % 11
    d8 e~ e d~ d c~ c b      | % 12
    g2 r4 g      | % 13
    c~ c8 e f4~ f8 e      | % 14
    e a16 gis a4~ a8 gis16 fis gis4      | % 15
    e2 gis4 a~      | % 16
    a8 g f4 e~ e8 d      | % 17
    cis2 r4 f8 e      | % 18
    d4~ d8 c d4 d      | % 19
    c2 r4 e      | % 20
    d~ d8 c16 b a4 d8 b      | % 21
    c2 e4 e      | % 22
    e e e8 f g f~      | % 23
    f e~ e d16 c b4 bes      | % 24
    c f~ f8 e~ e d      | % 25
    c2 e4~ e8 d      | % 26
    c4 d e8 g4 fis8      | % 27
    g2 g4 g      | % 28
    a8 g f e d e a, d      | % 29
    cis2 r4 d      | % 30
    d c8 d e4~ e8 d16 c      | % 31
    b1 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef "treble_8"
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    b'4 b c b      | % 1
    a4. e'8 f d b e16 d      | % 2
    c2 d4 e      | % 3
    f8 e d4~ d8 c16 bes a8 b16 a      | % 4
    gis1      | % 5
    b4 b c b      | % 6
    a4. e'8 f d b e16 d      | % 7
    c2 d4 e      | % 8
    f8 e d4~ d8 c16 bes a8 b16 a      | % 9
    gis1      | % 10
    r4 g g c8 a      | % 11
    b4 c8 g g4~ g8. f16      | % 12
    e2 r4 g      | % 13
    g c c8 d d4      | % 14
    c8 d e4~ e8 b e d      | % 15
    c2 e4 e      | % 16
    d~ d8 c bes4 a      | % 17
    a2 r4 c~      | % 18
    c8 b a4 a g8 b      | % 19
    c2 r4 c      | % 20
    b g f8 e d g      | % 21
    g2 c4 b      | % 22
    c b a d      | % 23
    g,8 c16 b a8 b16 a gis4 g      | % 24
    a d~ d8 b c g      | % 25
    g2 c4 c8 bes      | % 26
    a g f4 g8 e' a, d16 c      | % 27
    b2 e4 d8 e      | % 28
    f e d c b cis d a      | % 29
    a2 r4 a8 g      | % 30
    f e f4 e8 a a b16 a      | % 31
    gis1 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    e4 e8 d c b a gis      | % 1
    a4. c8 d b e4      | % 2
    a,2 g'8 f e4      | % 3
    d8 e f4 b,8 c d4      | % 4
    e1      | % 5
    e4 e8 d c b a gis      | % 6
    a4. c8 d b e4      | % 7
    a,2 g'8 f e4      | % 8
    d8 e f4 b,8 c d4      | % 9
    e1      | % 10
    r4 g8 f e4 a      | % 11
    g8 g, a b c4 g      | % 12
    c,2 r4 e'8 f      | % 13
    e d e c f4 gis,      | % 14
    a8 b c d e2      | % 15
    a, e'4 a8 g      | % 16
    f e d4~ d8 cis d f      | % 17
    a2 r4 f,      | % 18
    g a d8 c b g      | % 19
    a2 r4 a      | % 20
    b c d b8 g      | % 21
    c2 a8 c e d      | % 22
    c b a gis a4 b      | % 23
    c d e g      | % 24
    f8 e d c b g a b      | % 25
    c2 c8 d e4      | % 26
    f8 e d4 c d      | % 27
    e2 e8 f g4      | % 28
    d8 e f4~ f8 e d f      | % 29
    a2 r4 f8 e      | % 30
    d4 a8 b c cis d4      | % 31
    e1 \bar "|."\bar "|." 
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
