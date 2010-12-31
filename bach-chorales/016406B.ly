
% BWV 164 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 164"
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
    bes'4     bes8 c d4 c bes      | % 1
    a2 g4\fermata  d'      | % 2
    ees c d c      | % 3
    bes2.\fermata  bes4      | % 4
    bes8 c d4 c bes      | % 5
    a2 g4\fermata  d'      | % 6
    ees c d c      | % 7
    bes2.\fermata  bes8 c      | % 8
    d4 d ees ees      | % 9
    f ees8 d c4\fermata  f      | % 10
    d d c bes      | % 11
    a2 g4\fermata  d'      | % 12
    ees c d c      | % 13
    bes2.\fermata  s4 \bar "|." 
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
    f4     g8 a bes4 a g      | % 1
    g fis g g      | % 2
    g f f f      | % 3
    f2. f4      | % 4
    g8 a bes4 a g      | % 5
    g fis g g      | % 6
    g f f f      | % 7
    f2. f4      | % 8
    bes bes8 a g4 g      | % 9
    f2 f4 f      | % 10
    f f f8 ees d4      | % 11
    ees8 c d4 d g      | % 12
    g f f8 g a4      | % 13
    f2. s4 \bar "|." 
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
    d'4     ees f f8 ees d4      | % 1
    ees d8 c bes4 bes      | % 2
    bes a bes bes8 a      | % 3
    d2. d4      | % 4
    ees f f8 ees d4      | % 5
    ees d8 c bes4 bes      | % 6
    bes a bes bes8 a      | % 7
    d2. d8 ees      | % 8
    f4 g g8 f ees d      | % 9
    c4 bes a c      | % 10
    bes bes a a8 g      | % 11
    g4 fis bes b      | % 12
    c8 d ees a, bes4 f'8 ees      | % 13
    d2. s4 \bar "|." 
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
    bes'4     ees, bes f' g      | % 1
    c, d ees g      | % 2
    c, f8 ees d ees f4      | % 3
    bes,2. bes'4      | % 4
    ees, bes f' g      | % 5
    c, d ees g      | % 6
    c, f8 ees d ees f4      | % 7
    bes,2. bes4      | % 8
    bes'8 a g f ees d c bes      | % 9
    a4 bes f a      | % 10
    bes8 c d ees f fis g bes,      | % 11
    c a d4 g, g'      | % 12
    c8 bes a f bes ees, f f,      | % 13
    bes2. s4 \bar "|." 
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
