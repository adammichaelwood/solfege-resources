
% BWV 315 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 315"
composer = "Johann Sebastien Bach"
tagline = "Created by Michael Ellis from digital transcriptions by Margaret Greentree (jsbchorales.net)"
}
ASvoiceAA = \relative c'{
    \set Staff.instrumentName = #"Soprano"
    \set Staff.shortInstrumentName = #"S."
    \clef treble
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    b'4     g a8 b16 c b4. a8      | % 1
    g4 fis8 g16 a g4. fis8      | % 2
    e2\fermata  c'4 b      | % 3
    e d fis,8 c' b a      | % 4
    a2 g4\fermata  b      | % 5
    g a8 b16 c b4. a8      | % 6
    g4 fis8 g16 a g4. fis8      | % 7
    e2\fermata  c'4 b      | % 8
    e d fis,8 c' b a      | % 9
    a2 g4\fermata  b      | % 10
    a b8 g a4 b8 c      | % 11
    d4 c8 b c b a4\fermata       | % 12
    r c fis, e'8 dis      | % 13
    e d c b a g' fis e      | % 14
    dis cis b4\fermata  r e      | % 15
    c b8 a b dis, e a      | % 16
    g4 fis8 e e4\fermata  s4 \bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    e4     e fis8 g16 a g8 dis e fis      | % 1
    fis e e dis e4. dis8      | % 2
    e2 g4. fis8      | % 3
    e fis fis g fis4 g      | % 4
    g fis d e      | % 5
    e fis8 g16 a g8 dis e fis      | % 6
    fis e e dis e4. dis8      | % 7
    e2 g4. fis8      | % 8
    e fis fis g fis4 g      | % 9
    g fis d g      | % 10
    a8 fis g e fis4 e      | % 11
    d e e8 d e4      | % 12
    r e dis8 e fis4      | % 13
    e8 fis g f e4 a8 b16 c      | % 14
    fis,8 e dis4 r e      | % 15
    e4. fis8 dis fis e e      | % 16
    e4 dis b s4 \bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    g'4     b c8 fis, g a b c      | % 1
    b4 b b8 g a4      | % 2
    g2 g8 a b4      | % 3
    b8 a a b c4 d      | % 4
    e d8 c b4 g      | % 5
    b c8 fis, g a b c      | % 6
    b4 b b8 g a4      | % 7
    g2 g8 a b4      | % 8
    b8 a a b c4 d      | % 9
    e d8 c b4 d      | % 10
    d d8 cis d4 gis,8 a      | % 11
    a b gis4 a8 b c4      | % 12
    r c b4. c8      | % 13
    b a g gis a b c4      | % 14
    b fis r b      | % 15
    a8 b c4 fis,8 a b a      | % 16
    b4 a8 g g4 s4 \bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    e4     e8 dis e dis e fis g a      | % 1
    b4 b, e2      | % 2
    e e4. d8      | % 3
    c c'4 b8 a4 g      | % 4
    c, d g, e'      | % 5
    e8 dis e dis e fis g a      | % 6
    b4 b, e2      | % 7
    e e4. d8      | % 8
    c c'4 b8 a4 g      | % 9
    c, d g, g'      | % 10
    fis8 d g4 d8 e d c      | % 11
    b4 e a a,      | % 12
    r a' b8 c b a      | % 13
    g fis e d c b a4      | % 14
    b b r gis'      | % 15
    a8 a, a'4~ a8 fis g c,      | % 16
    b a b4 e s4 \bar "|." 
}% end of last bar in partorvoice



\addQuote "articulations"   { \ASvoiceAA }
\book {
\layout { \scorepaper }
\score {
<<
\part ASvoiceAA { \ASvoiceAA } { \transpose g c \ASvoiceAA }
\part AAvoiceBA { \quotearticulations \AAvoiceBA \ASvoiceAA } { \transpose g c \AAvoiceBA }
\part ATvoiceCA { \quotearticulations \ATvoiceCA \ASvoiceAA } { \transpose g c \ATvoiceCA }
\part ABvoiceDA { \quotearticulations \ABvoiceDA \ASvoiceAA } { \transpose g c \ABvoiceDA }
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
\part ASvoiceAA { \ASvoiceAA } { \transpose g c \ASvoiceAA }
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
\part AAvoiceBA { \quotearticulations \AAvoiceBA \ASvoiceAA } { \transpose g c \AAvoiceBA }
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
\part ATvoiceCA { \quotearticulations \ATvoiceCA \ASvoiceAA } { \transpose g c \ATvoiceCA }
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
\part ABvoiceDA { \quotearticulations \ABvoiceDA \ASvoiceAA } { \transpose g c \ABvoiceDA }
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
