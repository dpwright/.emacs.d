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
      (setq evil-want-C-u-scroll t)
      (evil-mode 1))
  :config
    (progn
      (define-key evil-normal-state-map (kbd "C-h") 'evil-window-left)
      (define-key evil-normal-state-map (kbd "C-j") 'evil-window-down)
      (define-key evil-normal-state-map (kbd "C-k") 'evil-window-up)
      (define-key evil-normal-state-map (kbd "C-l") 'evil-window-right)
      (evil-define-key 'normal emacs-lisp-mode-map (kbd "K")
        'elisp-slime-nav-describe-elisp-thing-at-point)))

(use-package evil-jumper
  :ensure evil-jumper
  :init
    (require 'evil-jumper))

(provide 'my-evil)
