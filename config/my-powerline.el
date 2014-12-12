(use-package powerline
  :ensure powerline
  :init
    (require 'powerline)
  :config
    (after 'elscreen
      (progn
;        (setq powerline-default-separator 'slant)
        (powerline-vim-theme))))

(provide 'my-powerline)
