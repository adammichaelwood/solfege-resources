
% BWV 327 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 327"
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
    \time 3/4 
    \partial 4
    d'4     d2 cis4      | % 1
    b2 a4      | % 2
    d e2      | % 3
    fis\fermata  fis4      | % 4
    fis2 fis4      | % 5
    e2 fis4      | % 6
    g fis2      | % 7
    e\fermata  d4      | % 8
    e2 fis4      | % 9
    e2 d4      | % 10
    b cis2      | % 11
    d\fermata  a'4      | % 12
    fis2 d4      | % 13
    e2 g4      | % 14
    fis e2      | % 15
    d\fermata  s4 \bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 3/4 
    \partial 4
    a'4     b2 a4      | % 1
    g2 fis4      | % 2
    fis b a      | % 3
    a2 cis4      | % 4
    b2 b4      | % 5
    b a a      | % 6
    a d a      | % 7
    a2 b4      | % 8
    a2 a4      | % 9
    b a8 g fis4      | % 10
    b b ais      | % 11
    b2 a4      | % 12
    a2 b4      | % 13
    a2 a4      | % 14
    a g2      | % 15
    fis s4 \bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 3/4 
    \partial 4
    fis'4     fis2 fis4      | % 1
    d2 d4      | % 2
    d2 cis4      | % 3
    d2 cis4      | % 4
    d2 d4      | % 5
    d cis d      | % 6
    e a, d      | % 7
    cis2 fis4      | % 8
    e2 d4      | % 9
    d cis d      | % 10
    d g fis      | % 11
    fis2 e4      | % 12
    fis2 fis4      | % 13
    e2 cis4      | % 14
    a b cis      | % 15
    a2 s4 \bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 3/4 
    \partial 4
    d4     b d fis      | % 1
    g b d      | % 2
    b g a      | % 3
    d,2 ais'4      | % 4
    b2 a4      | % 5
    gis a fis      | % 6
    cis d fis      | % 7
    a2 b4      | % 8
    cis2 d4      | % 9
    g, a b      | % 10
    g e fis      | % 11
    b,2 cis'4      | % 12
    d cis b      | % 13
    cis b a      | % 14
    d g, a      | % 15
    d,2 s4 \bar "|." 
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
