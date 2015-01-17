(require 'my-util)

(use-package lua-mode
  :ensure lua-mode
  :config
    (progn
      (add-hook 'lua-mode-hook 'turn-on-linum)))

(provide 'my-lua)
