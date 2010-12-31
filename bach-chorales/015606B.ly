
% BWV 156 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 156"
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
    c'4     b c d d      | % 1
    c d e\fermata  f      | % 2
    e d c b8 a      | % 3
    b4 c d2      | % 4
    c2.\fermata  c4      | % 5
    b c d d      | % 6
    c d e\fermata  f      | % 7
    e d c b8 a      | % 8
    b4 c d2      | % 9
    c2.\fermata  c4      | % 10
    d8 e f4 e8 d c4      | % 11
    d8 c b4 a\fermata  b      | % 12
    g g d' e      | % 13
    f8 e d4 c\fermata  g'      | % 14
    e f8 e d4. c8      | % 15
    b4 c d2      | % 16
    c2.\fermata  s4 \bar "|." 
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
    g'4     g g8 fis g4 gis      | % 1
    e8 c g'4 g g      | % 2
    g g8 f e4 f8 e      | % 3
    d4 g a g8 f      | % 4
    e2. g4      | % 5
    g g8 fis g4 gis      | % 6
    e8 c g'4 g g      | % 7
    g g8 f e4 f8 e      | % 8
    d4 g a g8 f      | % 9
    e2. g4      | % 10
    g a b a      | % 11
    a a8 g fis4 fis      | % 12
    e e8 fis g4 e      | % 13
    d e e g      | % 14
    g f8 g a f g a      | % 15
    g4 g g4. f8      | % 16
    e2. s4 \bar "|." 
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
    e'4     d c b b      | % 1
    c8 f b,4 c d      | % 2
    c b c8 e d4      | % 3
    g c,~ c b      | % 4
    g2. e'4      | % 5
    d c b b      | % 6
    c8 f b,4 c d      | % 7
    c b c8 e d4      | % 8
    g c,~ c b      | % 9
    g2. e'4      | % 10
    d c b e      | % 11
    d d d b      | % 12
    b b8 c d4 a      | % 13
    a b a d      | % 14
    c c8 b a4 e'      | % 15
    d c c b      | % 16
    g2. s4 \bar "|." 
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
    c4     g' a g8 f e4      | % 1
    a g c b      | % 2
    c g a8 g f4~      | % 3
    f e fis g      | % 4
    c,2. c4      | % 5
    g' a g8 f e4      | % 6
    a g c b      | % 7
    c g a8 g f4~      | % 8
    f e fis g      | % 9
    c,2. c'4      | % 10
    b a gis a8 g      | % 11
    fis4 g d dis      | % 12
    e8 fis g a b4 cis      | % 13
    d gis, a b      | % 14
    c8 b a g f d e f      | % 15
    g f e c g2      | % 16
    c2. s4 \bar "|." 
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
