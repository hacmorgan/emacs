(require 'package)
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/"))
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/") t)
(setq use-package-always-pin  "melpa-stable")
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(eval-when-compile (require 'use-package))

(load-theme 'cyberpunk t)

(require 'evil)
(evil-mode 1)

(add-hook 'evil-visual-state-entry-hook (lambda () (set-face-background 'powerline-active1 "chartreuse4")))
(add-hook 'evil-visual-state-exit-hook (lambda () (set-face-background 'powerline-active1 "SlateBlue3")))
(add-hook 'evil-insert-state-entry-hook (lambda () (set-face-background 'powerline-active1 "DarkOrange3")))
(add-hook 'evil-insert-state-exit-hook (lambda () (set-face-background 'powerline-active1 "SlateBlue3")))

(require 'powerline)
(powerline-center-evil-theme)

(setq x-super-keysym 'meta)

;; Resize windows
(global-set-key (kbd "S-C-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "S-C-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "S-C-<down>") 'shrink-window)
(global-set-key (kbd "S-C-<up>") 'enlarge-window)
;; Move between windows with shift
(windmove-default-keybindings)

(global-set-key (kbd "C-S-l r") (custom-set-variables '(display-line-numbers (quote relative))))
(global-set-key (kbd "C-S-l a") (custom-set-variables '(display-line-numbers t)))

(global-set-key (kbd "s-g r") 'revert-buffer)

(setq-default tab-width 4)

(add-hook 'text-mode-hook 'turn-on-visual-line-mode)

;; set the various indentation levels
(defun my-c-mode-hook ()
  (c-set-offset 'defun-block-intro '++)
  (c-set-offset 'substatement-open '0)
  (c-set-offset 'statement-block-intro '++))
(add-hook 'c-mode-common-hook 'my-c-mode-hook)

;; Autoload octave mode on .m files
(setq auto-mode-alist
      (cons '("\\.m$" . octave-mode) auto-mode-alist))

(add-hook 'after-init-hook #'global-flycheck-mode)

(require 'lsp-mode)
(add-hook 'sh-mode-hook #'lsp)
(add-hook 'python-mode-hook #'lsp)

(setq make-backup-files nil)

(setq tramp-shell-prompt-pattern "^[^$>\n]*[#$%>] *\\(\[[0-9;]*[a-zA-Z] *\\)*")

(add-hook 'org-mode-hook                                                                      
  (lambda ()                                                                          
    (define-key evil-normal-state-map (kbd "TAB") 'org-cycle)))

(add-hook 'evil-insert-state-entry-hook 
  (lambda () 
    (if (display-graphic-p) nil 
      (send-string-to-terminal "\033[5 q"))))
(add-hook 'evil-normal-state-entry-hook (lambda () (if (display-graphic-p) nil (send-string-to-terminal "\033[0 q"))))

(load "server")
(unless (server-running-p) (server-start))

(use-package emms
  :ensure t
  :config
    (require 'emms-setup)
    (require 'emms-player-mpd)
    (emms-all) ; don't change this to values you see on stackoverflow questions if you expect emms to work
    (setq emms-seek-seconds 5)
    (setq emms-player-list '(emms-player-mpd))
    (setq emms-info-functions '(emms-info-mpd))
    (setq emms-player-mpd-server-name "localhost")
    (setq emms-player-mpd-server-port "6600")
    (setq emms-add-directory-tree "/mnt/storage/Music")
  :bind
    ("M-p p" . emms)
    ("M-p b" . emms-smart-browse)
    ("M-p r" . emms-player-mpd-update-all-reset-cache)
    ("<XF86AudioPrev>" . emms-previous)
    ("<XF86AudioNext>" . emms-next)
    ("<XF86AudioPlay>" . emms-pause)
    ("<XF86AudioStop>" . emms-stop))

;;  (require 'sclang)
;;  (require 'w3m)
