
% BWV 307 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 307"
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
    c c d\fermata  bes8 c      | % 2
    d4 ees f8 ees d4      | % 3
    c2 bes4\fermata  bes      | % 4
    bes8 c d4 c bes      | % 5
    c c d\fermata  bes8 c      | % 6
    d4 ees f8 ees d4      | % 7
    c2 bes4\fermata  d      | % 8
    d c bes a      | % 9
    bes8 c d4 c\fermata  c      | % 10
    bes a bes f      | % 11
    bes c d\fermata  bes8 c      | % 12
    d4 ees f8 ees d4      | % 13
    c2 bes4\fermata  s4 \bar "|." 
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
    f8 ees     f4 bes a g      | % 1
    g f f f      | % 2
    bes bes c bes      | % 3
    bes a f f8 ees      | % 4
    f4 bes a g      | % 5
    g f f f      | % 6
    bes bes c bes      | % 7
    bes a f f      | % 8
    f f8 ees d g~ g fis      | % 9
    g a bes4 a a      | % 10
    a8 g g fis g4 d      | % 11
    d g fis d      | % 12
    g g f f      | % 13
    g f8 ees d4 s4 \bar "|." 
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
    d'8 c     bes4 f' f8 ees d4      | % 1
    c8 bes bes a bes4 d8 ees      | % 2
    f4 g f f      | % 3
    g f8 ees d4 d8 c      | % 4
    bes4 f' f8 ees d4      | % 5
    c8 bes bes a bes4 d8 ees      | % 6
    f4 g f f      | % 7
    g f8 ees d4 bes      | % 8
    bes a bes c      | % 9
    d8 ees f4 f d      | % 10
    d d d d8 c      | % 11
    bes a g4 a g8 a      | % 12
    bes4 bes bes bes      | % 13
    bes a f s4 \bar "|." 
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
    bes8 c     d4 c8 bes f'4 g8 f      | % 1
    ees4 f bes, bes      | % 2
    bes' a8 g a4 bes      | % 3
    ees, f bes, bes8 c      | % 4
    d4 c8 bes f'4 g8 f      | % 5
    ees4 f bes, bes      | % 6
    bes' a8 g a4 bes      | % 7
    ees, f bes, bes8 c      | % 8
    d ees f4 g a      | % 9
    g d8 ees f4 fis      | % 10
    g d g8 a bes a      | % 11
    g f ees4 d g,      | % 12
    g' f8 ees d c bes4      | % 13
    ees f bes, s4 \bar "|." 
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
