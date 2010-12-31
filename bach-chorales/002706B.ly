
% BWV 27 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 27"
composer = "Johann Sebastien Bach"
tagline = "Created by Michael Ellis from digital transcriptions by Margaret Greentree (jsbchorales.net)"
}
ASvoiceAA = \relative c'{
    \set Staff.instrumentName = #"Soprano 1"
    \set Staff.shortInstrumentName = #"S. 1"
    \clef treble
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 4/4 
    r2 r4 d'8 d      | % 1
    f4. f8 ees4 c      | % 2
    d2 c      | % 3
    r4 bes8 bes bes a bes c      | % 4
    d4 c bes2      | % 5
    d4 e f d      | % 6
    c bes a2      | % 7
    g4 d'8 d ees2~      | % 8
    ees4 d c4. c8      | % 9
    bes1      | % 10
    a4 a bes c      | % 11
    d4. d8 cis2      | % 12
    f4 f e d      | % 13
    e4. e8 d2      | % 14
    %bartimesig: 
    \time 3/1 
    bes\breve c1      | % 15
    d\breve f1      | % 16
    ees\breve ees1      | % 17
    d1.*2       | % 18
    f\breve f1      | % 19
    f1.*2       | % 20
    ees1 c1. c2      | % 21
    bes1.*2  \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ASvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Soprano 2"
    \set Staff.shortInstrumentName = #"S. 2"
    \clef treble
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 4/4 
    r2 r4 bes'8 bes      | % 1
    d4 bes c a      | % 2
    bes2 a      | % 3
    r4 g8 g g4 g      | % 4
    f4. f8 f2      | % 5
    f4 c' a bes      | % 6
    a g g fis      | % 7
    g bes8 bes bes2      | % 8
    f4 bes2 a4      | % 9
    bes1      | % 10
    f4 f g a      | % 11
    a g a2      | % 12
    a4 a g d'      | % 13
    d4. cis8 d2      | % 14
    %bartimesig: 
    \time 3/1 
    g,\breve a1      | % 15
    bes\breve bes1      | % 16
    bes\breve a1      | % 17
    bes1.*2       | % 18
    d\breve c1      | % 19
    bes\breve bes1      | % 20
    bes\breve a1      | % 21
    bes1.*2  \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AAvoiceCA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 4/4 
    f4 f f2~      | % 1
    f4 f g f      | % 2
    f2 f4 f8 f      | % 3
    d2. bes4      | % 4
    bes c d2      | % 5
    f4 e d d      | % 6
    f d d2      | % 7
    d g4 g      | % 8
    f4. f8 f4 f      | % 9
    f1      | % 10
    f4 d d ees      | % 11
    d4. d8 e2      | % 12
    f4 f g f      | % 13
    e4. e8 fis2      | % 14
    %bartimesig: 
    \time 3/1 
    g\breve ees1      | % 15
    f\breve f1      | % 16
    g ees\breve      | % 17
    f1.*2       | % 18
    f\breve f1      | % 19
    f1.*2       | % 20
    g1 f1. f2      | % 21
    f1.*2  \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ATvoiceDA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef "treble_8"
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 4/4 
    d'4 d d2~      | % 1
    d4 d c c      | % 2
    bes2 c4 a8 a      | % 3
    bes2. bes4      | % 4
    bes a bes2      | % 5
    bes4 g f bes      | % 6
    c g a2      | % 7
    bes2. bes8 bes      | % 8
    c4 bes c4. c8      | % 9
    d1      | % 10
    d4 d bes a      | % 11
    d d, a'2      | % 12
    a4 c c a      | % 13
    a4. a8 a2      | % 14
    %bartimesig: 
    \time 3/1 
    g\breve c1      | % 15
    f,\breve f1      | % 16
    c'\breve c1      | % 17
    d1.*2       | % 18
    d\breve f1      | % 19
    d\breve d1      | % 20
    c\breve c1      | % 21
    d1.*2  \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ABvoiceEA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 4/4 
    bes'4 bes bes2~      | % 1
    bes4 d, ees f      | % 2
    bes,2 f4 f'8 f      | % 3
    g2. g4      | % 4
    bes f bes,2      | % 5
    bes4 c d bes      | % 6
    f g d'2      | % 7
    g,2. g'8 g      | % 8
    a4 bes f4. f8      | % 9
    bes,1      | % 10
    d4 d d c      | % 11
    bes4. bes8 a2      | % 12
    f4 f c' d      | % 13
    a4. a8 d2      | % 14
    %bartimesig: 
    \time 3/1 
    ees\breve c1      | % 15
    bes\breve d1      | % 16
    c\breve c1      | % 17
    bes1.*2       | % 18
    bes'\breve a1      | % 19
    bes1.*2       | % 20
    ees,1 f1. f2      | % 21
    bes,1.*2  \bar "|."\bar "|." 
}% end of last bar in partorvoice



\book {
\layout { \scorepaper }
\score {
<<
\part ASvoiceAA { \ASvoiceAA } { \transpose bes c \ASvoiceAA }
\part ASvoiceBA { \ASvoiceBA } { \transpose bes c \ASvoiceBA }
\part AAvoiceCA { \AAvoiceCA } { \transpose bes c \AAvoiceCA }
\part ATvoiceDA { \ATvoiceDA } { \transpose bes c \ATvoiceDA }
\part ABvoiceEA { \ABvoiceEA } { \transpose bes c \ABvoiceEA }
>>
}
\score {
<<
\new Voice = ASvoiceAA \ASvoiceAA
\new Voice = ASvoiceBA \ASvoiceBA
\new Voice = AAvoiceCA \AAvoiceCA
\new Voice = ATvoiceDA \ATvoiceDA
\new Voice = ABvoiceEA \ABvoiceEA
>>

        \midi   { 
        \context { \Staff  \remove "Staff_performer" }
        \context { \Voice  \consists "Staff_performer" }
        } 
   }
} %%end of book

#(define output-suffix "Sopran")
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
#(define output-suffix "Sopran")
\book {
\layout { \partpaper }
\score {
<<
\part ASvoiceBA { \ASvoiceBA } { \transpose bes c \ASvoiceBA }
>>
}
\score {
<<
\new Voice = ASvoiceBA \ASvoiceBA
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
\part AAvoiceCA { \AAvoiceCA } { \transpose bes c \AAvoiceCA }
>>
}
\score {
<<
\new Voice = AAvoiceCA \AAvoiceCA
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
\part ATvoiceDA { \ATvoiceDA } { \transpose bes c \ATvoiceDA }
>>
}
\score {
<<
\new Voice = ATvoiceDA \ATvoiceDA
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
\part ABvoiceEA { \ABvoiceEA } { \transpose bes c \ABvoiceEA }
>>
}
\score {
<<
\new Voice = ABvoiceEA \ABvoiceEA
>>

        \midi   { 
        \context { \Staff  \remove "Staff_performer" }
        \context { \Voice  \consists "Staff_performer" }
        } 
   }
} %%end of book
