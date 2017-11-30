(let ((preferred-theme
       (if (display-graphic-p) 'zenburn 'wombat)))
  (when (member preferred-theme (custom-available-themes))
    (load-theme preferred-theme)))

;; UI settings that are either applied to both terminal and GUI Emacs (e.g.
;; italic comments) or that are irrelevant to one or the other and so can be
;; run either way (e.g. setting default font size)

(set-face-attribute 'default nil
                    :weight 'normal
                    :height 140)

(set-face-attribute 'font-lock-comment-face nil
                    :slant 'italic)

(set-face-attribute 'font-lock-comment-delimiter-face nil
                    :slant 'italic)
