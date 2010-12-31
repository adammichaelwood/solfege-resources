
% BWV 94 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 94"
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
    a'4     fis e8 d a'4 a      | % 1
    b2.\fermata  b4      | % 2
    e, e a g      | % 3
    fis e d\fermata  a'      | % 4
    b b a g      | % 5
    fis2.\fermata  e4      | % 6
    fis gis a b8 cis16 d      | % 7
    cis4 b8 a a4\fermata  a      | % 8
    a a d c      | % 9
    b2.\fermata  b4      | % 10
    b b e d      | % 11
    cis2.\fermata  a4      | % 12
    b a b cis      | % 13
    d2.\fermata  a4      | % 14
    a g8 fis e fis16 g e4      | % 15
    d2.\fermata  s4 \bar "|." 
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
    e4     d cis d fis      | % 1
    g2. e4      | % 2
    e8 d cis4 d e      | % 3
    e8 d4 cis8 a4 d      | % 4
    d g g8 fis e4      | % 5
    d2. e4      | % 6
    d d cis fis      | % 7
    e2 e4 e      | % 8
    fis8 e fis g a4 fis      | % 9
    g2. a4      | % 10
    a gis gis8 fis fis e      | % 11
    e2. d4      | % 12
    d d g8 fis g4      | % 13
    fis2. e4      | % 14
    fis8 e d4 d cis      | % 15
    a2. s4 \bar "|." 
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
    a'4     a g a d      | % 1
    d2. d4      | % 2
    cis8 b a4 a a      | % 3
    a2 fis4 a      | % 4
    g b cis8 d d cis      | % 5
    a2. a4      | % 6
    a b a a      | % 7
    a gis cis cis      | % 8
    d d a d      | % 9
    d2. fis4      | % 10
    e b b8 a a gis      | % 11
    a2. a4      | % 12
    g a e'8 d e4      | % 13
    d2. e4      | % 14
    a, b b a8 g      | % 15
    fis2. s4 \bar "|." 
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
    cis4     d e fis d      | % 1
    g2. gis4      | % 2
    a a8 g fis e d cis      | % 3
    d4 a d fis      | % 4
    g e a a,      | % 5
    d2. cis4      | % 6
    d cis8 b fis'4 e8 d      | % 7
    e2 a,4 a'      | % 8
    d d,8 e fis4 d      | % 9
    g2. dis4      | % 10
    e8 fis e d cis d e4      | % 11
    a,2. fis'4      | % 12
    g fis e ais,      | % 13
    b2. cis4      | % 14
    d8 cis b a g4 a      | % 15
    d2. s4 \bar "|." 
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
