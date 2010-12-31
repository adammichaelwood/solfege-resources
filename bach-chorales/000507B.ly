
% BWV 5 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 5"
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
    g'4     g a bes c      | % 1
    d2.\fermata  d4      | % 2
    d c bes c      | % 3
    a2.\fermata  a4      | % 4
    bes c d d      | % 5
    c2 d4\fermata  d      | % 6
    bes c d d      | % 7
    c2 bes4\fermata  d      | % 8
    f d d d      | % 9
    c2 c4\fermata  c      | % 10
    d c bes c      | % 11
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
    d4     ees e8 fis g4 g      | % 1
    fis2. fis4      | % 2
    g g8 fis g4 a      | % 3
    fis2. fis4      | % 4
    g a bes bes      | % 5
    bes a8 g a4 fis      | % 6
    d c f g      | % 7
    g f8 ees d4 f      | % 8
    f f8 g a4 g      | % 9
    g8 f g e f4 f8 ees      | % 10
    d4 e8 fis g4 g      | % 11
    g fis d s4 \bar "|." 
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
    bes'4     c c d ees      | % 1
    a,2. a4      | % 2
    bes c d ees      | % 3
    d2. d4      | % 4
    d ees f f      | % 5
    g f8 ees d4 a      | % 6
    bes f'8 ees d c bes4      | % 7
    bes a f bes      | % 8
    c d d8 c bes4      | % 9
    bes8 a bes g a4 a      | % 10
    bes a g8 bes ees4      | % 11
    d8 c16 bes c4 b s4 \bar "|." 
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
    g'4     c8 bes a4 g8 f ees4      | % 1
    d2. c4      | % 2
    bes a g c      | % 3
    d2. d4      | % 4
    g f8 ees d c bes4      | % 5
    ees f fis d      | % 6
    g a bes8 a g f      | % 7
    ees4 f bes, bes'      | % 8
    a bes fis g8 f      | % 9
    e4 c f f      | % 10
    bes, c8 d ees4 d8 c      | % 11
    d2 g,4 s4 \bar "|." 
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
