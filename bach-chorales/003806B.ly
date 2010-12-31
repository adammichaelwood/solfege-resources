
% BWV 38 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 38"
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
    b'2 e,4 b'      | % 1
    c b8 a g4 a      | % 2
    b2\fermata  b      | % 3
    c4 d c8 b a4      | % 4
    g f e2\fermata       | % 5
    b' e,4 b'      | % 6
    c b8 a g4 a      | % 7
    b2\fermata  b      | % 8
    c4 d c8 b a4      | % 9
    g f e2\fermata       | % 10
    a g4 c      | % 11
    b a d8 c b4      | % 12
    a2\fermata  c      | % 13
    b4 c d g,      | % 14
    b a g2\fermata       | % 15
    g c4 b      | % 16
    a e g f      | % 17
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
    e2 e4 gis      | % 1
    a g8 fis e4 fis      | % 2
    gis2 gis      | % 3
    a4 b c f,      | % 4
    e d8 c b2      | % 5
    e e4 gis      | % 6
    a g8 fis e4 fis      | % 7
    gis2 gis      | % 8
    a4 b c f,      | % 9
    e d8 c b2      | % 10
    e d4 e8 fis      | % 11
    g4 a b8 a gis4      | % 12
    e2 a      | % 13
    g4 g g8 f e4      | % 14
    d c b2      | % 15
    e e4 e8 d      | % 16
    c4 c d2~      | % 17
    d4 c b2\fermata  \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    gis'2 a4 d      | % 1
    e d e8 d c4      | % 2
    b2 e      | % 3
    e4 f g c,      | % 4
    c8 b a4 gis2      | % 5
    gis a4 d      | % 6
    e d e8 d c4      | % 7
    b2 e      | % 8
    e4 f g c,      | % 9
    c8 b a4 gis2      | % 10
    a b4 c      | % 11
    d d8 e f4 b,      | % 12
    c2 e      | % 13
    e4 e d c      | % 14
    fis,8 g4 fis8 g2      | % 15
    g a4 gis      | % 16
    a g g a      | % 17
    b a gis2 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    d2 c4 b      | % 1
    a b c8 b a4      | % 2
    e'2 e      | % 3
    a4 g8 f e4 f      | % 4
    c d e2      | % 5
    d c4 b      | % 6
    a b c8 b a4      | % 7
    e'2 e      | % 8
    a4 g8 f e4 f      | % 9
    c d e2      | % 10
    c' b4 a      | % 11
    g f8 e d4 e      | % 12
    a,2 a'      | % 13
    e4 d8 c b4 c      | % 14
    d d g,2      | % 15
    c a4 e'      | % 16
    f c bes a      | % 17
    gis a e2 \bar "|."\bar "|." 
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
