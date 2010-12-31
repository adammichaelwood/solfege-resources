
% BWV 348 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 348"
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
    bes'4     bes bes bes c      | % 1
    aes g f\fermata  c'      | % 2
    d c bes a8 g      | % 3
    a4 g f\fermata  bes      | % 4
    bes bes bes c      | % 5
    aes g f\fermata  c'      | % 6
    d c bes a8 g      | % 7
    a4 g f\fermata  f'      | % 8
    ees d c bes      | % 9
    bes8 c d4 c\fermata  d      | % 10
    ees d c b      | % 11
    c2.\fermata  f,4      | % 12
    bes c d ees      | % 13
    f ees8 d c4\fermata  ees      | % 14
    d c f bes,8 c      | % 15
    d4 c bes\fermata  s4 \bar "|." 
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
    f4     g aes g g      | % 1
    g8 f4 e8 f4 f      | % 2
    f e f c~      | % 3
    c8 f4 e8 c4 f      | % 4
    g f g g      | % 5
    g8 f4 e8 f4 f      | % 6
    f e f c~      | % 7
    c8 f4 e8 c4 bes'8 a      | % 8
    g4 f8 g a4 bes8 aes      | % 9
    g4 f f f      | % 10
    ees aes8 g~ g f g4      | % 11
    g2. c,4      | % 12
    f g8 a bes4 a8 g      | % 13
    f4 g a bes      | % 14
    aes g f f8 g      | % 15
    f ees~ ees d d4 s4 \bar "|." 
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
    d'4     d8 ees f4 ees8 d c4      | % 1
    c bes a c      | % 2
    bes8 a g4 f c'      | % 3
    c bes a bes      | % 4
    bes8 c d4 ees8 d c4      | % 5
    c bes a c      | % 6
    bes8 a g4 f c'      | % 7
    c bes a d8 c      | % 8
    bes c d ees f4 f      | % 9
    bes,2 a4 b      | % 10
    c4. b8 c4 d      | % 11
    ees2. a,4      | % 12
    bes ees, f8 f' ees4~      | % 13
    ees8 d c bes f'4 bes,      | % 14
    bes~ bes8 c a4 bes      | % 15
    bes a f s4 \bar "|." 
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
    bes'8 a     g4 d ees e      | % 1
    f c f, a      | % 2
    bes c d e      | % 3
    f c f, d'      | % 4
    ees bes ees e      | % 5
    f c f, a      | % 6
    bes c d e      | % 7
    f c f, d'      | % 8
    g bes ees, d      | % 9
    ees bes f' d      | % 10
    c f8 g aes4 g      | % 11
    c,2. ees4      | % 12
    d c bes c      | % 13
    d ees f g      | % 14
    f ees2 d8 ees      | % 15
    f4 f, bes s4 \bar "|." 
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
