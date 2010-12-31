
% BWV 70 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 70"
composer = "Johann Sebastien Bach"
tagline = "Created by Michael Ellis from digital transcriptions by Margaret Greentree (jsbchorales.net)"
}
AvoiceAA = \relative c'{
    \set Staff.instrumentName = #"Violin 1"
    \set Staff.shortInstrumentName = #""
    \clef treble
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    g''4 g g f8 e      | % 1
    d e f g e2\fermata       | % 2
    d4 e2 fis4      | % 3
    g g2 fis4      | % 4
    g2\fermata  e8 f g4~      | % 5
    g8 c, f4. e4 d8      | % 6
    g2\fermata  e4 e      | % 7
    f g2 a4      | % 8
    d,8 e f g e2\fermata       | % 9
    c8 d e fis g d g4~      | % 10
    g8 fis16 e fis8 a16 g e2\fermata       | % 11
    e8 a16 g a4. c16 b c4~      | % 12
    c b c2\fermata  \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Violin 2"
    \set Staff.shortInstrumentName = #""
    \clef treble
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    e'4 e~ e8 a, d c      | % 1
    b c b a16 g g2      | % 2
    b4 b c d~      | % 3
    d e a,8 b c d      | % 4
    b2 g4 e'~      | % 5
    e8 a, d4. g8 c, d      | % 6
    e2 b4 a~      | % 7
    a b c c~      | % 8
    c b c2      | % 9
    g4 c8 b16 a d8 c d e      | % 10
    a, b c4 b2      | % 11
    cis8 d e4 f8 g a4~      | % 12
    a g g2 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AvoiceCA = \relative c'{
    \set Staff.instrumentName = #"Viola"
    \set Staff.shortInstrumentName = #""
    \clef alto
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    c'4 c8 bes a4 a      | % 1
    d, d c2      | % 2
    g'4 g a a      | % 3
    b c8 g d'4 d,      | % 4
    d2 c4 c'8 bes      | % 5
    a g f e d c4 g'8      | % 6
    c2 b4 cis      | % 7
    d d, e f8 c      | % 8
    g'2 g      | % 9
    e4 a b8 a g4      | % 10
    d' fis, g2      | % 11
    a4. cis8 d4 e      | % 12
    f8 e d4 e2 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ASvoiceDA = \relative c'{
    \set Staff.instrumentName = #"Soprano"
    \set Staff.shortInstrumentName = #"S."
    \clef treble
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    g'4 g a a      | % 1
    b b c2\fermata       | % 2
    d4 d c c      | % 3
    b a8 b16 c a2      | % 4
    g\fermata  g4 g      | % 5
    a a g f      | % 6
    e2\fermata  g4 g      | % 7
    f f e d8 e16 f      | % 8
    d2 c\fermata       | % 9
    c'4 c b b      | % 10
    a a g2\fermata       | % 11
    g4 g f e      | % 12
    d d c2\fermata  \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AAvoiceEA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    e4 e f f      | % 1
    f8 e d4 e2      | % 2
    g4 g g fis      | % 3
    d c8 d16 e d2      | % 4
    d e8 d c4      | % 5
    c d d8 e f d      | % 6
    c2 b4 e      | % 7
    d d c8 bes a4      | % 8
    g2 g      | % 9
    e'8 d c4 g'2~      | % 10
    g8 a16 g fis e fis8 b,2      | % 11
    e4 e d c8 b      | % 12
    a4 b g2 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ATvoiceFA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef "treble_8"
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    c'4 c c d      | % 1
    d g, g2      | % 2
    d'4 b a a      | % 3
    g8 fis e c' c b a4      | % 4
    b2 c4 g      | % 5
    f f g c8 g      | % 6
    g2 g4 a      | % 7
    a g g4. f8      | % 8
    f e d4 e2      | % 9
    g4. fis8 d'4 d      | % 10
    d c8 a e'2      | % 11
    cis4 a a2~      | % 12
    a8 d, g f e2 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ABvoiceGA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    c'8 bes a g f e d4      | % 1
    g g, c2      | % 2
    b8 c d e a, b c d      | % 3
    g,4 c d2      | % 4
    g, c8 d e c      | % 5
    f e d c b c a b      | % 6
    c2 e8 d cis a      | % 7
    d c b g c4 f,      | % 8
    g2 c      | % 9
    c8 b a4 g8 a b c      | % 10
    d4 dis e2      | % 11
    a,8 b cis a d4 a8 g      | % 12
    f4 g c,2 \bar "|."\bar "|." 
}% end of last bar in partorvoice



\addQuote "articulations"   { \AvoiceAA }
\book {
\layout { \scorepaper }
\score {
<<
\part AvoiceAA { \AvoiceAA } { \transpose c c \AvoiceAA }
\part AvoiceBA { \quotearticulations \AvoiceBA \AvoiceAA } { \transpose c c \AvoiceBA }
\part AvoiceCA { \quotearticulations \AvoiceCA \AvoiceAA } { \transpose c c \AvoiceCA }
\part ASvoiceDA { \ASvoiceDA } { \transpose c c \ASvoiceDA }
\part AAvoiceEA { \quotearticulations \AAvoiceEA \AvoiceAA } { \transpose c c \AAvoiceEA }
\part ATvoiceFA { \quotearticulations \ATvoiceFA \AvoiceAA } { \transpose c c \ATvoiceFA }
\part ABvoiceGA { \quotearticulations \ABvoiceGA \AvoiceAA } { \transpose c c \ABvoiceGA }
>>
}
\score {
<<
\new Voice = AvoiceAA \AvoiceAA
\new Voice = AvoiceBA \AvoiceBA
\new Voice = AvoiceCA \AvoiceCA
\new Voice = ASvoiceDA \ASvoiceDA
\new Voice = AAvoiceEA \AAvoiceEA
\new Voice = ATvoiceFA \ATvoiceFA
\new Voice = ABvoiceGA \ABvoiceGA
>>

        \midi   { 
        \context { \Staff  \remove "Staff_performer" }
        \context { \Voice  \consists "Staff_performer" }
        } 
   }
} %%end of book

#(define output-suffix "Violi")
\book {
\layout { \partpaper }
\score {
<<
\part AvoiceAA { \AvoiceAA } { \transpose c c \AvoiceAA }
>>
}
\score {
<<
\new Voice = AvoiceAA \AvoiceAA
>>

        \midi   { 
        \context { \Staff  \remove "Staff_performer" }
        \context { \Voice  \consists "Staff_performer" }
        } 
   }
} %%end of book
#(define output-suffix "Violi")
\book {
\layout { \partpaper }
\score {
<<
\part AvoiceBA { \quotearticulations \AvoiceBA \AvoiceAA } { \transpose c c \AvoiceBA }
>>
}
\score {
<<
\new Voice = AvoiceBA \AvoiceBA
>>

        \midi   { 
        \context { \Staff  \remove "Staff_performer" }
        \context { \Voice  \consists "Staff_performer" }
        } 
   }
} %%end of book
#(define output-suffix "Viola")
\book {
\layout { \partpaper }
\score {
<<
\part AvoiceCA { \quotearticulations \AvoiceCA \AvoiceAA } { \transpose c c \AvoiceCA }
>>
}
\score {
<<
\new Voice = AvoiceCA \AvoiceCA
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
\part ASvoiceDA { \ASvoiceDA } { \transpose c c \ASvoiceDA }
>>
}
\score {
<<
\new Voice = ASvoiceDA \ASvoiceDA
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
\part AAvoiceEA { \quotearticulations \AAvoiceEA \AvoiceAA } { \transpose c c \AAvoiceEA }
>>
}
\score {
<<
\new Voice = AAvoiceEA \AAvoiceEA
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
\part ATvoiceFA { \quotearticulations \ATvoiceFA \AvoiceAA } { \transpose c c \ATvoiceFA }
>>
}
\score {
<<
\new Voice = ATvoiceFA \ATvoiceFA
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
\part ABvoiceGA { \quotearticulations \ABvoiceGA \AvoiceAA } { \transpose c c \ABvoiceGA }
>>
}
\score {
<<
\new Voice = ABvoiceGA \ABvoiceGA
>>

        \midi   { 
        \context { \Staff  \remove "Staff_performer" }
        \context { \Voice  \consists "Staff_performer" }
        } 
   }
} %%end of book
