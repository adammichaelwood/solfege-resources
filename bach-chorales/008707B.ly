
% BWV 87 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 87"
composer = "Johann Sebastien Bach"
tagline = "Created by Michael Ellis from digital transcriptions by Margaret Greentree (jsbchorales.net)"
}
ASvoiceAA = \relative c'{
    \set Staff.instrumentName = #"Soprano"
    \set Staff.shortInstrumentName = #"S."
    \clef treble
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    a'4 a g f      | % 1
    e2 d\fermata       | % 2
    a'4 a b cis      | % 3
    d2 cis\fermata       | % 4
    d8 e f4 e e      | % 5
    d1\fermata       | % 6
    a4 a g f      | % 7
    e2 d\fermata       | % 8
    a'4 a b cis      | % 9
    d2 cis\fermata       | % 10
    d8 e f4 e e      | % 11
    d1\fermata       | % 12
    a4 a bes a      | % 13
    g8 a16 bes g4 f2\fermata       | % 14
    a4 b c a      | % 15
    d c8 b b2      | % 16
    a\fermata  a4 d      | % 17
    g, f8 e e2      | % 18
    d1\fermata  \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    f4 f e d      | % 1
    d cis a2      | % 2
    f'4 f f8 d g4      | % 3
    a g a2      | % 4
    a4 a bes a8 g      | % 5
    f1      | % 6
    f4 f e d      | % 7
    d cis a2      | % 8
    f'4 f f8 d g4      | % 9
    a g a2      | % 10
    a4 a bes a8 g      | % 11
    f1      | % 12
    f8 g a4 a8 g f4      | % 13
    f e c2      | % 14
    f4 f g e      | % 15
    a8 e e f e f e d      | % 16
    cis2 d4 d      | % 17
    d8 cis d4 d8 cis16 b cis4      | % 18
    a1 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    d'4 d d8 cis d4      | % 1
    a8 bes a g f2      | % 2
    d'4 d d8 b e4      | % 3
    d8 e16 f e8 d e2      | % 4
    a,4 d d cis      | % 5
    a1      | % 6
    d4 d d8 cis d4      | % 7
    a8 bes a g f2      | % 8
    d'4 d d8 b e4      | % 9
    d8 e16 f e8 d e2      | % 10
    a,4 d d cis      | % 11
    a1      | % 12
    d4 d d c      | % 13
    c8 a bes g a2      | % 14
    c4 d e cis      | % 15
    a8 b c a a4 gis      | % 16
    a2 f8 g a f      | % 17
    g4 a8 bes a e a g      | % 18
    fis1 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    d8 e f d bes'4 a8 g      | % 1
    a4 a, d2      | % 2
    d8 e f d g4 f8 e      | % 3
    f g16 a bes4 a2      | % 4
    f8 e d f g e a4      | % 5
    d,1      | % 6
    d8 e f d bes'4 a8 g      | % 7
    a4 a, d2      | % 8
    d8 e f d g4 f8 e      | % 9
    f g16 a bes4 a2      | % 10
    f8 e d f g e a4      | % 11
    d,1      | % 12
    d8 e f d g4 a8 bes      | % 13
    c4 c, f2      | % 14
    f8 e d f e f g e      | % 15
    fis gis a d, e4 e,      | % 16
    a2 d8 e f d      | % 17
    bes'4 a8 g a4 a,      | % 18
    d1 \bar "|."\bar "|." 
}% end of last bar in partorvoice



\addQuote "articulations"   { \ASvoiceAA }
\book {
\layout { \scorepaper }
\score {
<<
\part ASvoiceAA { \ASvoiceAA } { \transpose c c \ASvoiceAA }
\part AAvoiceBA { \quotearticulations \AAvoiceBA \ASvoiceAA } { \transpose c c \AAvoiceBA }
\part ATvoiceCA { \quotearticulations \ATvoiceCA \ASvoiceAA } { \transpose c c \ATvoiceCA }
\part ABvoiceDA { \quotearticulations \ABvoiceDA \ASvoiceAA } { \transpose c c \ABvoiceDA }
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
\part ASvoiceAA { \ASvoiceAA } { \transpose c c \ASvoiceAA }
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
\part AAvoiceBA { \quotearticulations \AAvoiceBA \ASvoiceAA } { \transpose c c \AAvoiceBA }
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
\part ATvoiceCA { \quotearticulations \ATvoiceCA \ASvoiceAA } { \transpose c c \ATvoiceCA }
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
\part ABvoiceDA { \quotearticulations \ABvoiceDA \ASvoiceAA } { \transpose c c \ABvoiceDA }
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
