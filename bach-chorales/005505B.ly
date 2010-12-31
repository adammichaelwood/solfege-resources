
% BWV 55 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 55"
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
    d'4 ees f f      | % 1
    ees d c c\fermata       | % 2
    d ees f ees8 d      | % 3
    c4. bes8 bes2\fermata       | % 4
    d4 ees f f      | % 5
    ees d c c\fermata       | % 6
    d ees f ees8 d      | % 7
    c4. bes8 bes2\fermata       | % 8
    c4 d ees ees      | % 9
    d d c2\fermata       | % 10
    ees4 f g g      | % 11
    f f ees2\fermata       | % 12
    d4 ees f f      | % 13
    ees d c c\fermata       | % 14
    d ees f ees8 d      | % 15
    c4. bes8 bes4 bes\fermata  \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 4/4 
    f4 g8 a bes4 bes      | % 1
    bes8 a bes4 a a      | % 2
    bes a8 g f4 g      | % 3
    g f f2      | % 4
    f4 g8 a bes4 bes      | % 5
    bes8 a bes4 a a      | % 6
    bes a8 g f4 g      | % 7
    g f f2      | % 8
    f4 f ees8 f g4      | % 9
    aes g8 f ees2      | % 10
    g4 bes bes8 aes bes g      | % 11
    c4 bes8 aes g2      | % 12
    g4 g f8 ees d4      | % 13
    ees f8 g a4 a      | % 14
    bes a8 g f4 g      | % 15
    g f f f \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef "treble_8"
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 4/4 
    bes'4 bes bes8 c d4      | % 1
    ees f f f      | % 2
    f c c8 a bes4      | % 3
    bes a d2      | % 4
    bes4 bes bes8 c d4      | % 5
    ees f f f      | % 6
    f c c8 a bes4      | % 7
    bes a d2      | % 8
    a4 b c c      | % 9
    c b g2      | % 10
    c4 d ees ees      | % 11
    ees d bes2      | % 12
    bes4 bes bes bes      | % 13
    bes8 a bes4 f' f      | % 14
    f ees d8 c bes4      | % 15
    bes a8 ees' d4 d \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 4/4 
    bes'8 a g4 d g      | % 1
    c, d8 ees f4 f      | % 2
    bes, c d g8 f      | % 3
    ees4 f bes,2      | % 4
    bes'8 a g4 d g      | % 5
    c, d8 ees f4 f      | % 6
    bes, c d g8 f      | % 7
    ees4 f bes,2      | % 8
    f'8 ees d4 c8 d ees c      | % 9
    f4 g c,2      | % 10
    c'4 bes8 aes g f ees4      | % 11
    aes bes ees,2      | % 12
    g4 f8 ees d4 g      | % 13
    c, d8 ees f4 f      | % 14
    bes, c d g8 f      | % 15
    ees4 f bes, bes \bar "|."\bar "|." 
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
