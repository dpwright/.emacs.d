(require 'my-util)

(use-package cmake-mode
  :ensure cmake-mode
  :config
    (progn
      (add-hook 'cmake-mode-hook 'turn-on-linum)))

(use-package cpputils-cmake
  :ensure cpputils-cmake)

(provide 'my-cmake)
