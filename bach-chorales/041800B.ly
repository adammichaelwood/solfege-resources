
% BWV 418 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 418"
composer = "Johann Sebastien Bach"
tagline = "Created by Michael Ellis from digital transcriptions by Margaret Greentree (jsbchorales.net)"
}
ASvoiceAA = \relative c'{
    \set Staff.instrumentName = #"Soprano"
    \set Staff.shortInstrumentName = #"S."
    \clef treble
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    e4     a b c d      | % 1
    b4. a8 g4\fermata  g      | % 2
    a a b b      | % 3
    e,2.\fermata  e4      | % 4
    a b c d8 c      | % 5
    b4. a8 g4\fermata  g      | % 6
    a a b b      | % 7
    e,2.\fermata  e'4      | % 8
    d c c b      | % 9
    c2.\fermata  b4      | % 10
    c d e e      | % 11
    d4. c8 b4\fermata  b      | % 12
    c b a a      | % 13
    b4. a8 g4\fermata  g8 f      | % 14
    e4 a a8 b gis4      | % 15
    a2.\fermata  s4 \bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    c8 d     e4 e e d      | % 1
    d8 e fis4 e e      | % 2
    e d d8 f e d      | % 3
    c2. b4      | % 4
    e fis8 gis a4 a8 g      | % 5
    f e d4 e d      | % 6
    e e d8 e fis4      | % 7
    b,2. c4      | % 8
    a' a g g      | % 9
    g2. g8 f      | % 10
    e4 d c e      | % 11
    a8 g a fis g4 g      | % 12
    g8 f g e c4 c      | % 13
    b8 cis dis4 e d~      | % 14
    d8 c c d e f e4      | % 15
    e2. s4 \bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    a'8 b     c4 b a a      | % 1
    b2 b4 c      | % 2
    c8 b a4 g8 a b4      | % 3
    a2. gis4      | % 4
    a d e a,~      | % 5
    a8 gis a4 b b      | % 6
    a8 b a g fis g a4      | % 7
    gis2. a4      | % 8
    a d d8 e f d      | % 9
    e2. d4      | % 10
    c g' g c,8 b      | % 11
    a4 d d d      | % 12
    g, c c8 b a g      | % 13
    fis g a4 b g      | % 14
    g a8 b c d b4      | % 15
    cis2. s4 \bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    a4     a' gis a8 g fis4      | % 1
    g dis e c      | % 2
    f fis g gis      | % 3
    a2. e8 d      | % 4
    c4 b a8 g' f e      | % 5
    d e f4 e b      | % 6
    c cis d dis      | % 7
    e2. a8 g      | % 8
    f4 fis g g,      | % 9
    c2. g'4      | % 10
    a b c8 b a g      | % 11
    fis e fis d g4 g8 f      | % 12
    e d e c f g f e      | % 13
    dis e fis4 e b      | % 14
    c f e8 d e e,      | % 15
    a2. s4 \bar "|." 
}% end of last bar in partorvoice



\addQuote "articulations"   { \ASvoiceAA }
\book {
\layout { \scorepaper }
\score {
<<
\part ASvoiceAA { \ASvoiceAA } { \transpose c c \ASvoiceAA }
\part AAvoiceBA { \quotearticulations \AAvoiceBA \ASvoiceAA } { \transpose c c \AAvoiceBA }
\part ATvoiceCA { \quotearticulations \ATvoiceCA \ASvoiceAA } { \transpose c c \ATvoiceCA }
\part ABvoiceDA { \quotearticulations \ABvoiceDA \ASvoiceAA } { \transpose c c \ABvoiceDA }
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
\part ASvoiceAA { \ASvoiceAA } { \transpose c c \ASvoiceAA }
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
\part AAvoiceBA { \quotearticulations \AAvoiceBA \ASvoiceAA } { \transpose c c \AAvoiceBA }
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
\part ATvoiceCA { \quotearticulations \ATvoiceCA \ASvoiceAA } { \transpose c c \ATvoiceCA }
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
\part ABvoiceDA { \quotearticulations \ABvoiceDA \ASvoiceAA } { \transpose c c \ABvoiceDA }
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
