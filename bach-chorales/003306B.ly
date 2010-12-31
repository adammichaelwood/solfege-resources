
% BWV 33 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 33"
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
    c'4     g a8 b c d e4      | % 1
    d c2 b4      | % 2
    c2.\fermata  e4      | % 3
    d c b8 a g4      | % 4
    a b8 c d4 c8 b      | % 5
    c4 b a\fermata  c      | % 6
    g a8 b c d e4      | % 7
    d c2 b4      | % 8
    c2.\fermata  e4      | % 9
    d c b8 a g4      | % 10
    a b8 c d4 c8 b      | % 11
    c4 b a\fermata  e'      | % 12
    f8 e d4 e8 d c4      | % 13
    d e a,\fermata  e'      | % 14
    f8 e d4 e8 d c4      | % 15
    d e a,\fermata  c      | % 16
    b a g a      | % 17
    f8 e f4 e\fermata  a      | % 18
    g c2 b4      | % 19
    c\fermata  g a b      | % 20
    c8 d e4 d c      | % 21
    b b a\fermata  s4 \bar "|." 
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
    e4     e8 d c d e f g4      | % 1
    g4. fis8 g4 g      | % 2
    g2. g4      | % 3
    g8 f e4 e2~      | % 4
    e8 fis gis a b4 a      | % 5
    a gis e e      | % 6
    e8 d c d e f g4      | % 7
    g4. fis8 g2      | % 8
    g2. g4      | % 9
    g8 f e4 e2~      | % 10
    e8 fis gis a b4 a      | % 11
    a gis e a      | % 12
    a a gis e      | % 13
    a g f e      | % 14
    a a8 g g4 g      | % 15
    a b e, g      | % 16
    g8 fis e4 e8 g f e      | % 17
    d cis d4 cis c      | % 18
    d g8 f e4 d      | % 19
    e e fis gis      | % 20
    a e a2~      | % 21
    a4 gis e s4 \bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    a'8 b     c b a4 g g8 a      | % 1
    b a16 b c8 d e4 d      | % 2
    e2. c4      | % 3
    b4. a8 g a b4      | % 4
    c d8 e f e e4      | % 5
    f8 d b c16 d c4 a8 b      | % 6
    c b a4 g g8 a      | % 7
    b a c d e4 d      | % 8
    e2. c4      | % 9
    b4. a8 g a b4      | % 10
    c d8 e f e e4      | % 11
    f8 d b c16 d c4 c      | % 12
    c b8 a b4 c8 b      | % 13
    a4 a d b      | % 14
    c d c c      | % 15
    c b c e      | % 16
    d e b cis      | % 17
    a a a a      | % 18
    b8 a g2 g4      | % 19
    g e' d d      | % 20
    e8 d c b a b c d16 e      | % 21
    f4 e8 d cis4 s4 \bar "|." 
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
    a'4     e f e8 d c4      | % 1
    g' a g g      | % 2
    c,2. c4      | % 3
    g' a e4. d8      | % 4
    c c' b a gis4 a      | % 5
    d, e a, a'      | % 6
    e f e8 d c4      | % 7
    g' a g g      | % 8
    c,2. c4      | % 9
    g' a e4. d8      | % 10
    c c' b a gis4 a      | % 11
    d, e a, a'      | % 12
    d,8 e f4 e a8 g      | % 13
    f e d cis d4 gis      | % 14
    a b c e,      | % 15
    fis gis a e8 fis      | % 16
    g4 cis,8 dis e4 a,      | % 17
    d8 f e d a'4 f~      | % 18
    f e8 d e f g4      | % 19
    c, c' c8 d c b      | % 20
    a b a g f4. e8      | % 21
    d4 e a, s4 \bar "|." 
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
