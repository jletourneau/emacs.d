(when (and (boundp 'preferred-theme)
           (member preferred-theme (custom-available-themes)))
  (load-theme preferred-theme))
