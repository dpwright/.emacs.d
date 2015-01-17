(require 'my-util)

(add-to-list 'auto-mode-alist
    '("\\.\\(?:gemspec\\|irbrc\\|gemrc\\|rake\\|rb\\|ru\\|thor\\)\\'" . ruby-mode))
  (add-to-list 'auto-mode-alist
    '("\\(Capfile\\|Gemfile\\(?:\\.[a-zA-Z0-9._-]+\\)?\\|[rR]akefile\\)\\'" . ruby-mode))

(add-hook 'ruby-mode-hook 'turn-on-linum)

(provide 'my-ruby)
