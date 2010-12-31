
% BWV 301 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 301"
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
    d'4 a d d      | % 1
    e c b2      | % 2
    a\fermata  f4 a      | % 3
    g f e4. d8      | % 4
    d1\fermata       | % 5
    d'4 a d d      | % 6
    e c b2      | % 7
    a\fermata  f4 a      | % 8
    g f e4. d8      | % 9
    d1\fermata       | % 10
    f4 g a a      | % 11
    bes a g2      | % 12
    f\fermata  f4 g      | % 13
    a a bes a      | % 14
    g2 f\fermata       | % 15
    a4 b c a      | % 16
    d d cis2\fermata       | % 17
    d8 e f4 e d      | % 18
    d cis d2\fermata  \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 4/4 
    f4 a a gis8 a      | % 1
    b e, e4 f e8 d      | % 2
    cis2 d4 d8 cis      | % 3
    d e~ e d d4 cis      | % 4
    a1      | % 5
    f'4 a a gis8 a      | % 6
    b e, e4 f e8 d      | % 7
    cis2 d4 d8 cis      | % 8
    d e~ e d d4 cis      | % 9
    a1      | % 10
    d4 e f f      | % 11
    f8 g~ g f f4 e      | % 12
    c2 d4. c8~      | % 13
    c f a4~ a8 g~ g f~      | % 14
    f e16 d e4 c2      | % 15
    f4 f g~ g8 f      | % 16
    f4 f8 e e2      | % 17
    f8 g a4 g f      | % 18
    e e fis2 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 4/4 
    a'4 f'8 e d c b4~      | % 1
    b4. a8 a4 gis      | % 2
    e2 a4 a      | % 3
    d,8 a' a4 bes a8. g16      | % 4
    f1      | % 5
    a4 f'8 e d c b4~      | % 6
    b4. a8 a4 gis      | % 7
    e2 a4 a      | % 8
    d,8 a' a4 bes a8. g16      | % 9
    f1      | % 10
    a4 c c c      | % 11
    d8 c c4 d8 bes g c16 bes      | % 12
    a2 a4 g      | % 13
    f8 a d ees d4 c      | % 14
    d c8 bes a2      | % 15
    c4 d c c      | % 16
    d8 c b4 a2      | % 17
    a4 d8 c bes4 a      | % 18
    bes a a2 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 4/4 
    d4. c8 b4. a8      | % 1
    gis4 a d e      | % 2
    a,2 d8 e f4      | % 3
    b,8 cis d4 g, a      | % 4
    d1      | % 5
    d4. c8 b4. a8      | % 6
    gis4 a d e      | % 7
    a,2 d8 e f4      | % 8
    b,8 cis d4 g, a      | % 9
    d1      | % 10
    d4 c8 bes a g f e      | % 11
    d e f4 bes c      | % 12
    f,2 d'4 e      | % 13
    f fis g a      | % 14
    bes c f,2      | % 15
    f8 e d4 e8 c f4      | % 16
    bes8 a gis4 a2      | % 17
    f8 e d4~ d8 cis d f      | % 18
    g e a4 d,2 \bar "|."\bar "|." 
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
