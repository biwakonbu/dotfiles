;;;;;;;;;;;;;;;;;;;; Interface ;;;;;;;;;;;;;;;;;;;;
;; scroll-bar-mode "right" or "left" or "nil"
(set-scroll-bar-mode 'nil)
;; 補完で大文字小文字無視
(setq read-file-name-completion-ignore-case t)
;; 対応する括弧を光らせる。
(show-paren-mode 1) 
;; ファイル末の改行がなければ追加
(setq require-final-newline t)
;; ウインドウ分割時に画面外へ出る文章を折り返す
(setq truncate-partial-width-windows nil) 
;; 編集行のハイライト
(global-hl-line-mode)
;;tabは4文字分、改行後に自動インデント
(setq-default tab-width 4 indent-tabs-mode nil)
;;; ツールバー(add-to-list 'default-frame-alist '(alpha . 0))を非表示
;; M-x tool-bar-mode で表示非表示を切り替えられる
(tool-bar-mode -1)
;; カラム番号の表示
(column-number-mode t)
;; 行番号の非表示
(line-number-mode 1)
;;; メニューバーを非表示
;; M-x menu-bar-mode で表示非表示を切り替えられる
(menu-bar-mode -1)
;; set alpha
(add-to-list 'default-frame-alist '(alpha . 80))
;; set font and screen
(progn
  ;; 文字の色を設定します。
  (add-to-list 'default-frame-alist '(foreground-color . "azure1"))
  ;; 背景色を設定します。
  (add-to-list 'default-frame-alist '(background-color . "black"))
  ;; カーソルの色を設定します。
  (add-to-list 'default-frame-alist '(cursor-color . "green"))
  ;; マウスポインタの色を設定します。
  (add-to-list 'default-frame-alist '(mouse-color . "green"))
  ;; 選択中のリージョンの色を設定します。
  (set-face-background 'region "Blue")
  ;; モードライン（アクティブでないバッファ）の文字色を設定します。
  (set-face-foreground 'mode-line-inactive "gray30")
  ;; モードライン（アクティブでないバッファ）の背景色を設定します。
  (set-face-background 'mode-line-inactive "gray85")
)

;====================================
;;全角スペースとかに色を付ける
;====================================
(defface my-face-b-1 '((t (:background "SeaGreen"))) nil)
(defface my-face-b-1 '((t (:background "SeaGreen"))) nil)
(defface my-face-b-2 '((t (:background "SeaGreen"))) nil)
(defface my-face-b-2 '((t (:background "SeaGreen"))) nil)
(defface my-face-u-1 '((t (:foreground "SeaGreen" :underline t))) nil)
(defvar my-face-b-1 'my-face-b-1)
(defvar my-face-b-2 'my-face-b-2)
(defvar my-face-u-1 'my-face-u-1)
(defadvice font-lock-mode (before my-font-lock-mode ())
  (font-lock-add-keywords
   major-mode
   '(
     ("　" 0 my-face-b-1 append)
     ("\t" 0 my-face-b-2 append)
     ("[ ]+$" 0 my-face-u-1 append)
     )))
(ad-enable-advice 'font-lock-mode 'before 'my-font-lock-mode)
(ad-activate 'font-lock-mode)
(add-hook 'find-file-hooks '(lambda ()
                              (if font-lock-mode
                                  nil
                                (font-lock-mode t))))

(provide 'set-interfaces)
