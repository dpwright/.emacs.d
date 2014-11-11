(require 'dired-x)

(defun my-dired-up-directory ()
  "Take dired up one directory, but behave like dired-find-alternate-file"
  (interactive)
  (let ((old (current-buffer)))
    (dired-up-directory)
    (kill-buffer old)))

(after 'evil
  (evil-define-key 'normal dired-mode-map
    "h" 'dired-up-directory
    "l" 'dired-find-alternate-file
    "o" 'dired-sort-toggle-or-edit
    "v" 'dired-toggle-marks
    "m" 'dired-mark
    "u" 'dired-unmark
    "U" 'dired-unmark-all-marks
    "c" 'dired-create-directory
    "n" 'evil-search-next
    "N" 'evil-search-previous
    "q" 'kill-this-buffer
    "h" 'my-dired-up-directory))

; Use emacs' builtin `ls`, because mac `ls` doesn't have `--dired`
(setq ls-lisp-use-insert-directory-program nil)
(require 'ls-lisp)

(provide 'my-dired)
