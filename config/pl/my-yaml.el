(use-package yaml-mode
  :ensure yaml-mode
  :config
    (progn
      (add-hook 'yaml-mode-hook (lambda () (linum-mode 1)))))

(provide 'my-yaml)
