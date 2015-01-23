(defun find-available-font (fonts)
  (when fonts
    (let ((font (car fonts)))
      (if (member font (font-family-list))
        font
        (find-available-font (cdr fonts))))))

(defun lotr ()
  (interactive)
  (set-default-font "Luminari 14"))

(defun mono ()
  (interactive)
  (set-default-font "CMU Typewriter Text 16"))

(defun prop ()
  (interactive)
  (set-default-font "CMU Concrete 16"))

(mono)

(provide 'my-fonts)
