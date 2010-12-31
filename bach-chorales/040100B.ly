
% BWV 401 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 401"
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
    f4     f f c' c      | % 1
    d2 c4\fermata  c      | % 2
    f, g a bes      | % 3
    a g8 f f4\fermata  f      | % 4
    f f c' c      | % 5
    d2 c4\fermata  c      | % 6
    f, g a bes      | % 7
    a g8 f f4\fermata  a      | % 8
    a a g a      | % 9
    f8 e d4 c\fermata  c'      | % 10
    d c c a8 bes      | % 11
    c4 bes a\fermata  d      | % 12
    c8 bes a4 g a      | % 13
    c a g2      | % 14
    f2.\fermata  s4 \bar "|." 
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
    c4     c16 d ees8 ees d e c f e      | % 1
    a4 g8 f e4 e~      | % 2
    e8 d~ d c~ c d16 e f4~      | % 3
    f8 e16 d e4 c c      | % 4
    c16 d ees8 ees d e c f e      | % 5
    a4 g8 f e4 e~      | % 6
    e8 d~ d c~ c d16 e f4~      | % 7
    f8 e16 d e4 c f      | % 8
    f f f e      | % 9
    d8 c~ c b g4 ees'      | % 10
    d8 e f g16 a g4 f      | % 11
    a4. g8~ g fis g4      | % 12
    g f g~ g8 f16 e      | % 13
    f4 f~ f e      | % 14
    c2. s4 \bar "|." 
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
    a'8 bes     c4~ c8 bes16 a g4 c~      | % 1
    c b g a      | % 2
    a g f~ f8 d'      | % 3
    c4 c8. bes16 a4 a8 bes      | % 4
    c4~ c8 bes16 a g4 c~      | % 5
    c b g a      | % 6
    a g f~ f8 d'      | % 7
    c4 c8. bes16 a4 c      | % 8
    c d d a      | % 9
    a8 g a g16 f e4 f      | % 10
    f8 g a bes c4~ c8 d      | % 11
    ees4 d d d8 f      | % 12
    e4~ e8 d~ d c c4      | % 13
    c8 a f a d4 c8 bes      | % 14
    a2. s4 \bar "|." 
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
    f,8 g     a4 bes~ bes a8 g      | % 1
    f4 g c a      | % 2
    d e f8 e d bes      | % 3
    c4 c, f f8 g      | % 4
    a4 bes~ bes a8 g      | % 5
    f4 g c a      | % 6
    d e f8 e d bes      | % 7
    c4 c, f f'~      | % 8
    f8 e d c b4 cis      | % 9
    d8 e f g c,4 a      | % 10
    bes f'~ f8 e f4      | % 11
    f8 fis g g, d'4 bes8 b      | % 12
    c4 d e f      | % 13
    a,8 bes16 c d8 c bes4 c      | % 14
    f,2. s4 \bar "|." 
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
