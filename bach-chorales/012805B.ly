
% BWV 128 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 128"
composer = "Johann Sebastien Bach"
tagline = "Created by Michael Ellis from digital transcriptions by Margaret Greentree (jsbchorales.net)"
}
AvoiceAA = \relative c'{
    \set Staff.instrumentName = #"Horn 1"
    \set Staff.shortInstrumentName = #""
    \clef treble
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    d'4     d8 g fis g d c d b      | % 1
    c2.\fermata  e4      | % 2
    d d d8 c b a      | % 3
    g a16 b c4 b\fermata  b      | % 4
    c8 d c b a g a4      | % 5
    g2.\fermata  d'4      | % 6
    d e a, b      | % 7
    cis8 d4 cis8 d4\fermata  a8 b16 c      | % 8
    b8 a b c d4 b      | % 9
    c2.\fermata  b8 cis16 d      | % 10
    cis8 b cis d e4 cis      | % 11
    d2.\fermata  b4      | % 12
    c g c b      | % 13
    b2.\fermata  d8 c      | % 14
    b4 c8 d e fis16 g fis4      | % 15
    g2.\fermata  s4 \bar "|." 
}% end of last bar in partorvoice

 

AvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Horn 2"
    \set Staff.shortInstrumentName = #""
    \clef treble
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    a'4     b a g g      | % 1
    g2. c8 b      | % 2
    a g a4 g d      | % 3
    d8 b16 g d'4 d g      | % 4
    g8 b a g d b d4      | % 5
    d2. a'4      | % 6
    g g d d      | % 7
    a'2 a4 d,      | % 8
    g, d' b8 d g4      | % 9
    g2. b4      | % 10
    a a a a      | % 11
    a2. g4      | % 12
    g d a' a      | % 13
    g2. a4      | % 14
    g g g8 d16 b d8 d16 d      | % 15
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
    d'4     b a8 g d'4 d8 e16 f      | % 1
    e2.\fermata  e4      | % 2
    a, a d c      | % 3
    b a g\fermata  d'      | % 4
    e e d c16 b c8      | % 5
    b2.\fermata  a4      | % 6
    b cis d e8 fis16 g      | % 7
    fis4 e8 d d4\fermata  d      | % 8
    d d g f8 e      | % 9
    e2.\fermata  e4      | % 10
    e e fis8 g16 a g8 fis      | % 11
    fis2.\fermata  d4      | % 12
    e d e fis      | % 13
    g2.\fermata  d4      | % 14
    d c8 b a4. g8      | % 15
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
    a'4     g c b b      | % 1
    g2. e4      | % 2
    fis fis g d      | % 3
    g fis d b'      | % 4
    g a a8 b a d,      | % 5
    d2. d4      | % 6
    g g fis b      | % 7
    a2 a4 a      | % 8
    g g g8 a b4      | % 9
    g2. e4      | % 10
    a a a8 b cis4      | % 11
    a2. b4      | % 12
    g b e, b'      | % 13
    b2. a4      | % 14
    b8 a g4 g8 fis16 e fis4      | % 15
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
    d'4     d fis g g8 d      | % 1
    c2. g4      | % 2
    d' d d d      | % 3
    d~ d8 a b4 g'      | % 4
    e e fis fis      | % 5
    g2. d4      | % 6
    d g, a e'      | % 7
    e8 d g fis fis4 d8 a      | % 8
    b c d4 d d      | % 9
    c2. e8 b      | % 10
    cis d e4 e e      | % 11
    d2. d4      | % 12
    c g' c,8 a' fis4      | % 13
    e2. a,4      | % 14
    d e e d8 a      | % 15
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
    fis4     g a b g      | % 1
    c2. c,4      | % 2
    d d'8 c b a g fis      | % 3
    g4 d g, g'      | % 4
    c a d d,      | % 5
    g2. fis4      | % 6
    g e fis g      | % 7
    a a, d fis      | % 8
    g g,8 a b4 g      | % 9
    c2. gis'4      | % 10
    a a,8 b cis4 a      | % 11
    d2. g4      | % 12
    c b a dis,      | % 13
    e2. fis4      | % 14
    g8 fis e d c4 d      | % 15
    g,2. s4 \bar "|." 
}% end of last bar in partorvoice



\addQuote "articulations"   { \AvoiceAA }
\book {
\layout { \scorepaper }
\score {
<<
\part AvoiceAA { \AvoiceAA } { \transpose g c \AvoiceAA }
\part AvoiceBA { \quotearticulations \AvoiceBA \AvoiceAA } { \transpose g c \AvoiceBA }
\part ASvoiceCA { \ASvoiceCA } { \transpose g c \ASvoiceCA }
\part AAvoiceDA { \quotearticulations \AAvoiceDA \AvoiceAA } { \transpose g c \AAvoiceDA }
\part ATvoiceEA { \quotearticulations \ATvoiceEA \AvoiceAA } { \transpose g c \ATvoiceEA }
\part ABvoiceFA { \quotearticulations \ABvoiceFA \AvoiceAA } { \transpose g c \ABvoiceFA }
>>
}
\score {
<<
\new Voice = AvoiceAA \AvoiceAA
\new Voice = AvoiceBA \AvoiceBA
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
#(define output-suffix "Hor")
\book {
\layout { \partpaper }
\score {
<<
\part AvoiceBA { \quotearticulations \AvoiceBA \AvoiceAA } { \transpose g c \AvoiceBA }
>>
}
\score {
<<
\new Voice = AvoiceBA \AvoiceBA
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
\part AAvoiceDA { \quotearticulations \AAvoiceDA \AvoiceAA } { \transpose g c \AAvoiceDA }
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
\part ATvoiceEA { \quotearticulations \ATvoiceEA \AvoiceAA } { \transpose g c \ATvoiceEA }
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
\part ABvoiceFA { \quotearticulations \ABvoiceFA \AvoiceAA } { \transpose g c \ABvoiceFA }
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
