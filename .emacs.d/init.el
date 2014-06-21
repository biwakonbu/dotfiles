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
(require 'magit)
(require 'git-gutter)
(global-git-gutter-mode t)
(setq git-gutter:window-width 2)
(setq git-gutter:modified-sign "⇔")
(setq git-gutter:added-sign "⇒")
(setq git-gutter:deleted-sign "⇐")

;; advanced emacs
(require 'set-helm)
(require 'helm-support)

;; prog mode
(require 'set-ruby-mode)

(provide 'init)
