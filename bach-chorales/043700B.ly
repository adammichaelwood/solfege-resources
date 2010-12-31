
% BWV 437 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 437"
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
    d2 a'4 g      | % 1
    a e f2      | % 2
    e\fermata  g      | % 3
    f4 e d cis      | % 4
    d2\fermata  a'4 a      | % 5
    d c b a8 b      | % 6
    c4 b a2\fermata       | % 7
    r4 b c a      | % 8
    a e f f      | % 9
    e2\fermata  d4 e      | % 10
    f g a g      | % 11
    f e d2\fermata       | % 12
    d'4 d e d      | % 13
    e cis d2      | % 14
    d\fermata  e4 b      | % 15
    c a a e      | % 16
    f2 e\fermata       | % 17
    a4 gis a b      | % 18
    c b a gis      | % 19
    a2\fermata  b4 cis      | % 20
    d2 a4 g      | % 21
    a e f2      | % 22
    e\fermata  g      | % 23
    f4 e d cis      | % 24
    d8 e f4 e2      | % 25
    d\fermata  f4 g      | % 26
    a b c b      | % 27
    a2\fermata  r4 g      | % 28
    f e d2\fermata       | % 29
    e f4 g      | % 30
    f g d cis      | % 31
    d1\fermata  \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    r4 a d8 f4 e16 d      | % 1
    e4. d16 cis d2~      | % 2
    d4 cis r d8 e~      | % 3
    e d4 cis8 d16 c bes8 a4      | % 4
    a2 f'8 e d4~      | % 5
    d8 e16 f e4 e4. d8      | % 6
    e f4 e16 d c2      | % 7
    r4 e8 f g e c d      | % 8
    e d e cis a b16 cis d4~      | % 9
    d8 cis16 b cis4 d4. cis8      | % 10
    a bes16 c d8 c c cis d e~      | % 11
    e d4 cis8 a2      | % 12
    b8 c d b c4 d8 g      | % 13
    g a bes g a fis g4~      | % 14
    g8 fis16 e fis4 e8 fis gis e      | % 15
    a4 cis, d4. cis8      | % 16
    d4. cis16 b cis2      | % 17
    e e4 f~      | % 18
    f8 fis g gis a a, b d~      | % 19
    d c16 b c4 g'8 f e g~      | % 20
    g f16 e f4 f4. e8~      | % 21
    e d4 cis8 d2      | % 22
    e e4 a,      | % 23
    d8 c bes c a bes g e'      | % 24
    d cis d2 cis4      | % 25
    a2 d4 c~      | % 26
    c f8 d e f g e      | % 27
    f2 r4 f8 e~      | % 28
    e d4 cis8 d2      | % 29
    cis8 d e4~ e8 d cis e      | % 30
    a, bes4 a8~ a b a4      | % 31
    a1 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    r4 f8 g a4 d8 g,~      | % 1
    g f16 e a4 a2      | % 2
    a r4 d,8 a'      | % 3
    a4 bes8 a16 g f8 g16 f e f g8~      | % 4
    g f16 e f4 d' a~      | % 5
    a8 gis a4 gis8 c4 b16 a      | % 6
    gis8 a4 gis8 a2      | % 7
    r4 g8 f e g a4      | % 8
    a4. g8 f8. g16 a4      | % 9
    a2 f8 g16 a bes8 a16 g      | % 10
    f4. e8 f e d bes'      | % 11
    cis, a' bes a16 g f2      | % 12
    g g8 a b g      | % 13
    c a e'4 d8 c4 bes8      | % 14
    a2 a4 e'8 d      | % 15
    c d e4 a,2      | % 16
    a4. gis8 a2      | % 17
    a8 b c d c b a gis      | % 18
    a4 e'~ e8 d e4      | % 19
    e2 g,4 a      | % 20
    a2 d4. c16 bes      | % 21
    a2~ a8 g a b      | % 22
    c2 cis8 d e4      | % 23
    a, g8 a fis g a4~      | % 24
    a8 g a4 bes a8 g~      | % 25
    g f16 e f4 bes8 a g c      | % 26
    a4 d8 b g4. c8      | % 27
    c2 r4 d8 a      | % 28
    a bes4 a16 g f2      | % 29
    a a8 bes4 a16 g      | % 30
    a8 g16 f g8 f16 e f4 e16 f g8~      | % 31
    g fis16 e fis2. \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    r4 d8 e f d bes'4      | % 1
    cis,4. b16 a d8 e f d      | % 2
    a2 r4 b8 cis      | % 3
    d f, g a bes g a4      | % 4
    d,2 d'8 e f d      | % 5
    b4 c8 d e c f4      | % 6
    e8 d e4 a,2      | % 7
    r4 e'8 d c e f4      | % 8
    cis8 b cis a d a f d      | % 9
    a'2 bes8 a g a      | % 10
    d c bes c f, g16 a bes8 a16 g      | % 11
    a8 f g a d,2      | % 12
    g8 a b g c4 g'8 b      | % 13
    e, f g e fis d g4      | % 14
    d2 c8 d e4~      | % 15
    e8 f g e f g a g      | % 16
    f e d4 a2      | % 17
    c8 d e b c4 d~      | % 18
    d8 dis e c f4 e      | % 19
    a,2 e'4 a,      | % 20
    d2 d8 c bes c      | % 21
    f, g a4 d,8 e f d      | % 22
    a'2 e'8 d cis e      | % 23
    d4~ d8 c c bes a g      | % 24
    f e d f g e a4      | % 25
    d,2 d'4 e      | % 26
    f8 e d g e d e c      | % 27
    f2 r4 b,8 cis      | % 28
    d bes g a bes2      | % 29
    a8 b cis a d4 e~      | % 30
    e8 d4 cis8 d gis, a4      | % 31
    d,1 \bar "|."\bar "|." 
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
