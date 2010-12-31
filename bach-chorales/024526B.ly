
% BWV 245 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 245"
composer = "Johann Sebastien Bach"
tagline = "Created by Michael Ellis from digital transcriptions by Margaret Greentree (jsbchorales.net)"
}
ASvoiceAA = \relative c'{
    \set Staff.instrumentName = #"Soprano"
    \set Staff.shortInstrumentName = #"S."
    \clef treble
    %staffkeysig
    \key es \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    ees4     bes' bes c d      | % 1
    ees2 ees4\fermata  g      | % 2
    f ees ees d      | % 3
    ees2.\fermata  ees,4      | % 4
    bes' bes c d      | % 5
    ees2\fermata  ees4 g      | % 6
    f ees ees d      | % 7
    ees2.\fermata  ees8 f      | % 8
    g4 g f ees      | % 9
    d8 c d4 bes\fermata  d      | % 10
    ees d c c      | % 11
    bes2.\fermata  bes4      | % 12
    g8 aes bes4 c bes      | % 13
    bes aes g\fermata  bes      | % 14
    aes g f f      | % 15
    ees2.\fermata  s4 \bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key es \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    bes4     ees g aes g      | % 1
    g2 g4 c      | % 2
    c aes g f      | % 3
    g2. bes,4      | % 4
    ees g aes g      | % 5
    g2 g4 c      | % 6
    c aes g f      | % 7
    g2. g8 aes      | % 8
    bes4 c c a      | % 9
    bes8 a bes4 f bes      | % 10
    bes bes bes a      | % 11
    f2. f4      | % 12
    ees8 f g4 aes g      | % 13
    g f ees ees      | % 14
    ees ees ees d      | % 15
    bes2. s4 \bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key es \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    g'4     bes ees ees d      | % 1
    c2 c4 ees      | % 2
    c c bes bes      | % 3
    bes2. g4      | % 4
    bes ees ees d      | % 5
    c2 c4 ees      | % 6
    c c bes bes      | % 7
    bes2. bes4      | % 8
    ees ees f f      | % 9
    f8 ees f4 d f      | % 10
    ees f g f8 ees      | % 11
    d2. bes4      | % 12
    bes ees ees des      | % 13
    c2 c4 g      | % 14
    aes bes c bes8 aes      | % 15
    g2. s4 \bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key es \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    ees4     g ees aes b,      | % 1
    c2 c4 c'      | % 2
    aes f bes bes,      | % 3
    ees2. ees4      | % 4
    g ees aes b,      | % 5
    c2 c4 c'      | % 6
    aes f bes bes,      | % 7
    ees2. ees4      | % 8
    ees'8 d c bes a4 f      | % 9
    bes2 bes,4 aes'      | % 10
    g f ees f      | % 11
    bes,2. d4      | % 12
    ees des c8 d e4      | % 13
    f2 c4 des      | % 14
    c bes a bes      | % 15
    ees2. s4 \bar "|." 
}% end of last bar in partorvoice



\addQuote "articulations"   { \ASvoiceAA }
\book {
\layout { \scorepaper }
\score {
<<
\part ASvoiceAA { \ASvoiceAA } { \transpose es c \ASvoiceAA }
\part AAvoiceBA { \quotearticulations \AAvoiceBA \ASvoiceAA } { \transpose es c \AAvoiceBA }
\part ATvoiceCA { \quotearticulations \ATvoiceCA \ASvoiceAA } { \transpose es c \ATvoiceCA }
\part ABvoiceDA { \quotearticulations \ABvoiceDA \ASvoiceAA } { \transpose es c \ABvoiceDA }
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
\part ASvoiceAA { \ASvoiceAA } { \transpose es c \ASvoiceAA }
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
\part AAvoiceBA { \quotearticulations \AAvoiceBA \ASvoiceAA } { \transpose es c \AAvoiceBA }
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
\part ATvoiceCA { \quotearticulations \ATvoiceCA \ASvoiceAA } { \transpose es c \ATvoiceCA }
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
\part ABvoiceDA { \quotearticulations \ABvoiceDA \ASvoiceAA } { \transpose es c \ABvoiceDA }
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
