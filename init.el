;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Bootstrapping use-package system

(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/"))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))

(require 'use-package-ensure)
(setq use-package-always-ensure t)

(add-to-list
 'load-path
 (concat (file-name-as-directory user-emacs-directory) "include"))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Custom defuns

(defun dir-join (root &rest dirs)
  "Joins a series of path components together.
  (dir-join \"/tmp\" \"a\" \"b\" \"c\") => \"/tmp/a/b/c\""
  (if (not dirs)
      root
    (apply 'dir-join
           (expand-file-name (car dirs) root)
           (cdr dirs))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Variables not part of specific provided packages

(setq
 emacs-conf-dir (file-name-as-directory user-emacs-directory)
 auto-save-list-file-prefix (dir-join emacs-conf-dir ".autosave/save-")
 completion-ignore-case t
 frame-title-format '(buffer-file-name "%f" ("%b"))
 gc-cons-threshold (* 20 1024 1024)
 hourglass-delay 2
 inhibit-default-init t
 inhibit-splash-screen t
 inhibit-startup-echo-area-message user-login-name
 ring-bell-function 'ignore
 standard-indent 2
 use-dialog-box nil
 use-package-verbose t
 scroll-conservatively 20
 scroll-margin 8
 scroll-preserve-screen-position t
 default-directory "~/"
 default-input-method "latin-1-postfix"
 delete-by-moving-to-trash t
 ns-control-modifier 'control
 ns-right-control-modifier 'control
 ns-alternate-modifier 'meta
 ns-right-alternate-modifier 'meta
 ns-command-modifier 'meta
 ns-right-command-modifier 'meta
 ns-function-modifier 'super)

(setq-default
 fill-column 79
 tab-width 8
 indent-tabs-mode nil
 indicate-buffer-boundaries 'left)

(add-to-list 'default-frame-alist '(line-spacing . 2))
(add-to-list 'default-frame-alist '(width . 95))
(add-to-list 'default-frame-alist '(height . 40))
(add-to-list 'default-frame-alist '(right-fringe . 0))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Various built-in invocations

(prefer-coding-system 'utf-8-unix)
(set-terminal-coding-system 'utf-8)

(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
(put 'narrow-to-region 'disabled nil)
(put 'suspend-frame 'disabled t)

(defalias 'grpe 'grep)

(global-set-key (kbd "C-j") 'indent-for-tab-command)
(global-set-key (kbd "<C-tab>") 'other-window)

(when (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(when (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(when (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(when (fboundp 'tooltip-mode) (tooltip-mode -1))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Per-package configs

(when (display-graphic-p)
  (use-package zenburn-theme
    :config
    (load-theme 'zenburn t))
  (use-package hl-line
    :config
    (hl-line-mode 1))
  (use-package mouse
    :ensure nil
    :init
    (setq
     mouse-yank-at-point t))
  (use-package mwheel
    :ensure nil
    :init
    (setq
     mouse-wheel-progressive-speed t
     mouse-wheel-scroll-amount '(1)))
  (use-package ns-win
    :ensure nil
    :init
    (setq
     ns-pop-up-frames nil))
  (load "_fonts"))

(when (not (display-graphic-p))
  (use-package custom
    :config
    (load-theme 'wombat t)))

(use-package files
  :ensure nil
  :custom
  (auto-save-file-name-transforms `((".*" ,temporary-file-directory t)))
  (backup-directory-alist `(("." . ,(dir-join emacs-conf-dir ".backup"))))
  (confirm-kill-emacs 'y-or-n-p)
  (magic-mode-alist '())
  (require-final-newline t)
  (save-abbrevs nil)
  (trash-directory (dir-join "~" ".Trash")))

(use-package cus-edit
  :ensure nil
  :init
  (setq
   custom-file (dir-join user-emacs-directory "include" "_local_custom.el")))

(use-package simple
  :ensure nil
  :bind (("C-z" . undo)
         ("C-c w" . delete-trailing-whitespace)
         ("C-c \\" . toggle-truncate-lines)
         ("C-c RET" . execute-extended-command)
         ("M-+" . count-words-region)
         ("M-g" . goto-line)
         ("M-SPC" . cycle-spacing))
  :hook ((text-mode org-mode) . visual-line-mode)
  :init
  (setq
   kill-whole-line t)
  :config
  (column-number-mode 1))

(use-package ido
  :init
  (setq
   ido-confirm-unique-completion t
   ido-enable-flex-matching t
   ido-enable-last-directory-history nil
   ido-enable-tramp-completion nil
   ido-max-work-directory-list 0
   ido-max-work-file-list 0
   ido-record-commands nil
   ido-show-dot-for-dired t)
  :config
  (ido-mode 1))

(use-package ido-vertical-mode
  :requires ido
  :init
  (setq ido-vertical-define-keys 'C-n-and-C-p-only)
  :config
  (ido-vertical-mode 1))

(use-package flx-ido
  :requires ido
  :config
  (flx-ido-mode 1))

(use-package solar
  :ensure nil
  :defer t
  :custom
  (calendar-latitude 42.73)
  (calendar-longitude -73.69)
  (calendar-location-name "Troy, NY"))

(use-package calendar
  :defer t
  :commands calendar
  :custom
  (holiday-bahai-holidays nil)
  (holiday-hebrew-holidays nil)
  (holiday-islamic-holidays nil)
  (holiday-oriental-holidays nil))

(use-package dired
  :ensure nil
  :defer t
  :bind (("C-c C-f" . find-name-dired))
  :config
  (put 'dired-find-alternate-file 'disabled nil)
  (when (executable-find "gls")
    (setq
     insert-directory-program "gls"
     dired-listing-switches "-Gal --group-directories-first --si")))

(use-package delsel
  :config
  (delete-selection-mode 1))

(use-package elec-pair
  :config
  (electric-pair-mode 1))

(use-package paren
  :init
  (setq
   show-paren-style 'parenthesis)
  :config
  (show-paren-mode 1))

(use-package frame
  :ensure nil
  :bind (("<C-S-tab>" . other-frame))
  :config
  (blink-cursor-mode -1))

(use-package electric
  :hook (ruby-mode . electric-indent-local-mode)
  :config
  (electric-indent-mode -1))

(use-package smart-tab
  :init
  (setq
   smart-tab-using-hippie-expand t)
  :config
  (global-smart-tab-mode 1))

(use-package uniquify
  :ensure nil
  :custom
  (uniquify-buffer-name-style 'forward)
  (uniquify-strip-common-suffix t))

(use-package misc
  :ensure nil
  :bind (("M-z" . zap-up-to-char)))

(use-package key-chord
  :config
  (key-chord-mode 1)
  ;; Unused chord candidates: "fv", ",.", "jj", "kk"
  (key-chord-define-global "zx" 'execute-extended-command)
  (key-chord-define-global "]\\" 'undo)
  (key-chord-define-global "hj" 'keyboard-quit)
  (key-chord-define-global "jk" 'indent-for-tab-command)
  (key-chord-define-global "1`" 'other-window)
  (key-chord-define-global "qw" 'delete-other-windows))

(use-package typo
  :hook ((text-mode org-mode) . typo-mode)
  :config
  (setq-default typo-language "English")
  (define-typo-cycle typo-cycle-single-quotation-mark
    "Cycle through right and left single quotes and typewriter apostrophe."
    ("’" "‘" "'"))
  :bind
  (:map global-map
        ("C-c t" . typo-mode))
  (:map typo-mode-map
        ("'" . typo-cycle-single-quotation-mark)
        ("`" . nil)))

(use-package org
  :commands org-mode
  :custom
  (org-startup-folded nil)
  (org-startup-indented t))

(use-package projectile
  :ensure t
  :init
  (setq
   projectile-indexing-method 'hybrid
   projectile-use-git-grep t)
  :config
  (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
  (projectile-mode +1))

(use-package ivy
  :init
  (setq projectile-completion-system 'ivy)
  :bind
  (:map ivy-minibuffer-map
        ("TAB" . 'ivy-partial)))

(use-package magit
  :commands magit-status
  :bind (("C-c m" . magit-status))
  :init
  (setq
   magit-save-repository-buffers nil
   magit-revert-buffers 'silent
   magit-branch-prefer-remote-upstream t))

(use-package git-gutter
  :commands git-gutter-mode
  :hook
  (find-file . (lambda ()
                 (when (vc-backend (buffer-file-name))
                   (git-gutter-mode 1))))
  :custom-face
  (git-gutter:added
   ((t (:inverse-video nil :foreground "green3"))))
  (git-gutter:deleted
   ((t (:inverse-video nil :foreground "tomato1"))))
  (git-gutter:modified
   ((t (:inverse-video nil :foreground "SkyBlue2"))))
  :custom
  (git-gutter:added-sign "+")
  (git-gutter:deleted-sign "×")
  (git-gutter:modified-sign "~")
  (git-gutter:lighter "")
  (git-gutter:hide-gutter t)
  (git-gutter:verbosity 0))

(use-package whitespace
  :hook (find-file . whitespace-mode)
  :init
  (setq whitespace-style '(face trailing tabs tab-mark)
        whitespace-display-mappings '((tab-mark 9 [8594 9]))))

(use-package js
  :mode (("\\.js\\'" . js-mode)
         ("\\.es[56]\\'" . js-mode))
  :init
  (setq
   js-indent-level 2))

(use-package coffee-mode
  :mode "\\.coffee\\'"
  :commands coffee-mode
  :init
  (setq
   coffee-tab-width 2))

(use-package typescript-mode
  :mode "\\.ts\\'"
  :commands typescript-mode
  :init
  (setq
   typescript-indent-level 2))

(use-package ruby-mode
  :mode "\\.rb\\'"
  :commands ruby-mode
  :init
  (setq ruby-insert-encoding-magic-comment nil)
  :config
  (when (require 'rvm nil t)
    (rvm-autodetect-ruby)))

(use-package flycheck
  :hook (python-mode . flycheck-mode)
  :init
  (setq
   flycheck-python-pycompile-executable "python3"))

(use-package python
  :mode "\\.py\\'"
  :commands python-mode
  :init
  (setq
   python-indent-offset 2))

(use-package css-mode
  :mode (("\\.css\\'" . css-mode)
         ("\\.scss\\'" . css-mode))
  :commands (css-mode scss-mode)
  :init
  (setq
   css-indent-offset 2
   scss-compile-at-save nil))

(use-package web-mode
  :mode ("\\.vue\\'" . web-mode)
  :init
  (setq web-mode-script-padding 2
        web-mode-style-padding 2
        web-mode-block-padding 2
        web-mode-enable-auto-pairing nil))

(use-package emmet-mode
  :hook ((web-mode vue-mode html-mode) . emmet-mode)
  :init
  (setq emmet-indentation 2
        emmet-self-closing-tag-style " /")
  :config
  (define-key emmet-mode-keymap (kbd "C-j") nil))

(use-package autoinsert
  :hook (find-file . auto-insert-mode)
  :init
  (setq
   auto-insert-directory (dir-join emacs-conf-dir "auto-insert/")
   auto-insert-query nil)
  :config
  (define-auto-insert "\\.vue\\'" "template.vue")
  (define-auto-insert "\\.html\\'" "template.html"))

(use-package exec-path-from-shell
  :init
  (setq
   exec-path-from-shell-arguments (list "-l"))
  :config
  (when (memq window-system '(mac ns))
    (exec-path-from-shell-initialize)))

(use-package add-node-modules-path
  :disabled
  :after
  (web-mode)
  :config
  (add-hook 'web-mode-hook #'add-node-modules-path))

(use-package grep
  :defer t
  :commands grep
  :init
  (setq grep-command
        (cond
         ((executable-find "ag")
          "ag --filename --silent --nogroup --nocolor --smart-case ")
         ((executable-find "ack")
          "ack -Hs --nogroup --nocolor --smart-case ")
         (t
          "grep -Hs --line-number --recursive --ignore-case "))))

(use-package replace
  :ensure nil
  :bind (("C-c r" . replace-string)
         ("C-c M-r" . replace-regexp)))

(use-package ffap
  :bind (("C-c C-x C-f" . find-file-at-point)))

(use-package calc
  :bind (("M-#" . calc)))

(use-package abbrev
  :ensure nil
  :bind (("M-'" . expand-abbrev)))

(use-package align
  :bind (("M-=" . align-regexp)))
