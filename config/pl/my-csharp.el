(require 'my-util)

(use-package csharp-mode
  :ensure csharp-mode
  :init
    (progn
      (add-to-list 'auto-mode-alist '("\\.cs$" . csharp-mode))
      (add-hook 'csharp-mode-hook 'turn-on-linum)))

(provide 'my-csharp)
