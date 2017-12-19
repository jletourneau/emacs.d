;; Unicode range ref: http://www.alanwood.net/unicode/unicode_samples.html

;;=============================================================================
;; BASIC MULTILINGUAL PLANE (0000-FFFF)

;; Basic Latin
(set-fontset-font "fontset-custom" '(#x0000 . #x007f) fs-default)
  ;   ! " # $ % & ' ( ) * + , - . / 0 1 2 3 4 5 6 7 8 9 : ; < = > ?
  ; @ A B C D E F G H I J K L M N O P Q R S T U V W X Y Z [ \ ] ^ _
  ; ` a b c d e f g h i j k l m n o p q r s t u v w x y z { | } ~

;; For everything outside 7-bit ASCII, use Symbola by default unless overridden
;; by a later range declaration.
(set-fontset-font "fontset-custom" '(#x0080 . #x10ffff) fs-symbola)

;; Latin-1 Supplement
(set-fontset-font "fontset-custom" '(#x0080 . #x00ff) fs-default)
  ;  ¡ ¢ £ ¤ ¥ ¦ § ¨ © ª « ¬ ­ ® ¯ ° ± ² ³ ´ µ ¶ · ¸ ¹ º » ¼ ½ ¾ ¿
  ; À Á Â Ã Ä Å Æ Ç È É Ê Ë Ì Í Î Ï Ð Ñ Ò Ó Ô Õ Ö × Ø Ù Ú Û Ü Ý Þ ß
  ; à á â ã ä å æ ç è é ê ë ì í î ï ð ñ ò ó ô õ ö ÷ ø ù ú û ü ý þ

;; Latin Extended-A
(set-fontset-font "fontset-custom" '(#x0100 . #x017f) fs-default)
  ; Ā ā Ă ă Ą ą Ć ć Ĉ ĉ Ċ ċ Č č Ď ď Đ đ Ē ē Ĕ ĕ Ė ė Ę ę Ě ě Ĝ ĝ Ğ ğ
  ; Ġ ġ Ģ ģ Ĥ ĥ Ħ ħ Ĩ ĩ Ī ī Ĭ ĭ Į į İ ı Ĳ ĳ Ĵ ĵ Ķ ķ ĸ Ĺ ĺ Ļ ļ Ľ ľ Ŀ
  ; ŀ Ł ł Ń ń Ņ ņ Ň ň ŉ Ŋ ŋ Ō ō Ŏ ŏ Ő ő Œ œ Ŕ ŕ Ŗ ŗ Ř ř Ś ś Ŝ ŝ Ş ş
  ; Š š Ţ ţ Ť ť Ŧ ŧ Ũ ũ Ū ū Ŭ ŭ Ů ů Ű ű Ų ų Ŵ ŵ Ŷ ŷ Ÿ Ź ź Ż ż Ž ž

;; Latin Extended-B
(set-fontset-font "fontset-custom" '(#x0180 . #x024f) fs-default)
  ; ƀ Ɓ Ƃ ƃ Ƅ ƅ Ɔ Ƈ ƈ Ɖ Ɗ Ƌ ƌ ƍ Ǝ Ə Ɛ Ƒ ƒ Ɠ Ɣ ƕ Ɩ Ɨ Ƙ ƙ ƚ ƛ Ɯ Ɲ ƞ Ɵ
  ; Ơ ơ Ƣ ƣ Ƥ ƥ Ʀ Ƨ ƨ Ʃ ƪ ƫ Ƭ ƭ Ʈ Ư ư Ʊ Ʋ Ƴ ƴ Ƶ ƶ Ʒ Ƹ ƹ ƺ ƻ Ƽ ƽ ƾ ƿ
  ; ǀ ǁ ǂ ǃ Ǆ ǅ ǆ Ǉ ǈ ǉ Ǌ ǋ ǌ Ǎ ǎ Ǐ ǐ Ǒ ǒ Ǔ ǔ Ǖ ǖ Ǘ ǘ Ǚ ǚ Ǜ ǜ ǝ Ǟ ǟ
  ; Ǡ ǡ Ǣ ǣ Ǥ ǥ Ǧ ǧ Ǩ ǩ Ǫ ǫ Ǭ ǭ Ǯ ǯ ǰ Ǳ ǲ ǳ Ǵ ǵ Ƕ Ƿ Ǹ ǹ Ǻ ǻ Ǽ ǽ Ǿ ǿ
  ; Ȁ ȁ Ȃ ȃ Ȅ ȅ Ȇ ȇ Ȉ ȉ Ȋ ȋ Ȍ ȍ Ȏ ȏ Ȑ ȑ Ȓ ȓ Ȕ ȕ Ȗ ȗ Ș ș Ț ț Ȝ ȝ Ȟ ȟ
  ; Ƞ ȡ Ȣ ȣ Ȥ ȥ Ȧ ȧ Ȩ ȩ Ȫ ȫ Ȭ ȭ Ȯ ȯ Ȱ ȱ Ȳ ȳ ȴ ȵ ȶ ȷ ȸ ȹ Ⱥ Ȼ ȼ Ƚ Ⱦ ȿ
  ; ɀ Ɂ ɂ Ƀ Ʉ Ʌ Ɇ ɇ Ɉ ɉ Ɋ ɋ Ɍ ɍ Ɏ

;; IPA Extensions
(set-fontset-font "fontset-custom" '(#x0250 . #x02af) fs-default)
  ; ɐ ɑ ɒ ɓ ɔ ɕ ɖ ɗ ɘ ə ɚ ɛ ɜ ɝ ɞ ɟ ɠ ɡ ɢ ɣ ɤ ɥ ɦ ɧ ɨ ɩ ɪ ɫ ɬ ɭ ɮ ɯ
  ; ɰ ɱ ɲ ɳ ɴ ɵ ɶ ɷ ɸ ɹ ɺ ɻ ɼ ɽ ɾ ɿ ʀ ʁ ʂ ʃ ʄ ʅ ʆ ʇ ʈ ʉ ʊ ʋ ʌ ʍ ʎ ʏ
  ; ʐ ʑ ʒ ʓ ʔ ʕ ʖ ʗ ʘ ʙ ʚ ʛ ʜ ʝ ʞ ʟ ʠ ʡ ʢ ʣ ʤ ʥ ʦ ʧ ʨ ʩ ʪ ʫ ʬ ʭ ʮ

;; Spacing Modifier Letters
(set-fontset-font "fontset-custom" '(#x02b0 . #x02ff) fs-default)
  ; ʰ ʱ ʲ ʳ ʴ ʵ ʶ ʷ ʸ ʹ ʺ ʻ ʼ ʽ ʾ ʿ ˀ ˁ ˂ ˃ ˄ ˅ ˆ ˇ ˈ ˉ ˊ ˋ ˌ ˍ ˎ ˏ
  ; ː ˑ ˒ ˓ ˔ ˕ ˖ ˗ ˘ ˙ ˚ ˛ ˜ ˝ ˞ ˟ ˠ ˡ ˢ ˣ ˤ ˥ ˦ ˧ ˨ ˩ ˪ ˫ ˬ ˭ ˮ ˯
  ; ˰ ˱ ˲ ˳ ˴ ˵ ˶ ˷ ˸ ˹ ˺ ˻ ˼ ˽ ˾

;; Combining Diacritical Marks
(set-fontset-font "fontset-custom" '(#x0300 . #x036f) fs-default)
  ; ̀ ́ ̂ ̃ ̄ ̅ ̆ ̇ ̈ ̉ ̊ ̋ ̌ ̍ ̎ ̏ ̐ ̑ ̒ ̓ ̔ ̕ ̖ ̗ ̘ ̙ ̚ ̛ ̜ ̝ ̞ ̟
  ; ̠ ̡ ̢ ̣ ̤ ̥ ̦ ̧ ̨ ̩ ̪ ̫ ̬ ̭ ̮ ̯ ̰ ̱ ̲ ̳ ̴ ̵ ̶ ̷ ̸ ̹ ̺ ̻ ̼ ̽ ̾ ̿
  ; ̀ ́ ͂ ̓ ̈́ ͅ ͆ ͇ ͈ ͉ ͊ ͋ ͌ ͍ ͎ ͏ ͐ ͑ ͒ ͓ ͔ ͕ ͖ ͗ ͘ ͙ ͚ ͛ ͜ ͝ ͞ ͟
  ; ͠ ͡ ͢ ͣ ͤ ͥ ͦ ͧ ͨ ͩ ͪ ͫ ͬ ͭ ͮ

;; Greek and Coptic
(set-fontset-font "fontset-custom" '(#x0370 . #x03ff) fs-default)
  ; Ͱ ͱ Ͳ ͳ ʹ ͵ Ͷ ͷ ͺ ͻ ͼ ͽ ; Ϳ ΄ ΅ Ά · Έ Ή Ί Ό Ύ Ώ
  ; ΐ Α Β Γ Δ Ε Ζ Η Θ Ι Κ Λ Μ Ν Ξ Ο Π Ρ Σ Τ Υ Φ Χ Ψ Ω Ϊ Ϋ ά έ ή ί
  ; ΰ α β γ δ ε ζ η θ ι κ λ μ ν ξ ο π ρ ς σ τ υ φ χ ψ ω ϊ ϋ ό ύ ώ Ϗ
  ; ϐ ϑ ϒ ϓ ϔ ϕ ϖ ϗ Ϙ ϙ Ϛ ϛ Ϝ ϝ Ϟ ϟ Ϡ ϡ Ϣ ϣ Ϥ ϥ Ϧ ϧ Ϩ ϩ Ϫ ϫ Ϭ ϭ Ϯ ϯ
  ; ϰ ϱ ϲ ϳ ϴ ϵ ϶ Ϸ ϸ Ϲ Ϻ ϻ ϼ Ͻ Ͼ

;; Cyrillic
(set-fontset-font "fontset-custom" '(#x0400 . #x04ff) fs-default)
  ; Ѐ Ё Ђ Ѓ Є Ѕ І Ї Ј Љ Њ Ћ Ќ Ѝ Ў Џ А Б В Г Д Е Ж З И Й К Л М Н О П
  ; Р С Т У Ф Х Ц Ч Ш Щ Ъ Ы Ь Э Ю Я а б в г д е ж з и й к л м н о п
  ; р с т у ф х ц ч ш щ ъ ы ь э ю я ѐ ё ђ ѓ є ѕ і ї ј љ њ ћ ќ ѝ ў џ
  ; Ѡ ѡ Ѣ ѣ Ѥ ѥ Ѧ ѧ Ѩ ѩ Ѫ ѫ Ѭ ѭ Ѯ ѯ Ѱ ѱ Ѳ ѳ Ѵ ѵ Ѷ ѷ Ѹ ѹ Ѻ ѻ Ѽ ѽ Ѿ ѿ
  ; Ҁ ҁ ҂ ҃ ҄ ҅ ҆ ҇ ҈ ҉ Ҋ ҋ Ҍ ҍ Ҏ ҏ Ґ ґ Ғ ғ Ҕ ҕ Җ җ Ҙ ҙ Қ қ Ҝ ҝ Ҟ ҟ
  ; Ҡ ҡ Ң ң Ҥ ҥ Ҧ ҧ Ҩ ҩ Ҫ ҫ Ҭ ҭ Ү ү Ұ ұ Ҳ ҳ Ҵ ҵ Ҷ ҷ Ҹ ҹ Һ һ Ҽ ҽ Ҿ ҿ
  ; Ӏ Ӂ ӂ Ӄ ӄ Ӆ ӆ Ӈ ӈ Ӊ ӊ Ӌ ӌ Ӎ ӎ ӏ Ӑ ӑ Ӓ ӓ Ӕ ӕ Ӗ ӗ Ә ә Ӛ ӛ Ӝ ӝ Ӟ ӟ
  ; Ӡ ӡ Ӣ ӣ Ӥ ӥ Ӧ ӧ Ө ө Ӫ ӫ Ӭ ӭ Ӯ ӯ Ӱ ӱ Ӳ ӳ Ӵ ӵ Ӷ ӷ Ӹ ӹ Ӻ ӻ Ӽ ӽ Ӿ

;; Cyrillic Supplement
;; (set-fontset-font "fontset-custom" '(#x0500 . #x052f) "")
  ; Ԁ ԁ Ԃ ԃ Ԅ ԅ Ԇ ԇ Ԉ ԉ Ԋ ԋ Ԍ ԍ Ԏ ԏ Ԑ ԑ Ԓ ԓ Ԕ ԕ Ԗ ԗ Ԙ ԙ Ԛ ԛ Ԝ ԝ Ԟ ԟ
  ; Ԡ ԡ Ԣ ԣ Ԥ ԥ Ԧ ԧ

(set-fontset-font "fontset-custom" '(#x0530 . #x058f) fs-arial) ;; Armenian
(set-fontset-font "fontset-custom" '(#x0590 . #x05ff) fs-arial) ;; Hebrew
(set-fontset-font "fontset-custom" '(#x0600 . #x06ff) fs-arial) ;; Arabic
;; (set-fontset-font "fontset-custom" '(#x0700 . #x074f) "") ;; Syriac
;; (set-fontset-font "fontset-custom" '(#x0750 . #x077f) "") ;; Arabic Supplement
;; (set-fontset-font "fontset-custom" '(#x0780 . #x07bf) "") ;; Thaana
;; (set-fontset-font "fontset-custom" '(#x07c0 . #x07ff) "") ;; NKo
;; (set-fontset-font "fontset-custom" '(#x0800 . #x083f) "") ;; Samaritan
;; (set-fontset-font "fontset-custom" '(#x0840 . #x085f) "") ;; Mandaic
;; (set-fontset-font "fontset-custom" '(#x08a0 . #x08ff) "") ;; Arabic Extended-A
(set-fontset-font "fontset-custom" '(#x0900 . #x097f) fs-arial) ;; Devanagari
(set-fontset-font "fontset-custom" '(#x0980 . #x09ff) fs-arial) ;; Bengali
(set-fontset-font "fontset-custom" '(#x0a00 . #x0a7f) fs-arial) ;; Gurmukhi
(set-fontset-font "fontset-custom" '(#x0a80 . #x0aff) fs-arial) ;; Gujarati
(set-fontset-font "fontset-custom" '(#x0b00 . #x0b7f) fs-arial) ;; Oriya
(set-fontset-font "fontset-custom" '(#x0b80 . #x0bff) fs-arial) ;; Tamil
(set-fontset-font "fontset-custom" '(#x0c00 . #x0c7f) fs-arial) ;; Telugu
(set-fontset-font "fontset-custom" '(#x0c80 . #x0cff) fs-arial) ;; Kannada
(set-fontset-font "fontset-custom" '(#x0d00 . #x0d7f) fs-arial) ;; Malayalam
;; (set-fontset-font "fontset-custom" '(#x0d80 . #x0dff) "") ;; Sinhala
(set-fontset-font "fontset-custom" '(#x0e00 . #x0e7f) fs-arial) ;; Thai
(set-fontset-font "fontset-custom" '(#x0e80 . #x0eff) fs-arial) ;; Lao
(set-fontset-font "fontset-custom" '(#x0f00 . #x0fff) fs-arial) ;; Tibetan
;; (set-fontset-font "fontset-custom" '(#x1000 . #x109f) ") ;; Myanmar
(set-fontset-font "fontset-custom" '(#x10a0 . #x10ff) fs-arial) ;; Georgian
(set-fontset-font "fontset-custom" '(#x1100 . #x11ff) fs-arial) ;; Hangul Jamo
;; (set-fontset-font "fontset-custom" '(#x1200 . #x137f) "") ;; Ethiopic
;; (set-fontset-font "fontset-custom" '(#x1380 . #x139f) "") ;; Ethiopic Supplement
;; (set-fontset-font "fontset-custom" '(#x13a0 . #x13ff) "") ;; Cherokee
;; (set-fontset-font "fontset-custom" '(#x1400 . #x167f) "") ;; Unified Canadian Aboriginal Syllabics
;; (set-fontset-font "fontset-custom" '(#x1680 . #x169f) "") ;; Ogham
;; (set-fontset-font "fontset-custom" '(#x16a0 . #x16ff) "") ;; Runic
;; (set-fontset-font "fontset-custom" '(#x1700 . #x171f) "") ;; Tagalog
;; (set-fontset-font "fontset-custom" '(#x1720 . #x173f) "") ;; Hanunoo
;; (set-fontset-font "fontset-custom" '(#x1740 . #x175f) "") ;; Buhid
;; (set-fontset-font "fontset-custom" '(#x1760 . #x177f) "") ;; Tagbanwa
;; (set-fontset-font "fontset-custom" '(#x1780 . #x17ff) "") ;; Khmer
;; (set-fontset-font "fontset-custom" '(#x1800 . #x18af) "") ;; Mongolian
;; (set-fontset-font "fontset-custom" '(#x18b0 . #x18ff) "") ;; Unified Canadian Aboriginal Syllabics Extended
;; (set-fontset-font "fontset-custom" '(#x1900 . #x194f) "") ;; Limbu
;; (set-fontset-font "fontset-custom" '(#x1950 . #x197f) "") ;; Tai Le
;; (set-fontset-font "fontset-custom" '(#x1980 . #x19df) "") ;; New Tai Lue
;; (set-fontset-font "fontset-custom" '(#x19e0 . #x19ff) "") ;; Khmer Symbols
;; (set-fontset-font "fontset-custom" '(#x1a00 . #x1a1f) "") ;; Buginese
;; (set-fontset-font "fontset-custom" '(#x1a20 . #x1aaf) "") ;; Tai Tham
;; (set-fontset-font "fontset-custom" '(#x1ab0 . #x1aff) "") ;; Combining Diacritical Marks Extended
;; (set-fontset-font "fontset-custom" '(#x1b00 . #x1b7f) "") ;; Balinese
;; (set-fontset-font "fontset-custom" '(#x1b80 . #x1bbf) "") ;; Sundanese
;; (set-fontset-font "fontset-custom" '(#x1bc0 . #x1bff) "") ;; Batak
;; (set-fontset-font "fontset-custom" '(#x1c00 . #x1c4f) "") ;; Lepcha
;; (set-fontset-font "fontset-custom" '(#x1c50 . #x1c7f) "") ;; Ol Chiki
;; (set-fontset-font "fontset-custom" '(#x1cc0 . #x1ccf) "") ;; Sundanese Supplement
;; (set-fontset-font "fontset-custom" '(#x1cd0 . #x1cff) "") ;; Vedic Extensions

;; Phonetic Extensions
(set-fontset-font "fontset-custom" '(#x1d00 . #x1d7f) fs-default)
  ; ᴀ ᴁ ᴂ ᴃ ᴄ ᴅ ᴆ ᴇ ᴈ ᴉ ᴊ ᴋ ᴌ ᴍ ᴎ ᴏ ᴐ ᴑ ᴒ ᴓ ᴔ ᴕ ᴖ ᴗ ᴘ ᴙ ᴚ ᴛ ᴜ ᴝ ᴞ ᴟ
  ; ᴠ ᴡ ᴢ ᴣ ᴤ ᴥ ᴦ ᴧ ᴨ ᴩ ᴪ ᴫ ᴬ ᴭ ᴮ ᴯ ᴰ ᴱ ᴲ ᴳ ᴴ ᴵ ᴶ ᴷ ᴸ ᴹ ᴺ ᴻ ᴼ ᴽ ᴾ ᴿ
  ; ᵀ ᵁ ᵂ ᵃ ᵄ ᵅ ᵆ ᵇ ᵈ ᵉ ᵊ ᵋ ᵌ ᵍ ᵎ ᵏ ᵐ ᵑ ᵒ ᵓ ᵔ ᵕ ᵖ ᵗ ᵘ ᵙ ᵚ ᵛ ᵜ ᵝ ᵞ ᵟ
  ; ᵠ ᵡ ᵢ ᵣ ᵤ ᵥ ᵦ ᵧ ᵨ ᵩ ᵪ ᵫ ᵬ ᵭ ᵮ ᵯ ᵰ ᵱ ᵲ ᵳ ᵴ ᵵ ᵶ ᵷ ᵸ ᵹ ᵺ ᵻ ᵼ ᵽ ᵾ

;; Phonetic Extensions Supplement
(set-fontset-font "fontset-custom" '(#x1d80 . #x1dbf) fs-default)
  ; ᶀ ᶁ ᶂ ᶃ ᶄ ᶅ ᶆ ᶇ ᶈ ᶉ ᶊ ᶋ ᶌ ᶍ ᶎ ᶏ ᶐ ᶑ ᶒ ᶓ ᶔ ᶕ ᶖ ᶗ ᶘ ᶙ ᶚ ᶛ ᶜ ᶝ ᶞ ᶟ
  ; ᶠ ᶡ ᶢ ᶣ ᶤ ᶥ ᶦ ᶧ ᶨ ᶩ ᶪ ᶫ ᶬ ᶭ ᶮ ᶯ ᶰ ᶱ ᶲ ᶳ ᶴ ᶵ ᶶ ᶷ ᶸ ᶹ ᶺ ᶻ ᶼ ᶽ ᶾ

;; Combining Diacritical Marks Supplement
(set-fontset-font "fontset-custom" '(#x1dc0 . #x1dff) fs-default)
  ; ᷀ ᷁ ᷂ ᷃ ᷄ ᷅ ᷆ ᷇ ᷈ ᷉ ᷊ ᷋ ᷌ ᷍ ᷎ ᷏ ᷐ ᷑ ᷒ ᷓ ᷔ ᷕ ᷖ ᷗ ᷘ ᷙ ᷚ ᷛ ᷜ ᷝ ᷞ ᷟ
  ; ᷠ ᷡ ᷢ ᷣ ᷤ ᷥ ᷦ ᷼ ᷽ ᷾

;; Latin Extended Additional
(set-fontset-font "fontset-custom" '(#x1e00 . #x1eff) fs-default)
  ; Ḁ ḁ Ḃ ḃ Ḅ ḅ Ḇ ḇ Ḉ ḉ Ḋ ḋ Ḍ ḍ Ḏ ḏ Ḑ ḑ Ḓ ḓ Ḕ ḕ Ḗ ḗ Ḙ ḙ Ḛ ḛ Ḝ ḝ Ḟ ḟ
  ; Ḡ ḡ Ḣ ḣ Ḥ ḥ Ḧ ḧ Ḩ ḩ Ḫ ḫ Ḭ ḭ Ḯ ḯ Ḱ ḱ Ḳ ḳ Ḵ ḵ Ḷ ḷ Ḹ ḹ Ḻ ḻ Ḽ ḽ Ḿ ḿ
  ; Ṁ ṁ Ṃ ṃ Ṅ ṅ Ṇ ṇ Ṉ ṉ Ṋ ṋ Ṍ ṍ Ṏ ṏ Ṑ ṑ Ṓ ṓ Ṕ ṕ Ṗ ṗ Ṙ ṙ Ṛ ṛ Ṝ ṝ Ṟ ṟ
  ; Ṡ ṡ Ṣ ṣ Ṥ ṥ Ṧ ṧ Ṩ ṩ Ṫ ṫ Ṭ ṭ Ṯ ṯ Ṱ ṱ Ṳ ṳ Ṵ ṵ Ṷ ṷ Ṹ ṹ Ṻ ṻ Ṽ ṽ Ṿ ṿ
  ; Ẁ ẁ Ẃ ẃ Ẅ ẅ Ẇ ẇ Ẉ ẉ Ẋ ẋ Ẍ ẍ Ẏ ẏ Ẑ ẑ Ẓ ẓ Ẕ ẕ ẖ ẗ ẘ ẙ ẚ ẛ ẜ ẝ ẞ ẟ
  ; Ạ ạ Ả ả Ấ ấ Ầ ầ Ẩ ẩ Ẫ ẫ Ậ ậ Ắ ắ Ằ ằ Ẳ ẳ Ẵ ẵ Ặ ặ Ẹ ẹ Ẻ ẻ Ẽ ẽ Ế ế
  ; Ề ề Ể ể Ễ ễ Ệ ệ Ỉ ỉ Ị ị Ọ ọ Ỏ ỏ Ố ố Ồ ồ Ổ ổ Ỗ ỗ Ộ ộ Ớ ớ Ờ ờ Ở ở
  ; Ỡ ỡ Ợ ợ Ụ ụ Ủ ủ Ứ ứ Ừ ừ Ử ử Ữ ữ Ự ự Ỳ ỳ Ỵ ỵ Ỷ ỷ Ỹ ỹ Ỻ ỻ Ỽ ỽ Ỿ

;; Greek Extended
(set-fontset-font "fontset-custom" '(#x1f00 . #x1fff) fs-default)
  ; ἀ ἁ ἂ ἃ ἄ ἅ ἆ ἇ Ἀ Ἁ Ἂ Ἃ Ἄ Ἅ Ἆ Ἇ ἐ ἑ ἒ ἓ ἔ ἕ Ἐ Ἑ Ἒ Ἓ Ἔ Ἕ
  ; ἠ ἡ ἢ ἣ ἤ ἥ ἦ ἧ Ἠ Ἡ Ἢ Ἣ Ἤ Ἥ Ἦ Ἧ ἰ ἱ ἲ ἳ ἴ ἵ ἶ ἷ Ἰ Ἱ Ἲ Ἳ Ἴ Ἵ Ἶ Ἷ
  ; ὀ ὁ ὂ ὃ ὄ ὅ Ὀ Ὁ Ὂ Ὃ Ὄ Ὅ ὐ ὑ ὒ ὓ ὔ ὕ ὖ ὗ Ὑ Ὓ Ὕ Ὗ
  ; ὠ ὡ ὢ ὣ ὤ ὥ ὦ ὧ Ὠ Ὡ Ὢ Ὣ Ὤ Ὥ Ὦ Ὧ ὰ ά ὲ έ ὴ ή ὶ ί ὸ ό ὺ ύ ὼ ώ
  ; ᾀ ᾁ ᾂ ᾃ ᾄ ᾅ ᾆ ᾇ ᾈ ᾉ ᾊ ᾋ ᾌ ᾍ ᾎ ᾏ ᾐ ᾑ ᾒ ᾓ ᾔ ᾕ ᾖ ᾗ ᾘ ᾙ ᾚ ᾛ ᾜ ᾝ ᾞ ᾟ
  ; ᾠ ᾡ ᾢ ᾣ ᾤ ᾥ ᾦ ᾧ ᾨ ᾩ ᾪ ᾫ ᾬ ᾭ ᾮ ᾯ ᾰ ᾱ ᾲ ᾳ ᾴ ᾶ ᾷ Ᾰ Ᾱ Ὰ Ά ᾼ ᾽ ι ᾿
  ; ῀ ῁ ῂ ῃ ῄ ῆ ῇ Ὲ Έ Ὴ Ή ῌ ῍ ῎ ῏ ῐ ῑ ῒ ΐ ῖ ῗ Ῐ Ῑ Ὶ Ί ῝ ῞ ῟
  ; ῠ ῡ ῢ ΰ ῤ ῥ ῦ ῧ Ῠ Ῡ Ὺ Ύ Ῥ ῭ ΅ ` ῲ ῳ ῴ ῶ ῷ Ὸ Ό Ὼ Ώ ῼ ´ ῾

;; General Punctuation
(set-fontset-font "fontset-custom" '(#x2000 . #x2022) fs-default)
  ;            ​ ‌ ‍ ‎ ‏ ‐ ‑ ‒ – — ― ‖ ‗ ‘ ’ ‚ ‛ “ ” „ ‟
  ; † ‡ •
(set-fontset-font "fontset-custom" '(#x2023 . #x206f) fs-courier)
  ;       ‣ ․ ‥ … ‧   ‪ ‫ ‬ ‭ ‮  ‰ ‱ ′ ″ ‴ ‵ ‶ ‷ ‸ ‹ › ※ ‼ ‽ ‾ ‿
  ; ⁀ ⁁ ⁂ ⁃ ⁄ ⁅ ⁆ ⁇ ⁈ ⁉ ⁊ ⁋ ⁌ ⁍ ⁎ ⁏ ⁐ ⁑ ⁒ ⁓ ⁔ ⁕ ⁖ ⁗ ⁘ ⁙ ⁚ ⁛ ⁜ ⁝ ⁞  
  ; ⁠ ⁡ ⁢ ⁣ ⁤

;; Superscripts and Subscripts
;; (set-fontset-font "fontset-custom" '(#x2070 . #x209f) "")
  ; ⁰ ⁱ ⁴ ⁵ ⁶ ⁷ ⁸ ⁹ ⁺ ⁻ ⁼ ⁽ ⁾ ⁿ ₀ ₁ ₂ ₃ ₄ ₅ ₆ ₇ ₈ ₉ ₊ ₋ ₌ ₍ ₎
  ; ₐ ₑ ₒ ₓ ₔ ₕ ₖ ₗ ₘ ₙ ₚ ₛ ₜ

;; Currency Symbols
(set-fontset-font "fontset-custom" '(#x20a0 . #x20cf) fs-default)
  ; ₠ ₡ ₢ ₣ ₤ ₥ ₦ ₧ ₨ ₩ ₪ ₫ € ₭ ₮ ₯ ₰ ₱ ₲ ₳ ₴ ₵ ₶ ₷ ₸ ₹ ₺

;; Combining Diacritical Marks for Symbols
(set-fontset-font "fontset-custom" '(#x20d0 . #x20ff) fs-apple-symbols)
  ; ⃐ ⃑ ⃒ ⃓ ⃔ ⃕ ⃖ ⃗ ⃘ ⃙ ⃚ ⃛ ⃜ ⃝ ⃞ ⃟ ⃠ ⃡ ⃢ ⃣ ⃤ ⃥ ⃦ ⃧ ⃨ ⃩ ⃪ ⃫ ⃬ ⃭ ⃮ ⃯ ⃰

;; Letterlike Symbols
;; (set-fontset-font "fontset-custom" '(#x2100 . #x214f) "")
  ; ℀ ℁ ℂ ℃ ℄ ℅ ℆ ℇ ℈ ℉ ℊ ℋ ℌ ℍ ℎ ℏ ℐ ℑ ℒ ℓ ℔ ℕ № ℗ ℘ ℙ ℚ ℛ ℜ ℝ ℞ ℟
  ; ℠ ℡ ™ ℣ ℤ ℥ Ω ℧ ℨ ℩ K Å ℬ ℭ ℮ ℯ ℰ ℱ Ⅎ ℳ ℴ ℵ ℶ ℷ ℸ ℹ ℺ ℻ ℼ ℽ ℾ ℿ
  ; ⅀ ⅁ ⅂ ⅃ ⅄ ⅅ ⅆ ⅇ ⅈ ⅉ ⅊ ⅋ ⅌ ⅍ ⅎ

;; Number Forms
;; (set-fontset-font "fontset-custom" '(#x2150 . #x218f) "")
  ; ⅐ ⅑ ⅒ ⅓ ⅔ ⅕ ⅖ ⅗ ⅘ ⅙ ⅚ ⅛ ⅜ ⅝ ⅞ ⅟ Ⅰ Ⅱ Ⅲ Ⅳ Ⅴ Ⅵ Ⅶ Ⅷ Ⅸ Ⅹ Ⅺ Ⅻ Ⅼ Ⅽ Ⅾ Ⅿ
  ; ⅰ ⅱ ⅲ ⅳ ⅴ ⅵ ⅶ ⅷ ⅸ ⅹ ⅺ ⅻ ⅼ ⅽ ⅾ ⅿ ↀ ↁ ↂ Ↄ ↄ ↅ ↆ ↇ ↈ ↉

;; Arrows
(set-fontset-font "fontset-custom" '(#x2190 . #x2195) fs-default)
  ; ← ↑ → ↓ ↔ ↕
;; (set-fontset-font "fontset-custom" '(#x2196 . #x21ff) "")
  ; ↖ ↗ ↘ ↙ ↚ ↛ ↜ ↝ ↞ ↟ ↠ ↡ ↢ ↣ ↤ ↥ ↦ ↧ ↨ ↩ ↪ ↫ ↬ ↭ ↮ ↯
  ; ↰ ↱ ↲ ↳ ↴ ↵ ↶ ↷ ↸ ↹ ↺ ↻ ↼ ↽ ↾ ↿ ⇀ ⇁ ⇂ ⇃ ⇄ ⇅ ⇆ ⇇ ⇈ ⇉ ⇊ ⇋ ⇌ ⇍ ⇎ ⇏
  ; ⇐ ⇑ ⇒ ⇓ ⇔ ⇕ ⇖ ⇗ ⇘ ⇙ ⇚ ⇛ ⇜ ⇝ ⇞ ⇟ ⇠ ⇡ ⇢ ⇣ ⇤ ⇥ ⇦ ⇧ ⇨ ⇩ ⇪ ⇫ ⇬ ⇭ ⇮ ⇯
  ; ⇰ ⇱ ⇲ ⇳ ⇴ ⇵ ⇶ ⇷ ⇸ ⇹ ⇺ ⇻ ⇼ ⇽ ⇾

;; Mathematical Operators
;; (set-fontset-font "fontset-custom" '(#x2200 . #x22ff) "")
  ; ∀ ∁ ∂ ∃ ∄ ∅ ∆ ∇ ∈ ∉ ∊ ∋ ∌ ∍ ∎ ∏ ∐ ∑ − ∓ ∔ ∕ ∖ ∗ ∘ ∙ √ ∛ ∜ ∝ ∞ ∟
  ; ∠ ∡ ∢ ∣ ∤ ∥ ∦ ∧ ∨ ∩ ∪ ∫ ∬ ∭ ∮ ∯ ∰ ∱ ∲ ∳ ∴ ∵ ∶ ∷ ∸ ∹ ∺ ∻ ∼ ∽ ∾ ∿
  ; ≀ ≁ ≂ ≃ ≄ ≅ ≆ ≇ ≈ ≉ ≊ ≋ ≌ ≍ ≎ ≏ ≐ ≑ ≒ ≓ ≔ ≕ ≖ ≗ ≘ ≙ ≚ ≛ ≜ ≝ ≞ ≟
  ; ≠ ≡ ≢ ≣ ≤ ≥ ≦ ≧ ≨ ≩ ≪ ≫ ≬ ≭ ≮ ≯ ≰ ≱ ≲ ≳ ≴ ≵ ≶ ≷ ≸ ≹ ≺ ≻ ≼ ≽ ≾ ≿
  ; ⊀ ⊁ ⊂ ⊃ ⊄ ⊅ ⊆ ⊇ ⊈ ⊉ ⊊ ⊋ ⊌ ⊍ ⊎ ⊏ ⊐ ⊑ ⊒ ⊓ ⊔ ⊕ ⊖ ⊗ ⊘ ⊙ ⊚ ⊛ ⊜ ⊝ ⊞ ⊟
  ; ⊠ ⊡ ⊢ ⊣ ⊤ ⊥ ⊦ ⊧ ⊨ ⊩ ⊪ ⊫ ⊬ ⊭ ⊮ ⊯ ⊰ ⊱ ⊲ ⊳ ⊴ ⊵ ⊶ ⊷ ⊸ ⊹ ⊺ ⊻ ⊼ ⊽ ⊾ ⊿
  ; ⋀ ⋁ ⋂ ⋃ ⋄ ⋅ ⋆ ⋇ ⋈ ⋉ ⋊ ⋋ ⋌ ⋍ ⋎ ⋏ ⋐ ⋑ ⋒ ⋓ ⋔ ⋕ ⋖ ⋗ ⋘ ⋙ ⋚ ⋛ ⋜ ⋝ ⋞ ⋟
  ; ⋠ ⋡ ⋢ ⋣ ⋤ ⋥ ⋦ ⋧ ⋨ ⋩ ⋪ ⋫ ⋬ ⋭ ⋮ ⋯ ⋰ ⋱ ⋲ ⋳ ⋴ ⋵ ⋶ ⋷ ⋸ ⋹ ⋺ ⋻ ⋼ ⋽ ⋾

;; Miscellaneous Technical
;; (set-fontset-font "fontset-custom" '(#x2300 . #x23ff) "")
  ; ⌀ ⌁ ⌂ ⌃ ⌄ ⌅ ⌆ ⌇ ⌈ ⌉ ⌊ ⌋ ⌌ ⌍ ⌎ ⌏ ⌐ ⌑ ⌒ ⌓ ⌔ ⌕ ⌖ ⌗ ⌘ ⌙ ⌚ ⌛ ⌜ ⌝ ⌞ ⌟
  ; ⌠ ⌡ ⌢ ⌣ ⌤ ⌥ ⌦ ⌧ ⌨ 〈 〉 ⌫ ⌬ ⌭ ⌮ ⌯ ⌰ ⌱ ⌲ ⌳ ⌴ ⌵ ⌶ ⌷ ⌸ ⌹ ⌺ ⌻ ⌼ ⌽ ⌾ ⌿
  ; ⍀ ⍁ ⍂ ⍃ ⍄ ⍅ ⍆ ⍇ ⍈ ⍉ ⍊ ⍋ ⍌ ⍍ ⍎ ⍏ ⍐ ⍑ ⍒ ⍓ ⍔ ⍕ ⍖ ⍗ ⍘ ⍙ ⍚ ⍛ ⍜ ⍝ ⍞ ⍟
  ; ⍠ ⍡ ⍢ ⍣ ⍤ ⍥ ⍦ ⍧ ⍨ ⍩ ⍪ ⍫ ⍬ ⍭ ⍮ ⍯ ⍰ ⍱ ⍲ ⍳ ⍴ ⍵ ⍶ ⍷ ⍸ ⍹ ⍺ ⍻ ⍼ ⍽ ⍾ ⍿
  ; ⎀ ⎁ ⎂ ⎃ ⎄ ⎅ ⎆ ⎇ ⎈ ⎉ ⎊ ⎋ ⎌ ⎍ ⎎ ⎏ ⎐ ⎑ ⎒ ⎓ ⎔ ⎕ ⎖ ⎗ ⎘ ⎙ ⎚ ⎛ ⎜ ⎝ ⎞ ⎟
  ; ⎠ ⎡ ⎢ ⎣ ⎤ ⎥ ⎦ ⎧ ⎨ ⎩ ⎪ ⎫ ⎬ ⎭ ⎮ ⎯ ⎰ ⎱ ⎲ ⎳ ⎴ ⎵ ⎶ ⎷ ⎸ ⎹ ⎺ ⎻ ⎼ ⎽ ⎾ ⎿
  ; ⏀ ⏁ ⏂ ⏃ ⏄ ⏅ ⏆ ⏇ ⏈ ⏉ ⏊ ⏋ ⏌ ⏍ ⏎ ⏏ ⏐ ⏑ ⏒ ⏓ ⏔ ⏕ ⏖ ⏗ ⏘ ⏙ ⏚ ⏛ ⏜ ⏝ ⏞ ⏟
  ; ⏠ ⏡ ⏢ ⏣ ⏤ ⏥ ⏦ ⏧ ⏨ ⏩ ⏪ ⏫ ⏬ ⏭ ⏮ ⏯ ⏰ ⏱ ⏲ ⏳

;; Control Pictures
;; (set-fontset-font "fontset-custom" '(#x2400 . #x243f) "")
  ; ␀ ␁ ␂ ␃ ␄ ␅ ␆ ␇ ␈ ␉ ␊ ␋ ␌ ␍ ␎ ␏ ␐ ␑ ␒ ␓ ␔ ␕ ␖ ␗ ␘ ␙ ␚ ␛ ␜ ␝ ␞ ␟
  ; ␠ ␡ ␢ ␣ ␤ ␥ ␦

;; Optical Character Recognition
;; (set-fontset-font "fontset-custom" '(#x2440 . #x245f) "")
  ; ⑀ ⑁ ⑂ ⑃ ⑄ ⑅ ⑆ ⑇ ⑈ ⑉ ⑊

;; Enclosed Alphanumerics
;; (set-fontset-font "fontset-custom" '(#x2460 . #x24ff) "")
  ; ① ② ③ ④ ⑤ ⑥ ⑦ ⑧ ⑨ ⑩ ⑪ ⑫ ⑬ ⑭ ⑮ ⑯ ⑰ ⑱ ⑲ ⑳ ⑴ ⑵ ⑶ ⑷ ⑸ ⑹ ⑺ ⑻ ⑼ ⑽ ⑾ ⑿
  ; ⒀ ⒁ ⒂ ⒃ ⒄ ⒅ ⒆ ⒇ ⒈ ⒉ ⒊ ⒋ ⒌ ⒍ ⒎ ⒏ ⒐ ⒑ ⒒ ⒓ ⒔ ⒕ ⒖ ⒗ ⒘ ⒙ ⒚ ⒛ ⒜ ⒝ ⒞ ⒟
  ; ⒠ ⒡ ⒢ ⒣ ⒤ ⒥ ⒦ ⒧ ⒨ ⒩ ⒪ ⒫ ⒬ ⒭ ⒮ ⒯ ⒰ ⒱ ⒲ ⒳ ⒴ ⒵ Ⓐ Ⓑ Ⓒ Ⓓ Ⓔ Ⓕ Ⓖ Ⓗ Ⓘ Ⓙ
  ; Ⓚ Ⓛ Ⓜ Ⓝ Ⓞ Ⓟ Ⓠ Ⓡ Ⓢ Ⓣ Ⓤ Ⓥ Ⓦ Ⓧ Ⓨ Ⓩ ⓐ ⓑ ⓒ ⓓ ⓔ ⓕ ⓖ ⓗ ⓘ ⓙ ⓚ ⓛ ⓜ ⓝ ⓞ ⓟ
  ; ⓠ ⓡ ⓢ ⓣ ⓤ ⓥ ⓦ ⓧ ⓨ ⓩ ⓪ ⓫ ⓬ ⓭ ⓮ ⓯ ⓰ ⓱ ⓲ ⓳ ⓴ ⓵ ⓶ ⓷ ⓸ ⓹ ⓺ ⓻ ⓼ ⓽ ⓾

;; Box Drawing
(set-fontset-font "fontset-custom" '(#x2500 . #x257f) fs-default)
  ; ─ ━ │ ┃ ┄ ┅ ┆ ┇ ┈ ┉ ┊ ┋ ┌ ┍ ┎ ┏ ┐ ┑ ┒ ┓ └ ┕ ┖ ┗ ┘ ┙ ┚ ┛ ├ ┝ ┞ ┟
  ; ┠ ┡ ┢ ┣ ┤ ┥ ┦ ┧ ┨ ┩ ┪ ┫ ┬ ┭ ┮ ┯ ┰ ┱ ┲ ┳ ┴ ┵ ┶ ┷ ┸ ┹ ┺ ┻ ┼ ┽ ┾ ┿
  ; ╀ ╁ ╂ ╃ ╄ ╅ ╆ ╇ ╈ ╉ ╊ ╋ ╌ ╍ ╎ ╏ ═ ║ ╒ ╓ ╔ ╕ ╖ ╗ ╘ ╙ ╚ ╛ ╜ ╝ ╞ ╟
  ; ╠ ╡ ╢ ╣ ╤ ╥ ╦ ╧ ╨ ╩ ╪ ╫ ╬ ╭ ╮ ╯ ╰ ╱ ╲ ╳ ╴ ╵ ╶ ╷ ╸ ╹ ╺ ╻ ╼ ╽ ╾

;; Block Elements
(set-fontset-font "fontset-custom" '(#x2580 . #x259f) fs-default)
  ; ▀ ▁ ▂ ▃ ▄ ▅ ▆ ▇ █ ▉ ▊ ▋ ▌ ▍ ▎ ▏ ▐ ░ ▒ ▓ ▔ ▕ ▖ ▗ ▘ ▙ ▚ ▛ ▜ ▝ ▞

;; Geometric Shapes
;; (set-fontset-font "fontset-custom" '(#x25a0 . #x25ff) "")
  ; ■ □ ▢ ▣ ▤ ▥ ▦ ▧ ▨ ▩ ▪ ▫ ▬ ▭ ▮ ▯ ▰ ▱ ▲ △ ▴ ▵ ▶ ▷ ▸ ▹ ► ▻ ▼ ▽ ▾ ▿
  ; ◀ ◁ ◂ ◃ ◄ ◅ ◆ ◇ ◈ ◉ ◊ ○ ◌ ◍ ◎ ● ◐ ◑ ◒ ◓ ◔ ◕ ◖ ◗ ◘ ◙ ◚ ◛ ◜ ◝ ◞ ◟
  ; ◠ ◡ ◢ ◣ ◤ ◥ ◦ ◧ ◨ ◩ ◪ ◫ ◬ ◭ ◮ ◯ ◰ ◱ ◲ ◳ ◴ ◵ ◶ ◷ ◸ ◹ ◺ ◻ ◼ ◽ ◾

;; Miscellaneous Symbols
;; (set-fontset-font "fontset-custom" '(#x2600 . #x26ff) "")
  ; ☀ ☁ ☂ ☃ ☄ ★ ☆ ☇ ☈ ☉ ☊ ☋ ☌ ☍ ☎ ☏ ☐ ☑ ☒ ☓ ☔ ☕ ☖ ☗ ☘ ☙ ☚ ☛ ☜ ☝ ☞ ☟
  ; ☠ ☡ ☢ ☣ ☤ ☥ ☦ ☧ ☨ ☩ ☪ ☫ ☬ ☭ ☮ ☯ ☰ ☱ ☲ ☳ ☴ ☵ ☶ ☷ ☸ ☹ ☺ ☻ ☼ ☽ ☾ ☿
  ; ♀ ♁ ♂ ♃ ♄ ♅ ♆ ♇ ♈ ♉ ♊ ♋ ♌ ♍ ♎ ♏ ♐ ♑ ♒ ♓ ♔ ♕ ♖ ♗ ♘ ♙ ♚ ♛ ♜ ♝ ♞ ♟
  ; ♠ ♡ ♢ ♣ ♤ ♥ ♦ ♧ ♨ ♩ ♪ ♫ ♬ ♭ ♮ ♯ ♰ ♱ ♲ ♳ ♴ ♵ ♶ ♷ ♸ ♹ ♺ ♻ ♼ ♽ ♾ ♿
  ; ⚀ ⚁ ⚂ ⚃ ⚄ ⚅ ⚆ ⚇ ⚈ ⚉ ⚊ ⚋ ⚌ ⚍ ⚎ ⚏ ⚐ ⚑ ⚒ ⚓ ⚔ ⚕ ⚖ ⚗ ⚘ ⚙ ⚚ ⚛ ⚜ ⚝ ⚞ ⚟
  ; ⚠ ⚡ ⚢ ⚣ ⚤ ⚥ ⚦ ⚧ ⚨ ⚩ ⚪ ⚫ ⚬ ⚭ ⚮ ⚯ ⚰ ⚱ ⚲ ⚳ ⚴ ⚵ ⚶ ⚷ ⚸ ⚹ ⚺ ⚻ ⚼ ⚽ ⚾ ⚿
  ; ⛀ ⛁ ⛂ ⛃ ⛄ ⛅ ⛆ ⛇ ⛈ ⛉ ⛊ ⛋ ⛌ ⛍ ⛎ ⛏ ⛐ ⛑ ⛒ ⛓ ⛔ ⛕ ⛖ ⛗ ⛘ ⛙ ⛚ ⛛ ⛜ ⛝ ⛞ ⛟
  ; ⛠ ⛡ ⛢ ⛣ ⛤ ⛥ ⛦ ⛧ ⛨ ⛩ ⛪ ⛫ ⛬ ⛭ ⛮ ⛯ ⛰ ⛱ ⛲ ⛳ ⛴ ⛵ ⛶ ⛷ ⛸ ⛹ ⛺ ⛻ ⛼ ⛽ ⛾

;; Dingbats
;; (set-fontset-font "fontset-custom" '(#x2700 . #x27bf) "")
  ; ✁ ✂ ✃ ✄ ✅ ✆ ✇ ✈ ✉ ✊ ✋ ✌ ✍ ✎ ✏ ✐ ✑ ✒ ✓ ✔ ✕ ✖ ✗ ✘ ✙ ✚ ✛ ✜ ✝ ✞ ✟
  ; ✠ ✡ ✢ ✣ ✤ ✥ ✦ ✧ ✨ ✩ ✪ ✫ ✬ ✭ ✮ ✯ ✰ ✱ ✲ ✳ ✴ ✵ ✶ ✷ ✸ ✹ ✺ ✻ ✼ ✽ ✾ ✿
  ; ❀ ❁ ❂ ❃ ❄ ❅ ❆ ❇ ❈ ❉ ❊ ❋ ❌ ❍ ❎ ❏ ❐ ❑ ❒ ❓ ❔ ❕ ❖ ❗ ❘ ❙ ❚ ❛ ❜ ❝ ❞ ❟
  ; ❠ ❡ ❢ ❣ ❤ ❥ ❦ ❧ ❨ ❩ ❪ ❫ ❬ ❭ ❮ ❯ ❰ ❱ ❲ ❳ ❴ ❵ ❶ ❷ ❸ ❹ ❺ ❻ ❼ ❽ ❾ ❿
  ; ➀ ➁ ➂ ➃ ➄ ➅ ➆ ➇ ➈ ➉ ➊ ➋ ➌ ➍ ➎ ➏ ➐ ➑ ➒ ➓ ➔ ➕ ➖ ➗ ➘ ➙ ➚ ➛ ➜ ➝ ➞ ➟
  ; ➠ ➡ ➢ ➣ ➤ ➥ ➦ ➧ ➨ ➩ ➪ ➫ ➬ ➭ ➮ ➯ ➰ ➱ ➲ ➳ ➴ ➵ ➶ ➷ ➸ ➹ ➺ ➻ ➼ ➽ ➾

;; Miscellaneous Mathematical Symbols-A
;; (set-fontset-font "fontset-custom" '(#x27c0 . #x27ef) "")
  ; ⟀ ⟁ ⟂ ⟃ ⟄ ⟅ ⟆ ⟇ ⟈ ⟉ ⟊ ⟋ ⟌ ⟍ ⟎ ⟏ ⟐ ⟑ ⟒ ⟓ ⟔ ⟕ ⟖ ⟗ ⟘ ⟙ ⟚ ⟛ ⟜ ⟝ ⟞ ⟟
  ; ⟠ ⟡ ⟢ ⟣ ⟤ ⟥ ⟦ ⟧ ⟨ ⟩ ⟪ ⟫ ⟬ ⟭ ⟮

;; Supplemental Arrows-A
;; (set-fontset-font "fontset-custom" '(#x27f0 . #x27ff) "")
  ; ⟰ ⟱ ⟲ ⟳ ⟴ ⟵ ⟶ ⟷ ⟸ ⟹ ⟺ ⟻ ⟼ ⟽ ⟾

;; Braille Patterns
;; (set-fontset-font "fontset-custom" '(#x2800 . #x28ff) "")
  ; ⠀ ⠁ ⠂ ⠃ ⠄ ⠅ ⠆ ⠇ ⠈ ⠉ ⠊ ⠋ ⠌ ⠍ ⠎ ⠏ ⠐ ⠑ ⠒ ⠓ ⠔ ⠕ ⠖ ⠗ ⠘ ⠙ ⠚ ⠛ ⠜ ⠝ ⠞ ⠟
  ; ⠠ ⠡ ⠢ ⠣ ⠤ ⠥ ⠦ ⠧ ⠨ ⠩ ⠪ ⠫ ⠬ ⠭ ⠮ ⠯ ⠰ ⠱ ⠲ ⠳ ⠴ ⠵ ⠶ ⠷ ⠸ ⠹ ⠺ ⠻ ⠼ ⠽ ⠾ ⠿
  ; ⡀ ⡁ ⡂ ⡃ ⡄ ⡅ ⡆ ⡇ ⡈ ⡉ ⡊ ⡋ ⡌ ⡍ ⡎ ⡏ ⡐ ⡑ ⡒ ⡓ ⡔ ⡕ ⡖ ⡗ ⡘ ⡙ ⡚ ⡛ ⡜ ⡝ ⡞ ⡟
  ; ⡠ ⡡ ⡢ ⡣ ⡤ ⡥ ⡦ ⡧ ⡨ ⡩ ⡪ ⡫ ⡬ ⡭ ⡮ ⡯ ⡰ ⡱ ⡲ ⡳ ⡴ ⡵ ⡶ ⡷ ⡸ ⡹ ⡺ ⡻ ⡼ ⡽ ⡾ ⡿
  ; ⢀ ⢁ ⢂ ⢃ ⢄ ⢅ ⢆ ⢇ ⢈ ⢉ ⢊ ⢋ ⢌ ⢍ ⢎ ⢏ ⢐ ⢑ ⢒ ⢓ ⢔ ⢕ ⢖ ⢗ ⢘ ⢙ ⢚ ⢛ ⢜ ⢝ ⢞ ⢟
  ; ⢠ ⢡ ⢢ ⢣ ⢤ ⢥ ⢦ ⢧ ⢨ ⢩ ⢪ ⢫ ⢬ ⢭ ⢮ ⢯ ⢰ ⢱ ⢲ ⢳ ⢴ ⢵ ⢶ ⢷ ⢸ ⢹ ⢺ ⢻ ⢼ ⢽ ⢾ ⢿
  ; ⣀ ⣁ ⣂ ⣃ ⣄ ⣅ ⣆ ⣇ ⣈ ⣉ ⣊ ⣋ ⣌ ⣍ ⣎ ⣏ ⣐ ⣑ ⣒ ⣓ ⣔ ⣕ ⣖ ⣗ ⣘ ⣙ ⣚ ⣛ ⣜ ⣝ ⣞ ⣟
  ; ⣠ ⣡ ⣢ ⣣ ⣤ ⣥ ⣦ ⣧ ⣨ ⣩ ⣪ ⣫ ⣬ ⣭ ⣮ ⣯ ⣰ ⣱ ⣲ ⣳ ⣴ ⣵ ⣶ ⣷ ⣸ ⣹ ⣺ ⣻ ⣼ ⣽ ⣾

;; Supplemental Arrows-B
;; (set-fontset-font "fontset-custom" '(#x2900 . #x297f) "")
  ; ⤀ ⤁ ⤂ ⤃ ⤄ ⤅ ⤆ ⤇ ⤈ ⤉ ⤊ ⤋ ⤌ ⤍ ⤎ ⤏ ⤐ ⤑ ⤒ ⤓ ⤔ ⤕ ⤖ ⤗ ⤘ ⤙ ⤚ ⤛ ⤜ ⤝ ⤞ ⤟
  ; ⤠ ⤡ ⤢ ⤣ ⤤ ⤥ ⤦ ⤧ ⤨ ⤩ ⤪ ⤫ ⤬ ⤭ ⤮ ⤯ ⤰ ⤱ ⤲ ⤳ ⤴ ⤵ ⤶ ⤷ ⤸ ⤹ ⤺ ⤻ ⤼ ⤽ ⤾ ⤿
  ; ⥀ ⥁ ⥂ ⥃ ⥄ ⥅ ⥆ ⥇ ⥈ ⥉ ⥊ ⥋ ⥌ ⥍ ⥎ ⥏ ⥐ ⥑ ⥒ ⥓ ⥔ ⥕ ⥖ ⥗ ⥘ ⥙ ⥚ ⥛ ⥜ ⥝ ⥞ ⥟
  ; ⥠ ⥡ ⥢ ⥣ ⥤ ⥥ ⥦ ⥧ ⥨ ⥩ ⥪ ⥫ ⥬ ⥭ ⥮ ⥯ ⥰ ⥱ ⥲ ⥳ ⥴ ⥵ ⥶ ⥷ ⥸ ⥹ ⥺ ⥻ ⥼ ⥽ ⥾

;; Miscellaneous Mathematical Symbols-B
;; (set-fontset-font "fontset-custom" '(#x2980 . #x29ff) "")
  ; ⦀ ⦁ ⦂ ⦃ ⦄ ⦅ ⦆ ⦇ ⦈ ⦉ ⦊ ⦋ ⦌ ⦍ ⦎ ⦏ ⦐ ⦑ ⦒ ⦓ ⦔ ⦕ ⦖ ⦗ ⦘ ⦙ ⦚ ⦛ ⦜ ⦝ ⦞ ⦟
  ; ⦠ ⦡ ⦢ ⦣ ⦤ ⦥ ⦦ ⦧ ⦨ ⦩ ⦪ ⦫ ⦬ ⦭ ⦮ ⦯ ⦰ ⦱ ⦲ ⦳ ⦴ ⦵ ⦶ ⦷ ⦸ ⦹ ⦺ ⦻ ⦼ ⦽ ⦾ ⦿
  ; ⧀ ⧁ ⧂ ⧃ ⧄ ⧅ ⧆ ⧇ ⧈ ⧉ ⧊ ⧋ ⧌ ⧍ ⧎ ⧏ ⧐ ⧑ ⧒ ⧓ ⧔ ⧕ ⧖ ⧗ ⧘ ⧙ ⧚ ⧛ ⧜ ⧝ ⧞ ⧟
  ; ⧠ ⧡ ⧢ ⧣ ⧤ ⧥ ⧦ ⧧ ⧨ ⧩ ⧪ ⧫ ⧬ ⧭ ⧮ ⧯ ⧰ ⧱ ⧲ ⧳ ⧴ ⧵ ⧶ ⧷ ⧸ ⧹ ⧺ ⧻ ⧼ ⧽ ⧾

;; Supplemental Mathematical Operators
;; (set-fontset-font "fontset-custom" '(#x2a00 . #x2aff) "")
  ; ⨀ ⨁ ⨂ ⨃ ⨄ ⨅ ⨆ ⨇ ⨈ ⨉ ⨊ ⨋ ⨌ ⨍ ⨎ ⨏ ⨐ ⨑ ⨒ ⨓ ⨔ ⨕ ⨖ ⨗ ⨘ ⨙ ⨚ ⨛ ⨜ ⨝ ⨞ ⨟
  ; ⨠ ⨡ ⨢ ⨣ ⨤ ⨥ ⨦ ⨧ ⨨ ⨩ ⨪ ⨫ ⨬ ⨭ ⨮ ⨯ ⨰ ⨱ ⨲ ⨳ ⨴ ⨵ ⨶ ⨷ ⨸ ⨹ ⨺ ⨻ ⨼ ⨽ ⨾ ⨿
  ; ⩀ ⩁ ⩂ ⩃ ⩄ ⩅ ⩆ ⩇ ⩈ ⩉ ⩊ ⩋ ⩌ ⩍ ⩎ ⩏ ⩐ ⩑ ⩒ ⩓ ⩔ ⩕ ⩖ ⩗ ⩘ ⩙ ⩚ ⩛ ⩜ ⩝ ⩞ ⩟
  ; ⩠ ⩡ ⩢ ⩣ ⩤ ⩥ ⩦ ⩧ ⩨ ⩩ ⩪ ⩫ ⩬ ⩭ ⩮ ⩯ ⩰ ⩱ ⩲ ⩳ ⩴ ⩵ ⩶ ⩷ ⩸ ⩹ ⩺ ⩻ ⩼ ⩽ ⩾ ⩿
  ; ⪀ ⪁ ⪂ ⪃ ⪄ ⪅ ⪆ ⪇ ⪈ ⪉ ⪊ ⪋ ⪌ ⪍ ⪎ ⪏ ⪐ ⪑ ⪒ ⪓ ⪔ ⪕ ⪖ ⪗ ⪘ ⪙ ⪚ ⪛ ⪜ ⪝ ⪞ ⪟
  ; ⪠ ⪡ ⪢ ⪣ ⪤ ⪥ ⪦ ⪧ ⪨ ⪩ ⪪ ⪫ ⪬ ⪭ ⪮ ⪯ ⪰ ⪱ ⪲ ⪳ ⪴ ⪵ ⪶ ⪷ ⪸ ⪹ ⪺ ⪻ ⪼ ⪽ ⪾ ⪿
  ; ⫀ ⫁ ⫂ ⫃ ⫄ ⫅ ⫆ ⫇ ⫈ ⫉ ⫊ ⫋ ⫌ ⫍ ⫎ ⫏ ⫐ ⫑ ⫒ ⫓ ⫔ ⫕ ⫖ ⫗ ⫘ ⫙ ⫚ ⫛ ⫝̸ ⫝ ⫞ ⫟
  ; ⫠ ⫡ ⫢ ⫣ ⫤ ⫥ ⫦ ⫧ ⫨ ⫩ ⫪ ⫫ ⫬ ⫭ ⫮ ⫯ ⫰ ⫱ ⫲ ⫳ ⫴ ⫵ ⫶ ⫷ ⫸ ⫹ ⫺ ⫻ ⫼ ⫽ ⫾

;; Miscellaneous Symbols and Arrows
;; (set-fontset-font "fontset-custom" '(#x2b00 . #x2bff) "")
  ; ⬀ ⬁ ⬂ ⬃ ⬄ ⬅ ⬆ ⬇ ⬈ ⬉ ⬊ ⬋ ⬌ ⬍ ⬎ ⬏ ⬐ ⬑ ⬒ ⬓ ⬔ ⬕ ⬖ ⬗ ⬘ ⬙ ⬚ ⬛ ⬜ ⬝ ⬞ ⬟
  ; ⬠ ⬡ ⬢ ⬣ ⬤ ⬥ ⬦ ⬧ ⬨ ⬩ ⬪ ⬫ ⬬ ⬭ ⬮ ⬯ ⬰ ⬱ ⬲ ⬳ ⬴ ⬵ ⬶ ⬷ ⬸ ⬹ ⬺ ⬻ ⬼ ⬽ ⬾ ⬿
  ; ⭀ ⭁ ⭂ ⭃ ⭄ ⭅ ⭆ ⭇ ⭈ ⭉ ⭊ ⭋ ⭌ ⭐ ⭑ ⭒ ⭓ ⭔ ⭕ ⭖ ⭗ ⭘ ⭙

;; (set-fontset-font "fontset-custom" '(#x2c00 . #x2c5f) "") ;; Glagolitic
;; (set-fontset-font "fontset-custom" '(#x2c60 . #x2c7f) "") ;; Latin Extended-C
;; (set-fontset-font "fontset-custom" '(#x2c80 . #x2cff) "") ;; Coptic
;; (set-fontset-font "fontset-custom" '(#x2d00 . #x2d2f) "") ;; Georgian Supplement
;; (set-fontset-font "fontset-custom" '(#x2d30 . #x2d7f) "") ;; Tifinagh
;; (set-fontset-font "fontset-custom" '(#x2d80 . #x2ddf) "") ;; Ethiopic Extended
;; (set-fontset-font "fontset-custom" '(#x2de0 . #x2dff) "") ;; Cyrillic Extended-A
;; (set-fontset-font "fontset-custom" '(#x2e00 . #x2e7f) "") ;; Supplemental Punctuation
;; (set-fontset-font "fontset-custom" '(#x2e80 . #x2eff) "") ;; CJK Radicals Supplement
;; (set-fontset-font "fontset-custom" '(#x2f00 . #x2fdf) "") ;; Kangxi Radicals
;; (set-fontset-font "fontset-custom" '(#x2ff0 . #x2fff) "") ;; Ideographic Description Characters
;; (set-fontset-font "fontset-custom" '(#x3000 . #x303f) "") ;; CJK Symbols and Punctuation
(set-fontset-font "fontset-custom" '(#x3040 . #x309f) fs-arial) ;; Hiragana
(set-fontset-font "fontset-custom" '(#x30a0 . #x30ff) fs-arial) ;; Katakana
(set-fontset-font "fontset-custom" '(#x3100 . #x312f) fs-arial) ;; Bopomofo
(set-fontset-font "fontset-custom" '(#x3130 . #x318f) fs-arial) ;; Hangul Compatibility Jamo
(set-fontset-font "fontset-custom" '(#x3190 . #x319f) fs-arial) ;; Kanbun
(set-fontset-font "fontset-custom" '(#x31a0 . #x31bf) fs-arial) ;; Bopomofo Extended
(set-fontset-font "fontset-custom" '(#x31c0 . #x31ef) fs-arial) ;; CJK Strokes
(set-fontset-font "fontset-custom" '(#x31f0 . #x31ff) fs-arial) ;; Katakana Phonetic Extensions
;; (set-fontset-font "fontset-custom" '(#x3200 . #x32ff) "") ;; Enclosed CJK Letters and Months
(set-fontset-font "fontset-custom" '(#x3300 . #x33ff) fs-arial) ;; CJK Compatibility
;; (set-fontset-font "fontset-custom" '(#x3400 . #x4dbf) "") ;; CJK Unified Ideographs Extension A
;; (set-fontset-font "fontset-custom" '(#x4dc0 . #x4dff) "") ;; Yijing Hexagram Symbols
(set-fontset-font "fontset-custom" '(#x4e00 . #x9fff) fs-arial) ;; CJK Unified Ideographs
;; (set-fontset-font "fontset-custom" '(#xa000 . #xa48f) "") ;; Yi Syllables
;; (set-fontset-font "fontset-custom" '(#xa490 . #xa4cf) "") ;; Yi Radicals
;; (set-fontset-font "fontset-custom" '(#xa4d0 . #xa4ff) "") ;; Lisu
;; (set-fontset-font "fontset-custom" '(#xa500 . #xa63f) "") ;; Vai
;; (set-fontset-font "fontset-custom" '(#xa640 . #xa69f) "") ;; Cyrillic Extended-B
;; (set-fontset-font "fontset-custom" '(#xa6a0 . #xa6ff) "") ;; Bamum
;; (set-fontset-font "fontset-custom" '(#xa700 . #xa71f) "") ;; Modifier Tone Letters
;; (set-fontset-font "fontset-custom" '(#xa720 . #xa7ff) "") ;; Latin Extended-D
;; (set-fontset-font "fontset-custom" '(#xa800 . #xa82f) "") ;; Syloti Nagri
;; (set-fontset-font "fontset-custom" '(#xa830 . #xa83f) "") ;; Common Indic Number Forms
;; (set-fontset-font "fontset-custom" '(#xa840 . #xa87f) "") ;; Phags-pa
;; (set-fontset-font "fontset-custom" '(#xa880 . #xa8df) "") ;; Saurashtra
;; (set-fontset-font "fontset-custom" '(#xa8e0 . #xa8ff) "") ;; Devanagari Extended
;; (set-fontset-font "fontset-custom" '(#xa900 . #xa92f) "") ;; Kayah Li
;; (set-fontset-font "fontset-custom" '(#xa930 . #xa95f) "") ;; Rejang
;; (set-fontset-font "fontset-custom" '(#xa960 . #xa97f) "") ;; Hangul Jamo Extended-A
;; (set-fontset-font "fontset-custom" '(#xa980 . #xa9df) "") ;; Javanese
;; (set-fontset-font "fontset-custom" '(#xa9e0 . #xa9ff) "") ;; Myanmar Extended-B
;; (set-fontset-font "fontset-custom" '(#xaa00 . #xaa5f) "") ;; Cham
;; (set-fontset-font "fontset-custom" '(#xaa60 . #xaa7f) "") ;; Myanmar Extended-A
;; (set-fontset-font "fontset-custom" '(#xaa80 . #xaadf) "") ;; Tai Viet
;; (set-fontset-font "fontset-custom" '(#xaae0 . #xaaff) "") ;; Meetei Mayek Extensions
;; (set-fontset-font "fontset-custom" '(#xab00 . #xab2f) "") ;; Ethiopic Extended-A
;; (set-fontset-font "fontset-custom" '(#xab30 . #xab6f) "") ;; Latin Extended-E
;; (set-fontset-font "fontset-custom" '(#xab70 . #xabbf) "") ;; Cherokee Supplement
;; (set-fontset-font "fontset-custom" '(#xabc0 . #xabff) "") ;; Meetei Mayek
;; (set-fontset-font "fontset-custom" '(#xac00 . #xd7af) "") ;; Hangul Syllables
;; (set-fontset-font "fontset-custom" '(#xd7b0 . #xd7ff) "") ;; Hangul Jamo Extended-B
;; (set-fontset-font "fontset-custom" '(#xd800 . #xdb7f) "") ;; High Surrogates
;; (set-fontset-font "fontset-custom" '(#xdb80 . #xdbff) "") ;; High Private Use Surrogates
;; (set-fontset-font "fontset-custom" '(#xdc00 . #xdfff) "") ;; Low Surrogates
;; (set-fontset-font "fontset-custom" '(#xe000 . #xf8ff) "") ;; Private Use Area
(set-fontset-font "fontset-custom" '(#xf900 . #xfaff) fs-arial) ;; CJK Compatibility Ideographs
(set-fontset-font "fontset-custom" '(#xfb00 . #xfb4f) fs-arial) ;; Alphabetic Presentation Forms
(set-fontset-font "fontset-custom" '(#xfb50 . #xfdff) fs-arial) ;; Arabic Presentation Forms-A
(set-fontset-font "fontset-custom" '(#xfe00 . #xfe0f) fs-arial) ;; Variation Selectors
;; (set-fontset-font "fontset-custom" '(#xfe10 . #xfe1f) "") ;; Vertical Forms
;; (set-fontset-font "fontset-custom" '(#xfe20 . #xfe2f) "") ;; Combining Half Marks
(set-fontset-font "fontset-custom" '(#xfe30 . #xfe4f) fs-arial) ;; CJK Compatibility Forms
(set-fontset-font "fontset-custom" '(#xfe50 . #xfe6f) fs-arial) ;; Small Form Variants
(set-fontset-font "fontset-custom" '(#xfe70 . #xfeff) fs-arial) ;; Arabic Presentation Forms-B
(set-fontset-font "fontset-custom" '(#xff00 . #xffef) fs-arial) ;; Halfwidth and Fullwidth Forms
(set-fontset-font "fontset-custom" '(#xfff0 . #xffff) fs-arial) ;; Specials

;;=============================================================================
;; SUPPLEMENTARY MULTILINGUAL PLANE (10000-1ffff)

;; (set-fontset-font "fontset-custom" '(#x10000 . #x1007f) "") ;; Linear B Syllabary
;; (set-fontset-font "fontset-custom" '(#x10080 . #x100ff) "") ;; Linear B Ideograms
;; (set-fontset-font "fontset-custom" '(#x10100 . #x1013f) "") ;; Aegean Numbers
;; (set-fontset-font "fontset-custom" '(#x10140 . #x1018f) "") ;; Ancient Greek Numbers
;; (set-fontset-font "fontset-custom" '(#x10190 . #x101cf) "") ;; Ancient Symbols
;; (set-fontset-font "fontset-custom" '(#x101d0 . #x101ff) "") ;; Phaistos Disc
;; (set-fontset-font "fontset-custom" '(#x10280 . #x1029f) "") ;; Lycian
;; (set-fontset-font "fontset-custom" '(#x102a0 . #x102df) "") ;; Carian
;; (set-fontset-font "fontset-custom" '(#x102e0 . #x102ff) "") ;; Coptic Epact Numbers
;; (set-fontset-font "fontset-custom" '(#x10300 . #x1032f) "") ;; Old Italic
;; (set-fontset-font "fontset-custom" '(#x10330 . #x1034f) "") ;; Gothic
;; (set-fontset-font "fontset-custom" '(#x10350 . #x1037f) "") ;; Old Permic
;; (set-fontset-font "fontset-custom" '(#x10380 . #x1039f) "") ;; Ugaritic
;; (set-fontset-font "fontset-custom" '(#x103a0 . #x103df) "") ;; Old Persian
;; (set-fontset-font "fontset-custom" '(#x10400 . #x1044f) "") ;; Deseret
;; (set-fontset-font "fontset-custom" '(#x10450 . #x1047f) "") ;; Shavian
;; (set-fontset-font "fontset-custom" '(#x10480 . #x104af) "") ;; Osmanya
;; (set-fontset-font "fontset-custom" '(#x104b0 . #x104ff) "") ;; Osage
;; (set-fontset-font "fontset-custom" '(#x10500 . #x1052f) "") ;; Elbasan
;; (set-fontset-font "fontset-custom" '(#x10530 . #x1056f) "") ;; Caucasian Albanian
;; (set-fontset-font "fontset-custom" '(#x10600 . #x1077f) "") ;; Linear A
;; (set-fontset-font "fontset-custom" '(#x10800 . #x1083f) "") ;; Cypriot Syllabary
;; (set-fontset-font "fontset-custom" '(#x10840 . #x1085f) "") ;; Imperial Aramaic
;; (set-fontset-font "fontset-custom" '(#x10860 . #x1087f) "") ;; Palmyrene
;; (set-fontset-font "fontset-custom" '(#x10880 . #x108af) "") ;; Nabataean
;; (set-fontset-font "fontset-custom" '(#x108e0 . #x108ff) "") ;; Hatran
;; (set-fontset-font "fontset-custom" '(#x10900 . #x1091f) "") ;; Phoenician
;; (set-fontset-font "fontset-custom" '(#x10920 . #x1093f) "") ;; Lydian
;; (set-fontset-font "fontset-custom" '(#x10980 . #x1099f) "") ;; Meroitic Hieroglyphs
;; (set-fontset-font "fontset-custom" '(#x109a0 . #x109ff) "") ;; Meroitic Cursive
;; (set-fontset-font "fontset-custom" '(#x10a00 . #x10a5f) "") ;; Kharoshthi
;; (set-fontset-font "fontset-custom" '(#x10a60 . #x10a7f) "") ;; Old South Arabian
;; (set-fontset-font "fontset-custom" '(#x10a80 . #x10a9f) "") ;; Old North Arabian
;; (set-fontset-font "fontset-custom" '(#x10ac0 . #x10aff) "") ;; Manichaean
;; (set-fontset-font "fontset-custom" '(#x10b00 . #x10b3f) "") ;; Avestan
;; (set-fontset-font "fontset-custom" '(#x10b40 . #x10b5f) "") ;; Inscriptional Parthian
;; (set-fontset-font "fontset-custom" '(#x10b60 . #x10b7f) "") ;; Inscriptional Pahlavi
;; (set-fontset-font "fontset-custom" '(#x10b80 . #x10baf) "") ;; Psalter Pahlavi
;; (set-fontset-font "fontset-custom" '(#x10c00 . #x10c4f) "") ;; Old Turkic
;; (set-fontset-font "fontset-custom" '(#x10c80 . #x10cff) "") ;; Old Hungarian
;; (set-fontset-font "fontset-custom" '(#x10e60 . #x10e7f) "") ;; Rumi Numeral Symbols
;; (set-fontset-font "fontset-custom" '(#x11000 . #x1107f) "") ;; Brahmi
;; (set-fontset-font "fontset-custom" '(#x11080 . #x110cf) "") ;; Kaithi
;; (set-fontset-font "fontset-custom" '(#x110d0 . #x110ff) "") ;; Sora Sompeng
;; (set-fontset-font "fontset-custom" '(#x11100 . #x1114f) "") ;; Chakma
;; (set-fontset-font "fontset-custom" '(#x11150 . #x1117f) "") ;; Mahajani
;; (set-fontset-font "fontset-custom" '(#x11180 . #x111df) "") ;; Sharada
;; (set-fontset-font "fontset-custom" '(#x111e0 . #x111ff) "") ;; Sinhala Archaic Numbers
;; (set-fontset-font "fontset-custom" '(#x11200 . #x1124f) "") ;; Khojki
;; (set-fontset-font "fontset-custom" '(#x11280 . #x112af) "") ;; Multani
;; (set-fontset-font "fontset-custom" '(#x112b0 . #x112ff) "") ;; Khudawadi
;; (set-fontset-font "fontset-custom" '(#x11300 . #x1137f) "") ;; Grantha
;; (set-fontset-font "fontset-custom" '(#x11400 . #x1147f) "") ;; Newa
;; (set-fontset-font "fontset-custom" '(#x11480 . #x114df) "") ;; Tirhuta
;; (set-fontset-font "fontset-custom" '(#x11580 . #x115ff) "") ;; Siddham
;; (set-fontset-font "fontset-custom" '(#x11600 . #x1165f) "") ;; Modi
;; (set-fontset-font "fontset-custom" '(#x11660 . #x1167f) "") ;; Mongolian Supplement
;; (set-fontset-font "fontset-custom" '(#x11680 . #x116cf) "") ;; Takri
;; (set-fontset-font "fontset-custom" '(#x11700 . #x1173f) "") ;; Ahom
;; (set-fontset-font "fontset-custom" '(#x118a0 . #x118ff) "") ;; Warang Citi
;; (set-fontset-font "fontset-custom" '(#x11a00 . #x11a4f) "") ;; Zanabazar Square
;; (set-fontset-font "fontset-custom" '(#x11a50 . #x11aaf) "") ;; Soyombo
;; (set-fontset-font "fontset-custom" '(#x11ac0 . #x11aff) "") ;; Pau Cin Hau
;; (set-fontset-font "fontset-custom" '(#x11c00 . #x11c6f) "") ;; Bhaiksuki
;; (set-fontset-font "fontset-custom" '(#x11c70 . #x11cbf) "") ;; Marchen
;; (set-fontset-font "fontset-custom" '(#x11d00 . #x11d5f) "") ;; Masaram Gondi
;; (set-fontset-font "fontset-custom" '(#x12000 . #x123ff) "") ;; Cuneiform
;; (set-fontset-font "fontset-custom" '(#x12400 . #x1247f) "") ;; Cuneiform Numbers and Punctuation
;; (set-fontset-font "fontset-custom" '(#x12480 . #x1254f) "") ;; Early Dynastic Cuneiform
;; (set-fontset-font "fontset-custom" '(#x13000 . #x1342f) "") ;; Egyptian Hieroglyphs
;; (set-fontset-font "fontset-custom" '(#x14400 . #x1467f) "") ;; Anatolian Hieroglyphs
;; (set-fontset-font "fontset-custom" '(#x16800 . #x16a3f) "") ;; Bamum Supplement
;; (set-fontset-font "fontset-custom" '(#x16a40 . #x16a6f) "") ;; Mro
;; (set-fontset-font "fontset-custom" '(#x16ad0 . #x16aff) "") ;; Bassa Vah
;; (set-fontset-font "fontset-custom" '(#x16b00 . #x16b8f) "") ;; Pahawh Hmong
;; (set-fontset-font "fontset-custom" '(#x16f00 . #x16f9f) "") ;; Miao
;; (set-fontset-font "fontset-custom" '(#x16fe0 . #x16fff) "") ;; Ideographic Symbols and Punctuation
;; (set-fontset-font "fontset-custom" '(#x17000 . #x187ff) "") ;; Tangut
;; (set-fontset-font "fontset-custom" '(#x18800 . #x18aff) "") ;; Tangut Components
;; (set-fontset-font "fontset-custom" '(#x1b000 . #x1b0ff) "") ;; Kana Supplement
;; (set-fontset-font "fontset-custom" '(#x1b100 . #x1b12f) "") ;; Kana Extended-A
;; (set-fontset-font "fontset-custom" '(#x1b170 . #x1b2ff) "") ;; Nushu
;; (set-fontset-font "fontset-custom" '(#x1bc00 . #x1bc9f) "") ;; Duployan
;; (set-fontset-font "fontset-custom" '(#x1bca0 . #x1bcaf) "") ;; Shorthand Format Controls
;; (set-fontset-font "fontset-custom" '(#x1d000 . #x1d0ff) "") ;; Byzantine Musical Symbols
;; (set-fontset-font "fontset-custom" '(#x1d100 . #x1d1ff) "") ;; Musical Symbols
;; (set-fontset-font "fontset-custom" '(#x1d200 . #x1d24f) "") ;; Ancient Greek Musical Notation
;; (set-fontset-font "fontset-custom" '(#x1d300 . #x1d35f) "") ;; Tai Xuan Jing Symbols
;; (set-fontset-font "fontset-custom" '(#x1d360 . #x1d37f) "") ;; Counting Rod Numerals
;; (set-fontset-font "fontset-custom" '(#x1d400 . #x1d7ff) "") ;; Mathematical Alphanumeric Symbols
;; (set-fontset-font "fontset-custom" '(#x1d800 . #x1daaf) "") ;; Sutton SignWriting
;; (set-fontset-font "fontset-custom" '(#x1e000 . #x1e02f) "") ;; Glagolitic Supplement
;; (set-fontset-font "fontset-custom" '(#x1e800 . #x1e8df) "") ;; Mende Kikakui
;; (set-fontset-font "fontset-custom" '(#x1e900 . #x1e95f) "") ;; Adlam
;; (set-fontset-font "fontset-custom" '(#x1ee00 . #x1eeff) "") ;; Arabic Mathematical Alphabetic Symbols
(set-fontset-font "fontset-custom" '(#x1f000 . #x1f02f) fs-apple-emoji) ;; Mahjong Tiles
(set-fontset-font "fontset-custom" '(#x1f030 . #x1f09f) fs-apple-emoji) ;; Domino Tiles
(set-fontset-font "fontset-custom" '(#x1f0a0 . #x1f0ff) fs-apple-emoji) ;; Playing Cards
(set-fontset-font "fontset-custom" '(#x1f100 . #x1f1ff) fs-apple-emoji) ;; Enclosed Alphanumeric Supplement
(set-fontset-font "fontset-custom" '(#x1f200 . #x1f2ff) fs-apple-emoji) ;; Enclosed Ideographic Supplement
(set-fontset-font "fontset-custom" '(#x1f300 . #x1f5ff) fs-apple-emoji) ;; Miscellaneous Symbols And Pictographs
(set-fontset-font "fontset-custom" '(#x1f600 . #x1f64f) fs-apple-emoji) ;; Emoticons
(set-fontset-font "fontset-custom" '(#x1f650 . #x1f67f) fs-apple-emoji) ;; Ornamental Dingbats
(set-fontset-font "fontset-custom" '(#x1f680 . #x1f6ff) fs-apple-emoji) ;; Transport And Map Symbols
;; (set-fontset-font "fontset-custom" '(#x1f700 . #x1f77f) "") ;; Alchemical Symbols
;; (set-fontset-font "fontset-custom" '(#x1f780 . #x1f7ff) "") ;; Geometric Shapes Extended
;; (set-fontset-font "fontset-custom" '(#x1f800 . #x1f8ff) "") ;; Supplemental Arrows-C
(set-fontset-font "fontset-custom" '(#x1f900 . #x1f9ff) fs-apple-emoji) ;; Supplemental Symbols and Pictographs

;;=============================================================================
;; SUPPLEMENTARY IDEOGRAPHIC PLANE (20000-2ffff)

;; (set-fontset-font "fontset-custom" '(#x20000 . #x2a6df) "") ;; CJK Unified Ideographs Extension B
;; (set-fontset-font "fontset-custom" '(#x2a700 . #x2b73f) "") ;; CJK Unified Ideographs Extension C
;; (set-fontset-font "fontset-custom" '(#x2b740 . #x2b81f) "") ;; CJK Unified Ideographs Extension D
;; (set-fontset-font "fontset-custom" '(#x2b820 . #x2ceaf) "") ;; CJK Unified Ideographs Extension E
;; (set-fontset-font "fontset-custom" '(#x2ceb0 . #x2ebef) "") ;; CJK Unified Ideographs Extension F
;; (set-fontset-font "fontset-custom" '(#x2f800 . #x2fa1f) "") ;; CJK Compatibility Ideographs Supplement

;;=============================================================================
;; SUPPLEMENTARY SPECIAL-PURPOSE PLANE (e0000-effff)

;; (set-fontset-font "fontset-custom" '(#xe0000 . #xe007f) "") ;; Tags
;; (set-fontset-font "fontset-custom" '(#xe0100 . #xe01ef) "") ;; Variation Selectors Supplement

;;=============================================================================
;; SUPPLEMENTARY PRIVATE USE AREA (f0000-10ffff)

;; (set-fontset-font "fontset-custom" '(#xf0000  . #xfffff)  "") ;; Supplementary Private Use Area-A
;; (set-fontset-font "fontset-custom" '(#x100000 . #x10ffff) "") ;; Supplementary Private Use Area-B

;; Catchall for some non-adjacent codepoints in MacRoman charset
(set-fontset-font "fontset-custom" 'mac-roman fs-default)
