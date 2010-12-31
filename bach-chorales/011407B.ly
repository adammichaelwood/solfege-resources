
% BWV 114 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 114"
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
    bes'4     bes g8 a bes c d4      | % 1
    c c bes\fermata  bes      | % 2
    a g8 a bes4 c8 bes      | % 3
    a2 g4\fermata  bes      | % 4
    bes g8 a bes c d4      | % 5
    c c bes\fermata  bes      | % 6
    a g8 a bes4 c8 bes      | % 7
    a2 g4\fermata  c      | % 8
    d d a8 bes c4      | % 9
    bes bes a\fermata  bes      | % 10
    c g8 a bes4 a      | % 11
    g g f\fermata  bes      | % 12
    a g8 a bes4 c8 bes      | % 13
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
    g'4     f ees d d      | % 1
    ees ees16 d ees8 d4 d      | % 2
    d8 c' bes a g4 g8 f      | % 3
    ees4 d8 c bes4 g'      | % 4
    f ees d d      | % 5
    ees ees16 d ees8 d4 d      | % 6
    d8 c' bes a g4 g8 f      | % 7
    ees4 d8 c bes4 f'      | % 8
    f f c4. a'8      | % 9
    a g16 fis g4 f g      | % 10
    g8 f ees4 d8 e f4      | % 11
    f e c d      | % 12
    c8 d e fis g4 g      | % 13
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
    d'4     d8 c bes4 bes f      | % 1
    g a f g      | % 2
    fis8 ees' d c bes a g4      | % 3
    g fis g d'      | % 4
    d8 c bes4 bes f      | % 5
    g a f g      | % 6
    fis8 ees' d c bes a g4      | % 7
    g fis g f      | % 8
    bes bes f' fis8 a,      | % 9
    bes c d4 d d      | % 10
    g, c bes c      | % 11
    c8 g c bes a4 f8 g      | % 12
    a bes c4 d c8 d      | % 13
    ees a, d c b4 s4 \bar "|." 
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
    g'4     d ees8 f g a bes4      | % 1
    ees, f bes, g      | % 2
    d' e8 fis g f ees d      | % 3
    c4 d g, g'      | % 4
    d ees8 f g a bes4      | % 5
    ees, f bes, g      | % 6
    d' e8 fis g f ees d      | % 7
    c4 d g, a      | % 8
    bes8 c d ees f g a fis      | % 9
    g a bes c d4 g,8 f      | % 10
    ees d c4 g a8 bes      | % 11
    c bes c4 f, d'8 e      | % 12
    f4 c g'8 f ees d      | % 13
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
