(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration.
This is the place where most of your configurations should be done. Unless it is
explicitly specified that a variable should be set before a package is loaded,
you should place your code here."
  ;; 设置web-mode缩进
  (defun my-web-mode-hook ()
    "Hooks for Web mode."
    (setq web-mode-markup-indent-offset 2)
    )
  (add-hook 'web-mode-hook  'my-web-mode-hook)

  (add-to-list 'auto-mode-alist '("\\.blade\\.php\\'" . web-mode))
  (setq web-mode-engines-alist
    '(("blade"  . "\\.blade\\.")))

  ;; org-mode 自动换行
  (add-hook 'org-mode-hook
            (lambda () (setq truncate-lines nil)))

  ;; 发送http get 请求
  (defun get-url (url)
    (with-current-buffer (url-retrieve-synchronously url) (buffer-string)))

  ;; 获取翻译数据
  (defun get-translate-info (word)
    (decode-coding-string (get-url (format "http://fanyi.youdao.com/openapi.do?keyfrom=emacs-fanyi&key=830729599&type=data&doctype=json&version=1.1&q=%s" word)) 'utf-8))

  ;; 调用有道翻译
  (defun translate (word)
    (let (me-data pos-json json-str info)
      (setq me-data (get-translate-info word))
      (setq pos-json (string-match-p "{.*}" me-data))
      (setq json-str (substring me-data pos-json))
      (setq info (json-read-from-string json-str))
      (print (assoc 'explains (assoc 'basic info)))))

  ;; 绑定翻译快捷键
  (global-set-key
   (kbd "C-c t n")
   (lambda ()
     (interactive)
     (let ((word (read-string "要查询的单词: ")))
       (translate word))))
  )
