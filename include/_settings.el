;; Autosave/backup options
(setq
 auto-save-file-name-transforms `((".*" ,temporary-file-directory t))
 auto-save-list-file-prefix "~/.autosave/save-"
 backup-directory-alist '(("." . "~/.backups")))

;; Buffer contents options
(setq-default fill-column 79)
(setq
 tab-width 8
 sentence-end-double-space nil)

;; Emacs UI options
(setq
 completion-ignore-case t
 confirm-kill-emacs 'y-or-n-p
 custom-file "~/.emacs.d/include/_local_custom.el"
 display-time-24hr-format t
 display-time-day-and-date t
 frame-title-format '(buffer-file-name "%f" ("%b"))
 hourglass-delay 2
 inhibit-default-init t
 inhibit-splash-screen t
 inhibit-startup-echo-area-message user-login-name
 kill-whole-line t
 magic-mode-alist '()
 mouse-yank-at-point t
 ring-bell-function 'ignore
 save-abbrevs nil
 use-dialog-box nil
 woman-use-own-frame nil)

;; Scrolling options
(setq
 mouse-wheel-progressive-speed t
 mouse-wheel-scroll-amount '(1)
 scroll-conservatively 20
 scroll-margin 8
 scroll-preserve-screen-position t)

;; ido-mode settings
(setq
 ido-confirm-unique-completion t
 ido-enable-last-directory-history nil
 ido-enable-tramp-completion nil
 ido-max-work-directory-list 0
 ido-max-work-file-list 0
 ido-record-commands nil
 ido-show-dot-for-dired t)

;; Shim basic error/warning/success faces for Emacs < 24.1
;; (these are no-ops if the faces are already defined)
(defface error   '((t :foreground "red"))    "Error.")
(defface warning '((t :foreground "orange")) "Warning.")
(defface success '((t :foreground "green"))  "Success.")

;; Calendar-related settings
(setq
 calendar-latitude 42.73
 calendar-longitude -73.69
 calendar-location-name "Troy, NY"
 mark-holidays-in-calendar t
 calendar-holiday-marker 'warning
 holiday-bahai-holidays nil
 holiday-hebrew-holidays nil
 holiday-islamic-holidays nil
 holiday-oriental-holidays nil)

;; Unicode/i18n stuff
(setq default-input-method "latin-1-postfix")
(prefer-coding-system 'utf-8-unix)
(set-terminal-coding-system 'utf-8)

;; Adjusting default safeguards
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
(put 'narrow-to-region 'disabled nil)
(put 'dired-find-alternate-file 'disabled nil)

;; Function aliases for fatfingering etc.
(defalias 'grpe 'grep)

;; Minor modes we do want
(delete-selection-mode t)
(column-number-mode t)
(ido-mode t)
(when (fboundp 'electric-pair-mode)
  (electric-pair-mode t))

;; Paren/bracket matching config
(when (fboundp 'show-paren-mode)
  (show-paren-mode t)
  (setq show-paren-style 'parenthesis))

;; Minor modes we don't want
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(tooltip-mode -1)
(blink-cursor-mode -1)
(when (fboundp 'electric-indent-mode)
  (electric-indent-mode -1))

;; Smart tab completion
(when (require 'smart-tab nil t)
  (global-smart-tab-mode 1)
  (setq
   smart-tab-using-hippie-expand t))

;; Set up uniquify for buffer names
(setq
 uniquify-buffer-name-style 'forward
 uniquify-strip-common-suffix t)

;; Autoload zap-up-to-char (to be bound to M-z in place of zap-to-char)
(autoload 'zap-up-to-char "misc"
  "Kill up to, but not including ARGth occurrence of CHAR.

\(fn arg char)"
  'interactive)

;; Setup for buffers that represent actual files
(add-hook
 'find-file-hook
 (lambda ()
   (setq indent-tabs-mode nil
         indicate-buffer-boundaries 'left
         truncate-lines t)))

(add-hook 'text-mode-hook 'typo-mode)
(add-hook 'org-mode-hook 'typo-mode)

;; Magit setup
(setq
 magit-last-seen-setup-instructions "1.4.0")

;; Git gutter mode
(setq
 git-gutter:added-sign "+"
 git-gutter:deleted-sign "×"
 git-gutter:modified-sign "~"
 git-gutter:diff-option "--minimal"
 git-gutter:lighter ""
 git-gutter:hide-gutter t
 git-gutter:verbosity 0)

(add-hook
 'find-file-hook
 (lambda ()
   (when (and (functionp 'git-gutter-mode)
              (vc-backend (buffer-file-name)))
     (git-gutter-mode 1))))

;; Rather than using ` and ' as left and right single quotes respectively,
;; keep ` literal (e.g. for Markdown/ReST) and use ' for both ‘ and ’.
(after-load
  'typo
  (define-typo-cycle typo-cycle-single-quotation-mark
    "Cycle through right and left single quotes and typewriter apostrophe."
    ("’" "‘" "'"))
  (define-key typo-mode-map (kbd "'") 'typo-cycle-single-quotation-mark)
  (define-key typo-global-mode-map (kbd "'") 'typo-cycle-single-quotation-mark)
  (define-key typo-mode-map (kbd "`") nil)
  (define-key typo-global-mode-map (kbd "`") nil))

;; Whitespace setup; also only for buffers with actual files
(add-hook
 'find-file-hook
 (lambda ()
   (setq whitespace-style '(face trailing tabs tab-mark)
         whitespace-display-mappings '((tab-mark 9 [8594 9])))
   (whitespace-mode 1)))

(after-load
 'whitespace
 (set-face-background 'whitespace-trailing (face-foreground 'warning))
 (set-face-background 'whitespace-tab 'unspecified))

;; JavaScript setup
(after-load
  'js
  (setq js-indent-level 2))

;; CoffeeScript setup
(after-load
  'coffee-mode
  (setq coffee-tab-width 2))

;; Ruby setup
(after-load
  'ruby-mode
  (setq ruby-insert-encoding-magic-comment nil)
  (when (require 'rvm nil t)
    (rvm-autodetect-ruby)))

;; Electric indent mode actually works pretty nicely in Ruby mode
(add-hook
 'ruby-mode-hook
 (lambda () (electric-indent-local-mode t)))

;; Sass/SCSS setup
(after-load
  'css-mode
  (setq css-indent-offset 2))

(after-load
  'scss-mode
  (setq scss-compile-at-save nil))

;; OS X settings
(setq
 delete-by-moving-to-trash t
 trash-directory (expand-file-name "~/.Trash")
 ns-pop-up-frames nil
 ns-control-modifier 'control
 ns-right-alternate-modifier 'control
 ns-alternate-modifier 'meta
 ns-command-modifier 'meta
 ns-function-modifier 'super)
