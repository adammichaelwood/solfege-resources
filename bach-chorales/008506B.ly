
% BWV 85 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 85"
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
    g'4     c b c d8 ees      | % 1
    bes4. aes8 g4\fermata  g      | % 2
    f bes g c      | % 3
    b4. c8 d4\fermata  ees      | % 4
    d8 c bes aes g4 aes8 bes      | % 5
    f2 ees4\fermata  ees'      | % 6
    d c8 bes bes4 c      | % 7
    bes aes8 g g4\fermata  f      | % 8
    bes4. aes8 g4 ees'8 d      | % 9
    b4. c8 d4\fermata  ees      | % 10
    f8 ees d c b4 c8 d      | % 11
    d4. c8 c4\fermata  ees      | % 12
    ees8 d c b g'4 c,8 a      | % 13
    b4. c8 c4\fermata  s4 \bar "|." 
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
    ees8 f     g4 g g f8 ees      | % 1
    f4 d ees ees      | % 2
    c bes8 f' ees d c g'      | % 3
    f ees ees g16 fis g4 g      | % 4
    f4. d8 ees4 ees      | % 5
    ees d bes g'      | % 6
    f ees8 f g4 aes8 g      | % 7
    f ees f d ees4 d      | % 8
    e f d g      | % 9
    f8 d ees g16 fis g4 g      | % 10
    f8 g aes4 aes g8 aes      | % 11
    g4 f8 ees ees4 aes      | % 12
    aes aes8 g g4 g8 f      | % 13
    d ees16 f g4 g s4 \bar "|." 
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
    c'4     c d ees g,      | % 1
    f bes bes bes      | % 2
    aes8 g f bes bes g' f ees      | % 3
    d4 g,8 a b4 c8 bes      | % 4
    aes f bes4 bes aes8 g      | % 5
    c4 bes8 aes g4 bes      | % 6
    aes8 bes c d ees4 aes,      | % 7
    bes8 c d4 bes bes      | % 8
    bes c b c      | % 9
    d g,8 a b4 c      | % 10
    c f f ees8 c      | % 11
    c a b4 c c      | % 12
    c8 f ees d c b c d      | % 13
    g,4 d' e s4 \bar "|." 
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
    c4     ees g c c,      | % 1
    d bes ees ees      | % 2
    ees d ees aes      | % 3
    d, c g' c      | % 4
    f,8 ees d bes ees d c bes      | % 5
    aes4 bes ees ees      | % 6
    f8 g aes4 g f8 ees      | % 7
    d c bes4 ees bes'8 aes      | % 8
    g4 f f ees      | % 9
    d c g' c8 bes      | % 10
    aes g f ees d4 ees8 f      | % 11
    g4 g, aes aes'8 g      | % 12
    f4 f ees8 d ees f      | % 13
    g4 g, c s4 \bar "|." 
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
