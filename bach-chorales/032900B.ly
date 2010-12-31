
% BWV 329 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 329"
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
    ees4 ees bes' bes      | % 1
    c d ees2\fermata       | % 2
    d4. ees8 f4 bes,      | % 3
    ees d c2      | % 4
    bes\fermata  ees4 ees      | % 5
    bes bes aes aes      | % 6
    g2\fermata  bes4 bes      | % 7
    aes g f2      | % 8
    ees\fermata  f4 f      | % 9
    g8 a bes4 bes a      | % 10
    bes2\fermata  c4 d      | % 11
    ees2\fermata  bes4 bes      | % 12
    aes g f2      | % 13
    ees1\fermata  \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key es \major 
    %bartimesig: 
    \time 4/4 
    bes4 bes ees g8 f      | % 1
    ees4 f g2      | % 2
    f4 bes~ bes8 aes g4~      | % 3
    g8 f f4 g f8 ees      | % 4
    d2 g4 g      | % 5
    f f8 g~ g c, f ees16 d      | % 6
    ees2 f4 ees      | % 7
    f~ f8 ees ees4 d      | % 8
    bes2 d4 d      | % 9
    ees f8 g f4 f      | % 10
    f2 f8 aes~ aes g      | % 11
    g2 f8 aes~ aes g      | % 12
    f4. ees8~ ees d16 c d4      | % 13
    bes1 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key es \major 
    %bartimesig: 
    \time 4/4 
    g'4 g8 aes bes ees4 des8      | % 1
    c bes aes4 bes2      | % 2
    bes4 bes bes bes~      | % 3
    bes8 a bes2 a4      | % 4
    f2 bes4 bes8 c      | % 5
    d4~ d8 c c4 bes      | % 6
    bes2 d8 c bes4      | % 7
    bes bes c8 f, bes aes      | % 8
    g2 bes4~ bes8 aes      | % 9
    bes c d4 c8 d ees4      | % 10
    d2 c8 f d4      | % 11
    c2 f4~ f8 ees~      | % 12
    ees d16 c bes4 c bes8 aes      | % 13
    g1 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key es \major 
    %bartimesig: 
    \time 4/4 
    ees4. f8 g4 ees      | % 1
    aes8 g f4 ees2      | % 2
    bes'8 aes g4 d ees8 d      | % 3
    c f bes, d ees c f4      | % 4
    bes,2 ees,8 f g aes      | % 5
    bes c d ees f ees d bes      | % 6
    ees2 bes'8 aes g f      | % 7
    ees d ees4 aes, bes      | % 8
    ees,2 bes''8 aes g f      | % 9
    ees4 d8 ees f2      | % 10
    bes, aes'4 b,      | % 11
    c2 d4 ees      | % 12
    f g aes bes8 bes,      | % 13
    ees1 \bar "|."\bar "|." 
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
