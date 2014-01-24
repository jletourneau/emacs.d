(define-key global-map (kbd "<backtab>") 'hippie-expand)
(define-key global-map (kbd "C-a") 'beginning-of-line-dwim)
(define-key global-map (kbd "C-z") 'undo)
(define-key global-map (kbd "C-c r") 'replace-string)
(define-key global-map (kbd "C-c t") 'typo-mode)
(define-key global-map (kbd "C-c w") 'delete-trailing-whitespace)
(define-key global-map (kbd "C-c \\") 'toggle-truncate-lines)
(define-key global-map (kbd "C-c M-r") 'replace-regexp)
(define-key global-map (kbd "<C-tab>") 'other-window)
(define-key global-map (kbd "<C-S-tab>") 'other-frame)
(define-key global-map (kbd "C-c C-x C-f") 'find-file-at-point)
(define-key global-map (kbd "M-#") 'calc)
(define-key global-map (kbd "M-'") 'expand-abbrev)
(define-key global-map (kbd "M-+") 'count-lines-region)
(define-key global-map (kbd "M-=") 'align-regexp)
(define-key global-map (kbd "M-g") 'goto-line)
(define-key global-map (kbd "M-Q") 'unfill-paragraph)

;; Keybindings for commands in add-on packages
(define-key global-map (kbd "C-c m") 'magit-status)

(add-hook
 'dired-load-hook
 (lambda ()
  (define-key dired-mode-map (kbd "C-c C-f") 'find-name-dired)
  (define-key dired-mode-map (kbd "C-c C-o") 'dired-system-open)))
