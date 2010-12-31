
% BWV 120 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 120"
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
    R2. *10  | % 
    a''4 a a      | % 11
    a4. a8 b4      | % 12
    cis a cis      | % 13
    d cis d8 b      | % 14
    cis2 d4      | % 15
    a a a      | % 16
    a4. a8 b4      | % 17
    cis a cis      | % 18
    d cis d8 b      | % 19
    cis2 d4      | % 20
    a4. c8 b a      | % 21
    g2.      | % 22
    d4. e8 e4      | % 23
    fis8 e fis g a b      | % 24
    cis2.      | % 25
    a2.~      | % 26
    a8 g a b a b      | % 27
    a b16 cis cis4 d \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Trumpet 2"
    \set Staff.shortInstrumentName = #""
    \clef treble
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 3/4 
    R2. *10  | % 
    fis'4 d e      | % 11
    fis4. fis8 gis4      | % 12
    a e a      | % 13
    a a a      | % 14
    a2 a4      | % 15
    fis d e      | % 16
    fis4. fis8 gis4      | % 17
    a e a      | % 18
    a a a      | % 19
    a2 a4      | % 20
    fis4. a16 g fis8 g16 fis      | % 21
    e2.      | % 22
    R2.  | % 
    d4. e8 fis g      | % 24
    a2.      | % 25
    e4 e2      | % 26
    d4 e fis8 d      | % 27
    e2 fis4 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AvoiceCA = \relative c'{
    \set Staff.instrumentName = #"Trumpet 3"
    \set Staff.shortInstrumentName = #""
    \clef treble
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 3/4 
    R2. *10  | % 
    d'4 fis, a      | % 11
    d4. d8 d4      | % 12
    e a, e'      | % 13
    fis g fis8 d      | % 14
    e2 fis4      | % 15
    d fis, a      | % 16
    d4. d8 d4      | % 17
    e a, e'      | % 18
    fis g fis8 d      | % 19
    e2 fis4      | % 20
    R2. *2  | % 
    fis,4 r r      | % 23
    a4. a8 d4      | % 24
    e2.      | % 25
    a,4 a2      | % 26
    a4 e' d8 fis,      | % 27
    a2 a4 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AvoiceDA = \relative c{
    \set Staff.instrumentName = #"Timpani"
    \set Staff.shortInstrumentName = #""
    \clef bass
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 3/4 
    R2. *10  | % 
    d4 d a      | % 11
    d4. d8 d4      | % 12
    a a a      | % 13
    d a d      | % 14
    a8 a16 a a8 a d4      | % 15
    d d a      | % 16
    d4. d8 d4      | % 17
    a a a      | % 18
    d a d      | % 19
    a8 a16 a a8 a d4      | % 20
    R2. *2  | % 
    d4 r r      | % 23
    d r d      | % 24
    a2.      | % 25
    a4 a2      | % 26
    d4 a d      | % 27
    a2 d4 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ASvoiceEA = \relative c'{
    \set Staff.instrumentName = #"Soprano"
    \set Staff.shortInstrumentName = #"S."
    \clef treble
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 3/4 
    d'4 d a'      | % 1
    fis4. e8 d4      | % 2
    cis4. b8 a4      | % 3
    d e fis8 g      | % 4
    e2 d4\fermata       | % 5
    d d a'      | % 6
    fis4. e8 d4      | % 7
    cis4. b8 a4      | % 8
    d e fis8 g      | % 9
    e2 d4\fermata       | % 10
    d d a'      | % 11
    fis4. e8 d4      | % 12
    cis4. b8 a4      | % 13
    d e fis8 g      | % 14
    e2 d4      | % 15
    d d a'      | % 16
    fis4. e8 d4      | % 17
    cis4. b8 a4      | % 18
    d e fis8 g      | % 19
    e2 d4      | % 20
    fis4. e8 fis4      | % 21
    g2.      | % 22
    fis4. g8 a4      | % 23
    a4. g8 fis4      | % 24
    e2.      | % 25
    a,4 b cis      | % 26
    d e fis8. g16      | % 27
    e2 d4 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AAvoiceFA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 3/4 
    a'4 a a      | % 1
    a4. a8 gis4      | % 2
    e a a      | % 3
    a cis a      | % 4
    a g fis      | % 5
    a a a      | % 6
    a4. a8 gis4      | % 7
    e a a      | % 8
    a cis a      | % 9
    a g fis      | % 10
    a a a      | % 11
    a4. a8 gis4      | % 12
    e a a      | % 13
    a cis a      | % 14
    a g fis      | % 15
    a a a      | % 16
    a4. a8 gis4      | % 17
    e a a      | % 18
    a cis a      | % 19
    a g fis      | % 20
    a4. a8 d,4      | % 21
    b'2.      | % 22
    b4. b8 e,4      | % 23
    d a' a      | % 24
    a2.      | % 25
    e4 e e      | % 26
    a a a      | % 27
    a2 fis4 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ATvoiceGA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef "treble_8"
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 3/4 
    fis'4 fis e      | % 1
    d4. a8 d4      | % 2
    a' a, e'      | % 3
    d g, d'      | % 4
    e cis a      | % 5
    fis' fis e      | % 6
    d4. a8 d4      | % 7
    a' a, e'      | % 8
    d g, d'      | % 9
    e cis a      | % 10
    fis' fis e      | % 11
    d4. a8 d4      | % 12
    a' a, e'      | % 13
    d g, d'      | % 14
    e cis a      | % 15
    fis' fis e      | % 16
    d4. a8 d4      | % 17
    a' a, e'      | % 18
    d g, d'      | % 19
    e cis a      | % 20
    fis'4. fis8 fis dis      | % 21
    e2.      | % 22
    fis4. d8 cis b      | % 23
    a4 cis d      | % 24
    cis2.      | % 25
    cis4 e a,      | % 26
    a a a8 d      | % 27
    d4 cis a \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ABvoiceHA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 3/4 
    d4 d' cis      | % 1
    d4. cis8 b4      | % 2
    a a, g'      | % 3
    fis e d      | % 4
    a' a, d      | % 5
    d d' cis      | % 6
    d4. cis8 b4      | % 7
    a a, g'      | % 8
    fis e d      | % 9
    a' a, d      | % 10
    d d' cis      | % 11
    d4. cis8 b4      | % 12
    a a, g'      | % 13
    fis e d      | % 14
    a' a, d      | % 15
    d d' cis      | % 16
    d4. cis8 b4      | % 17
    a a, g'      | % 18
    fis e d      | % 19
    a' a, d      | % 20
    d fis b      | % 21
    e,2.      | % 22
    b'4 a g      | % 23
    fis4. e8 d4      | % 24
    a2.      | % 25
    a'4 g8 fis g e      | % 26
    fis4 cis d      | % 27
    a' a, d \bar "|."\bar "|." 
}% end of last bar in partorvoice



\addQuote "articulations"   { \ASvoiceEA }
\book {
\layout { \scorepaper }
\score {
<<
\part AvoiceAA { \quotearticulations \AvoiceAA \ASvoiceEA } { \transpose d c \AvoiceAA }
\part AvoiceBA { \quotearticulations \AvoiceBA \ASvoiceEA } { \transpose d c \AvoiceBA }
\part AvoiceCA { \quotearticulations \AvoiceCA \ASvoiceEA } { \transpose d c \AvoiceCA }
\part AvoiceDA { \quotearticulations \AvoiceDA \ASvoiceEA } { \transpose d c \AvoiceDA }
\part ASvoiceEA { \ASvoiceEA } { \transpose d c \ASvoiceEA }
\part AAvoiceFA { \quotearticulations \AAvoiceFA \ASvoiceEA } { \transpose d c \AAvoiceFA }
\part ATvoiceGA { \quotearticulations \ATvoiceGA \ASvoiceEA } { \transpose d c \ATvoiceGA }
\part ABvoiceHA { \quotearticulations \ABvoiceHA \ASvoiceEA } { \transpose d c \ABvoiceHA }
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
\part AvoiceAA { \quotearticulations \AvoiceAA \ASvoiceEA } { \transpose d c \AvoiceAA }
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
\part AvoiceBA { \quotearticulations \AvoiceBA \ASvoiceEA } { \transpose d c \AvoiceBA }
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
\part AvoiceCA { \quotearticulations \AvoiceCA \ASvoiceEA } { \transpose d c \AvoiceCA }
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
\part AvoiceDA { \quotearticulations \AvoiceDA \ASvoiceEA } { \transpose d c \AvoiceDA }
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
\part AAvoiceFA { \quotearticulations \AAvoiceFA \ASvoiceEA } { \transpose d c \AAvoiceFA }
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
\part ATvoiceGA { \quotearticulations \ATvoiceGA \ASvoiceEA } { \transpose d c \ATvoiceGA }
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
\part ABvoiceHA { \quotearticulations \ABvoiceHA \ASvoiceEA } { \transpose d c \ABvoiceHA }
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
