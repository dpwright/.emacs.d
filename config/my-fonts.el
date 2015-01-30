(defun find-available-font (fonts)
  (when fonts
    (let ((font (car fonts)))
      (if (member font (font-family-list))
        font
        (find-available-font (cdr fonts))))))

(defun set-default-font-everywhere (font)
  (set-face-attribute 'default nil :font  font )
  (set-default-font font))

(defvar proportional-font
  (find-available-font '("CMU Serif"
                         "CMU Concrete"
                         "Georgia")))

(defvar monospaced-font
  (find-available-font '("CMU Typewriter Text"
                         "Input"
                         "Monaco"
                         "Droid Sans Mono"
                         "Courier New")))
(defun font (name size)
  (concat name " " (number-to-string size)))

(defun lotr ()
  (interactive)
  (set-default-font-everywhere (font "Luminari" 14)))

(defun mono ()
  (interactive)
  (set-default-font-everywhere (font monospaced-font 14)))
variable-pitch
(defun prop ()
  (interactive)
  (set-default-font-everywhere (font proportional-font 14)))

(mono)

(set-face-font 'variable-pitch (font proportional-font 14))
(set-face-font 'fixed-pitch (font monospaced-font 14))
(add-hook 'text-mode-hook 'variable-pitch-mode)

(provide 'my-fonts)
