
% BWV 415 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 415"
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
    d4     a' a b cis      | % 1
    d2 d4\fermata  fis      | % 2
    e d d cis      | % 3
    d2.\fermata  d,4      | % 4
    a' a b cis      | % 5
    d2 d4\fermata  fis      | % 6
    e d d cis      | % 7
    d2.\fermata  d8 e      | % 8
    fis4 fis e~ e8 d      | % 9
    cis b cis4 a\fermata  cis      | % 10
    d cis b b      | % 11
    a2.\fermata  a4      | % 12
    fis8 g a4 b a      | % 13
    a g8 fis fis4\fermata  a      | % 14
    g fis e e      | % 15
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
    a4     d d d g~      | % 1
    g fis8 e fis4 a8 b      | % 2
    cis4 b b a      | % 3
    a2. a,4      | % 4
    d d d g~      | % 5
    g fis8 e fis4 a8 b      | % 6
    cis4 b b a      | % 7
    a2. a4      | % 8
    d d8 cis b gis a b      | % 9
    e, fis gis4 fis a~      | % 10
    a8 gis a2 gis4      | % 11
    e2. e4      | % 12
    d d d8 e fis4      | % 13
    fis e dis d      | % 14
    d d2 cis4      | % 15
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
    fis8 e     fis g a fis g4 g8 a      | % 1
    b4 a8 g a4 a'      | % 2
    g fis f e      | % 3
    fis2. fis,8 e      | % 4
    fis g a fis g4 g8 a      | % 5
    b4 a8 g a4 a'      | % 6
    g fis f e      | % 7
    fis2. fis8 g      | % 8
    a4 d, e8 d cis b      | % 9
    a4 gis cis fis8 e      | % 10
    d4 e e8 fis e d      | % 11
    cis2. a4      | % 12
    a d8 c b cis d c      | % 13
    b2 b4 c      | % 14
    b b b a8 g      | % 15
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
    d8 cis     d e fis d g fis e4      | % 1
    b8 cis d4 d, d''      | % 2
    ais b8 a gis4 a      | % 3
    d,2. d8 cis      | % 4
    d e fis d g fis e4      | % 5
    b8 cis d4 d, d''      | % 6
    ais b8 a gis4 a      | % 7
    d,2. d4      | % 8
    d'8 cis b a gis e fis gis      | % 9
    a gis fis eis fis4 fis      | % 10
    b8 b, cis d e d e e,      | % 11
    a2. cis4      | % 12
    d8 e fis d g4 fis8 e      | % 13
    dis4 e b fis      | % 14
    g8 a b a g e a4      | % 15
    d,2. s4 \bar "|." 
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
