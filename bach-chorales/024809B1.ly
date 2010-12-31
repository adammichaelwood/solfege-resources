
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
    \set Staff.instrumentName = #"Trumpet 1,2"
    \set Staff.shortInstrumentName = #""
    \clef treble
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    r4     R1  | % 
    r2 r8 <d' fis>16 <e g> <d fis>8 <d fis>      | % 2
    r <d fis>16 <e g> <d fis>8 <d fis> r <g b> <fis a> <e g>      | % 3
    <d fis>16 <fis a> <g b> <e cis'> <fis d'>8 r r2      | % 4
    R1  | % 
    r8 <fis, d'>16 <a e'> <fis d'>8 <fis d'> r <fis d'>16 <a e'> <fis d'>8 <fis d'>      | % 6
    r <e' g> <d fis> <a e'> <fis d'>16 <d a'> <fis d'> <a e'> <d fis>8 r      | % 7
    R1  | % 
    r2 r8 <a' cis>16 <b d> <a cis>8 <a cis>      | % 9
    r <a cis>16 <b d> <a cis>8 <a cis> r <b d> <a cis> <gis b>      | % 10
    <a cis>16 <g b> <fis a> <e g> <d fis>8 r r2      | % 11
    R1  | % 
    r8 <d fis>16 <e g> <d fis>8 <d fis> r <d fis>16 <e g> <d fis>8 <d fis>      | % 13
    r <g b> <fis a> <e g> <d fis>16 <fis a> <g b> <e cis'> <fis d'>8 <d g>      | % 14
    <d fis>4 <a fis'>16 <fis e'>~ <a e'>8 <fis d'>4\fermata  s4 \bar "|." 
}% end of last bar in partorvoice

 

AvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Trumpet 3"
    \set Staff.shortInstrumentName = #""
    \clef treble
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    r4     R1  | % 
    r2 a'4 r8 a16 fis      | % 2
    d8 fis r fis16 a d8 d d a      | % 3
    a4 r r2      | % 4
    R1  | % 
    a4 r8 a16 fis d8 fis r fis16 a      | % 6
    d8 d16 e fis g a8 a,4 r      | % 7
    R1  | % 
    r2 a4 r8 a16 e'      | % 9
    fis8 a, r fis16 a fis'8 fis e e      | % 10
    e r r4 r2      | % 11
    R1  | % 
    a,4 r8 a16 fis d8 fis r fis16 a      | % 13
    d8 d d a d,4 r8 d16 d      | % 14
    d8 fis16 d a'8 a a4 s4 \bar "|." 
}% end of last bar in partorvoice

 

AvoiceCA = \relative c{
    \set Staff.instrumentName = #"Timpani"
    \set Staff.shortInstrumentName = #""
    \clef bass
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    r4     R1  | % 
    r2 d4 r8 d16 d      | % 2
    d4 r8 d16 d d8 d a a      | % 3
    d4 r r2      | % 4
    R1  | % 
    d4 r8 d16 d d4 r8 d16 d      | % 6
    d8 d a a d4 r      | % 7
    R1  | % 
    r2 a4 r8 a16 a      | % 9
    a4 r8 a16 a d8 r r4      | % 10
    a r r2      | % 11
    R1  | % 
    d4 r8 d16 d d4 r8 d16 d      | % 13
    d8 d a a d4 r8 d      | % 14
    a4 a16 a a a d4 s4 \bar "|." 
}% end of last bar in partorvoice

 

ASvoiceDA = \relative c'{
    \set Staff.instrumentName = #"Soprano"
    \set Staff.shortInstrumentName = #"S."
    \clef treble
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    d'4     cis b cis a      | % 1
    b cis d r      | % 2
    R1  | % 
    r4 d d a      | % 4
    a fis8 g a4 g      | % 5
    fis r r2      | % 6
    r r4 fis      | % 7
    b b a8 b cis4      | % 8
    d8 cis b4 a r      | % 9
    R1  | % 
    r4 d cis b      | % 11
    a b8 a g fis e4      | % 12
    d\fermata  r r2      | % 13
    R1 \bar "|." 
}% end of last bar in partorvoice

 

AAvoiceEA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key d \major 
*2  | % 
    %bartimesig: 
    \time 4/4 
    \partial 4
    a'4     a8 gis fis4 e fis8 e      | % 1
    d4 e fis r      | % 2
    R1  | % 
    r4 fis8 g a g fis4      | % 4
    e d d e      | % 5
    d r r2      | % 6
    r r4 d8 e      | % 7
    fis4 e e8 gis a4      | % 8
    a~ a8 gis e4 r      | % 9
    R1  | % 
    r4 fis8 e e fis fis e      | % 11
    cis d b cis d4~ d8 cis      | % 12
    a4 r r2      | % 13
    R1 \bar "|." 
}% end of last bar in partorvoice

 

ATvoiceFA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef "treble_8"
    %staffkeysig
    \key d \major 
*2  | % 
    %bartimesig: 
    \time 4/4 
    \partial 4
    fis'4     e d cis d8 cis      | % 1
    b a g4 a r      | % 2
    R1  | % 
    r4 a d d      | % 4
    cis c8 b a4 a      | % 5
    a r r2      | % 6
    r r4 a      | % 7
    a gis a8 d cis b      | % 8
    a cis fis e cis4 r      | % 9
    R1  | % 
    r4 d8 b b a a g      | % 11
    a4 g8 fis d4 a'8 g      | % 12
    fis4 r r2      | % 13
    R1 \bar "|." 
}% end of last bar in partorvoice

 

ABvoiceGA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key d \major 
*2  | % 
    %bartimesig: 
    \time 4/4 
    \partial 4
    d4     a'~ a8 gis a g fis4      | % 1
    g8 fis e4 d r      | % 2
    R1  | % 
    r4 d8 e fis4 fis8 g      | % 4
    a4 a8 g fis e d cis      | % 5
    d4 r r2      | % 6
    r r4 d      | % 7
    dis e8 d cis b a4      | % 8
    fis'8 e d e a,4 r      | % 9
    R1  | % 
    r4 b'8 e, a4 d,8 g      | % 11
    g fis g a b g a a,      | % 12
    d4 r r2      | % 13
    R1 \bar "|." 
}% end of last bar in partorvoice

 

AvoiceHA = \relative c{
    \set Staff.instrumentName = #"Continuo"
    \set Staff.shortInstrumentName = #""
    \clef bass
    %staffkeysig
    \key d \major 
*2  | % 
    %bartimesig: 
    \time 4/4 
    \partial 4
    d4     a'~ a8 gis a g fis4      | % 1
    g8 fis e4 d8 d' r16 d, fis d      | % 2
    b8 b' r16 b, d b g8 g' a a,      | % 3
    d d, d' e fis fis, fis' g      | % 4
    a a, a' g fis e d cis      | % 5
    d d' r16 d, fis d b8 b' r16 b, d b      | % 6
    g8 g' a a, d d, d' cis      | % 7
    dis b e d cis b a gis      | % 8
    fis e d e a a' r16 a, cis a      | % 9
    fis8 fis' r16 fis, a fis d8 d' e e,      | % 10
    a a'~ a gis fis a d, g~      | % 11
    g fis g a b g a a,      | % 12
    d d' r16 d, fis d b8 b' r16 b, d b      | % 13
    g8 g' a a, b4 r8 b'      | % 14
    a g a a, d,4 s4 \bar "|." 
}% end of last bar in partorvoice



\addQuote "articulations"   { \AvoiceAA }
\book {
\layout { \scorepaper }
\score {
<<
\part AvoiceAA { \AvoiceAA } { \transpose d c \AvoiceAA }
\part AvoiceBA { \quotearticulations \AvoiceBA \AvoiceAA } { \transpose d c \AvoiceBA }
\part AvoiceCA { \quotearticulations \AvoiceCA \AvoiceAA } { \transpose d c \AvoiceCA }
\part ASvoiceDA { \ASvoiceDA } { \transpose d c \ASvoiceDA }
\part AAvoiceEA { \quotearticulations \AAvoiceEA \AvoiceAA } { \transpose d c \AAvoiceEA }
\part ATvoiceFA { \quotearticulations \ATvoiceFA \AvoiceAA } { \transpose d c \ATvoiceFA }
\part ABvoiceGA { \quotearticulations \ABvoiceGA \AvoiceAA } { \transpose d c \ABvoiceGA }
\part AvoiceHA { \quotearticulations \AvoiceHA \AvoiceAA } { \transpose d c \AvoiceHA }
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
\new Voice = AvoiceHA \AvoiceHA
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
\part AvoiceAA { \AvoiceAA } { \transpose d c \AvoiceAA }
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
#(define output-suffix "Trumpe")
\book {
\layout { \partpaper }
\score {
<<
\part AvoiceBA { \quotearticulations \AvoiceBA \AvoiceAA } { \transpose d c \AvoiceBA }
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
#(define output-suffix "Timpani")
\book {
\layout { \partpaper }
\score {
<<
\part AvoiceCA { \quotearticulations \AvoiceCA \AvoiceAA } { \transpose d c \AvoiceCA }
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
\part ASvoiceDA { \ASvoiceDA } { \transpose d c \ASvoiceDA }
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
\part AAvoiceEA { \quotearticulations \AAvoiceEA \AvoiceAA } { \transpose d c \AAvoiceEA }
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
\part ATvoiceFA { \quotearticulations \ATvoiceFA \AvoiceAA } { \transpose d c \ATvoiceFA }
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
\part ABvoiceGA { \quotearticulations \ABvoiceGA \AvoiceAA } { \transpose d c \ABvoiceGA }
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
#(define output-suffix "Continuo")
\book {
\layout { \partpaper }
\score {
<<
\part AvoiceHA { \quotearticulations \AvoiceHA \AvoiceAA } { \transpose d c \AvoiceHA }
>>
}
\score {
<<
\new Voice = AvoiceHA \AvoiceHA
>>

        \midi   { 
        \context { \Staff  \remove "Staff_performer" }
        \context { \Voice  \consists "Staff_performer" }
        } 
   }
} %%end of book
