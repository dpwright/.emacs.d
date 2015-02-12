(use-package magit
  :ensure magit
  :config
    (progn
      (after 'evil
        (evil-set-initial-state 'magit-mode 'emacs)
        (evil-set-initial-state 'magit-status-mode 'emacs)
        (evil-set-initial-state 'magit-diff-mode 'emacs)
        (evil-set-initial-state 'magit-log-mode 'emacs)

        (evil-add-hjkl-bindings magit-branch-manager-mode-map 'emacs
          "K" 'magit-discard-item
          "L" 'magit-key-mode-popup-logging)
        (evil-add-hjkl-bindings magit-status-mode-map 'emacs
          "K" 'magit-discard-item
          "l" 'magit-key-mode-popup-logging
          "h" 'magit-toggle-diff-refine-hunk)
        (evil-add-hjkl-bindings magit-log-mode-map 'emacs)
        (evil-add-hjkl-bindings magit-commit-mode-map 'emacs)

        (evil-define-key 'emacs magit-mode-map
          "C-w h" 'evil-window-left
          "C-w j" 'evil-window-down
          "C-w k" 'evil-window-up
          "C-w l" 'evil-window-right)

        (evil-define-key 'emacs magit-status-mode-map
          "C-w h" 'evil-window-left
          "C-w j" 'evil-window-down
          "C-w k" 'evil-window-up
          "C-w l" 'evil-window-right)
        )
      (global-set-key (kbd "C-c g") 'magit-status)
      (global-set-key (kbd "C-c C-g") 'magit-status)
      ))

(use-package git-timemachine
  :ensure git-timemachine)

(provide 'my-git)
