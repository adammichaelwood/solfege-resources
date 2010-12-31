
% BWV 43 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 43"
composer = "Johann Sebastien Bach"
tagline = "Created by Michael Ellis from digital transcriptions by Margaret Greentree (jsbchorales.net)"
}
ASvoiceAA = \relative c'{
    \set Staff.instrumentName = #"Soprano"
    \set Staff.shortInstrumentName = #"S."
    \clef treble
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 3/4 
    g'4 g a      | % 1
    b4. c8 d4      | % 2
    d d cis      | % 3
    d2\fermata  b4      | % 4
    c2 b4      | % 5
    a2.      | % 6
    g4 fis2      | % 7
    g2.\fermata       | % 8
    g4 g a      | % 9
    b4. c8 d4      | % 10
    d d cis      | % 11
    d2\fermata  b4      | % 12
    c2 b4      | % 13
    a2.      | % 14
    g4 fis2      | % 15
    g2.\fermata       | % 16
    a4 a b      | % 17
    c2 c4      | % 18
    b4. a8 b4      | % 19
    a2.\fermata       | % 20
    b4 b b      | % 21
    c4. d8 e4      | % 22
    e dis dis      | % 23
    e2\fermata  fis4      | % 24
    g2 b,4      | % 25
    c2 b4      | % 26
    a a\fermata  d      | % 27
    e4. d8 c4      | % 28
    b a2      | % 29
    g2.\fermata  \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 3/4 
    d4 e fis      | % 1
    g2.      | % 2
    g4 e e      | % 3
    fis2 g4      | % 4
    e2 d4      | % 5
    d2.      | % 6
    b4 d2      | % 7
    d2.      | % 8
    d4 e fis      | % 9
    g2.      | % 10
    g4 e e      | % 11
    fis2 g4      | % 12
    e2 d4      | % 13
    d2.      | % 14
    b4 d2      | % 15
    d2.      | % 16
    d4 d d      | % 17
    c2 e4      | % 18
    e2 e4      | % 19
    e2.      | % 20
    e4 gis gis      | % 21
    a2.      | % 22
    a4 fis fis      | % 23
    g2 a4      | % 24
    b2 g4      | % 25
    g2 g4      | % 26
    fis fis g      | % 27
    g4. fis8 e4      | % 28
    d d2      | % 29
    d2. \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 3/4 
    b'4 b d      | % 1
    d4. c8 b4      | % 2
    b a a      | % 3
    a2 g4      | % 4
    g2 g4      | % 5
    fis2.      | % 6
    e4 a2      | % 7
    b2.      | % 8
    b4 b d      | % 9
    d4. c8 b4      | % 10
    b a a      | % 11
    a2 g4      | % 12
    g2 g4      | % 13
    fis2.      | % 14
    e4 a2      | % 15
    b2.      | % 16
    fis4 fis gis      | % 17
    a2 a4      | % 18
    gis4. a8 gis4      | % 19
    a2.      | % 20
    gis4 b e      | % 21
    e4. d8 c4      | % 22
    c b b      | % 23
    b2 d4      | % 24
    d2 d4      | % 25
    e2 d4      | % 26
    d d d      | % 27
    c4. a8 g4      | % 28
    g g fis      | % 29
    b2. \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 3/4 
    g'4 e d      | % 1
    g4. a8 b4      | % 2
    g a a,      | % 3
    d2 g4      | % 4
    c,2 g4      | % 5
    d'2.      | % 6
    e4 d2      | % 7
    g,2.      | % 8
    g'4 e d      | % 9
    g4. a8 b4      | % 10
    g a a,      | % 11
    d2 g4      | % 12
    c,2 g4      | % 13
    d'2.      | % 14
    e4 d2      | % 15
    g,2.      | % 16
    d'4 d b      | % 17
    a2 c4      | % 18
    e2 e4      | % 19
    a,2.      | % 20
    e'4 e e      | % 21
    a4. b8 c4      | % 22
    a b b      | % 23
    e,2 d4      | % 24
    g2 g4      | % 25
    c,2 g4      | % 26
    d' d b      | % 27
    c4. d8 e4      | % 28
    g d2      | % 29
    g,2. \bar "|."\bar "|." 
}% end of last bar in partorvoice



\addQuote "articulations"   { \ASvoiceAA }
\book {
\layout { \scorepaper }
\score {
<<
\part ASvoiceAA { \ASvoiceAA } { \transpose g c \ASvoiceAA }
\part AAvoiceBA { \quotearticulations \AAvoiceBA \ASvoiceAA } { \transpose g c \AAvoiceBA }
\part ATvoiceCA { \quotearticulations \ATvoiceCA \ASvoiceAA } { \transpose g c \ATvoiceCA }
\part ABvoiceDA { \quotearticulations \ABvoiceDA \ASvoiceAA } { \transpose g c \ABvoiceDA }
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
\part ASvoiceAA { \ASvoiceAA } { \transpose g c \ASvoiceAA }
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
\part AAvoiceBA { \quotearticulations \AAvoiceBA \ASvoiceAA } { \transpose g c \AAvoiceBA }
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
\part ATvoiceCA { \quotearticulations \ATvoiceCA \ASvoiceAA } { \transpose g c \ATvoiceCA }
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
\part ABvoiceDA { \quotearticulations \ABvoiceDA \ASvoiceAA } { \transpose g c \ABvoiceDA }
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
