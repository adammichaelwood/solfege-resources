
% BWV 155 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 155"
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
    c'4     c c c8 d ees4      | % 1
    d c bes\fermata  c8 bes      | % 2
    a g f g a4 b      | % 3
    c8. d16 d4 c\fermata  c      | % 4
    c c c8 d ees4      | % 5
    d c bes\fermata  c8 bes      | % 6
    a g f g a4 b      | % 7
    c8. d16 d4 c\fermata  c      | % 8
    f e d e      | % 9
    f8 e d4 c\fermata  c      | % 10
    f c d a8 bes      | % 11
    c4 bes a\fermata  a      | % 12
    g8 a bes4 a g      | % 13
    d e f\fermata  s4 \bar "|." 
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
    f4     f e f g      | % 1
    f f8 ees d4 c      | % 2
    c c f8 a g f      | % 3
    e8. f16 g8. f16 e4 f      | % 4
    f e f g      | % 5
    f f8 ees d4 c      | % 6
    c c f8 a g f      | % 7
    e8. f16 g8. f16 e4 f8 g      | % 8
    a4 g g8 f e g      | % 9
    c, a' d, g e4 f8 g      | % 10
    a bes a g f4 f      | % 11
    e d8 e fis4 f      | % 12
    e d c8 d e4      | % 13
    d c8 bes a4 s4 \bar "|." 
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
    a'8 bes     c d c bes a4 g8 a      | % 1
    bes4 a bes g      | % 2
    f8 g a bes c4 d      | % 3
    g,8 c4 b8 c4 a8 bes      | % 4
    c d c bes a4 g8 a      | % 5
    bes4 a bes g      | % 6
    f8 g a bes c4 d      | % 7
    g,8 c4 b8 c4 a      | % 8
    a8 b c4 b8 a g4      | % 9
    f8 c' b4 c a8 bes      | % 10
    c4 f8 e d4 d      | % 11
    g,8 a bes c d4 c      | % 12
    c f,8 g a bes c4      | % 13
    bes8 a g4 f s4 \bar "|." 
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
    f4     a,8 bes c4 f, c'      | % 1
    d8 ees f4 g e      | % 2
    f f, f'8 e d4      | % 3
    c g c f      | % 4
    a,8 bes c4 f, c'      | % 5
    d8 ees f4 g e      | % 6
    f f, f'8 e d4      | % 7
    c g c f8 e      | % 8
    d4 e8 f g4 c,8 bes      | % 9
    a f g4 c f      | % 10
    f,8 g a4 bes8 c d4      | % 11
    e8 fis g4 d a8 bes      | % 12
    c4 d8 e f4 e8 f      | % 13
    g4 c, f, s4 \bar "|." 
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
