
% BWV 18 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 18"
composer = "Johann Sebastien Bach"
tagline = "Created by Michael Ellis from digital transcriptions by Margaret Greentree (jsbchorales.net)"
}
ASvoiceAA = \relative c'{
    \set Staff.instrumentName = #"Soprano"
    \set Staff.shortInstrumentName = #"S."
    \clef treble
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    g'4     g g f g      | % 1
    ees d c\fermata  g'8 a      | % 2
    bes4 c g a      | % 3
    bes a g\fermata  g      | % 4
    g g f g      | % 5
    ees d c\fermata  g'8 a      | % 6
    bes4 c g a      | % 7
    bes a g\fermata  bes      | % 8
    bes bes8 aes g f ees f      | % 9
    g4 f ees\fermata  g      | % 10
    g g f ees8 d      | % 11
    d2 c4\fermata  g'      | % 12
    g f g a      | % 13
    bes8 a g4 f\fermata  c'      | % 14
    d c g8 a bes4      | % 15
    a g a2      | % 16
    g2.\fermata  s4 \bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    d4     ees ees ees d      | % 1
    d8 c c b c4 ees      | % 2
    d c8 d ees4 ees      | % 3
    d c b d      | % 4
    ees ees ees d      | % 5
    d8 c c b c4 ees      | % 6
    d c8 d ees4 ees      | % 7
    d c b g'      | % 8
    f8 ees d c bes4 c8 d      | % 9
    ees4 d ees bes8 c      | % 10
    d4 c c c      | % 11
    c b c d      | % 12
    ees ees8 d ees g f ees      | % 13
    d c bes4 a f'      | % 14
    f ees8 d c4 d      | % 15
    d8 c bes4 ees d8 c      | % 16
    b2. s4 \bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    g'4     c c c g      | % 1
    g g8 f ees4 c'      | % 2
    bes8 a g4 c c      | % 3
    fis,8 g4 fis8 g4 g      | % 4
    c c c g      | % 5
    g g8 f ees4 c'      | % 6
    bes8 a g4 c c      | % 7
    fis,8 g4 fis8 g4 d'      | % 8
    bes f g g8 aes      | % 9
    bes4. aes8 g4 g      | % 10
    g8 f ees4 f8 g aes4      | % 11
    g4. f8 ees4 g      | % 12
    c8 bes aes4 bes c      | % 13
    f,4. e8 f4 a      | % 14
    bes8 a g fis g4 g      | % 15
    fis g2 fis4      | % 16
    g2. s4 \bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    b4     c8 d ees4 a, b      | % 1
    c g c c      | % 2
    g'8 f ees d c bes a g      | % 3
    d'2 g,4 b      | % 4
    c8 d ees4 a, b      | % 5
    c g c c      | % 6
    g'8 f ees d c bes a g      | % 7
    d'2 g,4 g'      | % 8
    d8 c bes4 ees8 d c4      | % 9
    g8 aes bes4 ees, ees'      | % 10
    b c8 bes aes g f4      | % 11
    g2 c4 b      | % 12
    c f ees8 d c4      | % 13
    bes c f, f'      | % 14
    bes, c8 d ees4 bes8 c      | % 15
    d4 ees8 d c4 d      | % 16
    g,2. s4 \bar "|." 
}% end of last bar in partorvoice



\addQuote "articulations"   { \ASvoiceAA }
\book {
\layout { \scorepaper }
\score {
<<
\part ASvoiceAA { \ASvoiceAA } { \transpose bes c \ASvoiceAA }
\part AAvoiceBA { \quotearticulations \AAvoiceBA \ASvoiceAA } { \transpose bes c \AAvoiceBA }
\part ATvoiceCA { \quotearticulations \ATvoiceCA \ASvoiceAA } { \transpose bes c \ATvoiceCA }
\part ABvoiceDA { \quotearticulations \ABvoiceDA \ASvoiceAA } { \transpose bes c \ABvoiceDA }
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
\part ASvoiceAA { \ASvoiceAA } { \transpose bes c \ASvoiceAA }
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
\part AAvoiceBA { \quotearticulations \AAvoiceBA \ASvoiceAA } { \transpose bes c \AAvoiceBA }
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
\part ATvoiceCA { \quotearticulations \ATvoiceCA \ASvoiceAA } { \transpose bes c \ATvoiceCA }
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
\part ABvoiceDA { \quotearticulations \ABvoiceDA \ASvoiceAA } { \transpose bes c \ABvoiceDA }
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
