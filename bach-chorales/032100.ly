
% BWV 321 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 321"
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
    \time 3/4 
    d'4 bes d      | % 1
    ees2 d4      | % 2
    c2 bes4      | % 3
    c2 c4\fermata       | % 4
    d d d      | % 5
    g,2 a4      | % 6
    bes2 bes4      | % 7
    a2.\fermata       | % 8
    d4 bes d      | % 9
    ees2 d4      | % 10
    c2 bes4      | % 11
    c2 c4\fermata       | % 12
    d d d      | % 13
    g,2 a4      | % 14
    bes2 bes4      | % 15
    a2.\fermata       | % 16
    f4 c' c      | % 17
    c2 d4      | % 18
    ees2 ees4      | % 19
    d2.\fermata       | % 20
    f4 f f      | % 21
    ees2.      | % 22
    d4 d c      | % 23
    bes2.\fermata  \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 3/4 
    f4 f bes~      | % 1
    bes a f      | % 2
    g f4. e8      | % 3
    a2 a4      | % 4
    bes f8 a g f      | % 5
    e2 f4~      | % 6
    f e8 d e4      | % 7
    f2.      | % 8
    f4 f bes~      | % 9
    bes a f      | % 10
    g f4. e8      | % 11
    a2 a4      | % 12
    bes f8 a g f      | % 13
    e2 f4~      | % 14
    f e8 d e4      | % 15
    f2.      | % 16
    c4 c e      | % 17
    f2 bes4~      | % 18
    bes a8 g a4      | % 19
    bes2.      | % 20
    f4 bes8 a bes4      | % 21
    g c a      | % 22
    bes bes4. a8      | % 23
    f2. \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 3/4 
    bes'4 bes f'      | % 1
    ees c bes~      | % 2
    bes a bes      | % 3
    f'2 f4      | % 4
    f bes,8 c d4      | % 5
    c2 c4      | % 6
    d bes c      | % 7
    c2.      | % 8
    bes4 bes f'      | % 9
    ees c bes~      | % 10
    bes a bes      | % 11
    f'2 f4      | % 12
    f bes,8 c d4      | % 13
    c2 c4      | % 14
    d bes c      | % 15
    c2.      | % 16
    a4 g g      | % 17
    a2 f'4      | % 18
    g ees f      | % 19
    f2.      | % 20
    d4 bes8 c d4      | % 21
    c2 f4      | % 22
    f2 f8. ees16      | % 23
    d2. \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 3/4 
    bes4 d bes      | % 1
    c f bes      | % 2
    e, f g      | % 3
    f2 f4      | % 4
    bes, d bes      | % 5
    c bes a      | % 6
    g2 c4      | % 7
    f,2.      | % 8
    bes4 d bes      | % 9
    c f bes      | % 10
    e, f g      | % 11
    f2 f4      | % 12
    bes, d bes      | % 13
    c bes a      | % 14
    g2 c4      | % 15
    f,2.      | % 16
    f'4 e c      | % 17
    f ees d      | % 18
    c2 f4      | % 19
    bes,2.      | % 20
    bes4 d bes      | % 21
    c a f      | % 22
    bes d f      | % 23
    bes,2. \bar "|."\bar "|." 
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
