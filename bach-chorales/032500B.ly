
% BWV 325 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 325"
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
    c'4 a g2      | % 1
    f\fermata  c'4 d      | % 2
    c2\fermata  f4 f      | % 3
    e e d4. c8      | % 4
    c2\fermata  c4 d      | % 5
    c bes a2\fermata       | % 6
    r4 g a8 b c4      | % 7
    c b c2\fermata       | % 8
    c4 d bes bes      | % 9
    a bes a g      | % 10
    f2\fermata  r4 a      | % 11
    g2 f4\fermata  c'      | % 12
    c b c\fermata  f      | % 13
    f e d2      | % 14
    c\fermata  c4 d8 c      | % 15
    bes4 bes a bes8 a      | % 16
    g2 f\fermata  \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 4/4 
    f4 f~ f8 e16 d e4      | % 1
    c2 g'4 g      | % 2
    g2 f4 g      | % 3
    g e8 f16 g a4. g16 f      | % 4
    e2 f4 f      | % 5
    e d8 c c2      | % 6
    r4 e8 g f4 e      | % 7
    a8 g16 f g4 g2      | % 8
    a4 a4. g16 f g4~      | % 9
    g8 f16 e f4~ f8 e16 d e4      | % 10
    c2 r4 f      | % 11
    f e d g      | % 12
    a g8 f e4 f      | % 13
    g g a g8 f      | % 14
    e2 f4 f8 e      | % 15
    d4 c c8 d16 e f4~      | % 16
    f8 e16 d e4 c2 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 4/4 
    a'8 bes c4~ c8 g c bes      | % 1
    a2 c4. b8      | % 2
    e2 a,4 d~      | % 3
    d8 c16 b c4~ c8 b16 a b4      | % 4
    g2 a4 bes8 a      | % 5
    g4 f8 g a2      | % 6
    r4 c c c      | % 7
    d~ d8 e16 f e2      | % 8
    f4 f d c      | % 9
    c bes8 d c4. bes8      | % 10
    a2 r4 c~      | % 11
    c4. bes8 a4 g      | % 12
    d' d c c      | % 13
    d~ d8 c~ c b16 a b4      | % 14
    g2 a4 a      | % 15
    bes8 a g4 f8 a d4~      | % 16
    d8 bes g c16 bes a2 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 4/4 
    f,8 g a bes c2      | % 1
    f, e'8 c g' g,      | % 2
    c2 d8 c b g      | % 3
    c e a g f d g g,      | % 4
    c2 f4 bes,      | % 5
    c d8 e f2      | % 6
    r4 c8 e f g a g      | % 7
    f d g g, c2      | % 8
    f8 e d f g f e c      | % 9
    f e d bes c4 c,      | % 10
    f2 r4 f'      | % 11
    c2 d4 e      | % 12
    f g a a      | % 13
    b c f, g      | % 14
    c,2 f8 e d f      | % 15
    g f e c f e d c      | % 16
    bes g c4 f,2 \bar "|."\bar "|." 
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
