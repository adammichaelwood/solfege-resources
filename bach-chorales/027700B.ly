
% BWV 277 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 277"
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
    a'4     gis a8 b c4 d      | % 1
    c b a\fermata  a      | % 2
    f g a g8 f      | % 3
    e d e4 d\fermata  a'      | % 4
    gis a8 b c4 d      | % 5
    c b a\fermata  a      | % 6
    f g a g8 f      | % 7
    e d e4 d\fermata  r      | % 8
    d8 e f4 g d8 e      | % 9
    f4 g a\fermata  a      | % 10
    d cis d e8 d      | % 11
    c4 b a\fermata  b      | % 12
    c a8 bes c4 g      | % 13
    f e d2\fermata       | % 14
    a'4 g f e      | % 15
    d1\fermata  \bar "|." 
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
    f4     f8 e4 gis8 a4 b~      | % 1
    b8 a4 gis8 e4 e~      | % 2
    e8 d cis d e4. d8      | % 3
    cis d4 cis8 a4 f'      | % 4
    f8 e4 gis8 a4 b~      | % 5
    b8 a4 gis8 e4 e~      | % 6
    e8 d cis d e4. d8      | % 7
    cis d~ d cis a4 r      | % 8
    a d d8 c bes c      | % 9
    d a d c c4 f8 g      | % 10
    a bes~ bes a a4 e~      | % 11
    e8 f~ f e e4 f~      | % 12
    f8 e f4 f e~      | % 13
    e8 d cis d d2      | % 14
    d4~ d8 e cis d~ d cis      | % 15
    a1 \bar "|." 
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
    d'8 c     b4 c8 d e4 f8 e      | % 1
    e f4 e16 d cis4 a      | % 2
    a bes a a      | % 3
    a8 f g e f4 d'8 c      | % 4
    b4 c8 d e4 f8 e      | % 5
    e f4 e16 d cis4 a      | % 6
    a bes a a      | % 7
    a8 f g e f4 r      | % 8
    f8 g a4 g8 a bes4      | % 9
    a8 f'~ f e f4 c      | % 10
    f, g d'8 c b4~      | % 11
    b8 a~ a gis c4 d      | % 12
    g,8 c c4 c8 d e d      | % 13
    cis a bes a16 g f2      | % 14
    a8 c bes4 a g~      | % 15
    g fis8 e fis2 \bar "|." 
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
    d4     d c8 b a a'4 gis8      | % 1
    a f d e a,4 cis      | % 2
    d8 f e d cis a d4      | % 3
    a' a, d d      | % 4
    d c8 b a a'4 gis8      | % 5
    a f d e a,4 cis      | % 6
    d8 f e d cis a d4      | % 7
    a' a, d r      | % 8
    d4. c8 bes a g4      | % 9
    d'8 c bes c f,4 f'8 e      | % 10
    d4 e fis gis      | % 11
    a8 f d e a,4 d      | % 12
    c f,8 g a bes c bes      | % 13
    a f g a bes2      | % 14
    fis4 g a2      | % 15
    d,1 \bar "|." 
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
