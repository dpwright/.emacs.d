(use-package minimal-theme
  :ensure minimal-theme
  :init
    (progn
      (load-theme 'minimal t)

      (let ((comment-font (find-available-font
                           '("CMU Concrete"
                             "CMU Serif"
                             "Georgia"))))
        (dolist (face '(font-lock-comment-face
                        font-lock-comment-delimiter-face))
          (set-face-foreground face "gray60")
          (set-face-italic     face t)
          (set-face-font       face (concat comment-font " 14"))))

      (set-face-background 'hl-line "MediumPurple4")))

(use-package rainbow-blocks
  :ensure rainbow-blocks)

(provide 'my-colours)
