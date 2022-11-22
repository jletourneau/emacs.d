;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Basic tablesetting

(add-to-list 'load-path (expand-file-name "include" user-emacs-directory))
(load "_defuns")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Bootstrap straight and use-package

(load "_bootstrap")
(straight-use-package 'use-package)
(setq straight-use-package-by-default t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Non-package-specific config

(defconst IS-GUI (display-graphic-p))
(defconst IS-MAC (string= system-type "darwin"))

(setq
 auto-save-list-file-prefix
 (expand-file-name ".autosave/save-" user-emacs-directory)
 completion-ignore-case t
 frame-title-format '(buffer-file-name "%f" ("%b"))
 hourglass-delay 2
 inhibit-default-init t
 inhibit-splash-screen t
 inhibit-startup-echo-area-message user-login-name
 ring-bell-function 'ignore
 standard-indent 2
 use-dialog-box nil
 scroll-conservatively 20
 scroll-margin 8
 scroll-preserve-screen-position t
 default-directory "~/"
 default-input-method "latin-1-postfix"
 delete-by-moving-to-trash t)

(when IS-MAC
  (setq
   ns-control-modifier 'control
   ns-right-control-modifier 'control
   ns-alternate-modifier 'meta
   ns-right-alternate-modifier 'meta
   ns-command-modifier 'meta
   ns-right-command-modifier 'meta
   ns-function-modifier 'super))

(setq-default
 fill-column 79
 tab-width 8
 indent-tabs-mode nil
 indicate-buffer-boundaries 'left
 truncate-lines t)

(add-to-list 'default-frame-alist '(line-spacing . 0))
(add-to-list 'default-frame-alist '(width . 95))
(add-to-list 'default-frame-alist '(height . 40))
(add-to-list 'default-frame-alist '(right-fringe . 0))

(set-language-environment "UTF-8")
(set-default-coding-systems 'utf-8)

(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
(put 'narrow-to-region 'disabled nil)
(put 'suspend-frame 'disabled t)

(defalias 'grpe 'grep)

(global-set-key (kbd "C-j") 'indent-for-tab-command)
(global-set-key (kbd "<C-tab>") 'other-window)
(global-set-key (kbd "<f15>") 'jal/kill-current-buffer)

(when (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(when (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(when (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(when (fboundp 'tooltip-mode) (tooltip-mode -1))

(add-hook 'kill-buffer-query-functions 'jal/kill-buffer-query)

(when IS-GUI
  (load "_fonts"))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Per-package configs

(use-package comp
  :straight (:type built-in)
  :init
  (setq
   native-comp-async-report-warnings-errors nil))

(use-package exec-path-from-shell
  ;; emacs-plus 28 and up inject $PATH during build
  :disabled (>= emacs-major-version 28)
  :init
  (setq
   exec-path-from-shell-arguments (list "-l"))
  :config
  (when (memq window-system '(mac ns))
    (exec-path-from-shell-initialize)))

(use-package zenburn-theme
  :config
  (load-theme 'zenburn t)
  (unless IS-GUI
    (set-face-background 'default "unspecified-bg")))

(use-package hl-line
  :if IS-GUI
  :straight (:type built-in)
  :hook (find-file . hl-line-mode))

(use-package mouse
  :if IS-GUI
  :straight (:type built-in)
  :init
  (setq
   mouse-yank-at-point t))

(use-package mwheel
  :if IS-GUI
  :straight (:type built-in)
  :init
  (setq
   mouse-wheel-progressive-speed t
   mouse-wheel-scroll-amount '(1)))

(use-package ns-win
  :if IS-GUI
  :straight (:type built-in)
  :init
  (setq
   ns-pop-up-frames nil))

(use-package files
  :straight (:type built-in)
  :custom
  (auto-save-file-name-transforms `((".*" ,temporary-file-directory t)))
  (backup-directory-alist
   `(("." .,(expand-file-name ".backup" user-emacs-directory))))
  (confirm-kill-emacs 'y-or-n-p)
  (magic-mode-alist '())
  (require-final-newline t)
  (save-abbrevs nil)
  (trash-directory (expand-file-name "~/.Trash")))

(use-package cus-edit
  :straight (:type built-in)
  :init
  (setq
   custom-file
   (expand-file-name "include/_local_custom.el" user-emacs-directory)))

(use-package simple
  :straight (:type built-in)
  :bind (("C-z" . undo)
         ("C-c w" . delete-trailing-whitespace)
         ("C-c \\" . toggle-truncate-lines)
         ("C-c RET" . execute-extended-command)
         ("M-+" . count-words-region)
         ("M-g" . goto-line)
         ("M-z" . undo)
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
  (setq
   ido-vertical-define-keys 'C-n-and-C-p-only
   ido-vertical-indicator " »")
  :config
  (ido-vertical-mode 1))

(use-package flx-ido
  :requires ido
  :config
  (flx-ido-mode 1))

(use-package solar
  :straight (:type built-in)
  :custom
  (calendar-latitude 42.73)
  (calendar-longitude -73.69)
  (calendar-location-name "Troy, NY"))

(use-package calendar
  :straight (:type built-in)
  :commands calendar
  :custom
  (holiday-bahai-holidays nil)
  (holiday-hebrew-holidays nil)
  (holiday-islamic-holidays nil)
  (holiday-oriental-holidays nil))

(use-package dired
  :straight (:type built-in)
  :bind (("C-c C-f" . find-name-dired)
         :map dired-mode-map ("z" . jal/macos-open))
  :config
  (put 'dired-find-alternate-file 'disabled nil)
  (when (executable-find "gls")
    (setq
     insert-directory-program "gls"
     dired-listing-switches "-Gal --group-directories-first --si")))

(use-package delsel
  :straight (:type built-in)
  :config
  (delete-selection-mode 1))

(use-package elec-pair
  :straight (:type built-in)
  :config
  (electric-pair-mode 1))

(use-package paren
  :straight (:type built-in)
  :init
  (setq
   show-paren-style 'parenthesis)
  :config
  (show-paren-mode 1))

(use-package frame
  :straight (:type built-in)
  :bind (("<C-S-tab>" . other-frame))
  :config
  (blink-cursor-mode -1))

(use-package electric
  :straight (:type built-in)
  :hook (ruby-mode . electric-indent-local-mode)
  :config
  (electric-indent-mode -1))

(use-package uniquify
  :straight (:type built-in)
  :custom
  (uniquify-buffer-name-style 'forward)
  (uniquify-strip-common-suffix t))

(use-package misc
  :straight (:type built-in)
  :bind (("C-M-z" . zap-up-to-char)))

(use-package key-chord
  :config
  (key-chord-mode 1)
  (key-chord-define-global "jj" 'ido-find-file)
  (key-chord-define-global "kk" 'ido-switch-buffer)
  (key-chord-define-global "qp" 'jal/kill-current-buffer)
  (key-chord-define-global "zx" 'execute-extended-command)
  (key-chord-define-global "]\\" 'undo)
  (key-chord-define-global "1`" 'other-window)
  (key-chord-define-global "2`" 'delete-other-windows)
  (key-chord-define-global "3`" 'split-window-below)
  (key-chord-define-global "qw" 'projectile-command-map))

(use-package use-package-chords)

(use-package typo
  :hook ((text-mode org-mode gfm-mode) . typo-mode)
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
  :init
  (setq org-element-cache-persist nil)
  :custom
  (org-startup-folded nil)
  (org-startup-indented t))

(use-package markdown-mode
  :commands gfm-mode
  :mode (("\\.md\\'" . gfm-mode))
  :init
  (setq
   markdown-command "markdown"))

(use-package recentf
  :bind (("C-x M-f" . recentf-open-files))
  :init
  (setq
   recentf-save-file (locate-user-emacs-file ".recentf")
   recentf-max-saved-items 500
   recentf-max-menu-items 15)
  :config
  (recentf-mode +1))

(use-package projectile
  :init
  (setq
   projectile-indexing-method 'hybrid
   projectile-use-git-grep t
   projectile-cache-file
   (locate-user-emacs-file (convert-standard-filename ".projectile.d/cache"))
   projectile-known-projects-file
   (locate-user-emacs-file (convert-standard-filename ".projectile.d/bookmarks.eld")))
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
  ;; Keybindings recommended in Magit docs:
  :bind (("C-x g" . magit-status)
         ("C-x M-g" . magit-dispatch)
         ("C-c g" . magit-file-dispatch))
  :init
  (setq
   magit-define-global-key-bindings t
   magit-save-repository-buffers nil
   magit-revert-buffers 'silent
   magit-branch-prefer-remote-upstream t
   transient-levels-file
   (locate-user-emacs-file
    (convert-standard-filename ".transient/levels.el"))
   transient-values-file
   (locate-user-emacs-file
    (convert-standard-filename ".transient/values.el"))
   transient-history-file
   (locate-user-emacs-file
    (convert-standard-filename ".transient/history.el"))))

;; GitHub credentials for Forge are stored in ~/.authinfo --
;; see https://magit.vc/manual/ghub/Storing-a-Token.html
(use-package forge
  :after magit)

(use-package git-link
  :bind (("C-c u" . git-link))
  :init
  (setq
   git-link-open-in-browser t))

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
  :straight (:type built-in)
  :hook (find-file . whitespace-mode)
  :init
  (setq whitespace-style '(face trailing tabs tab-mark)
        whitespace-display-mappings '((tab-mark 9 [8594 9]))))

(use-package display-line-numbers
  :straight (:type built-in)
  :hook (find-file . display-line-numbers-mode)
  :init
  (setq display-line-numbers-type t))

(use-package which-key
  :config
  (which-key-mode))

(use-package js
  :straight (:type built-in)
  :mode (("\\.[cm]?js\\'" . js-mode)
         ("\\.es[56]\\'" . js-mode))
  :init
  (setq
   js-indent-level 2
   js-switch-indent-offset js-indent-level))

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
  :straight (:type built-in)
  :mode "\\.rb\\'"
  :commands ruby-mode
  :init
  (setq ruby-insert-encoding-magic-comment nil)
  :config
  (when (require 'rvm nil t)
    (rvm-autodetect-ruby)))

(use-package python
  :straight (:type built-in)
  :commands python-mode
  :init
  (setq
   python-indent-offset 2
   python-indent-guess-indent-offset-verbose nil
   python-shell-interpreter (cond ((executable-find "python3") "python3")
                                  ((executable-find "python2") "python2")
                                  (t "python"))))

(use-package haml-mode)
(use-package sass-mode)

(use-package css-mode
  :straight (:type built-in)
  :mode (("\\.css\\'" . css-mode)
         ("\\.scss\\'" . css-mode))
  :commands (css-mode scss-mode)
  :init
  (setq
   css-indent-offset 2
   scss-compile-at-save nil))

(use-package web-mode
  :mode
  (("\\.html\\'" . web-mode)
   ("\\.vue\\'" . jal/vue-web-mode))
  :bind
  (("<C-return>" . web-mode-element-insert-at-point))
  :init
  (define-derived-mode jal/vue-web-mode web-mode "VueJS")
  (setq web-mode-part-padding 2
        web-mode-auto-close-style 2
        web-mode-enable-auto-indentation nil
        web-mode-enable-auto-pairing nil))

(use-package eglot
  :hook
  (eglot-server-initialized . flymake-mode)
  :config
  (defclass eglot-volar (eglot-lsp-server) ()
    :documentation "Volar Language Server for Vue")
  (cl-defmethod eglot-initialization-options ((server eglot-volar))
    "Required initialization options for Volar"
    `(:typescript
      (:tsdk
       ,(let ((project-typescript-lib
               (expand-file-name
                (concat (project-root (project-current))
                        "node_modules/typescript/lib"))))
          (if (file-directory-p project-typescript-lib)
              project-typescript-lib
            "/usr/local/lib/node_modules/typescript/lib")))
      :languageFeatures
      (:references
       t
       :definition t
       :typeDefinition t
       :hover t
       :rename t
       :signatureHelp t
       :completion (:defaultTagNameCase "both" :defaultAttrNameCase "kebabCase")
       :documentHighlight t
       :workspaceSymbol t
       :codeAction t
       :diagnostics t)
      :documentFeatures
      (:documentSymbol t)))
  (add-to-list
   'eglot-server-programs
   '(jal/vue-web-mode . (eglot-volar "vue-language-server" "--stdio"))))

(use-package flycheck
  :hook
  (python-mode . flycheck-mode)
  (jal/vue-web-mode . (lambda ()
                        (setq flycheck-checker 'javascript-eslint)
                        (flycheck-mode)))
  :bind
  (("s-[" . flycheck-previous-error)
   ("s-]" . flycheck-next-error)
   ("s-\\" . flycheck-list-errors))
  :init
  (setq
   flycheck-python-pycompile-executable "python3"
   flycheck-check-syntax-automatically '(save idle-change mode-enabled)
   flycheck-idle-change-delay 1.0
   flycheck-stylelintrc '(".stylelintrc"
                          ".stylelintrc.json"
                          "stylelint.config.js"))
  (when (executable-find "eslint_d")
    (setq flycheck-javascript-eslint-executable "eslint_d"))
  :config
  (flycheck-add-mode 'javascript-eslint 'jal/vue-web-mode)
  (flycheck-add-mode 'css-stylelint 'jal/vue-web-mode)
  (flycheck-add-next-checker 'javascript-eslint 'css-stylelint))

(use-package eslintd-fix
  :if (executable-find "eslint_d")
  :hook
  (jal/vue-web-mode . eslintd-fix-mode))

(use-package add-node-modules-path
  :hook
  (web-mode . add-node-modules-path))

(use-package autoinsert
  :straight (:type built-in)
  :hook (find-file . auto-insert-mode)
  :init
  (setq
   auto-insert-directory
   (expand-file-name "auto-insert/" user-emacs-directory)
   auto-insert-query nil)
  :config
  (define-auto-insert "\\.vue\\'" "template.vue")
  (define-auto-insert "\\.html\\'" "template.html"))

(use-package grep
  :straight (:type built-in)
  :commands grep
  :init
  (setq
   grep-save-buffers nil
   grep-command
   (cond
    ((executable-find "rg")
     "rg --with-filename --no-heading --color never --smart-case ")
    ((executable-find "ag")
     "ag --filename --silent --nogroup --nocolor --smart-case ")
    ((executable-find "ack")
     "ack -Hs --nogroup --nocolor --smart-case ")
    (t
     "grep -Hs --line-number --recursive --ignore-case "))))

(use-package rg
  :if (executable-find "rg")
  :hook (after-init . rg-enable-default-bindings))

(use-package replace
  :straight (:type built-in)
  :bind (("C-c r" . replace-string)
         ("C-c M-r" . replace-regexp)))

(use-package ffap
  :straight (:type built-in)
  :bind (("C-c C-x C-f" . find-file-at-point)))

(use-package calc
  :straight (:type built-in)
  :bind (("M-#" . calc)))

(use-package abbrev
  :straight (:type built-in)
  :bind (("M-'" . expand-abbrev)))

(use-package align
  :straight (:type built-in)
  :bind (("M-=" . align-regexp)))

(use-package server
  :if IS-GUI
  :straight (:type built-in)
  :hook (emacs-startup . (lambda ()
                           (unless (server-running-p)
                             (server-start)))))

(use-package time
  :straight (:type built-in)
  :hook
  (after-init . (lambda ()
                  (message
                   (format "Emacs init time: %s" (emacs-init-time))))))
