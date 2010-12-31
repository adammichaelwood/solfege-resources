
% BWV 294 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 294"
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
    g'4     g g a b      | % 1
    c8 b a4 g2\fermata       | % 2
    a4 a e fis      | % 3
    g a g\fermata  g      | % 4
    g g a b      | % 5
    c8 b a4 g2\fermata       | % 6
    a4 a e fis      | % 7
    g a g\fermata  g      | % 8
    d' d e d8 c      | % 9
    b4 cis d\fermata  d      | % 10
    d d e d8 c      | % 11
    b4 a g2\fermata       | % 12
    e4 fis g e      | % 13
    d cis d2\fermata       | % 14
    g4 g a b      | % 15
    c8 b a4 g2\fermata       | % 16
    a4 a e fis      | % 17
    g8 fis e4 d\fermata  f      | % 18
    e c e fis      | % 19
    g a g\fermata  s4 \bar "|." 
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
    d4     e e4. fis8 g4      | % 1
    g4. fis8 d2      | % 2
    fis4 e8 d e4~ e8 d16 c      | % 3
    b8 g d'4 d d      | % 4
    e e4. fis8 g4      | % 5
    g4. fis8 d2      | % 6
    fis4 e8 d e4~ e8 d16 c      | % 7
    b8 g d'4 d d      | % 8
    d g8 a b c b a      | % 9
    g4 g a a      | % 10
    g g g a~      | % 11
    a8 g4 fis8 d2      | % 12
    c4 c d8 b4 a8      | % 13
    a b a4 a2      | % 14
    e'4 e e8 fis g4      | % 15
    g4. fis8 d2      | % 16
    d4 d cis d      | % 17
    d cis a d      | % 18
    c g c d      | % 19
    d4. c8 b4 s4 \bar "|." 
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
    b'4     b c c d8 f      | % 1
    e4 a,8 d16 c b2      | % 2
    d4 c8 b~ b a~ a b16 a      | % 3
    g4. fis8 b4 b      | % 4
    b c c d8 f      | % 5
    e4 a,8 d16 c b2      | % 6
    d4 c8 b~ b a~ a b16 a      | % 7
    g4. fis8 b4 b      | % 8
    a8 c b a g4 d'      | % 9
    d e fis d8 c      | % 10
    b c d b c b a d      | % 11
    d4 d8. c16 b2      | % 12
    g4 a d,8 g4 fis16 e      | % 13
    fis4 e8 fis16 g fis2      | % 14
    b4 c c d8 f      | % 15
    e4 a,8 d16 c b2      | % 16
    fis8 g a4 a a      | % 17
    b e,8 a16 g fis4 g      | % 18
    g e a a      | % 19
    g fis g s4 \bar "|." 
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
    g'8 fis     e d c b a4 g      | % 1
    c d g,2      | % 2
    d'4 a8 b c4 d      | % 3
    e d g, g'8 fis      | % 4
    e d c b a4 g      | % 5
    c d g,2      | % 6
    d'4 a8 b c4 d      | % 7
    e d g, g'      | % 8
    fis g8 fis e4 fis      | % 9
    g8 fis e4 d fis      | % 10
    g8 a b g c4 fis,      | % 11
    g d g,2      | % 12
    c8 b a4 b cis      | % 13
    d a d,2      | % 14
    e'8 d c b a4 g      | % 15
    c d g,2      | % 16
    d8 e fis g a g fis4      | % 17
    e a d b      | % 18
    c4. b8 a4 d8 c      | % 19
    b g d'4 g, s4 \bar "|." 
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
