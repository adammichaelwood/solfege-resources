
% BWV 64 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 64"
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
    \partial 4
    a'4     fis d a' a      | % 1
    b2.\fermata  b4      | % 2
    e, e a g      | % 3
    fis d\fermata  r a'      | % 4
    b b a g      | % 5
    fis2.\fermata  e4      | % 6
    fis gis a4. b8      | % 7
    gis2 a4\fermata  a      | % 8
    a a d c      | % 9
    b2.\fermata  b4      | % 10
    b b e d      | % 11
    cis2.\fermata  a4      | % 12
    b a b cis      | % 13
    d2.\fermata  a4      | % 14
    a g8 fis e4 e      | % 15
    d2.\fermata  s4 \bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    e4     d fis8 e d4 a'8 fis      | % 1
    g2. d4      | % 2
    cis8 d cis b a4 e'      | % 3
    d a r d      | % 4
    d g fis e      | % 5
    a,2. cis4      | % 6
    d e e4. fis8      | % 7
    e2 e4 e      | % 8
    fis8 e fis g a g a fis      | % 9
    g2. fis4      | % 10
    e e e e      | % 11
    e2. d4      | % 12
    g a g b8 ais      | % 13
    b2. a8 g      | % 14
    fis4 e8 d d4 cis      | % 15
    a2. s4 \bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    a'4     a a a d      | % 1
    d2. g,4      | % 2
    g4. fis8 e4 a      | % 3
    a fis r a      | % 4
    g8 a b4 cis8 d d cis      | % 5
    d2. cis4      | % 6
    a b a4. d8      | % 7
    b2 cis4 cis      | % 8
    d d d d      | % 9
    d2. b8 a      | % 10
    gis fis gis a b a b gis      | % 11
    a2. d4      | % 12
    d d d e      | % 13
    fis2. e4      | % 14
    d a a8 b a g      | % 15
    fis2. s4 \bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    cis4     d8 cis d e fis e fis d      | % 1
    g2. g,4      | % 2
    a8 g a b cis b cis a      | % 3
    d4 d r fis      | % 4
    g e a a,      | % 5
    d2. a4      | % 6
    d8 cis d b cis b cis d      | % 7
    e4 e, a a      | % 8
    d8 cis d e fis e fis d      | % 9
    g2. dis4      | % 10
    e8 dis e fis gis fis gis e      | % 11
    a2. fis4      | % 12
    g8 a g fis g fis g e      | % 13
    b'2. cis,4      | % 14
    d8 e fis g a4 a,      | % 15
    d2. s4 \bar "|." 
}% end of last bar in partorvoice

 

AvoiceEA = \relative c{
    \set Staff.instrumentName = #"Continuo"
    \set Staff.shortInstrumentName = #""
    \clef bass
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    a'8 a,     d, cis d e fis e fis d      | % 1
    g fis g a b a b g      | % 2
    a g a b cis b cis a      | % 3
    d cis d e fis e fis d      | % 4
    g fis g e a g a a,      | % 5
    d cis d e fis g a a,      | % 6
    d cis d b cis b cis d      | % 7
    e d e e, a4 a      | % 8
    d8 cis d e fis e fis d      | % 9
    g fis g a b a b dis,      | % 10
    e dis e fis gis fis gis e      | % 11
    a gis a b a g fis d      | % 12
    g a g fis g fis g e      | % 13
    b a b g d' b cis a      | % 14
    d e fis g a4 a,      | % 15
    d,2. s4 \bar "|." 
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
\part AvoiceEA { \quotearticulations \AvoiceEA \ASvoiceAA } { \transpose d c \AvoiceEA }
>>
}
\score {
<<
\new Voice = ASvoiceAA \ASvoiceAA
\new Voice = AAvoiceBA \AAvoiceBA
\new Voice = ATvoiceCA \ATvoiceCA
\new Voice = ABvoiceDA \ABvoiceDA
\new Voice = AvoiceEA \AvoiceEA
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
#(define output-suffix "Continuo")
\book {
\layout { \partpaper }
\score {
<<
\part AvoiceEA { \quotearticulations \AvoiceEA \ASvoiceAA } { \transpose d c \AvoiceEA }
>>
}
\score {
<<
\new Voice = AvoiceEA \AvoiceEA
>>

        \midi   { 
        \context { \Staff  \remove "Staff_performer" }
        \context { \Voice  \consists "Staff_performer" }
        } 
   }
} %%end of book
