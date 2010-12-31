
% BWV 427 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 427"
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
    ees4     bes' bes c d      | % 1
    ees2\fermata  r4 d      | % 2
    ees d c c      | % 3
    bes2\fermata  r4 bes      | % 4
    c bes aes g      | % 5
    f2\fermata  r4 g      | % 6
    ees f g8 aes bes4      | % 7
    aes2 g4\fermata  d'      | % 8
    ees d c c      | % 9
    bes2\fermata  r4 ees      | % 10
    d c bes c      | % 11
    bes aes g8 aes bes4      | % 12
    aes g f2      | % 13
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
    bes4     ees ees ees f      | % 1
    g2 r4 f      | % 2
    c' bes8 d, g4 f8 ees      | % 3
    d2 r4 ees      | % 4
    ees d ees8 bes bes4      | % 5
    bes2 r4 d~      | % 6
    d8 c~ c bes bes4 ees      | % 7
    ees8 f16 ees d4 ees f      | % 8
    g8 f f4 g f8 ees      | % 9
    d2 r4 g      | % 10
    g ees ees ees      | % 11
    f8 g~ g f~ f ees ees4      | % 12
    ees2 ees4 d      | % 13
    bes2. s4 \bar "|." 
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
    g'8 aes     bes c des4 c8 bes aes4      | % 1
    bes2 r4 bes~      | % 2
    bes8 a bes4~ bes a      | % 3
    f2 r4 bes~      | % 4
    bes8 aes~ aes g~ g f~ f ees      | % 5
    d2 r4 g      | % 6
    g f ees bes'      | % 7
    c bes bes d      | % 8
    c bes bes a      | % 9
    f2 r4 c'~      | % 10
    c8 bes~ bes aes~ aes g g4      | % 11
    d'8 c c4 c bes      | % 12
    ees,8 f g ees c'4 bes8 aes      | % 13
    g2. s4 \bar "|." 
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
    ees8 f     g4 g aes8 g f4      | % 1
    ees2 r4 bes      | % 2
    c g' ees f      | % 3
    bes,2 r4 g      | % 4
    aes bes c8 d ees4      | % 5
    bes2 r4 b      | % 6
    c d ees g,      | % 7
    f bes ees, bes''~      | % 8
    bes8 a bes4 ees, f      | % 9
    bes,2 r4 c      | % 10
    g' aes ees c      | % 11
    d8 e f4 c g      | % 12
    c bes aes bes      | % 13
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
