
% BWV 304 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 304"
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
    a'4 g8 fis b4 b      | % 1
    cis cis d d\fermata       | % 2
    b4. a8 g4 a      | % 3
    g8 fis e fis d2\fermata       | % 4
    a'4 g8 fis b4 b      | % 5
    cis cis d d\fermata       | % 6
    b4. a8 g4 a      | % 7
    g8 fis e fis d2\fermata       | % 8
    %bartimesig: 
    \time 3/4 
    d8 e      | % 9
    fis4 fis fis      | % 10
    e e e8 fis      | % 11
    g4 g g8 fis      | % 12
    fis4 fis fis      | % 13
    b4. a8 g4      | % 14
    a4. g8 fis4      | % 15
    g fis e      | % 16
    d d\fermata  d8 e      | % 17
    fis4 fis fis      | % 18
    e e e8 fis      | % 19
    g4 g g      | % 20
    fis2 fis4      | % 21
    b4. a8 g4      | % 22
    a4. g8 fis4      | % 23
    g fis e      | % 24
    d2.\fermata  \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 4/4 
    fis4 d d g8 fis      | % 1
    e4 a8 g fis4 fis      | % 2
    d g8 fis e4 e      | % 3
    d cis a2      | % 4
    e'4 d fis e8 d      | % 5
    cis4 fis fis fis      | % 6
    g8 fis e4 d e      | % 7
    e8 d d cis a2      | % 8
    %bartimesig: 
    \time 3/4 
    a4      | % 9
    d d d      | % 10
    cis8 b cis d e4      | % 11
    e e e      | % 12
    d8 cis d e fis4      | % 13
    g4. fis8 e4      | % 14
    e8 d cis4 d      | % 15
    d d cis      | % 16
    a a a      | % 17
    d d d      | % 18
    d cis8 b cis d      | % 19
    e4 e e      | % 20
    e d r      | % 21
    d g8 fis e4~      | % 22
    e8 g fis e d a      | % 23
    d4. e8 cis4      | % 24
    a2. \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef "treble_8"
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 4/4 
    d'4 a b e8 d      | % 1
    cis b a4 a a      | % 2
    g8 a b4 b a      | % 3
    a a8 g fis2      | % 4
    a4 a a8 fis g b~      | % 5
    b gis ais4 b b      | % 6
    d cis b8 g e a      | % 7
    a4 a fis2      | % 8
    %bartimesig: 
    \time 3/4 
    fis8 g      | % 9
    a4 a a8 b      | % 10
    cis d e d cis4      | % 11
    b b b8 cis      | % 12
    d e fis e d cis      | % 13
    b a g a b4      | % 14
    a a a      | % 15
    g8 a b4 e,      | % 16
    fis fis fis      | % 17
    b b a      | % 18
    b a8 gis a4      | % 19
    a b cis      | % 20
    a2 a4      | % 21
    d8 cis b4. b8      | % 22
    a4. cis8 d4      | % 23
    d, a' a8 g      | % 24
    fis2. \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 4/4 
    d4 d g8 fis e4      | % 1
    a8 g fis e d4 d      | % 2
    g8 fis e4 e8 d cis4      | % 3
    d a d2      | % 4
    cis4 d dis e      | % 5
    eis fis b, b      | % 6
    g a b cis      | % 7
    d a d2      | % 8
    %bartimesig: 
    \time 3/4 
    d4      | % 9
    d8 cis d e fis g      | % 10
    a4 a, a'      | % 11
    e8 dis e fis g a      | % 12
    b4 b, b'8 a      | % 13
    g fis e4 e8 d      | % 14
    cis b a4 d8 cis      | % 15
    b a g4 a      | % 16
    d d d8 cis      | % 17
    b4 b'8 a g fis      | % 18
    gis4 e a      | % 19
    cis, d8 cis b a      | % 20
    d2 r4      | % 21
    b e e8 d      | % 22
    cis a d4. cis8      | % 23
    b4 a8 g a4      | % 24
    d2. \bar "|."\bar "|." 
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
