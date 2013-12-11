;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Fontset config

;; Unicode ranges: http://www.alanwood.net/unicode/unicode_samples.html

;; ASCII, Latin/Greek/Cyrillic scripts, punctuation, currency
(set-fontset-font "fontset-standard" '(#x0000 . #x052f) "Consolas")
(set-fontset-font "fontset-standard" '(#x1e00 . #x1eff) "Consolas")
(set-fontset-font "fontset-standard" '(#x2000 . #x2022) "Consolas")
(set-fontset-font "fontset-standard" '(#x2023 . #x209f) "Courier")
(set-fontset-font "fontset-standard" '(#x20a0 . #x20cf) "Consolas")
(set-fontset-font "fontset-standard" '(#x2c60 . #x2c7f) "Consolas")
(set-fontset-font "fontset-standard" '(#xa720 . #xa7ff) "Consolas")

;; Various and sundry symbols in the Unicode hinterlands
(set-fontset-font "fontset-standard" '(#x20d0 . #x20ff) "Arial Unicode MS")
(set-fontset-font "fontset-standard" '(#x2150 . #x218f) "Arial Unicode MS")
(set-fontset-font "fontset-standard" '(#x2300 . #x27ff) "Arial Unicode MS")
(set-fontset-font "fontset-standard" '(#xfb00 . #xfb4f) "Arial Unicode MS")
(set-fontset-font "fontset-standard" '(#xff00 . #xffef) "Arial Unicode MS")
(set-fontset-font "fontset-standard" '(#x2100 . #x214f) "Apple Symbols")
(set-fontset-font "fontset-standard" '(#x2190 . #x21ff) "Apple Symbols")
(set-fontset-font "fontset-standard" '(#x237b . #x23ff) "Apple Symbols")
(set-fontset-font "fontset-standard" '(#x2596 . #x259f) "Apple Symbols")
(set-fontset-font "fontset-standard" '(#x2670 . #x26ff) "Apple Symbols")
(set-fontset-font "fontset-standard" '(#x2b00 . #x2b11) "Apple Symbols")

;; Asian language support
(set-fontset-font "fontset-standard" '(#x0e00 . #x0e7f) "Sathu")
(set-fontset-font "fontset-standard" '(#x1100 . #x11ff) "Arial Unicode MS")
(set-fontset-font "fontset-standard" '(#x3190 . #x319f) "Arial Unicode MS")
(set-fontset-font "fontset-standard" '(#x3200 . #x33ff) "Arial Unicode MS")
(set-fontset-font "fontset-standard" '(#x4e00 . #x9fbb) "STHeiti")
(set-fontset-font "fontset-standard" '(#xf900 . #xfaff) "Arial Unicode MS")
(set-fontset-font "fontset-standard" '(#xfe30 . #xfe4f) "Arial Unicode MS")

;; A few non-adjacent symbols also available in Consolas via MacRoman charset
(set-fontset-font "fontset-standard" 'mac-roman "Consolas")
