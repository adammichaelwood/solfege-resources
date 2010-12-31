
% BWV 248 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 248"
composer = "Johann Sebastien Bach"
tagline = "Created by Michael Ellis from digital transcriptions by Margaret Greentree (jsbchorales.net)"
}
ASvoiceAA = \relative c'{
    \set Staff.instrumentName = #"Soprano"
    \set Staff.shortInstrumentName = #"S."
    \clef treble
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    g'4     g8 a b4 a g      | % 1
    a a b\fermata  g8 a      | % 2
    b4 c d c8 b      | % 3
    a g a4 g\fermata  g      | % 4
    g8 a b4 a g      | % 5
    a a b\fermata  g8 a      | % 6
    b4 c d c8 b      | % 7
    a g a4 g\fermata  b      | % 8
    b a g fis      | % 9
    g8 a b4 a\fermata  a      | % 10
    g fis g d      | % 11
    g a b\fermata  g8 a      | % 12
    b4 c d c8 b      | % 13
    a g a4 g\fermata  s4 \bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    d4     e8 fis g4 g8 fis g4      | % 1
    g fis g e8 fis      | % 2
    g b4 a16 g fis4 g      | % 3
    g fis d d      | % 4
    e8 fis g4 g8 fis g4      | % 5
    g fis g e8 fis      | % 6
    g b4 a16 g fis4 g      | % 7
    g fis d g      | % 8
    g4. fis8 fis e e dis      | % 9
    e4 d d d      | % 10
    d8 c d4 d8 c b4      | % 11
    b e dis b      | % 12
    e e d8 e16 fis g4      | % 13
    g fis d s4 \bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    b'4     b e e8 d d4      | % 1
    e8 c a d d4 e      | % 2
    d g,8 a b c d4      | % 3
    d c8 b b4 b      | % 4
    b e e8 d d4      | % 5
    e8 c a d d4 e      | % 6
    d g,8 a b c d4      | % 7
    d c8 b b4 d      | % 8
    d d8 c b c fis, b      | % 9
    b a a g fis4 fis      | % 10
    g8 a b c b a g4      | % 11
    g fis8 e fis4 e8 fis      | % 12
    g4. a8 b c d4      | % 13
    d c8 b b4 s4 \bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    g'8 fis     e4. d8 c4. b8      | % 1
    c a d4 g, c      | % 2
    g'8 fis e4 b'8 a g4      | % 3
    d' d, g g8 fis      | % 4
    e4. d8 c4. b8      | % 5
    c a d4 g, c      | % 6
    g'8 fis e4 b'8 a g4      | % 7
    d' d, g g8 a      | % 8
    b c d4 g,8 a b4      | % 9
    e,8 fis g4 d d'8 c      | % 10
    b4. a8 g4. fis8      | % 11
    e d c4 b e      | % 12
    e8 d c4 b8 a g4      | % 13
    d'2 g,4 s4 \bar "|." 
}% end of last bar in partorvoice

 

ACvoiceEA = \relative c{
    \set Staff.instrumentName = #"Continuo"
    \set Staff.shortInstrumentName = #"C"
    \clef bass
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    g'8 fis     e e, e' d c c, c' b      | % 1
    c a d d, g4 c      | % 2
    g'8 fis e e, b' a g b      | % 3
    d4 d, g g'8 fis      | % 4
    e e, e' d c c, c' b      | % 5
    c a d d, g4 c      | % 6
    g'8 fis e e, b' a g b      | % 7
    d4 d, g g8 a      | % 8
    b c d d, g a b b'      | % 9
    e, fis g g, d'4 d8 c      | % 10
    b b' b, a g g' g, fis      | % 11
    e d c c' b4 e,      | % 12
    e'8 d c c' b a g g,      | % 13
    d'4 d, g s4 \bar "|." 
}% end of last bar in partorvoice



\addQuote "articulations"   { \ASvoiceAA }
\book {
\layout { \scorepaper }
\score {
<<
\part ASvoiceAA { \ASvoiceAA } { \transpose g c \ASvoiceAA }
\part AAvoiceBA { \quotearticulations \AAvoiceBA \ASvoiceAA } { \transpose g c \AAvoiceBA }
\part ATvoiceCA { \quotearticulations \ATvoiceCA \ASvoiceAA } { \transpose g c \ATvoiceCA }
\part ABvoiceDA { \quotearticulations \ABvoiceDA \ASvoiceAA } { \transpose g c \ABvoiceDA }
\part ACvoiceEA { \quotearticulations \ACvoiceEA \ASvoiceAA } { \transpose g c \ACvoiceEA }
>>
}
\score {
<<
\new Voice = ASvoiceAA \ASvoiceAA
\new Voice = AAvoiceBA \AAvoiceBA
\new Voice = ATvoiceCA \ATvoiceCA
\new Voice = ABvoiceDA \ABvoiceDA
\new Voice = ACvoiceEA \ACvoiceEA
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
\part ASvoiceAA { \ASvoiceAA } { \transpose g c \ASvoiceAA }
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
\part AAvoiceBA { \quotearticulations \AAvoiceBA \ASvoiceAA } { \transpose g c \AAvoiceBA }
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
\part ATvoiceCA { \quotearticulations \ATvoiceCA \ASvoiceAA } { \transpose g c \ATvoiceCA }
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
\part ABvoiceDA { \quotearticulations \ABvoiceDA \ASvoiceAA } { \transpose g c \ABvoiceDA }
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
#(define output-suffix "Continuo")
\book {
\layout { \partpaper }
\score {
<<
\part ACvoiceEA { \quotearticulations \ACvoiceEA \ASvoiceAA } { \transpose g c \ACvoiceEA }
>>
}
\score {
<<
\new Voice = ACvoiceEA \ACvoiceEA
>>

        \midi   { 
        \context { \Staff  \remove "Staff_performer" }
        \context { \Voice  \consists "Staff_performer" }
        } 
   }
} %%end of book
