
% BWV 180 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 180"
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
    a'4 g f g      | % 1
    a8 bes c4 bes2      | % 2
    a\fermata  c4 a      | % 3
    bes a8 g f g a4      | % 4
    g2 f\fermata       | % 5
    a4 g f g      | % 6
    a8 bes c4 bes2      | % 7
    a\fermata  c4 a      | % 8
    bes a8 g f g a4      | % 9
    g2 f\fermata       | % 10
    c'4 d8 e f4 f      | % 11
    e8 d c d d2      | % 12
    c\fermata  c4 d8 e      | % 13
    f4 f e8 d c d      | % 14
    d2 c\fermata       | % 15
    g4 a bes bes      | % 16
    a8 c bes a g4 g\fermata       | % 17
    c a bes a8 g      | % 18
    f g a4 g2      | % 19
    f1\fermata  \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 4/4 
    f4 e d c      | % 1
    c f f e      | % 2
    f2 g4 f      | % 3
    f f8 e d e f4      | % 4
    f e c2      | % 5
    f4 e d c      | % 6
    c f f e      | % 7
    f2 g4 f      | % 8
    f f8 e d e f4      | % 9
    f e c2      | % 10
    a'4 g f8 g a4      | % 11
    a e a g8 f      | % 12
    e2 f4 f8 g      | % 13
    a4 a g g8 a      | % 14
    g f16 e f4 e2      | % 15
    e4 f e8 f g4      | % 16
    f8 a g f e4 e      | % 17
    e f f8 e f e      | % 18
    d e f4 f e      | % 19
    c1 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef "treble_8"
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 4/4 
    c'4 c8 bes a4 g      | % 1
    f8 g a4 g8 f g4      | % 2
    f2 c'4 c      | % 3
    d c d c      | % 4
    c8 bes16 a bes4 a2      | % 5
    c4 c8 bes a4 g      | % 6
    f8 g a4 g8 f g4      | % 7
    f2 c'4 c      | % 8
    d c d c      | % 9
    c8 bes16 a bes4 a2      | % 10
    f'4 b,8 cis d4 d      | % 11
    c8 b c4~ c b      | % 12
    c2 a4 bes      | % 13
    c8 b c d e f g c,      | % 14
    c4 b c2      | % 15
    c4 c bes8 a g4      | % 16
    c d e8 d c4      | % 17
    c c bes c      | % 18
    d c c8 bes16 a bes4      | % 19
    a1 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 4/4 
    f4 c d e      | % 1
    f a,8 bes c2      | % 2
    f, e'4 f      | % 3
    d8 e f4 bes, a8 bes      | % 4
    c2 f,      | % 5
    f'4 c d e      | % 6
    f a,8 bes c2      | % 7
    f, e'4 f      | % 8
    d8 e f4 bes, a8 bes      | % 9
    c2 f,      | % 10
    f'4 e d8 e f g      | % 11
    a4~ a8 g f4 g      | % 12
    c,2 f4 bes,      | % 13
    a8 g a b c d e f      | % 14
    g4 g, c2      | % 15
    c'4 bes8 a g4 f8 e      | % 16
    f4 bes, c c      | % 17
    a d g, a      | % 18
    bes a8 bes c2      | % 19
    f,1 \bar "|."\bar "|." 
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
