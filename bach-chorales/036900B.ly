
% BWV 369 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 369"
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
    \time 4/4 
    \partial 4
    b'4     b b b e      | % 1
    d4. c8 b4\fermata  b8 c      | % 2
    d4 fis, g a      | % 3
    b2.\fermata  b4      | % 4
    b b b e      | % 5
    d4. c8 b4\fermata  b8 c      | % 6
    d4 fis, g a      | % 7
    b2.\fermata  a4      | % 8
    a a a a      | % 9
    b2 a4\fermata  a      | % 10
    b8 cis d4 d cis      | % 11
    d2.\fermata  d4      | % 12
    b b c d      | % 13
    e2 b4\fermata  b      | % 14
    a g8 fis fis4. e8      | % 15
    e2.\fermata  s4 \bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    e4     fis e8 dis e fis g4~      | % 1
    g fis d d      | % 2
    d d8 c b4 e      | % 3
    dis2. e4      | % 4
    fis e8 dis e fis g4~      | % 5
    g fis d d      | % 6
    d d8 c b4 e      | % 7
    dis2. e4      | % 8
    d d8 cis d e fis4      | % 9
    g2 fis4 a      | % 10
    g a a4. g8      | % 11
    fis2. fis4      | % 12
    d g g f      | % 13
    e2 e4 e      | % 14
    e e e dis      | % 15
    b2. s4 \bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    g'4     fis8 g a4 g c8 b      | % 1
    a g a4 g g      | % 2
    a a g8 fis e4      | % 3
    fis2. g4      | % 4
    fis8 g a4 g c8 b      | % 5
    a g a4 g g      | % 6
    a a g8 fis e4      | % 7
    fis2. e4      | % 8
    fis8 e fis g a4 d      | % 9
    d2 d4 d      | % 10
    d d8 e fis4 e      | % 11
    d2. a4      | % 12
    g d' e b~      | % 13
    b a g b      | % 14
    e, c' b8 g a4      | % 15
    gis2. s4 \bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    e4     dis b e8 d c4      | % 1
    d2 g,4 g'      | % 2
    fis8 e d4 e8 d c4      | % 3
    b2. e4      | % 4
    dis b e8 d c4      | % 5
    d2 g,4 g'      | % 6
    fis8 e d4 e8 d c4      | % 7
    b2. cis4      | % 8
    d d8 e fis4 d      | % 9
    g,8 a b c d4 fis      | % 10
    g fis8 g a4 a,      | % 11
    d2. d4      | % 12
    g8 a g f e f e d      | % 13
    c b c d e4 g,      | % 14
    c b8 a b4 b      | % 15
    e,2. s4 \bar "|." 
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
