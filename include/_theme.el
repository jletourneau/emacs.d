(let ((preferred-theme 'zenburn))
  (when (member preferred-theme (custom-available-themes))
    (load-theme preferred-theme)))
