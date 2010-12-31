
% BWV 402 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 402"
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
    ees4     ees f g8 f ees4      | % 1
    g a bes\fermata  bes      | % 2
    aes g f ees8 f      | % 3
    g4 a bes\fermata  c      | % 4
    bes aes g aes      | % 5
    f2 ees4\fermata  ees      | % 6
    ees f g8 f ees4      | % 7
    g a bes\fermata  bes      | % 8
    aes g f ees8 f      | % 9
    g4 a bes\fermata  c      | % 10
    bes aes g aes      | % 11
    f2 ees4\fermata  ees'      | % 12
    ees ees d bes      | % 13
    c c g\fermata  ees'      | % 14
    ees ees d bes      | % 15
    c c bes\fermata  g8 aes      | % 16
    bes4 c bes g      | % 17
    aes2 g4\fermata  f      | % 18
    g aes bes bes      | % 19
    aes g f\fermata  bes      | % 20
    c d ees d      | % 21
    c c bes\fermata  ees,      | % 22
    f g aes g      | % 23
    f2 ees4\fermata  s4 \bar "|." 
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
    bes4     c4. b16 c d4. c16 d      | % 1
    ees4~ ees8 d d4 g~      | % 2
    g8 f4 ees d8 c d      | % 3
    ees4 ees d f~      | % 4
    f ees16 d ees8 bes ees16 d ees4~      | % 5
    ees8 d16 c d4 bes bes      | % 6
    c4. b16 c d4. c16 d      | % 7
    ees4~ ees8 d d4 g~      | % 8
    g8 f4 ees d8 c d      | % 9
    ees4 ees d f~      | % 10
    f ees16 d ees8 bes ees16 d ees4~      | % 11
    ees8 d16 c d4 bes bes'8 aes      | % 12
    g4 f f ees      | % 13
    ees8 des ees4 ees g      | % 14
    f f f f      | % 15
    g f8 ees d4 ees8 f      | % 16
    g4 aes g g~      | % 17
    g8 f16 ees f8 d ees4 f      | % 18
    ees ees f g      | % 19
    c,8 d ees4~ ees8 d f4      | % 20
    f f g8 a bes4~      | % 21
    bes a g ees      | % 22
    d ees f8 d bes ees~      | % 23
    ees d16 c d4 bes s4 \bar "|." 
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
    g'4     aes aes g g      | % 1
    c8 bes a4 g d'      | % 2
    ees8 bes bes4 c8 g g4      | % 3
    c8 bes c4 bes aes~      | % 4
    aes8 g4 f8 ees4. bes'8      | % 5
    c aes f bes g4 g      | % 6
    aes aes g g      | % 7
    c8 bes a4 g d'      | % 8
    ees8 bes bes4 c8 g g4      | % 9
    c8 bes c4 bes aes~      | % 10
    aes8 g4 f8 ees4. bes'8      | % 11
    c aes f bes g4 g8 aes      | % 12
    bes4 c~ c8 bes16 aes g4      | % 13
    aes aes bes c      | % 14
    c8 bes a4 bes8 a bes4~      | % 15
    bes8 a16 g a4 bes bes      | % 16
    ees ees ees8 des4 c8      | % 17
    c4 d8 f c4 aes      | % 18
    bes c d d,8 e      | % 19
    f4 bes bes d      | % 20
    c bes~ bes8 c d4      | % 21
    g, d' d c      | % 22
    bes bes4. f8 g bes      | % 23
    c aes f bes16 aes g4 s4 \bar "|." 
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
    ees4     aes8 g f4 b, c~      | % 1
    c fis, g g'      | % 2
    c,8 d ees4 a,8 b c4~      | % 3
    c f, bes f'8 ees      | % 4
    d bes c d ees d c bes      | % 5
    aes f bes4 ees, ees'      | % 6
    aes8 g f4 b, c~      | % 7
    c fis, g g'      | % 8
    c,8 d ees4 a,8 b c4~      | % 9
    c f, bes f'8 ees      | % 10
    d bes c d ees d c bes      | % 11
    aes f bes4 ees, ees8 f      | % 12
    g4 a bes8 c des4      | % 13
    c8 bes aes4 ees' c8 bes      | % 14
    a g f4 bes8 c d4      | % 15
    c f bes, ees~      | % 16
    ees8 des c d ees4 e      | % 17
    f b, c des~      | % 18
    des c bes8 aes g4      | % 19
    f g8 aes bes4 bes'      | % 20
    a aes g4. f8      | % 21
    e4 fis g aes~      | % 22
    aes8 g f ees d bes ees g,      | % 23
    aes4 bes ees, s4 \bar "|." 
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
