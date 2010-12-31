
% BWV 316 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 316"
composer = "Johann Sebastien Bach"
tagline = "Created by Michael Ellis from digital transcriptions by Margaret Greentree (jsbchorales.net)"
}
ASvoiceAA = \relative c'{
    \set Staff.instrumentName = #"Soprano"
    \set Staff.shortInstrumentName = #"S."
    \clef treble
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    d'4     g, a8 bes c4 bes      | % 1
    a a g\fermata  c      | % 2
    c c d c      | % 3
    d e f\fermata  d      | % 4
    c bes a g      | % 5
    a2 g4\fermata  d'      | % 6
    g, a8 bes c4 bes      | % 7
    a a g\fermata  c      | % 8
    c c d c      | % 9
    d e f\fermata  d      | % 10
    c bes a g      | % 11
    a2 g4\fermata  a      | % 12
    bes c d ees      | % 13
    d c bes\fermata  d      | % 14
    f ees d g,8 a      | % 15
    bes4 a g\fermata  s4 \bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    g'4     g fis8 g a4. g8~      | % 1
    g fis16 e fis4 d g      | % 2
    f8 e f4 f f      | % 3
    bes8 d4 cis8 d4 bes      | % 4
    a d,8 e fis4 g      | % 5
    g fis d g      | % 6
    g fis8 g a4. g8~      | % 7
    g fis16 e fis4 d g      | % 8
    f8 e f4 f f      | % 9
    bes8 d4 cis8 d4 bes      | % 10
    a d,8 e fis4 g      | % 11
    g fis d f      | % 12
    f8 bes4 a8 bes4 c~      | % 13
    c8 bes4 a8 f4 f      | % 14
    f8 a g f f4 ees      | % 15
    d8 g4 fis8 d4 s4 \bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    bes'8 c     d4 c8 d ees d d4      | % 1
    ees8 c a d16 c bes4 c8 bes      | % 2
    a bes c a bes4 c      | % 3
    bes8 a g4 a g'~      | % 4
    g8 fis g4 d8 c bes4      | % 5
    ees8 c a d16 c bes4 bes8 c      | % 6
    d4 c8 d ees d d4      | % 7
    ees8 c a d16 c bes4 c8 bes      | % 8
    a bes c a bes4 c      | % 9
    bes8 a g4 a g'~      | % 10
    g8 fis g4 d8 c bes4      | % 11
    ees8 c a d16 c bes4 c      | % 12
    d ees f f      | % 13
    f g8 f16 ees d4 d      | % 14
    c8 d bes c d4 c8 fis,      | % 15
    g d' d8. c16 b4 s4 \bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    g8 a     bes4 a8 g fis4 g      | % 1
    c8 a d4 g, e      | % 2
    f8 g a f bes bes'4 a8      | % 3
    g f e4 d g,      | % 4
    a bes8 c d4 ees8 d      | % 5
    c4 d g, g8 a      | % 6
    bes4 a8 g fis4 g      | % 7
    c8 a d4 g, e      | % 8
    f8 g a f bes bes'4 a8      | % 9
    g f e4 d g,      | % 10
    a bes8 c d4 ees8 d      | % 11
    c4 d g, f'8 ees      | % 12
    d4 c bes8 bes'4 a8      | % 13
    bes d, ees f bes,4 bes      | % 14
    a8 f g a bes4 c      | % 15
    bes8 g d'4 g, s4 \bar "|." 
}% end of last bar in partorvoice



\addQuote "articulations"   { \ASvoiceAA }
\book {
\layout { \scorepaper }
\score {
<<
\part ASvoiceAA { \ASvoiceAA } { \transpose bes c \ASvoiceAA }
\part AAvoiceBA { \quotearticulations \AAvoiceBA \ASvoiceAA } { \transpose bes c \AAvoiceBA }
\part ATvoiceCA { \quotearticulations \ATvoiceCA \ASvoiceAA } { \transpose bes c \ATvoiceCA }
\part ABvoiceDA { \quotearticulations \ABvoiceDA \ASvoiceAA } { \transpose bes c \ABvoiceDA }
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
\part ASvoiceAA { \ASvoiceAA } { \transpose bes c \ASvoiceAA }
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
\part AAvoiceBA { \quotearticulations \AAvoiceBA \ASvoiceAA } { \transpose bes c \AAvoiceBA }
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
\part ATvoiceCA { \quotearticulations \ATvoiceCA \ASvoiceAA } { \transpose bes c \ATvoiceCA }
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
\part ABvoiceDA { \quotearticulations \ABvoiceDA \ASvoiceAA } { \transpose bes c \ABvoiceDA }
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
