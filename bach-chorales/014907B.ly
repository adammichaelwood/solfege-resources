
% BWV 149 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 149"
composer = "Johann Sebastien Bach"
tagline = "Created by Michael Ellis from digital transcriptions by Margaret Greentree (jsbchorales.net)"
}
ATrvoiceAA = \relative c'{
    \set Staff.instrumentName = #"Trumpet 1"
    \set Staff.shortInstrumentName = #"Tr 1"
    \clef treble
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    r4     R1 *24  | % 
    r2 r8 g''16 f g a g f      | % 25
    e1\fermata  \bar "|." 
}% end of last bar in partorvoice

 

ATrvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Trumpet 2"
    \set Staff.shortInstrumentName = #"Tr 2"
    \clef treble
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    r4     R1 *24  | % 
    r2 r8 d'16 d d f e d      | % 25
    c1 \bar "|." 
}% end of last bar in partorvoice

 

ATrvoiceCA = \relative c'{
    \set Staff.instrumentName = #"Trumpet 3"
    \set Staff.shortInstrumentName = #"Tr 3"
    \clef treble
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    r4     R1 *24  | % 
    r2 r8 g'16 g g8 g      | % 25
    g1 \bar "|." 
}% end of last bar in partorvoice

 

ASvoiceDA = \relative c'{
    \set Staff.instrumentName = #"Soprano"
    \set Staff.shortInstrumentName = #"S."
    \clef treble
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    c'4     b a g8 fis e4      | % 1
    a a g\fermata  c      | % 2
    b a g8 fis e4      | % 3
    a a g\fermata  g      | % 4
    a b c8 d e4      | % 5
    d2 c4\fermata  c      | % 6
    b a g8 fis e4      | % 7
    a a g\fermata  c      | % 8
    b a g8 fis e4      | % 9
    a a g\fermata  g      | % 10
    a b c8 d e4      | % 11
    d2 c4\fermata  c      | % 12
    c d c8 b a b      | % 13
    c4 c b\fermata  b      | % 14
    c d c8 b a b      | % 15
    c4 c b\fermata  e      | % 16
    f8 e d4 e8 d c4      | % 17
    c b c\fermata  b      | % 18
    c b a g      | % 19
    g fis g\fermata  e'      | % 20
    d c b\fermata  e      | % 21
    f8 e d4 e8 d c4      | % 22
    c b c\fermata  c      | % 23
    c c d c      | % 24
    c2. b4      | % 25
    c1\fermata  \bar "|." 
}% end of last bar in partorvoice

 

AAvoiceEA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    e4     d8 e f4 e8 d c4      | % 1
    c f e fis      | % 2
    g dis e b      | % 3
    e4. dis8 e4 e      | % 4
    e8 d c b a4 a'      | % 5
    a g8 f e4 e      | % 6
    d8 e f4 e8 d c4      | % 7
    c f e fis      | % 8
    g dis e b      | % 9
    e4. dis8 e4 e      | % 10
    e8 d c b a4 a'      | % 11
    a g8 f e4 e      | % 12
    f f e8 d c b      | % 13
    a4 fis' g g      | % 14
    g8 f e d e4 f      | % 15
    g a8 d, d4 e8 d      | % 16
    c4 g'8 f e4 a      | % 17
    a g g g      | % 18
    a g fis e      | % 19
    e d d e8 fis      | % 20
    g fis e fis gis4 a8 g      | % 21
    f4 g8 f e f g4      | % 22
    g g g e8 fis      | % 23
    g4 f8 e f4 e      | % 24
    a d, d2      | % 25
    e1 \bar "|." 
}% end of last bar in partorvoice

 

ATvoiceFA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef "treble_8"
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    g'8 a     b c d c b4 c8 b      | % 1
    a b c4 c c      | % 2
    d8 e fis4 b,8 a g4      | % 3
    g8 fis16 e c'8 b b4 c8 b      | % 4
    a4 e' e8 d c4      | % 5
    c b g g8 a      | % 6
    b c d c b4 c8 b      | % 7
    a b c4 c c      | % 8
    d8 e fis4 b,8 a g4      | % 9
    g8 fis16 e c'8 b b4 c8 b      | % 10
    a4 e' e8 d c4      | % 11
    c b g g      | % 12
    a a8 b c d e4      | % 13
    d8 c d4 d d      | % 14
    g, g g d'      | % 15
    c8 b a4 g b      | % 16
    a d c8 d e4      | % 17
    d d e d      | % 18
    d d8 c c b b4      | % 19
    b8 a a4 b g8 a      | % 20
    b4 c8 d e4 e      | % 21
    a, b c c8 d      | % 22
    e c d4 e c      | % 23
    c8 bes a4 a8 g g4      | % 24
    fis8 g a4 g2      | % 25
    g1 \bar "|." 
}% end of last bar in partorvoice

 

ABvoiceGA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    c4     g' d e a8 g      | % 1
    f g a b c4 a      | % 2
    g fis e4. d8      | % 3
    c a fis b e4 e      | % 4
    fis gis a4. g8      | % 5
    f d g4 c, c      | % 6
    g' d e a8 g      | % 7
    f g a b c4 a      | % 8
    g fis e4. d8      | % 9
    c a fis b e4 e      | % 10
    fis gis a4. g8      | % 11
    f d g4 c, c      | % 12
    f8 e d4 a'4. g8      | % 13
    fis e d4 g g8 f      | % 14
    e d c b c4 d      | % 15
    e fis g gis      | % 16
    a b c8 b a g      | % 17
    f d g4 c, g'      | % 18
    g8 fis fis e e dis e d      | % 19
    d cis d4 g, c      | % 20
    g' a e cis      | % 21
    d g c,8 d e f      | % 22
    g4 g, c a'      | % 23
    e f b, c8 b      | % 24
    a g fis4 g g      | % 25
    c1 \bar "|." 
}% end of last bar in partorvoice

 

ATimpvoiceHA = \relative c{
    \set Staff.instrumentName = #"Timpani"
    \set Staff.shortInstrumentName = #"Timp"
    \clef bass
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    r4     R1 *24  | % 
    r2 r8 g16 g g g g g      | % 25
    c1 \bar "|." 
}% end of last bar in partorvoice



\addQuote "articulations"   { \ATrvoiceAA }
\book {
\layout { \scorepaper }
\score {
<<
\part ATrvoiceAA { \ATrvoiceAA } { \transpose c c \ATrvoiceAA }
\part ATrvoiceBA { \quotearticulations \ATrvoiceBA \ATrvoiceAA } { \transpose c c \ATrvoiceBA }
\part ATrvoiceCA { \quotearticulations \ATrvoiceCA \ATrvoiceAA } { \transpose c c \ATrvoiceCA }
\part ASvoiceDA { \ASvoiceDA } { \transpose c c \ASvoiceDA }
\part AAvoiceEA { \quotearticulations \AAvoiceEA \ATrvoiceAA } { \transpose c c \AAvoiceEA }
\part ATvoiceFA { \quotearticulations \ATvoiceFA \ATrvoiceAA } { \transpose c c \ATvoiceFA }
\part ABvoiceGA { \quotearticulations \ABvoiceGA \ATrvoiceAA } { \transpose c c \ABvoiceGA }
\part ATimpvoiceHA { \quotearticulations \ATimpvoiceHA \ATrvoiceAA } { \transpose c c \ATimpvoiceHA }
>>
}
\score {
<<
\new Voice = ATrvoiceAA \ATrvoiceAA
\new Voice = ATrvoiceBA \ATrvoiceBA
\new Voice = ATrvoiceCA \ATrvoiceCA
\new Voice = ASvoiceDA \ASvoiceDA
\new Voice = AAvoiceEA \AAvoiceEA
\new Voice = ATvoiceFA \ATvoiceFA
\new Voice = ABvoiceGA \ABvoiceGA
\new Voice = ATimpvoiceHA \ATimpvoiceHA
>>

        \midi   { 
        \context { \Staff  \remove "Staff_performer" }
        \context { \Voice  \consists "Staff_performer" }
        } 
   }
} %%end of book

#(define output-suffix "Trumpe")
\book {
\layout { \partpaper }
\score {
<<
\part ATrvoiceAA { \ATrvoiceAA } { \transpose c c \ATrvoiceAA }
>>
}
\score {
<<
\new Voice = ATrvoiceAA \ATrvoiceAA
>>

        \midi   { 
        \context { \Staff  \remove "Staff_performer" }
        \context { \Voice  \consists "Staff_performer" }
        } 
   }
} %%end of book
#(define output-suffix "Trumpe")
\book {
\layout { \partpaper }
\score {
<<
\part ATrvoiceBA { \quotearticulations \ATrvoiceBA \ATrvoiceAA } { \transpose c c \ATrvoiceBA }
>>
}
\score {
<<
\new Voice = ATrvoiceBA \ATrvoiceBA
>>

        \midi   { 
        \context { \Staff  \remove "Staff_performer" }
        \context { \Voice  \consists "Staff_performer" }
        } 
   }
} %%end of book
#(define output-suffix "Trumpe")
\book {
\layout { \partpaper }
\score {
<<
\part ATrvoiceCA { \quotearticulations \ATrvoiceCA \ATrvoiceAA } { \transpose c c \ATrvoiceCA }
>>
}
\score {
<<
\new Voice = ATrvoiceCA \ATrvoiceCA
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
\part ASvoiceDA { \ASvoiceDA } { \transpose c c \ASvoiceDA }
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
\part AAvoiceEA { \quotearticulations \AAvoiceEA \ATrvoiceAA } { \transpose c c \AAvoiceEA }
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
\part ATvoiceFA { \quotearticulations \ATvoiceFA \ATrvoiceAA } { \transpose c c \ATvoiceFA }
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
\part ABvoiceGA { \quotearticulations \ABvoiceGA \ATrvoiceAA } { \transpose c c \ABvoiceGA }
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
#(define output-suffix "Timpani")
\book {
\layout { \partpaper }
\score {
<<
\part ATimpvoiceHA { \quotearticulations \ATimpvoiceHA \ATrvoiceAA } { \transpose c c \ATimpvoiceHA }
>>
}
\score {
<<
\new Voice = ATimpvoiceHA \ATimpvoiceHA
>>

        \midi   { 
        \context { \Staff  \remove "Staff_performer" }
        \context { \Voice  \consists "Staff_performer" }
        } 
   }
} %%end of book
