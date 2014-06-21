;; load path
(require 'load-paths)

;; interfaces
(require 'start-scratch-screen)
(require 'set-global-keybind)
(require 'set-interfaces)
(require 'set-packages)

;; cask
(require 'cask "~/.cask/cask.el")
(cask-initialize)

;; prog suport
(require 'set-flycheck)
(require 'git-gutter)
(global-git-gutter-mode t)

;; advanced emacs
(require 'set-helm)
(require 'helm-support)

;; prog mode
(require 'set-ruby-mode)

(provide 'init)
