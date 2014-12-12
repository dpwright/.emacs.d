(use-package ninja-mode
  :ensure ninja-mode
  :config
    (progn
      (add-hook 'ninja-mode-hook (lambda () (linum-mode 1)))))

(provide 'my-ninja)
