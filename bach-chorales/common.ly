%% Variables and functions used in LilyPond Bach Chorale files.
%% Author: Michael F. Ellis
%% License: Creative Commons Attribution-NonCommercial-ShareAlike
%%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\version "2.12.3"

\pointAndClickOff  %% to reduce pdf size


%% ----------------------------------------------------
%% Functions that work around a bug in the LilyPond NoteNames
%% engraver to enable creating moveable Do Solfege.

dutchtosolfa =
#`(("ces" . "de")
   ("c" . "do")
   ("cis" . "di")
   ("des" . "ra")
   ("d" . "re")
   ("dis" . "ri")
   ("ees" . "me")
   ("e" . "mi")
   ("f" . "fa")
   ("fis" . "fi")
   ("ges" . "se")
   ("g" . "sol")
   ("gis" . "si")
   ("aes" . "le")
   ("a"  . "la")
   ("ais" . "li")
   ("bes" . "te")
   ("b"   . "ti")
   ) 

solfaNames =
#(lambda (grob)
   (let* ((default-name (ly:grob-property grob 'text))
          (new-name (assoc-get default-name dutchtosolfa)))
       (ly:grob-set-property! grob 'text (markup #:italic #:smaller new-name))
       (ly:text-interface::print grob))) 

#(define (filterEvent event)
        (let ((name (ly:music-property event 'name)))
             (or
               (eq? name 'EventChord)
               (eq? name 'NoteEvent)
               (eq? name 'RestEvent)
               (eq? name 'SpacingSectionEvent)
               (eq? name 'RelativeOctaveMusic)
               (eq? name 'TransposedMusic)
               (eq? name 'SequentialMusic))))

notesOnly = #(define-music-function (P L M) (ly:music?)
                 (music-filter filterEvent M)) 

part = #(define-music-function (P L vname music tmusic) 
            (string? ly:music? ly:music?)
              #{ 
                  <<
                  \new Voice = $vname $music
                   \new NoteNames = $vname \with {
                        \override NoteName #'stencil = #solfaNames } {
                        \notesOnly  $tmusic
                        }              
                  >>
                  
               #})
    %% ----------------------------------------------------
%% The source files for the chorale notation did not include
%% fermatas in all parts. These functions enable us to transfer 
%% the fermatas from a part that has them to one that doesn't.
 
%% Converts all stuff with duration (notes, lyrics, bass figures, etc.) 
%% to spacer rests. Scripts and dynamics are maintained.
#(define (replace-with-spacers m)
  (if (memq 'rhythmic-event (ly:music-property m 'types))
      (let* ((newmus (make-music 'SpacingSectionEvent)))
          (map
              (lambda (x) (ly:music-set-property! newmus (car x) (cdr x)))
              (ly:music-mutable-properties m))
            
          newmus)
      m)) 

%% Wrap the above scheme function in a music function
spacers = #(define-music-function (P L M) (ly:music?) 
            #{
               \applyMusic #(lambda (x) (music-map replace-with-spacers x)) $M 
            #})

%% This is what we actually use in the \score block.
quotearticulations =  #(define-music-function (P L M A) (ly:music? ly:music?)
                        #{
                            \set Score.quotedEventTypes = #'(articulation-event)
                            << 
                            {\quoteDuring #"articulations" { \spacers $A  } }
                            $M    
                            >>
                        #})     

%% ----------------------------------------------------
%% Things that control the layout.

#(set-default-paper-size "letter")
#(set-global-staff-size 14) 

%% Used when generating pdf with all parts
scorepaper = \paper {
    
  %line-width    = 184.394\mm
  %left-margin   = 18.8488\mm
  %top-margin    = 12.6576\mm
  bottom-margin = 12.6576\mm
  %%indent = 0 \mm 
  %%set to ##t if your score is less than one page: 
  ragged-last-bottom = ##f 
  ragged-bottom = ##f  
  %% in orchestral scores you probably want the two bold slashes 
  %% separating the systems: so uncomment the following line: 
  %% system-separator-markup = \slashSeparator 
  }

%% Used when generating pdf with one part
partpaper =  \paper {
    
  %line-width    = 184.394\mm
  %left-margin   = 18.8488\mm
  %top-margin    = 12.6576\mm
  bottom-margin = 12.6576\mm
  %%indent = 0 \mm 
  %%set to ##t if your score is less than one page: 
  ragged-last-bottom = ##t 
  ragged-bottom = ##f  
  %% in orchestral scores you probably want the two bold slashes 
  %% separating the systems: so uncomment the following line: 
  %% system-separator-markup = \slashSeparator 
  }  


