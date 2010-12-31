
% BWV 350 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 350"
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
    g'4     g g f8 ees d4      | % 1
    f g a g      | % 2
    g fis g\fermata  bes      | % 3
    a g f d      | % 4
    f g a g      | % 5
    g fis g\fermata  d'      | % 6
    d d g, c      | % 7
    c bes a g      | % 8
    f2 d4\fermata  g      | % 9
    g fis g fis      | % 10
    g fis g a      | % 11
    bes2 a4\fermata  bes      | % 12
    a g f d8 ees      | % 13
    f4 f g f      | % 14
    ees2 d4\fermata  d'      | % 15
    c bes a fis      | % 16
    g a8 bes c4 bes      | % 17
    a2 g4\fermata  s4 \bar "|." 
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
    d4     g8 f ees d c4~ c8 bes      | % 1
    d4 ees8 d ees4 d      | % 2
    ees d d g      | % 3
    g8 fis g ees c4 c8 bes16 c      | % 4
    d8 c bes4 ees8 d e4      | % 5
    d d d g      | % 6
    g~ g8 fis g4 g      | % 7
    d d~ d8 c bes d      | % 8
    c bes c4 bes d      | % 9
    d8 ees d c bes c d4      | % 10
    d c d d      | % 11
    d2 d4 d      | % 12
    d8. c16 bes4 c bes      | % 13
    a8 bes16 c d ees f8~ f ees~ ees d~      | % 14
    d c16 b c4 b g'~      | % 15
    g8 fis g4~ g8 fis16 e d4~      | % 16
    d8 e fis g a4. g8~      | % 17
    g fis16 e fis4 d s4 \bar "|." 
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
    bes'8 c     d4 bes a8 g f4      | % 1
    bes bes c~ c8 bes      | % 2
    a4~ a16 bes c8~ c bes d4      | % 3
    d8. c16 bes4 c8 a f4      | % 4
    bes8 a g4 c bes~      | % 5
    bes8 a16 g a bes c8 bes4 bes8 c      | % 6
    d c16 bes a8 bes16 c bes2      | % 7
    a4~ a8 g~ g fis g bes      | % 8
    a g a4 f bes8 c      | % 9
    d c16 bes a4 g a      | % 10
    g a bes a~      | % 11
    a g fis g~      | % 12
    g8 fis g ees c f f4      | % 13
    f8 g16 a bes4 bes bes8. a16      | % 14
    g2 g4 bes      | % 15
    c d d a      | % 16
    bes c8 d ees d d4      | % 17
    ees8 c a d b4 s4 \bar "|." 
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
    g8 a     bes4 g a bes~      | % 1
    bes8 a g4~ g8 fis g4      | % 2
    c d g, g      | % 3
    d' ees a,8 f bes4~      | % 4
    bes ees8 d c4. cis8      | % 5
    d2 g,4 g8 a      | % 6
    bes c d4 ees e      | % 7
    fis g d ees      | % 8
    a, f bes g8 a      | % 9
    bes c d4 ees d8 c      | % 10
    bes c bes a g a g fis      | % 11
    g a bes g d'4 g,      | % 12
    d' ees a, bes8 c      | % 13
    d4 d ees bes      | % 14
    c8 d ees c g'4 g,      | % 15
    a bes8 c d4. c8      | % 16
    bes4 a8 g fis4 g      | % 17
    c d g, s4 \bar "|." 
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
