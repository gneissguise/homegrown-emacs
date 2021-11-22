(defvar package-quickstart)

;; Make ESC quit prompts
(global-set-key (kbd "<escape>") 'keyboard-escape-quit)

;; Allow loading from the package cache
(setq package-quickstart t)

;; Do not resize the frame at this early stage.
(setq frame-inhibit-implied-resize t)

;; Disable GUI elements
(scroll-bar-mode -1)        ; Disable visible scrollbar
(tool-bar-mode -1)          ; Disable the toolbar
(tooltip-mode -1)           ; Disable tooltips
(set-fringe-mode 10)        ; Give some breathing room

(menu-bar-mode -1)            ; Disable the menu bar

;; Set up the visible bell
(setq visible-bell t)

(setq inhibit-splash-screen t)
(setq use-dialog-box t)                 ; only for mouse events
(setq use-file-dialog nil)

(setq inhibit-startup-screen t)
(setq inhibit-startup-buffer-menu t)
(setq use-short-answers t)
(setq initial-buffer-choice t)	
(setq gc-cons-threshold (* 100 1024 1024)
      read-process-output-max (* 1024 1024))
(setq-default tab-width 2)
(setq native-comp-async-report-warnings-errors 'silent) ; emacs28 with native compilation

(column-number-mode)
(add-hook 'prog-mode-hook 'display-line-numbers-mode)

;; Initialize package sources
(require 'package)

(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("org" . "https://orgmode.org/elpa/")
                         ("elpa" . "https://elpa.gnu.org/packages/")))

(package-initialize)
(unless package-archive-contents
 (package-refresh-contents))

(setq warning-minimum-level :error)
(setq warning-minimum-log-level :error)
(server-start)

(provide 'early-init)
