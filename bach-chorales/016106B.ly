
% BWV 161 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 161"
composer = "Johann Sebastien Bach"
tagline = "Created by Michael Ellis from digital transcriptions by Margaret Greentree (jsbchorales.net)"
}
ARecvoiceAA = \relative c'{
    \set Staff.instrumentName = #"Recorders"
    \set Staff.shortInstrumentName = #"Rec"
    \clef treble
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    r8 g''~     g16 c, f8~ f16 e32 d e8~ e16 a, d8~ d16 c32 b c8~      | % 1
    c16 e d c b c b a gis a gis f e8 b''~      | % 2
    b16 d c b a gis a8~ a16 c b a g f g8~      | % 3
    g16 bes a g f e f8 e4 r8 g~      | % 4
    g16 c, f8~ f16 e32 d e8~ e16 a, d8~ d16 c32 b c8~      | % 5
    c16 e d c b c b a gis a gis f e8 b''~      | % 6
    b16 d c b a gis a8~ a16 c b a g f g8~      | % 7
    g16 bes a g f e f8 e4 a~      | % 8
    a16 c b a g f g8~ g16 bes a g f e f8~      | % 9
    f16 a g f e f e d c g' a b c8 g~      | % 10
    g16 c, f8~ f16 e d e~ e g f e d cis d8~      | % 11
    d16 f e d c b d c~ c d c b a8 a'~      | % 12
    a16 c b a g a g f e2~      | % 13
    e16 g f e d cis d8~ d16 f e d cis d b cis      | % 14
    d a d8~ d16 c32 b c8~ c16 e d c b c d8~      | % 15
    d16 f e d c e a8~ a gis\fermata  s4 \bar "|." 
}% end of last bar in partorvoice

 

ASvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Soprano"
    \set Staff.shortInstrumentName = #"S."
    \clef treble
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    e4     a g f e      | % 1
    d2 e4 b'      | % 2
    c c b b      | % 3
    a2. e4      | % 4
    a g f e      | % 5
    d2 e4 b'      | % 6
    c c b b      | % 7
    a2. c4      | % 8
    b8 c16 d g,4 a b      | % 9
    c2 c4 g      | % 10
    a g a f      | % 11
    e2 r4 c'      | % 12
    b d c b      | % 13
    a2 b4 e,      | % 14
    f e d g      | % 15
    e2.\fermata  s4 \bar "|." 
}% end of last bar in partorvoice

 

AAvoiceCA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    e4     e8 d d4 c8 d c b      | % 1
    a2 b4 e      | % 2
    e f f e8 d      | % 3
    cis4 d c e      | % 4
    e8 d d4 c8 d c b      | % 5
    a2 b4 e      | % 6
    e f f e8 d      | % 7
    cis4 d c a'8 g      | % 8
    f4 e e8 c f4      | % 9
    g4. f8 e4 c      | % 10
    c c8 bes a4 a      | % 11
    a2 r4 e'      | % 12
    e d e8 fis g gis      | % 13
    a4 a, e' e8 cis      | % 14
    a b c4 d d8 c      | % 15
    b4~ b8 b16 a b4\fermata  s4 \bar "|." 
}% end of last bar in partorvoice

 

ATvoiceDA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    g'8 b     a c b4 c8 g g4      | % 1
    a8 f d d' gis,4 gis      | % 2
    a4. c8 d d, g f      | % 3
    e4 f8. g16 a4 g8 b      | % 4
    a c b4 c8 g g4      | % 5
    a8 f d d' d b gis4      | % 6
    a4. c8 d d, g f      | % 7
    e4 f8. g16 a4 e'      | % 8
    d d8 c c4 d      | % 9
    g, a8 b c4 c      | % 10
    f, g e f8 g      | % 11
    a2 r4 a      | % 12
    b b b8 a e' d      | % 13
    c cis d4 g, a8 g      | % 14
    f g a4 a b      | % 15
    b8 gis e c' b4 s4 \bar "|." 
}% end of last bar in partorvoice

 

ABvoiceEA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    e4     f g a,8 b c4      | % 1
    f,2 e4 e'      | % 2
    a8 g f e d b e4      | % 3
    a,2. e'4      | % 4
    f g a,8 b c4      | % 5
    f,2 e4 e'      | % 6
    a8 g f e d b e4      | % 7
    a,2. a'4      | % 8
    d, e f d      | % 9
    c2 c4 e      | % 10
    f c cis d      | % 11
    a2 r4 a      | % 12
    e' b c8 d e4      | % 13
    f2 e4 a      | % 14
    d, a8 g f fis g4      | % 15
    gis a e s4 \bar "|." 
}% end of last bar in partorvoice



\addQuote "articulations"   { \ARecvoiceAA }
\book {
\layout { \scorepaper }
\score {
<<
\part ARecvoiceAA { \ARecvoiceAA } { \transpose c c \ARecvoiceAA }
\part ASvoiceBA { \ASvoiceBA } { \transpose c c \ASvoiceBA }
\part AAvoiceCA { \AAvoiceCA } { \transpose c c \AAvoiceCA }
\part ATvoiceDA { \quotearticulations \ATvoiceDA \ARecvoiceAA } { \transpose c c \ATvoiceDA }
\part ABvoiceEA { \quotearticulations \ABvoiceEA \ARecvoiceAA } { \transpose c c \ABvoiceEA }
>>
}
\score {
<<
\new Voice = ARecvoiceAA \ARecvoiceAA
\new Voice = ASvoiceBA \ASvoiceBA
\new Voice = AAvoiceCA \AAvoiceCA
\new Voice = ATvoiceDA \ATvoiceDA
\new Voice = ABvoiceEA \ABvoiceEA
>>

        \midi   { 
        \context { \Staff  \remove "Staff_performer" }
        \context { \Voice  \consists "Staff_performer" }
        } 
   }
} %%end of book

#(define output-suffix "Recorders")
\book {
\layout { \partpaper }
\score {
<<
\part ARecvoiceAA { \ARecvoiceAA } { \transpose c c \ARecvoiceAA }
>>
}
\score {
<<
\new Voice = ARecvoiceAA \ARecvoiceAA
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
\part ASvoiceBA { \ASvoiceBA } { \transpose c c \ASvoiceBA }
>>
}
\score {
<<
\new Voice = ASvoiceBA \ASvoiceBA
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
\part AAvoiceCA { \AAvoiceCA } { \transpose c c \AAvoiceCA }
>>
}
\score {
<<
\new Voice = AAvoiceCA \AAvoiceCA
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
\part ATvoiceDA { \quotearticulations \ATvoiceDA \ARecvoiceAA } { \transpose c c \ATvoiceDA }
>>
}
\score {
<<
\new Voice = ATvoiceDA \ATvoiceDA
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
\part ABvoiceEA { \quotearticulations \ABvoiceEA \ARecvoiceAA } { \transpose c c \ABvoiceEA }
>>
}
\score {
<<
\new Voice = ABvoiceEA \ABvoiceEA
>>

        \midi   { 
        \context { \Staff  \remove "Staff_performer" }
        \context { \Voice  \consists "Staff_performer" }
        } 
   }
} %%end of book
