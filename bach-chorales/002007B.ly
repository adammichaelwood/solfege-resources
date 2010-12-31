
% BWV 20 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 20"
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
    f8 g     a4 bes c c      | % 1
    d e f\fermata  f,8 g      | % 2
    a4 bes c c      | % 3
    bes a g\fermata  a      | % 4
    f f bes a      | % 5
    g2 f4\fermata  f8 g      | % 6
    a4 bes c c      | % 7
    d e f\fermata  f,8 g      | % 8
    a4 bes c c      | % 9
    bes a g\fermata  a      | % 10
    f f bes a      | % 11
    g2 f4\fermata  c'      | % 12
    g a bes bes      | % 13
    a a g\fermata  c      | % 14
    d e f a,      | % 15
    g2 f4\fermata  s4 \bar "|." 
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
    c4     f e f a      | % 1
    bes8 a g4 a c,      | % 2
    f g g f      | % 3
    f8 e f4 e e      | % 4
    e d d8 e f4      | % 5
    f e c c      | % 6
    f e f a      | % 7
    bes8 a g4 a c,      | % 8
    f g g f      | % 9
    f8 e f4 e e      | % 10
    e d d8 e f4      | % 11
    f e c f      | % 12
    g g fis g      | % 13
    g fis d f      | % 14
    f c'8 bes a g f4      | % 15
    f e c s4 \bar "|." 
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
    a'8 bes     c4 bes a8 c f4      | % 1
    f c c a      | % 2
    d d c8 bes a4      | % 3
    bes c c a      | % 4
    a a g a      | % 5
    d c8 bes a4 a8 bes      | % 6
    c4 bes a8 c f4      | % 7
    f c c a      | % 8
    d d c8 bes a4      | % 9
    bes c c a      | % 10
    a a g a      | % 11
    d c8 bes a4 a      | % 12
    bes c d e      | % 13
    a,8 bes c4 bes c      | % 14
    bes8 a g4 f8 g a bes      | % 15
    c g c bes a4 s4 \bar "|." 
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
    f4     f g a f      | % 1
    bes c f, f8 e      | % 2
    d4 c8 bes a4 d      | % 3
    g, a8 bes c4 cis      | % 4
    d8 e f d g4 d8 c      | % 5
    bes4 c f, f'      | % 6
    f g a f      | % 7
    bes c f, f8 e      | % 8
    d4 c8 bes a4 d      | % 9
    g, a8 bes c4 cis      | % 10
    d8 e f d g4 d8 c      | % 11
    bes4 c f, f'      | % 12
    e ees d cis      | % 13
    d d g, a      | % 14
    bes c d8 e f4      | % 15
    c c f, s4 \bar "|." 
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
