(use-package fsharp-mode
  :ensure fsharp-mode
  :init
    (progn
      (autoload 'fsharp-mode "fsharp-mode"    "Major mode for editing F# code." t)
      (add-to-list 'auto-mode-alist '("\\.fs[iylx]?$" . fsharp-mode))))

(provide 'my-fsharp)
