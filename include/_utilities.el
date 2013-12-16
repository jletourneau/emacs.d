;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Configuration pertaining to system software outside of Emacs

;; Set up load path
(when (and (memq window-system '(mac ns))
           (fboundp 'exec-path-from-shell-initialize))
  (exec-path-from-shell-initialize))

;; Use GNU ls if available for dired support
(when (executable-find "gls")
  (setq insert-directory-program "gls")
  (setq dired-listing-switches
        "-l --all --group-directories-first --si"))

;; Use ag or ack in preference to grep if available
(setq grep-command
      (cond
       ((executable-find "ag")
        "ag --nogroup --nocolor --smart-case ")
       ((executable-find "ack")
        "ack --nogroup --nocolor --smart-case ")
       (t
        "grep --line-number --recursive --ignore-case ")))
