(use-package protobuf-mode
  :ensure protobuf-mode
  :init
    (progn
      (autoload 'protobuf-mode "protobuf-mode"    "Major mode for editing protocol buffer files." t)
      (add-to-list 'auto-mode-alist '("\\.proto$" . protobuf-mode))
      (add-hook 'protobuf-mode-hook (lambda () (linum-mode 1)))))

(provide 'my-protobuf)
