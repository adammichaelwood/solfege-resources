
% BWV 14 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 14"
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
    g'8 a     bes4 b c d      | % 1
    c b c\fermata  c      | % 2
    bes8 a g a bes c d4      | % 3
    c8 bes c4 bes\fermata  g8 a      | % 4
    bes4 b c d      | % 5
    c b c\fermata  c      | % 6
    bes8 a g a bes c d4      | % 7
    c8 bes c4 bes\fermata  c      | % 8
    d c8 bes a4 bes      | % 9
    c8 bes a4 g\fermata  g      | % 10
    c b c d8 c      | % 11
    bes a g4 f\fermata  f      | % 12
    bes c d c8 bes      | % 13
    a g a4 g\fermata  s4 \bar "|." 
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
    d4     g g g g      | % 1
    ees d c g'8 a      | % 2
    bes bes,4 c8 d ees f g      | % 3
    a bes4 a8 f4 ees      | % 4
    f g g g      | % 5
    ees d c g'8 a      | % 6
    bes bes,4 c8 d ees f g      | % 7
    a bes4 a8 f4 f8 ees      | % 8
    d e f g c,4 f      | % 9
    ees a,8 d d4 d      | % 10
    g8 aes g f ees4 d8 fis      | % 11
    g d4 cis8 d4 d      | % 12
    d g fis8 d g4      | % 13
    g fis d s4 \bar "|." 
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
    bes'8 c     d4 d ees d      | % 1
    g,8 g'4 f8 ees4 ees      | % 2
    f g f8 ees d bes      | % 3
    f'4 g8 f16 ees d4 bes8 c      | % 4
    d4 d ees d      | % 5
    g,8 g'4 f8 ees4 ees      | % 6
    f g f8 ees d bes      | % 7
    f'4 g8 f16 ees d4 c~      | % 8
    c8 bes a g f4. g8      | % 9
    a g4 fis8 bes4 b      | % 10
    c d g,8 a bes a      | % 11
    g a bes a a4 bes      | % 12
    bes8 a g4 a8 bes16 c d4      | % 13
    d4. c8 b4 s4 \bar "|." 
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
    g'4     g8 aes g f ees d c b      | % 1
    c ees g4 c, c      | % 2
    d ees d8 c bes ees~      | % 3
    ees d ees f bes,4 ees      | % 4
    g8 aes g f ees d c b      | % 5
    c ees g4 c, c      | % 6
    d ees d8 c bes ees~      | % 7
    ees d ees f bes,4 a      | % 8
    bes8 c d e f ees d4      | % 9
    c d g, g'8 f      | % 10
    ees4 d c g      | % 11
    g'8 f e a, d4 bes'8 a      | % 12
    g f ees d c bes a g      | % 13
    d'2 g,4 s4 \bar "|." 
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
