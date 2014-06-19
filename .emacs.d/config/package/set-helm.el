(require 'helm-config)
(helm-mode 1)

(setq helm-idle-delay 0.2)        ; 候補を表示するまでの時間
(setq helm-input-idle-delay 0.1)  ; タイプしてから再描画するまでの時間
(setq helm-quick-update t)        ; 体感速度向上
(setq helm-execute-action-at-once-if-one nil) ; 候補が一つの場合になっても自動実行しない
(remove-hook 'kill-emacs-hook 'helm-c-adaptive-save-history) ; Emacs終了時に、履歴を保存

(defun my:helm-buffers-list ()
  "Preconfigured `helm' to list buffers.
It is an enhanced version of `helm-for-buffers'."
  (interactive)
  (helm :sources '(helm-c-source-buffers-list
                  helm-c-source-ido-virtual-buffers
                  helm-c-source-buffer-not-found
                  helm-c-source-file-name-history
                  helm-c-source-files-in-current-dir)
        :buffer "*helm buffers*" :keymap helm-c-buffer-map))

(custom-set-variables '(helm-ff-auto-update-initial-value nil)) ; 自動補完を無効
(define-key helm-c-read-file-map (kbd "C-h") 'delete-backward-char) ; C-hでバックスペース
(define-key helm-c-read-file-map (kbd "TAB") 'helm-execute-persistent-action) ; TABで任意補完。選択肢が出てきたらC-nやC-pで上下移動してから決定する事も可能
(define-key helm-map (kbd "C-h") 'delete-backward-char) ; helm中はC-hが効かなかったから再定義

(provide 'set-helm)
