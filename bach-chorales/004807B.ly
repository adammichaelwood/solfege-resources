
% BWV 48 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 48"
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
    g'4     g fis g a      | % 1
    bes a g\fermata  g      | % 2
    a a d c      | % 3
    bes2 a4\fermata  g      | % 4
    g fis g a      | % 5
    bes a g\fermata  g      | % 6
    a a d c      | % 7
    bes2 a4\fermata  d      | % 8
    c bes a c      | % 9
    bes a g\fermata  bes      | % 10
    a g f8 e d e      | % 11
    f4 g a\fermata  g8 a      | % 12
    bes4 c d4. c8      | % 13
    bes4 c8 bes a2      | % 14
    g2.\fermata  s4 \bar "|." 
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
    d4     ees d d c      | % 1
    bes8 c d c bes4 d8 e      | % 2
    f4 f bes4. a8      | % 3
    a g16 fis g4 fis d      | % 4
    ees d d c      | % 5
    bes8 c d c bes4 d8 e      | % 6
    f4 f bes4. a8      | % 7
    a g16 fis g4 fis d8 ees      | % 8
    f4. e8 f4 g      | % 9
    g fis d e      | % 10
    f e8 d cis4 d      | % 11
    d c c c      | % 12
    d ees d8 fis g a      | % 13
    bes a g2 fis4      | % 14
    d2. s4 \bar "|." 
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
    bes'4     a a g d'      | % 1
    d8 e fis4 g bes,      | % 2
    c d8 ees f4 c8 d      | % 3
    g, d d'4 d bes      | % 4
    a a g d'      | % 5
    d8 e fis4 g bes,      | % 6
    c d8 ees f4 c8 d      | % 7
    g, d d'4 d f,8 g      | % 8
    a4 bes c c      | % 9
    d d8 c bes4 c      | % 10
    c bes a8 g f4      | % 11
    bes a8 g f4 g      | % 12
    f g8 a bes4. a8      | % 13
    d4 c8 d ees4 d8 c      | % 14
    b2. s4 \bar "|." 
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
    g'4     c, d e fis      | % 1
    g d g, g'      | % 2
    f8 ees d c bes d e fis      | % 3
    g a bes c d4 g,      | % 4
    c, d e fis      | % 5
    g d g, g'      | % 6
    f8 ees d c bes d e fis      | % 7
    g a bes c d4 bes      | % 8
    a g f ees      | % 9
    d8 c d4 g, c      | % 10
    f, g a bes8 c      | % 11
    d4 e f ees      | % 12
    d c bes8 d e fis      | % 13
    g f ees d c4 d      | % 14
    g,2. s4 \bar "|." 
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
