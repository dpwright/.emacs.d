(use-package company
  :ensure company
  :config
    (progn
      (add-hook 'after-init-hook 'global-company-mode)))

(provide 'my-company)
