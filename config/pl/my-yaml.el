(require 'my-util)

(use-package yaml-mode
  :ensure yaml-mode
  :config
    (progn
      (add-hook 'yaml-mode-hook 'turn-on-linum)))

(provide 'my-yaml)
