
% BWV 178 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 178"
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
    c'4     c8 b a b c d e4      | % 1
    d d c\fermata  c      | % 2
    b a8 b c4 d      | % 3
    b2 a4\fermata  c      | % 4
    c8 b a b c d e4      | % 5
    d d c\fermata  c      | % 6
    b a8 b c4 d      | % 7
    b2 a4\fermata  d      | % 8
    e e b8 c d4      | % 9
    c c b\fermata  c      | % 10
    d a8 b c4 b      | % 11
    a a g\fermata  c      | % 12
    b a8 b c4 d8 c      | % 13
    b2 a4\fermata  s4 \bar "|." 
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
    a'4     g f g g      | % 1
    a g g a      | % 2
    gis a a a      | % 3
    a gis e a      | % 4
    g f g g      | % 5
    a g g a      | % 6
    gis a a a      | % 7
    a gis e g      | % 8
    g g d8 e f4      | % 9
    e e e e      | % 10
    d8 e f4 e d      | % 11
    e fis d e      | % 12
    d8 e fis e e4 a8 g      | % 13
    f4 e8 d cis4 s4 \bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef "treble_8"
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    e'4     e8 d c d e b c4      | % 1
    c b e e      | % 2
    e8 d c b a4 f'      | % 3
    e4. d8 c4 e      | % 4
    e8 d c d e b c4      | % 5
    c b e e      | % 6
    e8 d c b a4 f'      | % 7
    e4. d8 c4 b      | % 8
    c g8 a b4 b      | % 9
    b a gis a      | % 10
    a d g,8 a b d      | % 11
    c b a4 b g8 a      | % 12
    b cis d4 c8 b a4      | % 13
    a4. gis8 e4 s4 \bar "|." 
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
    a'4     e f e8 d c4      | % 1
    f g c, a      | % 2
    e' f2 e8 d      | % 3
    e2 a,4 a'      | % 4
    e f e8 d c4      | % 5
    f g c, a      | % 6
    e' f2 e8 d      | % 7
    e2 a,4 g'      | % 8
    c,8 d e f g4 gis      | % 9
    a c,8 d e4 a8 g      | % 10
    f e d4 e8 fis g4      | % 11
    c, d g, e'8 fis      | % 12
    g4 fis8 gis a g f e      | % 13
    d4 e a, s4 \bar "|." 
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
