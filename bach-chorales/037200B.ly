
% BWV 372 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 372"
composer = "Johann Sebastien Bach"
tagline = "Created by Michael Ellis from digital transcriptions by Margaret Greentree (jsbchorales.net)"
}
ASvoiceAA = \relative c'{
    \set Staff.instrumentName = #"Soprano"
    \set Staff.shortInstrumentName = #"S."
    \clef treble
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 4/4 
    g'4 g fis g      | % 1
    a bes a2      | % 2
    g\fermata       | % 3
    g4 g fis g      | % 4
    a bes a2      | % 5
    g\fermata  bes4 a      | % 6
    g bes a g      | % 7
    fis2\fermata  f4 ees      | % 8
    d g g fis      | % 9
    g2\fermata  bes4 c      | % 10
    d d c bes      | % 11
    c2 bes\fermata       | % 12
    bes4 c d d      | % 13
    c bes c2      | % 14
    bes\fermata  bes4 a      | % 15
    g bes a g      | % 16
    fis2\fermata  f4 ees      | % 17
    d g g fis      | % 18
    g2\fermata  s2 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 4/4 
    d4 d d d      | % 1
    ees8 d d g g4 fis      | % 2
    d2      | % 3
    d4 d d d      | % 4
    ees8 d d g g4 fis      | % 5
    d2 g4 g8 fis      | % 6
    g4 g8 f ees d e4      | % 7
    d2 a8 bes c4      | % 8
    bes8 c d4 ees d      | % 9
    d2 g4 a      | % 10
    bes bes8 aes g f f4      | % 11
    g f8 ees d2      | % 12
    f4 f f f      | % 13
    f8 ees d4 g f8 ees      | % 14
    d2 d4 d8 c      | % 15
    bes4 ees8 d c d d4      | % 16
    d2 d4 d8 c16 bes      | % 17
    a4 d ees d      | % 18
    d2 s2 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 4/4 
    bes'4 bes a bes      | % 1
    c bes8 d ees4 d8 c      | % 2
    bes2      | % 3
    bes4 bes a bes      | % 4
    c bes8 d ees4 d8 c      | % 5
    bes2 d4 d8. c16      | % 6
    bes8 c d4 c bes8 a      | % 7
    a2 f4 f      | % 8
    f bes a~ a16 bes c8      | % 9
    bes2 d4 f      | % 10
    f f ees8 c d bes~      | % 11
    bes a16 g a4 bes2      | % 12
    d4 c c8 bes16 a bes4      | % 13
    a bes bes a      | % 14
    f2 g4 fis      | % 15
    g g a bes      | % 16
    a2 g4 g      | % 17
    fis g8 bes a4~ a8 c      | % 18
    b2 s2 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 4/4 
    g8 a bes c d c bes g      | % 1
    fis4 g c d      | % 2
    bes2      | % 3
    g8 a bes c d c bes g      | % 4
    fis4 g c d      | % 5
    bes2 g'4 d      | % 6
    ees bes c cis      | % 7
    d2 d8 c bes a      | % 8
    bes a g bes c a d4      | % 9
    g,2 g'4 f8 ees      | % 10
    d c bes4~ bes8 a bes d      | % 11
    ees c f4 bes,2      | % 12
    bes4. a8 bes f' bes4      | % 13
    f g8 f ees4 f      | % 14
    bes,2 g4 d'      | % 15
    ees4. e8 f fis g g,      | % 16
    d'2 b4 c~      | % 17
    c8 bes16 a bes8 g c a d4      | % 18
    g,2 s2 \bar "|."\bar "|." 
}% end of last bar in partorvoice



\addQuote "articulations"   { \ASvoiceAA }
\book {
\layout { \scorepaper }
\score {
<<
\part ASvoiceAA { \ASvoiceAA } { \transpose f c \ASvoiceAA }
\part AAvoiceBA { \quotearticulations \AAvoiceBA \ASvoiceAA } { \transpose f c \AAvoiceBA }
\part ATvoiceCA { \quotearticulations \ATvoiceCA \ASvoiceAA } { \transpose f c \ATvoiceCA }
\part ABvoiceDA { \quotearticulations \ABvoiceDA \ASvoiceAA } { \transpose f c \ABvoiceDA }
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
\part ASvoiceAA { \ASvoiceAA } { \transpose f c \ASvoiceAA }
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
\part AAvoiceBA { \quotearticulations \AAvoiceBA \ASvoiceAA } { \transpose f c \AAvoiceBA }
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
\part ATvoiceCA { \quotearticulations \ATvoiceCA \ASvoiceAA } { \transpose f c \ATvoiceCA }
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
\part ABvoiceDA { \quotearticulations \ABvoiceDA \ASvoiceAA } { \transpose f c \ABvoiceDA }
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
