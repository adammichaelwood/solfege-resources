
% BWV 127 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 127"
composer = "Johann Sebastien Bach"
tagline = "Created by Michael Ellis from digital transcriptions by Margaret Greentree (jsbchorales.net)"
}
ASvoiceAA = \relative c'{
    \set Staff.instrumentName = #"Soprano"
    \set Staff.shortInstrumentName = #"S."
    \clef treble
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    f'4     f f e c      | % 1
    d e f\fermata  f      | % 2
    e d c bes      | % 3
    a g a\fermata  a      | % 4
    g a8 b c4 d      | % 5
    c b c\fermata  c      | % 6
    d e f e      | % 7
    d d c\fermata  c      | % 8
    bes a d c      | % 9
    bes a g\fermata  g      | % 10
    a b c d      | % 11
    c b c\fermata  s4 \bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    a'4     a a g a8 g      | % 1
    f4 g a a      | % 2
    g8 f f g g a d, e      | % 3
    f4 e8 d cis4 d      | % 4
    d8 c c4 c8 f f4      | % 5
    f8 e d4 e f      | % 6
    f bes a8 g g4      | % 7
    fis gis a a      | % 8
    a8 g g f f ees ees d      | % 9
    d e f4 e e      | % 10
    ees8 d d4 ees f      | % 11
    f8 ees d4 e s4 \bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    c'4     c c8 d e4 f8 e      | % 1
    d c bes4 c d8 c      | % 2
    bes c d4 e8 d d cis      | % 3
    d a bes4 e, f      | % 4
    g f e8 a a g      | % 5
    g4 g g a      | % 6
    bes bes c8 d e4      | % 7
    a,8 b16 c d8 e e4 e      | % 8
    f8 c c4 bes fis      | % 9
    g c c c      | % 10
    c g g aes8 g      | % 11
    g4 g g s4 \bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    f8 g     a4 g8 f c' bes a4      | % 1
    bes8 a g4 f d      | % 2
    g8 a bes4 e,8 fis g4      | % 3
    d8 c bes4 a d      | % 4
    e f8 g a4 b      | % 5
    c g c, f      | % 6
    bes a8 g a b c4      | % 7
    c8 b16 a b8 e, a4 a,      | % 8
    d8 e f4 bes,8 c d4      | % 9
    g, a8 bes c4 c'      | % 10
    fis, f ees b      | % 11
    c g c s4 \bar "|." 
}% end of last bar in partorvoice



\addQuote "articulations"   { \ASvoiceAA }
\book {
\layout { \scorepaper }
\score {
<<
\part ASvoiceAA { \ASvoiceAA } { \transpose f c \ASvoiceAA }
\part AAvoiceBA { \quotearticulations \AAvoiceBA \ASvoiceAA } { \transpose f c \AAvoiceBA }
\part ATvoiceCA { \quotearticulations \ATvoiceCA \ASvoiceAA } { \transpose f c \ATvoiceCA }
\part ABvoiceDA { \quotearticulations \ABvoiceDA \ASvoiceAA } { \transpose f c \ABvoiceDA }
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
\part ASvoiceAA { \ASvoiceAA } { \transpose f c \ASvoiceAA }
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
\part AAvoiceBA { \quotearticulations \AAvoiceBA \ASvoiceAA } { \transpose f c \AAvoiceBA }
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
\part ATvoiceCA { \quotearticulations \ATvoiceCA \ASvoiceAA } { \transpose f c \ATvoiceCA }
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
\part ABvoiceDA { \quotearticulations \ABvoiceDA \ASvoiceAA } { \transpose f c \ABvoiceDA }
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
