
% BWV 59 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 59"
composer = "Johann Sebastien Bach"
tagline = "Created by Michael Ellis from digital transcriptions by Margaret Greentree (jsbchorales.net)"
}
AvoiceAA = \relative c'{
    \set Staff.instrumentName = #"Violin 1"
    \set Staff.shortInstrumentName = #""
    \clef treble
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    d'4     e d8 c b c d4      | % 1
    a2\fermata  b4 cis      | % 2
    d2.\fermata  d4      | % 3
    e d a8 b c4      | % 4
    b a g2\fermata       | % 5
    r4 g a8 b c4      | % 6
    b8 c d2 a4      | % 7
    g fis e2      | % 8
    d2.\fermata  d4      | % 9
    g a b8 c d4~      | % 10
    d c b a      | % 11
    b2.\fermata  b8 c      | % 12
    d4 e d a      | % 13
    b cis d2\fermata       | % 14
    r4 d e d      | % 15
    a8 b c4 b a      | % 16
    g2.\fermata  g4      | % 17
    a8 b c4 b8 c d4~      | % 18
    d a g fis      | % 19
    e2 d\fermata       | % 20
    r4 d g a      | % 21
    b8 c d2 c4      | % 22
    b a e fis      | % 23
    g2.\fermata  a4      | % 24
    b8 a g fis e2      | % 25
    d2.\fermata  a'4      | % 26
    b2 a      | % 27
    g2.\fermata  s4 \bar "|." 
}% end of last bar in partorvoice

 

AvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Violin 2"
    \set Staff.shortInstrumentName = #""
    \clef treble
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    b'4     a a g g      | % 1
    fis2 g4 g      | % 2
    a2. g4      | % 3
    g g fis e8 fis      | % 4
    g4 fis d2      | % 5
    r4 d d e      | % 6
    d g2 fis4      | % 7
    b,8 cis d2 cis4      | % 8
    a2. d8 c      | % 9
    b cis d4 d g8 a      | % 10
    b4 a g8 fis e4      | % 11
    fis2. g8 a      | % 12
    b4 c d2~      | % 13
    d4 g, fis2      | % 14
    r4 g8 f e fis g4      | % 15
    fis g8 a b g d4      | % 16
    d2. d8 e      | % 17
    fis4 e8 fis g a b4      | % 18
    a8 g fis e d4 d      | % 19
    d cis a2      | % 20
    r4 b e fis      | % 21
    g8 a b4 e,4. fis8      | % 22
    g fis e fis g4 d      | % 23
    d2. fis4      | % 24
    g d~ d8 c16 b c4      | % 25
    b2. dis4      | % 26
    e8 fis g2 fis4      | % 27
    d2. s4 \bar "|." 
}% end of last bar in partorvoice

 

AvoiceCA = \relative c'{
    \set Staff.instrumentName = #"Viola"
    \set Staff.shortInstrumentName = #""
    \clef alto
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    g'4     g fis g d      | % 1
    d2 d4 e      | % 2
    fis2. d4      | % 3
    c d d c      | % 4
    d d b2      | % 5
    r4 b a g8 a      | % 6
    b4. c8 d e fis4      | % 7
    e d a2      | % 8
    fis2. b8 a      | % 9
    g4 fis8 e d4 b'      | % 10
    e e8 fis g4 a      | % 11
    dis,2. e4      | % 12
    fis8 gis a4~ a8 g fis e      | % 13
    d4 e a,2      | % 14
    r4 b8 a g a b4      | % 15
    a e' d8 e fis4      | % 16
    b,2. b4      | % 17
    a a b8 a g4      | % 18
    fis8 e fis4 g a      | % 19
    b a8 g fis2      | % 20
    r4 g8 a b c a4      | % 21
    d4. c8 b4 c      | % 22
    d c8 d e4 a,      | % 23
    b2. d4      | % 24
    d8 c b a g2      | % 25
    g2. a4      | % 26
    g8 a b g d'4 a      | % 27
    b2. s4 \bar "|." 
}% end of last bar in partorvoice

 

ASvoiceDA = \relative c'{
    \set Staff.instrumentName = #"Soprano"
    \set Staff.shortInstrumentName = #"S."
    \clef treble
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    d'4     e d8 c b c d4      | % 1
    a2\fermata  b4 cis      | % 2
    d2.\fermata  d4      | % 3
    e d a8 b c4      | % 4
    b a g2\fermata       | % 5
    r4 g a8 b c4      | % 6
    b8 c d2 a4      | % 7
    g fis e2      | % 8
    d2.\fermata  d4      | % 9
    g a b8 c d4~      | % 10
    d c b a      | % 11
    b2.\fermata  b8 c      | % 12
    d4 e d a      | % 13
    b cis d2\fermata       | % 14
    r4 d e d      | % 15
    a8 b c4 b a      | % 16
    g2.\fermata  g4      | % 17
    a8 b c4 b8 c d4~      | % 18
    d a g fis      | % 19
    e2 d\fermata       | % 20
    r4 d g a      | % 21
    b8 c d2 c4      | % 22
    b a e fis      | % 23
    g2.\fermata  a4      | % 24
    b8 a g fis e2      | % 25
    d2.\fermata  a'4      | % 26
    b2 a      | % 27
    g2.\fermata  s4 \bar "|." 
}% end of last bar in partorvoice

 

AAvoiceEA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    g'4     g fis g~ g      | % 1
    fis2 g4 g      | % 2
    fis2. g4      | % 3
    g g fis8 g a4      | % 4
    g fis d2      | % 5
    r4 d d g~      | % 6
    g4. fis8 g4 fis      | % 7
    e d2 cis4      | % 8
    d2. d4      | % 9
    e fis g8 a b4~      | % 10
    b a g8 fis e4      | % 11
    dis2. e4      | % 12
    fis8 gis a4 a8 g fis e      | % 13
    d4 e fis2      | % 14
    r4 g g g      | % 15
    fis e d d      | % 16
    d2. d4      | % 17
    d c8 d e4 d8 e      | % 18
    fis g fis e d4 d      | % 19
    d cis d2      | % 20
    r4 d e fis      | % 21
    g4. a8 b4 a      | % 22
    g8 fis e4 e d      | % 23
    d2. fis4      | % 24
    g d~ d8 c16 b c4      | % 25
    b2. dis4      | % 26
    e8 fis g2 fis4      | % 27
    d2. s4 \bar "|." 
}% end of last bar in partorvoice

 

ATvoiceFA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    b'4     c8 b a4 e' d      | % 1
    d2 d4 e      | % 2
    a,2. b4      | % 3
    c d d e8 d16 c      | % 4
    d4 d8 c b2      | % 5
    r4 b a e'      | % 6
    d8 c b a g4 d'8 c      | % 7
    b a16 g a4 a2      | % 8
    fis2. fis4      | % 9
    g d' d8 c b a      | % 10
    gis fis e4 dis e      | % 11
    fis2. g4      | % 12
    d' c8 b a4 d8 c      | % 13
    b a g4 a2      | % 14
    r4 b c d      | % 15
    d g, g fis      | % 16
    b2. b4      | % 17
    fis8 g a4 g g      | % 18
    d' d, g a      | % 19
    b a8 g fis2      | % 20
    r4 b b8 g d'4      | % 21
    d8 c b4 e e,8 fis      | % 22
    g4 a bes8 a a4      | % 23
    b2. d4      | % 24
    d8 c b a g2      | % 25
    g2. a4      | % 26
    g8 a b g d'4 a      | % 27
    b2. s4 \bar "|." 
}% end of last bar in partorvoice

 

ABvoiceGA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    g'4     c, d e b8 c      | % 1
    d2 g4 e      | % 2
    d2. g4      | % 3
    c, b8 c d4 a      | % 4
    b8 c d4 g,2      | % 5
    r4 g' fis e8 fis      | % 6
    g4 g,8 a b c d4      | % 7
    e fis8 g a4 a,      | % 8
    d2. b4      | % 9
    e d g4. f8      | % 10
    e4 a, b c      | % 11
    b2. e4      | % 12
    b' a8 g fis e d4      | % 13
    g8 fis e4 d2      | % 14
    r4 g c, b8 c      | % 15
    d4 e8 fis g c, d4      | % 16
    g,2. g4      | % 17
    d' a e' b8 c      | % 18
    d e d cis b a g fis      | % 19
    g4 a d2      | % 20
    r4 g8 fis e4 d8 c      | % 21
    b a g fis gis4 a      | % 22
    b c cis d      | % 23
    g,2. d'4      | % 24
    g,8 a b4 c8 d e fis      | % 25
    g2. fis4      | % 26
    e b8 c d2      | % 27
    g,2. s4 \bar "|." 
}% end of last bar in partorvoice



\addQuote "articulations"   { \AvoiceAA }
\book {
\layout { \scorepaper }
\score {
<<
\part AvoiceAA { \AvoiceAA } { \transpose g c \AvoiceAA }
\part AvoiceBA { \quotearticulations \AvoiceBA \AvoiceAA } { \transpose g c \AvoiceBA }
\part AvoiceCA { \quotearticulations \AvoiceCA \AvoiceAA } { \transpose g c \AvoiceCA }
\part ASvoiceDA { \ASvoiceDA } { \transpose g c \ASvoiceDA }
\part AAvoiceEA { \quotearticulations \AAvoiceEA \AvoiceAA } { \transpose g c \AAvoiceEA }
\part ATvoiceFA { \quotearticulations \ATvoiceFA \AvoiceAA } { \transpose g c \ATvoiceFA }
\part ABvoiceGA { \quotearticulations \ABvoiceGA \AvoiceAA } { \transpose g c \ABvoiceGA }
>>
}
\score {
<<
\new Voice = AvoiceAA \AvoiceAA
\new Voice = AvoiceBA \AvoiceBA
\new Voice = AvoiceCA \AvoiceCA
\new Voice = ASvoiceDA \ASvoiceDA
\new Voice = AAvoiceEA \AAvoiceEA
\new Voice = ATvoiceFA \ATvoiceFA
\new Voice = ABvoiceGA \ABvoiceGA
>>

        \midi   { 
        \context { \Staff  \remove "Staff_performer" }
        \context { \Voice  \consists "Staff_performer" }
        } 
   }
} %%end of book

#(define output-suffix "Violi")
\book {
\layout { \partpaper }
\score {
<<
\part AvoiceAA { \AvoiceAA } { \transpose g c \AvoiceAA }
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
#(define output-suffix "Violi")
\book {
\layout { \partpaper }
\score {
<<
\part AvoiceBA { \quotearticulations \AvoiceBA \AvoiceAA } { \transpose g c \AvoiceBA }
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
#(define output-suffix "Viola")
\book {
\layout { \partpaper }
\score {
<<
\part AvoiceCA { \quotearticulations \AvoiceCA \AvoiceAA } { \transpose g c \AvoiceCA }
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
#(define output-suffix "Soprano")
\book {
\layout { \partpaper }
\score {
<<
\part ASvoiceDA { \ASvoiceDA } { \transpose g c \ASvoiceDA }
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
\part AAvoiceEA { \quotearticulations \AAvoiceEA \AvoiceAA } { \transpose g c \AAvoiceEA }
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
\part ATvoiceFA { \quotearticulations \ATvoiceFA \AvoiceAA } { \transpose g c \ATvoiceFA }
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
\part ABvoiceGA { \quotearticulations \ABvoiceGA \AvoiceAA } { \transpose g c \ABvoiceGA }
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
