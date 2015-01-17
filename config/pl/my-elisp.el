(add-hook 'emacs-lisp-mode-hook 'rainbow-blocks-mode)
(add-hook 'emacs-lisp-mode-hook
          '(lambda()
            (setq c-basic-offset 2)
            (setq indent-tabs-mode nil)))

(provide 'my-elisp)
