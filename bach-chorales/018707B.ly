
% BWV 187 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 187"
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
    \time 3/4 
    g'4 g8 a bes4      | % 1
    a2 g4      | % 2
    fis8 g g4. fis16 g      | % 3
    a2.\fermata       | % 4
    a8 bes bes4. a16 bes      | % 5
    c2 d4      | % 6
    bes a2      | % 7
    g2.\fermata       | % 8
    a4 a bes      | % 9
    c2 bes4      | % 10
    a g2      | % 11
    f2.\fermata       | % 12
    c'4 d e      | % 13
    f e2      | % 14
    d cis4      | % 15
    d2.\fermata       | % 16
    d2 d4      | % 17
    c8 bes a bes c4      | % 18
    d c bes      | % 19
    a2.\fermata       | % 20
    d2 d4      | % 21
    c d ees      | % 22
    d c bes      | % 23
    a2.\fermata       | % 24
    a8 bes bes4. a16 bes      | % 25
    c2 d4      | % 26
    bes a2      | % 27
    g2.\fermata  \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 3/4 
    d4 g8 fis g4      | % 1
    g fis g      | % 2
    c, d cis      | % 3
    d2.      | % 4
    fis4 g2      | % 5
    g4 a fis      | % 6
    d ees d      | % 7
    d2.      | % 8
    f4 f f      | % 9
    e f g      | % 10
    f2 e4      | % 11
    c2.      | % 12
    a'4 g2      | % 13
    f4 bes a      | % 14
    f bes a      | % 15
    a2.      | % 16
    bes2 bes4      | % 17
    a8 g f g a4      | % 18
    a fis g      | % 19
    fis2.      | % 20
    g4 a bes      | % 21
    a g fis      | % 22
    g fis g      | % 23
    fis2.      | % 24
    fis8 g g4. fis16 g      | % 25
    a8 g fis g a4      | % 26
    g2 fis4      | % 27
    d2. \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 3/4 
    bes'8 c d4 d      | % 1
    ees d8 c bes4      | % 2
    a g8 a bes4      | % 3
    fis2.      | % 4
    d'2 d4      | % 5
    c8 bes a g a4      | % 6
    g2 fis4      | % 7
    bes2.      | % 8
    d4 d d      | % 9
    c8 bes a4 g      | % 10
    a d c      | % 11
    a2.      | % 12
    a4 b cis      | % 13
    d2 cis4      | % 14
    d e2      | % 15
    fis2.      | % 16
    f2 f4      | % 17
    f2 ees4      | % 18
    d2 d4      | % 19
    d2.      | % 20
    d4 c bes      | % 21
    c2 c4      | % 22
    bes a g      | % 23
    d'2.      | % 24
    d2 d4      | % 25
    c ees d      | % 26
    d ees d8 c      | % 27
    b2. \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 3/4 
    g'8 a bes a g4      | % 1
    c, d ees      | % 2
    a, bes g      | % 3
    d'2.      | % 4
    d4 g f      | % 5
    e fis d      | % 6
    g c, d      | % 7
    g,2.      | % 8
    d'8 e f e d4      | % 9
    a' d, e      | % 10
    f bes, c      | % 11
    f,2.      | % 12
    f'2 e4      | % 13
    d g8 f g a      | % 14
    bes4 g a      | % 15
    d,2.      | % 16
    bes8 c d c bes4      | % 17
    f'2 f4      | % 18
    fis d g      | % 19
    d2.      | % 20
    bes'4 fis g      | % 21
    a2 a,4      | % 22
    bes2 c4      | % 23
    d2.      | % 24
    d'4 c bes      | % 25
    a g fis      | % 26
    g c, d      | % 27
    g,2. \bar "|."\bar "|." 
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
