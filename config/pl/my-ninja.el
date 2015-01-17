(require 'my-util)

(use-package ninja-mode
  :ensure ninja-mode
  :config
    (progn
      (add-hook 'ninja-mode-hook 'turn-on-linum)))

(provide 'my-ninja)
