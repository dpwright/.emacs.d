(use-package w3m
  :ensure w3m
  :config
    (progn
      (after 'evil
        (evil-set-initial-state 'w3m-mode 'normal)
        (evil-define-key 'normal w3m-mode-map
          "H" 'w3m-view-previous-page
          "L" 'w3m-view-next-page
          "R" 'w3m-reload-this-page))))

(provide 'my-w3m)
