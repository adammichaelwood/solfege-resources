
% BWV 248 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 248"
composer = "Johann Sebastien Bach"
tagline = "Created by Michael Ellis from digital transcriptions by Margaret Greentree (jsbchorales.net)"
}
AvoiceAA = \relative c'{
    \set Staff.instrumentName = #"Flutes"
    \set Staff.shortInstrumentName = #""
    \clef treble
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 12/8 
    \partial 4
    r4.     r1.      | % 1
    r2. b''4 a8 a4 g8      | % 2
    g8. e'16 d8~ d8. g,16 fis8 g8. e'16 d8~ d8. g,16 fis8      | % 3
    g4. r4. r2.      | % 4
    r1.      | % 5
    g4 fis8 fis4 e8 e8. c'16 b8~ b8. e,16 dis8      | % 6
    e8. c'16 b8~ b8. e,16 dis8 e4. r4.      | % 7
    r1.      | % 8
    r2. fis4 e8 e4 d8      | % 9
    d8. b'16 a8~ a8. d,16 cis8 d8. b'16 a8~ a8. d,16 cis8      | % 10
    d4. r4. r2.      | % 11
    r1.      | % 12
    b'4 a8 a4 g8 g8. e'16 d8~ d8. g,16 fis8      | % 13
    g8. e'16 d8~ d8. g,16 fis8 g2. \bar "|." 
}% end of last bar in partorvoice

 

AvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Oboe d'amore"
    \set Staff.shortInstrumentName = #""
    \clef treble
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 12/8 
    \partial 4
    r4.     r1.      | % 1
    r2. b'4 a8 a4 g8      | % 2
    g8. e'16 d8~ d8. g,16 fis8 g8. e'16 d8~ d8. g,16 fis8      | % 3
    g4. r4. r2.      | % 4
    r1.      | % 5
    b4 dis8 dis4 e8 e4 g8 fis4 a8      | % 6
    g4 e8 dis4 fis8 e4. r4.      | % 7
    r1.      | % 8
    r2. a4 g8 g4 fis8      | % 9
    fis4 cis8 d4 g8 fis4 cis8 d4 g,8      | % 10
    fis4. r4. r2.      | % 11
    r1.      | % 12
    b4 a8 a4 g8 g8. e'16 d8~ d8. g,16 fis8      | % 13
    g8. e'16 d8~ d8. g,16 fis8 g2. \bar "|." 
}% end of last bar in partorvoice

 
AvoiceBB = \relative c'{
    \voiceTwo

    s4.     s1.      | % 1
    r2. g'4 fis8 fis4 d8      | % 2
    d4 fis8 g4 c,8 d4 fis8 g4 c,8      | % 3
    d4. r4. r2.      | % 4
    s1.      | % 5
    e4 fis8 fis4 g8 g4 e'8 dis4 fis8      | % 6
    b,4 g8 fis4 a8 g4. r4.      | % 7
    s1.      | % 8
    r2. fis4 e8 e4 d8      | % 9
    d8. b'16 a8~ a8. d,16 cis8 d8. b'16 a8~ a8. d,16 c8      | % 10
    d4. r4. r2.      | % 11
    s1.      | % 12
    g4 fis8 fis4 d8 d4 fis8 g4 c,8      | % 13
    d4 fis8 g4 c,8 d2. \bar "|." 
}% end of last bar in partorvoice

 
ApartB =  << 
    \mergeDifferentlyHeadedOn
    \mergeDifferentlyDottedOn 
        \context Voice = AvoiceBA{\voiceOne \AvoiceBA}\\ 
        \context Voice = AvoiceBB\AvoiceBB
        >> 

 

AvoiceCA = \relative c'{
    \set Staff.instrumentName = #"Oboe da caccia"
    \set Staff.shortInstrumentName = #""
    \clef alto
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 12/8 
    \partial 4
    r4.     r1.      | % 1
    r2. d4 c8 c4 b8      | % 2
    b4 c8 b4 a8 b4 c8 b4 a8      | % 3
    b4. r4. r2.      | % 4
    r1.      | % 5
    g'4 fis8 fis4 e8 e8. c'16 b8~ b8. e,16 dis8      | % 6
    e8. c'16 b8~ b8. e,16 dis8 e4. r4.      | % 7
    r1.      | % 8
    r2. a4 cis8 cis4 d8      | % 9
    d4 g,8 fis4 e8 d4 g8 fis4 e8      | % 10
    d4. r4. r2.      | % 11
    r1.      | % 12
    d4 c8 c4 b8 b4 c8 b4 a8      | % 13
    b4 c8 b4 a8 b2. \bar "|." 
}% end of last bar in partorvoice

 
AvoiceCB = \relative c'{
    \voiceTwo

    s4.     s1.      | % 1
    r2. g2.~      | % 2
    g1.~      | % 3
    g4. r4. r2.      | % 4
    s1.      | % 5
    e'1.~      | % 6
    e2.~ e4. r4.      | % 7
    s1.      | % 8
    r2. d2.~      | % 9
    d1.~      | % 10
    d4. r4. r2.      | % 11
    s1.      | % 12
    g,1.~      | % 13
    g1. \bar "|." 
}% end of last bar in partorvoice

 
ApartC =  << 
    \mergeDifferentlyHeadedOn
    \mergeDifferentlyDottedOn 
        \context Voice = AvoiceCA{\voiceOne \AvoiceCA}\\ 
        \context Voice = AvoiceCB\AvoiceCB
        >> 

 

AvoiceDA = \relative c'{
    \set Staff.instrumentName = #"Soprano"
    \set Staff.shortInstrumentName = #""
    \clef treble
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 12/8 
    \partial 4
    g''4.     fis4. e4. fis4. d4.      | % 1
    e4. fis4. g4. r4.      | % 2
    r1.      | % 3
    r4 r8 g4. g4. d4.      | % 4
    d4 c8 b4 c8 d4. c4.      | % 5
    b4. r4. r4. r4.      | % 6
    r2. r4. b4.      | % 7
    e4. e4. d4 e8 fis4.      | % 8
    g4 fis8 e4. d4. r4.      | % 9
    r1.      | % 10
    r4 r8 g4. fis4. e4.      | % 11
    d4. e4 d8 c4 b8 a4.      | % 12
    g4. r4. r4. r4.      | % 13
    r1. \bar "|." 
}% end of last bar in partorvoice

 

ASvoiceEA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"S."
    \clef treble
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 12/8 
    \partial 4
    b'4.     a4. b4 a8 a4. g4.      | % 1m
    g4 c8 b4 a8 b4. r4.      | % 2
    r1.      | % 3
    r4 r8 b4. b4. b4.      | % 4
    a4. g4. a4 e8 e8. g16 fis8      | % 5
    g4. r4. r4. r4.      | % 6
    r2. r4. g4.      | % 7
    g4. g4 a8 b4 a8 a4 b8      | % 8
    b4 a8 b4 a8 a4. r4.      | % 9
    r1.      | % 10
    r4 r8 b4. c4 b8 b4 a8      | % 11
    a4 g8 g4. g4. g4 fis8      | % 12
    d4. r4. r4. r4.      | % 13
    r1. \bar "|." 
}% end of last bar in partorvoice

 

AAvoiceFA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"A."
    \clef bass
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 12/8 
    \partial 4
    d'4.     d4. d4 cis8 d4 c8 c4 b8      | % 1
    b4 a8 d4. d4. r4.      | % 2
    r1.      | % 3
    r4 r8 d4. e4. fis4 g8      | % 4
    d4. d4 e8 a,4 b8 c8. e16 dis8      | % 5
    e4. r4. r4. r4.      | % 6
    r2. r4. e4.      | % 7
    e4 d8 c4. b4 cis8 d4.      | % 8
    g,4 d'8 d4 cis8 fis4. r4.      | % 9
    r1.      | % 10
    r4. e4. e4 d8 d4 c8      | % 11
    c4 b8 c4 b8 c4 d8 e4 d8      | % 12
    b4. r4. r4. r4.      | % 13
    r1. \bar "|." 
}% end of last bar in partorvoice

 

ATvoiceGA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 12/8 
    \partial 4
    g'4.     d'4. g,4 a8 d,4. g4.      | % 1
    c,4. d4. g,4. r4.      | % 2
    r1.      | % 3
    r4 r8 g'4 fis8 e4. b'4.      | % 4
    fis4. g4 e8 fis4 gis8 a4.      | % 5
    e4. r4. r4. r4.      | % 6
    r2. r4. e4 d8      | % 7
    c4 d8 e4 c8 g'4. fis4 b8      | % 8
    e,4 fis8 g4 a8 d,4. r4.      | % 9
    r1.      | % 10
    r4. e4 g8 a4 b8 g4 a8      | % 11
    fis4 g8 c,4 d8 e4 d8 c4 d8      | % 12
    g,4. r4. r4. r4.      | % 13
    r1. \bar "|." 
}% end of last bar in partorvoice

 

ABvoiceHA = \relative c{
    \set Staff.instrumentName = #"Organ"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 12/8 
    \partial 4
    g'8. b16 d8     d8. cis16 d8 g,8. e16 a8 d,8. e16 fis8 g8. fis16 g8      | % 1
    c,8. b16 c8 d8. c16 d8 g,4. r4.      | % 2
    r1.      | % 3
    r4 r8 g8. b16 e8 e8. d16 e8 b8. d16 fis8      | % 4
    fis8. e16 fis8 g8. fis16 e8 fis8. a16 gis8 a4 a,8      | % 5
    e'4. r4. r4. r4.      | % 6
    r2. r4. e8. d16 e8      | % 7
    c8. e16 g8 g8. fis16 g8 g,8. b16 d8 d8. cis16 d8      | % 8
    e,8. cis'16 d8 g,8. e16 a8 d,4. r4.      | % 9
    r1.      | % 10
    r4. e'8. fis16 g8 a8. fis16 b8 g8. e16 a8      | % 11
    fis8. c16 g'8 c,8. e16 g8 g8. fis16 g8 c,8. a16 d8      | % 12
    g,4. r4. r4. r4.      | % 13
    r1. \bar "|." 
}% end of last bar in partorvoice



\book {
\layout { \scorepaper }
\score {
<<
\part AvoiceAA { \AvoiceAA } { \transpose g c \AvoiceAA }
\part AvoiceBA { \AvoiceBA } { \transpose g c \AvoiceBA }
\part AvoiceBB { \AvoiceBB } { \transpose g c \AvoiceBB }
\part AvoiceCA { \AvoiceCA } { \transpose g c \AvoiceCA }
\part AvoiceCB { \AvoiceCB } { \transpose g c \AvoiceCB }
\part AvoiceDA { \AvoiceDA } { \transpose g c \AvoiceDA }
\part ASvoiceEA { \ASvoiceEA } { \transpose g c \ASvoiceEA }
\part AAvoiceFA { \AAvoiceFA } { \transpose g c \AAvoiceFA }
\part ATvoiceGA { \ATvoiceGA } { \transpose g c \ATvoiceGA }
\part ABvoiceHA { \ABvoiceHA } { \transpose g c \ABvoiceHA }
>>
}
\score {
<<
\new Voice = AvoiceAA \AvoiceAA
\new Voice = AvoiceBA \AvoiceBA
\new Voice = AvoiceBB \AvoiceBB
\new Voice = AvoiceCA \AvoiceCA
\new Voice = AvoiceCB \AvoiceCB
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

#(define output-suffix "Flutes")
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
#(define output-suffix "Obo")
\book {
\layout { \partpaper }
\score {
<<
\part AvoiceBA { \AvoiceBA } { \transpose g c \AvoiceBA }
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
#(define output-suffix "None")
\book {
\layout { \partpaper }
\score {
<<
\part AvoiceBB { \AvoiceBB } { \transpose g c \AvoiceBB }
>>
}
\score {
<<
\new Voice = AvoiceBB \AvoiceBB
>>

        \midi   { 
        \context { \Staff  \remove "Staff_performer" }
        \context { \Voice  \consists "Staff_performer" }
        } 
   }
} %%end of book
#(define output-suffix "Obo")
\book {
\layout { \partpaper }
\score {
<<
\part AvoiceCA { \AvoiceCA } { \transpose g c \AvoiceCA }
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
#(define output-suffix "None")
\book {
\layout { \partpaper }
\score {
<<
\part AvoiceCB { \AvoiceCB } { \transpose g c \AvoiceCB }
>>
}
\score {
<<
\new Voice = AvoiceCB \AvoiceCB
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
\part AvoiceDA { \AvoiceDA } { \transpose g c \AvoiceDA }
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
#(define output-suffix "Alto")
\book {
\layout { \partpaper }
\score {
<<
\part ASvoiceEA { \ASvoiceEA } { \transpose g c \ASvoiceEA }
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
#(define output-suffix "Tenor")
\book {
\layout { \partpaper }
\score {
<<
\part AAvoiceFA { \AAvoiceFA } { \transpose g c \AAvoiceFA }
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
#(define output-suffix "Bass")
\book {
\layout { \partpaper }
\score {
<<
\part ATvoiceGA { \ATvoiceGA } { \transpose g c \ATvoiceGA }
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
#(define output-suffix "Organ")
\book {
\layout { \partpaper }
\score {
<<
\part ABvoiceHA { \ABvoiceHA } { \transpose g c \ABvoiceHA }
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
