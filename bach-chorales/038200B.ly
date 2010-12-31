
% BWV 382 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 382"
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
    \partial 4
    d4     a' a g d'      | % 1
    c b a\fermata  c      | % 2
    b a b2      | % 3
    a2.\fermata  b4      | % 4
    c b c a      | % 5
    g8 f e4 d\fermata  a'~      | % 6
    a g f8 e d4      | % 7
    c2\fermata  a'4 f      | % 8
    c' a g8 f g4      | % 9
    a\fermata  g f8 e d4      | % 10
    c f e8 d4 cis8      | % 11
    d1\fermata  \bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    a4     d f e fis8 gis      | % 1
    a4. gis8 e4 a~      | % 2
    a8 gis a4 f e8 d      | % 3
    c2. g'4      | % 4
    g g g f      | % 5
    e8 d cis4 a e'8 d      | % 6
    e dis e f a,4 bes      | % 7
    a2 e'4 d      | % 8
    c8 g'4 f8 e d cis d      | % 9
    e4 e d8 c b4      | % 10
    a8 b cis d e f g4~      | % 11
    g fis8 e fis2\fermata  \bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    f8 g     a4 d8 c b4 a8 b      | % 1
    c d16 e f8 e c4 e      | % 2
    f8 e16 d c b a8~ a d16 b gis4      | % 3
    a2. d4      | % 4
    e d c4. d8      | % 5
    cis d a g f4 a      | % 6
    g8 f4 e8 f2      | % 7
    f a4 a      | % 8
    g c8 d e f e d      | % 9
    cis4 a a8 g f4      | % 10
    e a2.      | % 11
    bes4 a8 g a2 \bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    d8 e     f e f d e d c b      | % 1
    a c d e a,4 a'      | % 2
    d,8 e f e d b e4      | % 3
    a,2. g'8 f      | % 4
    e f g f e c f d      | % 5
    bes' g a4 d, cis8 b      | % 6
    cis a b cis d c d e      | % 7
    f2 cis4 d      | % 8
    e f g8 a bes4      | % 9
    a cis, d8 e gis,4      | % 10
    a4. b8 cis d a4      | % 11
    d,1 \bar "|." 
}% end of last bar in partorvoice



\addQuote "articulations"   { \ASvoiceAA }
\book {
\layout { \scorepaper }
\score {
<<
\part ASvoiceAA { \ASvoiceAA } { \transpose c c \ASvoiceAA }
\part AAvoiceBA { \AAvoiceBA } { \transpose c c \AAvoiceBA }
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
\part AAvoiceBA { \AAvoiceBA } { \transpose c c \AAvoiceBA }
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
