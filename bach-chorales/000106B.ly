
% BWV 1 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 1"
composer = "Johann Sebastien Bach"
tagline = "Created by Michael Ellis from digital transcriptions by Margaret Greentree (jsbchorales.net)"
}
AHnvoiceAA = \relative c'{
    \set Staff.instrumentName = #"Horn 2"
    \set Staff.shortInstrumentName = #"Hn 2"
    \clef treble
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    f4     g8 c, f f, a f a c      | % 1
    f16 bes a g f8 g a4 a      | % 2
    f8 g16 a bes8 c16 bes a8 g g c      | % 3
    c b16 a b4 c f,~      | % 4
    f8 bes a g f c f c      | % 5
    c a16 f c'8 c16 c a4 f'      | % 6
    g8 c, f f, a f a c      | % 7
    f16 bes a g f8 g a4 a      | % 8
    f8 g16 a bes8 c16 bes a8 g g c      | % 9
    c b16 a b4 c f,~      | % 10
    f8 bes a g f c f c      | % 11
    c a16 f c'8 c16 c a4 r      | % 12
    g'8 c,16 c c c c c f2      | % 13
    g16 f g a g4 f2      | % 14
    f8 c f c c' bes16 a bes8 c16 bes      | % 15
    a8 g f c c'4. c,8      | % 16
    g' f16 e f4~ f8 f, c' c16 c      | % 17
    a2 a'16 g a bes c4~      | % 18
    c8 bes4 a8~ a g4 f8~      | % 19
    f f, c' c16 c a4 \bar "|." 
}% end of last bar in partorvoice

 

ASvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Soprano"
    \set Staff.shortInstrumentName = #"S"
    \clef treble
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    f4     c' a f c'      | % 1
    d d c c      | % 2
    d e f e      | % 3
    d d c a      | % 4
    d c bes a      | % 5
    g2 f4 f      | % 6
    c' a f c'      | % 7
    d d c c      | % 8
    d e f e      | % 9
    d d c a      | % 10
    d c bes a      | % 11
    g2 f4 r      | % 12
    c'2 a      | % 13
    c a      | % 14
    a4 a g g      | % 15
    a a g a      | % 16
    bes a g2      | % 17
    f f'4 e      | % 18
    d c bes a      | % 19
    g2 f4 \bar "|." 
}% end of last bar in partorvoice

 

AAvoiceCA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A"
    \clef treble
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    c4     c c d f      | % 1
    bes bes a a      | % 2
    bes bes c8 d c g      | % 3
    a4 g g f      | % 4
    f e f8 g c, f      | % 5
    f4 e c c      | % 6
    c c d f      | % 7
    bes bes a a      | % 8
    bes bes c8 d c g      | % 9
    a4 g g f      | % 10
    f e f8 g c, f      | % 11
    f4 e c r      | % 12
    g'2 f      | % 13
    f8 e16 d e4 f2      | % 14
    f4 f e e      | % 15
    f f e f      | % 16
    g f8 e d4 e      | % 17
    f2 a4 a8 g      | % 18
    f4 f f8 e c f      | % 19
    f4 e c \bar "|." 
}% end of last bar in partorvoice

 

ATvoiceDA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T"
    \clef "treble_8"
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    a'4     g a a a      | % 1
    f f' f f      | % 2
    f g f8 d e4      | % 3
    f8 e d4 e c8 a      | % 4
    f g a4 a8 g a f      | % 5
    g a bes4 a a      | % 6
    g a a a      | % 7
    f f' f f      | % 8
    f g f8 d e4      | % 9
    f8 e d4 e c8 a      | % 10
    f g a4~ a8 g a f      | % 11
    g a bes4 a r      | % 12
    c2 c      | % 13
    c c      | % 14
    c4 c c c      | % 15
    c c c c      | % 16
    d d d c      | % 17
    c2 d4 c      | % 18
    d8 bes f a bes4 c8 a      | % 19
    d4 g,16 f g8 a4 \bar "|." 
}% end of last bar in partorvoice

 

ABvoiceEA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B"
    \clef bass
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    f4     e f d a      | % 1
    bes8 c d e f4 f      | % 2
    bes a8 g a b c4      | % 3
    f, g c, f      | % 4
    bes, c d8 e f4      | % 5
    c2 f,4 f'      | % 6
    e f d a      | % 7
    bes8 c d e f4 f      | % 8
    bes a8 g a b c4      | % 9
    f, g c, f      | % 10
    bes, c d8 e f4      | % 11
    c2 f,4 r      | % 12
    e'2 f      | % 13
    c f      | % 14
    f8 g a f c d e c      | % 15
    f g a f c'4 bes8 a      | % 16
    g4 d'8 c bes4 c      | % 17
    f,2 d8 f a4      | % 18
    bes,8 d f4 g a8 d,      | % 19
    b4 c f, \bar "|." 
}% end of last bar in partorvoice



\book {
\layout { \scorepaper }
\score {
<<
\part AHnvoiceAA { \AHnvoiceAA } { \transpose f c \AHnvoiceAA }
\part ASvoiceBA { \ASvoiceBA } { \transpose f c \ASvoiceBA }
\part AAvoiceCA { \AAvoiceCA } { \transpose f c \AAvoiceCA }
\part ATvoiceDA { \ATvoiceDA } { \transpose f c \ATvoiceDA }
\part ABvoiceEA { \ABvoiceEA } { \transpose f c \ABvoiceEA }
>>
}
\score {
<<
\new Voice = AHnvoiceAA \AHnvoiceAA
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

#(define output-suffix "Hor")
\book {
\layout { \partpaper }
\score {
<<
\part AHnvoiceAA { \AHnvoiceAA } { \transpose f c \AHnvoiceAA }
>>
}
\score {
<<
\new Voice = AHnvoiceAA \AHnvoiceAA
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
\part ASvoiceBA { \ASvoiceBA } { \transpose f c \ASvoiceBA }
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
\part AAvoiceCA { \AAvoiceCA } { \transpose f c \AAvoiceCA }
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
\part ATvoiceDA { \ATvoiceDA } { \transpose f c \ATvoiceDA }
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
\part ABvoiceEA { \ABvoiceEA } { \transpose f c \ABvoiceEA }
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
