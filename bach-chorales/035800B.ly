
% BWV 358 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 358"
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
    a'4 a g f      | % 1
    e2 d\fermata       | % 2
    a'4 b c a      | % 3
    d2 cis\fermata       | % 4
    d8 e f4 e e      | % 5
    d1\fermata       | % 6
    a4 a g f      | % 7
    e2 d\fermata       | % 8
    a'4 b c a      | % 9
    d2 cis\fermata       | % 10
    d8 e f4 e e      | % 11
    d1\fermata       | % 12
    a4 a bes a      | % 13
    g g f2\fermata       | % 14
    a4 b c8 b a4      | % 15
    d c8 b b2      | % 16
    a\fermata  a4 a      | % 17
    g f e2      | % 18
    d1\fermata  \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 4/4 
    d4 d e d      | % 1
    d cis a2      | % 2
    d4 g, g'8 f e4      | % 3
    a b a2      | % 4
    g4 a8 bes g bes a g      | % 5
    f1      | % 6
    d4 d e d      | % 7
    d cis a2      | % 8
    d4 g, g'8 f e4      | % 9
    a b a2      | % 10
    g4 a8 bes g bes a g      | % 11
    f1      | % 12
    f4 f8 ees d e f4      | % 13
    f e c2      | % 14
    c4 f e8 d c4      | % 15
    f e8 f e4. d8      | % 16
    cis2 d4~ d8 cis      | % 17
    d e e d d cis16 b cis4      | % 18
    a1 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef "treble_8"
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 4/4 
    f8 g a4 bes8 a a4      | % 1
    bes a8 g f2      | % 2
    f'8 e d4 c cis      | % 3
    d8 e f4 e2      | % 4
    d4 d d cis      | % 5
    a1      | % 6
    f8 g a4 bes8 a a4      | % 7
    bes a8 g f2      | % 8
    f'8 e d4 c cis      | % 9
    d8 e f4 e2      | % 10
    d4 d d cis      | % 11
    a1      | % 12
    d4 c bes8 c d4      | % 13
    d c8 bes a2      | % 14
    a4 g8 f g4 a      | % 15
    a8 gis a2 gis4      | % 16
    a2 f8 g a4      | % 17
    d,8 a' a4 b8 e, a g      | % 18
    fis1 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 4/4 
    d8 e f4 cis d      | % 1
    g, a d,2      | % 2
    d'8 e f4 e8 f g4      | % 3
    fis8 gis gis4 a2      | % 4
    bes4 a8 g a4 a,      | % 5
    d1      | % 6
    d8 e f4 cis d      | % 7
    g, a d,2      | % 8
    d'8 e f4 e8 f g4      | % 9
    fis8 gis gis4 a2      | % 10
    bes4 a8 g a4 a,      | % 11
    d1      | % 12
    d8 e f4 g d8 c      | % 13
    bes g c4 f,2      | % 14
    f'4 e8 d e4 f      | % 15
    b, c8 d e2      | % 16
    a, d8 e f4      | % 17
    b,8 cis d4 gis, a      | % 18
    d,1 \bar "|."\bar "|." 
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
