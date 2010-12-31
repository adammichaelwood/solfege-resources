
% BWV 267 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 267"
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
    d'4     e d8 c b c d4      | % 1
    c8 b c4 b\fermata  a      | % 2
    b c d c8 b      | % 3
    a g a4 g\fermata  d'      | % 4
    e d8 c b c d4      | % 5
    c8 b c4 b\fermata  a      | % 6
    b c d c8 b      | % 7
    a g a4 g\fermata  g      | % 8
    a b c8 b a4      | % 9
    b a g\fermata  g8 a      | % 10
    b4 c d e      | % 11
    b cis d\fermata  b8 c      | % 12
    d4 e d8 c b4      | % 13
    c2 b4\fermata  e      | % 14
    e e a, d      | % 15
    c b a\fermata  c      | % 16
    b a g a8 g      | % 17
    f4 e d d\fermata       | % 18
    g a b4. c8      | % 19
    d4 c8 b a4 b8 c      | % 20
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
    g'4     g fis g fis      | % 1
    e8 g4 fis8 g4 a      | % 2
    g g g g      | % 3
    g fis d g      | % 4
    g fis g fis      | % 5
    e8 g4 fis8 g4 a      | % 6
    g g g g      | % 7
    g fis d d      | % 8
    d8 e fis4 e~ e8 d      | % 9
    d4 c b e      | % 10
    d e f e8 fis      | % 11
    g fis g a fis4 d      | % 12
    g g a b      | % 13
    b8 gis a4 gis b      | % 14
    a e8 <c c> d e f4      | % 15
    e d c a'      | % 16
    d,8 e f4 e8 d e4~      | % 17
    e8 d4 cis8 d4 d8 c      | % 18
    b a g f g4 g'      | % 19
    fis g g g~      | % 20
    g fis d s4 \bar "|." 
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
    b'4     c8 b a4 e' a,8 b      | % 1
    c e d4 d d      | % 2
    d g,8 a b g e'4      | % 3
    a,8 b c4 b b      | % 4
    c8 b a4 e' a,8 b      | % 5
    c e d4 d d      | % 6
    d g,8 a b g e'4      | % 7
    a,8 b c4 b b      | % 8
    a d g, a~      | % 9
    a8 g4 fis8 g4 g      | % 10
    g g g g      | % 11
    g8 a16 a a4 a g~      | % 12
    g8 d' c b a4 e'      | % 13
    e2 e4 e8 d      | % 14
    c b a4~ a8 gis a b      | % 15
    gis a4 gis8 a4 e8 fis      | % 16
    g4 d'8 c bes4 a      | % 17
    a g fis fis      | % 18
    g d' d e      | % 19
    d2 e8 d c4      | % 20
    d8 e d c b4 s4 \bar "|." 
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
    g'4     c, d e fis8 g      | % 1
    a4 d, g fis      | % 2
    g8 fis e4 b c      | % 3
    d2 g,4 g'      | % 4
    c, d e fis8 g      | % 5
    a4 d, g fis8 r      | % 6
    g fis e4 b c      | % 7
    d2 g,4 g'      | % 8
    fis e8 d e4 fis      | % 9
    g d g, c      | % 10
    g'8 f e d c b c d      | % 11
    e4 a, d g8 a      | % 12
    b4 c fis, gis      | % 13
    a a, e' gis,      | % 14
    a8 b c a f'4 e8 d      | % 15
    e4 e, a a      | % 16
    b8 cis d4~ d cis      | % 17
    d a d b      | % 18
    e d g8 fis e4      | % 19
    b8 a g4 c8 b a4      | % 20
    d8 c d4 g, s4 \bar "|." 
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
