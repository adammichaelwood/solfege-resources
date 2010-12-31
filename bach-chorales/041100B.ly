
% BWV 411 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 411"
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
    g'4 g g d      | % 1
    g a b2\fermata       | % 2
    g8 a b cis d4 fis      | % 3
    e2 d\fermata       | % 4
    g,4 g g d      | % 5
    g a b2\fermata       | % 6
    g8 a b cis d4 fis      | % 7
    e2 d\fermata       | % 8
    e4 d c e      | % 9
    d c b2      | % 10
    a\fermata  a4 gis      | % 11
    a b c c      | % 12
    b2\fermata  g4 a      | % 13
    b c c b      | % 14
    c2\fermata  d4. c8      | % 15
    b4 a g8 a b4      | % 16
    a2 g\fermata  \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    d8 c b c d4 d      | % 1
    e16 fis g4 fis8 g2      | % 2
    d4 d8 g fis4 a      | % 3
    b8 g e a16 g fis2      | % 4
    d8 c b c d4 d      | % 5
    e16 fis g4 fis8 g2      | % 6
    d4 d8 g fis4 a      | % 7
    b8 g e a16 g fis2      | % 8
    g8 e fis gis a4 e      | % 9
    a8 gis a4 a8 gis16 fis gis4      | % 10
    e2 e4 e      | % 11
    e e e e      | % 12
    e2 e4~ e8 d16 c      | % 13
    d8 g4 f16 e a4 g      | % 14
    g2 g4 fis      | % 15
    d d e8 fis g4~      | % 16
    g8 fis16 e fis4 d2 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    b'8 c d c b c b a      | % 1
    b4 e8 d d2      | % 2
    b8 a g4 a d~      | % 3
    d8 cis16 b cis4 a2      | % 4
    b8 c d c b c b a      | % 5
    b4 e8 d d2      | % 6
    b8 a g4 a d~      | % 7
    d8 cis16 b cis4 a2      | % 8
    c4 d e8 d c b      | % 9
    a b c d16 e f8 d b e16 d      | % 10
    c2 c4 b      | % 11
    c b~ b8 a16 gis a4~      | % 12
    a gis b8 c16 b a4      | % 13
    g8 b a16 b c8 d4~ d8 f      | % 14
    e2 d4 a      | % 15
    g a b8 c d4      | % 16
    e8 c a d16 c b2 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    g'8 a b a g a g fis      | % 1
    e d c d g,2      | % 2
    g'8 fis g e fis e d e16 fis      | % 3
    g8 e a4 d,2      | % 4
    g8 a b a g a g fis      | % 5
    e d c d g,2      | % 6
    g'8 fis g e fis e d e16 fis      | % 7
    g8 e a4 d,2      | % 8
    c'4. b8 a4. g8      | % 9
    f4. e8 d b e4      | % 10
    a,2 a8 c e d      | % 11
    c b a gis a b c d      | % 12
    e2 e8 c f4~      | % 13
    f8 e a g f d g4      | % 14
    c,2 b8 c d4      | % 15
    g,8 g'4 fis8 e d c b      | % 16
    c a d4 g,2 \bar "|."\bar "|." 
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
