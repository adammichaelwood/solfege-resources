
% BWV 137 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 137"
composer = "Johann Sebastien Bach"
tagline = "Created by Michael Ellis from digital transcriptions by Margaret Greentree (jsbchorales.net)"
}
ATrumpvoiceAA = \relative c'{
    \set Staff.instrumentName = #"Trumpet 1"
    \set Staff.shortInstrumentName = #"Trump 1"
    \clef treble
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 3/4 
    g''4 g g      | % 1
    g4. g8 a4      | % 2
    b g b      | % 3
    c b c8 a      | % 4
    b2 c4      | % 5
    g g g      | % 6
    g4. g8 a4      | % 7
    b g b      | % 8
    c b c8 a      | % 9
    b2 c4      | % 10
    g4. bes8 a g      | % 11
    f2.      | % 12
    c4. d8 d4      | % 13
    e8 d e f g a      | % 14
    b2.      | % 15
    g2.~      | % 16
    g8 f g a g a      | % 17
    g a16 b b4 c\fermata  \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ATrumpvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Trumpet 2"
    \set Staff.shortInstrumentName = #"Trump 2"
    \clef treble
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 3/4 
    e'4 c d      | % 1
    e4. e8 fis4      | % 2
    g g g      | % 3
    g g g      | % 4
    g2 g4      | % 5
    e c d      | % 6
    e4. e8 fis4      | % 7
    g g g      | % 8
    g g g      | % 9
    g2 g4      | % 10
    e4. g16 f e8 f16 e      | % 11
    d2.      | % 12
    R2.  | % 
    c4. d8 e f      | % 14
    g2.      | % 15
    d4 d2      | % 16
    c4 d e8 c      | % 17
    d2 e4 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ATrumpvoiceCA = \relative c'{
    \set Staff.instrumentName = #"Trumpet 3"
    \set Staff.shortInstrumentName = #"Trump 3"
    \clef treble
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 3/4 
    c'4 e, g      | % 1
    c4. c8 c4      | % 2
    d g, d'      | % 3
    e f e8 c      | % 4
    d2 e4      | % 5
    c e, g      | % 6
    c4. c8 c4      | % 7
    d g, d'      | % 8
    e f e8 c      | % 9
    d2 e4      | % 10
    R2. *2  | % 
    e,4 r r      | % 13
    g4. g8 c4      | % 14
    d2.      | % 15
    g,4 g2      | % 16
    g4 d' c8 e,      | % 17
    g2 g4 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ATimpanivoiceDA = \relative c{
    \set Staff.instrumentName = #"Timpani"
    \set Staff.shortInstrumentName = #"Timpani"
    \clef bass
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 3/4 
    c4 c g      | % 1
    c4. c8 c4      | % 2
    g g g      | % 3
    c g c      | % 4
    g8 g16 g g8 g c4      | % 5
    c c g      | % 6
    c4. c8 c4      | % 7
    g g g      | % 8
    c g c      | % 9
    g8 g16 g g8 g c4      | % 10
    R2. *2  | % 
    c4 r r      | % 13
    c4. g8 c4      | % 14
    g2.      | % 15
    g4 g2      | % 16
    c4 g c      | % 17
    g2 c4 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ASvoiceEA = \relative c'{
    \set Staff.instrumentName = #"Soprano"
    \set Staff.shortInstrumentName = #"S."
    \clef treble
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 3/4 
    c'4 c g'      | % 1
    e4. d8 c4      | % 2
    b4. a8 g4      | % 3
    c d e8 f      | % 4
    d2 c4      | % 5
    c c g'      | % 6
    e4. d8 c4      | % 7
    b4. a8 g4      | % 8
    c d e8 f      | % 9
    d2 c4      | % 10
    e4. d8 e4      | % 11
    f2.      | % 12
    e4. f8 g4      | % 13
    g4. f8 e4      | % 14
    d2.      | % 15
    g,4 a b      | % 16
    c d e8. f16      | % 17
    d2 c4\fermata  \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AAvoiceFA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 3/4 
    g'4 g g      | % 1
    g4. g8 fis4      | % 2
    d g g      | % 3
    g b g      | % 4
    g f e      | % 5
    g g g      | % 6
    g4. g8 fis4      | % 7
    d g g      | % 8
    g b g      | % 9
    g f e      | % 10
    g4. g8 cis,4      | % 11
    a'2.      | % 12
    a4. a8 d,4      | % 13
    c g' g      | % 14
    g2.      | % 15
    d4 d d      | % 16
    g g g      | % 17
    g2 e4 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ATvoiceGA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 3/4 
    e'4 e d      | % 1
    c4. g8 c4      | % 2
    g' g, d'      | % 3
    c f, c'      | % 4
    d b g      | % 5
    e' e d      | % 6
    c4. g8 c4      | % 7
    g' g, d'      | % 8
    c f, c'      | % 9
    d b g      | % 10
    e'4. e8 e cis      | % 11
    d2.      | % 12
    e4. c8 b a      | % 13
    g4 b c      | % 14
    b2.      | % 15
    b4 d g,      | % 16
    g g g8 c      | % 17
    c4 b g \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ABvoiceHA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 3/4 
    c4 c' b      | % 1
    c4. b8 a4      | % 2
    g g, f'      | % 3
    e d c      | % 4
    g' g, c      | % 5
    c c' b      | % 6
    c4. b8 a4      | % 7
    g g, f'      | % 8
    e d c      | % 9
    g' g, c      | % 10
    c e a      | % 11
    d,2.      | % 12
    a'4 g f      | % 13
    e4. d8 c4      | % 14
    g2.      | % 15
    g'4 f8 e f d      | % 16
    e4 b c      | % 17
    g' g, c \bar "|."\bar "|." 
}% end of last bar in partorvoice



\addQuote "articulations"   { \ATrumpvoiceAA }
\book {
\layout { \scorepaper }
\score {
<<
\part ATrumpvoiceAA { \ATrumpvoiceAA } { \transpose c c \ATrumpvoiceAA }
\part ATrumpvoiceBA { \quotearticulations \ATrumpvoiceBA \ATrumpvoiceAA } { \transpose c c \ATrumpvoiceBA }
\part ATrumpvoiceCA { \quotearticulations \ATrumpvoiceCA \ATrumpvoiceAA } { \transpose c c \ATrumpvoiceCA }
\part ATimpanivoiceDA { \quotearticulations \ATimpanivoiceDA \ATrumpvoiceAA } { \transpose c c \ATimpanivoiceDA }
\part ASvoiceEA { \ASvoiceEA } { \transpose c c \ASvoiceEA }
\part AAvoiceFA { \quotearticulations \AAvoiceFA \ATrumpvoiceAA } { \transpose c c \AAvoiceFA }
\part ATvoiceGA { \quotearticulations \ATvoiceGA \ATrumpvoiceAA } { \transpose c c \ATvoiceGA }
\part ABvoiceHA { \quotearticulations \ABvoiceHA \ATrumpvoiceAA } { \transpose c c \ABvoiceHA }
>>
}
\score {
<<
\new Voice = ATrumpvoiceAA \ATrumpvoiceAA
\new Voice = ATrumpvoiceBA \ATrumpvoiceBA
\new Voice = ATrumpvoiceCA \ATrumpvoiceCA
\new Voice = ATimpanivoiceDA \ATimpanivoiceDA
\new Voice = ASvoiceEA \ASvoiceEA
\new Voice = AAvoiceFA \AAvoiceFA
\new Voice = ATvoiceGA \ATvoiceGA
\new Voice = ABvoiceHA \ABvoiceHA
>>

        \midi   { 
        \context { \Staff  \remove "Staff_performer" }
        \context { \Voice  \consists "Staff_performer" }
        } 
   }
} %%end of book

#(define output-suffix "Trumpe")
\book {
\layout { \partpaper }
\score {
<<
\part ATrumpvoiceAA { \ATrumpvoiceAA } { \transpose c c \ATrumpvoiceAA }
>>
}
\score {
<<
\new Voice = ATrumpvoiceAA \ATrumpvoiceAA
>>

        \midi   { 
        \context { \Staff  \remove "Staff_performer" }
        \context { \Voice  \consists "Staff_performer" }
        } 
   }
} %%end of book
#(define output-suffix "Trumpe")
\book {
\layout { \partpaper }
\score {
<<
\part ATrumpvoiceBA { \quotearticulations \ATrumpvoiceBA \ATrumpvoiceAA } { \transpose c c \ATrumpvoiceBA }
>>
}
\score {
<<
\new Voice = ATrumpvoiceBA \ATrumpvoiceBA
>>

        \midi   { 
        \context { \Staff  \remove "Staff_performer" }
        \context { \Voice  \consists "Staff_performer" }
        } 
   }
} %%end of book
#(define output-suffix "Trumpe")
\book {
\layout { \partpaper }
\score {
<<
\part ATrumpvoiceCA { \quotearticulations \ATrumpvoiceCA \ATrumpvoiceAA } { \transpose c c \ATrumpvoiceCA }
>>
}
\score {
<<
\new Voice = ATrumpvoiceCA \ATrumpvoiceCA
>>

        \midi   { 
        \context { \Staff  \remove "Staff_performer" }
        \context { \Voice  \consists "Staff_performer" }
        } 
   }
} %%end of book
#(define output-suffix "Timpani")
\book {
\layout { \partpaper }
\score {
<<
\part ATimpanivoiceDA { \quotearticulations \ATimpanivoiceDA \ATrumpvoiceAA } { \transpose c c \ATimpanivoiceDA }
>>
}
\score {
<<
\new Voice = ATimpanivoiceDA \ATimpanivoiceDA
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
\part ASvoiceEA { \ASvoiceEA } { \transpose c c \ASvoiceEA }
>>
}
\score {
<<
\new Voice = ASvoiceEA \ASvoiceEA
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
\part AAvoiceFA { \quotearticulations \AAvoiceFA \ATrumpvoiceAA } { \transpose c c \AAvoiceFA }
>>
}
\score {
<<
\new Voice = AAvoiceFA \AAvoiceFA
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
\part ATvoiceGA { \quotearticulations \ATvoiceGA \ATrumpvoiceAA } { \transpose c c \ATvoiceGA }
>>
}
\score {
<<
\new Voice = ATvoiceGA \ATvoiceGA
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
\part ABvoiceHA { \quotearticulations \ABvoiceHA \ATrumpvoiceAA } { \transpose c c \ABvoiceHA }
>>
}
\score {
<<
\new Voice = ABvoiceHA \ABvoiceHA
>>

        \midi   { 
        \context { \Staff  \remove "Staff_performer" }
        \context { \Voice  \consists "Staff_performer" }
        } 
   }
} %%end of book
