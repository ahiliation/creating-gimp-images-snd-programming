
(define (script-fu-message inText inFont inFontSize inTextColor)
        (gimp-message  "Happy Hacking")
  )

(script-fu-register
    "script-fu-message"                        ;function name
    "Hacker"                                  ;menu label
    "Creates a simple text box, sized to fit\
      around the user's choice of text,\
      font, font size, and color."              ;description
    "Michael Terry"                             ;author
    "copyright 1997, Michael Terry;\
      2009, the GIMP Documentation Team"        ;copyright notice
    "October 27, 1997"                          ;date created
    ""                                      ;image type that the script works on
    SF-STRING      "Text"          "Wish"   ;a string variable
    SF-FONT        "Font"          "Charter"    ;a font variable
    SF-ADJUSTMENT  "Font size"     '(50 1 1000 1 10 0 1)
                                                ;a spin-button
    SF-COLOR       "Color"         '(0 0 0)     ;color variable
  )
  (script-fu-menu-register "script-fu-message" "<Image>/Example/Greeting")
