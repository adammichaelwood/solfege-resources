
% BWV 361 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 361"
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
    d'4 d8 ees f ees d4      | % 1
    c4. c8 c2\fermata       | % 2
    d4 ees8 d c4. bes8      | % 3
    bes2\fermata  a8 g a bes      | % 4
    c bes a4 g4. g8      | % 5
    g2\fermata  a4 bes8 a      | % 6
    g4. f8 f2\fermata       | % 7
    d'4 d8 ees f4 ees8 d      | % 8
    c4. c8 c2\fermata       | % 9
    d4 ees8 d c4. bes8      | % 10
    bes2\fermata  ees8 d ees f      | % 11
    d c d ees c4. bes8      | % 12
    bes1\fermata  \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 4/4 
    f4 g f bes8 a      | % 1
    g4 f8 e f2      | % 2
    f4 ees8 f g4 f16 ees d ees      | % 3
    d2 c4 f      | % 4
    f f~ f8 e d4      | % 5
    e2 e4 d      | % 6
    d c c2      | % 7
    c4 bes c f      | % 8
    g8 f g4 f2      | % 9
    f4 ees8 f g4 a      | % 10
    g2 g4 f      | % 11
    f bes bes a      | % 12
    f1 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef "treble_8"
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 4/4 
    bes'8 a bes c d c bes4      | % 1
    bes a8 g a2      | % 2
    bes4 bes bes a      | % 3
    f2 f4 c'      | % 4
    c c c c8 b      | % 5
    c2 a8 g f4      | % 6
    f e a2      | % 7
    a'4 g f bes,      | % 8
    ees4. ees8 ees2      | % 9
    d8 c bes4 bes a8 d      | % 10
    d2 c4 c      | % 11
    c bes g' f8 ees      | % 12
    d1 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 4/4 
    bes'4 g d g8 f      | % 1
    e d c4 f2      | % 2
    bes8 a g f ees4 f      | % 3
    bes,2 f'8 e f g      | % 4
    a g a bes c4 g      | % 5
    c,2 cis4 d8 c      | % 6
    bes4 c f2      | % 7
    fis4 g a bes      | % 8
    bes8 a bes g a2      | % 9
    bes8 a g f e4 fis      | % 10
    g2 c8 bes a f      | % 11
    bes a g f ees4 f      | % 12
    bes,1 \bar "|."\bar "|." 
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
