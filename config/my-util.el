;; from <https://github.com/bling/dotemacs/>
(defmacro after (feature &rest body)
  "After FEATURE is loaded, evaluate BODY."
    (declare (indent defun))
      `(eval-after-load ,feature
           '(progn ,@body)))

(defun turn-on-linum ()
; (linum-mode 0)
  )

(provide 'my-util)
