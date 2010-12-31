
% BWV 338 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 338"
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
    a'4     c b a a      | % 1
    g f e\fermata  e      | % 2
    fis gis a c      | % 3
    b2 a4\fermata  a      | % 4
    c b a a      | % 5
    g f e\fermata  e      | % 6
    fis gis a c      | % 7
    b2 a4\fermata  b      | % 8
    b b b g      | % 9
    a b c\fermata  b      | % 10
    b b c b      | % 11
    a a gis\fermata  gis      | % 12
    a b c d      | % 13
    b2 a4\fermata  s4 \bar "|." 
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
    e4     a a8 g f4 f~      | % 1
    f8 e~ e d cis4 e      | % 2
    d8. e16 f8 e e fis16 gis a4      | % 3
    a gis e e      | % 4
    a a8 g f4 f~      | % 5
    f8 e~ e d cis4 e      | % 6
    d8. e16 f8 e e fis16 gis a4      | % 7
    a gis e g      | % 8
    fis g fis~ fis8 e~      | % 9
    e d~ d e e4 e      | % 10
    fis16 g a4 gis8 a4. g8~      | % 11
    g f16 e d4 e e      | % 12
    e e~ e8 a16 gis a4~      | % 13
    a8 gis16 fis gis4 e s4 \bar "|." 
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
    c'4     e e8. d16 c4 d~      | % 1
    d8 a a4 a a      | % 2
    a d8 c16 b c8 d e4      | % 3
    f8 d b e16 d c4 c      | % 4
    e e8. d16 c4 d~      | % 5
    d8 a a4 a a      | % 6
    a d8 c16 b c8 d e4      | % 7
    f8 d b e16 d c4 e      | % 8
    dis e b b8 c~      | % 9
    c d16 c b a b8 a4 g      | % 10
    b e e e8. d16      | % 11
    c4 b8 a b4 b      | % 12
    c b a~ a8 f'      | % 13
    e b e d cis4 s4 \bar "|." 
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
    a4     a' e f8 e d c      | % 1
    b cis d4 a c~      | % 2
    c8 d16 c b8 e c b a c      | % 3
    d b e4 a, a      | % 4
    a' e f8 e d c      | % 5
    b cis d4 a c~      | % 6
    c8 d16 c b8 e c b a c      | % 7
    d b e4 a, e'      | % 8
    b'8 a g fis e dis e4      | % 9
    fis gis a e      | % 10
    dis d c8 d e4      | % 11
    f8 e f4 e e8 d      | % 12
    c b a gis a4 f'8 d      | % 13
    e2 a,4 s4 \bar "|." 
}% end of last bar in partorvoice



\addQuote "articulations"   { \ASvoiceAA }
\book {
\layout { \scorepaper }
\score {
<<
\part ASvoiceAA { \ASvoiceAA } { \transpose c c \ASvoiceAA }
\part AAvoiceBA { \quotearticulations \AAvoiceBA \ASvoiceAA } { \transpose c c \AAvoiceBA }
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
\part AAvoiceBA { \quotearticulations \AAvoiceBA \ASvoiceAA } { \transpose c c \AAvoiceBA }
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
