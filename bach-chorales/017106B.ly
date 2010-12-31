
% BWV 171 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 171"
composer = "Johann Sebastien Bach"
tagline = "Created by Michael Ellis from digital transcriptions by Margaret Greentree (jsbchorales.net)"
}
ATrvoiceAA = \relative c'{
    \set Staff.instrumentName = #"Trumpet 1"
    \set Staff.shortInstrumentName = #"Tr 1"
    \clef treble
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    r4     R1 *3  | % 
    a''8 b4 a16 g a8 a,16 a d d fis fis      | % 4
    a8 b4 a16 g a4 r      | % 5
    R1 *3  | % 
    a8 b4 a16 g a8 a,16 a d d fis fis      | % 9
    a8 b4 a16 g a4\fermata  r      | % 10
    R1 *3  | % 
    a8 b4 a16 g a8 a,16 a d d fis fis      | % 14
    a8 b4 a16 g a4 r      | % 15
    R1 *3  | % 
    a8 b4 a16 g a8 a,16 a d d fis fis      | % 19
    a8 b4 a16 g a4 r      | % 20
    R1 *3  | % 
    r2.      | % 24
    %bartimesig: 
    \time 3/4 
    r4      | % 24
    R2. *15  | % 
    r2      | % 39
    %bartimesig: 
    \time 4/4 
    r4 s2.      | % 39
    R1 *3  | % 
    a8 b4 a16 g a8 a,16 a d d fis fis      | % 43
    a8 b4 a16 g a4\fermata  s4      | % 44
    s2.      | % 45
    s2.      | % 46
    s2.      | % 47
    s2. \bar "|."     | % 48
    s2.      | % 49
    s2.      | % 50
    s2.      | % 51
    s2.      | % 52
    s2.      | % 53
    s2.      | % 54
    s2.      | % 55
    s2.      | % 56
    s2.      | % 57
    s2.      | % 58
    s2.      | % 59
    s2      | % 60
    s1      | % 61
    s1      | % 62
    s1      | % 63
    s1      | % 64
    s1 \bar "|." 
}% end of last bar in partorvoice

 

ATrvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Trumpet 2"
    \set Staff.shortInstrumentName = #"Tr 2"
    \clef treble
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    r4     R1 *3  | % 
    fis'8 g4 fis16 e fis8 fis,16 fis a a d d      | % 4
    fis8 g4 fis16 e fis4 r      | % 5
    R1 *3  | % 
    fis8 g4 fis16 e fis8 fis,16 fis a a d d      | % 9
    fis8 g4 fis16 e fis4 r      | % 10
    R1 *3  | % 
    fis8 g4 fis16 e fis8 fis,16 fis a a d d      | % 14
    fis8 g4 fis16 e fis4 r      | % 15
    R1 *3  | % 
    fis8 g4 fis16 e fis8 fis,16 fis a a d d      | % 19
    fis8 g4 fis16 e fis4 r      | % 20
    R1 *3  | % 
    r2.      | % 24
    %bartimesig: 
    \time 3/4 
    r4      | % 24
    R2. *15  | % 
    r2      | % 39
    %bartimesig: 
    \time 4/4 
    r4 s2.      | % 39
    R1 *3  | % 
    fis8 g4 fis16 e fis8 fis,16 fis a a d d      | % 43
    fis8 g4 fis16 e fis4 s4      | % 44
    s2.      | % 45
    s2.      | % 46
    s2.      | % 47
    s2. \bar "|."     | % 48
    s2.      | % 49
    s2.      | % 50
    s2.      | % 51
    s2.      | % 52
    s2.      | % 53
    s2.      | % 54
    s2.      | % 55
    s2.      | % 56
    s2.      | % 57
    s2.      | % 58
    s2.      | % 59
    s2      | % 60
    s1      | % 61
    s1      | % 62
    s1      | % 63
    s1      | % 64
    s1 \bar "|." 
}% end of last bar in partorvoice

 

ATrvoiceCA = \relative c'{
    \set Staff.instrumentName = #"Trumpet 3"
    \set Staff.shortInstrumentName = #"Tr 3"
    \clef treble
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    r4     R1 *3  | % 
    d'4 r r8 d,16 d fis fis a a      | % 4
    d8 d,16 d d d d d d'4 r      | % 5
    R1 *3  | % 
    d4 r r8 d,16 d fis fis a a      | % 9
    d8 d,16 d d d d d d'4 r      | % 10
    R1 *3  | % 
    d4 r r8 d,16 d fis fis a a      | % 14
    d8 d,16 d d d d d d'4 r      | % 15
    R1 *3  | % 
    d4 r r8 d,16 d fis fis a a      | % 19
    d8 d,16 d d d d d d'4 r      | % 20
    R1 *3  | % 
    r2.      | % 24
    %bartimesig: 
    \time 3/4 
    r4      | % 24
    R2. *15  | % 
    r2      | % 39
    %bartimesig: 
    \time 4/4 
    r4 s2.      | % 39
    R1 *3  | % 
    d4 r r8 d,16 d fis fis a a      | % 43
    d8 d16 d d d d d d4 s4      | % 44
    s2.      | % 45
    s2.      | % 46
    s2.      | % 47
    s2. \bar "|."     | % 48
    s2.      | % 49
    s2.      | % 50
    s2.      | % 51
    s2.      | % 52
    s2.      | % 53
    s2.      | % 54
    s2.      | % 55
    s2.      | % 56
    s2.      | % 57
    s2.      | % 58
    s2.      | % 59
    s2      | % 60
    s1      | % 61
    s1      | % 62
    s1      | % 63
    s1      | % 64
    s1 \bar "|." 
}% end of last bar in partorvoice

 

ATympvoiceDA = \relative c{
    \set Staff.instrumentName = #"Timpani"
    \set Staff.shortInstrumentName = #"Tymp"
    \clef bass
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    r4     R1 *3  | % 
    d4 r r8 d16 d d d d d      | % 4
    d8 d16 d d d d d d4 r      | % 5
    R1 *3  | % 
    d4 r r8 d16 d d d d d      | % 9
    d8 d16 d d d d d d4 r      | % 10
    R1 *3  | % 
    d4 r r8 d16 d d d d d      | % 14
    d8 d16 d d d d d d4 r      | % 15
    R1 *3  | % 
    d4 r r8 d16 d d d d d      | % 19
    d8 d16 d d d d d d4 r      | % 20
    R1 *3  | % 
    r2.      | % 24
    %bartimesig: 
    \time 3/4 
    r4      | % 24
    R2. *15  | % 
    r2      | % 39
    %bartimesig: 
    \time 4/4 
    r4 s2.      | % 39
    R1 *3  | % 
    d4 r r8 d16 d d d d d      | % 43
    d8 d16 d d d d d d4 s4      | % 44
    s2.      | % 45
    s2.      | % 46
    s2.      | % 47
    s2. \bar "|."     | % 48
    s2.      | % 49
    s2.      | % 50
    s2.      | % 51
    s2.      | % 52
    s2.      | % 53
    s2.      | % 54
    s2.      | % 55
    s2.      | % 56
    s2.      | % 57
    s2.      | % 58
    s2.      | % 59
    s2      | % 60
    s1      | % 61
    s1      | % 62
    s1      | % 63
    s1      | % 64
    s1 \bar "|." 
}% end of last bar in partorvoice

 

ASObVnvoiceEA = \relative c'{
    \set Staff.instrumentName = #"Soprano+Oboe1,2+Violin1"
    \set Staff.shortInstrumentName = #"S."
    \clef treble
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    fis'4     fis d e fis      | % 1
    g2 e4\fermata  e      | % 2
    e d d cis      | % 3
    d2.\fermata  r4      | % 4
    r2 r4 e      | % 5
    e e e fis      | % 6
    d2 d4\fermata  d      | % 7
    cis d e e      | % 8
    d2.\fermata  r4      | % 9
    r2. fis4      | % 10
    fis d e fis      | % 11
    g2 e4\fermata  e      | % 12
    e d d cis      | % 13
    d2.\fermata  r4      | % 14
    r2 r4 e      | % 15
    e e e fis      | % 16
    d2 d4\fermata  d      | % 17
    cis d e e      | % 18
    d2.\fermata  r4      | % 19
    r2. cis4      | % 20
    cis cis cis cis      | % 21
    d2 d4\fermata  cis      | % 22
    cis cis cis cis      | % 23
    d2 d4\fermata       | % 24
    %bartimesig: 
    \time 3/4 
    fis4      | % 24
    s2.      | % 25
    s2.      | % 26
    s2.      | % 27
    s2.      | % 28
    s2.      | % 29
    s2.      | % 30
    s2.      | % 31
    s2.      | % 32
    s2.      | % 33
    s2.      | % 34
    s2.      | % 35
    s2.      | % 36
    s2.      | % 37
    s2.      | % 38
    s2.      | % 39
    %bartimesig: 
    \time 4/4 
    fis4      | % 39
    s1      | % 39
    s1      | % 40
    s1      | % 41
    s1      | % 42
    s1      | % 43
    s1      | % 44
    fis4 e d      | % 45
    e2 fis4      | % 46
    g2.      | % 47
    fis2\fermata  fis4 \bar "|."     | % 48
    e2 e4      | % 49
    dis2 dis4      | % 50
    e2.~      | % 51
    e2\fermata  fis4      | % 52
    fis e d      | % 53
    e2 fis4      | % 54
    g2.      | % 55
    fis2\fermata  fis4      | % 56
    e2 e4      | % 57
    dis2 dis4      | % 58
    e2.~      | % 59
    e2\fermata       | % 60
    fis4 d e fis      | % 61
    g2 e4\fermata  e      | % 62
    e d d cis      | % 63
    d2.\fermata  r4      | % 64
    R1 \bar "|." 
}% end of last bar in partorvoice

 

AAVnvoiceFA = \relative c'{
    \set Staff.instrumentName = #"Alto+Violin2"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    a'4     a a a a      | % 1
    g8 a b4 c b      | % 2
    a a b a      | % 3
    a2. r4      | % 4
    r2 r4 a8 gis      | % 5
    a4. gis8 a4 a      | % 6
    a g8 fis g4 a      | % 7
    a8 g fis4 b a8 g      | % 8
    fis2. r4      | % 9
    r2. a4      | % 10
    a a a a      | % 11
    g8 a b4 c b      | % 12
    a a b a      | % 13
    a2. r4      | % 14
    r2 r4 a8 gis      | % 15
    a4. gis8 a4 a      | % 16
    a g8 fis g4 a      | % 17
    a8 g fis4 b a8 g      | % 18
    fis2. r4      | % 19
    r2. a4      | % 20
    a b a ais      | % 21
    b2 b4 b      | % 22
    b a e a      | % 23
    a2 a4      | % 24
    %bartimesig: 
    \time 3/4 
    a4      | % 24
    s2.      | % 25
    s2.      | % 26
    s2.      | % 27
    s2.      | % 28
    s2.      | % 29
    s2.      | % 30
    s2.      | % 31
    s2.      | % 32
    s2.      | % 33
    s2.      | % 34
    s2.      | % 35
    s2.      | % 36
    s2.      | % 37
    s2.      | % 38
    s2.      | % 39
    %bartimesig: 
    \time 4/4 
    b4      | % 39
    s1      | % 39
    s1      | % 40
    s1      | % 41
    s1      | % 42
    s1      | % 43
    s1      | % 44
    a2 a4      | % 45
    a b cis      | % 46
    d cis b      | % 47
    a2 d4 \bar "|."     | % 48
    cis4 b a      | % 49
    b c a      | % 50
    g2 c4      | % 51
    b2 b4      | % 52
    cis2 b4      | % 53
    b2 a4      | % 54
    b2 a4      | % 55
    a2 a4      | % 56
    g a b      | % 57
    a b c      | % 58
    b c a      | % 59
    gis2      | % 60
    a4 a a a      | % 61
    b2 a4 a      | % 62
    a a a8 b a g      | % 63
    fis2. r4      | % 64
    R1 \bar "|." 
}% end of last bar in partorvoice

 

ATVlavoiceGA = \relative c{
    \set Staff.instrumentName = #"Tenor+Viola"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    d'4     d8 e fis4 e d      | % 1
    d g g b,      | % 2
    cis d g8 fis e4      | % 3
    fis2. r4      | % 4
    r2 r4 cis8 b      | % 5
    cis b cis d e4 d8 c      | % 6
    c4 b8 a b4 fis'      | % 7
    e d~ d cis      | % 8
    a2. r4      | % 9
    r2. d4      | % 10
    d8 e fis4 e d      | % 11
    d g g b,      | % 12
    cis d g8 fis e4      | % 13
    fis2. r4      | % 14
    r2 r4 cis8 b      | % 15
    cis b cis d e4 d8 c      | % 16
    c4 b8 a b4 fis'      | % 17
    e d~ d cis      | % 18
    a2. r4      | % 19
    r2. e'4      | % 20
    e8 fis gis4 fis fis      | % 21
    fis2 fis4 g      | % 22
    g fis8 g a4 g~      | % 23
    g fis8 e fis4      | % 24
    %bartimesig: 
    \time 3/4 
    d4      | % 24
    s2.      | % 25
    s2.      | % 26
    s2.      | % 27
    s2.      | % 28
    s2.      | % 29
    s2.      | % 30
    s2.      | % 31
    s2.      | % 32
    s2.      | % 33
    s2.      | % 34
    s2.      | % 35
    s2.      | % 36
    s2.      | % 37
    s2.      | % 38
    s2.      | % 39
    %bartimesig: 
    \time 4/4 
    d4      | % 39
    s1      | % 39
    s1      | % 40
    s1      | % 41
    s1      | % 42
    s1      | % 43
    s1      | % 44
    d4 e fis      | % 45
    e2 a4      | % 46
    d,2 e4      | % 47
    fis2 a4 \bar "|."     | % 48
    a4 g fis      | % 49
    g fis2      | % 50
    e fis4      | % 51
    g2 d4      | % 52
    cis fis2      | % 53
    b,4 cis d      | % 54
    d cis8 b cis4      | % 55
    d2 b4      | % 56
    b2 e4      | % 57
    fis2 fis4      | % 58
    b, e c      | % 59
    b2      | % 60
    d4 d cis d      | % 61
    d8 fis e d cis4 cis      | % 62
    cis d8 e fis4 e8 a,      | % 63
    a2. r4      | % 64
    R1 \bar "|." 
}% end of last bar in partorvoice

 

ABContvoiceHA = \relative c{
    \set Staff.instrumentName = #"Bass+Continuo"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    d4     d d' cis c      | % 1
    b a8 g c4 gis      | % 2
    a8 g fis4 g a      | % 3
    d,2. r4      | % 4
    r2 r4 a      | % 5
    a'8 gis a b cis a d4      | % 6
    g,2 g4 fis8 g      | % 7
    a4 b8 a g4 a8 a,      | % 8
    d2. r4      | % 9
    r2. d4      | % 10
    d d' cis c      | % 11
    b a8 g c4 gis      | % 12
    a8 g fis4 g a      | % 13
    d,2. r4      | % 14
    r2 r4 a      | % 15
    a'8 gis a b cis a d4      | % 16
    g,2 g4 fis8 g      | % 17
    a4 b8 a g4 a8 a,      | % 18
    d2. r4      | % 19
    r2. a4      | % 20
    a'8 gis fis eis fis e d cis      | % 21
    b2 b4 e      | % 22
    fis8 g a b a g fis e      | % 23
    d2 d4      | % 24
    %bartimesig: 
    \time 3/4 
    d4      | % 24
    s2.      | % 25
    s2.      | % 26
    s2.      | % 27
    s2.      | % 28
    s2.      | % 29
    s2.      | % 30
    s2.      | % 31
    s2.      | % 32
    s2.      | % 33
    s2.      | % 34
    s2.      | % 35
    s2.      | % 36
    s2.      | % 37
    s2.      | % 38
    s2.      | % 39
    %bartimesig: 
    \time 4/4 
    b8 cis      | % 39
    s1      | % 39
    s1      | % 40
    s1      | % 41
    s1      | % 42
    s1      | % 43
    s1      | % 44
    d'4 cis b      | % 45
    cis b a      | % 46
    b2 cis4      | % 47
    d2 d,4 \bar "|."     | % 48
    a'4 b c      | % 49
    b a b      | % 50
    c b a      | % 51
    e2 b'4      | % 52
    ais2 b4      | % 53
    g2 fis4      | % 54
    e2 a4      | % 55
    d,2 dis4      | % 56
    e fis g      | % 57
    fis g a      | % 58
    gis a a,      | % 59
    e'2      | % 60
    d8 e fis d g a g fis      | % 61
    e fis g e a b a g      | % 62
    fis e fis g a g a a,      | % 63
    d2. r4      | % 64
    R1 \bar "|." 
}% end of last bar in partorvoice



\addQuote "articulations"   { \ATrvoiceAA }
\book {
\layout { \scorepaper }
\score {
<<
\part ATrvoiceAA { \ATrvoiceAA } { \transpose d c \ATrvoiceAA }
\part ATrvoiceBA { \quotearticulations \ATrvoiceBA \ATrvoiceAA } { \transpose d c \ATrvoiceBA }
\part ATrvoiceCA { \quotearticulations \ATrvoiceCA \ATrvoiceAA } { \transpose d c \ATrvoiceCA }
\part ATympvoiceDA { \quotearticulations \ATympvoiceDA \ATrvoiceAA } { \transpose d c \ATympvoiceDA }
\part ASObVnvoiceEA { \ASObVnvoiceEA } { \transpose d c \ASObVnvoiceEA }
\part AAVnvoiceFA { \quotearticulations \AAVnvoiceFA \ATrvoiceAA } { \transpose d c \AAVnvoiceFA }
\part ATVlavoiceGA { \quotearticulations \ATVlavoiceGA \ATrvoiceAA } { \transpose d c \ATVlavoiceGA }
\part ABContvoiceHA { \quotearticulations \ABContvoiceHA \ATrvoiceAA } { \transpose d c \ABContvoiceHA }
>>
}
\score {
<<
\new Voice = ATrvoiceAA \ATrvoiceAA
\new Voice = ATrvoiceBA \ATrvoiceBA
\new Voice = ATrvoiceCA \ATrvoiceCA
\new Voice = ATympvoiceDA \ATympvoiceDA
\new Voice = ASObVnvoiceEA \ASObVnvoiceEA
\new Voice = AAVnvoiceFA \AAVnvoiceFA
\new Voice = ATVlavoiceGA \ATVlavoiceGA
\new Voice = ABContvoiceHA \ABContvoiceHA
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
\part ATrvoiceAA { \ATrvoiceAA } { \transpose d c \ATrvoiceAA }
>>
}
\score {
<<
\new Voice = ATrvoiceAA \ATrvoiceAA
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
\part ATrvoiceBA { \quotearticulations \ATrvoiceBA \ATrvoiceAA } { \transpose d c \ATrvoiceBA }
>>
}
\score {
<<
\new Voice = ATrvoiceBA \ATrvoiceBA
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
\part ATrvoiceCA { \quotearticulations \ATrvoiceCA \ATrvoiceAA } { \transpose d c \ATrvoiceCA }
>>
}
\score {
<<
\new Voice = ATrvoiceCA \ATrvoiceCA
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
\part ATympvoiceDA { \quotearticulations \ATympvoiceDA \ATrvoiceAA } { \transpose d c \ATympvoiceDA }
>>
}
\score {
<<
\new Voice = ATympvoiceDA \ATympvoiceDA
>>

        \midi   { 
        \context { \Staff  \remove "Staff_performer" }
        \context { \Voice  \consists "Staff_performer" }
        } 
   }
} %%end of book
#(define output-suffix "Soprano+Oboe1,2+Violin1")
\book {
\layout { \partpaper }
\score {
<<
\part ASObVnvoiceEA { \ASObVnvoiceEA } { \transpose d c \ASObVnvoiceEA }
>>
}
\score {
<<
\new Voice = ASObVnvoiceEA \ASObVnvoiceEA
>>

        \midi   { 
        \context { \Staff  \remove "Staff_performer" }
        \context { \Voice  \consists "Staff_performer" }
        } 
   }
} %%end of book
#(define output-suffix "Alto+Violin2")
\book {
\layout { \partpaper }
\score {
<<
\part AAVnvoiceFA { \quotearticulations \AAVnvoiceFA \ATrvoiceAA } { \transpose d c \AAVnvoiceFA }
>>
}
\score {
<<
\new Voice = AAVnvoiceFA \AAVnvoiceFA
>>

        \midi   { 
        \context { \Staff  \remove "Staff_performer" }
        \context { \Voice  \consists "Staff_performer" }
        } 
   }
} %%end of book
#(define output-suffix "Tenor+Viola")
\book {
\layout { \partpaper }
\score {
<<
\part ATVlavoiceGA { \quotearticulations \ATVlavoiceGA \ATrvoiceAA } { \transpose d c \ATVlavoiceGA }
>>
}
\score {
<<
\new Voice = ATVlavoiceGA \ATVlavoiceGA
>>

        \midi   { 
        \context { \Staff  \remove "Staff_performer" }
        \context { \Voice  \consists "Staff_performer" }
        } 
   }
} %%end of book
#(define output-suffix "Bass+Continuo")
\book {
\layout { \partpaper }
\score {
<<
\part ABContvoiceHA { \quotearticulations \ABContvoiceHA \ATrvoiceAA } { \transpose d c \ABContvoiceHA }
>>
}
\score {
<<
\new Voice = ABContvoiceHA \ABContvoiceHA
>>

        \midi   { 
        \context { \Staff  \remove "Staff_performer" }
        \context { \Voice  \consists "Staff_performer" }
        } 
   }
} %%end of book
