
% BWV 261 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 261"
composer = "Johann Sebastien Bach"
tagline = "Created by Michael Ellis from digital transcriptions by Margaret Greentree (jsbchorales.net)"
}
ASvoiceAA = \relative c'{
    \set Staff.instrumentName = #"Soprano"
    \set Staff.shortInstrumentName = #"S."
    \clef treble
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    d'4     a b8 cis d e fis4      | % 1
    e d2 cis4      | % 2
    d2\fermata  r4 fis      | % 3
    e d cis8 b a4      | % 4
    b cis8 d e2~      | % 5
    e4 d cis2      | % 6
    b\fermata  r4 d      | % 7
    a b8 cis d e fis4      | % 8
    e d2 cis4      | % 9
    d2\fermata  r4 fis      | % 10
    e d cis8 b a4      | % 11
    b cis8 d e2~      | % 12
    e4 d cis2      | % 13
    b\fermata  r4 fis'      | % 14
    g e fis d      | % 15
    e fis b,\fermata  fis'      | % 16
    g e fis d      | % 17
    e fis      | % 18
    b,2\fermata  r4 d      | % 19
    cis b a b      | % 20
    g g fis r      | % 21
    r b a d~      | % 22
    d cis d\fermata  r      | % 23
    r a b cis      | % 24
    d8 e fis2 e4      | % 25
    e d cis cis      | % 26
    b2\fermata  r4 s4 \bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    fis8 g     a4 g a ais8 b      | % 1
    cis4 fis, e e      | % 2
    fis2 r4 a      | % 3
    a8 g fis4 g fis      | % 4
    g2. fis8 gis      | % 5
    ais4 b8 a g4 fis8 e      | % 6
    d2 r4 fis8 g      | % 7
    a4 g a ais8 b      | % 8
    cis4 fis, e e      | % 9
    fis2 r4 a      | % 10
    a8 g fis4 g fis      | % 11
    g2. fis8 gis      | % 12
    ais4 b8 a g4 fis8 e      | % 13
    d2 r4 b'      | % 14
    b a a g      | % 15
    g fis fis b      | % 16
    b a a g8 fis      | % 17
    e4 a      | % 18
    g2 r4 fis      | % 19
    eis fis8 gis cis,4 fis      | % 20
    fis e dis r      | % 21
    r e2 a4~      | % 22
    a g fis r      | % 23
    r fis e e      | % 24
    d d'8 cis b ais b cis      | % 25
    ais4 b8 a g4 fis8 e      | % 26
    dis2 r4 s4 \bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    a'4     d d d d      | % 1
    cis d8 cis b4 a      | % 2
    a2 r4 d      | % 3
    cis d e8 d cis4      | % 4
    d e ais,8 b cis4~      | % 5
    cis b2 ais4      | % 6
    b2 r4 a      | % 7
    d d d d      | % 8
    cis d8 cis b4 a      | % 9
    a2 r4 d      | % 10
    cis d e8 d cis4      | % 11
    d e ais,8 b cis4~      | % 12
    cis b2 ais4      | % 13
    b2 r4 d      | % 14
    d8 b cis4 cis8 a b4      | % 15
    b cis d fis      | % 16
    e e d d8 cis      | % 17
    b4 b      | % 18
    b2 r4 b      | % 19
    b8 a4 gis8 fis4 fis      | % 20
    g8 a b cis dis4 r      | % 21
    r b8 cis16 d cis4 d8 e      | % 22
    fis4 e d r      | % 23
    r d gis, ais      | % 24
    b8 cis d2 cis4~      | % 25
    cis b2 ais4      | % 26
    b2 r4 s4 \bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    d8 e     fis4 g fis4. gis8      | % 1
    ais4 b8 a gis4 a      | % 2
    d,2 r4 d'      | % 3
    a b e, fis~      | % 4
    fis e8 d cis b ais cis      | % 5
    fis4 g8 fis e4 fis      | % 6
    b,2 r4 d8 e      | % 7
    fis4 g fis4. gis8      | % 8
    ais4 b8 a gis4 a      | % 9
    d,2 r4 d'      | % 10
    a b e, fis~      | % 11
    fis e8 d cis b ais cis      | % 12
    fis4 g8 fis e4 fis      | % 13
    b,2 r4 b'      | % 14
    e, a d, g8 fis      | % 15
    e4 ais, b d'      | % 16
    d cis cis b8 a      | % 17
    g fis e dis      | % 18
    e2 r4 b      | % 19
    cis dis8 eis fis4 dis      | % 20
    e8 fis g a b4 r      | % 21
    r g2 fis8 g      | % 22
    a4 a, d r      | % 23
    r d d' cis      | % 24
    b4. a8 g fis g e      | % 25
    fis4 g8 fis e4 fis      | % 26
    b,2 r4 s4 \bar "|." 
}% end of last bar in partorvoice



\addQuote "articulations"   { \ASvoiceAA }
\book {
\layout { \scorepaper }
\score {
<<
\part ASvoiceAA { \ASvoiceAA } { \transpose d c \ASvoiceAA }
\part AAvoiceBA { \quotearticulations \AAvoiceBA \ASvoiceAA } { \transpose d c \AAvoiceBA }
\part ATvoiceCA { \quotearticulations \ATvoiceCA \ASvoiceAA } { \transpose d c \ATvoiceCA }
\part ABvoiceDA { \quotearticulations \ABvoiceDA \ASvoiceAA } { \transpose d c \ABvoiceDA }
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
\part ASvoiceAA { \ASvoiceAA } { \transpose d c \ASvoiceAA }
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
\part AAvoiceBA { \quotearticulations \AAvoiceBA \ASvoiceAA } { \transpose d c \AAvoiceBA }
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
\part ATvoiceCA { \quotearticulations \ATvoiceCA \ASvoiceAA } { \transpose d c \ATvoiceCA }
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
\part ABvoiceDA { \quotearticulations \ABvoiceDA \ASvoiceAA } { \transpose d c \ABvoiceDA }
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
