
% BWV 177 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 177"
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
    d'4     bes a8 bes16 c bes8 a g a      | % 1
    bes8. c16 c4 d\fermata  d8 ees      | % 2
    f ees d c bes4 c8 d      | % 3
    ees2 d4\fermata  d      | % 4
    bes a8 bes16 c bes8 a g a      | % 5
    bes8. c16 c4 d\fermata  d8 ees      | % 6
    f ees d c bes4 c8 d      | % 7
    ees2 d4\fermata  f      | % 8
    g f8 ees d c bes c      | % 9
    d ees c4 bes\fermata  d      | % 10
    d d c bes8 a      | % 11
    a2 g\fermata       | % 12
    bes4 a g2      | % 13
    f4\fermata  f bes bes      | % 14
    c c d\fermata  ees      | % 15
    d c bes8 a g a      | % 16
    bes4 a g\fermata  s4 \bar "|." 
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
    a'4     g fis g8 fis g fis      | % 1
    g4. a8 fis4 g      | % 2
    f f g f      | % 3
    ees8 g4 fis8 g4 a      | % 4
    g fis g8 fis g fis      | % 5
    g4. a8 fis4 g      | % 6
    f f g f      | % 7
    ees8 g4 fis8 g4 f8 bes16 aes      | % 8
    g4 a a bes      | % 9
    bes8 c a4 f f8 g      | % 10
    a c bes a g fis g4      | % 11
    g fis g2      | % 12
    g4. f8~ f e16 d e4      | % 13
    c c f ees8 f      | % 14
    g ees g f g4 g      | % 15
    g8 fis g a g fis g4      | % 16
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
    d'4     d8 ees4 d16 c d2~      | % 1
    d8 d c16 bes a g a4 bes      | % 2
    c bes8 aes g4 a8 b      | % 3
    c bes a4 bes d      | % 4
    d8 ees4 d16 c d2~      | % 5
    d8 d c16 bes a g a4 bes      | % 6
    c bes8 aes g4 a8 b      | % 7
    c bes a4 bes bes      | % 8
    bes8 ees d c d4. ees8      | % 9
    f g f ees d4 bes      | % 10
    a g c8 d ees4      | % 11
    d8 c4 bes8 bes2      | % 12
    c4 c d c8 bes      | % 13
    a4 a bes8 aes g bes      | % 14
    ees g c,4 b c8 bes      | % 15
    a4 g8 d' d4. ees8      | % 16
    d4. c8 b4 s4 \bar "|." 
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
    fis4     g2~ g8 a bes a      | % 1
    g f ees4 d g      | % 2
    a bes ees,8 f ees d      | % 3
    c2 g4 fis'      | % 4
    g2~ g8 a bes a      | % 5
    g f ees4 d g      | % 6
    a bes ees,8 f ees d      | % 7
    c2 g4 d'      | % 8
    ees f fis g      | % 9
    f8 ees f4 bes, bes'      | % 10
    fis g8 f ees4 d8 c      | % 11
    d2 ees      | % 12
    e4 f bes, c      | % 13
    f f8 ees d4 ees8 d      | % 14
    c bes aes4 g c      | % 15
    d e8 fis g a bes c      | % 16
    d4 d, g s4 \bar "|." 
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
