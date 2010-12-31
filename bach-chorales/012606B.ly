
% BWV 126 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 126"
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
    a'4     a a gis a8 b      | % 1
    c4 b a\fermata  c      | % 2
    d d e c      | % 3
    d2 e4\fermata  e      | % 4
    e d e8 d c4      | % 5
    d8 c b4 a\fermata  a8 b      | % 6
    c4 c d c8 b      | % 7
    a2 a4\fermata  d      | % 8
    e d a8 b c4      | % 9
    b8 a b4 a\fermata  a      | % 10
    a g c d      | % 11
    e8 d c4 d d      | % 12
    e2\fermata  f      | % 13
    e4 d d4. c8      | % 14
    c2.\fermata  e4      | % 15
    e c d8 e f4      | % 16
    e2\fermata  g4 e      | % 17
    f e8 d e4 e      | % 18
    f e g8 f e4      | % 19
    d2 c\fermata       | % 20
    e4 e c d      | % 21
    c b a2\fermata       | % 22
    g4 a8 b c4 a      | % 23
    a2.\fermata  g4      | % 24
    a b c b      | % 25
    a2~ a4 gis      | % 26
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
    e4     f8 e d4 e e8 gis      | % 1
    a4 gis e e      | % 2
    g g g g      | % 3
    a2 gis4 gis      | % 4
    a a e e      | % 5
    a4. gis8 e4 f      | % 6
    g8 f e4 a g8 f      | % 7
    e g f16 e f8 e4 g      | % 8
    g f c8 d e4      | % 9
    e8 a4 gis8 e4 e      | % 10
    fis e e8 fis g4      | % 11
    g a a g      | % 12
    g2 f      | % 13
    g4 a g8 e f4      | % 14
    e2. g8 a      | % 15
    b4 a a a      | % 16
    a2 g4 g      | % 17
    c,8 d e f g4 g      | % 18
    a8 g g f e f g4      | % 19
    g4. f8 e2      | % 20
    g8 a b4 e, d      | % 21
    a'4. gis8 a2      | % 22
    e8 d c d e d e4      | % 23
    d2. b4      | % 24
    c8 d16 e f4 e4. f16 g      | % 25
    a4. g16 f e2      | % 26
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
    c'4     c b8 a b4 c8 d      | % 1
    e4 e8 d c4 c      | % 2
    b b c c      | % 3
    c b8 a b4 b      | % 4
    c d8 c b4 c8 b      | % 5
    a4 e' c c8 d      | % 6
    e d c b a b c d      | % 7
    e4 d16 cis d8 cis4 d      | % 8
    c8 b a4 a g8 a      | % 9
    b c d4 c c      | % 10
    b b a b      | % 11
    c8 d e4 a,8 b16 c b4      | % 12
    c2 c      | % 13
    c4 c c b      | % 14
    g2. c4      | % 15
    b e a, d      | % 16
    cis2 d4 c8 bes      | % 17
    a4 g c8 bes bes a      | % 18
    a b c4 c2~      | % 19
    c8 a b4 g2      | % 20
    c4 b c8 b a4      | % 21
    f'4. e16 d c2      | % 22
    c8 b a4 g8 f g4      | % 23
    f2. g4      | % 24
    f4. e16 f g8 a b4      | % 25
    cis8 d16 e a,8 d c b16 a b4      | % 26
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
    a'4     d,8 e f4 e8 d c b      | % 1
    a4 e a a'      | % 2
    g8 f e d c d e c      | % 3
    f2 e4 e      | % 4
    a8 g fis4 gis a8 g      | % 5
    f d e4 a, f'      | % 6
    e a8 g f4 e8 d      | % 7
    cis4 d a b      | % 8
    c d8 e f4 e8 fis      | % 9
    gis a e4 a, a'      | % 10
    dis, e a g      | % 11
    c8 b a g f4 g      | % 12
    c,2 a'      | % 13
    g4 f g g,      | % 14
    c2. c'4      | % 15
    gis a8 g f e d4      | % 16
    a2 b4 c      | % 17
    c c c c      | % 18
    c c8 d e d e f      | % 19
    g4 g, c2      | % 20
    c'8 b a gis a g f e      | % 21
    f e d e f2      | % 22
    c4 f e d8 cis      | % 23
    d2. e4~      | % 24
    e d e8 f g4~      | % 25
    g8 f16 e f8 d e2      | % 26
    a,2. s4 \bar "|." 
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
