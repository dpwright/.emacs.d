(use-package bat-mode
  :ensure bat-mode
  :init
    (progn
      (add-to-list 'auto-mode-alist '("\\.bat\\'" . bat-mode))
      (add-hook 'haskell-mode-hook 'turn-on-linum)))

(provide 'my-bat)
