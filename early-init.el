(setq
 package-enable-at-startup nil
 frame-inhibit-implied-resize t
 frame-resize-pixelwise t
 gc-cons-threshold (* 128 1024 1024)
 gc-cons-percentage 0.5)

;; Garbage collect on startup completion
(add-hook
 'emacs-startup-hook
 (lambda ()
   (setq
    gc-cons-threshold (* 64 1024 1024)
    gc-cons-percentage 0.2)
   (garbage-collect)))

;; Garbage collect when Emacs loses focus
(add-hook 'focus-out-hook 'garbage-collect)

;; Garbage collect when Emacs is idle for 5+ seconds
(run-with-idle-timer 5.0 t 'garbage-collect)
