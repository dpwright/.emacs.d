(use-package bat-mode
  :ensure bat-mode
  :init
    (progn
      (add-to-list 'auto-mode-alist '("\\.bat\\'" . bat-mode))
      (add-hook 'bat-mode-hook (lambda () (linum-mode 1)))))

(provide 'my-bat)
