(use-package cmake-mode
  :ensure cmake-mode
  :config
    (progn
      (add-hook 'cmake-mode-hook (lambda () (linum-mode 1)))))

(use-package cpputils-cmake
  :ensure cpputils-cmake)

(provide 'my-cmake)
