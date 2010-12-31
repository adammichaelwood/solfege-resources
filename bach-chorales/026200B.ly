
% BWV 262 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 262"
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
    a'4 d a b      | % 1
    a4. g8 fis4 fis\fermata       | % 2
    a a g fis      | % 3
    e4. d8 d2\fermata       | % 4
    a'4 d a b      | % 5
    a4. g8 fis4 fis\fermata       | % 6
    a a g fis      | % 7
    e4. d8 d2\fermata       | % 8
    e4 e fis8 gis a4      | % 9
    a4. gis8 a4 a\fermata       | % 10
    b4. cis8 d4 d      | % 11
    cis4. cis8 b4 b\fermata       | % 12
    fis fis b a      | % 13
    a gis a2\fermata       | % 14
    b4 a g fis      | % 15
    e4. d8 d2\fermata  \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 4/4 
    d4 d d d      | % 1
    d cis d d      | % 2
    d d8 cis b cis d4~      | % 3
    d cis d2      | % 4
    d4 d d d      | % 5
    d cis d d      | % 6
    d d8 cis b cis d4~      | % 7
    d cis d2      | % 8
    cis4 cis d cis      | % 9
    fis e8 d cis4 cis      | % 10
    e8 fis g4 fis fis      | % 11
    fis4. e8 d4 d      | % 12
    d d d cis      | % 13
    d d cis2      | % 14
    d4 d8 cis b cis d4      | % 15
    d cis d2 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 4/4 
    fis4 fis8 g a4 g8 fis      | % 1
    e d e4 d d      | % 2
    fis fis g a      | % 3
    b a8. g16 fis2      | % 4
    fis4 fis8 g a4 g8 fis      | % 5
    e d e4 d d      | % 6
    fis fis g a      | % 7
    b a8. g16 fis2      | % 8
    a4 a a a      | % 9
    b b a a      | % 10
    g4. a8 b2~      | % 11
    b4 ais b2      | % 12
    a4 a g8 fis e4      | % 13
    d8 fis e d e2      | % 14
    g4 fis g a      | % 15
    b a8. g16 fis2 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 4/4 
    d4 b fis g      | % 1
    a a d, d      | % 2
    d' d e fis      | % 3
    g8 fis a a, d2      | % 4
    d4 b fis g      | % 5
    a a d, d      | % 6
    d' d e fis      | % 7
    g8 fis a a, d2      | % 8
    a4 a d fis8 e      | % 9
    d4 e a,2      | % 10
    e' b8 cis d e      | % 11
    fis2 b,      | % 12
    d4 d g, a      | % 13
    b2 a      | % 14
    g4 d' e fis      | % 15
    g8 e a a, d2 \bar "|."\bar "|." 
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
