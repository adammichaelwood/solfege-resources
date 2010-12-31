
% BWV 377 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 377"
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
    d8 e     fis4 g a a      | % 1
    g fis e\fermata  a      | % 2
    b cis d cis      | % 3
    b2 a4\fermata  d,8 e      | % 4
    fis4 g a a      | % 5
    g fis e\fermata  a      | % 6
    b cis d cis      | % 7
    b2 a4\fermata  a      | % 8
    d cis b a      | % 9
    g fis e\fermata  a      | % 10
    g fis e8 fis g4      | % 11
    fis e d\fermata  s4 \bar "|." 
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
    a4     d d e d8 cis      | % 1
    b cis d4 cis e      | % 2
    fis8 gis a4 b a~      | % 3
    a gis e a,      | % 4
    d d e d8 cis      | % 5
    b cis d4 cis e      | % 6
    fis8 gis a4 b a~      | % 7
    a gis e e      | % 8
    fis e d8 e fis4      | % 9
    e a,8 b cis4 fis8 e      | % 10
    d e4 <d d> cis8 d4      | % 11
    d cis a s4 \bar "|." 
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
    fis8 g     a4 g8 fis e4 fis      | % 1
    g a a a      | % 2
    d e e e      | % 3
    fis e8 d cis4 fis,8 g      | % 4
    a4 g8 fis e4 fis      | % 5
    g a a cis      | % 6
    d e e e      | % 7
    fis e8 d cis4 cis8 b      | % 8
    <a a> fis g a b4 <b b>      | % 9
    b8 cis d4 a cis      | % 10
    b8 a a4 a g      | % 11
    a~ a8 g fis4 s4 \bar "|." 
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
    d4     d8 cis b4 cis d      | % 1
    e fis8 g a4 cis      | % 2
    b a gis a      | % 3
    d, e a, d      | % 4
    d8 cis b4 cis d      | % 5
    e fis8 g a4 cis      | % 6
    b a gis a      | % 7
    d, e a, a'8 g      | % 8
    fis d e fis g fis e dis      | % 9
    e4 fis8 gis a4 fis      | % 10
    b,8 cis d4 a b      | % 11
    a8 g a4 d, s4 \bar "|." 
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
