
% BWV 283 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 283"
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
    e'4 e e e      | % 1
    d c b2\fermata       | % 2
    a4 gis a b8 c      | % 3
    d4 c b2\fermata       | % 4
    a4 b c8 b a4      | % 5
    a8 g f4 e2\fermata       | % 6
    d4 cis d e8 f      | % 7
    g4 f e2\fermata       | % 8
    a4 a a g      | % 9
    f e d2\fermata       | % 10
    g4 a b c      | % 11
    d e d c      | % 12
    b2\fermata  a4 b      | % 13
    c8 b a4 a8 g f4      | % 14
    e2\fermata  d4 cis      | % 15
    d e8 f g4 a      | % 16
    g f e2\fermata  \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    gis'8 a b gis a4 a      | % 1
    a8 e e4 e2      | % 2
    c8 d e4~ e8 fis gis a      | % 3
    b4. a8 a4 gis      | % 4
    a8 g f4 g4. f8      | % 5
    e4. d8 cis2      | % 6
    d8 g, a4 a8 b cis d      | % 7
    e4. d8 cis2      | % 8
    c4 f~ f8 e16 d e4~      | % 9
    e8 d4 cis8 d2      | % 10
    b8 e4 d8 d4 e      | % 11
    f8 g4 a8~ a g g4      | % 12
    g2 e8 fis g4      | % 13
    g a8 g f e d4      | % 14
    d cis d8 a bes g      | % 15
    a b c d e4 f~      | % 16
    f8 e4 d16 c b2 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    b'4 e8 d c d e c~      | % 1
    c b4 a8 a4 gis      | % 2
    a b c d8 e      | % 3
    f e e4 e2      | % 4
    c4 d c4. d8      | % 5
    a4 a a2      | % 6
    f8 d e4 f g8 a      | % 7
    bes a a4 a2      | % 8
    a8 bes c4 c4. bes8      | % 9
    a4. a16 g f2      | % 10
    g8 c4 d16 c b8 d g, c~      | % 11
    c b c e f4. e8      | % 12
    d2 c4 d      | % 13
    c4. cis8 d4 a      | % 14
    a2 a4 g8 e      | % 15
    f4 g c c~      | % 16
    c8. bes16 a8 b16 a gis2 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    e8 fis gis e a b c a      | % 1
    fis gis a a, e'2      | % 2
    f4 e8 d c4 b8 a~      | % 3
    a gis a c e2      | % 4
    f8 e d4 e f      | % 5
    cis d a2      | % 6
    bes4 a8 g f4 e8 d~      | % 7
    d cis e f a2      | % 8
    f8 g a bes c4. cis8      | % 9
    d4 a d,2      | % 10
    e'4 fis g8 f e4      | % 11
    d8 g c,4~ c8 b c e      | % 12
    g2 a4 g8 f      | % 13
    e4 f8 e d e f g      | % 14
    a2 f4 e      | % 15
    d c~ c8 bes a f      | % 16
    c'4 d e2 \bar "|."\bar "|." 
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
