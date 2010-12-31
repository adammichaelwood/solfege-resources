
% BWV 120 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 120"
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
    b'4     b b a cis      | % 1
    cis b b\fermata  b      | % 2
    b a b8 cis d4      | % 3
    a a fis\fermata  g      | % 4
    e g fis e      | % 5
    fis gis a\fermata  a      | % 6
    a a b g      | % 7
    a g fis\fermata  d      | % 8
    e g fis e8 fis      | % 9
    g4 e d\fermata  a'      | % 10
    a a b g      | % 11
    a g fis\fermata  g      | % 12
    g g fis e      | % 13
    g e d\fermata  a'      | % 14
    a a b g      | % 15
    a g fis\fermata  s4 \bar "|." 
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
    fis4     fis gis cis, a'      | % 1
    e8 fis g4 fis fis      | % 2
    g fis8 e d e fis4      | % 3
    fis e d d      | % 4
    e cis d e      | % 5
    d d e e      | % 6
    fis fis g8 fis e4      | % 7
    fis8 dis e4 dis b      | % 8
    cis b8 cis d4 cis8 d      | % 9
    e d cis4 a e'      | % 10
    fis fis g b,      | % 11
    fis' e dis e      | % 12
    d e d cis      | % 13
    e8 d cis4 a e'      | % 14
    fis8 g a fis g4 d8 e      | % 15
    fis4 e d s4 \bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef "treble_8"
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    d'4     dis eis fis fis      | % 1
    cis8 dis e4 dis d      | % 2
    cis cis b a      | % 3
    d cis a b      | % 4
    a a a a      | % 5
    a b cis cis      | % 6
    d d d e8 d      | % 7
    c4 b b fis      | % 8
    a g a a      | % 9
    b a8 g fis4 a      | % 10
    d d d e      | % 11
    b b b b      | % 12
    b a a a      | % 13
    b a8 g fis4 a      | % 14
    d d8 c b cis d4      | % 15
    d8 b cis a a4 s4 \bar "|." 
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
    b'4     a gis fis fis8 gis      | % 1
    a4 e b' b,      | % 2
    e fis g fis8 e      | % 3
    fis g a4 d, b      | % 4
    cis a d cis      | % 5
    d8 cis b4 a a      | % 6
    d8 e fis d g4 c8 b      | % 7
    a4 e b b'      | % 8
    a e fis8 g a4      | % 9
    g a d, cis      | % 10
    d8 c b a g g' fis e      | % 11
    dis4 e b e      | % 12
    b cis d a'      | % 13
    g a d, cis      | % 14
    d8 e fis d g a b4      | % 15
    a a, d s4 \bar "|." 
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
