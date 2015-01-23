(use-package minimal-theme
  :ensure minimal-theme
  :init
    (progn
      (load-theme 'minimal t)

      (let ((comment-font (find-available-font
                           '("CMU Serif"
                             "CMU Concrete"
                             "Georgia"))))
        (dolist (face '(font-lock-comment-face
                        font-lock-comment-delimiter-face))
          (set-face-foreground face "gray60")
          (set-face-italic     face nil)
          (set-face-font       face (concat comment-font " 16"))))

      (set-face-background 'hl-line "MediumPurple4")))

(use-package rainbow-blocks
  :ensure rainbow-blocks)

(provide 'my-colours)
