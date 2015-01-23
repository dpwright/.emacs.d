(require 'my-util)

(use-package fsharp-mode
  :ensure fsharp-mode
  :init
    (progn
      (autoload 'fsharp-mode "fsharp-mode"    "Major mode for editing F# code." t)
      (add-to-list 'auto-mode-alist '("\\.fs[iylx]?$" . fsharp-mode))
      (add-hook 'fsharp-mode-hook 'turn-on-linum)))

(provide 'my-fsharp)
