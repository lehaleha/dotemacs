(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(custom-enabled-themes (quote (wombat)))
 '(package-selected-packages (quote (helm evil))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Consolas" :foundry "outline" :slant normal :weight normal :height 120 :width normal)))))


;; Misc UI settings
(setq tool-bar-mode nil)
(setq size-indication-mode t)
(setq column-number-mode t)
(setq inhibit-startup-message t)
(setq visible-bell t)
(setq kill-whole-line t)
(setq scroll-conservatively 15)

(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)
(setq uniquify-strip-common-suffix t)

(delete-selection-mode t)
(global-hl-line-mode t)
(tool-bar-mode -1)


; Package repositories
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

; Save state/history
(desktop-save-mode 1)
(savehist-mode 1)

; Evil-mode
(add-to-list 'load-path "~/.emacs.d/evil")
(require 'evil)
(evil-mode 1)
