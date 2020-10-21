(setq
 package-enable-at-startup nil
 frame-inhibit-implied-resize t
 gc-cons-threshold (* 128 1024 1024)
 gc-cons-percentage 0.5)

(add-hook
 'emacs-startup-hook
 (lambda ()
   (setq
    gc-cons-threshold (* 20 1024 1024)
    gc-cons-percentage 0.1)
   (garbage-collect)))
