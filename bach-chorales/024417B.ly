
% BWV 244 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 244"
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
    g'4     c bes aes g      | % 1
    f2 g4\fermata  d'      | % 2
    ees ees d8 c d4      | % 3
    c2.\fermata  g4      | % 4
    c bes aes g      | % 5
    f2 g4\fermata  d'      | % 6
    ees ees d8 c d4      | % 7
    c2.\fermata  ees4      | % 8
    d8 c bes4 c d      | % 9
    ees2 ees4\fermata  bes      | % 10
    c bes aes aes      | % 11
    g2.\fermata  ees'4      | % 12
    d8 ees f4 ees d      | % 13
    c2 d4\fermata  g,      | % 14
    aes g f bes      | % 15
    g2.\fermata  s4 \bar "|." 
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
    ees4     ees ees ees8 f f ees      | % 1
    ees4 d ees f      | % 2
    ees8 f g4 g g8 f      | % 3
    ees2. ees4      | % 4
    ees ees ees8 f f ees      | % 5
    ees4 d ees f      | % 6
    ees8 f g4 g g8 f      | % 7
    ees2. c'8 bes      | % 8
    aes4 g8 f ees4 aes      | % 9
    aes g8 f g4 g      | % 10
    aes g g f      | % 11
    e2. f4      | % 12
    f f g f      | % 13
    g f f ees      | % 14
    ees8 d ees4 ees d      | % 15
    ees2. s4 \bar "|." 
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
    bes'4     aes bes c8 bes bes4      | % 1
    c bes bes b      | % 2
    g c c b      | % 3
    c2. bes4      | % 4
    aes bes c8 bes bes4      | % 5
    c bes bes b      | % 6
    g c c b      | % 7
    c2. g'4      | % 8
    f8 ees d4 c8 bes aes bes      | % 9
    c4 bes8 aes bes4 ees      | % 10
    ees ees8 d c4 c      | % 11
    c2. c4      | % 12
    bes bes8 a bes c d bes      | % 13
    g c a4 bes bes      | % 14
    aes bes c f,8 bes      | % 15
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
    ees4     aes g c,8 d ees4      | % 1
    aes, bes ees d      | % 2
    c8 d ees f g4 g,      | % 3
    c2. ees4      | % 4
    aes g c,8 d ees4      | % 5
    aes, bes ees d      | % 6
    c8 d ees f g4 g,      | % 7
    c2. c'4      | % 8
    f, g aes8 g f4      | % 9
    ees2 ees4 ees      | % 10
    aes ees f8 g aes bes      | % 11
    c2. a4      | % 12
    bes d, g8 a bes4      | % 13
    ees, f bes, ees8 d      | % 14
    c4 bes aes bes      | % 15
    ees2. s4 \bar "|." 
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
