;; load path
(require 'load-paths)

;; cask
(require 'cask "~/.cask/cask.el")
(cask-initialize)

;; interfaces
(require 'start-scratch-screen)
(require 'set-global-keybind)
(require 'set-interfaces)
(require 'set-packages)
(require 'set-skk)

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
(require 'auto-complete)
(require 'auto-complete-config)
(global-auto-complete-mode t)

;; advanced emacs
(require 'set-helm)
(require 'helm-filelist)
(require 'sequential-command-config)
(require 'set-anzu)
(require 'expand-region)
(require 'foreign-regexp)
(custom-set-variables
 '(foreign-regexp/regexp-type 'ruby)
 '(reb-re-syntax 'foreign-regexp))

;; prog mode
(require 'set-yaml-mode)
(require 'set-ruby-mode)
(require 'set-markdown-mode)

; fish mode
(require 'fish-mode)
(add-to-list 'auto-mode-alist '("\\.fish$" . fish-mode))

(provide 'init)
