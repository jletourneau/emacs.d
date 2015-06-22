;; Extracted this to the terminal-only file so that the GUI theme can
;; define its own colors for these faces without having them overridden
;; when git-gutter-mode loads up. Can be removed if we stop using themes.
(after-load
  'git-gutter
  (set-face-foreground 'git-gutter:added "green")
  (set-face-foreground 'git-gutter:deleted "red")
  (set-face-foreground 'git-gutter:modified "blue"))
