
% BWV 310 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 310"
composer = "Johann Sebastien Bach"
tagline = "Created by Michael Ellis from digital transcriptions by Margaret Greentree (jsbchorales.net)"
}
AvoiceAA = \relative c'{
    \set Staff.instrumentName = #"Soprano"
    \set Staff.shortInstrumentName = #"S."
    \clef treble
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    e4 e b' b8 c      | % 1
    d4 b g a8 b      | % 2
    c2 b\fermata       | % 3
    a4 a g a      | % 4
    b a g fis      | % 5
    e2 d\fermata       | % 6
    g4 fis g8 a b4      | % 7
    a8 g fis4 e2\fermata       | % 8
    fis4 e8 fis g4 fis      | % 9
    e1\fermata  \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    b4 b e8 fis g4      | % 1
    a8 fis g fis e4 fis8 g~      | % 2
    g fis16 e fis4 g2      | % 3
    g4~ g8 fis~ fis e d a'      | % 4
    a g~ g fis e4 a,8 d      | % 5
    d cis16 b cis4 a2      | % 6
    e'4 fis e e      | % 7
    e dis e2      | % 8
    dis4 e8 dis e4. d8      | % 9
    b1 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    g'4 g8 a b4 e      | % 1
    d d c4. d8      | % 2
    c d16 e d4 d2      | % 3
    e4 d8. c16 b4 d      | % 4
    d d~ d8 cis d a      | % 5
    b g e a16 g fis2      | % 6
    b4 b b b      | % 7
    c c8 b16 a g2      | % 8
    b4. a8 b4~ b8. a16      | % 9
    gis1 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    e4. fis8 g4 e      | % 1
    fis8 d g4 c8 b a g      | % 2
    a4 d, g2      | % 3
    cis,4 d e fis      | % 4
    g d e fis      | % 5
    g8 e a a, d2      | % 6
    e4. dis8 e4 g,      | % 7
    a b c2      | % 8
    b8 a g fis e4 b'      | % 9
    e1 \bar "|."\bar "|." 
}% end of last bar in partorvoice



\addQuote "articulations"   { \AvoiceAA }
\book {
\layout { \scorepaper }
\score {
<<
\part AvoiceAA { \AvoiceAA } { \transpose g c \AvoiceAA }
\part AvoiceBA { \quotearticulations \AvoiceBA \AvoiceAA } { \transpose g c \AvoiceBA }
\part AvoiceCA { \quotearticulations \AvoiceCA \AvoiceAA } { \transpose g c \AvoiceCA }
\part AvoiceDA { \quotearticulations \AvoiceDA \AvoiceAA } { \transpose g c \AvoiceDA }
>>
}
\score {
<<
\new Voice = AvoiceAA \AvoiceAA
\new Voice = AvoiceBA \AvoiceBA
\new Voice = AvoiceCA \AvoiceCA
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
#(define output-suffix "Alto")
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
#(define output-suffix "Tenor")
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
#(define output-suffix "Bass")
\book {
\layout { \partpaper }
\score {
<<
\part AvoiceDA { \quotearticulations \AvoiceDA \AvoiceAA } { \transpose g c \AvoiceDA }
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
