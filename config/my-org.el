(use-package org
  :ensure org
  :config
    (progn
      (setq org-log-done t)
      (defun my-adjoin-to-list-or-symbol (element list-or-symbol)
        (let ((list (if (not (listp list-or-symbol))
                        (list list-or-symbol)
                      list-or-symbol)))
              (require 'cl-lib)
              (cl-adjoin element list)))
      (eval-after-load "org"
        '(mapc
          (lambda (face)
            (set-face-attribute
             face nil
             :inherit
             (my-adjoin-to-list-or-symbol
              'fixed-pitch
              (face-attribute face :inherit))))
          (list 'org-code 'org-block 'org-table 'org-block-background)))

      (dolist (face '(org-level-1 org-level-2 org-level-3))
        (set-face-bold face t))
      ))

(use-package evil-org
  :ensure evil-org)

(provide 'my-org)

