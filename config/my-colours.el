(use-package minimal-theme
  :ensure minimal-theme
  :init
    (progn
      (load-theme 'minimal-light t)

      (dolist (face '(font-lock-comment-face
                      font-lock-comment-delimiter-face))
        (set-face-italic     face nil)
        (set-face-font       face (font proportional-font 14)))

      (set-background-color "WhiteSmoke")))

(use-package rainbow-blocks
  :ensure rainbow-blocks)

(provide 'my-colours)
