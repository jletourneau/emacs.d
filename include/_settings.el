;; Autosave/backup options
(setq
 auto-save-file-name-transforms `((".*" ,temporary-file-directory t))
 auto-save-list-file-prefix "~/.autosave/save-"
 backup-directory-alist '(("." . "~/.backups")))

;; Buffer contents options
(setq
 fill-column 79
 tab-width 8
 sentence-end-double-space nil
 require-final-newline t)

;; Emacs UI options
(setq
 completion-ignore-case t
 confirm-kill-emacs 'y-or-n-p
 display-time-24hr-format t
 display-time-day-and-date t
 frame-title-format '(buffer-file-name "%f" ("%b"))
 hourglass-delay 2
 inhibit-default-init t
 inhibit-startup-echo-area-message user-login-name
 inhibit-startup-screen t
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
 scroll-margin 8)

;; ido-mode settings
(setq
 ido-confirm-unique-completion t
 ido-enable-last-directory-history nil
 ido-enable-tramp-completion nil
 ido-max-work-directory-list 0
 ido-max-work-file-list 0
 ido-record-commands nil
 ido-show-dot-for-dired t)

;; Calendar-related settings
(setq
 calendar-latitude 42.73
 calendar-longitude -73.69
 calendar-location-name "Troy, NY"
 mark-holidays-in-calendar t
 calendar-holiday-marker 'warning)

;; Unicode/i18n stuff
(setq default-input-method "latin-1-postfix")
(prefer-coding-system 'utf-8-unix)
(set-terminal-coding-system 'utf-8)

;; Adjusting default safeguards
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
(put 'narrow-to-region 'disabled nil)

;; Minor modes we do want
(delete-selection-mode t)
(column-number-mode t)
(show-paren-mode t)
(ido-mode t)

;; Minor modes we don't want
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(tooltip-mode -1)
(blink-cursor-mode -1)

;; Set up uniquify for buffer names
(require 'uniquify)
(setq
 uniquify-buffer-name-style 'forward
 uniquify-strip-common-suffix t)

;; Setup for buffers that represent actual files
(add-hook
 'find-file-hook
 (lambda ()
   (setq indent-tabs-mode nil
         indicate-buffer-boundaries 'left
         truncate-lines t)))

(add-hook 'text-mode-hook 'typo-mode)
(add-hook 'org-mode-hook 'typo-mode)

;; Whitespace setup; also only for buffers with actual files
(add-hook
 'find-file-hook
 (lambda ()
   (setq whitespace-style '(face trailing tabs tab-mark)
         whitespace-display-mappings '((tab-mark 9 [8658 9])))
   (whitespace-mode 1)))

(after-load
 'whitespace
 (set-face-background 'whitespace-trailing (face-foreground 'warning))
 (set-face-background 'whitespace-tab 'unspecified))

;; CoffeeScript setup
(after-load
  'coffee-mode
  (setq coffee-tab-width 2)
  ;; Without this override, you get double indents on the next line when
  ;; hitting Return when point is at the beginning of the line.
  (defun coffee-newline-dwim ()
    "Insert a newline, and indent it unless point is in column 0."
    (interactive)
    (if (bolp)
        (newline)
      (coffee-newline-and-indent)))
  (define-key
    coffee-mode-map
    [remap coffee-newline-and-indent] 'coffee-newline-dwim))

;; OS X settings
(setq
 delete-by-moving-to-trash t
 trash-directory (expand-file-name "~/.Trash")
 ns-pop-up-frames nil
 mac-control-modifier 'control
 mac-option-modifier 'meta
 mac-command-modifier 'meta
 mac-function-modifier 'super)
