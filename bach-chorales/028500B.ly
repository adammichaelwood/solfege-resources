
% BWV 285 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 285"
composer = "Johann Sebastien Bach"
tagline = "Created by Michael Ellis from digital transcriptions by Margaret Greentree (jsbchorales.net)"
}
ASvoiceAA = \relative c'{
    \set Staff.instrumentName = #"Soprano"
    \set Staff.shortInstrumentName = #"S."
    \clef treble
    %staffkeysig
    \key es \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    g'4     g g bes g      | % 1
    bes b c\fermata  d      | % 2
    ees8 d c d ees4 d      | % 3
    c c b\fermata  g      | % 4
    c8 d ees4 d c      | % 5
    b2 c4\fermata  g      | % 6
    g a bes aes      | % 7
    g f ees\fermata  ees      | % 8
    bes' bes c d      | % 9
    ees d ees\fermata  ees      | % 10
    f ees d c      | % 11
    c b c\fermata  s4 \bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key es \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    ees8 f     g f ees4 f~ f8 ees      | % 1
    g4 f ees g      | % 2
    g g g g      | % 3
    g g8 f g4 d      | % 4
    g g aes8 g g f      | % 5
    g aes g f ees4 ees8 f      | % 6
    g4 f f8 g~ g f~      | % 7
    f ees~ ees d ees4 c      | % 8
    ees8 f g4 ees f      | % 9
    g f g g8 aes~      | % 10
    aes g g4 f8 aes g f      | % 11
    ees d16 c d8 f~ f e s4 \bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key es \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    c'4     d4. c8 bes4 bes      | % 1
    bes8 c d4 g, d'      | % 2
    c8 d ees d c4 b      | % 3
    c8 b c4 d b      | % 4
    c c~ c8 b c4      | % 5
    d g, g c      | % 6
    c8 g c4 d8 c~ c d16 c      | % 7
    bes8 c f, bes16 aes g4 g8 aes      | % 8
    bes aes bes des c bes aes4      | % 9
    bes bes bes c      | % 10
    d~ d8 c~ c b c aes      | % 11
    g2 g4 s4 \bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key es \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    c4     b c d ees~      | % 1
    ees d c b      | % 2
    c2~ c8 ees g f      | % 3
    ees4 aes g g8 f      | % 4
    ees d c4 f8 g aes4      | % 5
    g g, c c8 d      | % 6
    ees4. f16 ees d8 ees f4      | % 7
    g8 aes bes bes, c4 c      | % 8
    g8 f ees4 aes8 g f4      | % 9
    ees8 g bes4 ees c~      | % 10
    c8 b c4 d ees8 f      | % 11
    g4 g, c s4 \bar "|." 
}% end of last bar in partorvoice



\addQuote "articulations"   { \ASvoiceAA }
\book {
\layout { \scorepaper }
\score {
<<
\part ASvoiceAA { \ASvoiceAA } { \transpose es c \ASvoiceAA }
\part AAvoiceBA { \quotearticulations \AAvoiceBA \ASvoiceAA } { \transpose es c \AAvoiceBA }
\part ATvoiceCA { \quotearticulations \ATvoiceCA \ASvoiceAA } { \transpose es c \ATvoiceCA }
\part ABvoiceDA { \quotearticulations \ABvoiceDA \ASvoiceAA } { \transpose es c \ABvoiceDA }
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
\part ASvoiceAA { \ASvoiceAA } { \transpose es c \ASvoiceAA }
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
\part AAvoiceBA { \quotearticulations \AAvoiceBA \ASvoiceAA } { \transpose es c \AAvoiceBA }
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
\part ATvoiceCA { \quotearticulations \ATvoiceCA \ASvoiceAA } { \transpose es c \ATvoiceCA }
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
\part ABvoiceDA { \quotearticulations \ABvoiceDA \ASvoiceAA } { \transpose es c \ABvoiceDA }
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
