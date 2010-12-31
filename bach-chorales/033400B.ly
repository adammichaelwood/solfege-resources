
% BWV 334 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 334"
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
    g'4     g fis g a      | % 1
    bes a g\fermata  g      | % 2
    a a d c      | % 3
    bes2 a4\fermata  g      | % 4
    g fis g a      | % 5
    bes a g\fermata  g      | % 6
    a a d c      | % 7
    bes2 a4\fermata  d      | % 8
    c bes a8 bes c4      | % 9
    bes a g\fermata  bes      | % 10
    a g f8 e d e      | % 11
    f4 g a\fermata  a      | % 12
    bes c d4. c8      | % 13
    bes4 c8 bes a2      | % 14
    g2.\fermata  s4 \bar "|." 
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
    d4     ees d8 c bes4 ees      | % 1
    d d d d      | % 2
    ees d d g8 fis      | % 3
    g2 fis4 d      | % 4
    ees d8 c bes4 ees      | % 5
    d d d d      | % 6
    ees d d g8 fis      | % 7
    g2 fis4 g      | % 8
    g8 f f ees ees d c a'      | % 9
    fis g4 fis8 d4 g8 f      | % 10
    e d d cis d e f cis      | % 11
    d f4 e8 f4 f      | % 12
    f8 g a4 a d,~      | % 13
    d c8 d ees4 d8 c      | % 14
    b2. s4 \bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef "treble_8"
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    bes'4     a a g c      | % 1
    fis,8 g4 fis8 bes4 bes      | % 2
    c c b c      | % 3
    d e8 g, d'4 bes      | % 4
    a a g c      | % 5
    fis,8 g4 fis8 bes4 bes      | % 6
    c c b c      | % 7
    d e8 g, d'4 d      | % 8
    ees8 f g bes, c d g, c      | % 9
    d ees a, d bes4 d      | % 10
    cis8 d e4 a,4. g8      | % 11
    a c d c c4 c      | % 12
    d ees f fis      | % 13
    g g,~ g fis      | % 14
    d2. s4 \bar "|." 
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
    g'4     c, d ees d8 c      | % 1
    d4 d g, g'      | % 2
    g fis f ees      | % 3
    d cis d g      | % 4
    c, d ees d8 c      | % 5
    d4 d g, g'      | % 6
    g fis f ees      | % 7
    d cis d bes'~      | % 8
    bes8 a g4~ g8 f ees4      | % 9
    d8 c d4 g, g'~      | % 10
    g8 f e4 d2~      | % 11
    d8 a bes c f,4 f'8 ees      | % 12
    d ees d c bes c bes a      | % 13
    g bes ees d c a d4      | % 14
    g,2. s4 \bar "|." 
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
