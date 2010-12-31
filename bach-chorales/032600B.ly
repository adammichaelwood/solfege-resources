
% BWV 326 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 326"
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
    \time 3/4 
    \partial 4
    bes'4     bes2 a4      | % 1
    g2 f4      | % 2
    bes c2      | % 3
    d\fermata  d4      | % 4
    d2 d4      | % 5
    c2 d4      | % 6
    ees d2      | % 7
    c\fermata  bes4      | % 8
    c2 d4      | % 9
    c2 bes4      | % 10
    g a2      | % 11
    bes\fermata  f'4      | % 12
    d2 bes4      | % 13
    c2 ees4      | % 14
    d c2      | % 15
    bes\fermata  s4 \bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 3/4 
    \partial 4
    f4     g2 f4      | % 1
    ees2 d4      | % 2
    d g f      | % 3
    f2 a4      | % 4
    g2 g4      | % 5
    g f f      | % 6
    f f2      | % 7
    f g4      | % 8
    f2 f8 bes      | % 9
    g4 f8 ees d4      | % 10
    g g fis      | % 11
    g2 f4      | % 12
    f2 g4      | % 13
    f2 f4      | % 14
    f g f8 ees      | % 15
    d2 s4 \bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 3/4 
    \partial 4
    d'4     d2 d4      | % 1
    bes2 bes4      | % 2
    bes2 a4      | % 3
    bes2 a4      | % 4
    bes2 bes4      | % 5
    bes a bes      | % 6
    c bes2      | % 7
    a d4      | % 8
    c2 bes4      | % 9
    bes a bes      | % 10
    bes8 d ees4 d      | % 11
    d2 c4      | % 12
    d2 d4      | % 13
    a2 a4      | % 14
    bes2 a4      | % 15
    f2 s4 \bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 3/4 
    \partial 4
    bes8 a     g a bes c d bes      | % 1
    ees f g a bes a      | % 2
    g f ees d ees f      | % 3
    bes,2 fis4      | % 4
    g8 d' g f ees d      | % 5
    ees c f ees d c      | % 6
    bes a bes c d ees      | % 7
    f2 g4      | % 8
    a8 f g a bes g      | % 9
    ees d ees f g d      | % 10
    ees bes c a d d,      | % 11
    g2 a'4      | % 12
    bes8 c bes a g f      | % 13
    ees g f ees d c      | % 14
    bes d ees c f f,      | % 15
    bes2 s4 \bar "|." 
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
