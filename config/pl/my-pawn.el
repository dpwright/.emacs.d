(add-to-list 'load-path "~/.emacs.d/contrib/sourcepawn-mode")
(autoload 'sourcepawn-mode "sourcepawn-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.p\\'" . sourcepawn-mode))
(add-to-list 'auto-mode-alist '("\\.inc\\'" . sourcepawn-mode))

(provide 'my-pawn)
