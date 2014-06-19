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

;; advanced emacs
(require 'set-helm)

;; programming mode
(require 'set-ruby-mode)

(provide 'init)
