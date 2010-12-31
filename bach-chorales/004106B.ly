
% BWV 41 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 41"
composer = "Johann Sebastien Bach"
tagline = "Created by Michael Ellis from digital transcriptions by Margaret Greentree (jsbchorales.net)"
}
ATrvoiceAA = \relative c'{
    \set Staff.instrumentName = #"Trumpet 1"
    \set Staff.shortInstrumentName = #"Tr 1"
    \clef treble
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    r4     R1 *3  | % 
    g''8 a4 g16 f g8 g,16 g c c e e      | % 4
    g8 a4 g16 f g4 r      | % 5
    R1 *3  | % 
    g8 a4 g16 f g8 g,16 g c c e e      | % 9
    g8 a4 g16 f g4\fermata  r      | % 10
    R1 *3  | % 
    g8 a4 g16 f g8 g,16 g c c e e      | % 14
    g8 a4 g16 f g4 r      | % 15
    R1 *3  | % 
    g8 a4 g16 f g8 g,16 g c c e e      | % 19
    g8 a4 g16 f g4 r      | % 20
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
    g8 a4 g16 f g8 g,16 g c c e e      | % 43
    g8 a4 g16 f g4\fermata  s4      | % 44
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
    \key c \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    r4     R1 *3  | % 
    e'8 f4 e16 d e8 e,16 e g g c c      | % 4
    e8 f4 e16 d e4 r      | % 5
    R1 *3  | % 
    e8 f4 e16 d e8 e,16 e g g c c      | % 9
    e8 f4 e16 d e4 r      | % 10
    R1 *3  | % 
    e8 f4 e16 d e8 e,16 e g g c c      | % 14
    e8 f4 e16 d e4 r      | % 15
    R1 *3  | % 
    e8 f4 e16 d e8 e,16 e g g c c      | % 19
    e8 f4 e16 d e4 r      | % 20
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
    e8 f4 e16 d e8 e,16 e g g c c      | % 43
    e8 f4 e16 d e4 s4      | % 44
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
    \key c \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    r4     R1 *3  | % 
    c'4 r r8 c,16 c e e g g      | % 4
    c8 c,16 c c c c c c'4 r      | % 5
    R1 *3  | % 
    c4 r r8 c,16 c e e g g      | % 9
    c8 c,16 c c c c c c'4 r      | % 10
    R1 *3  | % 
    c4 r r8 c,16 c e e g g      | % 14
    c8 c,16 c c c c c c'4 r      | % 15
    R1 *3  | % 
    c4 r r8 c,16 c e e g g      | % 19
    c8 c,16 c c c c c c'4 r      | % 20
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
    c4 r r8 c,16 c e e g g      | % 43
    c8 c16 c c c c c c4 s4      | % 44
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
    \key c \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    r4     R1 *3  | % 
    c4 r r8 c16 c c c c c      | % 4
    c8 c16 c c c c c c4 r      | % 5
    R1 *3  | % 
    c4 r r8 c16 c c c c c      | % 9
    c8 c16 c c c c c c4 r      | % 10
    R1 *3  | % 
    c4 r r8 c16 c c c c c      | % 14
    c8 c16 c c c c c c4 r      | % 15
    R1 *3  | % 
    c4 r r8 c16 c c c c c      | % 19
    c8 c16 c c c c c c4 r      | % 20
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
    c4 r r8 c16 c c c c c      | % 43
    c8 c16 c c c c c c4 s4      | % 44
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

 

AObvoiceEA = \relative c'{
    \set Staff.instrumentName = #"Oboe 3"
    \set Staff.shortInstrumentName = #"Ob3"
    \clef treble
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    c4     c8 d e4 d c      | % 1
    c f f d      | % 2
    d e8 f16 g f8 e d4      | % 3
    e2. r4      | % 4
    r2 r4 b'8 c      | % 5
    b a g4 d c      | % 6
    c f a g      | % 7
    g8 f e4 f8 e d g      | % 8
    g2. r4      | % 9
    r2. c,4      | % 10
    c8 d e4 d c      | % 11
    c f f d      | % 12
    d e8 f16 g f8 e d4      | % 13
    e2. r4      | % 14
    r2 r4 b'8 c      | % 15
    b a g4 d c      | % 16
    c f a g      | % 17
    g8 f e4 f8 e d g      | % 18
    g2. r4      | % 19
    r2. d4      | % 20
    d8 e fis4 e e      | % 21
    e2 e4 f      | % 22
    f e8 f g4 f~      | % 23
    f e8 d e4      | % 24
    %bartimesig: 
    \time 3/4 
    c4      | % 24
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
    c4      | % 39
    s1      | % 39
    s1      | % 40
    s1      | % 41
    s1      | % 42
    s1      | % 43
    s1      | % 44
    c4 d e      | % 45
    d2 g4      | % 46
    r2.      | % 47
    r2. \bar "|."     | % 48
    r2.      | % 49
    r2.      | % 50
    r2.      | % 51
    r2 c,4      | % 52
    e2 a4      | % 53
    f2 c4      | % 54
    f8 a b c b d,      | % 55
    c2 e4      | % 56
    a2 d,4      | % 57
    e2 e4      | % 58
    d g bes      | % 59
    a2      | % 60
    c,4 c8 g' b g c4      | % 61
    f,8 e d4 d d      | % 62
    e e8 d e4 d8 g      | % 63
    g2. r4      | % 64
    R1 \bar "|." 
}% end of last bar in partorvoice

 

ASObVnvoiceFA = \relative c'{
    \set Staff.instrumentName = #"Soprano+Oboe1+Violin1"
    \set Staff.shortInstrumentName = #"S."
    \clef treble
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    e'4     e c d e      | % 1
    f2 d4\fermata  d      | % 2
    d c c b      | % 3
    c2.\fermata  r4      | % 4
    r2 r4 d      | % 5
    d d d e      | % 6
    c2 c4\fermata  c      | % 7
    b c d d      | % 8
    c2.\fermata  r4      | % 9
    r2. e4      | % 10
    e c d e      | % 11
    f2 d4\fermata  d      | % 12
    d c c b      | % 13
    c2.\fermata  r4      | % 14
    r2 r4 d      | % 15
    d d d e      | % 16
    c2 c4\fermata  c      | % 17
    b c d d      | % 18
    c2.\fermata  r4      | % 19
    r2. b4      | % 20
    b b b b      | % 21
    c2 c4\fermata  b      | % 22
    b b b b      | % 23
    c2 c4\fermata       | % 24
    %bartimesig: 
    \time 3/4 
    e4      | % 24
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
    e4      | % 39
    s1      | % 39
    s1      | % 40
    s1      | % 41
    s1      | % 42
    s1      | % 43
    s1      | % 44
    e4 d c      | % 45
    d2 e4      | % 46
    f2.      | % 47
    e2\fermata  e4 \bar "|."     | % 48
    d2 d4      | % 49
    cis2 cis4      | % 50
    d2.~      | % 51
    d2\fermata  e4      | % 52
    e d c      | % 53
    d2 e4      | % 54
    f2.      | % 55
    e2\fermata  e4      | % 56
    d2 d4      | % 57
    cis2 cis4      | % 58
    d2.~      | % 59
    d2\fermata       | % 60
    e4 c d e      | % 61
    f2 d4\fermata  d      | % 62
    d c c b      | % 63
    c2.\fermata  r4      | % 64
    R1 \bar "|." 
}% end of last bar in partorvoice

 

AAObVnvoiceGA = \relative c'{
    \set Staff.instrumentName = #"Alto+Oboe2+Violin2"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    g'4     g g g g      | % 1
    f8 g a4 bes a      | % 2
    g g a g      | % 3
    g2. r4      | % 4
    r2 r4 g8 fis      | % 5
    g4. fis8 g4 g      | % 6
    g f8 e f4 g      | % 7
    g8 f e4 a g8 f      | % 8
    e2. r4      | % 9
    r2. g4      | % 10
    g g g g      | % 11
    f8 g a4 bes a      | % 12
    g g a g      | % 13
    g2. r4      | % 14
    r2 r4 g8 fis      | % 15
    g4. fis8 g4 g      | % 16
    g f8 e f4 g      | % 17
    g8 f e4 a g8 f      | % 18
    e2. r4      | % 19
    r2. g4      | % 20
    g a g gis      | % 21
    a2 a4 a      | % 22
    a g d g      | % 23
    g2 g4      | % 24
    %bartimesig: 
    \time 3/4 
    g4      | % 24
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
    a4      | % 39
    s1      | % 39
    s1      | % 40
    s1      | % 41
    s1      | % 42
    s1      | % 43
    s1      | % 44
    g2 g4      | % 45
    g a b      | % 46
    c b a      | % 47
    g2 c4 \bar "|."     | % 48
    b4 a g      | % 49
    a bes g      | % 50
    f2 bes4      | % 51
    a2 a4      | % 52
    b2 a4      | % 53
    a2 g4      | % 54
    a2 g4      | % 55
    g2 g4      | % 56
    f g a      | % 57
    g a bes      | % 58
    a bes g      | % 59
    fis2      | % 60
    g4 g g g      | % 61
    a2 g4 g      | % 62
    g g g8 a g f      | % 63
    e2. r4      | % 64
    R1 \bar "|." 
}% end of last bar in partorvoice

 

ATVlavoiceHA = \relative c{
    \set Staff.instrumentName = #"Tenor+Viola"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    c'4     c8 d e4 d c      | % 1
    c f f a,      | % 2
    b c f8 e d4      | % 3
    e2. r4      | % 4
    r2 r4 b8 a      | % 5
    b a b c d4 c8 bes      | % 6
    bes4 a8 g a4 e'      | % 7
    d c~ c b      | % 8
    g2. r4      | % 9
    r2. c4      | % 10
    c8 d e4 d c      | % 11
    c f f a,      | % 12
    b c f8 e d4      | % 13
    e2. r4      | % 14
    r2 r4 b8 a      | % 15
    b a b c d4 c8 bes      | % 16
    bes4 a8 g a4 e'      | % 17
    d c~ c b      | % 18
    g2. r4      | % 19
    r2. d'4      | % 20
    d8 e fis4 e e      | % 21
    e2 e4 f      | % 22
    f e8 f g4 f~      | % 23
    f e8 d e4      | % 24
    %bartimesig: 
    \time 3/4 
    c4      | % 24
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
    c4      | % 39
    s1      | % 39
    s1      | % 40
    s1      | % 41
    s1      | % 42
    s1      | % 43
    s1      | % 44
    c4 d e      | % 45
    d2 g4      | % 46
    c,2 d4      | % 47
    e2 g4 \bar "|."     | % 48
    g4 f e      | % 49
    f e2      | % 50
    d e4      | % 51
    f2 c4      | % 52
    b e2      | % 53
    a,4 b c      | % 54
    c b8 a b4      | % 55
    c2 a4      | % 56
    a2 d4      | % 57
    e2 e4      | % 58
    a, d bes      | % 59
    a2      | % 60
    c4 c b c      | % 61
    c8 e d c b4 b      | % 62
    b c8 d e4 d8 g,      | % 63
    g2. r4      | % 64
    R1 \bar "|." 
}% end of last bar in partorvoice

 

ABContvoiceIA = \relative c{
    \set Staff.instrumentName = #"Bass+Continuo"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    c4     c c' b bes      | % 1
    a g8 f bes4 fis      | % 2
    g8 f e4 f g      | % 3
    c,2. r4      | % 4
    r2 r4 g      | % 5
    g'8 fis g a b g c4      | % 6
    f,2 f4 e8 f      | % 7
    g4 a8 g f4 g8 g,      | % 8
    c2. r4      | % 9
    r2. c4      | % 10
    c c' b bes      | % 11
    a g8 f bes4 fis      | % 12
    g8 f e4 f g      | % 13
    c,2. r4      | % 14
    r2 r4 g      | % 15
    g'8 fis g a b g c4      | % 16
    f,2 f4 e8 f      | % 17
    g4 a8 g f4 g8 g,      | % 18
    c2. r4      | % 19
    r2. g4      | % 20
    g'8 fis e dis e d c b      | % 21
    a2 a4 d      | % 22
    e8 f g a g f e d      | % 23
    c2 c4      | % 24
    %bartimesig: 
    \time 3/4 
    c4      | % 24
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
    a8 b      | % 39
    s1      | % 39
    s1      | % 40
    s1      | % 41
    s1      | % 42
    s1      | % 43
    s1      | % 44
    c'4 b a      | % 45
    b a g      | % 46
    a2 b4      | % 47
    c2 c,4 \bar "|."     | % 48
    g'4 a bes      | % 49
    a g a      | % 50
    bes a g      | % 51
    d2 a'4      | % 52
    gis2 a4      | % 53
    f2 e4      | % 54
    d2 g4      | % 55
    c,2 cis4      | % 56
    d e f      | % 57
    e f g      | % 58
    fis g g,      | % 59
    d'2      | % 60
    c8 d e c f g f e      | % 61
    d e f d g a g f      | % 62
    e d e f g f g g,      | % 63
    c2. r4      | % 64
    R1 \bar "|." 
}% end of last bar in partorvoice



\addQuote "articulations"   { \ATrvoiceAA }
\book {
\layout { \scorepaper }
\score {
<<
\part ATrvoiceAA { \ATrvoiceAA } { \transpose c c \ATrvoiceAA }
\part ATrvoiceBA { \quotearticulations \ATrvoiceBA \ATrvoiceAA } { \transpose c c \ATrvoiceBA }
\part ATrvoiceCA { \quotearticulations \ATrvoiceCA \ATrvoiceAA } { \transpose c c \ATrvoiceCA }
\part ATympvoiceDA { \quotearticulations \ATympvoiceDA \ATrvoiceAA } { \transpose c c \ATympvoiceDA }
\part AObvoiceEA { \quotearticulations \AObvoiceEA \ATrvoiceAA } { \transpose c c \AObvoiceEA }
\part ASObVnvoiceFA { \ASObVnvoiceFA } { \transpose c c \ASObVnvoiceFA }
\part AAObVnvoiceGA { \quotearticulations \AAObVnvoiceGA \ATrvoiceAA } { \transpose c c \AAObVnvoiceGA }
\part ATVlavoiceHA { \quotearticulations \ATVlavoiceHA \ATrvoiceAA } { \transpose c c \ATVlavoiceHA }
\part ABContvoiceIA { \quotearticulations \ABContvoiceIA \ATrvoiceAA } { \transpose c c \ABContvoiceIA }
>>
}
\score {
<<
\new Voice = ATrvoiceAA \ATrvoiceAA
\new Voice = ATrvoiceBA \ATrvoiceBA
\new Voice = ATrvoiceCA \ATrvoiceCA
\new Voice = ATympvoiceDA \ATympvoiceDA
\new Voice = AObvoiceEA \AObvoiceEA
\new Voice = ASObVnvoiceFA \ASObVnvoiceFA
\new Voice = AAObVnvoiceGA \AAObVnvoiceGA
\new Voice = ATVlavoiceHA \ATVlavoiceHA
\new Voice = ABContvoiceIA \ABContvoiceIA
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
\part ATrvoiceAA { \ATrvoiceAA } { \transpose c c \ATrvoiceAA }
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
\part ATrvoiceBA { \quotearticulations \ATrvoiceBA \ATrvoiceAA } { \transpose c c \ATrvoiceBA }
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
\part ATrvoiceCA { \quotearticulations \ATrvoiceCA \ATrvoiceAA } { \transpose c c \ATrvoiceCA }
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
\part ATympvoiceDA { \quotearticulations \ATympvoiceDA \ATrvoiceAA } { \transpose c c \ATympvoiceDA }
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
#(define output-suffix "Obo")
\book {
\layout { \partpaper }
\score {
<<
\part AObvoiceEA { \quotearticulations \AObvoiceEA \ATrvoiceAA } { \transpose c c \AObvoiceEA }
>>
}
\score {
<<
\new Voice = AObvoiceEA \AObvoiceEA
>>

        \midi   { 
        \context { \Staff  \remove "Staff_performer" }
        \context { \Voice  \consists "Staff_performer" }
        } 
   }
} %%end of book
#(define output-suffix "Soprano+Oboe1+Violin1")
\book {
\layout { \partpaper }
\score {
<<
\part ASObVnvoiceFA { \ASObVnvoiceFA } { \transpose c c \ASObVnvoiceFA }
>>
}
\score {
<<
\new Voice = ASObVnvoiceFA \ASObVnvoiceFA
>>

        \midi   { 
        \context { \Staff  \remove "Staff_performer" }
        \context { \Voice  \consists "Staff_performer" }
        } 
   }
} %%end of book
#(define output-suffix "Alto+Oboe2+Violin2")
\book {
\layout { \partpaper }
\score {
<<
\part AAObVnvoiceGA { \quotearticulations \AAObVnvoiceGA \ATrvoiceAA } { \transpose c c \AAObVnvoiceGA }
>>
}
\score {
<<
\new Voice = AAObVnvoiceGA \AAObVnvoiceGA
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
\part ATVlavoiceHA { \quotearticulations \ATVlavoiceHA \ATrvoiceAA } { \transpose c c \ATVlavoiceHA }
>>
}
\score {
<<
\new Voice = ATVlavoiceHA \ATVlavoiceHA
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
\part ABContvoiceIA { \quotearticulations \ABContvoiceIA \ATrvoiceAA } { \transpose c c \ABContvoiceIA }
>>
}
\score {
<<
\new Voice = ABContvoiceIA \ABContvoiceIA
>>

        \midi   { 
        \context { \Staff  \remove "Staff_performer" }
        \context { \Voice  \consists "Staff_performer" }
        } 
   }
} %%end of book
