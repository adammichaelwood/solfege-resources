
% BWV 248 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 248"
composer = "Johann Sebastien Bach"
tagline = "Created by Michael Ellis from digital transcriptions by Margaret Greentree (jsbchorales.net)"
}
AvoiceAA = \relative c'{
    \set Staff.instrumentName = #"Oboe"
    \set Staff.shortInstrumentName = #""
    \clef treble
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    e4     d4. c8 b4 c8 b      | % 1
    a g f4 g\fermata  a      | % 2
    a8 b c4 b8 a g a      | % 3
    bes4. a8 g4\fermata  c8 bes      | % 4
    a g f4 g d'      | % 5
    c c c\fermata  e      | % 6
    e8 b c4 b a8 b      | % 7
    c4 g'8 f e4\fermata  s4 \bar "|." 
}% end of last bar in partorvoice

 

ASvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Soprano"
    \set Staff.shortInstrumentName = #"S."
    \clef treble
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    c'4     b a b8 a g4      | % 1
    a b c\fermata  c      | % 2
    c g g8 f e f      | % 3
    g4 f e\fermata  e      | % 4
    a a g8 a b4      | % 5
    c8 b a4 g\fermata  c      | % 6
    b a g a8 g      | % 7
    f e d4 c\fermata  s4 \bar "|." 
}% end of last bar in partorvoice

 

AAvoiceCA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    g'4     g8 f e4 fis e8 d      | % 1
    c4 d e e      | % 2
    e e d c      | % 3
    c c c c      | % 4
    c f8 e d c b4      | % 5
    a8 e' f4 e a      | % 6
    a8 g f4 e4. d8      | % 7
    c4. b8 g4 s4 \bar "|." 
}% end of last bar in partorvoice

 

ATvoiceDA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef "treble_8"
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    e'4     d4. c8 b4 c8 b      | % 1
    a g f4 g a      | % 2
    a8 b c4 b8 a g a      | % 3
    bes4. a8 g4 c8 bes      | % 4
    a g f4 f g8 f      | % 5
    e c c'4 c e      | % 6
    e8 b c4 b a8 b      | % 7
    c a d, g e4 s4 \bar "|." 
}% end of last bar in partorvoice

 

ABvoiceEA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    c4     g' a dis, e      | % 1
    f8 e d4 c a8 b      | % 2
    c d e f g a bes4      | % 3
    e, f c a'8 g      | % 4
    f e d c b a g4      | % 5
    a4. b8 c4 c8 d      | % 6
    e4. d8~ d c4 b8      | % 7
    a16 b c8 g' g, c4 s4 \bar "|." 
}% end of last bar in partorvoice



\addQuote "articulations"   { \AvoiceAA }
\book {
\layout { \scorepaper }
\score {
<<
\part AvoiceAA { \AvoiceAA } { \transpose c c \AvoiceAA }
\part ASvoiceBA { \ASvoiceBA } { \transpose c c \ASvoiceBA }
\part AAvoiceCA { \quotearticulations \AAvoiceCA \AvoiceAA } { \transpose c c \AAvoiceCA }
\part ATvoiceDA { \quotearticulations \ATvoiceDA \AvoiceAA } { \transpose c c \ATvoiceDA }
\part ABvoiceEA { \quotearticulations \ABvoiceEA \AvoiceAA } { \transpose c c \ABvoiceEA }
>>
}
\score {
<<
\new Voice = AvoiceAA \AvoiceAA
\new Voice = ASvoiceBA \ASvoiceBA
\new Voice = AAvoiceCA \AAvoiceCA
\new Voice = ATvoiceDA \ATvoiceDA
\new Voice = ABvoiceEA \ABvoiceEA
>>

        \midi   { 
        \context { \Staff  \remove "Staff_performer" }
        \context { \Voice  \consists "Staff_performer" }
        } 
   }
} %%end of book

#(define output-suffix "Oboe")
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
#(define output-suffix "Soprano")
\book {
\layout { \partpaper }
\score {
<<
\part ASvoiceBA { \ASvoiceBA } { \transpose c c \ASvoiceBA }
>>
}
\score {
<<
\new Voice = ASvoiceBA \ASvoiceBA
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
\part AAvoiceCA { \quotearticulations \AAvoiceCA \AvoiceAA } { \transpose c c \AAvoiceCA }
>>
}
\score {
<<
\new Voice = AAvoiceCA \AAvoiceCA
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
\part ATvoiceDA { \quotearticulations \ATvoiceDA \AvoiceAA } { \transpose c c \ATvoiceDA }
>>
}
\score {
<<
\new Voice = ATvoiceDA \ATvoiceDA
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
\part ABvoiceEA { \quotearticulations \ABvoiceEA \AvoiceAA } { \transpose c c \ABvoiceEA }
>>
}
\score {
<<
\new Voice = ABvoiceEA \ABvoiceEA
>>

        \midi   { 
        \context { \Staff  \remove "Staff_performer" }
        \context { \Voice  \consists "Staff_performer" }
        } 
   }
} %%end of book
