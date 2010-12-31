
% BWV 345 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 345"
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
    g'4     a a8 bes16 c bes8 g d'4~      | % 1
    d8 c16 bes a8 g fis4\fermata  a      | % 2
    bes c8 d16 ees d8 bes f'4~      | % 3
    f8 e16 d c8 bes a4\fermata  d      | % 4
    cis d e8 f16 g f8 e      | % 5
    e2 d4\fermata  g,      | % 6
    a a8 bes16 c bes8 g d'4~      | % 7
    d8 c16 bes a8 g fis4\fermata  a      | % 8
    bes c8 d16 ees d8 bes f'4~      | % 9
    f8 e16 d c8 bes a4\fermata  d      | % 10
    cis d e8 f16 g f8 e      | % 11
    e2 d4\fermata  d      | % 12
    bes8 a b d g ees c4      | % 13
    d8 f ees d ees4\fermata  a,      | % 14
    d g, c8 d16 ees d8 c      | % 15
    bes4 a8 g g4\fermata  s4 \bar "|." 
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
    d4     ees d d4. d8      | % 1
    g4 fis8 g d4 fis      | % 2
    g f f4. f8      | % 3
    bes4 c8 e, f4 f      | % 4
    g f e d      | % 5
    e8 f g4 fis d      | % 6
    ees d d4. d8      | % 7
    g4 fis8 g d4 fis      | % 8
    g f f4. f8      | % 9
    bes4 c8 e, f4 f      | % 10
    g f e d      | % 11
    e8 f g4 fis a      | % 12
    g g g4. ees8      | % 13
    aes4 g g fis      | % 14
    g8 f e4 fis8 g a4~      | % 15
    a8 g fis4 d s4 \bar "|." 
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
    bes'4     c8 bes a4 g4. a8      | % 1
    bes4 c8 bes a4 d      | % 2
    d c bes4. c8      | % 3
    d4 g,8 c c4 bes      | % 4
    bes a a a8 d      | % 5
    d cis16 b cis4 a bes      | % 6
    c8 bes a4 g4. a8      | % 7
    bes4 c8 bes a4 d      | % 8
    d c bes4. c8      | % 9
    d4 g,8 c c4 bes      | % 10
    bes a a a8 d      | % 11
    d cis16 b cis4 a d      | % 12
    d d c4. c8      | % 13
    c4 b c d      | % 14
    d c c8 bes a d      | % 15
    d4 c8 bes bes4 s4 \bar "|." 
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
    g'4     g fis g4. f8      | % 1
    ees d ees c d4 d      | % 2
    g a bes4. a8      | % 3
    g f e c f4 bes      | % 4
    e, f cis d      | % 5
    a' a, d g      | % 6
    g fis g4. f8      | % 7
    ees d ees c d4 d      | % 8
    g a bes4. a8      | % 9
    g f e c f4 bes      | % 10
    e, f cis d      | % 11
    a' a, d fis      | % 12
    g f ees4. aes8      | % 13
    f d g4 c, c'      | % 14
    bes8 a bes c a g fis4      | % 15
    g d g, s4 \bar "|." 
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
