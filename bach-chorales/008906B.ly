
% BWV 89 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 89"
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
    d c bes c8 bes      | % 11
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
    d4     d d d g      | % 1
    fis2. fis4      | % 2
    g g8 fis g4 a      | % 3
    fis2. fis4      | % 4
    g a bes bes      | % 5
    bes a bes a      | % 6
    g a8 g f4 f      | % 7
    g f f bes      | % 8
    c bes a g      | % 9
    g f8 e f4 g      | % 10
    fis fis g g      | % 11
    g fis d s4 \bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef "treble_8"
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    bes'4     bes a g8 bes ees4      | % 1
    a,2. a4      | % 2
    bes c d ees      | % 3
    d2. d4      | % 4
    d f f g      | % 5
    g f f d      | % 6
    d f bes, bes      | % 7
    bes a d f      | % 8
    f f8 g a a, bes4      | % 9
    bes a8 g a4 g      | % 10
    a d d c8 d      | % 11
    ees4 d8 c b4 s4 \bar "|." 
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
    g4     g' fis g ees      | % 1
    d2. c4      | % 2
    bes a g c      | % 3
    d2. d4      | % 4
    g f bes8 a g f      | % 5
    ees4 f bes, fis'      | % 6
    g f8 ees d c bes d      | % 7
    ees c f4 bes, bes'      | % 8
    a bes fis g      | % 9
    e c f ees      | % 10
    d8 c bes a g f' ees d      | % 11
    c4 d g, s4 \bar "|." 
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
