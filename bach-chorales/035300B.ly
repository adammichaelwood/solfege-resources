
% BWV 353 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 353"
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
    d'4 d a bes      | % 1
    c bes8 a a2      | % 2
    g\fermata  bes4 bes      | % 3
    a g fis g      | % 4
    a1\fermata       | % 5
    d4 d a bes      | % 6
    c bes8 a a2      | % 7
    g\fermata  bes4 bes      | % 8
    a g fis g      | % 9
    a1\fermata       | % 10
    a4 bes c a      | % 11
    bes a8 g g2      | % 12
    f\fermata  bes4 c      | % 13
    d bes ees d      | % 14
    c2 bes\fermata       | % 15
    a4 bes c d      | % 16
    c bes a2\fermata       | % 17
    g4 a bes c8 bes      | % 18
    a4. g8 g2\fermata  \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 4/4 
    g'8 fis g4 fis g      | % 1
    g8 fis g4 g fis      | % 2
    d2 g4 g8 f      | % 3
    ees d d c c4 d      | % 4
    d1      | % 5
    g8 fis g4 fis g      | % 6
    g8 fis g4 g fis      | % 7
    d2 g4 g8 f      | % 8
    ees d d c c4 d      | % 9
    d1      | % 10
    fis4 g g f      | % 11
    f f f e      | % 12
    c2 f4 f      | % 13
    f8 ees f d g4 g      | % 14
    g f8 ees d2      | % 15
    f4 ees8 d c4 f8 g      | % 16
    a4 g fis2      | % 17
    g4 d g g      | % 18
    g fis d2 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 4/4 
    bes'8 c d4 d d      | % 1
    c d ees d8 c      | % 2
    bes2 d4 g,      | % 3
    g8 fis g4 a8 c bes g      | % 4
    fis1      | % 5
    bes8 c d4 d d      | % 6
    c d ees d8 c      | % 7
    bes2 d4 g,      | % 8
    g8 fis g4 a8 c bes g      | % 9
    fis1      | % 10
    d'4 d c c      | % 11
    bes8 c d4 c4. bes8      | % 12
    a2 d4 a      | % 13
    bes bes bes8 c d bes      | % 14
    g ees' a,4 bes2      | % 15
    c4 bes f'8 ees d4      | % 16
    d d d2      | % 17
    d4 d d c8 d      | % 18
    ees c a d b2 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 4/4 
    g'8 a bes c d4 c8 bes      | % 1
    a4 g c, d      | % 2
    g,2 g'8 f ees d      | % 3
    c d ees4 a, g      | % 4
    d'1      | % 5
    g8 a bes c d4 c8 bes      | % 6
    a4 g c, d      | % 7
    g,2 g'8 f ees d      | % 8
    c d ees4 a, g      | % 9
    d'1      | % 10
    d4 g8 f e4 f8 e      | % 11
    d4 c8 bes c2      | % 12
    f, d'4 f      | % 13
    bes8 c d bes g a bes g      | % 14
    ees c f4 bes,2      | % 15
    f'4 g a bes8 a      | % 16
    g fis g4 d2      | % 17
    bes'8 a g fis g f ees d      | % 18
    c a d4 g,2 \bar "|."\bar "|." 
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
