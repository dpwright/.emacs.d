(use-package exec-path-from-shell
  :ensure exec-path-from-shell
  :config
    (progn
      (when (memq window-system '(mac ns))
        (exec-path-from-shell-initialize))))

(provide 'my-env)
