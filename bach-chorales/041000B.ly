
% BWV 410 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 410"
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
    g'4 a bes bes      | % 1
    c bes a a\fermata       | % 2
    bes c d d      | % 3
    ees d8 c c2      | % 4
    bes\fermata  d4 c      | % 5
    d d c bes      | % 6
    c c\fermata  c d      | % 7
    ees ees d c8 d      | % 8
    d2 c\fermata       | % 9
    g4 a bes bes      | % 10
    c c d d\fermata       | % 11
    d d ees d      | % 12
    c bes8 a a2      | % 13
    g1\fermata  \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 4/4 
    d4 d d d      | % 1
    g8 fis g4 g fis      | % 2
    g f f f      | % 3
    ees8 f g4 f2      | % 4
    f f4 f      | % 5
    f bes bes8 a bes4      | % 6
    bes a a g      | % 7
    g g g8 f ees4      | % 8
    aes g8 f ees2      | % 9
    ees4 d d8 ees f4      | % 10
    g f f f      | % 11
    d g g8 c4 b8      | % 12
    c fis, g4 g fis      | % 13
    d1 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 4/4 
    bes'4 a~ a8 g16 fis g4      | % 1
    g8 a bes g d'4 d      | % 2
    d c~ c8 bes16 a bes4      | % 3
    bes bes bes a      | % 4
    d2 bes4 c~      | % 5
    c bes g'8 ees f4      | % 6
    f f f f      | % 7
    ees8 d c4 b c      | % 8
    c b g2      | % 9
    c4 c bes bes~      | % 10
    bes a bes bes      | % 11
    a8 c c bes~ bes aes16 g f4      | % 12
    g8 a bes ees d4. c8      | % 13
    b1 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 4/4 
    g'4 fis g4. f8      | % 1
    ees4 d8 c d4 d      | % 2
    g a bes4. a8      | % 3
    g4 ees f f,      | % 4
    bes2 bes'4 a      | % 5
    bes8 a g f ees c d bes      | % 6
    f'4 f, f' b,      | % 7
    c8 d ees f g4 aes8 g      | % 8
    f4 g c,2      | % 9
    c'4 fis, g d      | % 10
    ees f bes,2      | % 11
    fis4 g c d      | % 12
    ees d8 c d4 d,      | % 13
    g1 \bar "|."\bar "|." 
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
