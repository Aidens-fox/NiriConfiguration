;; 主题配置
(load-theme 'gruvbox-dark-medium t)
;;自动换行
(global-visual-line-mode 1) ; 1表示开启，0表示关闭
;;欢迎界面
(setq inhibit-startup-message t)
(setq initial-buffer-choice "~/")
;; 状态栏显示其他信息
(display-battery-mode 1)
(display-time-mode 1)
(setq display-time-24hr-format t)
;; 隐藏menu-bar
(menu-bar-mode -1)
;; 隐藏工具栏
(tool-bar-mode -1)
;;字体设置
(set-face-attribute 'default nil :font "JetBrainsMono Nerd Font-20")
(add-to-list 'default-frame-alist '(font . "JetBrainsMono Nerd Font-20"))
;; 隐藏滚动条
(when (display-graphic-p) (toggle-scroll-bar -1))
;; 自动补全括号
(electric-pair-mode t)
;;剪贴板共享
(setq x-select-enable-clipboard t)
;; 显示行号
(global-display-line-numbers-mode 1)
;; 插件管理器
(eval-when-compile
 (require 'use-package))
;; 清华源
(setq package-archives '(("gnu"    . "https://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                 ("nongnu"  . "https://mirrors.tuna.tsinghua.edu.cn/elpa/nongnu/")
                         ("melpa"  . "https://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))
(package-initialize)
 
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(gruvbox-theme lsp-ui markdown-preview-mode markdown-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Markdown 配置
(use-package markdown-mode
  :ensure t
  :mode ("\\.md\\'" . gfm-mode)
  :config
  (setq markdown-command "pandoc"))
