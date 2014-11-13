; Meta key settings for mac
(setq mac-option-modifier 'none)
(setq mac-command-modifier 'meta)

; elisp-slime navigation in eldocs
(defun my-lisp-hook ()
  (elisp-slime-nav-mode)
  (turn-on-eldoc-mode))

(use-package elisp-slime-nav
  :ensure elisp-slime-nav
  :config
    (progn
      (add-hook 'emacs-lisp-mode-hook 'my-lisp-hook)))

; Hide startup messages
(setq inhibit-splash-screen t
      inhibit-startup-echo-area-message t
      inhibit-startup-message t)

; Better word wrapping
(visual-line-mode 1)

; Enforce trailing newlines
(setq require-final-newline t)

; Hide the toolbar and menubar
(tool-bar-mode -1)
(menu-bar-mode -1)

; place all auto-saves and backup files in the system's
; temporary directory
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

; Don't blink the cursor
(blink-cursor-mode 0)

; Hide scrollbars
(set-scroll-bar-mode nil)

; Don't wrap lines; instead stick a marker at 78 columns
(set-default 'truncate-lines t)
(setq-default fill-column 78)
(use-package fill-column-indicator
  :ensure fill-column-indicator
  :config (fci-mode))

; Display line numbers
(linum-mode)

; Highlight current line
(global-hl-line-mode)

(provide 'my-config)
