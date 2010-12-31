
% BWV 282 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 282"
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
    \time 3/4 
    \partial 4
    g'4     b2 a4      | % 1
    b2 c4      | % 2
    d2.      | % 3
    b2\fermata  r4      | % 4
    e2.~      | % 5
    e2.      | % 6
    d2.~      | % 7
    d2.      | % 8
    c2.~      | % 9
    c8 b c4\fermata  r      | % 10
    b e8 c a4      | % 11
    b2\fermata  d4      | % 12
    e2 fis4      | % 13
    g2 fis4      | % 14
    e2.      | % 15
    d2 b4      | % 16
    a2 g4      | % 17
    g2 fis4      | % 18
    g2\fermata  s4 \bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 3/4 
    \partial 4
    d4     g2 fis4      | % 1
    g2 g4      | % 2
    g4. fis16 e fis4      | % 3
    d2 r4      | % 4
    R2.  | % 
    f2.~      | % 6
    f2.~      | % 7
    f2.      | % 8
    e2.      | % 9
    fis4 fis r      | % 10
    g8 fis e4 fis8 e      | % 11
    dis2 g4      | % 12
    g2 a4      | % 13
    b2 a4      | % 14
    b8 a g4. a16 g      | % 15
    fis2 g4      | % 16
    g fis e      | % 17
    e d2      | % 18
    d s4 \bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 3/4 
    \partial 4
    b'4     d2 d4      | % 1
    d2 c4      | % 2
    b4. a16 g a4      | % 3
    g2 r4      | % 4
    R2. *2  | % 
    gis2.~      | % 7
    gis2.      | % 8
    a2.~      | % 9
    a4 a r      | % 10
    g8 b b a16 b c4      | % 11
    fis,2 d'4      | % 12
    c2 c4      | % 13
    d2 d4      | % 14
    d4. cis16 b cis4      | % 15
    a2 e'4      | % 16
    e b b      | % 17
    c8 b a b c4      | % 18
    b2 s4 \bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 3/4 
    \partial 4
    g'4     g2 d4      | % 1
    g fis e      | % 2
    b8 c d4 d      | % 3
    g,2 r4      | % 4
    R2. *3  | % 
    c2.~      | % 8
    c4. b8 c a      | % 9
    d4 d r      | % 10
    e8 d c4 c      | % 11
    b2 b'4      | % 12
    b2 a4      | % 13
    g b d      | % 14
    g,8 fis e4 a      | % 15
    d,2 e8 d      | % 16
    cis4 dis e      | % 17
    c d2      | % 18
    g, s4 \bar "|." 
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
