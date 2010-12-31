
% BWV 153 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 153"
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
    b'4     c b a e'      | % 1
    e8 d c4 b\fermata  d      | % 2
    c b a b8 c16 d      | % 3
    c4 b a\fermata  b      | % 4
    c b a e'      | % 5
    e8 d c4 b\fermata  d      | % 6
    c b a b8 c16 d      | % 7
    c4 b a\fermata  a      | % 8
    b8 a g4 fis e8 fis      | % 9
    g4 a b\fermata  g      | % 10
    a8 b c4 b c8 b      | % 11
    a4 gis a\fermata  a      | % 12
    e' c d e      | % 13
    d c b\fermata  s4 \bar "|." 
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
    gis'4     a gis a gis8 a      | % 1
    b4 e,8 fis gis4 gis      | % 2
    a gis a8 g f4      | % 3
    e2 e4 gis      | % 4
    a gis a gis8 a      | % 5
    b4 e,8 fis gis4 gis      | % 6
    a gis a8 g f4      | % 7
    e2 e4 d      | % 8
    d8 dis e4 dis e8 dis      | % 9
    e g fis e dis4 b      | % 10
    a a' gis a      | % 11
    e e e e      | % 12
    e e f g      | % 13
    fis8 gis a4 e s4 \bar "|." 
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
    e'4     e d e d8 c      | % 1
    b4 c8 d e4 f      | % 2
    e e8 d c4 d      | % 3
    gis,8 a4 gis8 c4 e      | % 4
    e d e d8 c      | % 5
    b4 c8 d e4 f      | % 6
    e e8 d c4 d      | % 7
    gis,8 a4 gis8 c4 a      | % 8
    g8 a b4 b b8 a      | % 9
    b4 c fis, e'8 d      | % 10
    c d e4 e e8 d      | % 11
    c4 b c c      | % 12
    b a a bes      | % 13
    a8 e fis4 gis s4 \bar "|." 
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
    e4     a b c b8 a      | % 1
    gis4 a e b      | % 2
    c8 d e4 f e8 d      | % 3
    e2 a,4 e'      | % 4
    a b c b8 a      | % 5
    gis4 a e b      | % 6
    c8 d e4 f e8 d      | % 7
    e2 a,4 fis'      | % 8
    g8 fis e4 b'8 a g fis      | % 9
    e d c4 b e      | % 10
    f c8 d e4 a,8 b      | % 11
    c d e4 a, a'      | % 12
    gis a8 g f e d cis      | % 13
    d4 dis e s4 \bar "|." 
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
