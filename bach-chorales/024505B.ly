
% BWV 245 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 245"
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
    \partial 4
    a'4     a8 g f4 g a8 g      | % 1
    f4 e d\fermata  a'      | % 2
    a g c a8 g      | % 3
    f4 g a\fermata  a8 b      | % 4
    c4 d8 e f4 e      | % 5
    d cis d\fermata  d      | % 6
    e d c b      | % 7
    a gis a\fermata  d      | % 8
    c b c8 bes a4      | % 9
    a g f\fermata  a      | % 10
    bes a8 g f4 g      | % 11
    f e d\fermata  s4 \bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    f4     e e8 d cis d16 e a,4      | % 1
    bes8 d4 cis8 a4 f'      | % 2
    e d e f8 e      | % 3
    d f e d e4 e      | % 4
    a g f8 a g e      | % 5
    f e e4 fis g8 f      | % 6
    e4 b' e, f8 e      | % 7
    e d e4 e g      | % 8
    g8 f16 e f4 e f      | % 9
    f4. e8 c4 d      | % 10
    d e e8 a, d4      | % 11
    d4. cis8 a4 s4 \bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    d'4     a a g d'      | % 1
    d a8 g f4 d'      | % 2
    a bes c4. cis8      | % 3
    d cis d4 cis c      | % 4
    c8 a b cis d c bes4      | % 5
    b a a b      | % 6
    b8 a a gis a4. gis8      | % 7
    a4 b c b      | % 8
    c8 a g f g4 d'      | % 9
    d g,8 c a4 a      | % 10
    g8 f e4 a bes      | % 11
    b e,8 a fis4 s4 \bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    d4     cis d e f      | % 1
    g a d, d      | % 2
    c bes a8 c f4      | % 3
    bes8 a bes4 a a8 g      | % 4
    f4. e8 d4 g      | % 5
    gis a d, g      | % 6
    c, b a d8 e      | % 7
    f4 e a, g'8 f      | % 8
    e4 d c d8 c      | % 9
    bes4 c f fis      | % 10
    g cis, d8 c bes a      | % 11
    gis4 a d s4 \bar "|." 
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
