
% BWV 380 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 380"
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
    bes'4 bes c c      | % 1
    d d8 ees16 f ees2\fermata       | % 2
    f4 f ees ees      | % 3
    d c8 d16 ees c2      | % 4
    bes\fermata  bes4 bes      | % 5
    c c bes aes8 g      | % 6
    g2\fermata  bes4 bes      | % 7
    aes aes g f8 g16 aes      | % 8
    f2 ees\fermata       | % 9
    bes'4 bes c c      | % 10
    d d8 ees16 f ees2\fermata       | % 11
    bes4 bes8 c16 des c8 bes aes g      | % 12
    f g16 aes f4 ees2\fermata  \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key es \major 
    %bartimesig: 
    \time 4/4 
    g'4 g ees aes      | % 1
    aes8 g aes4 g2      | % 2
    bes4 bes8 aes g4~ g8 a      | % 3
    bes a g ees f4. ees8      | % 4
    d2 ees4 ees      | % 5
    ees aes aes8 g f4      | % 6
    e2 e8 f g e      | % 7
    c4 f8 d ees4 ees      | % 8
    ees d bes2      | % 9
    g'4 g aes aes8 g      | % 10
    f4 g g2      | % 11
    ees4 ees ees8 d ees4      | % 12
    ees d bes2 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key es \major 
    %bartimesig: 
    \time 4/4 
    ees'4 ees c f      | % 1
    f8 ees f d bes2      | % 2
    d8 ees f d d c16 b c4      | % 3
    bes bes bes8 g a4      | % 4
    f2 g8 aes bes g      | % 5
    aes bes c4 f,8 g aes bes      | % 6
    c2 bes8 aes g4      | % 7
    aes bes bes c8 aes      | % 8
    bes g aes4 g2      | % 9
    ees'4 ees ees f      | % 10
    b,8 c d b c2      | % 11
    g4 g aes8 f ees bes'      | % 12
    c4 bes8 aes g2 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key es \major 
    %bartimesig: 
    \time 4/4 
    ees8 f g ees aes g aes f      | % 1
    bes4 bes, ees2      | % 2
    bes8 c d bes c d ees f      | % 3
    g f ees c f4 f,      | % 4
    bes2 ees8 f g ees      | % 5
    aes g f ees d e f4      | % 6
    c2 g'8 f e c      | % 7
    f ees d bes ees g aes f      | % 8
    bes4 bes, ees2      | % 9
    ees'8 des c bes aes g f ees      | % 10
    d c b g c2      | % 11
    ees8 des c bes aes bes c bes      | % 12
    aes4 bes ees2 \bar "|."\bar "|." 
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
