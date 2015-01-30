(use-package minimal-theme
  :ensure minimal-theme
  :init
    (progn
      (load-theme 'minimal t)

      (dolist (face '(font-lock-comment-face
                      font-lock-comment-delimiter-face))
        (set-face-foreground face "gray60")
        (set-face-italic     face nil)
        (set-face-font       face (font proportional-font 14)))

      (set-face-background 'hl-line "MediumPurple4")))

(use-package rainbow-blocks
  :ensure rainbow-blocks)

(provide 'my-colours)
