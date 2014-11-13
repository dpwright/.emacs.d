(use-package elscreen
  :ensure elscreen
  :config
    (progn
      (elscreen-start)
      (after 'evil
        (define-key evil-normal-state-map (kbd "C-w t") 'elscreen-create)
        (define-key evil-normal-state-map (kbd "C-w x") 'elscreen-kill)
        (define-key evil-normal-state-map "gT" 'elscreen-previous)
        (define-key evil-normal-state-map "gt" 'elscreen-next))))

(provide 'my-elscreen)
