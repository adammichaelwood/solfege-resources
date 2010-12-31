
% BWV 433 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 433"
composer = "Johann Sebastien Bach"
tagline = "Created by Michael Ellis from digital transcriptions by Margaret Greentree (jsbchorales.net)"
}
ASvoiceAA = \relative c'{
    \set Staff.instrumentName = #"Soprano"
    \set Staff.shortInstrumentName = #"S."
    \clef treble
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    r4 g' g a      | % 1
    b2\fermata  r4 b      | % 2
    c b a2\fermata       | % 3
    r4 a g a      | % 4
    b a g2      | % 5
    a4\fermata  a b a      | % 6
    g g fis2      | % 7
    g1\fermata       | % 8
    r4 g g a      | % 9
    b2\fermata  r4 b      | % 10
    c b a2\fermata       | % 11
    r4 a g a      | % 12
    b a g2      | % 13
    a4\fermata  a b a      | % 14
    g g fis2      | % 15
    g1\fermata       | % 16
    r4 b c b      | % 17
    a2\fermata  r4 a      | % 18
    g g fis2\fermata       | % 19
    r4 fis g fis      | % 20
    e e dis2      | % 21
    e\fermata  r4 g      | % 22
    g fis g2\fermata       | % 23
    r4 b c b      | % 24
    a2\fermata  r4 a      | % 25
    g a b a      | % 26
    g2 a4\fermata  a      | % 27
    b a g g      | % 28
    fis2 g\fermata  \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    r4 d e8 g4 fis8      | % 1
    g2 r4 g~      | % 2
    g8 fis g4 g fis      | % 3
    r fis~ fis8 e4 d8      | % 4
    d4 d d cis      | % 5
    d d d8 e fis4~      | % 6
    fis8 e d e d2      | % 7
    d1      | % 8
    r4 d e8 g4 fis8      | % 9
    g2 r4 g~      | % 10
    g8 fis g4 g fis      | % 11
    r fis~ fis8 e4 d8      | % 12
    d4 d d cis      | % 13
    d d d8 e fis4~      | % 14
    fis8 e d e d2      | % 15
    d1      | % 16
    r4 g g8 a4 g8~      | % 17
    g fis16 e fis4 r fis~      | % 18
    fis e~ e dis      | % 19
    r fis b,8 e dis4      | % 20
    e b8 c b2      | % 21
    b r4 b8 c      | % 22
    d e d4 d2      | % 23
    r4 g a4. g8      | % 24
    g4 fis r fis      | % 25
    g d d8 e fis e      | % 26
    d c d e fis4 a~      | % 27
    a8 g4 fis e8 d e      | % 28
    d2 d \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    r4 b' b d      | % 1
    d2 r4 d      | % 2
    c d d2      | % 3
    r4 d8 c b4 a~      | % 4
    a8 g4 fis8 g b a g      | % 5
    fis4 d'8 c b cis d c      | % 6
    b4 b8 a a b c4      | % 7
    b1      | % 8
    r4 b b d      | % 9
    d2 r4 d      | % 10
    c d d2      | % 11
    r4 d8 c b4 a~      | % 12
    a8 g4 fis8 g b a g      | % 13
    fis4 d'8 c b cis d c      | % 14
    b4 b8 a a b c4      | % 15
    b1      | % 16
    r4 d e8 d d4      | % 17
    d2 r4 b      | % 18
    b b b2      | % 19
    r4 b8 a g c~ c b~      | % 20
    b a g fis fis g a4      | % 21
    g2 r4 g8 a      | % 22
    b a a16 b c8 c4 b      | % 23
    r d8 e~ e d d4      | % 24
    d2 r4 d      | % 25
    d4. c8 b c d4      | % 26
    g,8 a b c16 b a4 d      | % 27
    d d b4. a8      | % 28
    a b c4 b2 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    r4 g'8 fis e4 d      | % 1
    g2 r4 g,      | % 2
    a b8 c d2      | % 3
    r4 d e fis      | % 4
    g d e2      | % 5
    d4 fis g d      | % 6
    e b8 c d2      | % 7
    g,1      | % 8
    r4 g'8 fis e4 d      | % 9
    g2 r4 g,      | % 10
    a b8 c d2      | % 11
    r4 d e fis      | % 12
    g d e2      | % 13
    d4 fis g d      | % 14
    e b8 c d2      | % 15
    g,1      | % 16
    r4 g'8 fis e fis g4      | % 17
    d2 r4 dis8 b      | % 18
    e fis g a b2      | % 19
    r4 dis, e b      | % 20
    c g8 a b2      | % 21
    e r4 e      | % 22
    b8 c d4 g,2      | % 23
    r4 g'~ g8 fis g4      | % 24
    d2 r4 c      | % 25
    b fis g d'8 c      | % 26
    b a g4 d' fis      | % 27
    g d e b8 c      | % 28
    d2 g, \bar "|."\bar "|." 
}% end of last bar in partorvoice



\addQuote "articulations"   { \ASvoiceAA }
\book {
\layout { \scorepaper }
\score {
<<
\part ASvoiceAA { \ASvoiceAA } { \transpose g c \ASvoiceAA }
\part AAvoiceBA { \quotearticulations \AAvoiceBA \ASvoiceAA } { \transpose g c \AAvoiceBA }
\part ATvoiceCA { \quotearticulations \ATvoiceCA \ASvoiceAA } { \transpose g c \ATvoiceCA }
\part ABvoiceDA { \quotearticulations \ABvoiceDA \ASvoiceAA } { \transpose g c \ABvoiceDA }
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
\part ASvoiceAA { \ASvoiceAA } { \transpose g c \ASvoiceAA }
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
\part AAvoiceBA { \quotearticulations \AAvoiceBA \ASvoiceAA } { \transpose g c \AAvoiceBA }
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
\part ATvoiceCA { \quotearticulations \ATvoiceCA \ASvoiceAA } { \transpose g c \ATvoiceCA }
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
\part ABvoiceDA { \quotearticulations \ABvoiceDA \ASvoiceAA } { \transpose g c \ABvoiceDA }
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
