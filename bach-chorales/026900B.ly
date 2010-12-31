
% BWV 269 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 269"
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
    \partial 4
    g'4     g2 d'4      | % 1
    b4. a8 g4      | % 2
    g4. a8 b4      | % 3
    a2\fermata  b4      | % 4
    d2 c4      | % 5
    b a2      | % 6
    g\fermata  g4      | % 7
    g2 d'4      | % 8
    b4. a8 g4      | % 9
    g4. a8 b4      | % 10
    a2\fermata  b4      | % 11
    d2 c4      | % 12
    b a2      | % 13
    g\fermata  b4      | % 14
    b c d      | % 15
    d4. c8 b4      | % 16
    a2\fermata  g4      | % 17
    b2 c4      | % 18
    d2 c4      | % 19
    b2.      | % 20
    g2\fermata  b4      | % 21
    d2 c4      | % 22
    b2 a4      | % 23
    g4. a8 b4      | % 24
    a2\fermata  b4      | % 25
    d2 c4      | % 26
    b a2      | % 27
    g\fermata  \bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 3/4 
    \partial 4
    d4     d e d      | % 1
    d2 b4      | % 2
    e8 d e fis g4      | % 3
    fis2 g4      | % 4
    d e fis      | % 5
    g2 fis4      | % 6
    d2 d4      | % 7
    d e d      | % 8
    d2 b4      | % 9
    e8 d e fis g4      | % 10
    fis2 g4      | % 11
    d e fis      | % 12
    g2 fis4      | % 13
    d2 g4~      | % 14
    g8 fis e fis g4~      | % 15
    g8 a g fis g4      | % 16
    fis2 e4      | % 17
    e fis8 g a4      | % 18
    a g4. fis8      | % 19
    g2 f4      | % 20
    e2 g4      | % 21
    a4. g8 fis4      | % 22
    g2 fis4      | % 23
    fis8 e e fis g4      | % 24
    fis2 g4      | % 25
    a2 g8 fis      | % 26
    g2 fis4      | % 27
    d2 \bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 3/4 
    \partial 4
    b'4     b c8 b a4      | % 1
    g fis g      | % 2
    c8 b c4 d      | % 3
    d2 d4      | % 4
    a b c      | % 5
    d e d8 c      | % 6
    b2 b4      | % 7
    b c8 b a4      | % 8
    g fis g      | % 9
    c8 b c4 d      | % 10
    d2 d4      | % 11
    a b c      | % 12
    d e d8 c      | % 13
    b2 d4      | % 14
    d c b8 a      | % 15
    b c d4 d      | % 16
    d2 b4      | % 17
    g b e      | % 18
    d2 d4      | % 19
    d2.      | % 20
    c2 d4      | % 21
    d8 c b4 c      | % 22
    d2 d8 c      | % 23
    b4 c d      | % 24
    d2 d4      | % 25
    d2 e4      | % 26
    e2 d8 c      | % 27
    b2 \bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 3/4 
    \partial 4
    g4     g' e fis      | % 1
    g d e      | % 2
    c b8 a g4      | % 3
    d'2 g,4      | % 4
    fis g a      | % 5
    b c d      | % 6
    g,2 g4      | % 7
    g' e fis      | % 8
    g d e      | % 9
    c b8 a g4      | % 10
    d'2 g,4      | % 11
    fis g a      | % 12
    b c d      | % 13
    g,2 g4      | % 14
    g a b      | % 15
    b4. a8 g4      | % 16
    d'2 e4~      | % 17
    e d c      | % 18
    b4. c8 d4      | % 19
    g,8 a b4 g      | % 20
    c2 g4      | % 21
    fis g a      | % 22
    b g d'      | % 23
    e8 d c b a g      | % 24
    d'2 g4~      | % 25
    g fis e~      | % 26
    e8 d c4 d      | % 27
    g,2 \bar "|." 
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
