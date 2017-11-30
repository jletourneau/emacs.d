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

(defvar fixed-pitch-families
  '("IBM Plex Mono" "SF Mono" "Consolas" "Courier")
  "List of preferred fixed-pitch font family names.")

(defvar variable-pitch-families
  '("IBM Plex Sans" "SF Pro Text" "Lucida Grande")
  "List of preferred variable-pitch font family names.")

(defun first-available-font (font-list)
  (seq-find (lambda (f) (not (null (x-list-fonts f)))) font-list))

(when (setq fixed-pitch-family
            (first-available-font fixed-pitch-families))
  (set-face-attribute 'fixed-pitch nil
                      :family fixed-pitch-family))

(when (setq variable-pitch-family
            (first-available-font variable-pitch-families))
  (set-face-attribute 'variable-pitch nil
                      :family variable-pitch-family))

(create-fontset-from-fontset-spec
 (concat "-*-"
         fixed-pitch-family
         "-normal-normal-normal-*-*-*-*-*-m-0-fontset-custom"))

;; Setting the :font frame parameter resets the font size to the default 12
(set-frame-font "fontset-custom" nil t)

(setq
 fs-default       (font-spec :family fixed-pitch-family)
 fs-symbola       (font-spec :family "Symbola")
 fs-courier       (font-spec :family "Courier")
 fs-arial         (font-spec :family "Arial Unicode MS")
 fs-apple-symbols (font-spec :family "Apple Symbols")
 fs-apple-emoji   (font-spec :family "Apple Color Emoji"))

(load "_char_ranges" t)
