
% BWV 158 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 158"
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
    b'4     ais b8 cis d4 e      | % 1
    d cis b\fermata  b      | % 2
    g a b a8 g      | % 3
    fis2 e4\fermata  b'      | % 4
    ais b8 cis d4 e      | % 5
    d cis b\fermata  b      | % 6
    g a b a8 g      | % 7
    fis2 e4\fermata  r      | % 8
    e g a e      | % 9
    g a b\fermata  b      | % 10
    e dis e fis      | % 11
    d cis b\fermata  b8 c      | % 12
    d4 b d a      | % 13
    g fis e2\fermata       | % 14
    b'4 a g fis      | % 15
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
    g'4     fis fis8 ais b4 cis      | % 1
    b ais fis fis      | % 2
    e d d e      | % 3
    e dis b g'      | % 4
    fis fis8 ais b4 cis      | % 5
    b ais fis fis      | % 6
    e d d e      | % 7
    e dis b r      | % 8
    b e8 d e4 c      | % 9
    b a g d'      | % 10
    g fis e b'      | % 11
    b ais fis g      | % 12
    a d, d c      | % 13
    b8 e4 d8 d4 c      | % 14
    b8 cis dis4 e8 c' dis,4      | % 15
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
    e'8 d     cis4 d8 e fis4 fis      | % 1
    fis fis8 e dis4 b      | % 2
    b a g8 a b4      | % 3
    c b8 a g4 e'8 d      | % 4
    cis4 d8 e fis4 fis      | % 5
    fis fis8 e dis4 b      | % 6
    b a g8 a b4      | % 7
    c b8 a g4 r      | % 8
    g g c a      | % 9
    g d' d b      | % 10
    b a b b      | % 11
    fis' fis8 e d4 b      | % 12
    a g g fis      | % 13
    g a a2      | % 14
    fis g8 e b' a      | % 15
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
    e4     fis8 e d cis b4 ais      | % 1
    b fis' b, dis      | % 2
    e fis g e      | % 3
    a, b e e      | % 4
    fis8 e d cis b4 ais      | % 5
    b fis b dis      | % 6
    e fis g e      | % 7
    a, b e r      | % 8
    e8 d c b a b c d      | % 9
    e4 fis g g      | % 10
    e fis g d8 e      | % 11
    fis4 fis, b e      | % 12
    fis g b,8 c d4      | % 13
    e fis8. gis16 a2      | % 14
    dis,4 b e8 a, b4      | % 15
    e2. s4 \bar "|." 
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
