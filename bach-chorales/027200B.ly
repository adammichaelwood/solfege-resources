
% BWV 272 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 272"
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
    d8 e     f4 e f g      | % 1
    a2 a4\fermata  c      | % 2
    b a a gis      | % 3
    a2.\fermata  d,8 e      | % 4
    f4 e f g      | % 5
    a2 a4\fermata  c      | % 6
    b a a gis      | % 7
    a2.\fermata  a4      | % 8
    b c d8 c b4      | % 9
    c4. bes8 a4\fermata  a      | % 10
    g f f e      | % 11
    f2.\fermata  a8 g      | % 12
    f4 g a g      | % 13
    f2 e4\fermata  f      | % 14
    g f e2      | % 15
    d2.\fermata  s4 \bar "|." 
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
    d8 cis     d4 bes a d8 c      | % 1
    c2 c4 c      | % 2
    f fis e e      | % 3
    e2. d8 cis      | % 4
    d4 bes a d8 c      | % 5
    c2 c4 c      | % 6
    f fis e e      | % 7
    e2. e8 fis      | % 8
    gis4 a a g      | % 9
    g f8 g f4 f8 ees      | % 10
    d4 d c c      | % 11
    c2. e4      | % 12
    f4. e8 f4. e8~      | % 13
    e d d4 cis d~      | % 14
    d8 cis d4~ d cis      | % 15
    a2. s4 \bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    a'8 g     a4 g f f8 e      | % 1
    f2 f4 g      | % 2
    gis c b8 c d4      | % 3
    c2. a8 g      | % 4
    a4 g f f8 e      | % 5
    f2 f4 g      | % 6
    gis c b8 c d4      | % 7
    c2. c4      | % 8
    d e d d      | % 9
    c8 e d c c4 c      | % 10
    bes aes g4. a16 bes      | % 11
    a2. a4      | % 12
    a d8 c c4 d8 e      | % 13
    a, gis a b a4 a      | % 14
    g a a4. g8      | % 15
    f2. s4 \bar "|." 
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
    f8 e     d4. cis8 d c bes c      | % 1
    f,2 f4 e'      | % 2
    d dis e e,      | % 3
    a2. f'8 e      | % 4
    d4. cis8 d c bes c      | % 5
    f,2 f4 e'      | % 6
    d dis e e,      | % 7
    a2. a'4~      | % 8
    a a8 g fis4 g8 f      | % 9
    e c d e f4 f,      | % 10
    bes b c c,      | % 11
    f2. cis'4      | % 12
    d8 c bes c f, a b cis      | % 13
    d bes a gis a4 d      | % 14
    e f8 g a4 a,      | % 15
    d2. s4 \bar "|." 
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
