
% BWV 179 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 179"
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
    e4     a b c b      | % 1
    a b gis4. fis8      | % 2
    e4\fermata  g g f      | % 3
    e a a gis      | % 4
    a2.\fermata  e4      | % 5
    a b c b      | % 6
    a b gis4. fis8      | % 7
    e4\fermata  g g f      | % 8
    e a a gis      | % 9
    a2.\fermata  b4      | % 10
    c d e e      | % 11
    d d c\fermata  e      | % 12
    d c b a      | % 13
    c b a\fermata  s4 \bar "|." 
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
    e4     e16 d f4 e16 d c8 a'4 g8~      | % 1
    g fis16 e fis8 fis fis e d c      | % 2
    b4 e8 d cis4 d      | % 3
    b8 c d e fis4 e      | % 4
    e2. e4      | % 5
    e16 d f4 e16 d c8 a'4 g8~      | % 6
    g fis16 e fis8 fis fis e d c      | % 7
    b4 e8 d cis4 d      | % 8
    b8 c d e fis4 e      | % 9
    e2. gis4      | % 10
    a b c8 g c bes      | % 11
    a4 b g g      | % 12
    f fis gis a      | % 13
    dis,8 fis f e16 d cis4 s4 \bar "|." 
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
    c'4     c8 b16 a gis8 e' e4 dis      | % 1
    e b b4. a8      | % 2
    gis4 e a a      | % 3
    gis8 a b c d c b4      | % 4
    cis2. c4      | % 5
    c8 b16 a gis8 e' e4 dis      | % 6
    e b b4. a8      | % 7
    gis4 e a a      | % 8
    gis8 a b c d c b4      | % 9
    cis2. e4      | % 10
    e16 c f4 e16 d c8 d e4      | % 11
    f8 d g f e4 c      | % 12
    c8 b a g16 a e8 d' c b      | % 13
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
    a'8 g     f4 e a, b      | % 1
    cis dis e2      | % 2
    e4 cis a d      | % 3
    d8 c f e dis4 e      | % 4
    a,2. a'8 g      | % 5
    f4 e a, b      | % 6
    cis dis e2      | % 7
    e4 cis a d      | % 8
    d8 c f e dis4 e      | % 9
    a,2. e'4      | % 10
    a g8 f e d c4      | % 11
    d8 e16 f g8 g, c4 c      | % 12
    d dis e f      | % 13
    fis8 dis e e, a4 s4 \bar "|." 
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
