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

; Place all auto-saves and backup files in the system's
; temporary directory
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

; Live dangerously
(setq make-backup-files nil)

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

; Highlight current line
(global-hl-line-mode)

; Show whitespace
(require 'whitespace)
(setq whitespace-style
  '(tab-mark space-before-tab newline))
(global-whitespace-mode 1)

; Hide ^M from mixed-line-ending files
(defun remove-dos-eol ()
  "Do not show ^M in files containing mixed UNIX and DOS line endings."
  (interactive)
  (setq buffer-display-table (make-display-table))
  (aset buffer-display-table ?\^M []))
(add-hook 'text-mode-hook 'remove-dos-eol)

; Make scrolling nicer
(setq scroll-step           1
      scroll-conservatively 10000)

; Don't change directories when opening files
; From: http://stackoverflow.com/questions/2626963/how-to-make-emacs-stay-in-the-current-directory
(defmacro disallow-cd-in-function (fun)
  "Prevent FUN (or any function that FUN calls) from changing directory."
  `(defadvice ,fun (around dissallow-cd activate)
     (let ((old-dir default-directory) ; Save old directory
           (new-buf ad-do-it)) ; Capture new buffer
       ;; If FUN returns a buffer, operate in that buffer in addition
       ;; to current one.
       (when (bufferp new-buf)
         (set-buffer new-buf)
         (setq default-directory old-dir))
       ;; Set default-directory in the current buffer
       (setq default-directory old-dir))))

(disallow-cd-in-function find-file-noselect-1)
(disallow-cd-in-function set-visited-file-name)

; Turn off bell
(setq visible-bell t)

; Bury the compilation buffer on success
; From here: http://stackoverflow.com/questions/11043004/emacs-compile-buffer-auto-close
(defun bury-compile-buffer-if-successful (buffer string)
  "Bury a compilation buffer if succeeded without warnings "
  (if (and
       (string-match "compilation" (buffer-name buffer))
       (string-match "finished" string)
       (not
        (with-current-buffer buffer
          (search-forward "warning" nil t))))
      (run-with-timer 1 nil
                      (lambda (buf)
                        (bury-buffer buf)
                        (switch-to-prev-buffer (get-buffer-window buf) 'kill))
                      buffer)))
(add-hook 'compilation-finish-functions 'bury-compile-buffer-if-successful)

(provide 'my-config)
