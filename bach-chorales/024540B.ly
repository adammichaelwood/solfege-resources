
% BWV 245 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 245"
composer = "Johann Sebastien Bach"
tagline = "Created by Michael Ellis from digital transcriptions by Margaret Greentree (jsbchorales.net)"
}
ASvoiceAA = \relative c'{
    \set Staff.instrumentName = #"Soprano"
    \set Staff.shortInstrumentName = #"S."
    \clef treble
    %staffkeysig
    \key es \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    ees'4     d c bes aes8 g      | % 1
    c4 c bes\fermata  ees      | % 2
    d c bes aes8 g      | % 3
    c4 c bes\fermata  bes      | % 4
    c d ees8 f g4      | % 5
    f ees2 d4      | % 6
    ees2.\fermata  ees4      | % 7
    d c bes aes8 g      | % 8
    c4 c bes\fermata  ees      | % 9
    d c bes aes8 g      | % 10
    c4 c bes\fermata  bes      | % 11
    c d ees8 f g4      | % 12
    f ees2 d4      | % 13
    ees2.\fermata  ees4      | % 14
    ees f ees8 d c d      | % 15
    ees4 ees d\fermata  d      | % 16
    ees f ees8 d c d      | % 17
    ees g f4 d\fermata  g      | % 18
    g g f ees      | % 19
    ees d ees\fermata  d      | % 20
    ees d c bes      | % 21
    bes a bes\fermata  g'      | % 22
    f ees d\fermata  g      | % 23
    aes8 g f4 g ees      | % 24
    ees d ees\fermata  ees      | % 25
    ees ees f ees      | % 26
    ees2. d4      | % 27
    ees2.\fermata  s4 \bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key es \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    bes'4     bes g g f8 ees      | % 1
    ees4 aes g g      | % 2
    g8 f ees f g f ees d      | % 3
    ees f f4 g g      | % 4
    aes8 c bes aes g f ees4      | % 5
    f2 g4 aes      | % 6
    g2. g4      | % 7
    bes g g f8 ees      | % 8
    ees4 aes g g      | % 9
    g8 f ees f g f ees d      | % 10
    ees f f4 g g      | % 11
    aes8 c bes aes g f ees4      | % 12
    f2 g4 aes      | % 13
    g2. g4      | % 14
    aes aes g4. g8      | % 15
    f g a4 bes bes      | % 16
    bes aes g aes      | % 17
    bes c bes bes      | % 18
    bes c c aes      | % 19
    g f g aes      | % 20
    g f8 bes g4 g      | % 21
    g f f ees      | % 22
    f8 g16 aes g8 a b4 c      | % 23
    c b8 c g4 g      | % 24
    ges8 f f4 g g      | % 25
    aes aes aes g      | % 26
    f2 f      | % 27
    g2. s4 \bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key es \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    g''4     f ees d des      | % 1
    c8 bes c d ees4 g,8 aes      | % 2
    bes4 c8 d ees4 aes,8 bes      | % 3
    c ees d c d4 ees      | % 4
    ees8 aes g f ees bes des4      | % 5
    c2 bes      | % 6
    bes2. g'4      | % 7
    f ees d des      | % 8
    c8 bes c d ees4 g,8 aes      | % 9
    bes4 c8 d ees4 aes,8 bes      | % 10
    c ees d c d4 ees      | % 11
    ees8 aes g f ees bes des4      | % 12
    c2 bes      | % 13
    bes2. bes4      | % 14
    c c c8 d ees d      | % 15
    c4 f f f      | % 16
    bes, bes bes f'      | % 17
    ees8 d c4 f ees      | % 18
    ees ees f f      | % 19
    bes, bes bes f'      | % 20
    bes,8 c d4 ees d      | % 21
    ees8 d c4 d bes8 c      | % 22
    d4 ees8 c g'4 c,      | % 23
    f8 ees d c d4 c      | % 24
    c bes bes des      | % 25
    c8 d ees4 bes bes      | % 26
    c2 bes      | % 27
    bes2. s4 \bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key es \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    ees4     bes' c g bes      | % 1
    aes aes, ees' c      | % 2
    g' aes ees8 d c bes      | % 3
    aes4 aes' g ees      | % 4
    aes bes c8 d, ees4      | % 5
    aes, a bes2      | % 6
    ees2. ees4      | % 7
    bes' c g bes      | % 8
    aes aes, ees' c      | % 9
    g' aes ees8 d c bes      | % 10
    aes4 aes' g ees      | % 11
    aes bes c8 d, ees4      | % 12
    aes, a bes2      | % 13
    ees2. ees4      | % 14
    aes8 g f4 c c'8 bes      | % 15
    a g f4 bes bes8 aes      | % 16
    g f ees d ees4 f      | % 17
    g a bes ees,      | % 18
    ees'8 d c bes aes bes c aes      | % 19
    bes4 bes, ees f      | % 20
    g8 a bes g ees f g ees      | % 21
    c4 f bes, ees      | % 22
    bes' c g e      | % 23
    f8 g aes4 b, c      | % 24
    a' bes ees, ees      | % 25
    aes8 bes c4 d, ees      | % 26
    a,2 bes      | % 27
    ees,2. s4 \bar "|." 
}% end of last bar in partorvoice



\addQuote "articulations"   { \ASvoiceAA }
\book {
\layout { \scorepaper }
\score {
<<
\part ASvoiceAA { \ASvoiceAA } { \transpose es c \ASvoiceAA }
\part AAvoiceBA { \quotearticulations \AAvoiceBA \ASvoiceAA } { \transpose es c \AAvoiceBA }
\part ATvoiceCA { \quotearticulations \ATvoiceCA \ASvoiceAA } { \transpose es c \ATvoiceCA }
\part ABvoiceDA { \quotearticulations \ABvoiceDA \ASvoiceAA } { \transpose es c \ABvoiceDA }
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
\part ASvoiceAA { \ASvoiceAA } { \transpose es c \ASvoiceAA }
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
\part AAvoiceBA { \quotearticulations \AAvoiceBA \ASvoiceAA } { \transpose es c \AAvoiceBA }
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
\part ATvoiceCA { \quotearticulations \ATvoiceCA \ASvoiceAA } { \transpose es c \ATvoiceCA }
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
\part ABvoiceDA { \quotearticulations \ABvoiceDA \ASvoiceAA } { \transpose es c \ABvoiceDA }
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
