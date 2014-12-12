(use-package lua-mode
  :ensure lua-mode
  :config
    (progn
      (add-hook 'lua-mode-hook (lambda () (linum-mode 1)))))

(provide 'my-lua)
