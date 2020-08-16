
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
;; (require 'package)
;; (add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/"))
;; (add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
;; (add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/") t)
;; (setq use-package-always-pin  "melpa-stable")
;; (package-initialize)

;; Download use-package
;; (unless (package-installed-p 'use-package)
;;   (package-refresh-contents)
;;   (package-install 'use-package))

;; ;; Reduce load time
;; (eval-when-compile (require 'use-package))

;; Initialise cyberpunk theme
;; (add-to-list 'custom-theme-load-path "~/.emacs.d/cyberpunk/")

;; this is the org-mode config file
 (when (file-readable-p "~/.emacs.d/config.org")
  (org-babel-load-file (expand-file-name "~/.emacs.d/config.org")))   

;; evilmode
;; (setq x-super-keysym 'meta)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(blink-cursor-mode nil)
 '(blink-matching-paren nil)
 '(company-auto-complete ''company-explicit-action-p)
 '(company-auto-complete-chars '(41 46))
 '(custom-enabled-themes '(cyberpunk))
 '(custom-safe-themes
   '("5adf7ad078568675387aac96e142c1300006531721bca35b941e4ed3e3b59000" "1a232652b04b68380b1cff7ceeb62787b4eb43df826a97c67831c50b0c0d1451" default))
 '(display-line-numbers t)
 '(display-line-numbers-type 'visual)
 '(doc-view-continuous t)
 '(electric-pair-inhibit-predicate 'electric-pair-conservative-inhibit)
 '(electric-pair-mode nil)
 '(electric-pair-open-newline-between-pairs t)
 '(electric-pair-preserve-balance t)
 '(flycheck-global-modes '(haskell-mode python-mode))
 '(global-auto-revert-mode t)
 '(global-company-mode t)
 '(global-display-line-numbers-mode t)
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(line-number-mode t)
 '(menu-bar-mode nil nil nil "Enables the menu bar")
 '(mouse-wheel-scroll-amount '(2 ((shift) . 1) ((meta)) ((control) . text-scale)))
 '(package-selected-packages
   '(arduino-mode rust-mode lsp-ui flycheck lsp-mode tidal powerline cyberpunk-theme org evil csv-mode magit haskell-mode ein markdown-mode company))
 '(pixel-scroll-mode nil)
 '(powerline-default-separator 'utf-8)
 '(powerline-gui-use-vcs-glyph t)
 '(python-indent-guess-indent-offset nil)
 '(scroll-bar-mode nil)
 '(scroll-conservatively 101)
 '(scroll-margin 1)
 '(scroll-preserve-screen-position 1)
 '(scroll-step 1)
 '(show-paren-mode t)
 '(tool-bar-mode nil)
 '(vc-follow-symlinks t)
 '(xterm-mouse-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :extend nil :stipple nil :background "#000000" :foreground "#d3d3d3" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 132 :width normal :foundry "PfEd" :family "Fantasque Sans Mono"))))
 '(cursor ((t (:background "violet"))))
 '(font-lock-type-face ((t (:foreground "pale green"))))
 '(line-number-current-line ((t (:inherit line-number :foreground "magenta"))))
 '(mode-line ((t (:background "#333333" :foreground "DeepSkyBlue1" :box nil))))
 '(mode-line-inactive ((t (:background "#1A1A1A" :foreground "#4D4D4D" :box nil))))
 '(powerline-active1 ((t (:inherit mode-line :background "SlateBlue3" :foreground "white"))))
 '(powerline-active2 ((t (:inherit mode-line :background "DodgerBlue1" :foreground "white"))))
 '(show-paren-mismatch ((t (:background "#000000" :foreground "orange red")))))

;; ;; Resize windows
;; (global-set-key (kbd "S-C-<left>") 'shrink-window-horizontally)
;; (global-set-key (kbd "S-C-<right>") 'enlarge-window-horizontally)
;; (global-set-key (kbd "S-C-<down>") 'shrink-window)
;; (global-set-key (kbd "S-C-<up>") 'enlarge-window)
;; ;; Move between windows
;; (windmove-default-keybindings) 


;; keyboard shortcut for switching between relative and absolute line numbers
;; (global-set-key (kbd "C-S-l r") (custom-set-variables '(display-line-numbers (quote relative))))
;; (global-set-key (kbd "C-S-l a") (custom-set-variables '(display-line-numbers t)))

;; Set where emacs stores its backup files, and make sure it backs up by copying the file
;; (setq backup-directory-alist `(("." . "~/.emacs.d/backups")))
;; (setq backup-by-copying t)

;; set default tab width
;; (setq-default tab-width 4)

;; (add-hook 'org-mode-hook #'toggle-word-wrap)
;; (add-hook 'text-mode-hook 'turn-on-visual-line-mode)

;; ;; make c, c++, java indent by 4 spaces rather than 2
;; (defun my-c-mode-hook ()
;;   (c-set-offset 'defun-block-intro '++)
;;   (c-set-offset 'substatement-open '0)
;;   (c-set-offset 'statement-block-intro '++))
;; (add-hook 'c-mode-common-hook 'my-c-mode-hook)



;; ;; Autoload octave mode on .m files
;; (setq auto-mode-alist
;;       (cons '("\\.m$" . octave-mode) auto-mode-alist))

;; ;; attempt to fix weird errors when ssh-ing using keys
;; (setq tramp-shell-prompt-pattern "^[^$>\n]*[#$%>] *\\(\[[0-9;]*[a-zA-Z] *\\)*")

;; ;; emms
;; (use-package emms
;;   :ensure t
;;   :config
;;     (require 'emms-setup)
;;     (require 'emms-player-mpd)
;;     (emms-all) ; don't change this to values you see on stackoverflow questions if you expect emms to work
;;     (setq emms-seek-seconds 5)
;;     (setq emms-player-list '(emms-player-mpd))
;;     (setq emms-info-functions '(emms-info-mpd))
;;     (setq emms-player-mpd-server-name "localhost")
;;     (setq emms-player-mpd-server-port "6600")
;;     (setq emms-add-directory-tree "/mnt/storage/Music")
;;   :bind
;;     ("M-p p" . emms)
;;     ("M-p b" . emms-smart-browse)
;;     ("M-p r" . emms-player-mpd-update-all-reset-cache)
;;     ("<XF86AudioPrev>" . emms-previous)
;;     ("<XF86AudioNext>" . emms-next)
;;     ("<XF86AudioPlay>" . emms-pause)
;;     ("<XF86AudioStop>" . emms-stop))


;; ;; run emacs-server in the background
;; ;; by doing this, we can run emacsclient so that all sessions share buffers
;; ;; (server-start)

(put 'scroll-left 'disabled nil)
