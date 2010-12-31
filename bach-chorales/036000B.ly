
% BWV 360 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 360"
composer = "Johann Sebastien Bach"
tagline = "Created by Michael Ellis from digital transcriptions by Margaret Greentree (jsbchorales.net)"
}
ASvoiceAA = \relative c'{
    \set Staff.instrumentName = #"Soprano"
    \set Staff.shortInstrumentName = #"S"
    \clef treble
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 4/4 
    d'4 ees f f      | % 1
    ees d c c\fermata       | % 2
    d ees f d      | % 3
    c4. c8 bes2\fermata       | % 4
    d4 ees f f      | % 5
    ees d c c\fermata       | % 6
    d ees f d      | % 7
    c4. c8 bes2\fermata       | % 8
    c4 d ees ees      | % 9
    d4. c8 c2\fermata       | % 10
    ees4 f g g      | % 11
    f f8. ees16 ees2\fermata       | % 12
    d4 ees f bes,      | % 13
    ees d c c\fermata       | % 14
    d ees f d      | % 15
    c c bes bes\fermata  \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A"
    \clef treble
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 4/4 
    bes'4 bes a bes8 a      | % 1
    g a bes4 a a      | % 2
    bes a8 g f4 g      | % 3
    g f f2      | % 4
    bes4 bes a bes8 a      | % 5
    g a bes4 a a      | % 6
    bes a8 g f4 g      | % 7
    g f f2      | % 8
    a4 b c g      | % 9
    g f8 ees ees2      | % 10
    g4 bes bes bes      | % 11
    bes bes8 aes g2      | % 12
    g4 g f ees      | % 13
    f f f f      | % 14
    f g f f      | % 15
    g f f f \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T"
    \clef "treble_8"
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 4/4 
    d'4 bes8 c d4 d      | % 1
    ees f f f      | % 2
    f ees d8 c bes4      | % 3
    bes a d2      | % 4
    d4 bes8 c d4 d      | % 5
    ees f f f      | % 6
    f ees d8 c bes4      | % 7
    bes a d2      | % 8
    f4 f, g c      | % 9
    c8 a b4 g2      | % 10
    c4 d ees ees      | % 11
    ees8 c d4 bes2      | % 12
    bes4 bes bes8 aes g4      | % 13
    c bes a a      | % 14
    bes bes c bes      | % 15
    bes a d d \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B"
    \clef bass
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 4/4 
    bes'4 g d g      | % 1
    c, bes f' f      | % 2
    bes, c d g8 f      | % 3
    ees4 f bes,2      | % 4
    bes'4 g d g      | % 5
    c, bes f' f      | % 6
    bes, c d g8 f      | % 7
    ees4 f bes,2      | % 8
    f'4 d c8 d ees f      | % 9
    g4 g, c2      | % 10
    c'4 bes8 aes g f ees4      | % 11
    bes' bes, ees2      | % 12
    g4 f8 ees d4 ees      | % 13
    a, bes f' f      | % 14
    bes a8 g a f bes4      | % 15
    ees, f bes, bes \bar "|."\bar "|." 
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
