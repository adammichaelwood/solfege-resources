
% BWV 91 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 91"
composer = "Johann Sebastien Bach"
tagline = "Created by Michael Ellis from digital transcriptions by Margaret Greentree (jsbchorales.net)"
}
AHvoiceAA = \relative c'{
    \set Staff.instrumentName = #"Horn 1"
    \set Staff.shortInstrumentName = #"H"
    \clef treble
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    g'4     g g a g      | % 1
    c d c2\fermata       | % 2
    b8 c d4 e d8 c      | % 3
    b4 a g\fermata  g      | % 4
    c b d a      | % 5
    b8 cis16 d cis4 d\fermata  d      | % 6
    a a a b      | % 7
    c8 b a4 g8 a b4      | % 8
    a2\fermata  b8 c d c16 d      | % 9
    e d c d e fis e fis g4\fermata  s4 \bar "|." 
}% end of last bar in partorvoice

 

AHvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Horn 2"
    \set Staff.shortInstrumentName = #"H"
    \clef treble
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    b4     g b d b8 d      | % 1
    g4 g g2      | % 2
    g8 a b4 c8 b a4      | % 3
    g d b d8 d      | % 4
    d d d d d d d d      | % 5
    g a16 b a4 a a      | % 6
    d, g d g      | % 7
    a8 g~ g d b d g4      | % 8
    d2 g8 a b a16 b      | % 9
    c8 g~ g16 a g a b4 s4 \bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Timpani"
    \set Staff.shortInstrumentName = #"T"
    \clef bass
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    g4     g g d' r      | % 1
    R1  | % 
    r2 r4 d      | % 3
    d d g, r      | % 4
    r g g d'      | % 5
    d r r r      | % 6
    r2 r4 d      | % 7
    d8 g, d'4 g,8 d' g,4      | % 8
    d'2 g,4 g      | % 9
    g8 g16 g g8 g g4 s4 \bar "|." 
}% end of last bar in partorvoice

 

ASvoiceDA = \relative c'{
    \set Staff.instrumentName = #"Soprano"
    \set Staff.shortInstrumentName = #"S."
    \clef treble
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    g'4     g g a g      | % 1
    c d c2\fermata       | % 2
    b8 c d4 e d8 c      | % 3
    b4 a g\fermata  g      | % 4
    c b8 c d4 a      | % 5
    g8 fis e4 d\fermata  d      | % 6
    a' a a b      | % 7
    c8 b a4 g8 a b4      | % 8
    a2\fermata  g4 g      | % 9
    g2 g4\fermata  s4 \bar "|." 
}% end of last bar in partorvoice

 

AAvoiceEA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    d4     e d8 e fis4 e      | % 1
    g g8 f e2      | % 2
    g8 a b4 c8 b a4      | % 3
    g fis d d8 e      | % 4
    fis4 g g fis8 e      | % 5
    d b cis4 a a      | % 6
    d cis8 a fis'4 g      | % 7
    a8 g4 fis8 e a d, e      | % 8
    fis2 d8 e f4      | % 9
    e e d s4 \bar "|." 
}% end of last bar in partorvoice

 

ATvoiceFA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    b'4     c b a8 d b4      | % 1
    e8 c b4 g2      | % 2
    e'4 f g d      | % 3
    d~ d8 c b4 g      | % 4
    a d8 c b g d'4      | % 5
    d a8 g fis4 fis8 g      | % 6
    a b cis e d4 d      | % 7
    e8 d e d~ d c b c      | % 8
    d2 d4 b      | % 9
    g c b s4 \bar "|." 
}% end of last bar in partorvoice

 

ABvoiceGA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    g'8 fis     e fis g4 d e8 d      | % 1
    c4 g c2      | % 2
    e4 d c fis,      | % 3
    g8 b d4 g, b      | % 4
    a g8 a b c d c      | % 5
    b g a4 d d8 e      | % 6
    fis g a cis, d c b4      | % 7
    a8 b c d e fis g g,      | % 8
    d'2 b8 a g4      | % 9
    c c g s4 \bar "|." 
}% end of last bar in partorvoice



\addQuote "articulations"   { \AHvoiceAA }
\book {
\layout { \scorepaper }
\score {
<<
\part AHvoiceAA { \AHvoiceAA } { \transpose g c \AHvoiceAA }
\part AHvoiceBA { \quotearticulations \AHvoiceBA \AHvoiceAA } { \transpose g c \AHvoiceBA }
\part ATvoiceCA { \quotearticulations \ATvoiceCA \AHvoiceAA } { \transpose g c \ATvoiceCA }
\part ASvoiceDA { \ASvoiceDA } { \transpose g c \ASvoiceDA }
\part AAvoiceEA { \quotearticulations \AAvoiceEA \AHvoiceAA } { \transpose g c \AAvoiceEA }
\part ATvoiceFA { \quotearticulations \ATvoiceFA \AHvoiceAA } { \transpose g c \ATvoiceFA }
\part ABvoiceGA { \quotearticulations \ABvoiceGA \AHvoiceAA } { \transpose g c \ABvoiceGA }
>>
}
\score {
<<
\new Voice = AHvoiceAA \AHvoiceAA
\new Voice = AHvoiceBA \AHvoiceBA
\new Voice = ATvoiceCA \ATvoiceCA
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
#(define output-suffix "Timpani")
\book {
\layout { \partpaper }
\score {
<<
\part ATvoiceCA { \quotearticulations \ATvoiceCA \AHvoiceAA } { \transpose g c \ATvoiceCA }
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
\part AAvoiceEA { \quotearticulations \AAvoiceEA \AHvoiceAA } { \transpose g c \AAvoiceEA }
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
\part ATvoiceFA { \quotearticulations \ATvoiceFA \AHvoiceAA } { \transpose g c \ATvoiceFA }
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
\part ABvoiceGA { \quotearticulations \ABvoiceGA \AHvoiceAA } { \transpose g c \ABvoiceGA }
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
