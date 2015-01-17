(require 'my-util)

(setq gdb-many-windows t)
(semantic-mode 1)
(add-hook 'speedbar-load-hook (lambda () (require 'semantic/sb)))
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))
(setq c-default-style "stroustrup")
;(define-key c-mode-base-map (kbd "RET") 'newline-and-indent)
(add-hook 'c-mode-common-hook
  (lambda ()
    (remove-dos-eol)
    (setq-default c-basic-offset 3
                  tab-width 3
                  indent-tabs-mode t)
    (set (make-local-variable 'compile-command) "rake ")
    (turn-on-linum)))

(provide 'my-c-cpp)
