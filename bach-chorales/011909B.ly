
% BWV 119 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 119"
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
    \partial 2
    g'2     a c      | % 1
    b a      | % 2
    c a      | % 3
    g\fermata  d'      | % 4
    d d      | % 5
    e2. c4      | % 6
    d2 c      | % 7
    b\fermata  r      | % 8
    r c      | % 9
    c c      | % 10
    b a      | % 11
    c a4. g8      | % 12
    g2\fermata  d'      | % 13
    d d      | % 14
    e2. c4      | % 15
    d2 c4. b8      | % 16
    b1\fermata       | % 17
    e4. d8 c4. b8      | % 18
    a2 b      | % 19
    c\breve\fermata  \bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    \partial 2
    e2     e4 d d2      | % 1
    d d      | % 2
    g4 e d2      | % 3
    d g      | % 4
    a a      | % 5
    gis2. e4      | % 6
    f2 fis      | % 7
    gis r      | % 8
    r a      | % 9
    g a4 g      | % 10
    f2 f      | % 11
    g2. f4      | % 12
    e2 fis      | % 13
    g2. b4      | % 14
    c2. e,4      | % 15
    a2 fis      | % 16
    g1      | % 17
    g4. f8 e4. d8      | % 18
    c2 d8 e f4      | % 19
    e\breve \bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    \partial 2
    b'2     a a      | % 1
    a4 g a2      | % 2
    g fis      | % 3
    b b      | % 4
    a4 c b a      | % 5
    b2. a4      | % 6
    a2 a      | % 7
    e' r      | % 8
    r e      | % 9
    e4 d c2      | % 10
    d c4 d      | % 11
    e2 c      | % 12
    c a      | % 13
    b4 c d g      | % 14
    g2. a4      | % 15
    d,2 d      | % 16
    d1      | % 17
    r4 e4. d8 c4~      | % 18
    c8 b a g f4 g      | % 19
    g\breve \bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    \partial 2
    e2     f fis      | % 1
    g g4 fis      | % 2
    e c d2      | % 3
    g, g'      | % 4
    fis f      | % 5
    e2. a4      | % 6
    d,2 dis      | % 7
    e r      | % 8
    r a      | % 9
    e f4 e      | % 10
    d e f2      | % 11
    c f,      | % 12
    c' c'      | % 13
    b4 a b g      | % 14
    c2. a4      | % 15
    fis2 d      | % 16
    g1      | % 17
    r4 c4. b8 a4~      | % 18
    a8 g f e d4 g      | % 19
    c,\breve \bar "|." 
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
