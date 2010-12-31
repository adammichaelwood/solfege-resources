
% BWV 287 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 287"
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
    c'4     a c d c      | % 1
    bes2 a4\fermata  a      | % 2
    g a g g      | % 3
    f2.\fermata  c'4      | % 4
    a c d c      | % 5
    bes2 a4\fermata  a      | % 6
    g a g g      | % 7
    f2.\fermata  g4      | % 8
    g a bes c8 bes      | % 9
    a2 g4\fermata  g      | % 10
    a8 b c4 d8 c b4      | % 11
    c2.\fermata  c4      | % 12
    a c d c      | % 13
    bes2 a4\fermata  a      | % 14
    g a g g      | % 15
    f2.\fermata  s4 \bar "|." 
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
    g'4     f8 g a4 bes8 a g a      | % 1
    bes a g4 f f      | % 2
    e f f e      | % 3
    c2. g'4      | % 4
    f8 g a4 bes8 a g a      | % 5
    bes a g4 f f      | % 6
    e f f e      | % 7
    c2. c8 d      | % 8
    e4 c d c      | % 9
    c4. d8 e4 e      | % 10
    f g a g      | % 11
    g2. e4      | % 12
    c f f ees      | % 13
    d4. e8 fis4 d      | % 14
    e f f e      | % 15
    c2. s4 \bar "|." 
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
    c'4     c ees f e      | % 1
    f c c c      | % 2
    c c c8 bes16 a bes4      | % 3
    a2. c4      | % 4
    c ees f e      | % 5
    f c c c      | % 6
    c c c8 bes16 a bes4      | % 7
    a2. g4      | % 8
    c f, bes8 a g4      | % 9
    a8 g f4 c' c      | % 10
    c8 d e4 d4. e16 f      | % 11
    e2. g,4      | % 12
    a a bes a      | % 13
    bes8 c d4 d f      | % 14
    c c c8 bes16 a bes4      | % 15
    a2. s4 \bar "|." 
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
    e4     f8 ees d c bes4 c      | % 1
    d e f f      | % 2
    bes8 a g f c'4 c,      | % 3
    f2. e4      | % 4
    f8 ees d c bes4 c      | % 5
    d e f f      | % 6
    bes8 a g f c'4 c,      | % 7
    f2. e8 d      | % 8
    c c' bes a g f e4      | % 9
    f a,8 bes c4 c      | % 10
    f8 e d c f4 g      | % 11
    c,2. c4      | % 12
    f8 ees4 d16 c bes8 a' g fis      | % 13
    g a bes c d4 d8 c      | % 14
    bes a g f c'4 c,      | % 15
    f2. s4 \bar "|." 
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
