
% BWV 176 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 176"
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
    f8 g     aes4 bes c bes      | % 1
    ees d8 c c4\fermata  bes      | % 2
    ees d c bes      | % 3
    aes g f\fermata  f8 g      | % 4
    aes4 bes c bes      | % 5
    ees d8 c c4\fermata  bes      | % 6
    ees d c bes      | % 7
    aes g f\fermata  f      | % 8
    bes bes g c      | % 9
    c b c\fermata  c      | % 10
    f f g8 f ees4      | % 11
    f8 ees d4 c\fermata  d      | % 12
    ees d c bes      | % 13
    c8 bes aes4 g\fermata  f8 g      | % 14
    aes4 bes c8 bes aes4      | % 15
    bes8 aes g4 f\fermata  f'      | % 16
    f f g f      | % 17
    ees d c\fermata  s4 \bar "|." 
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
    d4     c8 d ees4 ees8 f g4      | % 1
    g g g g      | % 2
    g g aes8 g f4      | % 3
    c8 f4 e8 c4 c      | % 4
    f g aes g      | % 5
    c b g g      | % 6
    g8 c c bes bes aes g e      | % 7
    f4 e c c      | % 8
    f ees8 d ees f g4      | % 9
    g g g g      | % 10
    c bes bes c8 bes      | % 11
    aes4 d,8 ees16 f ees4 g      | % 12
    g f ees8 f g4      | % 13
    c, f e c      | % 14
    f g g8 e f4      | % 15
    g8 f e4 c c'      | % 16
    bes bes bes c8 f,      | % 17
    g4. f8 e4 s4 \bar "|." 
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
    bes'4     aes g aes ees'8 d      | % 1
    c4 b ees d      | % 2
    c d8 e f4 f,8 g      | % 3
    aes bes c4 aes aes8 g      | % 4
    f aes des4 ees ees8 f      | % 5
    g4 g ees d      | % 6
    c f,8 g aes4 bes      | % 7
    c bes8 aes aes4 aes8 g      | % 8
    f4 bes bes ees      | % 9
    d8 c d4 ees ees      | % 10
    ees d ees8 d c4      | % 11
    d8 c b4 g b      | % 12
    c8 bes aes bes c d e f      | % 13
    g4 c, c aes8 g      | % 14
    f aes des4 c des      | % 15
    des g,8 aes16 bes aes4 f      | % 16
    d'8 ees f d ees d c4      | % 17
    c b g s4 \bar "|." 
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
    bes4     f' ees aes g8 f      | % 1
    ees f g4 c, g'      | % 2
    c bes aes d,8 e      | % 3
    f4 c f f8 ees      | % 4
    des c bes4 aes ees'8 d      | % 5
    c4 g' c g      | % 6
    c, d8 e f4 des      | % 7
    c8 bes c4 f, f'8 ees      | % 8
    d c bes4 ees d8 c      | % 9
    g'4 g, c c'8 bes      | % 10
    a4 bes ees, aes8 g      | % 11
    f4 g c, g'      | % 12
    c f,8 g aes4 g8 f      | % 13
    e4 f c f8 ees      | % 14
    des c bes4 aes des8 c      | % 15
    bes4 c f, a'      | % 16
    bes8 c d bes ees,4 aes      | % 17
    g8 f g4 c, s4 \bar "|." 
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
