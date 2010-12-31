
% BWV 378 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 378"
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
    g'4     g d g a      | % 1
    b2\fermata  r4 d      | % 2
    e d c4. d8      | % 3
    b2\fermata  r4 d      | % 4
    c b a g      | % 5
    a2\fermata  r4 b      | % 6
    g c b a      | % 7
    g2\fermata  r4 b8 c      | % 8
    d4 d c b      | % 9
    a2\fermata  r4 b      | % 10
    g g a b      | % 11
    c2 b4\fermata  d      | % 12
    c a b c      | % 13
    d2\fermata  r4 g,      | % 14
    a b c b      | % 15
    a2 g4\fermata  s4 \bar "|." 
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
    d4     d a d e8 fis      | % 1
    g2 r4 g~      | % 2
    g8 fis g4~ g8 fis16 e fis4      | % 3
    g2 r4 g~      | % 4
    g8 fis g4~ g8 fis g g,      | % 5
    d'2 r4 fis      | % 6
    fis8 e16 fis g8 a~ a g g fis      | % 7
    d2 r4 g      | % 8
    g g g8 fis g4      | % 9
    g fis r fis      | % 10
    e d e e      | % 11
    e2 e4 d8 f      | % 12
    e g4 fis8 g4 g      | % 13
    g2 r4 e~      | % 14
    e8 fis g4~ g8 fis g4      | % 15
    g8 fis16 e fis4 d s4 \bar "|." 
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
    b'8 a     g4 fis g c      | % 1
    d2 r4 d      | % 2
    c d e8 d16 c d4      | % 3
    d2 r4 b      | % 4
    c d d4. cis8      | % 5
    fis2 r4 b,      | % 6
    b e8 d d4 d8. c16      | % 7
    b2 r4 d      | % 8
    d8 c b4 c d      | % 9
    d2 r4 b      | % 10
    b8 c d4 c b~      | % 11
    b8 a16 gis a4 a8 gis g4      | % 12
    g d' d e      | % 13
    d2 r4 b      | % 14
    c8 d d e16 d c4 d      | % 15
    e d8. c16 b4 s4 \bar "|." 
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
    g8 a     b c d c b4 a      | % 1
    g2 r4 b      | % 2
    c4. b8 a4 d,      | % 3
    g2 r4 g      | % 4
    a b8 c d4 e      | % 5
    d2 r4 dis      | % 6
    e4. fis8 g4 d      | % 7
    g,2 r4 g8 a      | % 8
    b4. e8 a,4 b8 c      | % 9
    d2 r4 dis      | % 10
    e8 d c b c b a gis      | % 11
    a b c d e4 b      | % 12
    c d g8 fis e4      | % 13
    b2 r4 e8 d      | % 14
    c4 b8 e a,4 b8 g      | % 15
    c4 d g, s4 \bar "|." 
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
