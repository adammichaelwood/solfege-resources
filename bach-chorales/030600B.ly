
% BWV 306 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 306"
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
    \time 3/4 
    \partial 4
    f4     f4. g8 a bes      | % 1
    c2 g4      | % 2
    a2 b4      | % 3
    c2\fermata  bes4      | % 4
    a4. g8 a bes      | % 5
    c2 bes4      | % 6
    a2 g4      | % 7
    a2\fermata  a4      | % 8
    c2 bes4      | % 9
    a2 g4      | % 10
    f2 e4      | % 11
    f2\fermata  f4      | % 12
    g8 f g a bes4      | % 13
    a2 g4      | % 14
    f2 e4      | % 15
    f2\fermata  s4 \bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 3/4 
    \partial 4
    c4     c d8 e f4~      | % 1
    f e8 f g4~      | % 2
    g8 e f2~      | % 3
    f4 e g~      | % 4
    g f2      | % 5
    g8 f g a~ a g~      | % 6
    g f16 e f4~ f8 e16 d      | % 7
    cis2 d4      | % 8
    e4. f8 g4~      | % 9
    g f e~      | % 10
    e d c8 bes      | % 11
    a2 d4      | % 12
    d e8 f d e      | % 13
    f2 e4~      | % 14
    e d c      | % 15
    c2 s4 \bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 3/4 
    \partial 4
    a'4     a8 bes a g f4      | % 1
    g2 c4      | % 2
    c2 d4      | % 3
    g,2 c4      | % 4
    c8 a d2      | % 5
    c8 d e4 d      | % 6
    d a d,      | % 7
    e2 f4      | % 8
    a c2~      | % 9
    c8 a d c bes4      | % 10
    a8 f bes a g4      | % 11
    f2 a4      | % 12
    g c d8 g,      | % 13
    a bes c4~ c8 bes      | % 14
    a4 bes8 a g bes      | % 15
    a2 s4 \bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 3/4 
    \partial 4
    f,4     f'4. e8 d4      | % 1
    c4. d8 e c      | % 2
    f4. e8 d4      | % 3
    c2 e4      | % 4
    f4. e8 d4      | % 5
    e4. fis8 g4      | % 6
    d4. c8 bes4      | % 7
    a2 d4      | % 8
    a'8 a, a' g f e      | % 9
    f f, f' e d cis      | % 10
    d4 bes c      | % 11
    d2 d8 c      | % 12
    bes4. a8 g4      | % 13
    f8 g a bes c4      | % 14
    d8 c bes4 c      | % 15
    f,2 s4 \bar "|." 
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
