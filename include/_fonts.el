;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Fontset config

;; Sources:
;;   - IBM Plex: https://github.com/IBM/type
;;   - SF Mono: /Applications/Utilities/Terminal.app/Contents/Resources/Fonts
;;   - Consolas: https://aur.archlinux.org/packages/ttf-microsoft-consolas/
;;   - Symbola: http://users.teilar.gr/~g1951d/
;;   - Menlo: packaged with OS X
;;   - Courier: packaged with OS X
;;   - Arial Unicode MS: packaged with OS X

(require 'seq)

(defvar fixed-pitch-families
  '("IBM Plex Mono" "SF Mono" "Consolas" "Courier")
  "List of preferred fixed-pitch font family names.")

(defvar variable-pitch-families
  '("IBM Plex Sans" "SF Pro Text" "Lucida Grande")
  "List of preferred variable-pitch font family names.")

(when (setq fixed-pitch-family
            (jal/first-available-font fixed-pitch-families))
  (set-face-attribute 'fixed-pitch nil
                      :family fixed-pitch-family))

(when (setq variable-pitch-family
            (jal/first-available-font variable-pitch-families))
  (set-face-attribute 'variable-pitch nil
                      :family variable-pitch-family))

(create-fontset-from-fontset-spec
 (concat "-*-"
         fixed-pitch-family
         "-normal-normal-normal-*-14-*-*-*-m-0-fontset-custom"))

;; Setting the :font frame parameter resets the font size to the default 12
(set-frame-font "fontset-custom" nil t)

;; Use macOS emoji font if available and if color emoji are supported
(when (and (not (version< emacs-version "27.0"))
           (jal/first-available-font '("Apple Color Emoji")))
  (set-fontset-font t 'symbol "Apple Color Emoji"))
