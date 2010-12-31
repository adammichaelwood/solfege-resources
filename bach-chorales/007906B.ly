
% BWV 79 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 79"
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
    \time 3/4 
    \partial 4
    d'4     d2 d4      | % 1
    c2 b4      | % 2
    a b c      | % 3
    b2\fermata  d4      | % 4
    e2 e4      | % 5
    e d8 cis d4~      | % 6
    d cis8 b cis4      | % 7
    d2\fermata  d4      | % 8
    b2 e4      | % 9
    d2.~      | % 10
    d4 fis e      | % 11
    d2\fermata  fis4      | % 12
    e d2~      | % 13
    d4 e8 fis g4~      | % 14
    g fis8 e fis4      | % 15
    g2\fermata  s4 \bar "|." 
}% end of last bar in partorvoice

 

AvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Horn 2"
    \set Staff.shortInstrumentName = #""
    \clef treble
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 3/4 
    \partial 4
    b'4     b2 b4      | % 1
    g a d,      | % 2
    d2.      | % 3
    d2 b'4      | % 4
    b2 a4      | % 5
    a2 b4~      | % 6
    b a g      | % 7
    a2 b4      | % 8
    g2 c4      | % 9
    a2 g4      | % 10
    a d cis      | % 11
    d2 b4      | % 12
    g a b      | % 13
    c2 b8 c      | % 14
    d4 a8 g a4      | % 15
    b2 s4 \bar "|." 
}% end of last bar in partorvoice

 

AvoiceCA = \relative c{
    \set Staff.instrumentName = #"Timpani"
    \set Staff.shortInstrumentName = #""
    \clef bass
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 3/4 
    \partial 4
    r4     R2.  | % 
    r2 g4      | % 2
    d' d d      | % 3
    g,2 r4      | % 4
    R2.  | % 
    r2 d'4      | % 6
    g, g g      | % 7
    d'2 r4      | % 8
    R2.  | % 
    r2 g,4      | % 10
    d' d d      | % 11
    d2 r4      | % 12
    R2.  | % 
    r2 g,4      | % 14
    d' d d      | % 15
    g,2 s4 \bar "|." 
}% end of last bar in partorvoice

 

ASvoiceDA = \relative c'{
    \set Staff.instrumentName = #"Soprano"
    \set Staff.shortInstrumentName = #"S."
    \clef treble
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 3/4 
    \partial 4
    g'4     g2 fis4      | % 1
    e fis g      | % 2
    a2.      | % 3
    g2\fermata  g4      | % 4
    g2 a4      | % 5
    fis g a      | % 6
    g2.      | % 7
    fis2\fermata  fis4      | % 8
    g2 g4      | % 9
    a2 b4      | % 10
    a2.      | % 11
    a2\fermata  b4      | % 12
    c2 b4      | % 13
    a2 b4      | % 14
    a2.      | % 15
    g2\fermata  s4 \bar "|." 
}% end of last bar in partorvoice

 

AAvoiceEA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 3/4 
    \partial 4
    d4     g a b      | % 1
    e, c g'      | % 2
    g fis8 e fis4      | % 3
    d2 d4      | % 4
    g fis e      | % 5
    fis e d      | % 6
    e2.      | % 7
    a,2 d4      | % 8
    e2 e4      | % 9
    a, d2      | % 10
    d e4      | % 11
    fis2 fis4      | % 12
    g d2      | % 13
    d d4      | % 14
    d2.      | % 15
    d2 s4 \bar "|." 
}% end of last bar in partorvoice

 

ATvoiceFA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef "treble_8"
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 3/4 
    \partial 4
    b'4     b c d      | % 1
    g, c d      | % 2
    d2 a4      | % 3
    b2 b4      | % 4
    b2 e4      | % 5
    a,2 d4      | % 6
    b e, g      | % 7
    d'2 d4      | % 8
    d2 c4      | % 9
    c2 b4      | % 10
    fis2 g4      | % 11
    a2 d4      | % 12
    c a g      | % 13
    a2 g4      | % 14
    a8 b c2      | % 15
    b s4 \bar "|." 
}% end of last bar in partorvoice

 

ABvoiceGA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 3/4 
    \partial 4
    g'4     e2 b4      | % 1
    c a g      | % 2
    d'2.      | % 3
    g,2 g'4      | % 4
    e d cis      | % 5
    d2 b4      | % 6
    e2.      | % 7
    d2 b4      | % 8
    e fis g      | % 9
    fis d g      | % 10
    d2.      | % 11
    d2 b4      | % 12
    e fis g      | % 13
    fis d g      | % 14
    d2.      | % 15
    g,2 s4 \bar "|." 
}% end of last bar in partorvoice



\addQuote "articulations"   { \AvoiceAA }
\book {
\layout { \scorepaper }
\score {
<<
\part AvoiceAA { \AvoiceAA } { \transpose g c \AvoiceAA }
\part AvoiceBA { \quotearticulations \AvoiceBA \AvoiceAA } { \transpose g c \AvoiceBA }
\part AvoiceCA { \quotearticulations \AvoiceCA \AvoiceAA } { \transpose g c \AvoiceCA }
\part ASvoiceDA { \ASvoiceDA } { \transpose g c \ASvoiceDA }
\part AAvoiceEA { \quotearticulations \AAvoiceEA \AvoiceAA } { \transpose g c \AAvoiceEA }
\part ATvoiceFA { \quotearticulations \ATvoiceFA \AvoiceAA } { \transpose g c \ATvoiceFA }
\part ABvoiceGA { \quotearticulations \ABvoiceGA \AvoiceAA } { \transpose g c \ABvoiceGA }
>>
}
\score {
<<
\new Voice = AvoiceAA \AvoiceAA
\new Voice = AvoiceBA \AvoiceBA
\new Voice = AvoiceCA \AvoiceCA
\new Voice = ASvoiceDA \ASvoiceDA
\new Voice = AAvoiceEA \AAvoiceEA
\new Voice = ATvoiceFA \ATvoiceFA
\new Voice = ABvoiceGA \ABvoiceGA
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
#(define output-suffix "Timpani")
\book {
\layout { \partpaper }
\score {
<<
\part AvoiceCA { \quotearticulations \AvoiceCA \AvoiceAA } { \transpose g c \AvoiceCA }
>>
}
\score {
<<
\new Voice = AvoiceCA \AvoiceCA
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
\part ASvoiceDA { \ASvoiceDA } { \transpose g c \ASvoiceDA }
>>
}
\score {
<<
\new Voice = ASvoiceDA \ASvoiceDA
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
\part AAvoiceEA { \quotearticulations \AAvoiceEA \AvoiceAA } { \transpose g c \AAvoiceEA }
>>
}
\score {
<<
\new Voice = AAvoiceEA \AAvoiceEA
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
\part ATvoiceFA { \quotearticulations \ATvoiceFA \AvoiceAA } { \transpose g c \ATvoiceFA }
>>
}
\score {
<<
\new Voice = ATvoiceFA \ATvoiceFA
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
\part ABvoiceGA { \quotearticulations \ABvoiceGA \AvoiceAA } { \transpose g c \ABvoiceGA }
>>
}
\score {
<<
\new Voice = ABvoiceGA \ABvoiceGA
>>

        \midi   { 
        \context { \Staff  \remove "Staff_performer" }
        \context { \Voice  \consists "Staff_performer" }
        } 
   }
} %%end of book
