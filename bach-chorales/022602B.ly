
% BWV 226 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 226"
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
    f'4     g f8 ees d ees f4      | % 1
    c2\fermata  d4 e      | % 2
    f2\fermata  r4 f      | % 3
    g f c8 d ees4      | % 4
    d c bes\fermata  bes      | % 5
    c8 d ees4 d8 ees f4~      | % 6
    f c bes8 a g4      | % 7
    f2\fermata  r4 f      | % 8
    bes c d8 ees f4~      | % 9
    f ees d c      | % 10
    d2\fermata  r4 d8 ees      | % 11
    f4 g f c      | % 12
    d e f\fermata  f      | % 13
    g f c8 d ees4      | % 14
    d c bes\fermata  bes      | % 15
    c8 d ees4 d8 ees f4~      | % 16
    f c bes8 a g4      | % 17
    f2\fermata  r4 f      | % 18
    bes c d8 ees f4~      | % 19
    f ees d c      | % 20
    g a bes\fermata  c      | % 21
    d bes g2      | % 22
    f4\fermata  c'8 d16 ees d2      | % 23
    c bes4\fermata  s4 \bar "|." 
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
    bes'4     bes a bes f8 g      | % 1
    a2 bes4 bes      | % 2
    a2 r4 bes      | % 3
    bes a8 g f4 g8 a      | % 4
    bes4 a f f      | % 5
    f g f8 g a4~      | % 6
    a8 bes a g f d e4      | % 7
    c2 r4 c      | % 8
    f8 g a4 bes4. c8      | % 9
    d4. c8 bes a g4      | % 10
    fis2 r4 bes      | % 11
    a8 b c4 c8 bes a g      | % 12
    f4 g a bes8 a      | % 13
    g a bes4 a g      | % 14
    f8 g a4 f g      | % 15
    g g8 a bes2~      | % 16
    bes4 a bes8 f~ f e      | % 17
    c2 r4 f8 ees      | % 18
    d g f ees d4. ees16 f      | % 19
    g4 g g g8 f      | % 20
    ees2 d4 f      | % 21
    f2~ f8 d ees4      | % 22
    d f2 g4~      | % 23
    g f8 ees d4 s4 \bar "|." 
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
    d'4     ees8 d c4 bes bes      | % 1
    f'2 f4 bes,      | % 2
    c2 r4 bes      | % 3
    ees8 d c bes a bes ees,4      | % 4
    f f'8 ees d4 d      | % 5
    c bes8 c d4 c8 bes      | % 6
    c4 f f c8 bes      | % 7
    a2 r4 a      | % 8
    bes ees f8 ees d c      | % 9
    b a g4 fis g      | % 10
    a2 r4 bes8 c      | % 11
    d4 e f4. ees8      | % 12
    d c bes4 c d      | % 13
    ees f f bes,8 c      | % 14
    d bes f' ees d4 ees      | % 15
    ees8 d c4 d8 c bes c      | % 16
    d e f2 c8 bes      | % 17
    a2 r4 a      | % 18
    bes8 ees d c bes4. c8      | % 19
    d4. c8 bes a g4      | % 20
    c2 bes4 a      | % 21
    bes2. bes8 a      | % 22
    bes4 c2 bes4~      | % 23
    bes a16 g a8 f4 s4 \bar "|." 
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
    bes'4     ees, f g d8 ees      | % 1
    f2 bes8 a g4      | % 2
    f2 r4 d      | % 3
    ees f ees8 d c4      | % 4
    d8 ees f4 bes, bes'      | % 5
    a g8 a bes4 a8 g      | % 6
    a g f e d bes c4      | % 7
    f2 r4 f8 ees      | % 8
    d ees d c bes4 bes'8 aes      | % 9
    g4 c, d ees      | % 10
    d2 r4 g      | % 11
    d' c8 bes a g f4      | % 12
    bes8 a g4 f bes      | % 13
    ees, d8 ees f4 g8 a      | % 14
    bes ees, f4 bes, ees8 d      | % 15
    c4 c' g d8 ees      | % 16
    f g a f d' bes c4      | % 17
    f,2 r4 d      | % 18
    g a bes8 c d c      | % 19
    b g c4 g8 f ees d      | % 20
    ees c f4 bes, f'      | % 21
    bes,8 c d4 ees2      | % 22
    bes'4 a bes8 a g f      | % 23
    ees c f4 bes, s4 \bar "|." 
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
