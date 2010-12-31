
% BWV 407 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 407"
composer = "Johann Sebastien Bach"
tagline = "Created by Michael Ellis from digital transcriptions by Margaret Greentree (jsbchorales.net)"
}
ASvoiceAA = \relative c'{
    \set Staff.instrumentName = #"Soprano"
    \set Staff.shortInstrumentName = #"S."
    \clef treble
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 4/4 
    a'4 a a a      | % 1
    b2 a\fermata       | % 2
    g4 fis e e      | % 3
    d1\fermata       | % 4
    a'4 a a a      | % 5
    b2 g\fermata       | % 6
    b4 b c b      | % 7
    a1\fermata       | % 8
    a4 a a a      | % 9
    d2 a4\fermata  a      | % 10
    b b a a      | % 11
    g1\fermata       | % 12
    a4 a a a      | % 13
    a2 fis\fermata       | % 14
    g4 fis e4. d8      | % 15
    d1\fermata       | % 16
    a'2 b      | % 17
    c1      | % 18
    a2 gis      | % 19
    a1\fermata       | % 20
    d2. e4      | % 21
    a,2 b      | % 22
    cis1      | % 23
    a2. gis4      | % 24
    a1      | % 25
    a4. g8 fis4 g      | % 26
    e2 d\fermata  \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 4/4 
    fis4 g fis8 g a4~      | % 1
    a8 g16 fis g4~ g fis      | % 2
    e4. d8~ d cis16 b cis4      | % 3
    a1      | % 4
    d4 cis8 d e cis d e      | % 5
    fis g fis4 e2      | % 6
    g4 gis a4. gis8      | % 7
    e1      | % 8
    fis4 fis8 e fis g a4~      | % 9
    a g fis fis      | % 10
    e8 dis e4 e d8 c      | % 11
    b1      | % 12
    e8 cis d e fis4 fis      | % 13
    e8 g fis e e dis16 cis dis4      | % 14
    e4. d8 d cis16 b cis4      | % 15
    a1      | % 16
    fis'2 f4 e      | % 17
    e f8 g a4 g~      | % 18
    g f e2      | % 19
    e1      | % 20
    b'2. a8 g      | % 21
    fis2~ fis8 gis a4      | % 22
    gis2. cis,4~      | % 23
    cis d8 e fis4 e8 d      | % 24
    e1      | % 25
    cis8 d e4~ e8 d d4~      | % 26
    d8 cis16 b cis4 a2 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef "treble_8"
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 4/4 
    d'4 e e d      | % 1
    d2 d      | % 2
    d8 cis16 b a4 b a8 g      | % 3
    fis1      | % 4
    fis4 e a8 g fis4~      | % 5
    fis8 e b'4 b2      | % 6
    e4 e e8 a, f' e      | % 7
    cis1      | % 8
    d4 d8 cis d e fis e      | % 9
    d c d4 d d8 c      | % 10
    b a g4. fis16 e fis4      | % 11
    g1      | % 12
    e8 g fis e d a' d4      | % 13
    d8 cis c4 b2      | % 14
    b4 b b8 g e a      | % 15
    fis1      | % 16
    a4 d2 c8 b      | % 17
    a4 g f e      | % 18
    d d'2 c8 b      | % 19
    cis1      | % 20
    fis,4 e8 fis g4 e      | % 21
    fis8 gis a2 fis4      | % 22
    cis' b8 a gis fis gis4      | % 23
    a b8 cis d2~      | % 24
    d4 d cis b      | % 25
    a2~ a16 b c4 b16 a      | % 26
    b8 e,4 fis16 g fis2 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 4/4 
    d4. cis8 d e fis d      | % 1
    g4 g, d'2      | % 2
    e4 fis g a8 a,      | % 3
    d1      | % 4
    d4 a8 b cis a d cis      | % 5
    dis e4 dis8 e2      | % 6
    e8 d c b a f d e      | % 7
    a1      | % 8
    d8 e fis g fis e d c      | % 9
    b a b cis d4 d      | % 10
    g8 fis e d c cis d dis      | % 11
    e1      | % 12
    cis8 a b cis d e fis g      | % 13
    a4 a, b2      | % 14
    e,8 g b a g e a4      | % 15
    d,1      | % 16
    d'2 gis,      | % 17
    a2. b8 c      | % 18
    d4 b e2      | % 19
    a,1      | % 20
    b2. cis4      | % 21
    d2 dis      | % 22
    e eis      | % 23
    fis b,      | % 24
    a1      | % 25
    fis'4 cis d g,      | % 26
    gis a d,2 \bar "|."\bar "|." 
}% end of last bar in partorvoice



\addQuote "articulations"   { \ASvoiceAA }
\book {
\layout { \scorepaper }
\score {
<<
\part ASvoiceAA { \ASvoiceAA } { \transpose d c \ASvoiceAA }
\part AAvoiceBA { \quotearticulations \AAvoiceBA \ASvoiceAA } { \transpose d c \AAvoiceBA }
\part ATvoiceCA { \quotearticulations \ATvoiceCA \ASvoiceAA } { \transpose d c \ATvoiceCA }
\part ABvoiceDA { \quotearticulations \ABvoiceDA \ASvoiceAA } { \transpose d c \ABvoiceDA }
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
\part ASvoiceAA { \ASvoiceAA } { \transpose d c \ASvoiceAA }
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
\part AAvoiceBA { \quotearticulations \AAvoiceBA \ASvoiceAA } { \transpose d c \AAvoiceBA }
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
\part ATvoiceCA { \quotearticulations \ATvoiceCA \ASvoiceAA } { \transpose d c \ATvoiceCA }
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
\part ABvoiceDA { \quotearticulations \ABvoiceDA \ASvoiceAA } { \transpose d c \ABvoiceDA }
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
