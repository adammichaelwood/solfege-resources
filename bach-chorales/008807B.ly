
% BWV 88 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 88"
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
    fis4     b cis d cis      | % 1
    b cis ais2      | % 2
    fis4\fermata  a a g      | % 3
    fis b b ais      | % 4
    b2.\fermata  fis4      | % 5
    b cis d cis      | % 6
    b cis ais2      | % 7
    fis4\fermata  a a g      | % 8
    fis b b ais      | % 9
    b2.\fermata  cis4      | % 10
    d e fis8 e fis g      | % 11
    e4 e d\fermata  fis      | % 12
    e d cis b8 cis      | % 13
    d e cis4 b\fermata  s4 \bar "|." 
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
    d8 e     fis4 fis fis8 g a4      | % 1
    g g fis2      | % 2
    cis4 cis8 d e4 e      | % 3
    fis8 e d4 cis8 d e4      | % 4
    d2. d8 e      | % 5
    fis4 fis fis8 g a4      | % 6
    g g fis2      | % 7
    cis4 cis8 d e4 e      | % 8
    fis8 e d4 cis8 d e4      | % 9
    d2. fis4      | % 10
    fis8 b a g fis4 b      | % 11
    b a8 g fis4 a      | % 12
    ais b e,8 dis e4      | % 13
    fis8 g fis e dis4 s4 \bar "|." 
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
    b'8 cis     d4 cis b cis8 d      | % 1
    e4 e8 d cis2      | % 2
    ais4 a a8 b cis4      | % 3
    cis b8 a g4 fis      | % 4
    fis2. b8 cis      | % 5
    d4 cis b cis8 d      | % 6
    e4 e8 d cis2      | % 7
    ais4 a a8 b cis4      | % 8
    cis b8 a g4 fis      | % 9
    fis2. ais4      | % 10
    b8 g' fis e d4 d      | % 11
    d8 b cis4 a a8 b      | % 12
    cis4 fis,8 g a fis b4      | % 13
    b ais fis s4 \bar "|." 
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
    b4     b' ais b fis      | % 1
    g8 fis e4 fis2      | % 2
    fis,4 fis' cis b8 a      | % 3
    d4 g8 fis e4 fis      | % 4
    b,2. b'4      | % 5
    b ais b fis      | % 6
    g8 fis e4 fis2      | % 7
    fis,4 fis' cis b8 a      | % 8
    d4 g8 fis e4 fis      | % 9
    b,2. fis'4      | % 10
    b cis d8 cis b a      | % 11
    g4 a d, d'      | % 12
    cis b a g      | % 13
    fis8 e fis4 b, s4 \bar "|." 
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
