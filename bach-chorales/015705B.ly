
% BWV 157 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 157"
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
    a'4 a b b      | % 1
    cis cis d2\fermata       | % 2
    e4 e d d      | % 3
    cis8 b cis d b2      | % 4
    a\fermata  a4 a      | % 5
    b b a g      | % 6
    fis2\fermata  a4 a      | % 7
    g g fis8 e fis g      | % 8
    e2 d\fermata       | % 9
    d'4 d cis cis      | % 10
    b b a2\fermata       | % 11
    a4 a g fis      | % 12
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
    fis8 e d4 d g8 fis      | % 1
    e4 a8 g fis2      | % 2
    a4 gis8 a b4 fis8 e      | % 3
    e4 a a gis      | % 4
    e2 fis4 fis      | % 5
    g g8 fis e d e cis      | % 6
    d2 cis4 b      | % 7
    b e e d      | % 8
    d cis a2      | % 9
    fis'4 fis fis8 eis fis4      | % 10
    fis8 eis16 fis gis8 eis fis2      | % 11
    fis4 fis e d      | % 12
    d cis a2 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 4/4 
    d'4 a8 fis g b e d      | % 1
    cis b a4 a2      | % 2
    a8 b cis4 b8 cis d b      | % 3
    cis4 fis fis e8 d      | % 4
    cis2 d4 d      | % 5
    d e a, a      | % 6
    a2 a8 g fis4      | % 7
    g a a d8 cis      | % 8
    b4 a8 g fis2      | % 9
    b4 b b a      | % 10
    b8 d cis4 cis2      | % 11
    cis4 b b b      | % 12
    b a8 e fis2 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 4/4 
    d8 e fis d g fis e4      | % 1
    a8 g fis e d2      | % 2
    cis8 d e fis gis a b gis      | % 3
    a gis fis e d4 e      | % 4
    a,2 d'8 cis b a      | % 5
    g fis e d cis b cis a      | % 6
    d2 fis8 e dis b      | % 7
    e d cis a d cis b a      | % 8
    g4 a d2      | % 9
    b8 cis d e fis gis a fis      | % 10
    gis fis eis cis fis2      | % 11
    fis8 e dis b e g b a      | % 12
    g e a a, d2 \bar "|."\bar "|." 
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
