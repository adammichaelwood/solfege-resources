
% BWV 305 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 305"
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
    e4     g g a b      | % 1
    c b a\fermata  g      | % 2
    c b c a      | % 3
    g f e\fermata  e      | % 4
    g g a b      | % 5
    c b a\fermata  g      | % 6
    c b c a      | % 7
    g f e\fermata  e      | % 8
    a a g c      | % 9
    b a g\fermata  g      | % 10
    c g a e      | % 11
    a8 g f4 e\fermata  e      | % 12
    a a g8 f e4      | % 13
    f d c\fermata  c      | % 14
    g'2 a4 b      | % 15
    c g a g      | % 16
    f4. f8 e4\fermata  s4 \bar "|." 
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
    b4     e e e f8 e      | % 1
    e a4 gis8 e4 e8 f      | % 2
    g a~ a g16 f g4. f8~      | % 3
    f e~ e d16 c b4 b      | % 4
    e e e f8 e      | % 5
    e a4 gis8 e4 e8 f      | % 6
    g a~ a g16 f g4. f8~      | % 7
    f e~ e d16 c b4 c      | % 8
    f f f8 e16 d e8 fis      | % 9
    g16 d g4 fis8 d4 e      | % 10
    e~ e8 d c b cis d      | % 11
    e4~ e8 d~ d cis c4      | % 12
    c8 ees4 d8 d4 c      | % 13
    c~ c8 b g4 g      | % 14
    d' e8 d c4 d      | % 15
    e8 f g e f4~ f8 e~      | % 16
    e d~ d c b4 s4 \bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef "treble_8"
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    g'4     b b c d      | % 1
    c8 e f e16 d c4 b      | % 2
    e f8 e16 d c4 c      | % 3
    c8. bes16 a8 b16 a gis4 g      | % 4
    b b c d      | % 5
    c8 e f e16 d c4 b      | % 6
    e f8 e16 d c4 c      | % 7
    c8. bes16 a8 b16 a gis4 a      | % 8
    c d~ d8 c g a      | % 9
    d, d' e d16 c b4 c      | % 10
    c c8 bes a4 a      | % 11
    a a a a      | % 12
    a8 c4 b16 a b4 c8 b      | % 13
    a4 g8. f16 e4 e      | % 14
    g c8 d e f g4      | % 15
    g, c c c8. bes16      | % 16
    a8 b16 c b8 a gis4 s4 \bar "|." 
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
    e4~     e8 f e d c a'4 gis8      | % 1
    a c, d e a,4 e'8 d      | % 2
    c4 d8 g e c f4      | % 3
    c d e e~      | % 4
    e8 f e d c a'4 gis8      | % 5
    a c, d e a,4 e'8 d      | % 6
    c4 d8 g e c f4      | % 7
    c d e a8 g      | % 8
    f e d c b c b a      | % 9
    g b c d g,4 c8 b      | % 10
    a b c e, f g a b      | % 11
    cis a d4 a a'8 g      | % 12
    f4 fis g a8 g      | % 13
    f d g g, c4 c      | % 14
    b c8 b a4 g8 f      | % 15
    e d e c f a c4      | % 16
    d2 e4 s4 \bar "|." 
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
