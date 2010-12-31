
% BWV 284 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 284"
composer = "Johann Sebastien Bach"
tagline = "Created by Michael Ellis from digital transcriptions by Margaret Greentree (jsbchorales.net)"
}
ASvoiceAA = \relative c'{
    \set Staff.instrumentName = #"Soprano"
    \set Staff.shortInstrumentName = #"S."
    \clef treble
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    c'4 g a b      | % 1
    c2\fermata  c4 g      | % 2
    c bes a2      | % 3
    g\fermata  g4 a      | % 4
    bes c bes a      | % 5
    g2\fermata  g4 c      | % 6
    c b c2\fermata       | % 7
    c4 c d d      | % 8
    c bes a2\fermata       | % 9
    g4 a bes a      | % 10
    g2\fermata  bes4 c      | % 11
    d ees8 d c2      | % 12
    d\fermata  d4 c      | % 13
    d c bes g      | % 14
    a b c2\fermata  \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    g'4 g~ g8 fis g4      | % 1
    g4. f8~ f e e4~      | % 2
    e8 fis g4 g fis      | % 3
    d2 d8 ees4 d8~      | % 4
    d bes' a g fis g4 fis8      | % 5
    d2 e8 f g4      | % 6
    g g g2      | % 7
    a4 a8 g f g a4~      | % 8
    a bes8 g f2      | % 9
    e4 e8 fis g4~ g8 fis      | % 10
    g2 d8 bes'~ bes a      | % 11
    bes2 bes4 a      | % 12
    bes2 bes4. a8      | % 13
    bes4 a g e      | % 14
    f8 e d f e2 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    e'4 d c d      | % 1
    c8 bes a4 g c8 bes      | % 2
    c4 d ees d8 c      | % 3
    bes2 bes4 c      | % 4
    bes8 g ees'4 d~ d8. c16      | % 5
    bes2 c4~ c8 d      | % 6
    e d16 c d8 f~ f e16 d e4      | % 7
    f f f8 e d e      | % 8
    f4~ f8 e c2      | % 9
    c4 c d ees8 d16 c      | % 10
    bes2 bes8 d f4      | % 11
    f ees8 f g ees c f      | % 12
    f2 f4 f      | % 13
    f ees8 d d4 c      | % 14
    c g g2 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    c'4 b a g8 f      | % 1
    e4 f c c'8 bes      | % 2
    a4 g c, d      | % 3
    g,2 g'4 fis      | % 4
    g c, d d,      | % 5
    g2 c8 d e f      | % 6
    g4 g, c2      | % 7
    f8 g f e d e f g      | % 8
    a f g c, f2      | % 9
    c'8 bes a4 g8 bes, c d      | % 10
    ees2 g4 f      | % 11
    bes8 a g f ees c f4      | % 12
    bes,2 bes'4 f      | % 13
    bes8 a g fis g a bes c      | % 14
    f,4 g c,2 \bar "|."\bar "|." 
}% end of last bar in partorvoice



\addQuote "articulations"   { \ASvoiceAA }
\book {
\layout { \scorepaper }
\score {
<<
\part ASvoiceAA { \ASvoiceAA } { \transpose c c \ASvoiceAA }
\part AAvoiceBA { \quotearticulations \AAvoiceBA \ASvoiceAA } { \transpose c c \AAvoiceBA }
\part ATvoiceCA { \quotearticulations \ATvoiceCA \ASvoiceAA } { \transpose c c \ATvoiceCA }
\part ABvoiceDA { \quotearticulations \ABvoiceDA \ASvoiceAA } { \transpose c c \ABvoiceDA }
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
\part ASvoiceAA { \ASvoiceAA } { \transpose c c \ASvoiceAA }
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
\part AAvoiceBA { \quotearticulations \AAvoiceBA \ASvoiceAA } { \transpose c c \AAvoiceBA }
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
\part ATvoiceCA { \quotearticulations \ATvoiceCA \ASvoiceAA } { \transpose c c \ATvoiceCA }
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
\part ABvoiceDA { \quotearticulations \ABvoiceDA \ASvoiceAA } { \transpose c c \ABvoiceDA }
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
