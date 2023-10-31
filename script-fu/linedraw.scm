; Copyright (C) 2023 by Jeffrin Jose  T (modified code)

;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or (at
;; your option) any later version.

;; This program is distributed in the hope that it will be useful, but
;; WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
;; General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see https://www.gnu.org/licenses/.

(define (script-fu-linedraw )
  (define (drawdiagonal W H)
(let* (
      (img 0)
       (bg 0)
       (points (cons-array 4 'double) )
      )
(set! img (car (gimp-image-new  800 600 0)))
(gimp-image-undo-group-start img)
(gimp-context-push)
(set! bg (car (gimp-layer-new img  800 600 RGB-IMAGE "layer 1" 100 LAYER-MODE-NORMAL)))
; (gimp-image-add-layer img bg 0)
(gimp-image-insert-layer img bg 0 0)
(gimp-drawable-set-visible bg TRUE)
(gimp-image-set-active-layer img bg)
(gimp-context-set-brush "2. Hardness 075")
(gimp-context-set-brush-size 10.0)
(gimp-context-set-opacity 100)
(gimp-context-set-paint-mode NORMAL-MODE)
(gimp-context-set-foreground '(255 127 0))
(gimp-selection-all img)
(gimp-display-new img)

(aset points 0 0)
(aset points 1 0)
(aset points 2 W)
(aset points 3 H)
(gimp-paintbrush-default  bg 4 points)

(gimp-context-pop)
(gimp-image-undo-group-end img)

(gimp-xcf-save 1 img img "tmp.xcf"  "tmp.xcf")
(display "DONE")
)
)

  (drawdiagonal 512 512)
;  (gimp-display-new img)
 ; (gimp-quit 0)


)


(script-fu-register
    "script-fu-linedraw"                        ;function name
    "Line"                                  ;menu label
    "Draw  a line"
    "Jeffrin Jose T"                             ;author
    "copyright 2023,\
     GNU GPL"                                    ;copyright notice
    "September 22, 2023"                          ;date created
    ""                                      ;image type that the script works on
    )
  (script-fu-menu-register "script-fu-linedraw" "<Image>/Example/Draw")



