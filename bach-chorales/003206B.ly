
% BWV 32 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 32"
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
    g'4 a b a      | % 1
    g fis e d\fermata       | % 2
    g a b c      | % 3
    b a g2\fermata       | % 4
    g4 a b a      | % 5
    g fis e d\fermata       | % 6
    g a b c      | % 7
    b a g2\fermata       | % 8
    b4 c d c      | % 9
    b a b2\fermata       | % 10
    d4 d e d      | % 11
    c b a2\fermata       | % 12
    b4 d c b8 a      | % 13
    g4 a b2      | % 14
    g\fermata  b8 c d4      | % 15
    c b a b      | % 16
    a2 g\fermata  \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    d4 d d d      | % 1
    d8 cis d4 cis a      | % 2
    e' d d a'      | % 3
    d, d d2      | % 4
    d4 d d d      | % 5
    d8 cis d4 cis a      | % 6
    e' d d a'      | % 7
    d, d d2      | % 8
    g4 g fis g      | % 9
    g g8 fis g2      | % 10
    g4 g g g8 fis      | % 11
    e4 d8 e fis2      | % 12
    g4 g8 fis e fis g fis      | % 13
    e4 fis g2      | % 14
    e g4 a      | % 15
    g d8 e fis4 g      | % 16
    g fis d2 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    b'4 a g g8 fis      | % 1
    g4 a a8 g fis4      | % 2
    b a g8 fis e fis      | % 3
    g4 g8 fis b2      | % 4
    b4 a g g8 fis      | % 5
    g4 a a8 g fis4      | % 6
    b a g8 fis e fis      | % 7
    g4 g8 fis b2      | % 8
    d4 e a, e'      | % 9
    d d d2      | % 10
    b4 b c8 b a4      | % 11
    g8 a b cis d2      | % 12
    d8 c b4 c d      | % 13
    e8 d c4 d2      | % 14
    c d4 d      | % 15
    g,8 a b c d4 d      | % 16
    d4. c8 b2 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    g'4 fis g d      | % 1
    e fis8 g a4 d,      | % 2
    e fis g a      | % 3
    b8 c d4 g,2      | % 4
    g4 fis g d      | % 5
    e fis8 g a4 d,      | % 6
    e fis g a      | % 7
    b8 c d4 g,2      | % 8
    g8 fis e4 d e8 fis      | % 9
    g4 d g,2      | % 10
    g'8 f e d c4 d      | % 11
    e8 fis g4 d2      | % 12
    g4 g, a b      | % 13
    c8 b a4 g8 a b g      | % 14
    c2 g'4 fis      | % 15
    e8 fis g4 c, b8 c      | % 16
    d2 g, \bar "|."\bar "|." 
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
