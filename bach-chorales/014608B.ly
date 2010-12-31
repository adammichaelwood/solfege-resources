
% BWV 146 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 146"
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
    a'4 bes c c      | % 1
    bes a g g\fermata       | % 2
    a bes c8 bes a4      | % 3
    g8 a16 bes g4 f2\fermata       | % 4
    a4 bes c c      | % 5
    bes a g g\fermata       | % 6
    a bes c8 bes a4      | % 7
    g8 a16 bes g4 f2\fermata       | % 8
    g4 a bes bes      | % 9
    a4. g8 g2\fermata       | % 10
    bes4 c d d      | % 11
    c8 d16 ees c4 bes2\fermata       | % 12
    a4 bes c c      | % 13
    bes a g g\fermata       | % 14
    a bes c f,8 g      | % 15
    a4 g f2\fermata  \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 4/4 
    f4 f g f8 e      | % 1
    d e f4 e e      | % 2
    f f g f      | % 3
    f e c2      | % 4
    f4 f g f8 e      | % 5
    d e f4 e e      | % 6
    f f g f      | % 7
    f e c2      | % 8
    e4 fis g g      | % 9
    g fis d2      | % 10
    d4 ees f8 ees f d      | % 11
    g4 f8 ees d2      | % 12
    c4 bes a8 g' f e      | % 13
    d e f4 e e      | % 14
    f f f8 e f4      | % 15
    f e c2 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 4/4 
    c'4 d c8 bes a4      | % 1
    bes c c c      | % 2
    c d c c      | % 3
    d c8 bes a2      | % 4
    c4 d c8 bes a4      | % 5
    bes c c c      | % 6
    c d c c      | % 7
    d c8 bes a2      | % 8
    c4 c d bes      | % 9
    ees d8 c bes2      | % 10
    bes4 a8 g f4 bes      | % 11
    bes a f2      | % 12
    f8 f' e d c bes a4      | % 13
    bes c c c      | % 14
    c d c8 bes c d      | % 15
    c4 c8 bes a2 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 4/4 
    f4 d a d      | % 1
    g, a8 bes c4 c      | % 2
    f e8 d e4 f      | % 3
    bes, c f,2      | % 4
    f'4 d a d      | % 5
    g, a8 bes c4 c      | % 6
    f e8 d e4 f      | % 7
    bes, c f,2      | % 8
    c'4 bes8 a g bes ees d      | % 9
    c a d4 g,2      | % 10
    g'4 f8 ees d c bes4      | % 11
    ees f bes,2      | % 12
    f'4 g a d,      | % 13
    g a8 bes c4 c,      | % 14
    f8 d c bes a g a bes      | % 15
    c4 c f,2 \bar "|."\bar "|." 
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
