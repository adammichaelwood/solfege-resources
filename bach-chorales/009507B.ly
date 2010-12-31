
% BWV 95 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 95"
composer = "Johann Sebastien Bach"
tagline = "Created by Michael Ellis from digital transcriptions by Margaret Greentree (jsbchorales.net)"
}
AvoiceAA = \relative c'{
    \set Staff.instrumentName = #"Violin"
    \set Staff.shortInstrumentName = #""
    \clef treble
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    d'4     g a b c      | % 1
    d d e\fermata  d~      | % 2
    d8 c b a g f e d      | % 3
    e4 fis g\fermata  g      | % 4
    a g fis e8 dis      | % 5
    e fis fis4 e\fermata  b'~      | % 6
    b a g f      | % 7
    e fis g\fermata  d      | % 8
    g8 a b c d2~      | % 9
    d8 d, g f e4\fermata  fis      | % 10
    g8 a b4~ b8 a g fis      | % 11
    e d~ d cis d4\fermata  d~      | % 12
    d8 d e fis g4 a8 g      | % 13
    fis e d g~ g fis16 e fis4      | % 14
    g2.\fermata  s4 \bar "|." 
}% end of last bar in partorvoice

 

ASvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Soprano"
    \set Staff.shortInstrumentName = #"S."
    \clef treble
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    g'4     d e fis g      | % 1
    a b g\fermata  b8 c      | % 2
    d4 d b8 c d4      | % 3
    c2 b4\fermata  b      | % 4
    c b a g8 a      | % 5
    b4 b8 a g4 b      | % 6
    d d b d      | % 7
    c2 b4\fermata  b      | % 8
    c b a g8 a      | % 9
    b4 b g\fermata  a      | % 10
    b b e, fis      | % 11
    g8 fis e4 d\fermata  d      | % 12
    a'4. a8 b4 a8 b      | % 13
    c4 b a2      | % 14
    g2.\fermata  s4 \bar "|." 
}% end of last bar in partorvoice

 

AAvoiceCA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    d4     d c b g'      | % 1
    fis8 e d4 c d      | % 2
    d8 e fis4 g f      | % 3
    e d d d      | % 4
    d4. e8 fis4 g8 fis      | % 5
    e4 dis e e      | % 6
    d d g b      | % 7
    b a g g      | % 8
    g g fis8 e d4      | % 9
    g d e c      | % 10
    b e e d      | % 11
    d8 b' a g fis4 a      | % 12
    g2~ g8 fis e d      | % 13
    c a' d,4 d2      | % 14
    d2. s4 \bar "|." 
}% end of last bar in partorvoice

 

ATvoiceDA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef "treble_8"
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    b'4     b a8 g fis4 e'      | % 1
    d8 c b4 c b      | % 2
    a d g,8 a b4      | % 3
    b a g b      | % 4
    a b b b      | % 5
    b b b b      | % 6
    a8 b c d e4 b      | % 7
    c d d d      | % 8
    c d d d8 c      | % 9
    b a g4 c c      | % 10
    d g, g8 a a c      | % 11
    b4 e,8 a a4 fis'8 e      | % 12
    d c b a g4 c      | % 13
    c8 a b c d a16 b c b c8      | % 14
    b2. s4 \bar "|." 
}% end of last bar in partorvoice

 

ABvoiceEA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    g8 a     b4 c d e      | % 1
    fis g c, g'      | % 2
    fis8 e d4 e b      | % 3
    c d g, g'      | % 4
    fis g dis e8 fis      | % 5
    g a b4 e, e      | % 6
    f fis g gis      | % 7
    a d, g g8 fis      | % 8
    e4 d c b8 a      | % 9
    g a b4 c a'      | % 10
    g8 fis e d cis4 d      | % 11
    g, a d d'8 c      | % 12
    b a g fis e d c b      | % 13
    a fis g4 d'2      | % 14
    g,2. s4 \bar "|." 
}% end of last bar in partorvoice



\addQuote "articulations"   { \AvoiceAA }
\book {
\layout { \scorepaper }
\score {
<<
\part AvoiceAA { \AvoiceAA } { \transpose g c \AvoiceAA }
\part ASvoiceBA { \ASvoiceBA } { \transpose g c \ASvoiceBA }
\part AAvoiceCA { \quotearticulations \AAvoiceCA \AvoiceAA } { \transpose g c \AAvoiceCA }
\part ATvoiceDA { \quotearticulations \ATvoiceDA \AvoiceAA } { \transpose g c \ATvoiceDA }
\part ABvoiceEA { \quotearticulations \ABvoiceEA \AvoiceAA } { \transpose g c \ABvoiceEA }
>>
}
\score {
<<
\new Voice = AvoiceAA \AvoiceAA
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

#(define output-suffix "Violin")
\book {
\layout { \partpaper }
\score {
<<
\part AvoiceAA { \AvoiceAA } { \transpose g c \AvoiceAA }
>>
}
\score {
<<
\new Voice = AvoiceAA \AvoiceAA
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
\part ASvoiceBA { \ASvoiceBA } { \transpose g c \ASvoiceBA }
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
\part AAvoiceCA { \quotearticulations \AAvoiceCA \AvoiceAA } { \transpose g c \AAvoiceCA }
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
\part ATvoiceDA { \quotearticulations \ATvoiceDA \AvoiceAA } { \transpose g c \ATvoiceDA }
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
\part ABvoiceEA { \quotearticulations \ABvoiceEA \AvoiceAA } { \transpose g c \ABvoiceEA }
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
