
% BWV 248 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 248"
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
    g'4     g a b8 cis d4      | % 1
    d cis d\fermata  b      | % 2
    c b a b      | % 3
    a2 g4\fermata  g      | % 4
    g a b8 cis d4      | % 5
    d cis d\fermata  b      | % 6
    c b a b      | % 7
    a2 g4\fermata  a      | % 8
    a b c c      | % 9
    b8 a b4 a\fermata  b      | % 10
    b b c8 d e4      | % 11
    e dis e\fermata  fis      | % 12
    g b, c b      | % 13
    a2 a4\fermata  d      | % 14
    e d c b8 c      | % 15
    a2 g4\fermata  s4 \bar "|." 
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
    d4     e fis d8 e fis4      | % 1
    e8 fis g4 fis fis      | % 2
    e d8 e fis4 g      | % 3
    g fis d d      | % 4
    e fis d8 e fis4      | % 5
    e8 fis g4 fis fis      | % 6
    e d8 e fis4 g      | % 7
    g fis d fis8 g      | % 8
    a4. gis8 a gis a4      | % 9
    a gis e e8 dis      | % 10
    e4 e e8 fis g fis      | % 11
    fis g a4 g a      | % 12
    g8 a b4 b8 a a g      | % 13
    g2 fis4 g8 fis      | % 14
    e4 fis g8 a d,4      | % 15
    e d d s4 \bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef "treble_8"
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    b'4     b8 c4 d8 b a a4      | % 1
    a a a b8 a      | % 2
    g a b c d4 d      | % 3
    d4. c8 b4 b      | % 4
    b8 c~ c d b a a4      | % 5
    a a a b8 a      | % 6
    g a b c d4 d      | % 7
    d4. c8 b4 d8 e      | % 8
    fis e d4 e fis      | % 9
    b, e8 d c4 g8 a      | % 10
    b c d e c4 cis      | % 11
    b b b d      | % 12
    d g g,8 a b4      | % 13
    e8 d e cis d4 d      | % 14
    d8 c c b b a g4      | % 15
    g8 fis16 e fis8 c' b4 s4 \bar "|." 
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
    g'8 fis     e4 d g fis8 g      | % 1
    a4 a, d dis      | % 2
    e8 fis g c, c' b a g      | % 3
    d'4 d, g g8 fis      | % 4
    e4 d g fis8 g      | % 5
    a4 a, d dis      | % 6
    e8 fis g c, c' b a g      | % 7
    d'4 d, g d      | % 8
    d'8 c b4 a dis,      | % 9
    e e a, e'8 fis      | % 10
    g4 gis a ais      | % 11
    b b, e d'8 c      | % 12
    b a g fis e fis g e      | % 13
    cis b cis a d4 b      | % 14
    c d e8 fis g4      | % 15
    c, d g, s4 \bar "|." 
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
