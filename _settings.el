(setq
 auto-save-file-name-transforms `((".*" ,temporary-file-directory t))
 auto-save-list-file-prefix "~/.autosave/save-"
 backup-directory-alist '(("." . "~/.backups"))
 completion-ignore-case t
 confirm-kill-emacs 'y-or-n-p
 default-fill-column 79
 default-input-method "latin-1-postfix"
 default-tab-width 8
 display-time-24hr-format t
 display-time-day-and-date t
 font-lock-maximum-decoration t
 frame-title-format '("%f")
 hourglass-delay 2
 inhibit-default-init t
 inhibit-startup-echo-area-message user-login-name
 inhibit-startup-message t
 kill-whole-line t
 magic-mode-alist '()
 message-signature-separator "^-- *$"
 mouse-wheel-progressive-speed nil
 mouse-yank-at-point t
 read-file-name-completion-ignore-case t
 require-final-newline t
 ring-bell-function (lambda () nil)
 save-abbrevs nil
 scroll-conservatively 20
 scroll-margin 8
 sentence-end-double-space nil
 speedbar-show-unknown-files t
 speedbar-use-images nil
 use-dialog-box nil
 woman-use-own-frame nil)

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

;; Set up uniquify for buffer names
(require 'uniquify)
(setq
 uniquify-buffer-name-style 'forward
 uniquify-strip-common-suffix t)
