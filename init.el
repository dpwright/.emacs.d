(add-to-list 'load-path (concat user-emacs-directory "config"))
(add-to-list 'load-path (concat user-emacs-directory "config/" "pl"))
(setq package-archives '(("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")
                         ("org" . "http://orgmode.org/elpa")
                         ("gnu" . "http://elpa.gnu.org/packages/")))

(require 'package)
(package-initialize)
(setq package-enable-at-startup nil)
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)

(require 'my-env)
(require 'my-util)
(require 'my-config)
(require 'my-colours)
(require 'my-fonts)

(require 'my-helm)
(require 'my-projectile)
(require 'my-elscreen)
(require 'my-ibuffer)
(require 'my-dired)
(require 'my-magit)
(require 'my-org)

(require 'my-flycheck)

(require 'my-haskell)
(require 'my-c-cpp)
(require 'my-pawn)
(require 'my-fsharp)
(require 'my-protobuf)
(require 'my-ruby)
(require 'my-ninja)
(require 'my-cmake)
(require 'my-yaml)
(require 'my-lua)
(require 'my-elisp)

; This needs to be the last package imported, to override previously-defined keybindings
(require 'my-evil)
