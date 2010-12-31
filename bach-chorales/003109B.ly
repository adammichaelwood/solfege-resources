
% BWV 31 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 31"
composer = "Johann Sebastien Bach"
tagline = "Created by Michael Ellis from digital transcriptions by Margaret Greentree (jsbchorales.net)"
}
AvoiceAA = \relative c'{
    \set Staff.instrumentName = #"Violin"
    \set Staff.shortInstrumentName = #""
    \clef treble
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    g''8 f     e4 d8 c g'2~      | % 1
    g~ g8 f e d      | % 2
    c c'4 b8 c d e4~      | % 3
    e8 a, d4~ d8 c g f      | % 4
    e4 d8 c g'2~      | % 5
    g~ g8 f e d      | % 6
    c c'4 b8 c d e4~      | % 7
    e8 a, d4~ d8 c c b      | % 8
    a b c4~ c8 b c4      | % 9
    g8 a bes4~ bes8 a g a16 f      | % 10
    c'8 b a g d'2~      | % 11
    d4. c8 b a g4~      | % 12
    g2~ g      | % 13
    a8 b c2 b4      | % 14
    c2.\fermata  s4 \bar "|." 
}% end of last bar in partorvoice

 

ASvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Soprano"
    \set Staff.shortInstrumentName = #"S."
    \clef treble
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    c'4     g a b c      | % 1
    d e c\fermata  e8 f      | % 2
    g4 g e8 f g4      | % 3
    f2 e4 c      | % 4
    g a b c      | % 5
    d e c\fermata  e8 f      | % 6
    g4 g e8 f g4      | % 7
    f2 e4 e      | % 8
    f e d c8 d      | % 9
    e4 e8 d c4\fermata  d      | % 10
    e e a, b      | % 11
    c8 b a4 g\fermata  g      | % 12
    c d e d8 e      | % 13
    f4 e8 d d2      | % 14
    c2.\fermata  s4 \bar "|." 
}% end of last bar in partorvoice

 

AAvoiceCA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    e4     e fis g g      | % 1
    f e a g      | % 2
    g8 f e d c4 b      | % 3
    c g' g e      | % 4
    e fis g g      | % 5
    f e a g      | % 6
    g8 f e d c4 b      | % 7
    c g' g g      | % 8
    d c g'4. f8      | % 9
    e f g4 g8 f b,4      | % 10
    c8 d e a, fis'4 g      | % 11
    a8 g fis4 g d      | % 12
    g4. f8 e f g4      | % 13
    f g8 a16 bes a4 g      | % 14
    g2. s4 \bar "|." 
}% end of last bar in partorvoice

 

ATvoiceDA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    g'4     c c d g,8 a      | % 1
    b4 c c c8 d      | % 2
    e f g g, c4 g      | % 3
    a8 f g4 c, g'      | % 4
    c c d g,8 a      | % 5
    b4 c c c8 d      | % 6
    e f g g, c4 g      | % 7
    a8 f g4 c, c'      | % 8
    c8 b16 a g4 d'8 e16 f e8 d      | % 9
    c4 c c f,      | % 10
    g c8 d16 e d4. c16 b      | % 11
    a8 b16 c d8 d d4 b8 a      | % 12
    g a b4 c d8 g,      | % 13
    c d e4 f8 e d e16 f      | % 14
    e2. s4 \bar "|." 
}% end of last bar in partorvoice

 

ABvoiceEA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    c4     c'8 b a4 g8 f e4      | % 1
    d c f c      | % 2
    c' g a e      | % 3
    a, b c c      | % 4
    c'8 b a4 g8 f e4      | % 5
    d c f c      | % 6
    c' g a e      | % 7
    a, b c c      | % 8
    d e8 f g4 a8 b      | % 9
    c4 c, f d      | % 10
    c c c' b      | % 11
    fis8 g d4 g, g'8 f      | % 12
    e f e d c d c b      | % 13
    a4 g f g      | % 14
    c2. s4 \bar "|." 
}% end of last bar in partorvoice



\addQuote "articulations"   { \AvoiceAA }
\book {
\layout { \scorepaper }
\score {
<<
\part AvoiceAA { \AvoiceAA } { \transpose c c \AvoiceAA }
\part ASvoiceBA { \ASvoiceBA } { \transpose c c \ASvoiceBA }
\part AAvoiceCA { \quotearticulations \AAvoiceCA \AvoiceAA } { \transpose c c \AAvoiceCA }
\part ATvoiceDA { \quotearticulations \ATvoiceDA \AvoiceAA } { \transpose c c \ATvoiceDA }
\part ABvoiceEA { \quotearticulations \ABvoiceEA \AvoiceAA } { \transpose c c \ABvoiceEA }
>>
}
\score {
<<
\new Voice = AvoiceAA \AvoiceAA
\new Voice = ASvoiceBA \ASvoiceBA
\new Voice = AAvoiceCA \AAvoiceCA
\new Voice = ATvoiceDA \ATvoiceDA
\new Voice = ABvoiceEA \ABvoiceEA
>>

        \midi   { 
        \context { \Staff  \remove "Staff_performer" }
        \context { \Voice  \consists "Staff_performer" }
        } 
   }
} %%end of book

#(define output-suffix "Violin")
\book {
\layout { \partpaper }
\score {
<<
\part AvoiceAA { \AvoiceAA } { \transpose c c \AvoiceAA }
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
#(define output-suffix "Soprano")
\book {
\layout { \partpaper }
\score {
<<
\part ASvoiceBA { \ASvoiceBA } { \transpose c c \ASvoiceBA }
>>
}
\score {
<<
\new Voice = ASvoiceBA \ASvoiceBA
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
\part AAvoiceCA { \quotearticulations \AAvoiceCA \AvoiceAA } { \transpose c c \AAvoiceCA }
>>
}
\score {
<<
\new Voice = AAvoiceCA \AAvoiceCA
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
\part ATvoiceDA { \quotearticulations \ATvoiceDA \AvoiceAA } { \transpose c c \ATvoiceDA }
>>
}
\score {
<<
\new Voice = ATvoiceDA \ATvoiceDA
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
\part ABvoiceEA { \quotearticulations \ABvoiceEA \AvoiceAA } { \transpose c c \ABvoiceEA }
>>
}
\score {
<<
\new Voice = ABvoiceEA \ABvoiceEA
>>

        \midi   { 
        \context { \Staff  \remove "Staff_performer" }
        \context { \Voice  \consists "Staff_performer" }
        } 
   }
} %%end of book
