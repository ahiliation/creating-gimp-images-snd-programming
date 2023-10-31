; Copyright (C) 2023 by Jeffrin Jose  T

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




(define (script-fu-greeting )
        (gimp-message  "Happy Hacking")
  )

(script-fu-register
    "script-fu-greeting"                        ;function name
    "Simple"                                  ;menu label
    "Creates a simple greeting\
      font, font size, and color."              ;description
    "Jeffrin Jose T"                             ;author
    "copyright 2023,\
     GNU GPL"        ;copyright notice
    "September 22, 2023"                          ;date created
    ""                                      ;image type that the script works on
    )
  (script-fu-menu-register "script-fu-greeting" "<Image>/Example/Greeting/")
