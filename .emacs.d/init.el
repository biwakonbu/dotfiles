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
(custom-set-variables
 '(git-gutter:window-width 2)
 '(git-gutter:modified-sign "=")
 '(git-gutter:added-sign "+")
 '(git-gutter:deleted-sign "-"))
(set-face-foreground 'git-gutter:modified "deepskyblue") ;; background color
(set-face-foreground 'git-gutter:added "green")
(set-face-foreground 'git-gutter:deleted "red")

;; advanced emacs
(require 'set-helm)
(require 'helm-support)

;; prog mode
(require 'set-ruby-mode)
(require 'set-markdown-mode)

(provide 'init)
