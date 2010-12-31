
% BWV 39 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 39"
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
    bes'4 c d c      | % 1
    bes a g f\fermata       | % 2
    bes c d ees      | % 3
    d c bes2\fermata       | % 4
    bes4 c d c      | % 5
    bes a g f\fermata       | % 6
    bes c d ees      | % 7
    d c bes2\fermata       | % 8
    d4 ees f ees      | % 9
    d c d2\fermata       | % 10
    f4 f g f      | % 11
    ees d c2\fermata       | % 12
    d8 ees f4 ees d8 c      | % 13
    bes4 c d2      | % 14
    bes\fermata  d8 ees f4      | % 15
    ees d c d      | % 16
    c2 bes\fermata  \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 4/4 
    f4 f f f      | % 1
    f8 e f4 e c      | % 2
    g' f f ees      | % 3
    f f8 ees d2      | % 4
    f4 f f f      | % 5
    f8 e f4 e c      | % 6
    g' f f ees      | % 7
    f f8 ees d2      | % 8
    bes'4 a8 g f g16 aes g4      | % 9
    g g fis2      | % 10
    f4 bes bes a      | % 11
    g f8 g a2      | % 12
    bes4 bes bes8 a bes a      | % 13
    g f ees4 d8 e fis4      | % 14
    g2 g4 aes      | % 15
    g8 a bes4 a8 g f4      | % 16
    f4. ees8 d2 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 4/4 
    d'4 c bes a      | % 1
    bes c c8 bes a4      | % 2
    d c bes8 a bes4      | % 3
    bes a f2      | % 4
    d'4 c bes a      | % 5
    bes c c8 bes a4      | % 6
    d c bes8 a bes4      | % 7
    bes a f2      | % 8
    f'4 ees a,8 b c4      | % 9
    bes ees a,2      | % 10
    bes8 c d4 ees8 d c4      | % 11
    bes8 c d e f2      | % 12
    f8 ees d4 c f,      | % 13
    g a bes a      | % 14
    g2 bes4 b      | % 15
    c g a bes      | % 16
    bes a f2 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 4/4 
    bes'4 a bes f      | % 1
    g a8 bes c c, f4      | % 2
    g a bes g      | % 3
    f8 ees f4 bes,2      | % 4
    bes'4 a bes f      | % 5
    g a8 bes c c, f4      | % 6
    g a bes g      | % 7
    f8 ees f4 bes,2      | % 8
    bes4 c d ees8 f      | % 9
    g f ees4 d2      | % 10
    d'4 bes ees, f      | % 11
    g8 a bes4 f2      | % 12
    bes4 bes, c d      | % 13
    ees8 d c4 bes8 c d4      | % 14
    g,2 g'4 d      | % 15
    ees e f8 ees d bes      | % 16
    f'2 bes, \bar "|."\bar "|." 
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
