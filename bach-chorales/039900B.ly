
% BWV 399 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 399"
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
    b'4     b e d c16 b c8      | % 1
    b2.\fermata  b8 c      | % 2
    d4 g, a b      | % 3
    a2 g4\fermata  b      | % 4
    b e d c16 b c8      | % 5
    b2.\fermata  b8 c      | % 6
    d4 g, a b      | % 7
    a2 g4\fermata  a      | % 8
    a b c8 e d c      | % 9
    b2.\fermata  b4      | % 10
    a d8 e16 fis e4 d8 cis      | % 11
    d2.\fermata  d4      | % 12
    d b c d      | % 13
    e2. a,4      | % 14
    b8 c16 d c8 b b4 a8 g      | % 15
    g2.\fermata  s4 \bar "|." 
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
    g'4     fis g8 fis g4 fis      | % 1
    g2. g4      | % 2
    g8 fis e fis16 g fis4 g~      | % 3
    g8 e fis4 d g      | % 4
    fis g8 fis g4 fis      | % 5
    g2. g4      | % 6
    g8 fis e fis16 g fis4 g~      | % 7
    g8 e fis4 d e      | % 8
    d fis g a      | % 9
    g2. g8 fis      | % 10
    e d16 cis d4 g8 b a g      | % 11
    fis2. a4      | % 12
    g g g g      | % 13
    g2. fis4      | % 14
    g g g fis      | % 15
    d2. s4 \bar "|." 
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
    g'8 a     b4. a8 b e d4      | % 1
    d2. d8 c      | % 2
    b a g4 d' d      | % 3
    d4. c8 b4 g8 a      | % 4
    b4. a8 b e d4      | % 5
    d2. d8 c      | % 6
    b a g4 d' d      | % 7
    d4. c8 b4 cis      | % 8
    d d c8 b a d      | % 9
    d2. d4      | % 10
    cis8 a g fis b g' fis e      | % 11
    d2. fis4      | % 12
    g d e f      | % 13
    e2. d4      | % 14
    d d8 e d4 c      | % 15
    b2. s4 \bar "|." 
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
    e4~     e8 d4 c8 b c d4      | % 1
    g,2. g8 a      | % 2
    b4 c~ c8 b a g      | % 3
    d'2 g,4 e'~      | % 4
    e8 d4 c8 b c d4      | % 5
    g,2. g8 a      | % 6
    b4 c~ c8 b a g      | % 7
    d'2 g,4 g'~      | % 8
    g8 fis e d e4 fis      | % 9
    g2. g,4      | % 10
    g'8 fis b a g e a4      | % 11
    d,2. d'8 c      | % 12
    b a g f e d c b      | % 13
    c2. d4      | % 14
    g,8 a b c d4 d      | % 15
    g,2. s4 \bar "|." 
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
