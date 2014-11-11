; Meta key settings for mac
(setq mac-option-modifier 'none)
(setq mac-command-modifier 'meta)

; elisp-slime navigation in eldocs
(require 'elisp-slime-nav)
(defun my-lisp-hook ()
  (elisp-slime-nav-mode)
  (turn-on-eldoc-mode))
(add-hook 'emacs-lisp-mode-hook 'my-lisp-hook)

; Hide startup messages
(setq inhibit-splash-screen t
      inhibit-startup-echo-area-message t
      inhibit-startup-message t)

; Better word wrapping
(visual-line-mode 1)

; Enforce trailing newlines
(setq require-final-newline t)

; Hide the toolbar
(tool-bar-mode -1)

; place all auto-saves and backup files in the system's
; temporary directory
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

; Don't blink the cursor
(blink-cursor-mode nil)

; Hide scrollbars
(set-scroll-bar-mode nil)

(provide 'my-config)
