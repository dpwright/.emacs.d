(use-package evil-leader
  :commands (evil-leader-mode global-evil-leader-mode)
  :ensure evil-leader
  :demand evil-leader
  :init
    (progn
      (evil-leader/set-leader ",")
      (global-evil-leader-mode t))
  :config
    (progn
      (evil-leader/set-key "e" 'pp-eval-last-sexp)
      (evil-leader/set-key "," 'other-window)
      (evil-leader/set-key "b" 'ibuffer)))

(use-package evil
  :ensure evil
  :init
    (progn
      (evil-mode 1)
      (setq evil-want-C-w-in-emacs-state t))
  :config
    (progn
      (setq evil-want-C-u-scroll t)
      ; evil-want-C-u-scroll doesn't seem to work, so just manually redefining
      (global-unset-key "\C-u")
      (define-key evil-normal-state-map "\C-u" 'evil-scroll-up)

      (setq evil-want-C-w-in-emacs-state t)
      (evil-define-key 'normal emacs-lisp-mode-map (kbd "K")
        'elisp-slime-nav-describe-elisp-thing-at-point)))

(use-package evil-jumper
  :ensure evil-jumper
  :init
    (require 'evil-jumper))

(provide 'my-evil)
