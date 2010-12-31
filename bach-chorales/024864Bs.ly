
% BWV 248 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 248"
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
    fis4     b a g fis      | % 1
    e2 fis4\fermata  cis'      | % 2
    d d cis8. d32 e cis4      | % 3
    b2.\fermata  fis4      | % 4
    b a g fis      | % 5
    e2 fis4\fermata  cis'      | % 6
    d d cis8. d32 e cis4      | % 7
    b2.\fermata  d4      | % 8
    cis a b cis      | % 9
    d2 d4\fermata  a      | % 10
    b a g g8 fis      | % 11
    fis2.\fermata  d'4      | % 12
    cis e d cis      | % 13
    b2 cis4\fermata  fis,      | % 14
    g fis e a      | % 15
    fis2.\fermata  s4 \bar "|." 
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
    d4     d8 e fis4 b,8 cis d4      | % 1
    d cis d ais'      | % 2
    b b b ais      | % 3
    fis2. d4      | % 4
    d8 e fis4 b,8 cis d4      | % 5
    d cis d ais'      | % 6
    b b b ais      | % 7
    fis2. b4      | % 8
    a a8 g16 fis g4 g8 e      | % 9
    d4. b'8 a4 a8 fis      | % 10
    g4 fis fis8 e e4      | % 11
    cis2. b'4      | % 12
    a4. e8 fis4. e8      | % 13
    fis d e4 e fis      | % 14
    b,8 e d4 d8 cis16 b cis4      | % 15
    d2. s4 \bar "|." 
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
    a'4     b8 cis d4 g, a      | % 1
    b8 g e a a4 fis'      | % 2
    fis d8 fis g e fis cis      | % 3
    d2. a4      | % 4
    b8 cis d4 g, a      | % 5
    b8 g e a a4 fis'      | % 6
    fis d8 fis g e fis cis      | % 7
    d2. e4      | % 8
    e d d e8 cis      | % 9
    fis4. b,8 fis'4 d      | % 10
    d d b b8 ais      | % 11
    a2. e'4      | % 12
    e4. b8 a4. a8      | % 13
    a b gis4 a d      | % 14
    d8 cis16 b a4 a a      | % 15
    a2. s4 \bar "|." 
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
    d4     g fis b a      | % 1
    g a d, fis      | % 2
    b8 fis g d e cis fis4      | % 3
    b,2. d4      | % 4
    g fis b a      | % 5
    g a d, fis      | % 6
    b8 fis g d e cis fis4      | % 7
    b,2. a'8 gis      | % 8
    a g fis d g fis e a      | % 9
    b a b g d4 fis8 d      | % 10
    g4 d8 b e4 e      | % 11
    fis2. gis8 e      | % 12
    a4. gis8 fis4. cis8      | % 13
    d b e4 a, d      | % 14
    e fis8 g a g a a,      | % 15
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
