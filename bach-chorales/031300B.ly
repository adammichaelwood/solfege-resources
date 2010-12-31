
% BWV 313 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 313"
composer = "Johann Sebastien Bach"
tagline = "Created by Michael Ellis from digital transcriptions by Margaret Greentree (jsbchorales.net)"
}
ASvoiceAA = \relative c'{
    \set Staff.instrumentName = #"Soprano"
    \set Staff.shortInstrumentName = #"S."
    \clef treble
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    d'4     d d d c      | % 1
    bes2 a4\fermata  d      | % 2
    d8 ees f4 ees d      | % 3
    c2 d4\fermata  d      | % 4
    d d d c      | % 5
    bes2 a4\fermata  d      | % 6
    d8 ees f4 ees d      | % 7
    c2 d4\fermata  d      | % 8
    c bes a g      | % 9
    a bes a\fermata  d      | % 10
    bes bes c d      | % 11
    ees d c c      | % 12
    d4. c8 b4\fermata  s4 \bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    g'8 fis     g4 fis8 g a g4 fis8      | % 1
    g fis g4 fis f      | % 2
    g f c'~ c8 bes      | % 3
    bes4 a bes g8 fis      | % 4
    g4 fis8 g a g4 fis8      | % 5
    g fis g4 fis f      | % 6
    g f c'~ c8 bes      | % 7
    bes4 a bes bes8 a      | % 8
    g4 g~ g8 fis g4      | % 9
    c,8 a' d, e fis4 a~      | % 10
    a g8 f~ f ees aes g      | % 11
    g4 g a a8 g      | % 12
    fis g4 fis8 g4 s4 \bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    bes'8 c     d c16 bes a4~ a8 bes c d      | % 1
    d4 d d d8 c      | % 2
    bes4 bes~ bes8 a16 g f8 f'      | % 3
    g4 f f bes,8 c      | % 4
    d c16 bes a4~ a8 bes c d      | % 5
    d4 d d d8 c      | % 6
    bes4 bes~ bes8 a16 g f8 f'      | % 7
    g4 f f f      | % 8
    ees8 d e4 a,8 d16 c bes8 c16 bes      | % 9
    a8 d16 c bes a g8 d'4 d      | % 10
    d ees8 f g4 f8 d~      | % 11
    d c d e fis a, d ees      | % 12
    d c16 bes a8 d d4 s4 \bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    g8 a     bes c d e fis g a d,      | % 1
    g a bes c d4 bes8 a      | % 2
    g f ees d c f bes, d      | % 3
    ees c f4 bes, g8 a      | % 4
    bes c d e fis g a d,      | % 5
    g a bes c d4 bes8 a      | % 6
    g f ees d c f bes, d      | % 7
    ees c f4 bes, bes      | % 8
    c4. cis8 d4 ees8 e      | % 9
    f fis g cis, d4 fis      | % 10
    g8 f ees d c4. b8      | % 11
    c c'4 bes8 a g fis g      | % 12
    d2 g4 s4 \bar "|." 
}% end of last bar in partorvoice



\addQuote "articulations"   { \ASvoiceAA }
\book {
\layout { \scorepaper }
\score {
<<
\part ASvoiceAA { \ASvoiceAA } { \transpose bes c \ASvoiceAA }
\part AAvoiceBA { \quotearticulations \AAvoiceBA \ASvoiceAA } { \transpose bes c \AAvoiceBA }
\part ATvoiceCA { \quotearticulations \ATvoiceCA \ASvoiceAA } { \transpose bes c \ATvoiceCA }
\part ABvoiceDA { \quotearticulations \ABvoiceDA \ASvoiceAA } { \transpose bes c \ABvoiceDA }
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
\part ASvoiceAA { \ASvoiceAA } { \transpose bes c \ASvoiceAA }
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
\part AAvoiceBA { \quotearticulations \AAvoiceBA \ASvoiceAA } { \transpose bes c \AAvoiceBA }
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
\part ATvoiceCA { \quotearticulations \ATvoiceCA \ASvoiceAA } { \transpose bes c \ATvoiceCA }
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
\part ABvoiceDA { \quotearticulations \ABvoiceDA \ASvoiceAA } { \transpose bes c \ABvoiceDA }
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
