
% BWV 276 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 276"
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
    a'4     g a8 b c4 d      | % 1
    a2\fermata  a4 f8 g      | % 2
    a g f4 e8 d e4      | % 3
    d2\fermata  r4 f      | % 4
    g g d c      | % 5
    f g a\fermata  a8 g      | % 6
    f4 g a8 g f4      | % 7
    e d e2\fermata       | % 8
    d4 d d2      | % 9
    d1\fermata       | % 10
    a'4 a g a8 bes 
    \bar "||"     | % 11
    c4 d a\fermata  a      | % 12
    a8. g16 f8 g a g f4      | % 13
    e8 d e4 d\fermata  f      | % 14
    g g d c      | % 15
    f g a\fermata  a      | % 16
    a8 g f8. g16 a4 f      | % 17
    e d e2\fermata       | % 18
    d4 d d2      | % 19
    d1\fermata       | % 20
    a'4 
    \bar "||"     | % 21
    f4 c' a\fermata  c8 bes      | % 22
    a4 g f\fermata  a8 g      | % 23
    f4 e d\fermata  f      | % 24
    g g d c      | % 25
    f g a\fermata  a8 g      | % 26
    f4 g a f      | % 27
    e d e2\fermata       | % 28
    d4 d d2      | % 29
    d1\fermata  \bar "|." 
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
    f4~     f8 e e gis a4. g8~      | % 1
    g f16 e f4 e d      | % 2
    c8 cis d4 cis8 d4 cis8      | % 3
    a2 r4 d~      | % 4
    d8 c16 b c4~ c8 b4 a16 bes      | % 5
    c8 d e4 f e~      | % 6
    e8 d4 cis8 d4. c8      | % 7
    bes a4 b8 cis2      | % 8
    d4 c c bes~      | % 9
    bes a8 g a2\fermata       | % 10
    f'4 e8 d g bes a g 
    \bar "||"     | % 11
    f2 f4 f      | % 12
    e d8 e f cis d4~      | % 13
    d cis d c      | % 14
    c8 b c4~ c8 bes4 a16 g      | % 15
    c4 c c c8 cis      | % 16
    d4 a d d~      | % 17
    d8 c4 b8 c2      | % 18
    c8 bes a4 g4. bes8      | % 19
    a1      | % 20
    e'4 
    \bar "||"     | % 21
    d4 c c c8 d      | % 22
    e f4 e8 c4 e~      | % 23
    e8 d4 c8 c bes c4      | % 24
    d c8 g a b c bes      | % 25
    a16 g a8 d c c4 f8 e      | % 26
    d4~ d8 c16 bes a4~ a8 d16 c      | % 27
    b8 a4 gis8 cis2      | % 28
    d4 c bes8 a g16 a bes8~      | % 29
    bes a bes g a2\fermata  \bar "|." 
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
    d'8 c     b4 c8 d e f16 e d4      | % 1
    d2 a4 a      | % 2
    a a bes8 f g a16 g      | % 3
    f2 r4 a      | % 4
    e8 f g4~ g16 d e4 f16 g      | % 5
    a8 f bes4 c a      | % 6
    a g8 bes a4~ a16 g a8      | % 7
    g16 f g8 f16 e f8 e2      | % 8
    a8 g a fis g d g4~      | % 9
    g fis8 e fis2      | % 10
    d'4 c8 b c4 c 
    \bar "||"     | % 11
    c4. bes8 c4 c8 d      | % 12
    e a,4 g8 f g a4      | % 13
    a4. g8 f4 a      | % 14
    g8 f g4 g8. f16 e4      | % 15
    a g f a8 g      | % 16
    f e d e f g a4      | % 17
    a8 e f4 g2      | % 18
    a8 g4 fis8 g d g4~      | % 19
    g fis8 e fis2\fermata       | % 20
    a4 
    \bar "||"     | % 21
    a8 bes a g f4 f      | % 22
    c'4. bes8 a4 a      | % 23
    a g8 a d,4 a'8 f      | % 24
    d16 e f4 e8 fis gis a g      | % 25
    f16 e f4 e8 f4 c'~      | % 26
    c8 bes16 a g4~ g8 f16 e f8 bes16 a      | % 27
    gis8 a d d, a'2      | % 28
    f8 g a4~ a8 g16 fis g4~      | % 29
    g8 fis g e fis2 \bar "|." 
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
    d4     e8. d16 c8 b a4 bes8. c16      | % 1
    d2 cis4 d8 e      | % 2
    f4. f,8 g bes a4      | % 3
    d2 r4 d,      | % 4
    e4. f8 g gis a4~      | % 5
    a8 bes a g f4 cis'      | % 6
    d e f8 e d4~      | % 7
    d8 cis d4 a2      | % 8
    fis8 e fis d g a bes g      | % 9
    d'2 d,      | % 10
    d'8 e f4~ f8 e f g 
    \bar "||"     | % 11
    a8 f bes4 f f      | % 12
    cis d~ d8 e f g      | % 13
    a4 a, bes a      | % 14
    e8 d e f g4 a~      | % 15
    a8 g f e f4 f'8 e      | % 16
    d2~ d8 e f g      | % 17
    a a, d4 c2      | % 18
    fis,8 g c4. bes16 a bes8 g      | % 19
    d'2 d,      | % 20
    cis'4 
    \bar "||"     | % 21
    d4 e f a,8 bes      | % 22
    c4 c, f cis'      | % 23
    d8 d, e fis g4 a      | % 24
    b c~ c8 b a4~      | % 25
    a8 d bes c f4 f,      | % 26
    bes ees8 d cis4 d~      | % 27
    d8 c b4 a2      | % 28
    bes8 a g fis g a bes g      | % 29
    d1 \bar "|." 
}% end of last bar in partorvoice



\addQuote "articulations"   { \ASvoiceAA }
\book {
\layout { \scorepaper }
\score {
<<
\part ASvoiceAA { \ASvoiceAA } { \transpose c c \ASvoiceAA }
\part AAvoiceBA { \AAvoiceBA } { \transpose c c \AAvoiceBA }
\part ATvoiceCA { \ATvoiceCA } { \transpose c c \ATvoiceCA }
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
\part AAvoiceBA { \AAvoiceBA } { \transpose c c \AAvoiceBA }
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
\part ATvoiceCA { \ATvoiceCA } { \transpose c c \ATvoiceCA }
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
