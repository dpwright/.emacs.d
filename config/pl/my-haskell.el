(require 'my-util)

(use-package haskell-mode
  :ensure haskell-mode
  :config
    (progn
      (eval-after-load "haskell-mode"
          '(define-key haskell-mode-map (kbd "C-c C-c") 'haskell-compile))

      (eval-after-load "haskell-cabal"
          '(define-key haskell-cabal-mode-map (kbd "C-c C-c") 'haskell-compile))

      (eval-after-load "evil"
        '(progn
          (evil-define-key 'insert haskell-interactive-mode-map (kbd "RET") 'haskell-interactive-mode-return)
          (evil-define-key 'normal haskell-interactive-mode-map (kbd "RET") 'haskell-interactive-mode-return)))

      (define-key haskell-mode-map (kbd "C-x C-d") nil)
      (define-key haskell-mode-map (kbd "C-c C-z") 'haskell-interactive-switch)
      (define-key haskell-mode-map (kbd "C-c C-l") 'haskell-process-load-file)
      (define-key haskell-mode-map (kbd "C-c C-b") 'haskell-interactive-switch)
      (define-key haskell-mode-map (kbd "C-c C-t") 'haskell-process-do-type)
      (define-key haskell-mode-map (kbd "C-c C-i") 'haskell-process-do-info)
      (define-key haskell-mode-map (kbd "C-c M-.") nil)
      (define-key haskell-mode-map (kbd "C-c C-d") nil)

      (add-hook 'haskell-mode-hook 'turn-on-linum)
      (add-hook 'haskell-mode-hook (lambda () (setq tab-width 1)))
      (add-hook 'interactive-haskell-mode-hook (lambda () (linum-mode 0)))

      (custom-set-variables
        '(haskell-process-type 'cabal-repl))))


(use-package flycheck-haskell
  :ensure flycheck-haskell
  :config
    (progn
      (eval-after-load 'flycheck
        '(add-hook 'flycheck-mode-hook #'flycheck-haskell-setup))))

(provide 'my-haskell)
