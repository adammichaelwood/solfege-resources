
% BWV 136 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 136"
composer = "Johann Sebastien Bach"
tagline = "Created by Michael Ellis from digital transcriptions by Margaret Greentree (jsbchorales.net)"
}
AvoiceAA = \relative c'{
    \set Staff.instrumentName = #"Violin"
    \set Staff.shortInstrumentName = #""
    \clef treble
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    b''8 a     g e cis fis b, fis' b16 ais b8      | % 1
    fis2.\fermata  fis4      | % 2
    b8 e, d cis fis d cis b      | % 3
    fis'2.\fermata  fis8 e      | % 4
    d b' a g fis e d d'      | % 5
    cis d cis b ais b cis a      | % 6
    a d, cis b a g' fis d'      | % 7
    b g e a fis4\fermata  a~      | % 8
    a8 e fis a cis e, d fis      | % 9
    b a b gis a4\fermata  b      | % 10
    ais8 b cis ais d fis, b4~      | % 11
    b16 d cis b ais4 b\fermata  s4 \bar "|." 
}% end of last bar in partorvoice

 

ASvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Soprano"
    \set Staff.shortInstrumentName = #"S."
    \clef treble
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    b'4     b cis d e      | % 1
    fis2.\fermata  fis4      | % 2
    fis e d e      | % 3
    cis2.\fermata  cis4      | % 4
    d e fis fis      | % 5
    e2 fis4 fis      | % 6
    d e fis fis      | % 7
    e2 d4\fermata  fis      | % 8
    a fis fis fis      | % 9
    e2 e4\fermata  e      | % 10
    fis e d e8 d      | % 11
    cis2 b4\fermata  s4 \bar "|." 
}% end of last bar in partorvoice

 

AAvoiceCA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    fis4     g fis fis g      | % 1
    cis,2. fis4      | % 2
    gis ais b cis      | % 3
    ais2. ais4      | % 4
    b e, d a'      | % 5
    a2 ais4 fis      | % 6
    fis8 gis a4 a a      | % 7
    b a a a      | % 8
    a d cis b      | % 9
    b2 e,4 b'      | % 10
    cis cis fis, g      | % 11
    g fis fis s4 \bar "|." 
}% end of last bar in partorvoice

 

ATvoiceDA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    d'4     e e d cis8 b      | % 1
    ais2. ais4      | % 2
    b cis d g      | % 3
    fis2. fis,4      | % 4
    fis a a4. b8      | % 5
    cis2 cis4 cis      | % 6
    b cis d d      | % 7
    d cis d d      | % 8
    e a,8 d e cis d4      | % 9
    d2 cis4 b      | % 10
    fis' ais, b b      | % 11
    e8 d cis4 dis s4 \bar "|." 
}% end of last bar in partorvoice

 

ABvoiceEA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    b'4     e ais, b8 a g4      | % 1
    fis2. e4      | % 2
    d cis b e      | % 3
    fis2. fis4      | % 4
    b, cis d8 e fis g      | % 5
    a b a g fis gis ais fis      | % 6
    b4 a8 g fis e d fis      | % 7
    g e a a, d4 d'      | % 8
    cis d ais b8 a      | % 9
    gis fis gis e a4 g      | % 10
    fis8 e d cis b' a g fis      | % 11
    e cis fis fis, b4 s4 \bar "|." 
}% end of last bar in partorvoice



\addQuote "articulations"   { \AvoiceAA }
\book {
\layout { \scorepaper }
\score {
<<
\part AvoiceAA { \AvoiceAA } { \transpose d c \AvoiceAA }
\part ASvoiceBA { \ASvoiceBA } { \transpose d c \ASvoiceBA }
\part AAvoiceCA { \quotearticulations \AAvoiceCA \AvoiceAA } { \transpose d c \AAvoiceCA }
\part ATvoiceDA { \quotearticulations \ATvoiceDA \AvoiceAA } { \transpose d c \ATvoiceDA }
\part ABvoiceEA { \quotearticulations \ABvoiceEA \AvoiceAA } { \transpose d c \ABvoiceEA }
>>
}
\score {
<<
\new Voice = AvoiceAA \AvoiceAA
\new Voice = ASvoiceBA \ASvoiceBA
\new Voice = AAvoiceCA \AAvoiceCA
\new Voice = ATvoiceDA \ATvoiceDA
\new Voice = ABvoiceEA \ABvoiceEA
>>

        \midi   { 
        \context { \Staff  \remove "Staff_performer" }
        \context { \Voice  \consists "Staff_performer" }
        } 
   }
} %%end of book

#(define output-suffix "Violin")
\book {
\layout { \partpaper }
\score {
<<
\part AvoiceAA { \AvoiceAA } { \transpose d c \AvoiceAA }
>>
}
\score {
<<
\new Voice = AvoiceAA \AvoiceAA
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
\part ASvoiceBA { \ASvoiceBA } { \transpose d c \ASvoiceBA }
>>
}
\score {
<<
\new Voice = ASvoiceBA \ASvoiceBA
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
\part AAvoiceCA { \quotearticulations \AAvoiceCA \AvoiceAA } { \transpose d c \AAvoiceCA }
>>
}
\score {
<<
\new Voice = AAvoiceCA \AAvoiceCA
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
\part ATvoiceDA { \quotearticulations \ATvoiceDA \AvoiceAA } { \transpose d c \ATvoiceDA }
>>
}
\score {
<<
\new Voice = ATvoiceDA \ATvoiceDA
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
\part ABvoiceEA { \quotearticulations \ABvoiceEA \AvoiceAA } { \transpose d c \ABvoiceEA }
>>
}
\score {
<<
\new Voice = ABvoiceEA \ABvoiceEA
>>

        \midi   { 
        \context { \Staff  \remove "Staff_performer" }
        \context { \Voice  \consists "Staff_performer" }
        } 
   }
} %%end of book
