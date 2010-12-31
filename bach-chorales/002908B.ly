
% BWV 29 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 29"
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
    \time 3/4 
    \partial 4
    r4     R2.  | % 
    r4 r a''      | % 2
    d, g8 fis e g      | % 3
    fis2\fermata  r4      | % 4
    R2.  | % 
    r4 r a      | % 6
    d, g8 fis e g      | % 7
    fis2\fermata  r4      | % 8
    R2.  | % 
    r4 r a      | % 10
    d, g8 fis e g      | % 11
    fis2\fermata  r4      | % 12
    R2.  | % 
    r4 r a      | % 14
    d, g8 fis e g      | % 15
    fis2\fermata  r4      | % 16
    R2. *22  | % 
    r4 r a~      | % 39
    a8 g fis e fis gis      | % 40
    a2\fermata  r4      | % 41
    r r a      | % 42
    d, b'8 a g a      | % 43
    fis2\fermata  s4 \bar "|." 
}% end of last bar in partorvoice

 

AvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Trumpet 2"
    \set Staff.shortInstrumentName = #""
    \clef treble
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 3/4 
    \partial 4
    r4     R2.  | % 
    r4 r fis'      | % 2
    fis e2\prall       | % 3
    d r4      | % 4
    R2.  | % 
    r4 r e      | % 6
    a e2\prall       | % 7
    d r4      | % 8
    R2.  | % 
    r4 r fis      | % 10
    fis e2\prall       | % 11
    d r4      | % 12
    R2.  | % 
    r4 r e      | % 14
    a e2\prall       | % 15
    d r4      | % 16
    R2. *22  | % 
    r4 r fis      | % 39
    e d2\prall       | % 40
    e r4      | % 41
    r r e      | % 42
    fis8 g e2      | % 43
    d s4 \bar "|." 
}% end of last bar in partorvoice

 

AvoiceCA = \relative c'{
    \set Staff.instrumentName = #"Trumpet 3"
    \set Staff.shortInstrumentName = #""
    \clef treble
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 3/4 
    \partial 4
    r4     R2.  | % 
    r4 r fis8 a      | % 2
    d4 d, a'      | % 3
    a2 r4      | % 4
    R2.  | % 
    r4 r a      | % 6
    a r a      | % 7
    a2 r4      | % 8
    R2.  | % 
    r4 r fis8 a      | % 10
    d4 d, a'      | % 11
    a2 r4      | % 12
    R2.  | % 
    r4 r a      | % 14
    a r a      | % 15
    a2 r4      | % 16
    R2. *22  | % 
    r4 r d,      | % 39
    a' a2      | % 40
    a r4      | % 41
    r r a      | % 42
    a' r a,      | % 43
    a2 s4 \bar "|." 
}% end of last bar in partorvoice

 

ASvoiceDA = \relative c'{
    \set Staff.instrumentName = #"Soprano"
    \set Staff.shortInstrumentName = #"S."
    \clef treble
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 3/4 
    \partial 4
    d'4     d2 cis4      | % 1
    b2 a4      | % 2
    d e2      | % 3
    fis\fermata  fis4      | % 4
    fis8 e fis2      | % 5
    fis e4      | % 6
    d8 e e2      | % 7
    d\fermata  d4      | % 8
    d2 cis4      | % 9
    b2 a4      | % 10
    d e2      | % 11
    fis\fermata  fis4      | % 12
    fis8 e fis2      | % 13
    fis e4      | % 14
    d8 e e2      | % 15
    d\fermata  d4      | % 16
    d e fis      | % 17
    e2 fis8 e      | % 18
    d e cis2      | % 19
    b\fermata  e4      | % 20
    e d cis      | % 21
    d8 cis b2      | % 22
    a\fermata  a4      | % 23
    d2 d4      | % 24
    e2 e4      | % 25
    fis e fis      | % 26
    d2\fermata  d4      | % 27
    g2 g4      | % 28
    fis8 e fis2      | % 29
    e\fermata  e4      | % 30
    fis2 fis4      | % 31
    g2 g4      | % 32
    a4. g8 fis e      | % 33
    d2\fermata  fis4      | % 34
    e d cis      | % 35
    d8 cis b2      | % 36
    a\fermata  a4      | % 37
    d2 cis4      | % 38
    b2 a4      | % 39
    e' fis2      | % 40
    e\fermata  fis4      | % 41
    g fis e      | % 42
    fis8 g e2      | % 43
    d\fermata  s4 \bar "|." 
}% end of last bar in partorvoice

 

AAvoiceEA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 3/4 
    \partial 4
    a'4     b a a      | % 1
    a g a8 g      | % 2
    fis4 b a      | % 3
    a2 a4      | % 4
    a2 cis4      | % 5
    fis, b e,      | % 6
    a b a8 e      | % 7
    fis2 a4      | % 8
    b a a      | % 9
    a g a8 g      | % 10
    fis4 b a      | % 11
    a2 a4      | % 12
    a2 cis4      | % 13
    fis, b e,      | % 14
    a b a8 e      | % 15
    fis2 a4      | % 16
    b a a      | % 17
    a8 b a g fis4      | % 18
    fis g8 fis e fis      | % 19
    d2 e4      | % 20
    e2 e4      | % 21
    a2 gis4      | % 22
    e2 e4      | % 23
    d8 e fis4 b      | % 24
    b a a      | % 25
    a2.~      | % 26
    a4 g g8 a      | % 27
    b4 a8 g c b      | % 28
    a g c4 b8 a      | % 29
    g2 a4      | % 30
    a b2~      | % 31
    b4 a8 g c b      | % 32
    a g a2~      | % 33
    a4 g a      | % 34
    b2 a4      | % 35
    a2 gis4      | % 36
    e2 e4      | % 37
    a8 gis a b e,4      | % 38
    fis cis cis8 d      | % 39
    e4 a2      | % 40
    a a4      | % 41
    b a g      | % 42
    fis g8 fis e4      | % 43
    fis2 s4 \bar "|." 
}% end of last bar in partorvoice

 

ATvoiceFA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef "treble_8"
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 3/4 
    \partial 4
    fis'4     fis2 fis8 e      | % 1
    d4 e8 d cis4      | % 2
    d2 cis4      | % 3
    d2 d4      | % 4
    d2 cis4      | % 5
    d2 cis4      | % 6
    d2 cis4      | % 7
    a2 fis'4      | % 8
    fis2 fis8 e      | % 9
    d4 e8 d cis4      | % 10
    d2 cis4      | % 11
    d2 d4      | % 12
    d2 cis4      | % 13
    d2 cis4      | % 14
    d2 cis4      | % 15
    a2 d4      | % 16
    g cis, d      | % 17
    d cis cis      | % 18
    b2 ais4      | % 19
    b2 gis8 a      | % 20
    b gis a b cis b      | % 21
    a4 fis' e8 d      | % 22
    cis2 cis8 b      | % 23
    a4 d2~      | % 24
    d4 cis8 b cis4      | % 25
    d a d      | % 26
    b2 b4      | % 27
    e2 e4      | % 28
    e2 dis4      | % 29
    b2 cis4      | % 30
    d2 d4      | % 31
    g, e'2~      | % 32
    e4 d4. c8      | % 33
    b2 d8 cis      | % 34
    b4 e2      | % 35
    d8 e fis4 e8 d      | % 36
    cis2 cis4      | % 37
    cis b a      | % 38
    a gis a      | % 39
    a2 d4      | % 40
    cis2 d4      | % 41
    d2 a4      | % 42
    d2 cis4      | % 43
    a2 s4 \bar "|." 
}% end of last bar in partorvoice

 

ABvoiceGA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 3/4 
    \partial 4
    d'8 cis     b4 fis2      | % 1
    g8 fis e4 fis      | % 2
    b8 a g4 a      | % 3
    d,2 d4      | % 4
    d'4. cis8 b ais      | % 5
    b a g fis g e      | % 6
    fis4 g a      | % 7
    d,2 d'8 cis      | % 8
    b4 fis2      | % 9
    g8 fis e4 fis      | % 10
    b8 a g4 a      | % 11
    d,2 d4      | % 12
    d'4. cis8 b ais      | % 13
    b a g fis g e      | % 14
    fis4 g a      | % 15
    d,2 fis4      | % 16
    g8 a g fis e d      | % 17
    a'2 ais4      | % 18
    b e, fis      | % 19
    b,2 cis4      | % 20
    gis'8 e fis gis a gis      | % 21
    fis e d4 e      | % 22
    a,2 a'8 g      | % 23
    fis4 b8 a g fis      | % 24
    g e a g fis e      | % 25
    d e d cis d fis      | % 26
    g2 g8 fis      | % 27
    e4 fis8 g a b      | % 28
    c4 a b      | % 29
    e,2 a4      | % 30
    d8 cis b a g fis      | % 31
    e d' c b a g      | % 32
    fis g fis e d4      | % 33
    g2 d'4      | % 34
    gis,8 e fis gis a gis      | % 35
    fis e d4 e      | % 36
    a,2 a'8 gis      | % 37
    fis e fis gis a4      | % 38
    dis,8 cis dis eis fis e      | % 39
    d cis d2      | % 40
    a d8 cis      | % 41
    b a b d cis e      | % 42
    d4 g, a      | % 43
    d2 s4 \bar "|." 
}% end of last bar in partorvoice

 

AvoiceHA = \relative c{
    \set Staff.instrumentName = #"Timpani"
    \set Staff.shortInstrumentName = #""
    \clef bass
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 3/4 
    \partial 4
    r4     R2.  | % 
    r4 r a      | % 2
    d r a      | % 3
    d2 r4      | % 4
    R2.  | % 
    r4 r a      | % 6
    d r a      | % 7
    d2 r4      | % 8
    R2.  | % 
    r4 r a      | % 10
    d r a      | % 11
    d2 r4      | % 12
    R2.  | % 
    r4 r a      | % 14
    d r a      | % 15
    d2 r4      | % 16
    R2. *22  | % 
    r4 r d      | % 39
    a d2      | % 40
    a r4      | % 41
    r r a      | % 42
    d r a      | % 43
    d2 s4 \bar "|." 
}% end of last bar in partorvoice



\addQuote "articulations"   { \AvoiceAA }
\book {
\layout { \scorepaper }
\score {
<<
\part AvoiceAA { \AvoiceAA } { \transpose d c \AvoiceAA }
\part AvoiceBA { \quotearticulations \AvoiceBA \AvoiceAA } { \transpose d c \AvoiceBA }
\part AvoiceCA { \quotearticulations \AvoiceCA \AvoiceAA } { \transpose d c \AvoiceCA }
\part ASvoiceDA { \ASvoiceDA } { \transpose d c \ASvoiceDA }
\part AAvoiceEA { \quotearticulations \AAvoiceEA \AvoiceAA } { \transpose d c \AAvoiceEA }
\part ATvoiceFA { \quotearticulations \ATvoiceFA \AvoiceAA } { \transpose d c \ATvoiceFA }
\part ABvoiceGA { \quotearticulations \ABvoiceGA \AvoiceAA } { \transpose d c \ABvoiceGA }
\part AvoiceHA { \quotearticulations \AvoiceHA \AvoiceAA } { \transpose d c \AvoiceHA }
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
\new Voice = AvoiceHA \AvoiceHA
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
#(define output-suffix "Soprano")
\book {
\layout { \partpaper }
\score {
<<
\part ASvoiceDA { \ASvoiceDA } { \transpose d c \ASvoiceDA }
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
\part AAvoiceEA { \quotearticulations \AAvoiceEA \AvoiceAA } { \transpose d c \AAvoiceEA }
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
\part ATvoiceFA { \quotearticulations \ATvoiceFA \AvoiceAA } { \transpose d c \ATvoiceFA }
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
\part ABvoiceGA { \quotearticulations \ABvoiceGA \AvoiceAA } { \transpose d c \ABvoiceGA }
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
\part AvoiceHA { \quotearticulations \AvoiceHA \AvoiceAA } { \transpose d c \AvoiceHA }
>>
}
\score {
<<
\new Voice = AvoiceHA \AvoiceHA
>>

        \midi   { 
        \context { \Staff  \remove "Staff_performer" }
        \context { \Voice  \consists "Staff_performer" }
        } 
   }
} %%end of book
