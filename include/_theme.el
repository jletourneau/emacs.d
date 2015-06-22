(let ((preferred-theme 'zenburn))

  (when (member preferred-theme (custom-available-themes))
    (load-theme preferred-theme)))

;; Zenburn sets inverse video on the git-gutter faces. No me gusta. We can run
;; this whether or not the theme loads, so it's outside the "let" block above.
(after-load
  'git-gutter
  (set-face-inverse-video-p 'git-gutter:added nil)
  (set-face-inverse-video-p 'git-gutter:deleted nil)
  (set-face-inverse-video-p 'git-gutter:modified nil))
