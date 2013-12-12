;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Configuration pertaining to system software outside of Emacs

;; Set up load path
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

;; Use GNU ls if available for dired support
(when (executable-find "gls")
  (setq insert-directory-program "gls")
  (setq dired-listing-switches "-Gahl --group-directories-first"))

;; Use ag or ack in preference to grep if available
(let ((ag  (executable-find "ag"))
      (ack (executable-find "ack")))
  (setq grep-command
        (cond
         (ag  (concat ag  " --nogroup --nocolor --smart-case "))
         (ack (concat ack " --nogroup --nocolor --smart-case "))
         (t "grep --line-number --recursive --ignore-case "))))
