
% BWV 292 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 292"
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
    g'4 g a b      | % 1
    c2 c\fermata       | % 2
    e4 d c b      | % 3
    a2 g\fermata       | % 4
    g4 g a b      | % 5
    c g g2\fermata       | % 6
    a4 g f e      | % 7
    d d c2\fermata       | % 8
    c'4 d c b      | % 9
    a2 g\fermata       | % 10
    g4 g a b      | % 11
    c g g2\fermata       | % 12
    a4 g f e      | % 13
    d2 c\fermata  \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    e4 d e8 fis g4      | % 1
    g f~ f e      | % 2
    g fis8 g16 fis e8 a d, c16 d      | % 3
    e8 c a d16 c b2      | % 4
    e4 e e8 fis g4      | % 5
    g8 f~ f e16 d e2      | % 6
    f8 e d e16 d c8 b c4~      | % 7
    c c8 b g2      | % 8
    g'4 g~ g8 fis g4      | % 9
    g fis g2      | % 10
    e8 f g4~ g8 f16 e f4      | % 11
    f8 e d4 c2      | % 12
    c8 f4 e8~ e d c4~      | % 13
    c8 b16 a b4 g2 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    c'4 g c d      | % 1
    c8 bes a4 g2      | % 2
    c8 b a b16 a g8 fis g4~      | % 3
    g4. fis8 d2      | % 4
    b'4 b c d      | % 5
    c d8 g, c2      | % 6
    c4 b8 c16 b a8 d g, f16 g      | % 7
    a8 f d g16 f e2      | % 8
    e'4 d g,8 a b c16 d      | % 9
    e8 c a d16 c b2      | % 10
    c4 c c d      | % 11
    g, g8. f16 e2      | % 12
    f4 g8 c16 bes a4 a~      | % 13
    a8 d, d g16 f e2 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    c4. b8 a4 g8 f      | % 1
    e4 f c2      | % 2
    c'4. b8~ b a g a16 b      | % 3
    c8 a d4 g,2      | % 4
    e8 e'4 d8 c4 b      | % 5
    a b c2      | % 6
    f4. e8~ e d c d16 e      | % 7
    f8 d g g, c2      | % 8
    c4. b8 e4 d      | % 9
    c d g,2      | % 10
    c8 d e4 f8 e d4      | % 11
    c4. b8 c2      | % 12
    f4 c d a8 g      | % 13
    f4 g c,2 \bar "|."\bar "|." 
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
