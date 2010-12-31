
% BWV 69 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 69"
composer = "Johann Sebastien Bach"
tagline = "Created by Michael Ellis from digital transcriptions by Margaret Greentree (jsbchorales.net)"
}
AvoiceAA = \relative c'{
    \set Staff.instrumentName = #"Trumpet 1"
    \set Staff.shortInstrumentName = #""
    \clef treble
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    r4     R1  | % 
    r4 a''2 gis4      | % 2
    a2\fermata  r      | % 3
    R1  | % 
    r4 d2 cis4      | % 5
    d2. r4      | % 6
    R1  | % 
    r4 a2 gis4      | % 8
    a2\fermata  r      | % 9
    R1  | % 
    r4 d2 cis4      | % 11
    d2. a4      | % 12
    a1~      | % 13
    a8 d4 cis8 d4\fermata  cis8 b      | % 14
    a2~ a8 g fis e      | % 15
    fis16 gis a4 gis8 a4\fermata  a,8 a16 a      | % 16
    a8 a16 a a8 a16 a a4 r      | % 17
    r cis' d\fermata  r      | % 18
    r2 r4 fis,,8 fis16 fis      | % 19
    fis8 fis16 fis fis8 fis16 fis fis4\fermata  r      | % 20
    r2 r4 a'~      | % 21
    a8 g fis e16 d e4 cis'      | % 22
    d2.\fermata  s4 \bar "|." 
}% end of last bar in partorvoice

 

AvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Trumpet 2"
    \set Staff.shortInstrumentName = #""
    \clef treble
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    r4     R1  | % 
    r4 fis' e d      | % 2
    e2 r      | % 3
    R1  | % 
    r4 d8 e fis g a4      | % 5
    a2. r4      | % 6
    R1  | % 
    r4 fis e d      | % 8
    e2 r      | % 9
    R1  | % 
    r4 d8 e fis g a4      | % 11
    a2. d,4      | % 12
    e fis g fis8 g      | % 13
    a4 g fis a8 g      | % 14
    fis4 e d4. a8      | % 15
    d16 e fis8 e4 e a,8 a16 a      | % 16
    a8 a16 a a8 a16 a a4 r      | % 17
    r e' fis r      | % 18
    r2 r4 fis,8 fis16 fis      | % 19
    fis8 fis16 fis fis8 fis16 fis fis4 r      | % 20
    r2 r4 fis'8 e      | % 21
    d4 a'4. g16 fis e4      | % 22
    fis2. s4 \bar "|." 
}% end of last bar in partorvoice

 

AvoiceCA = \relative c'{
    \set Staff.instrumentName = #"Trumpet 3"
    \set Staff.shortInstrumentName = #""
    \clef treble
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    r4     R1  | % 
    r4 d' a d,      | % 2
    a'2 r      | % 3
    R1  | % 
    r4 fis a e'      | % 5
    fis2. r4      | % 6
    R1  | % 
    r4 d a d,      | % 8
    a'2 r      | % 9
    R1  | % 
    r4 fis a e'      | % 11
    fis2. fis,4      | % 12
    a d e d8 a      | % 13
    d,4 a' a e'      | % 14
    fis8 d g e a a, r4      | % 15
    r2 a4 a8 a16 a      | % 16
    a8 a16 a a8 a16 a a4 r      | % 17
    r a a r      | % 18
    r2 r4 fis8 fis16 fis      | % 19
    fis8 fis16 fis fis8 fis16 fis fis4 r      | % 20
    r2 r4 d'8 a      | % 21
    fis4 r8 d'16 d d8 d16 d a8 a      | % 22
    a2. s4 \bar "|." 
}% end of last bar in partorvoice

 

AvoiceDA = \relative c{
    \set Staff.instrumentName = #"Timpani"
    \set Staff.shortInstrumentName = #""
    \clef bass
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    r4     R1  | % 
    r4 d a d      | % 2
    a2 r      | % 3
    R1  | % 
    r4 d a a      | % 5
    d2. r4      | % 6
    R1  | % 
    r4 d a d      | % 8
    a2 r      | % 9
    R1  | % 
    r4 d a a      | % 11
    d2. d4      | % 12
    a d a d      | % 13
    d a d a      | % 14
    d a d r      | % 15
    r2 a4 d8 d16 d      | % 16
    a8 a16 a a8 a16 a a4 r      | % 17
    r a d r      | % 18
    R1 *2  | % 
    r2 r4 d8 a      | % 21
    d4 r8 d a a16 a a8 a      | % 22
    d2. s4 \bar "|." 
}% end of last bar in partorvoice

 

ASvoiceEA = \relative c'{
    \set Staff.instrumentName = #"Soprano"
    \set Staff.shortInstrumentName = #"S."
    \clef treble
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    cis'4     d cis b cis8 d      | % 1
    e4 fis e d      | % 2
    cis2\fermata  r4 e      | % 3
    d cis d b      | % 4
    a fis8 g a4 g      | % 5
    fis2. cis'4      | % 6
    d cis b cis8 d      | % 7
    e4 fis e d      | % 8
    cis2\fermata  r4 e      | % 9
    d cis d b      | % 10
    a fis8 g a4 g      | % 11
    fis2. a4      | % 12
    g fis e fis      | % 13
    d e fis\fermata  cis'      | % 14
    d cis8 b a4 b8 cis      | % 15
    d4 e cis\fermata  fis      | % 16
    e cis8 d e4 b      | % 17
    a g fis\fermata  e      | % 18
    a b cis8 d e4      | % 19
    d cis b\fermata  d      | % 20
    cis b a fis8 g      | % 21
    a2 g      | % 22
    fis2.\fermata  s4 \bar "|." 
}% end of last bar in partorvoice

 

AAvoiceFA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    fis4     fis fis8 e d4 a'      | % 1
    g fis8 gis a4 b      | % 2
    e,2 r4 fis      | % 3
    fis e fis d8 e      | % 4
    fis2. e4      | % 5
    d2. e4      | % 6
    fis fis8 e d4 a'      | % 7
    g fis8 gis a4 b      | % 8
    e,2 r4 fis      | % 9
    fis e fis d8 e      | % 10
    fis2. e4      | % 11
    d2. fis4      | % 12
    e d d8 cis d4      | % 13
    d g, a a'      | % 14
    a g fis fis      | % 15
    fis8 b b4 a a      | % 16
    a a e8 fis g fis      | % 17
    e d e4 d cis      | % 18
    cis8 a' gis fis e fis g4      | % 19
    fis8 b4 ais8 fis4 b      | % 20
    b8 a a g g fis16 e d4~      | % 21
    d8 e fis4 e2      | % 22
    d2. s4 \bar "|." 
}% end of last bar in partorvoice

 

ATvoiceGA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef "treble_8"
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    ais'4     b ais b a8 b      | % 1
    cis4 d e8 fis gis4      | % 2
    cis,2 r4 cis      | % 3
    b8 a g4 a b8 cis      | % 4
    d2. a4      | % 5
    a2. ais4      | % 6
    b ais b a8 b      | % 7
    cis4 d e8 fis gis4      | % 8
    cis,2 r4 cis      | % 9
    b8 a g4 a b8 cis      | % 10
    d2. a4      | % 11
    a2. a4      | % 12
    a a a a      | % 13
    a b8 cis fis,4 e'      | % 14
    d g, d'8 e fis4      | % 15
    fis8 d b e e4 d      | % 16
    cis8 fis e d cis4 b      | % 17
    e, a a a      | % 18
    a e'8 d e d cis4      | % 19
    cis8 b cis e d4 e      | % 20
    e d e8 a, a4      | % 21
    d2. cis4      | % 22
    a2. s4 \bar "|." 
}% end of last bar in partorvoice

 

ABvoiceHA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    fis4     b, fis' g fis      | % 1
    e d cis b      | % 2
    a2 r4 ais      | % 3
    b e d g      | % 4
    fis b a a,      | % 5
    d2. cis4      | % 6
    b fis' g fis      | % 7
    e d cis b      | % 8
    a2 r4 ais      | % 9
    b e d g      | % 10
    fis b a a,      | % 11
    d2. d4      | % 12
    d8 cis d4 a d8 e      | % 13
    fis4 e d cis      | % 14
    d e fis8 e d cis      | % 15
    b4 e a, d      | % 16
    a' a,8 b cis d e d      | % 17
    cis b cis a d4 a'8 gis      | % 18
    fis4 e8 fis g4 ais,      | % 19
    b fis b gis      | % 20
    a b cis d8 e      | % 21
    fis g a2 a,4      | % 22
    d2. s4 \bar "|." 
}% end of last bar in partorvoice



\addQuote "articulations"   { \AvoiceAA }
\book {
\layout { \scorepaper }
\score {
<<
\part AvoiceAA { \AvoiceAA } { \transpose d c \AvoiceAA }
\part AvoiceBA { \quotearticulations \AvoiceBA \AvoiceAA } { \transpose d c \AvoiceBA }
\part AvoiceCA { \quotearticulations \AvoiceCA \AvoiceAA } { \transpose d c \AvoiceCA }
\part AvoiceDA { \quotearticulations \AvoiceDA \AvoiceAA } { \transpose d c \AvoiceDA }
\part ASvoiceEA { \ASvoiceEA } { \transpose d c \ASvoiceEA }
\part AAvoiceFA { \quotearticulations \AAvoiceFA \AvoiceAA } { \transpose d c \AAvoiceFA }
\part ATvoiceGA { \quotearticulations \ATvoiceGA \AvoiceAA } { \transpose d c \ATvoiceGA }
\part ABvoiceHA { \quotearticulations \ABvoiceHA \AvoiceAA } { \transpose d c \ABvoiceHA }
>>
}
\score {
<<
\new Voice = AvoiceAA \AvoiceAA
\new Voice = AvoiceBA \AvoiceBA
\new Voice = AvoiceCA \AvoiceCA
\new Voice = AvoiceDA \AvoiceDA
\new Voice = ASvoiceEA \ASvoiceEA
\new Voice = AAvoiceFA \AAvoiceFA
\new Voice = ATvoiceGA \ATvoiceGA
\new Voice = ABvoiceHA \ABvoiceHA
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
\part AvoiceAA { \AvoiceAA } { \transpose d c \AvoiceAA }
>>
}
\score {
<<
\new Voice = AvoiceAA \AvoiceAA
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
\part AvoiceBA { \quotearticulations \AvoiceBA \AvoiceAA } { \transpose d c \AvoiceBA }
>>
}
\score {
<<
\new Voice = AvoiceBA \AvoiceBA
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
\part AvoiceCA { \quotearticulations \AvoiceCA \AvoiceAA } { \transpose d c \AvoiceCA }
>>
}
\score {
<<
\new Voice = AvoiceCA \AvoiceCA
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
\part AvoiceDA { \quotearticulations \AvoiceDA \AvoiceAA } { \transpose d c \AvoiceDA }
>>
}
\score {
<<
\new Voice = AvoiceDA \AvoiceDA
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
\part ASvoiceEA { \ASvoiceEA } { \transpose d c \ASvoiceEA }
>>
}
\score {
<<
\new Voice = ASvoiceEA \ASvoiceEA
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
\part AAvoiceFA { \quotearticulations \AAvoiceFA \AvoiceAA } { \transpose d c \AAvoiceFA }
>>
}
\score {
<<
\new Voice = AAvoiceFA \AAvoiceFA
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
\part ATvoiceGA { \quotearticulations \ATvoiceGA \AvoiceAA } { \transpose d c \ATvoiceGA }
>>
}
\score {
<<
\new Voice = ATvoiceGA \ATvoiceGA
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
\part ABvoiceHA { \quotearticulations \ABvoiceHA \AvoiceAA } { \transpose d c \ABvoiceHA }
>>
}
\score {
<<
\new Voice = ABvoiceHA \ABvoiceHA
>>

        \midi   { 
        \context { \Staff  \remove "Staff_performer" }
        \context { \Voice  \consists "Staff_performer" }
        } 
   }
} %%end of book
