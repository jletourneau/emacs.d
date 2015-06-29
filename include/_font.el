;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Fontset config

;; Sources:
;;   - Consolas: https://aur.archlinux.org/packages/ttf-microsoft-consolas/
;;   - Symbola: http://users.teilar.gr/~g1951d/
;;   - Menlo: packaged with OS X
;;   - Courier: packaged with OS X
;;   - Arial Unicode MS: packaged with OS X

;; Unicode ranges: http://www.alanwood.net/unicode/unicode_samples.html

(set-face-attribute 'fixed-pitch nil :family "Consolas")
(set-face-attribute 'variable-pitch nil :family "Lucida Grande")

(defvar fontset-default-size 12)

(setq
 fs-consolas (font-spec :family "Consolas" :size fontset-default-size)
 fs-symbola  (font-spec :family "Symbola" :size fontset-default-size)
 fs-menlo    (font-spec :family "Menlo" :size fontset-default-size)
 fs-courier  (font-spec :family "Courier" :size fontset-default-size)
 fs-arial    (font-spec :family "Arial Unicode MS" :size fontset-default-size))

;;=============================================================================
;; BASIC MULTILINGUAL PLANE (0000-FFFF)

;; Basic Latin
(set-fontset-font "fontset-standard" '(#x0000 . #x007f) fs-consolas)
  ;   ! " # $ % & ' ( ) * + , - . / 0 1 2 3 4 5 6 7 8 9 : ; < = > ?
  ; @ A B C D E F G H I J K L M N O P Q R S T U V W X Y Z [ \ ] ^ _
  ; ` a b c d e f g h i j k l m n o p q r s t u v w x y z { | } ~

;; Latin-1 Supplement
(set-fontset-font "fontset-standard" '(#x0080 . #x00ff) fs-consolas)
  ;  ¡ ¢ £ ¤ ¥ ¦ § ¨ © ª « ¬ ­ ® ¯ ° ± ² ³ ´ µ ¶ · ¸ ¹ º » ¼ ½ ¾ ¿
  ; À Á Â Ã Ä Å Æ Ç È É Ê Ë Ì Í Î Ï Ð Ñ Ò Ó Ô Õ Ö × Ø Ù Ú Û Ü Ý Þ ß
  ; à á â ã ä å æ ç è é ê ë ì í î ï ð ñ ò ó ô õ ö ÷ ø ù ú û ü ý þ

;; Latin Extended-A
(set-fontset-font "fontset-standard" '(#x0100 . #x017f) fs-consolas)
  ; Ā ā Ă ă Ą ą Ć ć Ĉ ĉ Ċ ċ Č č Ď ď Đ đ Ē ē Ĕ ĕ Ė ė Ę ę Ě ě Ĝ ĝ Ğ ğ
  ; Ġ ġ Ģ ģ Ĥ ĥ Ħ ħ Ĩ ĩ Ī ī Ĭ ĭ Į į İ ı Ĳ ĳ Ĵ ĵ Ķ ķ ĸ Ĺ ĺ Ļ ļ Ľ ľ Ŀ
  ; ŀ Ł ł Ń ń Ņ ņ Ň ň ŉ Ŋ ŋ Ō ō Ŏ ŏ Ő ő Œ œ Ŕ ŕ Ŗ ŗ Ř ř Ś ś Ŝ ŝ Ş ş
  ; Š š Ţ ţ Ť ť Ŧ ŧ Ũ ũ Ū ū Ŭ ŭ Ů ů Ű ű Ų ų Ŵ ŵ Ŷ ŷ Ÿ Ź ź Ż ż Ž ž

;; Latin Extended-B
(set-fontset-font "fontset-standard" '(#x0180 . #x024f) fs-consolas)
  ; ƀ Ɓ Ƃ ƃ Ƅ ƅ Ɔ Ƈ ƈ Ɖ Ɗ Ƌ ƌ ƍ Ǝ Ə Ɛ Ƒ ƒ Ɠ Ɣ ƕ Ɩ Ɨ Ƙ ƙ ƚ ƛ Ɯ Ɲ ƞ Ɵ
  ; Ơ ơ Ƣ ƣ Ƥ ƥ Ʀ Ƨ ƨ Ʃ ƪ ƫ Ƭ ƭ Ʈ Ư ư Ʊ Ʋ Ƴ ƴ Ƶ ƶ Ʒ Ƹ ƹ ƺ ƻ Ƽ ƽ ƾ ƿ
  ; ǀ ǁ ǂ ǃ Ǆ ǅ ǆ Ǉ ǈ ǉ Ǌ ǋ ǌ Ǎ ǎ Ǐ ǐ Ǒ ǒ Ǔ ǔ Ǖ ǖ Ǘ ǘ Ǚ ǚ Ǜ ǜ ǝ Ǟ ǟ
  ; Ǡ ǡ Ǣ ǣ Ǥ ǥ Ǧ ǧ Ǩ ǩ Ǫ ǫ Ǭ ǭ Ǯ ǯ ǰ Ǳ ǲ ǳ Ǵ ǵ Ƕ Ƿ Ǹ ǹ Ǻ ǻ Ǽ ǽ Ǿ ǿ
  ; Ȁ ȁ Ȃ ȃ Ȅ ȅ Ȇ ȇ Ȉ ȉ Ȋ ȋ Ȍ ȍ Ȏ ȏ Ȑ ȑ Ȓ ȓ Ȕ ȕ Ȗ ȗ Ș ș Ț ț Ȝ ȝ Ȟ ȟ
  ; Ƞ ȡ Ȣ ȣ Ȥ ȥ Ȧ ȧ Ȩ ȩ Ȫ ȫ Ȭ ȭ Ȯ ȯ Ȱ ȱ Ȳ ȳ ȴ ȵ ȶ ȷ ȸ ȹ Ⱥ Ȼ ȼ Ƚ Ⱦ ȿ
  ; ɀ Ɂ ɂ Ƀ Ʉ Ʌ Ɇ ɇ Ɉ ɉ Ɋ ɋ Ɍ ɍ Ɏ

;; IPA Extensions
(set-fontset-font "fontset-standard" '(#x0250 . #x02af) fs-consolas)
  ; ɐ ɑ ɒ ɓ ɔ ɕ ɖ ɗ ɘ ə ɚ ɛ ɜ ɝ ɞ ɟ ɠ ɡ ɢ ɣ ɤ ɥ ɦ ɧ ɨ ɩ ɪ ɫ ɬ ɭ ɮ ɯ
  ; ɰ ɱ ɲ ɳ ɴ ɵ ɶ ɷ ɸ ɹ ɺ ɻ ɼ ɽ ɾ ɿ ʀ ʁ ʂ ʃ ʄ ʅ ʆ ʇ ʈ ʉ ʊ ʋ ʌ ʍ ʎ ʏ
  ; ʐ ʑ ʒ ʓ ʔ ʕ ʖ ʗ ʘ ʙ ʚ ʛ ʜ ʝ ʞ ʟ ʠ ʡ ʢ ʣ ʤ ʥ ʦ ʧ ʨ ʩ ʪ ʫ ʬ ʭ ʮ

;; Spacing Modifier Letters
(set-fontset-font "fontset-standard" '(#x02b0 . #x02ff) fs-consolas)
  ; ʰ ʱ ʲ ʳ ʴ ʵ ʶ ʷ ʸ ʹ ʺ ʻ ʼ ʽ ʾ ʿ ˀ ˁ ˂ ˃ ˄ ˅ ˆ ˇ ˈ ˉ ˊ ˋ ˌ ˍ ˎ ˏ
  ; ː ˑ ˒ ˓ ˔ ˕ ˖ ˗ ˘ ˙ ˚ ˛ ˜ ˝ ˞ ˟ ˠ ˡ ˢ ˣ ˤ ˥ ˦ ˧ ˨ ˩ ˪ ˫ ˬ ˭ ˮ ˯
  ; ˰ ˱ ˲ ˳ ˴ ˵ ˶ ˷ ˸ ˹ ˺ ˻ ˼ ˽ ˾

;; Combining Diacritical Marks
(set-fontset-font "fontset-standard" '(#x0300 . #x036f) fs-consolas)
  ; ̀ ́ ̂ ̃ ̄ ̅ ̆ ̇ ̈ ̉ ̊ ̋ ̌ ̍ ̎ ̏ ̐ ̑ ̒ ̓ ̔ ̕ ̖ ̗ ̘ ̙ ̚ ̛ ̜ ̝ ̞ ̟
  ; ̠ ̡ ̢ ̣ ̤ ̥ ̦ ̧ ̨ ̩ ̪ ̫ ̬ ̭ ̮ ̯ ̰ ̱ ̲ ̳ ̴ ̵ ̶ ̷ ̸ ̹ ̺ ̻ ̼ ̽ ̾ ̿
  ; ̀ ́ ͂ ̓ ̈́ ͅ ͆ ͇ ͈ ͉ ͊ ͋ ͌ ͍ ͎ ͏ ͐ ͑ ͒ ͓ ͔ ͕ ͖ ͗ ͘ ͙ ͚ ͛ ͜ ͝ ͞ ͟
  ; ͠ ͡ ͢ ͣ ͤ ͥ ͦ ͧ ͨ ͩ ͪ ͫ ͬ ͭ ͮ

;; Greek and Coptic
(set-fontset-font "fontset-standard" '(#x0370 . #x03ff) fs-consolas)
  ; Ͱ ͱ Ͳ ͳ ʹ ͵ Ͷ ͷ ͺ ͻ ͼ ͽ ; Ϳ ΄ ΅ Ά · Έ Ή Ί Ό Ύ Ώ
  ; ΐ Α Β Γ Δ Ε Ζ Η Θ Ι Κ Λ Μ Ν Ξ Ο Π Ρ Σ Τ Υ Φ Χ Ψ Ω Ϊ Ϋ ά έ ή ί
  ; ΰ α β γ δ ε ζ η θ ι κ λ μ ν ξ ο π ρ ς σ τ υ φ χ ψ ω ϊ ϋ ό ύ ώ Ϗ
  ; ϐ ϑ ϒ ϓ ϔ ϕ ϖ ϗ Ϙ ϙ Ϛ ϛ Ϝ ϝ Ϟ ϟ Ϡ ϡ Ϣ ϣ Ϥ ϥ Ϧ ϧ Ϩ ϩ Ϫ ϫ Ϭ ϭ Ϯ ϯ
  ; ϰ ϱ ϲ ϳ ϴ ϵ ϶ Ϸ ϸ Ϲ Ϻ ϻ ϼ Ͻ Ͼ

;; Cyrillic
(set-fontset-font "fontset-standard" '(#x0400 . #x04ff) fs-consolas)
  ; Ѐ Ё Ђ Ѓ Є Ѕ І Ї Ј Љ Њ Ћ Ќ Ѝ Ў Џ А Б В Г Д Е Ж З И Й К Л М Н О П
  ; Р С Т У Ф Х Ц Ч Ш Щ Ъ Ы Ь Э Ю Я а б в г д е ж з и й к л м н о п
  ; р с т у ф х ц ч ш щ ъ ы ь э ю я ѐ ё ђ ѓ є ѕ і ї ј љ њ ћ ќ ѝ ў џ
  ; Ѡ ѡ Ѣ ѣ Ѥ ѥ Ѧ ѧ Ѩ ѩ Ѫ ѫ Ѭ ѭ Ѯ ѯ Ѱ ѱ Ѳ ѳ Ѵ ѵ Ѷ ѷ Ѹ ѹ Ѻ ѻ Ѽ ѽ Ѿ ѿ
  ; Ҁ ҁ ҂ ҃ ҄ ҅ ҆ ҇ ҈ ҉ Ҋ ҋ Ҍ ҍ Ҏ ҏ Ґ ґ Ғ ғ Ҕ ҕ Җ җ Ҙ ҙ Қ қ Ҝ ҝ Ҟ ҟ
  ; Ҡ ҡ Ң ң Ҥ ҥ Ҧ ҧ Ҩ ҩ Ҫ ҫ Ҭ ҭ Ү ү Ұ ұ Ҳ ҳ Ҵ ҵ Ҷ ҷ Ҹ ҹ Һ һ Ҽ ҽ Ҿ ҿ
  ; Ӏ Ӂ ӂ Ӄ ӄ Ӆ ӆ Ӈ ӈ Ӊ ӊ Ӌ ӌ Ӎ ӎ ӏ Ӑ ӑ Ӓ ӓ Ӕ ӕ Ӗ ӗ Ә ә Ӛ ӛ Ӝ ӝ Ӟ ӟ
  ; Ӡ ӡ Ӣ ӣ Ӥ ӥ Ӧ ӧ Ө ө Ӫ ӫ Ӭ ӭ Ӯ ӯ Ӱ ӱ Ӳ ӳ Ӵ ӵ Ӷ ӷ Ӹ ӹ Ӻ ӻ Ӽ ӽ Ӿ

;; Cyrillic Supplement
(set-fontset-font "fontset-standard" '(#x0500 . #x052f) fs-symbola)
  ; Ԁ ԁ Ԃ ԃ Ԅ ԅ Ԇ ԇ Ԉ ԉ Ԋ ԋ Ԍ ԍ Ԏ ԏ Ԑ ԑ Ԓ ԓ Ԕ ԕ Ԗ ԗ Ԙ ԙ Ԛ ԛ Ԝ ԝ Ԟ ԟ
  ; Ԡ ԡ Ԣ ԣ Ԥ ԥ Ԧ ԧ

(set-fontset-font "fontset-standard" '(#x0530 . #x058f) fs-arial) ;; Armenian
(set-fontset-font "fontset-standard" '(#x0590 . #x05ff) fs-arial) ;; Hebrew
(set-fontset-font "fontset-standard" '(#x0600 . #x06ff) fs-arial) ;; Arabic
;; (set-fontset-font "fontset-standard" '(#x0700 . #x074f) "") ;; Syriac
;; (set-fontset-font "fontset-standard" '(#x0750 . #x077f) "") ;; Arabic Supplement
;; (set-fontset-font "fontset-standard" '(#x0780 . #x07bf) "") ;; Thaana
;; (set-fontset-font "fontset-standard" '(#x07c0 . #x07ff) "") ;; NKo
;; (set-fontset-font "fontset-standard" '(#x0800 . #x083f) "") ;; Samaritan
;; (set-fontset-font "fontset-standard" '(#x0840 . #x085f) "") ;; Mandaic
;; (set-fontset-font "fontset-standard" '(#x08a0 . #x08ff) "") ;; Arabic Extended-A
(set-fontset-font "fontset-standard" '(#x0900 . #x097f) fs-arial) ;; Devanagari
(set-fontset-font "fontset-standard" '(#x0980 . #x09ff) fs-arial) ;; Bengali
(set-fontset-font "fontset-standard" '(#x0a00 . #x0a7f) fs-arial) ;; Gurmukhi
(set-fontset-font "fontset-standard" '(#x0a80 . #x0aff) fs-arial) ;; Gujarati
(set-fontset-font "fontset-standard" '(#x0b00 . #x0b7f) fs-arial) ;; Oriya
(set-fontset-font "fontset-standard" '(#x0b80 . #x0bff) fs-arial) ;; Tamil
(set-fontset-font "fontset-standard" '(#x0c00 . #x0c7f) fs-arial) ;; Telugu
(set-fontset-font "fontset-standard" '(#x0c80 . #x0cff) fs-arial) ;; Kannada
(set-fontset-font "fontset-standard" '(#x0d00 . #x0d7f) fs-arial) ;; Malayalam
;; (set-fontset-font "fontset-standard" '(#x0d80 . #x0dff) "") ;; Sinhala
(set-fontset-font "fontset-standard" '(#x0e00 . #x0e7f) fs-arial) ;; Thai
(set-fontset-font "fontset-standard" '(#x0e80 . #x0eff) fs-arial) ;; Lao
(set-fontset-font "fontset-standard" '(#x0f00 . #x0fff) fs-arial) ;; Tibetan
;; (set-fontset-font "fontset-standard" '(#x1000 . #x109f) ") ;; Myanmar
(set-fontset-font "fontset-standard" '(#x10a0 . #x10ff) fs-arial) ;; Georgian
(set-fontset-font "fontset-standard" '(#x1100 . #x11ff) fs-arial) ;; Hangul Jamo
;; (set-fontset-font "fontset-standard" '(#x1200 . #x137f) "") ;; Ethiopic
;; (set-fontset-font "fontset-standard" '(#x1380 . #x139f) "") ;; Ethiopic Supplement
;; (set-fontset-font "fontset-standard" '(#x13a0 . #x13ff) "") ;; Cherokee
;; (set-fontset-font "fontset-standard" '(#x1400 . #x167f) "") ;; Unified Canadian Aboriginal Syllabics
;; (set-fontset-font "fontset-standard" '(#x1680 . #x169f) "") ;; Ogham
;; (set-fontset-font "fontset-standard" '(#x16a0 . #x16ff) "") ;; Runic
;; (set-fontset-font "fontset-standard" '(#x1700 . #x171f) "") ;; Tagalog
;; (set-fontset-font "fontset-standard" '(#x1720 . #x173f) "") ;; Hanunoo
;; (set-fontset-font "fontset-standard" '(#x1740 . #x175f) "") ;; Buhid
;; (set-fontset-font "fontset-standard" '(#x1760 . #x177f) "") ;; Tagbanwa
;; (set-fontset-font "fontset-standard" '(#x1780 . #x17ff) "") ;; Khmer
;; (set-fontset-font "fontset-standard" '(#x1800 . #x18af) "") ;; Mongolian
;; (set-fontset-font "fontset-standard" '(#x18b0 . #x18ff) "") ;; Unified Canadian Aboriginal Syllabics Extended
;; (set-fontset-font "fontset-standard" '(#x1900 . #x194f) "") ;; Limbu
;; (set-fontset-font "fontset-standard" '(#x1950 . #x197f) "") ;; Tai Le
;; (set-fontset-font "fontset-standard" '(#x1980 . #x19df) "") ;; New Tai Lue
;; (set-fontset-font "fontset-standard" '(#x19e0 . #x19ff) "") ;; Khmer Symbols
;; (set-fontset-font "fontset-standard" '(#x1a00 . #x1a1f) "") ;; Buginese
;; (set-fontset-font "fontset-standard" '(#x1a20 . #x1aaf) "") ;; Tai Tham
;; (set-fontset-font "fontset-standard" '(#x1ab0 . #x1aff) "") ;; Combining Diacritical Marks Extended
;; (set-fontset-font "fontset-standard" '(#x1b00 . #x1b7f) "") ;; Balinese
;; (set-fontset-font "fontset-standard" '(#x1b80 . #x1bbf) "") ;; Sundanese
;; (set-fontset-font "fontset-standard" '(#x1bc0 . #x1bff) "") ;; Batak
;; (set-fontset-font "fontset-standard" '(#x1c00 . #x1c4f) "") ;; Lepcha
;; (set-fontset-font "fontset-standard" '(#x1c50 . #x1c7f) "") ;; Ol Chiki
;; (set-fontset-font "fontset-standard" '(#x1cc0 . #x1ccf) "") ;; Sundanese Supplement
;; (set-fontset-font "fontset-standard" '(#x1cd0 . #x1cff) "") ;; Vedic Extensions

;; Phonetic Extensions
(set-fontset-font "fontset-standard" '(#x1d00 . #x1d7f) fs-consolas)
  ; ᴀ ᴁ ᴂ ᴃ ᴄ ᴅ ᴆ ᴇ ᴈ ᴉ ᴊ ᴋ ᴌ ᴍ ᴎ ᴏ ᴐ ᴑ ᴒ ᴓ ᴔ ᴕ ᴖ ᴗ ᴘ ᴙ ᴚ ᴛ ᴜ ᴝ ᴞ ᴟ
  ; ᴠ ᴡ ᴢ ᴣ ᴤ ᴥ ᴦ ᴧ ᴨ ᴩ ᴪ ᴫ ᴬ ᴭ ᴮ ᴯ ᴰ ᴱ ᴲ ᴳ ᴴ ᴵ ᴶ ᴷ ᴸ ᴹ ᴺ ᴻ ᴼ ᴽ ᴾ ᴿ
  ; ᵀ ᵁ ᵂ ᵃ ᵄ ᵅ ᵆ ᵇ ᵈ ᵉ ᵊ ᵋ ᵌ ᵍ ᵎ ᵏ ᵐ ᵑ ᵒ ᵓ ᵔ ᵕ ᵖ ᵗ ᵘ ᵙ ᵚ ᵛ ᵜ ᵝ ᵞ ᵟ
  ; ᵠ ᵡ ᵢ ᵣ ᵤ ᵥ ᵦ ᵧ ᵨ ᵩ ᵪ ᵫ ᵬ ᵭ ᵮ ᵯ ᵰ ᵱ ᵲ ᵳ ᵴ ᵵ ᵶ ᵷ ᵸ ᵹ ᵺ ᵻ ᵼ ᵽ ᵾ

;; Phonetic Extensions Supplement
(set-fontset-font "fontset-standard" '(#x1d80 . #x1dbf) fs-consolas)
  ; ᶀ ᶁ ᶂ ᶃ ᶄ ᶅ ᶆ ᶇ ᶈ ᶉ ᶊ ᶋ ᶌ ᶍ ᶎ ᶏ ᶐ ᶑ ᶒ ᶓ ᶔ ᶕ ᶖ ᶗ ᶘ ᶙ ᶚ ᶛ ᶜ ᶝ ᶞ ᶟ
  ; ᶠ ᶡ ᶢ ᶣ ᶤ ᶥ ᶦ ᶧ ᶨ ᶩ ᶪ ᶫ ᶬ ᶭ ᶮ ᶯ ᶰ ᶱ ᶲ ᶳ ᶴ ᶵ ᶶ ᶷ ᶸ ᶹ ᶺ ᶻ ᶼ ᶽ ᶾ

;; Combining Diacritical Marks Supplement
(set-fontset-font "fontset-standard" '(#x1dc0 . #x1dff) fs-consolas)
  ; ᷀ ᷁ ᷂ ᷃ ᷄ ᷅ ᷆ ᷇ ᷈ ᷉ ᷊ ᷋ ᷌ ᷍ ᷎ ᷏ ᷐ ᷑ ᷒ ᷓ ᷔ ᷕ ᷖ ᷗ ᷘ ᷙ ᷚ ᷛ ᷜ ᷝ ᷞ ᷟ
  ; ᷠ ᷡ ᷢ ᷣ ᷤ ᷥ ᷦ ᷼ ᷽ ᷾

;; Latin Extended Additional
(set-fontset-font "fontset-standard" '(#x1e00 . #x1eff) fs-consolas)
  ; Ḁ ḁ Ḃ ḃ Ḅ ḅ Ḇ ḇ Ḉ ḉ Ḋ ḋ Ḍ ḍ Ḏ ḏ Ḑ ḑ Ḓ ḓ Ḕ ḕ Ḗ ḗ Ḙ ḙ Ḛ ḛ Ḝ ḝ Ḟ ḟ
  ; Ḡ ḡ Ḣ ḣ Ḥ ḥ Ḧ ḧ Ḩ ḩ Ḫ ḫ Ḭ ḭ Ḯ ḯ Ḱ ḱ Ḳ ḳ Ḵ ḵ Ḷ ḷ Ḹ ḹ Ḻ ḻ Ḽ ḽ Ḿ ḿ
  ; Ṁ ṁ Ṃ ṃ Ṅ ṅ Ṇ ṇ Ṉ ṉ Ṋ ṋ Ṍ ṍ Ṏ ṏ Ṑ ṑ Ṓ ṓ Ṕ ṕ Ṗ ṗ Ṙ ṙ Ṛ ṛ Ṝ ṝ Ṟ ṟ
  ; Ṡ ṡ Ṣ ṣ Ṥ ṥ Ṧ ṧ Ṩ ṩ Ṫ ṫ Ṭ ṭ Ṯ ṯ Ṱ ṱ Ṳ ṳ Ṵ ṵ Ṷ ṷ Ṹ ṹ Ṻ ṻ Ṽ ṽ Ṿ ṿ
  ; Ẁ ẁ Ẃ ẃ Ẅ ẅ Ẇ ẇ Ẉ ẉ Ẋ ẋ Ẍ ẍ Ẏ ẏ Ẑ ẑ Ẓ ẓ Ẕ ẕ ẖ ẗ ẘ ẙ ẚ ẛ ẜ ẝ ẞ ẟ
  ; Ạ ạ Ả ả Ấ ấ Ầ ầ Ẩ ẩ Ẫ ẫ Ậ ậ Ắ ắ Ằ ằ Ẳ ẳ Ẵ ẵ Ặ ặ Ẹ ẹ Ẻ ẻ Ẽ ẽ Ế ế
  ; Ề ề Ể ể Ễ ễ Ệ ệ Ỉ ỉ Ị ị Ọ ọ Ỏ ỏ Ố ố Ồ ồ Ổ ổ Ỗ ỗ Ộ ộ Ớ ớ Ờ ờ Ở ở
  ; Ỡ ỡ Ợ ợ Ụ ụ Ủ ủ Ứ ứ Ừ ừ Ử ử Ữ ữ Ự ự Ỳ ỳ Ỵ ỵ Ỷ ỷ Ỹ ỹ Ỻ ỻ Ỽ ỽ Ỿ

;; Greek Extended
(set-fontset-font "fontset-standard" '(#x1f00 . #x1fff) fs-consolas)
  ; ἀ ἁ ἂ ἃ ἄ ἅ ἆ ἇ Ἀ Ἁ Ἂ Ἃ Ἄ Ἅ Ἆ Ἇ ἐ ἑ ἒ ἓ ἔ ἕ Ἐ Ἑ Ἒ Ἓ Ἔ Ἕ
  ; ἠ ἡ ἢ ἣ ἤ ἥ ἦ ἧ Ἠ Ἡ Ἢ Ἣ Ἤ Ἥ Ἦ Ἧ ἰ ἱ ἲ ἳ ἴ ἵ ἶ ἷ Ἰ Ἱ Ἲ Ἳ Ἴ Ἵ Ἶ Ἷ
  ; ὀ ὁ ὂ ὃ ὄ ὅ Ὀ Ὁ Ὂ Ὃ Ὄ Ὅ ὐ ὑ ὒ ὓ ὔ ὕ ὖ ὗ Ὑ Ὓ Ὕ Ὗ
  ; ὠ ὡ ὢ ὣ ὤ ὥ ὦ ὧ Ὠ Ὡ Ὢ Ὣ Ὤ Ὥ Ὦ Ὧ ὰ ά ὲ έ ὴ ή ὶ ί ὸ ό ὺ ύ ὼ ώ
  ; ᾀ ᾁ ᾂ ᾃ ᾄ ᾅ ᾆ ᾇ ᾈ ᾉ ᾊ ᾋ ᾌ ᾍ ᾎ ᾏ ᾐ ᾑ ᾒ ᾓ ᾔ ᾕ ᾖ ᾗ ᾘ ᾙ ᾚ ᾛ ᾜ ᾝ ᾞ ᾟ
  ; ᾠ ᾡ ᾢ ᾣ ᾤ ᾥ ᾦ ᾧ ᾨ ᾩ ᾪ ᾫ ᾬ ᾭ ᾮ ᾯ ᾰ ᾱ ᾲ ᾳ ᾴ ᾶ ᾷ Ᾰ Ᾱ Ὰ Ά ᾼ ᾽ ι ᾿
  ; ῀ ῁ ῂ ῃ ῄ ῆ ῇ Ὲ Έ Ὴ Ή ῌ ῍ ῎ ῏ ῐ ῑ ῒ ΐ ῖ ῗ Ῐ Ῑ Ὶ Ί ῝ ῞ ῟
  ; ῠ ῡ ῢ ΰ ῤ ῥ ῦ ῧ Ῠ Ῡ Ὺ Ύ Ῥ ῭ ΅ ` ῲ ῳ ῴ ῶ ῷ Ὸ Ό Ὼ Ώ ῼ ´ ῾

;; General Punctuation
(set-fontset-font "fontset-standard" '(#x2000 . #x2022) fs-consolas)
  ;            ​ ‌ ‍ ‎ ‏ ‐ ‑ ‒ – — ― ‖ ‗ ‘ ’ ‚ ‛ “ ” „ ‟
  ; † ‡ •
(set-fontset-font "fontset-standard" '(#x2023 . #x206f) fs-courier)
  ;       ‣ ․ ‥ … ‧   ‪ ‫ ‬ ‭ ‮  ‰ ‱ ′ ″ ‴ ‵ ‶ ‷ ‸ ‹ › ※ ‼ ‽ ‾ ‿
  ; ⁀ ⁁ ⁂ ⁃ ⁄ ⁅ ⁆ ⁇ ⁈ ⁉ ⁊ ⁋ ⁌ ⁍ ⁎ ⁏ ⁐ ⁑ ⁒ ⁓ ⁔ ⁕ ⁖ ⁗ ⁘ ⁙ ⁚ ⁛ ⁜ ⁝ ⁞  
  ; ⁠ ⁡ ⁢ ⁣ ⁤

;; Superscripts and Subscripts
(set-fontset-font "fontset-standard" '(#x2070 . #x209f) fs-symbola)
  ; ⁰ ⁱ ⁴ ⁵ ⁶ ⁷ ⁸ ⁹ ⁺ ⁻ ⁼ ⁽ ⁾ ⁿ ₀ ₁ ₂ ₃ ₄ ₅ ₆ ₇ ₈ ₉ ₊ ₋ ₌ ₍ ₎
  ; ₐ ₑ ₒ ₓ ₔ ₕ ₖ ₗ ₘ ₙ ₚ ₛ ₜ

;; Currency Symbols
(set-fontset-font "fontset-standard" '(#x20a0 . #x20cf) fs-consolas)
  ; ₠ ₡ ₢ ₣ ₤ ₥ ₦ ₧ ₨ ₩ ₪ ₫ € ₭ ₮ ₯ ₰ ₱ ₲ ₳ ₴ ₵ ₶ ₷ ₸ ₹ ₺

;; Combining Diacritical Marks for Symbols
(set-fontset-font "fontset-standard" '(#x20d0 . #x20ff) fs-symbola)
  ; ⃐ ⃑ ⃒ ⃓ ⃔ ⃕ ⃖ ⃗ ⃘ ⃙ ⃚ ⃛ ⃜ ⃝ ⃞ ⃟ ⃠ ⃡ ⃢ ⃣ ⃤ ⃥ ⃦ ⃧ ⃨ ⃩ ⃪ ⃫ ⃬ ⃭ ⃮ ⃯ ⃰

;; Letterlike Symbols
(set-fontset-font "fontset-standard" '(#x2100 . #x214f) fs-symbola)
  ; ℀ ℁ ℂ ℃ ℄ ℅ ℆ ℇ ℈ ℉ ℊ ℋ ℌ ℍ ℎ ℏ ℐ ℑ ℒ ℓ ℔ ℕ № ℗ ℘ ℙ ℚ ℛ ℜ ℝ ℞ ℟
  ; ℠ ℡ ™ ℣ ℤ ℥ Ω ℧ ℨ ℩ K Å ℬ ℭ ℮ ℯ ℰ ℱ Ⅎ ℳ ℴ ℵ ℶ ℷ ℸ ℹ ℺ ℻ ℼ ℽ ℾ ℿ
  ; ⅀ ⅁ ⅂ ⅃ ⅄ ⅅ ⅆ ⅇ ⅈ ⅉ ⅊ ⅋ ⅌ ⅍ ⅎ

;; Number Forms
(set-fontset-font "fontset-standard" '(#x2150 . #x218f) fs-symbola)
  ; ⅐ ⅑ ⅒ ⅓ ⅔ ⅕ ⅖ ⅗ ⅘ ⅙ ⅚ ⅛ ⅜ ⅝ ⅞ ⅟ Ⅰ Ⅱ Ⅲ Ⅳ Ⅴ Ⅵ Ⅶ Ⅷ Ⅸ Ⅹ Ⅺ Ⅻ Ⅼ Ⅽ Ⅾ Ⅿ
  ; ⅰ ⅱ ⅲ ⅳ ⅴ ⅵ ⅶ ⅷ ⅸ ⅹ ⅺ ⅻ ⅼ ⅽ ⅾ ⅿ ↀ ↁ ↂ Ↄ ↄ ↅ ↆ ↇ ↈ ↉

;; Arrows
(set-fontset-font "fontset-standard" '(#x2190 . #x2195) fs-consolas)
  ; ← ↑ → ↓ ↔ ↕
(set-fontset-font "fontset-standard" '(#x2196 . #x21ff) fs-menlo)
  ; ↖ ↗ ↘ ↙ ↚ ↛ ↜ ↝ ↞ ↟ ↠ ↡ ↢ ↣ ↤ ↥ ↦ ↧ ↨ ↩ ↪ ↫ ↬ ↭ ↮ ↯
  ; ↰ ↱ ↲ ↳ ↴ ↵ ↶ ↷ ↸ ↹ ↺ ↻ ↼ ↽ ↾ ↿ ⇀ ⇁ ⇂ ⇃ ⇄ ⇅ ⇆ ⇇ ⇈ ⇉ ⇊ ⇋ ⇌ ⇍ ⇎ ⇏
  ; ⇐ ⇑ ⇒ ⇓ ⇔ ⇕ ⇖ ⇗ ⇘ ⇙ ⇚ ⇛ ⇜ ⇝ ⇞ ⇟ ⇠ ⇡ ⇢ ⇣ ⇤ ⇥ ⇦ ⇧ ⇨ ⇩ ⇪ ⇫ ⇬ ⇭ ⇮ ⇯
  ; ⇰ ⇱ ⇲ ⇳ ⇴ ⇵ ⇶ ⇷ ⇸ ⇹ ⇺ ⇻ ⇼ ⇽ ⇾

;; Mathematical Operators
(set-fontset-font "fontset-standard" '(#x2200 . #x22ff) fs-symbola)
  ; ∀ ∁ ∂ ∃ ∄ ∅ ∆ ∇ ∈ ∉ ∊ ∋ ∌ ∍ ∎ ∏ ∐ ∑ − ∓ ∔ ∕ ∖ ∗ ∘ ∙ √ ∛ ∜ ∝ ∞ ∟
  ; ∠ ∡ ∢ ∣ ∤ ∥ ∦ ∧ ∨ ∩ ∪ ∫ ∬ ∭ ∮ ∯ ∰ ∱ ∲ ∳ ∴ ∵ ∶ ∷ ∸ ∹ ∺ ∻ ∼ ∽ ∾ ∿
  ; ≀ ≁ ≂ ≃ ≄ ≅ ≆ ≇ ≈ ≉ ≊ ≋ ≌ ≍ ≎ ≏ ≐ ≑ ≒ ≓ ≔ ≕ ≖ ≗ ≘ ≙ ≚ ≛ ≜ ≝ ≞ ≟
  ; ≠ ≡ ≢ ≣ ≤ ≥ ≦ ≧ ≨ ≩ ≪ ≫ ≬ ≭ ≮ ≯ ≰ ≱ ≲ ≳ ≴ ≵ ≶ ≷ ≸ ≹ ≺ ≻ ≼ ≽ ≾ ≿
  ; ⊀ ⊁ ⊂ ⊃ ⊄ ⊅ ⊆ ⊇ ⊈ ⊉ ⊊ ⊋ ⊌ ⊍ ⊎ ⊏ ⊐ ⊑ ⊒ ⊓ ⊔ ⊕ ⊖ ⊗ ⊘ ⊙ ⊚ ⊛ ⊜ ⊝ ⊞ ⊟
  ; ⊠ ⊡ ⊢ ⊣ ⊤ ⊥ ⊦ ⊧ ⊨ ⊩ ⊪ ⊫ ⊬ ⊭ ⊮ ⊯ ⊰ ⊱ ⊲ ⊳ ⊴ ⊵ ⊶ ⊷ ⊸ ⊹ ⊺ ⊻ ⊼ ⊽ ⊾ ⊿
  ; ⋀ ⋁ ⋂ ⋃ ⋄ ⋅ ⋆ ⋇ ⋈ ⋉ ⋊ ⋋ ⋌ ⋍ ⋎ ⋏ ⋐ ⋑ ⋒ ⋓ ⋔ ⋕ ⋖ ⋗ ⋘ ⋙ ⋚ ⋛ ⋜ ⋝ ⋞ ⋟
  ; ⋠ ⋡ ⋢ ⋣ ⋤ ⋥ ⋦ ⋧ ⋨ ⋩ ⋪ ⋫ ⋬ ⋭ ⋮ ⋯ ⋰ ⋱ ⋲ ⋳ ⋴ ⋵ ⋶ ⋷ ⋸ ⋹ ⋺ ⋻ ⋼ ⋽ ⋾

;; Miscellaneous Technical
(set-fontset-font "fontset-standard" '(#x2300 . #x23ff) fs-symbola)
  ; ⌀ ⌁ ⌂ ⌃ ⌄ ⌅ ⌆ ⌇ ⌈ ⌉ ⌊ ⌋ ⌌ ⌍ ⌎ ⌏ ⌐ ⌑ ⌒ ⌓ ⌔ ⌕ ⌖ ⌗ ⌘ ⌙ ⌚ ⌛ ⌜ ⌝ ⌞ ⌟
  ; ⌠ ⌡ ⌢ ⌣ ⌤ ⌥ ⌦ ⌧ ⌨ 〈 〉 ⌫ ⌬ ⌭ ⌮ ⌯ ⌰ ⌱ ⌲ ⌳ ⌴ ⌵ ⌶ ⌷ ⌸ ⌹ ⌺ ⌻ ⌼ ⌽ ⌾ ⌿
  ; ⍀ ⍁ ⍂ ⍃ ⍄ ⍅ ⍆ ⍇ ⍈ ⍉ ⍊ ⍋ ⍌ ⍍ ⍎ ⍏ ⍐ ⍑ ⍒ ⍓ ⍔ ⍕ ⍖ ⍗ ⍘ ⍙ ⍚ ⍛ ⍜ ⍝ ⍞ ⍟
  ; ⍠ ⍡ ⍢ ⍣ ⍤ ⍥ ⍦ ⍧ ⍨ ⍩ ⍪ ⍫ ⍬ ⍭ ⍮ ⍯ ⍰ ⍱ ⍲ ⍳ ⍴ ⍵ ⍶ ⍷ ⍸ ⍹ ⍺ ⍻ ⍼ ⍽ ⍾ ⍿
  ; ⎀ ⎁ ⎂ ⎃ ⎄ ⎅ ⎆ ⎇ ⎈ ⎉ ⎊ ⎋ ⎌ ⎍ ⎎ ⎏ ⎐ ⎑ ⎒ ⎓ ⎔ ⎕ ⎖ ⎗ ⎘ ⎙ ⎚ ⎛ ⎜ ⎝ ⎞ ⎟
  ; ⎠ ⎡ ⎢ ⎣ ⎤ ⎥ ⎦ ⎧ ⎨ ⎩ ⎪ ⎫ ⎬ ⎭ ⎮ ⎯ ⎰ ⎱ ⎲ ⎳ ⎴ ⎵ ⎶ ⎷ ⎸ ⎹ ⎺ ⎻ ⎼ ⎽ ⎾ ⎿
  ; ⏀ ⏁ ⏂ ⏃ ⏄ ⏅ ⏆ ⏇ ⏈ ⏉ ⏊ ⏋ ⏌ ⏍ ⏎ ⏏ ⏐ ⏑ ⏒ ⏓ ⏔ ⏕ ⏖ ⏗ ⏘ ⏙ ⏚ ⏛ ⏜ ⏝ ⏞ ⏟
  ; ⏠ ⏡ ⏢ ⏣ ⏤ ⏥ ⏦ ⏧ ⏨ ⏩ ⏪ ⏫ ⏬ ⏭ ⏮ ⏯ ⏰ ⏱ ⏲ ⏳

;; Control Pictures
(set-fontset-font "fontset-standard" '(#x2400 . #x243f) fs-symbola)
  ; ␀ ␁ ␂ ␃ ␄ ␅ ␆ ␇ ␈ ␉ ␊ ␋ ␌ ␍ ␎ ␏ ␐ ␑ ␒ ␓ ␔ ␕ ␖ ␗ ␘ ␙ ␚ ␛ ␜ ␝ ␞ ␟
  ; ␠ ␡ ␢ ␣ ␤ ␥ ␦

;; Optical Character Recognition
(set-fontset-font "fontset-standard" '(#x2440 . #x245f) fs-symbola)
  ; ⑀ ⑁ ⑂ ⑃ ⑄ ⑅ ⑆ ⑇ ⑈ ⑉ ⑊

;; Enclosed Alphanumerics
(set-fontset-font "fontset-standard" '(#x2460 . #x24ff) fs-arial)
  ; ① ② ③ ④ ⑤ ⑥ ⑦ ⑧ ⑨ ⑩ ⑪ ⑫ ⑬ ⑭ ⑮ ⑯ ⑰ ⑱ ⑲ ⑳ ⑴ ⑵ ⑶ ⑷ ⑸ ⑹ ⑺ ⑻ ⑼ ⑽ ⑾ ⑿
  ; ⒀ ⒁ ⒂ ⒃ ⒄ ⒅ ⒆ ⒇ ⒈ ⒉ ⒊ ⒋ ⒌ ⒍ ⒎ ⒏ ⒐ ⒑ ⒒ ⒓ ⒔ ⒕ ⒖ ⒗ ⒘ ⒙ ⒚ ⒛ ⒜ ⒝ ⒞ ⒟
  ; ⒠ ⒡ ⒢ ⒣ ⒤ ⒥ ⒦ ⒧ ⒨ ⒩ ⒪ ⒫ ⒬ ⒭ ⒮ ⒯ ⒰ ⒱ ⒲ ⒳ ⒴ ⒵ Ⓐ Ⓑ Ⓒ Ⓓ Ⓔ Ⓕ Ⓖ Ⓗ Ⓘ Ⓙ
  ; Ⓚ Ⓛ Ⓜ Ⓝ Ⓞ Ⓟ Ⓠ Ⓡ Ⓢ Ⓣ Ⓤ Ⓥ Ⓦ Ⓧ Ⓨ Ⓩ ⓐ ⓑ ⓒ ⓓ ⓔ ⓕ ⓖ ⓗ ⓘ ⓙ ⓚ ⓛ ⓜ ⓝ ⓞ ⓟ
  ; ⓠ ⓡ ⓢ ⓣ ⓤ ⓥ ⓦ ⓧ ⓨ ⓩ ⓪ ⓫ ⓬ ⓭ ⓮ ⓯ ⓰ ⓱ ⓲ ⓳ ⓴ ⓵ ⓶ ⓷ ⓸ ⓹ ⓺ ⓻ ⓼ ⓽ ⓾

;; Box Drawing
(set-fontset-font "fontset-standard" '(#x2500 . #x257f) fs-menlo)
  ; ─ ━ │ ┃ ┄ ┅ ┆ ┇ ┈ ┉ ┊ ┋ ┌ ┍ ┎ ┏ ┐ ┑ ┒ ┓ └ ┕ ┖ ┗ ┘ ┙ ┚ ┛ ├ ┝ ┞ ┟
  ; ┠ ┡ ┢ ┣ ┤ ┥ ┦ ┧ ┨ ┩ ┪ ┫ ┬ ┭ ┮ ┯ ┰ ┱ ┲ ┳ ┴ ┵ ┶ ┷ ┸ ┹ ┺ ┻ ┼ ┽ ┾ ┿
  ; ╀ ╁ ╂ ╃ ╄ ╅ ╆ ╇ ╈ ╉ ╊ ╋ ╌ ╍ ╎ ╏ ═ ║ ╒ ╓ ╔ ╕ ╖ ╗ ╘ ╙ ╚ ╛ ╜ ╝ ╞ ╟
  ; ╠ ╡ ╢ ╣ ╤ ╥ ╦ ╧ ╨ ╩ ╪ ╫ ╬ ╭ ╮ ╯ ╰ ╱ ╲ ╳ ╴ ╵ ╶ ╷ ╸ ╹ ╺ ╻ ╼ ╽ ╾

;; Block Elements
(set-fontset-font "fontset-standard" '(#x2580 . #x259f) fs-menlo)
  ; ▀ ▁ ▂ ▃ ▄ ▅ ▆ ▇ █ ▉ ▊ ▋ ▌ ▍ ▎ ▏ ▐ ░ ▒ ▓ ▔ ▕ ▖ ▗ ▘ ▙ ▚ ▛ ▜ ▝ ▞

;; Geometric Shapes
(set-fontset-font "fontset-standard" '(#x25a0 . #x25ff) fs-menlo)
  ; ■ □ ▢ ▣ ▤ ▥ ▦ ▧ ▨ ▩ ▪ ▫ ▬ ▭ ▮ ▯ ▰ ▱ ▲ △ ▴ ▵ ▶ ▷ ▸ ▹ ► ▻ ▼ ▽ ▾ ▿
  ; ◀ ◁ ◂ ◃ ◄ ◅ ◆ ◇ ◈ ◉ ◊ ○ ◌ ◍ ◎ ● ◐ ◑ ◒ ◓ ◔ ◕ ◖ ◗ ◘ ◙ ◚ ◛ ◜ ◝ ◞ ◟
  ; ◠ ◡ ◢ ◣ ◤ ◥ ◦ ◧ ◨ ◩ ◪ ◫ ◬ ◭ ◮ ◯ ◰ ◱ ◲ ◳ ◴ ◵ ◶ ◷ ◸ ◹ ◺ ◻ ◼ ◽ ◾

;; Miscellaneous Symbols
(set-fontset-font "fontset-standard" '(#x2600 . #x26ff) fs-symbola)
  ; ☀ ☁ ☂ ☃ ☄ ★ ☆ ☇ ☈ ☉ ☊ ☋ ☌ ☍ ☎ ☏ ☐ ☑ ☒ ☓ ☔ ☕ ☖ ☗ ☘ ☙ ☚ ☛ ☜ ☝ ☞ ☟
  ; ☠ ☡ ☢ ☣ ☤ ☥ ☦ ☧ ☨ ☩ ☪ ☫ ☬ ☭ ☮ ☯ ☰ ☱ ☲ ☳ ☴ ☵ ☶ ☷ ☸ ☹ ☺ ☻ ☼ ☽ ☾ ☿
  ; ♀ ♁ ♂ ♃ ♄ ♅ ♆ ♇ ♈ ♉ ♊ ♋ ♌ ♍ ♎ ♏ ♐ ♑ ♒ ♓ ♔ ♕ ♖ ♗ ♘ ♙ ♚ ♛ ♜ ♝ ♞ ♟
  ; ♠ ♡ ♢ ♣ ♤ ♥ ♦ ♧ ♨ ♩ ♪ ♫ ♬ ♭ ♮ ♯ ♰ ♱ ♲ ♳ ♴ ♵ ♶ ♷ ♸ ♹ ♺ ♻ ♼ ♽ ♾ ♿
  ; ⚀ ⚁ ⚂ ⚃ ⚄ ⚅ ⚆ ⚇ ⚈ ⚉ ⚊ ⚋ ⚌ ⚍ ⚎ ⚏ ⚐ ⚑ ⚒ ⚓ ⚔ ⚕ ⚖ ⚗ ⚘ ⚙ ⚚ ⚛ ⚜ ⚝ ⚞ ⚟
  ; ⚠ ⚡ ⚢ ⚣ ⚤ ⚥ ⚦ ⚧ ⚨ ⚩ ⚪ ⚫ ⚬ ⚭ ⚮ ⚯ ⚰ ⚱ ⚲ ⚳ ⚴ ⚵ ⚶ ⚷ ⚸ ⚹ ⚺ ⚻ ⚼ ⚽ ⚾ ⚿
  ; ⛀ ⛁ ⛂ ⛃ ⛄ ⛅ ⛆ ⛇ ⛈ ⛉ ⛊ ⛋ ⛌ ⛍ ⛎ ⛏ ⛐ ⛑ ⛒ ⛓ ⛔ ⛕ ⛖ ⛗ ⛘ ⛙ ⛚ ⛛ ⛜ ⛝ ⛞ ⛟
  ; ⛠ ⛡ ⛢ ⛣ ⛤ ⛥ ⛦ ⛧ ⛨ ⛩ ⛪ ⛫ ⛬ ⛭ ⛮ ⛯ ⛰ ⛱ ⛲ ⛳ ⛴ ⛵ ⛶ ⛷ ⛸ ⛹ ⛺ ⛻ ⛼ ⛽ ⛾

;; Dingbats
(set-fontset-font "fontset-standard" '(#x2700 . #x27bf) fs-symbola)
  ; ✁ ✂ ✃ ✄ ✅ ✆ ✇ ✈ ✉ ✊ ✋ ✌ ✍ ✎ ✏ ✐ ✑ ✒ ✓ ✔ ✕ ✖ ✗ ✘ ✙ ✚ ✛ ✜ ✝ ✞ ✟
  ; ✠ ✡ ✢ ✣ ✤ ✥ ✦ ✧ ✨ ✩ ✪ ✫ ✬ ✭ ✮ ✯ ✰ ✱ ✲ ✳ ✴ ✵ ✶ ✷ ✸ ✹ ✺ ✻ ✼ ✽ ✾ ✿
  ; ❀ ❁ ❂ ❃ ❄ ❅ ❆ ❇ ❈ ❉ ❊ ❋ ❌ ❍ ❎ ❏ ❐ ❑ ❒ ❓ ❔ ❕ ❖ ❗ ❘ ❙ ❚ ❛ ❜ ❝ ❞ ❟
  ; ❠ ❡ ❢ ❣ ❤ ❥ ❦ ❧ ❨ ❩ ❪ ❫ ❬ ❭ ❮ ❯ ❰ ❱ ❲ ❳ ❴ ❵ ❶ ❷ ❸ ❹ ❺ ❻ ❼ ❽ ❾ ❿
  ; ➀ ➁ ➂ ➃ ➄ ➅ ➆ ➇ ➈ ➉ ➊ ➋ ➌ ➍ ➎ ➏ ➐ ➑ ➒ ➓ ➔ ➕ ➖ ➗ ➘ ➙ ➚ ➛ ➜ ➝ ➞ ➟
  ; ➠ ➡ ➢ ➣ ➤ ➥ ➦ ➧ ➨ ➩ ➪ ➫ ➬ ➭ ➮ ➯ ➰ ➱ ➲ ➳ ➴ ➵ ➶ ➷ ➸ ➹ ➺ ➻ ➼ ➽ ➾

;; Miscellaneous Mathematical Symbols-A
(set-fontset-font "fontset-standard" '(#x27c0 . #x27ef) fs-symbola)
  ; ⟀ ⟁ ⟂ ⟃ ⟄ ⟅ ⟆ ⟇ ⟈ ⟉ ⟊ ⟋ ⟌ ⟍ ⟎ ⟏ ⟐ ⟑ ⟒ ⟓ ⟔ ⟕ ⟖ ⟗ ⟘ ⟙ ⟚ ⟛ ⟜ ⟝ ⟞ ⟟
  ; ⟠ ⟡ ⟢ ⟣ ⟤ ⟥ ⟦ ⟧ ⟨ ⟩ ⟪ ⟫ ⟬ ⟭ ⟮

;; Supplemental Arrows-A
(set-fontset-font "fontset-standard" '(#x27f0 . #x27ff) fs-symbola)
  ; ⟰ ⟱ ⟲ ⟳ ⟴ ⟵ ⟶ ⟷ ⟸ ⟹ ⟺ ⟻ ⟼ ⟽ ⟾

;; Braille Patterns
(set-fontset-font "fontset-standard" '(#x2800 . #x28ff) fs-symbola)
  ; ⠀ ⠁ ⠂ ⠃ ⠄ ⠅ ⠆ ⠇ ⠈ ⠉ ⠊ ⠋ ⠌ ⠍ ⠎ ⠏ ⠐ ⠑ ⠒ ⠓ ⠔ ⠕ ⠖ ⠗ ⠘ ⠙ ⠚ ⠛ ⠜ ⠝ ⠞ ⠟
  ; ⠠ ⠡ ⠢ ⠣ ⠤ ⠥ ⠦ ⠧ ⠨ ⠩ ⠪ ⠫ ⠬ ⠭ ⠮ ⠯ ⠰ ⠱ ⠲ ⠳ ⠴ ⠵ ⠶ ⠷ ⠸ ⠹ ⠺ ⠻ ⠼ ⠽ ⠾ ⠿
  ; ⡀ ⡁ ⡂ ⡃ ⡄ ⡅ ⡆ ⡇ ⡈ ⡉ ⡊ ⡋ ⡌ ⡍ ⡎ ⡏ ⡐ ⡑ ⡒ ⡓ ⡔ ⡕ ⡖ ⡗ ⡘ ⡙ ⡚ ⡛ ⡜ ⡝ ⡞ ⡟
  ; ⡠ ⡡ ⡢ ⡣ ⡤ ⡥ ⡦ ⡧ ⡨ ⡩ ⡪ ⡫ ⡬ ⡭ ⡮ ⡯ ⡰ ⡱ ⡲ ⡳ ⡴ ⡵ ⡶ ⡷ ⡸ ⡹ ⡺ ⡻ ⡼ ⡽ ⡾ ⡿
  ; ⢀ ⢁ ⢂ ⢃ ⢄ ⢅ ⢆ ⢇ ⢈ ⢉ ⢊ ⢋ ⢌ ⢍ ⢎ ⢏ ⢐ ⢑ ⢒ ⢓ ⢔ ⢕ ⢖ ⢗ ⢘ ⢙ ⢚ ⢛ ⢜ ⢝ ⢞ ⢟
  ; ⢠ ⢡ ⢢ ⢣ ⢤ ⢥ ⢦ ⢧ ⢨ ⢩ ⢪ ⢫ ⢬ ⢭ ⢮ ⢯ ⢰ ⢱ ⢲ ⢳ ⢴ ⢵ ⢶ ⢷ ⢸ ⢹ ⢺ ⢻ ⢼ ⢽ ⢾ ⢿
  ; ⣀ ⣁ ⣂ ⣃ ⣄ ⣅ ⣆ ⣇ ⣈ ⣉ ⣊ ⣋ ⣌ ⣍ ⣎ ⣏ ⣐ ⣑ ⣒ ⣓ ⣔ ⣕ ⣖ ⣗ ⣘ ⣙ ⣚ ⣛ ⣜ ⣝ ⣞ ⣟
  ; ⣠ ⣡ ⣢ ⣣ ⣤ ⣥ ⣦ ⣧ ⣨ ⣩ ⣪ ⣫ ⣬ ⣭ ⣮ ⣯ ⣰ ⣱ ⣲ ⣳ ⣴ ⣵ ⣶ ⣷ ⣸ ⣹ ⣺ ⣻ ⣼ ⣽ ⣾

;; Supplemental Arrows-B
(set-fontset-font "fontset-standard" '(#x2900 . #x297f) fs-symbola)
  ; ⤀ ⤁ ⤂ ⤃ ⤄ ⤅ ⤆ ⤇ ⤈ ⤉ ⤊ ⤋ ⤌ ⤍ ⤎ ⤏ ⤐ ⤑ ⤒ ⤓ ⤔ ⤕ ⤖ ⤗ ⤘ ⤙ ⤚ ⤛ ⤜ ⤝ ⤞ ⤟
  ; ⤠ ⤡ ⤢ ⤣ ⤤ ⤥ ⤦ ⤧ ⤨ ⤩ ⤪ ⤫ ⤬ ⤭ ⤮ ⤯ ⤰ ⤱ ⤲ ⤳ ⤴ ⤵ ⤶ ⤷ ⤸ ⤹ ⤺ ⤻ ⤼ ⤽ ⤾ ⤿
  ; ⥀ ⥁ ⥂ ⥃ ⥄ ⥅ ⥆ ⥇ ⥈ ⥉ ⥊ ⥋ ⥌ ⥍ ⥎ ⥏ ⥐ ⥑ ⥒ ⥓ ⥔ ⥕ ⥖ ⥗ ⥘ ⥙ ⥚ ⥛ ⥜ ⥝ ⥞ ⥟
  ; ⥠ ⥡ ⥢ ⥣ ⥤ ⥥ ⥦ ⥧ ⥨ ⥩ ⥪ ⥫ ⥬ ⥭ ⥮ ⥯ ⥰ ⥱ ⥲ ⥳ ⥴ ⥵ ⥶ ⥷ ⥸ ⥹ ⥺ ⥻ ⥼ ⥽ ⥾

;; Miscellaneous Mathematical Symbols-B
(set-fontset-font "fontset-standard" '(#x2980 . #x29ff) fs-symbola)
  ; ⦀ ⦁ ⦂ ⦃ ⦄ ⦅ ⦆ ⦇ ⦈ ⦉ ⦊ ⦋ ⦌ ⦍ ⦎ ⦏ ⦐ ⦑ ⦒ ⦓ ⦔ ⦕ ⦖ ⦗ ⦘ ⦙ ⦚ ⦛ ⦜ ⦝ ⦞ ⦟
  ; ⦠ ⦡ ⦢ ⦣ ⦤ ⦥ ⦦ ⦧ ⦨ ⦩ ⦪ ⦫ ⦬ ⦭ ⦮ ⦯ ⦰ ⦱ ⦲ ⦳ ⦴ ⦵ ⦶ ⦷ ⦸ ⦹ ⦺ ⦻ ⦼ ⦽ ⦾ ⦿
  ; ⧀ ⧁ ⧂ ⧃ ⧄ ⧅ ⧆ ⧇ ⧈ ⧉ ⧊ ⧋ ⧌ ⧍ ⧎ ⧏ ⧐ ⧑ ⧒ ⧓ ⧔ ⧕ ⧖ ⧗ ⧘ ⧙ ⧚ ⧛ ⧜ ⧝ ⧞ ⧟
  ; ⧠ ⧡ ⧢ ⧣ ⧤ ⧥ ⧦ ⧧ ⧨ ⧩ ⧪ ⧫ ⧬ ⧭ ⧮ ⧯ ⧰ ⧱ ⧲ ⧳ ⧴ ⧵ ⧶ ⧷ ⧸ ⧹ ⧺ ⧻ ⧼ ⧽ ⧾

;; Supplemental Mathematical Operators
(set-fontset-font "fontset-standard" '(#x2a00 . #x2aff) fs-symbola)
  ; ⨀ ⨁ ⨂ ⨃ ⨄ ⨅ ⨆ ⨇ ⨈ ⨉ ⨊ ⨋ ⨌ ⨍ ⨎ ⨏ ⨐ ⨑ ⨒ ⨓ ⨔ ⨕ ⨖ ⨗ ⨘ ⨙ ⨚ ⨛ ⨜ ⨝ ⨞ ⨟
  ; ⨠ ⨡ ⨢ ⨣ ⨤ ⨥ ⨦ ⨧ ⨨ ⨩ ⨪ ⨫ ⨬ ⨭ ⨮ ⨯ ⨰ ⨱ ⨲ ⨳ ⨴ ⨵ ⨶ ⨷ ⨸ ⨹ ⨺ ⨻ ⨼ ⨽ ⨾ ⨿
  ; ⩀ ⩁ ⩂ ⩃ ⩄ ⩅ ⩆ ⩇ ⩈ ⩉ ⩊ ⩋ ⩌ ⩍ ⩎ ⩏ ⩐ ⩑ ⩒ ⩓ ⩔ ⩕ ⩖ ⩗ ⩘ ⩙ ⩚ ⩛ ⩜ ⩝ ⩞ ⩟
  ; ⩠ ⩡ ⩢ ⩣ ⩤ ⩥ ⩦ ⩧ ⩨ ⩩ ⩪ ⩫ ⩬ ⩭ ⩮ ⩯ ⩰ ⩱ ⩲ ⩳ ⩴ ⩵ ⩶ ⩷ ⩸ ⩹ ⩺ ⩻ ⩼ ⩽ ⩾ ⩿
  ; ⪀ ⪁ ⪂ ⪃ ⪄ ⪅ ⪆ ⪇ ⪈ ⪉ ⪊ ⪋ ⪌ ⪍ ⪎ ⪏ ⪐ ⪑ ⪒ ⪓ ⪔ ⪕ ⪖ ⪗ ⪘ ⪙ ⪚ ⪛ ⪜ ⪝ ⪞ ⪟
  ; ⪠ ⪡ ⪢ ⪣ ⪤ ⪥ ⪦ ⪧ ⪨ ⪩ ⪪ ⪫ ⪬ ⪭ ⪮ ⪯ ⪰ ⪱ ⪲ ⪳ ⪴ ⪵ ⪶ ⪷ ⪸ ⪹ ⪺ ⪻ ⪼ ⪽ ⪾ ⪿
  ; ⫀ ⫁ ⫂ ⫃ ⫄ ⫅ ⫆ ⫇ ⫈ ⫉ ⫊ ⫋ ⫌ ⫍ ⫎ ⫏ ⫐ ⫑ ⫒ ⫓ ⫔ ⫕ ⫖ ⫗ ⫘ ⫙ ⫚ ⫛ ⫝̸ ⫝ ⫞ ⫟
  ; ⫠ ⫡ ⫢ ⫣ ⫤ ⫥ ⫦ ⫧ ⫨ ⫩ ⫪ ⫫ ⫬ ⫭ ⫮ ⫯ ⫰ ⫱ ⫲ ⫳ ⫴ ⫵ ⫶ ⫷ ⫸ ⫹ ⫺ ⫻ ⫼ ⫽ ⫾

;; Miscellaneous Symbols and Arrows
(set-fontset-font "fontset-standard" '(#x2b00 . #x2bff) fs-symbola)
  ; ⬀ ⬁ ⬂ ⬃ ⬄ ⬅ ⬆ ⬇ ⬈ ⬉ ⬊ ⬋ ⬌ ⬍ ⬎ ⬏ ⬐ ⬑ ⬒ ⬓ ⬔ ⬕ ⬖ ⬗ ⬘ ⬙ ⬚ ⬛ ⬜ ⬝ ⬞ ⬟
  ; ⬠ ⬡ ⬢ ⬣ ⬤ ⬥ ⬦ ⬧ ⬨ ⬩ ⬪ ⬫ ⬬ ⬭ ⬮ ⬯ ⬰ ⬱ ⬲ ⬳ ⬴ ⬵ ⬶ ⬷ ⬸ ⬹ ⬺ ⬻ ⬼ ⬽ ⬾ ⬿
  ; ⭀ ⭁ ⭂ ⭃ ⭄ ⭅ ⭆ ⭇ ⭈ ⭉ ⭊ ⭋ ⭌ ⭐ ⭑ ⭒ ⭓ ⭔ ⭕ ⭖ ⭗ ⭘ ⭙

;; (set-fontset-font "fontset-standard" '(#x2c00 . #x2c5f) "") ;; Glagolitic
;; (set-fontset-font "fontset-standard" '(#x2c60 . #x2c7f) "") ;; Latin Extended-C
;; (set-fontset-font "fontset-standard" '(#x2c80 . #x2cff) "") ;; Coptic
;; (set-fontset-font "fontset-standard" '(#x2d00 . #x2d2f) "") ;; Georgian Supplement
;; (set-fontset-font "fontset-standard" '(#x2d30 . #x2d7f) "") ;; Tifinagh
;; (set-fontset-font "fontset-standard" '(#x2d80 . #x2ddf) "") ;; Ethiopic Extended
;; (set-fontset-font "fontset-standard" '(#x2de0 . #x2dff) "") ;; Cyrillic Extended-A
;; (set-fontset-font "fontset-standard" '(#x2e00 . #x2e7f) "") ;; Supplemental Punctuation
;; (set-fontset-font "fontset-standard" '(#x2e80 . #x2eff) "") ;; CJK Radicals Supplement
;; (set-fontset-font "fontset-standard" '(#x2f00 . #x2fdf) "") ;; Kangxi Radicals
;; (set-fontset-font "fontset-standard" '(#x2ff0 . #x2fff) "") ;; Ideographic Description Characters
(set-fontset-font "fontset-standard" '(#x3000 . #x303f) fs-arial) ;; CJK Symbols and Punctuation
(set-fontset-font "fontset-standard" '(#x3040 . #x309f) fs-arial) ;; Hiragana
(set-fontset-font "fontset-standard" '(#x30a0 . #x30ff) fs-arial) ;; Katakana
(set-fontset-font "fontset-standard" '(#x3100 . #x312f) fs-arial) ;; Bopomofo
(set-fontset-font "fontset-standard" '(#x3130 . #x318f) fs-arial) ;; Hangul Compatibility Jamo
(set-fontset-font "fontset-standard" '(#x3190 . #x319f) fs-arial) ;; Kanbun
(set-fontset-font "fontset-standard" '(#x31a0 . #x31bf) fs-arial) ;; Bopomofo Extended
(set-fontset-font "fontset-standard" '(#x31c0 . #x31ef) fs-arial) ;; CJK Strokes
(set-fontset-font "fontset-standard" '(#x31f0 . #x31ff) fs-arial) ;; Katakana Phonetic Extensions
(set-fontset-font "fontset-standard" '(#x3200 . #x32ff) fs-arial) ;; Enclosed CJK Letters and Months
(set-fontset-font "fontset-standard" '(#x3300 . #x33ff) fs-arial) ;; CJK Compatibility
;; (set-fontset-font "fontset-standard" '(#x3400 . #x4dbf) "") ;; CJK Unified Ideographs Extension A
;; (set-fontset-font "fontset-standard" '(#x4dc0 . #x4dff) "") ;; Yijing Hexagram Symbols
(set-fontset-font "fontset-standard" '(#x4e00 . #x9fff) fs-arial) ;; CJK Unified Ideographs
;; (set-fontset-font "fontset-standard" '(#xa000 . #xa48f) "") ;; Yi Syllables
;; (set-fontset-font "fontset-standard" '(#xa490 . #xa4cf) "") ;; Yi Radicals
;; (set-fontset-font "fontset-standard" '(#xa4d0 . #xa4ff) "") ;; Lisu
;; (set-fontset-font "fontset-standard" '(#xa500 . #xa63f) "") ;; Vai
;; (set-fontset-font "fontset-standard" '(#xa640 . #xa69f) "") ;; Cyrillic Extended-B
;; (set-fontset-font "fontset-standard" '(#xa6a0 . #xa6ff) "") ;; Bamum
;; (set-fontset-font "fontset-standard" '(#xa700 . #xa71f) "") ;; Modifier Tone Letters
;; (set-fontset-font "fontset-standard" '(#xa720 . #xa7ff) "") ;; Latin Extended-D
;; (set-fontset-font "fontset-standard" '(#xa800 . #xa82f) "") ;; Syloti Nagri
;; (set-fontset-font "fontset-standard" '(#xa830 . #xa83f) "") ;; Common Indic Number Forms
;; (set-fontset-font "fontset-standard" '(#xa840 . #xa87f) "") ;; Phags-pa
;; (set-fontset-font "fontset-standard" '(#xa880 . #xa8df) "") ;; Saurashtra
;; (set-fontset-font "fontset-standard" '(#xa8e0 . #xa8ff) "") ;; Devanagari Extended
;; (set-fontset-font "fontset-standard" '(#xa900 . #xa92f) "") ;; Kayah Li
;; (set-fontset-font "fontset-standard" '(#xa930 . #xa95f) "") ;; Rejang
;; (set-fontset-font "fontset-standard" '(#xa960 . #xa97f) "") ;; Hangul Jamo Extended-A
;; (set-fontset-font "fontset-standard" '(#xa980 . #xa9df) "") ;; Javanese
;; (set-fontset-font "fontset-standard" '(#xa9e0 . #xa9ff) "") ;; Myanmar Extended-B
;; (set-fontset-font "fontset-standard" '(#xaa00 . #xaa5f) "") ;; Cham
;; (set-fontset-font "fontset-standard" '(#xaa60 . #xaa7f) "") ;; Myanmar Extended-A
;; (set-fontset-font "fontset-standard" '(#xaa80 . #xaadf) "") ;; Tai Viet
;; (set-fontset-font "fontset-standard" '(#xaae0 . #xaaff) "") ;; Meetei Mayek Extensions
;; (set-fontset-font "fontset-standard" '(#xab00 . #xab2f) "") ;; Ethiopic Extended-A
;; (set-fontset-font "fontset-standard" '(#xab30 . #xab6f) "") ;; Latin Extended-E
;; (set-fontset-font "fontset-standard" '(#xab70 . #xabbf) "") ;; Cherokee Supplement
;; (set-fontset-font "fontset-standard" '(#xabc0 . #xabff) "") ;; Meetei Mayek
;; (set-fontset-font "fontset-standard" '(#xac00 . #xd7af) "") ;; Hangul Syllables
;; (set-fontset-font "fontset-standard" '(#xd7b0 . #xd7ff) "") ;; Hangul Jamo Extended-B
;; (set-fontset-font "fontset-standard" '(#xd800 . #xdb7f) "") ;; High Surrogates
;; (set-fontset-font "fontset-standard" '(#xdb80 . #xdbff) "") ;; High Private Use Surrogates
;; (set-fontset-font "fontset-standard" '(#xdc00 . #xdfff) "") ;; Low Surrogates
;; (set-fontset-font "fontset-standard" '(#xe000 . #xf8ff) "") ;; Private Use Area
(set-fontset-font "fontset-standard" '(#xf900 . #xfaff) fs-arial) ;; CJK Compatibility Ideographs
(set-fontset-font "fontset-standard" '(#xfb00 . #xfb4f) fs-arial) ;; Alphabetic Presentation Forms
(set-fontset-font "fontset-standard" '(#xfb50 . #xfdff) fs-arial) ;; Arabic Presentation Forms-A
(set-fontset-font "fontset-standard" '(#xfe00 . #xfe0f) fs-arial) ;; Variation Selectors
(set-fontset-font "fontset-standard" '(#xfe10 . #xfe1f) fs-symbola) ;; Vertical Forms
(set-fontset-font "fontset-standard" '(#xfe20 . #xfe2f) fs-symbola) ;; Combining Half Marks
(set-fontset-font "fontset-standard" '(#xfe30 . #xfe4f) fs-arial) ;; CJK Compatibility Forms
(set-fontset-font "fontset-standard" '(#xfe50 . #xfe6f) fs-arial) ;; Small Form Variants
(set-fontset-font "fontset-standard" '(#xfe70 . #xfeff) fs-arial) ;; Arabic Presentation Forms-B
(set-fontset-font "fontset-standard" '(#xff00 . #xffef) fs-arial) ;; Halfwidth and Fullwidth Forms
(set-fontset-font "fontset-standard" '(#xfff0 . #xffff) fs-arial) ;; Specials

;;=============================================================================
;; SUPPLEMENTARY MULTILINGUAL PLANE (10000-1ffff)

;; (set-fontset-font "fontset-standard" '(#x10000 . #x1007f) "") ;; Linear B Syllabary
;; (set-fontset-font "fontset-standard" '(#x10080 . #x100ff) "") ;; Linear B Ideograms
;; (set-fontset-font "fontset-standard" '(#x10100 . #x1013f) "") ;; Aegean Numbers
;; (set-fontset-font "fontset-standard" '(#x10140 . #x1018f) "") ;; Ancient Greek Numbers
;; (set-fontset-font "fontset-standard" '(#x10190 . #x101cf) "") ;; Ancient Symbols
;; (set-fontset-font "fontset-standard" '(#x101d0 . #x101ff) "") ;; Phaistos Disc
;; (set-fontset-font "fontset-standard" '(#x10280 . #x1029f) "") ;; Lycian
;; (set-fontset-font "fontset-standard" '(#x102a0 . #x102df) "") ;; Carian
;; (set-fontset-font "fontset-standard" '(#x102e0 . #x102ff) "") ;; Coptic Epact Numbers
;; (set-fontset-font "fontset-standard" '(#x10300 . #x1032f) "") ;; Old Italic
;; (set-fontset-font "fontset-standard" '(#x10330 . #x1034f) "") ;; Gothic
;; (set-fontset-font "fontset-standard" '(#x10350 . #x1037f) "") ;; Old Permic
;; (set-fontset-font "fontset-standard" '(#x10380 . #x1039f) "") ;; Ugaritic
;; (set-fontset-font "fontset-standard" '(#x103a0 . #x103df) "") ;; Old Persian
;; (set-fontset-font "fontset-standard" '(#x10400 . #x1044f) "") ;; Deseret
;; (set-fontset-font "fontset-standard" '(#x10450 . #x1047f) "") ;; Shavian
;; (set-fontset-font "fontset-standard" '(#x10480 . #x104af) "") ;; Osmanya
;; (set-fontset-font "fontset-standard" '(#x10500 . #x1052f) "") ;; Elbasan
;; (set-fontset-font "fontset-standard" '(#x10530 . #x1056f) "") ;; Caucasian Albanian
;; (set-fontset-font "fontset-standard" '(#x10600 . #x1077f) "") ;; Linear A
;; (set-fontset-font "fontset-standard" '(#x10800 . #x1083f) "") ;; Cypriot Syllabary
;; (set-fontset-font "fontset-standard" '(#x10840 . #x1085f) "") ;; Imperial Aramaic
;; (set-fontset-font "fontset-standard" '(#x10860 . #x1087f) "") ;; Palmyrene
;; (set-fontset-font "fontset-standard" '(#x10880 . #x108af) "") ;; Nabataean
;; (set-fontset-font "fontset-standard" '(#x108e0 . #x108ff) "") ;; Hatran
;; (set-fontset-font "fontset-standard" '(#x10900 . #x1091f) "") ;; Phoenician
;; (set-fontset-font "fontset-standard" '(#x10920 . #x1093f) "") ;; Lydian
;; (set-fontset-font "fontset-standard" '(#x10980 . #x1099f) "") ;; Meroitic Hieroglyphs
;; (set-fontset-font "fontset-standard" '(#x109a0 . #x109ff) "") ;; Meroitic Cursive
;; (set-fontset-font "fontset-standard" '(#x10a00 . #x10a5f) "") ;; Kharoshthi
;; (set-fontset-font "fontset-standard" '(#x10a60 . #x10a7f) "") ;; Old South Arabian
;; (set-fontset-font "fontset-standard" '(#x10a80 . #x10a9f) "") ;; Old North Arabian
;; (set-fontset-font "fontset-standard" '(#x10ac0 . #x10aff) "") ;; Manichaean
;; (set-fontset-font "fontset-standard" '(#x10b00 . #x10b3f) "") ;; Avestan
;; (set-fontset-font "fontset-standard" '(#x10b40 . #x10b5f) "") ;; Inscriptional Parthian
;; (set-fontset-font "fontset-standard" '(#x10b60 . #x10b7f) "") ;; Inscriptional Pahlavi
;; (set-fontset-font "fontset-standard" '(#x10b80 . #x10baf) "") ;; Psalter Pahlavi
;; (set-fontset-font "fontset-standard" '(#x10c00 . #x10c4f) "") ;; Old Turkic
;; (set-fontset-font "fontset-standard" '(#x10c80 . #x10cff) "") ;; Old Hungarian
;; (set-fontset-font "fontset-standard" '(#x10e60 . #x10e7f) "") ;; Rumi Numeral Symbols
;; (set-fontset-font "fontset-standard" '(#x11000 . #x1107f) "") ;; Brahmi
;; (set-fontset-font "fontset-standard" '(#x11080 . #x110cf) "") ;; Kaithi
;; (set-fontset-font "fontset-standard" '(#x110d0 . #x110ff) "") ;; Sora Sompeng
;; (set-fontset-font "fontset-standard" '(#x11100 . #x1114f) "") ;; Chakma
;; (set-fontset-font "fontset-standard" '(#x11150 . #x1117f) "") ;; Mahajani
;; (set-fontset-font "fontset-standard" '(#x11180 . #x111df) "") ;; Sharada
;; (set-fontset-font "fontset-standard" '(#x111e0 . #x111ff) "") ;; Sinhala Archaic Numbers
;; (set-fontset-font "fontset-standard" '(#x11680 . #x116cf) "") ;; Takri
;; (set-fontset-font "fontset-standard" '(#x11200 . #x1124f) "") ;; Khojki
;; (set-fontset-font "fontset-standard" '(#x11280 . #x112af) "") ;; Multani
;; (set-fontset-font "fontset-standard" '(#x112b0 . #x112ff) "") ;; Khudawadi
;; (set-fontset-font "fontset-standard" '(#x11300 . #x1137f) "") ;; Grantha
;; (set-fontset-font "fontset-standard" '(#x11480 . #x114df) "") ;; Tirhuta
;; (set-fontset-font "fontset-standard" '(#x11580 . #x115ff) "") ;; Siddham
;; (set-fontset-font "fontset-standard" '(#x11600 . #x1165f) "") ;; Modi
;; (set-fontset-font "fontset-standard" '(#x11700 . #x1173f) "") ;; Ahom
;; (set-fontset-font "fontset-standard" '(#x118a0 . #x118ff) "") ;; Warang Citi
;; (set-fontset-font "fontset-standard" '(#x11ac0 . #x11aff) "") ;; Pau Cin Hau
;; (set-fontset-font "fontset-standard" '(#x12000 . #x123ff) "") ;; Cuneiform
;; (set-fontset-font "fontset-standard" '(#x12400 . #x1247f) "") ;; Cuneiform Numbers and Punctuation
;; (set-fontset-font "fontset-standard" '(#x12480 . #x1254f) "") ;; Early Dynastic Cuneiform
;; (set-fontset-font "fontset-standard" '(#x13000 . #x1342f) "") ;; Egyptian Hieroglyphs
;; (set-fontset-font "fontset-standard" '(#x14400 . #x1467f) "") ;; Anatolian Hieroglyphs
;; (set-fontset-font "fontset-standard" '(#x16800 . #x16a3f) "") ;; Bamum Supplement
;; (set-fontset-font "fontset-standard" '(#x16a40 . #x16a6f) "") ;; Mro
;; (set-fontset-font "fontset-standard" '(#x16ad0 . #x16aff) "") ;; Bassa Vah
;; (set-fontset-font "fontset-standard" '(#x16b00 . #x16b8f) "") ;; Pahawh Hmong
;; (set-fontset-font "fontset-standard" '(#x16f00 . #x16f9f) "") ;; Miao
;; (set-fontset-font "fontset-standard" '(#x1b000 . #x1b0ff) "") ;; Kana Supplement
;; (set-fontset-font "fontset-standard" '(#x1bc00 . #x1bc9f) "") ;; Duployan
;; (set-fontset-font "fontset-standard" '(#x1bca0 . #x1bcaf) "") ;; Shorthand Format Controls
;; (set-fontset-font "fontset-standard" '(#x1d000 . #x1d0ff) "") ;; Byzantine Musical Symbols
;; (set-fontset-font "fontset-standard" '(#x1d100 . #x1d1ff) "") ;; Musical Symbols
;; (set-fontset-font "fontset-standard" '(#x1d200 . #x1d24f) "") ;; Ancient Greek Musical Notation
;; (set-fontset-font "fontset-standard" '(#x1d300 . #x1d35f) "") ;; Tai Xuan Jing Symbols
;; (set-fontset-font "fontset-standard" '(#x1d360 . #x1d37f) "") ;; Counting Rod Numerals
;; (set-fontset-font "fontset-standard" '(#x1d400 . #x1d7ff) "") ;; Mathematical Alphanumeric Symbols
;; (set-fontset-font "fontset-standard" '(#x1d800 . #x1daaf) "") ;; Sutton SignWriting
;; (set-fontset-font "fontset-standard" '(#x1e800 . #x1e8df) "") ;; Mende Kikakui
;; (set-fontset-font "fontset-standard" '(#x1ee00 . #x1eeff) "") ;; Arabic Mathematical Alphabetic Symbols
;; (set-fontset-font "fontset-standard" '(#x1f000 . #x1f02f) "") ;; Mahjong Tiles
;; (set-fontset-font "fontset-standard" '(#x1f030 . #x1f09f) "") ;; Domino Tiles
;; (set-fontset-font "fontset-standard" '(#x1f0a0 . #x1f0ff) "") ;; Playing Cards
;; (set-fontset-font "fontset-standard" '(#x1f100 . #x1f1ff) "") ;; Enclosed Alphanumeric Supplement
;; (set-fontset-font "fontset-standard" '(#x1f200 . #x1f2ff) "") ;; Enclosed Ideographic Supplement
;; (set-fontset-font "fontset-standard" '(#x1f300 . #x1f5ff) "") ;; Miscellaneous Symbols And Pictographs
;; (set-fontset-font "fontset-standard" '(#x1f600 . #x1f64f) "") ;; Emoticons
;; (set-fontset-font "fontset-standard" '(#x1f650 . #x1f67f) "") ;; Ornamental Dingbats
;; (set-fontset-font "fontset-standard" '(#x1f680 . #x1f6ff) "") ;; Transport And Map Symbols
;; (set-fontset-font "fontset-standard" '(#x1f700 . #x1f77f) "") ;; Alchemical Symbols
;; (set-fontset-font "fontset-standard" '(#x1f780 . #x1f7ff) "") ;; Geometric Shapes Extended
;; (set-fontset-font "fontset-standard" '(#x1f800 . #x1f8ff) "") ;; Supplemental Arrows-C
;; (set-fontset-font "fontset-standard" '(#x1f900 . #x1f9ff) "") ;; Supplemental Symbols and Pictographs

;;=============================================================================
;; SUPPLEMENTARY IDEOGRAPHIC PLANE (20000-2ffff)

;; (set-fontset-font "fontset-standard" '(#x20000 . #x2a6df) "") ;; CJK Unified Ideographs Extension B
;; (set-fontset-font "fontset-standard" '(#x2a700 . #x2b73f) "") ;; CJK Unified Ideographs Extension C
;; (set-fontset-font "fontset-standard" '(#x2b740 . #x2b81f) "") ;; CJK Unified Ideographs Extension D
;; (set-fontset-font "fontset-standard" '(#x2b820 . #x2ceaf) "") ;; CJK Unified Ideographs Extension E
;; (set-fontset-font "fontset-standard" '(#x2f800 . #x2fa1f) "") ;; CJK Compatibility Ideographs Supplement

;;=============================================================================
;; SUPPLEMENTARY SPECIAL-PURPOSE PLANE (e0000-effff)

;; (set-fontset-font "fontset-standard" '(#xe0000 . #xe007f) "") ;; Tags
;; (set-fontset-font "fontset-standard" '(#xe0100 . #xe01ef) "") ;; Variation Selectors Supplement

;;=============================================================================
;; SUPPLEMENTARY PRIVATE USE AREA (f0000-10ffff)

;; (set-fontset-font "fontset-standard" '(#xf0000  . #xfffff)  "") ;; Supplementary Private Use Area-A
;; (set-fontset-font "fontset-standard" '(#x100000 . #x10ffff) "") ;; Supplementary Private Use Area-B

;; A few non-adjacent symbols also available in Consolas via MacRoman charset
(set-fontset-font "fontset-standard" 'mac-roman fs-consolas)
