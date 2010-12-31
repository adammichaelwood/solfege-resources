
% BWV 244 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 244"
composer = "Johann Sebastien Bach"
tagline = "Created by Michael Ellis from digital transcriptions by Margaret Greentree (jsbchorales.net)"
}
ASvoiceAA = \relative c'{
    \set Staff.instrumentName = #"Soprano"
    \set Staff.shortInstrumentName = #"S."
    \clef treble
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    a'4     d c bes a      | % 1
    g2 a4\fermata  e'      | % 2
    f f e8 d e4      | % 3
    d2.\fermata  a4      | % 4
    d c bes a      | % 5
    g2 a4\fermata  e'      | % 6
    f f e8 d e4      | % 7
    d2.\fermata  f4      | % 8
    e8 d c4 d e      | % 9
    f2 f4\fermata  c      | % 10
    d c bes8 a bes4      | % 11
    a2.\fermata  f'4      | % 12
    e8 f g4 f e      | % 13
    d2 e4\fermata  a,      | % 14
    bes a g c      | % 15
    a2.\fermata  s4 \bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    f4     f8 g a4 d,8 e f4      | % 1
    f e f a      | % 2
    a a a a8 g      | % 3
    f2. f4      | % 4
    f8 g a4 d,8 e f4      | % 5
    f e f a      | % 6
    a a a a8 g      | % 7
    f2. a4      | % 8
    g g8 f f4 bes      | % 9
    bes a8 g a4 a      | % 10
    a8 g a4 g8 fis g4      | % 11
    fis2. g4      | % 12
    g c c c      | % 13
    c b c f,8 e      | % 14
    d e f4 f e      | % 15
    f2. s4 \bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef "treble_8"
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    d'4     d8 e f4 g c,      | % 1
    d c c e      | % 2
    e d d cis      | % 3
    a2. d4      | % 4
    d8 e f4 g c,      | % 5
    d c c e      | % 6
    e d d cis      | % 7
    a2. d8 c      | % 8
    bes4 c c bes8 c      | % 9
    d4 c8 bes c4 f8 ees      | % 10
    d4 d d d      | % 11
    d2. d4      | % 12
    c8 d e4 f g      | % 13
    a g g c,      | % 14
    bes c c8 bes16 a g8 c      | % 15
    c2. s4 \bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    d'8 c     bes4 a g f      | % 1
    bes, c f cis      | % 2
    d8 e f g a4 a,      | % 3
    d2. d'8 c      | % 4
    bes4 a g f      | % 5
    bes, c f cis      | % 6
    d8 e f g a4 a,      | % 7
    d2. d4      | % 8
    g a bes8 a g4      | % 9
    f2 f4 f      | % 10
    bes fis g g,      | % 11
    d'2. b4      | % 12
    c c'8 b a4 g      | % 13
    f g c, f      | % 14
    g a8 bes c4 c,      | % 15
    f2. s4 \bar "|." 
}% end of last bar in partorvoice



\addQuote "articulations"   { \ASvoiceAA }
\book {
\layout { \scorepaper }
\score {
<<
\part ASvoiceAA { \ASvoiceAA } { \transpose f c \ASvoiceAA }
\part AAvoiceBA { \quotearticulations \AAvoiceBA \ASvoiceAA } { \transpose f c \AAvoiceBA }
\part ATvoiceCA { \quotearticulations \ATvoiceCA \ASvoiceAA } { \transpose f c \ATvoiceCA }
\part ABvoiceDA { \quotearticulations \ABvoiceDA \ASvoiceAA } { \transpose f c \ABvoiceDA }
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
\part ASvoiceAA { \ASvoiceAA } { \transpose f c \ASvoiceAA }
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
\part AAvoiceBA { \quotearticulations \AAvoiceBA \ASvoiceAA } { \transpose f c \AAvoiceBA }
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
\part ATvoiceCA { \quotearticulations \ATvoiceCA \ASvoiceAA } { \transpose f c \ATvoiceCA }
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
\part ABvoiceDA { \quotearticulations \ABvoiceDA \ASvoiceAA } { \transpose f c \ABvoiceDA }
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
