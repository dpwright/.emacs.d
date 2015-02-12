(use-package minimal-theme
  :ensure minimal-theme
  :init
    (progn
      (load-theme 'minimal-light t)

      (dolist (face '(font-lock-comment-face
                      font-lock-comment-delimiter-face))
        (set-face-attribute face nil :inherit 'variable-pitch))

      (set-background-color "WhiteSmoke")))

(use-package rainbow-blocks
  :ensure rainbow-blocks)

(provide 'my-colours)
