
% BWV 172 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 172"
composer = "Johann Sebastien Bach"
tagline = "Created by Michael Ellis from digital transcriptions by Margaret Greentree (jsbchorales.net)"
}
AVnvoiceAA = \relative c'{
    \set Staff.instrumentName = #"Violin"
    \set Staff.shortInstrumentName = #"Vn"
    \clef treble
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    f'4     g a~ a8 g f ees      | % 1
    d e f g a4\fermata  g      | % 2
    f e~ e8 d~ d c      | % 3
    a' f d g~ g e c f~      | % 4
    f g~ g a bes, c~ c d      | % 5
    g, a bes c a4\fermata  f'      | % 6
    g a~ a8 g f ees      | % 7
    d e f g a4\fermata  g      | % 8
    f e~ e8 d~ d c      | % 9
    a' f d g~ g e c f~      | % 10
    f g~ g a bes, c~ c d      | % 11
    g, a bes c a4\fermata  r      | % 12
    c8 e g4~ g8 f16 e f4~      | % 13
    f8 g16 f e f d e f8 g a bes      | % 14
    c4 ^\markup {\upright  "BWV 172.6"} c,8 d e f g4~      | % 15
    g8 f16 e f a g f e8 d c bes      | % 16
    a g f e d bes'4 a16 g      | % 17
    a8 c d e f a, bes c      | % 18
    d bes'~ bes a~ a g~ g f~      | % 19
    f g16 a e4 f\fermata  \bar "|." 
}% end of last bar in partorvoice

 

ASvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Soprano"
    \set Staff.shortInstrumentName = #"S"
    \clef treble
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    f4     c'8 bes a g f4 c'      | % 1
    d d c\fermata  c      | % 2
    d e f e      | % 3
    d d c\fermata  a      | % 4
    d c bes a      | % 5
    g2 f4\fermata  f      | % 6
    c'8 bes a g f4 c'      | % 7
    d d c\fermata  c      | % 8
    d e f e      | % 9
    d d c\fermata  a      | % 10
    d c bes a      | % 11
    g2 f4\fermata  r      | % 12
    c'2 a      | % 13
    c a\fermata       | % 14
    a4 a g g      | % 15
    a a g g      | % 16
    a a g2      | % 17
    f\fermata  f'4 e      | % 18
    d c bes a      | % 19
    g2 f4\fermata  \bar "|." 
}% end of last bar in partorvoice

 

AAvoiceCA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A"
    \clef treble
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    c4     c c d8 e f4      | % 1
    f f f\fermata  g      | % 2
    a g f8 g g4      | % 3
    f f e\fermata  f      | % 4
    f e f8 g f4      | % 5
    f e f\fermata  c      | % 6
    c c d8 e f4      | % 7
    f f f\fermata  g      | % 8
    a g f8 g g4      | % 9
    f f e\fermata  f      | % 10
    f e f8 g f4      | % 11
    f e f\fermata  r      | % 12
    g2 a      | % 13
    g f\fermata       | % 14
    f4 f e8 d c4      | % 15
    c c8 d e4 e      | % 16
    f f f e      | % 17
    f2\fermata  a4 g      | % 18
    f e d c      | % 19
    d c c\fermata  \bar "|." 
}% end of last bar in partorvoice

 

ATvoiceDA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T"
    \clef "treble_8"
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    a'4     g f8 g a bes c4      | % 1
    c8 bes16 a bes8 bes a4\fermata  c      | % 2
    c b c8 d e g,      | % 3
    a d b4 c\fermata  c      | % 4
    bes8 a g4 d'8 c c4      | % 5
    c2 c4\fermata  a      | % 6
    g f8 g a bes c4      | % 7
    c8 bes16 a bes8 bes a4\fermata  c      | % 8
    c b c8 d e g,      | % 9
    a d b4 c\fermata  c      | % 10
    bes8 a g4 d'8 c c4      | % 11
    c2 c4\fermata  r      | % 12
    c2 c      | % 13
    c c\fermata       | % 14
    c4 c c c8 bes      | % 15
    a bes c4 c c      | % 16
    c d d c8 bes      | % 17
    a2\fermata  d8 c bes4      | % 18
    bes8 a g4 f8 g a c      | % 19
    bes8. a16 g4 a\fermata  \bar "|." 
}% end of last bar in partorvoice

 

ABvoiceEA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B"
    \clef bass
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    f4     e f8 e d4 a      | % 1
    bes8 c d e f4\fermata  e      | % 2
    f g a8 b c e,      | % 3
    f d g4 c,\fermata  f      | % 4
    bes, c d8 e f bes,      | % 5
    c2 f,4\fermata  f'      | % 6
    e f8 e d4 a      | % 7
    bes8 c d e f4\fermata  e      | % 8
    f g a8 b c e,      | % 9
    f d g4 c,\fermata  f      | % 10
    bes, c d8 e f bes,      | % 11
    c2 f,4\fermata  r      | % 12
    e'2 f      | % 13
    c f,\fermata       | % 14
    f8 g a bes c d e c      | % 15
    f g a bes c bes a g      | % 16
    f e d c bes g c4      | % 17
    f,2\fermata  d8 f g a      | % 18
    bes4 c d8 e f a,      | % 19
    bes g c4 f,\fermata  \bar "|." 
}% end of last bar in partorvoice



\addQuote "articulations"   { \AVnvoiceAA }
\book {
\layout { \scorepaper }
\score {
<<
\part AVnvoiceAA { \AVnvoiceAA } { \transpose f c \AVnvoiceAA }
\part ASvoiceBA { \ASvoiceBA } { \transpose f c \ASvoiceBA }
\part AAvoiceCA { \AAvoiceCA } { \transpose f c \AAvoiceCA }
\part ATvoiceDA { \ATvoiceDA } { \transpose f c \ATvoiceDA }
\part ABvoiceEA { \ABvoiceEA } { \transpose f c \ABvoiceEA }
>>
}
\score {
<<
\new Voice = AVnvoiceAA \AVnvoiceAA
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

#(define output-suffix "Violin")
\book {
\layout { \partpaper }
\score {
<<
\part AVnvoiceAA { \AVnvoiceAA } { \transpose f c \AVnvoiceAA }
>>
}
\score {
<<
\new Voice = AVnvoiceAA \AVnvoiceAA
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
\part ASvoiceBA { \ASvoiceBA } { \transpose f c \ASvoiceBA }
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
\part AAvoiceCA { \AAvoiceCA } { \transpose f c \AAvoiceCA }
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
\part ATvoiceDA { \ATvoiceDA } { \transpose f c \ATvoiceDA }
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
\part ABvoiceEA { \ABvoiceEA } { \transpose f c \ABvoiceEA }
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
