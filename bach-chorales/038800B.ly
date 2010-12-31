
% BWV 388 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 388"
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
    g'4     g d g c      | % 1
    b a g\fermata  g      | % 2
    a8 b c4 b a      | % 3
    e fis g\fermata  g      | % 4
    g d g c      | % 5
    b a g\fermata  g      | % 6
    a8 b c4 b a      | % 7
    e fis g\fermata  g      | % 8
    c b a d      | % 9
    d cis d\fermata  d      | % 10
    e c d4. c8      | % 11
    b4 a g\fermata  b      | % 12
    a d, g c      | % 13
    b a g\fermata  s4 \bar "|." 
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
    d4     d a d a'      | % 1
    d, d8. c16 b4 b8 cis      | % 2
    d f e fis g4 d8 a16 b      | % 3
    c4 c b d      | % 4
    d a d a'      | % 5
    d, d8. c16 b4 b8 cis      | % 6
    d f e fis g4 d8 a16 b      | % 7
    c4 c b d      | % 8
    g8 a~ a g16 fis e4 a8 fis      | % 9
    e g~ g fis16 e fis4 g      | % 10
    g g a8 fis g a~      | % 11
    a g4 fis8 e4 e~      | % 12
    e8 d16 c b4 e8 d e fis      | % 13
    g4. fis8 d4 s4 \bar "|." 
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
    b'8 a     g4 fis g~ g8 fis      | % 1
    g4. fis8 d4 g      | % 2
    fis8 gis a4 d,8 e fis4      | % 3
    g a d, b'8 a      | % 4
    g4 fis g~ g8 fis      | % 5
    g4. fis8 d4 g      | % 6
    fis8 gis a4 d,8 e fis4      | % 7
    g a d, g8 fis      | % 8
    e' d d4 cis d      | % 9
    b8 e, a4 a d~      | % 10
    d8 c16 b c8 e d c b a      | % 11
    b16 c d4 c8 b4 g      | % 12
    a g8 a b4 a      | % 13
    d~ d8. c16 b4 s4 \bar "|." 
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
    g8 b d4 g, e'      | % 2
    d a b8 c d4      | % 3
    c8 b a4 g g8 a      | % 4
    b c d c b4 a      | % 5
    g8 b d4 g, e'      | % 6
    d a b8 c d4      | % 7
    c8 b a4 g g'8 fis      | % 8
    e fis g4~ g8 a16 g fis8 b      | % 9
    g4 a8 a, d4 b      | % 10
    c8 d e4 fis8 d e fis      | % 11
    g4 d e e      | % 12
    fis g8 fis e4 a,      | % 13
    b8 c d4 g, s4 \bar "|." 
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
