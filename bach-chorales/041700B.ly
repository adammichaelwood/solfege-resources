
% BWV 417 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 417"
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
    fis4     b cis d e      | % 1
    cis4. b8 a4\fermata  a      | % 2
    b b cis8 b cis4      | % 3
    fis,2.\fermata  fis4      | % 4
    b cis d e      | % 5
    cis4. b8 a4\fermata  a      | % 6
    b b cis8 b cis4      | % 7
    fis,2.\fermata  fis'4      | % 8
    e d d cis      | % 9
    d2.\fermata  cis4      | % 10
    d e fis fis      | % 11
    e4. d8 cis4\fermata  cis8 d16 e      | % 12
    d4 cis8. b16 b4 b8 cis16 d      | % 13
    cis4. b8 a4\fermata  g      | % 14
    fis b b8 cis ais4      | % 15
    b2.\fermata  s4 \bar "|." 
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
    cis4     fis e d8 fis b gis      | % 1
    gis fis eis16 dis eis8 fis4 fis      | % 2
    fis e8 d e4 e8 fis16 e      | % 3
    d2. cis4      | % 4
    fis e d8 fis b gis      | % 5
    gis fis eis16 dis eis8 fis4 fis      | % 6
    fis e8 d e4 e8 fis16 e      | % 7
    d2. b'4      | % 8
    b b a a      | % 9
    a2. a4      | % 10
    a a a4. gis8      | % 11
    a fis gis4 e fis      | % 12
    fis fis g8 fis g4      | % 13
    gis8 fis eis4 fis fis8 e      | % 14
    d e fis g fis g16 fis e8 fis16 e      | % 15
    dis2. s4 \bar "|." 
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
    ais'4     b4. ais8 b4. b8      | % 1
    b a gis cis cis4 cis      | % 2
    b8 a g2 fis4      | % 3
    fis2. ais4      | % 4
    b4. ais8 b4. b8      | % 5
    b a gis cis cis4 cis      | % 6
    b8 a g2 fis4      | % 7
    fis2. d'4      | % 8
    e8 fis g4 fis8 e16 d e8 fis16 g      | % 9
    fis2. e4      | % 10
    fis e d8 a d4      | % 11
    cis b16 a b8 a4 cis      | % 12
    cis8 b cis dis e d e b      | % 13
    gis a16 b cis4 cis d8 a      | % 14
    a4 d8 cis d e16 d cis8 fis,      | % 15
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
    fis8 e     d4 cis b8 a gis e'      | % 1
    a, b cis4 fis, fis'8 e      | % 2
    d fis g4 ais, ais      | % 3
    b2. fis'8 e      | % 4
    d4 cis b8 a gis e'      | % 5
    a, b cis4 fis, fis'8 e      | % 6
    d fis g4 ais, ais      | % 7
    b2. b8 a      | % 8
    g g' fis e a4 a,      | % 9
    d2. a'8 g      | % 10
    fis e d cis d e16 fis b,4      | % 11
    cis8 d e4 a, ais      | % 12
    b8 b'4 a8 g a16 b e,4      | % 13
    eis8 fis16 gis cis,4 fis b,8 cis      | % 14
    d cis d e fis e fis4      | % 15
    b,2. s4 \bar "|." 
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
