
% BWV 10 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 10"
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
    d'2 f      | % 1
    d4 d d d      | % 2
    ees2 d      | % 3
    c c      | % 4
    bes1\fermata       | % 5
    d2 f      | % 6
    c4 c c g      | % 7
    bes2 a      | % 8
    g1\fermata       | % 9
    d'2 f      | % 10
    d4 d d d      | % 11
    ees2 d      | % 12
    c c      | % 13
    bes1\fermata       | % 14
    d2 f      | % 15
    c4 c c c      | % 16
    c2 g4 a      | % 17
    bes2 a      | % 18
    g1~      | % 19
    g~      | % 20
    g~      | % 21
    g\fermata  \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 4/4 
    g'2 f      | % 1
    f4 fis g a      | % 2
    g f2 g4      | % 3
    g2 f      | % 4
    f1      | % 5
    f      | % 6
    f4 f ees g      | % 7
    g2 fis      | % 8
    d1      | % 9
    g2 a      | % 10
    f2. fis4      | % 11
    g a bes2~      | % 12
    bes4 bes bes a      | % 13
    f1      | % 14
    R1  | % 
    f4 g a bes      | % 16
    c2 c,      | % 17
    d d4 c      | % 18
    b d g f      | % 19
    ees1~      | % 20
    ees2 d4 c      | % 21
    d1 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef "treble_8"
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 4/4 
    bes'2 c      | % 1
    d4 c bes a      | % 2
    bes c2 bes4      | % 3
    bes2 a      | % 4
    d1      | % 5
    bes      | % 6
    a4 c g c      | % 7
    d2. c4      | % 8
    bes1      | % 9
    bes2 c      | % 10
    d4 c bes a      | % 11
    bes c f, f'      | % 12
    g2 f4 c      | % 13
    d1      | % 14
    r2 f,4 g      | % 15
    a bes c2~      | % 16
    c4 d e fis      | % 17
    g2 f4 ees      | % 18
    d b c d~      | % 19
    d g, c2~      | % 20
    c b4 a      | % 21
    b1 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 4/4 
    g'2 a      | % 1
    bes4 a g fis      | % 2
    g a bes g      | % 3
    ees c f2      | % 4
    bes,1      | % 5
    bes'2 d,      | % 6
    f4 a c ees,      | % 7
    d c d2      | % 8
    g,1      | % 9
    g'2 f      | % 10
    bes4 c d2~      | % 11
    d4 c bes d,      | % 12
    ees c f2      | % 13
    bes,1      | % 14
    bes4 c d ees      | % 15
    f2. g4      | % 16
    a bes c2      | % 17
    bes,4 c d ees      | % 18
    f2 ees4 d      | % 19
    c d ees f      | % 20
    g1      | % 21
    g, \bar "|."\bar "|." 
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
