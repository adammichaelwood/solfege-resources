
% BWV 252 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 252"
composer = "Johann Sebastien Bach"
tagline = "Created by Michael Ellis from digital transcriptions by Margaret Greentree (jsbchorales.net)"
}
AHvoiceAA = \relative c'{
    \set Staff.instrumentName = #"Horn 1"
    \set Staff.shortInstrumentName = #"H1"
    \clef treble
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    d'4     d d e e      | % 1
    d2.\fermata  b4      | % 2
    c b a b8 c      | % 3
    a2 g4\fermata  d'      | % 4
    d d e e      | % 5
    d2.\fermata  b4      | % 6
    c b a b8 c      | % 7
    a2 g4\fermata  a      | % 8
    a a b b      | % 9
    a2.\fermata  a4      | % 10
    b8 cis d4 d cis      | % 11
    d2.\fermata  d4      | % 12
    e d c b      | % 13
    c2.\fermata  b4      | % 14
    a b8 c a4~ a8 g      | % 15
    g2.\fermata  s4 \bar "|." 
}% end of last bar in partorvoice

 

AHvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Horn 2"
    \set Staff.shortInstrumentName = #"H2"
    \clef treble
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    g'8 d     d b b g g g' g c      | % 1
    b2. g8 d      | % 2
    d a' g d d16 b d8 g4~      | % 3
    g8 d d16 b d8 b4 g'8 d      | % 4
    d b b g g g' g c      | % 5
    b2. g8 d      | % 6
    d a' g d d16 b d8 g4~      | % 7
    g8 d d16 b d8 b4 d      | % 8
    d2~ d16 b d b g8 g'      | % 9
    d2. d4      | % 10
    d8 a' a d, b' g a4      | % 11
    a2. b8 g      | % 12
    g c b g g a r b      | % 13
    a2. g8 d      | % 14
    d16 b d8 g, g' g d d16 b d8      | % 15
    b2. s4 \bar "|." 
}% end of last bar in partorvoice

 

ASvoiceCA = \relative c'{
    \set Staff.instrumentName = #"Soprano"
    \set Staff.shortInstrumentName = #"S."
    \clef treble
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    d'4     d d e e      | % 1
    d2.\fermata  b4      | % 2
    c b a b8 c      | % 3
    a2 g4\fermata  d'      | % 4
    d d e e      | % 5
    d2.\fermata  b4      | % 6
    c b a b8 c      | % 7
    a2 g4\fermata  a      | % 8
    a a b b      | % 9
    a2.\fermata  a4      | % 10
    b8 cis d4 d cis      | % 11
    d2.\fermata  d4      | % 12
    e d c b      | % 13
    c2.\fermata  b4      | % 14
    a b8 c a4~ a8 g      | % 15
    g2.\fermata  s4 \bar "|." 
}% end of last bar in partorvoice

 

AAvoiceDA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    g'4     a g g g8 a      | % 1
    b2. g4      | % 2
    a d, d d      | % 3
    e16 fis g4 fis8 d4 g      | % 4
    a g g g8 a      | % 5
    b2. g4      | % 6
    a d, d d      | % 7
    e16 fis g4 fis8 d4 fis8 g      | % 8
    a g a fis d4 g      | % 9
    fis2. fis4      | % 10
    d8 e fis4 b a8 g      | % 11
    fis2. g4      | % 12
    g8 a b4 b8 a a gis      | % 13
    a2. d,4      | % 14
    d4. e8 d g fis4      | % 15
    d2. s4 \bar "|." 
}% end of last bar in partorvoice

 

ATvoiceEA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    b'4     a8 d b4 c c      | % 1
    d2. d4      | % 2
    d4. g8 fis4 g8 g,      | % 3
    e'4 a, b b      | % 4
    a8 d b4 c c      | % 5
    d2. d4      | % 6
    d4. g8 fis4 g8 g,      | % 7
    e'4 a, b a      | % 8
    d c b8 c d4      | % 9
    d2. d8 c      | % 10
    b a a d d g e16 d e8      | % 11
    d2. b4      | % 12
    c d8 e16 f g8 c, f e      | % 13
    e2. g4      | % 14
    fis8 d b a a b c a      | % 15
    b2. s4 \bar "|." 
}% end of last bar in partorvoice

 

ABvoiceFA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    g'4     fis g c,8 d e c      | % 1
    g'2. g4      | % 2
    g8 fis g4 d8 c b e      | % 3
    c b16 c d4 g, g'      | % 4
    fis g c,8 d e c      | % 5
    g'2. g4      | % 6
    g8 fis g4 d8 c b e      | % 7
    c b16 c d4 g, d'8 e      | % 8
    fis e fis d g, a b c      | % 9
    d2. d4      | % 10
    g fis8 b g e a a,      | % 11
    d2. g4      | % 12
    c, g'8 f e f d e      | % 13
    a,2. b8 g      | % 14
    d' fis g c, d4 d,      | % 15
    g2. s4 \bar "|." 
}% end of last bar in partorvoice



\addQuote "articulations"   { \AHvoiceAA }
\book {
\layout { \scorepaper }
\score {
<<
\part AHvoiceAA { \AHvoiceAA } { \transpose g c \AHvoiceAA }
\part AHvoiceBA { \quotearticulations \AHvoiceBA \AHvoiceAA } { \transpose g c \AHvoiceBA }
\part ASvoiceCA { \ASvoiceCA } { \transpose g c \ASvoiceCA }
\part AAvoiceDA { \quotearticulations \AAvoiceDA \AHvoiceAA } { \transpose g c \AAvoiceDA }
\part ATvoiceEA { \quotearticulations \ATvoiceEA \AHvoiceAA } { \transpose g c \ATvoiceEA }
\part ABvoiceFA { \quotearticulations \ABvoiceFA \AHvoiceAA } { \transpose g c \ABvoiceFA }
>>
}
\score {
<<
\new Voice = AHvoiceAA \AHvoiceAA
\new Voice = AHvoiceBA \AHvoiceBA
\new Voice = ASvoiceCA \ASvoiceCA
\new Voice = AAvoiceDA \AAvoiceDA
\new Voice = ATvoiceEA \ATvoiceEA
\new Voice = ABvoiceFA \ABvoiceFA
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
\part AHvoiceAA { \AHvoiceAA } { \transpose g c \AHvoiceAA }
>>
}
\score {
<<
\new Voice = AHvoiceAA \AHvoiceAA
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
\part AHvoiceBA { \quotearticulations \AHvoiceBA \AHvoiceAA } { \transpose g c \AHvoiceBA }
>>
}
\score {
<<
\new Voice = AHvoiceBA \AHvoiceBA
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
\part ASvoiceCA { \ASvoiceCA } { \transpose g c \ASvoiceCA }
>>
}
\score {
<<
\new Voice = ASvoiceCA \ASvoiceCA
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
\part AAvoiceDA { \quotearticulations \AAvoiceDA \AHvoiceAA } { \transpose g c \AAvoiceDA }
>>
}
\score {
<<
\new Voice = AAvoiceDA \AAvoiceDA
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
\part ATvoiceEA { \quotearticulations \ATvoiceEA \AHvoiceAA } { \transpose g c \ATvoiceEA }
>>
}
\score {
<<
\new Voice = ATvoiceEA \ATvoiceEA
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
\part ABvoiceFA { \quotearticulations \ABvoiceFA \AHvoiceAA } { \transpose g c \ABvoiceFA }
>>
}
\score {
<<
\new Voice = ABvoiceFA \ABvoiceFA
>>

        \midi   { 
        \context { \Staff  \remove "Staff_performer" }
        \context { \Voice  \consists "Staff_performer" }
        } 
   }
} %%end of book
