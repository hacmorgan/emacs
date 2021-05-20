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

(add-to-list 'load-path "~/.emacs.d/external-packages/doxymacs")

(load-theme 'cyberpunk t)

(set-frame-parameter (selected-frame) 'alpha '(95 . 85))
(add-to-list 'default-frame-alist '(alpha . (95 . 85)))

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
;; Move between windows with C-x <arrows> (for terminals with tmux)
(global-set-key (kbd "C-x <left>") 'windmove-left)
(global-set-key (kbd "C-x <right>") 'windmove-right)
(global-set-key (kbd "C-x <down>") 'windmove-down)
(global-set-key (kbd "C-x <up>") 'windmove-up)
;; Move between windows with C-x <vim-keys> (for terminals with tmux)
(global-set-key (kbd "C-x h") 'windmove-left)
(global-set-key (kbd "C-x l") 'windmove-right)
(global-set-key (kbd "C-x j") 'windmove-down)
(global-set-key (kbd "C-x k") 'windmove-up)
;; Resize windows with C-x S-<arrows> (for terminals with tmux)
(global-set-key (kbd "C-x r <left>") 'shrink-window-horizontally)
(global-set-key (kbd "C-x r <right>") 'enlarge-window-horizontally)
(global-set-key (kbd "C-x r <down>") 'shrink-window)
(global-set-key (kbd "C-x r <up>") 'enlarge-window)

;; (global-set-key (kbd "C-S-l r") (custom-set-variables '(display-line-numbers (quote relative))))
;; (global-set-key (kbd "C-S-l a") (custom-set-variables '(display-line-numbers t)))

(global-set-key (kbd "s-g r") 'revert-buffer)

(global-set-key (kbd "<select>") 'end-of-line)

(setq-default tab-width 4)

(add-hook 'text-mode-hook 'turn-on-visual-line-mode)  ;; makes word wrap work in org mode

;; set the various indentation levels
(defun my-c-mode-hook ()
  ;; (c-set-offset 'defun-block-intro '++)
  (c-set-offset 'substatement-open '0))
  ;; (c-set-offset 'substatement '++)
  ;; (c-set-offset 'statement-block-intro '++))
(add-hook 'c-mode-common-hook 'my-c-mode-hook)

(c-add-style "STYLE NAME HERE"
             '("abyss"
               (c-basic-offset . 4)     ; Guessed value
               (c-offsets-alist
                (arglist-cont . 0)      ; Guessed value
                (arglist-intro . +)     ; Guessed value
                (block-close . 0)       ; Guessed value
                (defun-block-intro . +) ; Guessed value
                (defun-close . 0)       ; Guessed value
                (defun-open . 0)        ; Guessed value
                (innamespace . 0)       ; Guessed value
                (member-init-intro . +)     ; Guessed value
                (namespace-close . 0)   ; Guessed value
                (statement . 0)         ; Guessed value
                (statement-block-intro . +) ; Guessed value
                (topmost-intro . 0)         ; Guessed value
                (topmost-intro-cont . 0) ; Guessed value
                (access-label . -)
                (annotation-top-cont . 0)
                (annotation-var-cont . +)
                (arglist-close . c-lineup-close-paren)
                (arglist-cont-nonempty . c-lineup-arglist)
                (block-open . 0)
                (brace-entry-open . 0)
                (brace-list-close . 0)
                (brace-list-entry . c-lineup-under-anchor)
                (brace-list-intro . +)
                (brace-list-open . 0)
                (c . c-lineup-C-comments)
                (case-label . 0)
                (catch-clause . 0)
                (class-close . 0)
                (class-open . 0)
                (comment-intro . c-lineup-comment)
                (composition-close . 0)
                (composition-open . 0)
                (cpp-define-intro c-lineup-cpp-define +)
                (cpp-macro . -1000)
                (cpp-macro-cont . +)
                (do-while-closure . 0)
                (else-clause . 0)
                (extern-lang-close . 0)
                (extern-lang-open . 0)
                (friend . 0)
                (func-decl-cont . +)
                (inclass . +)
                (incomposition . +)
                (inexpr-class . +)
                (inexpr-statement . +)
                (inextern-lang . +)
                (inher-cont . c-lineup-multi-inher)
                (inher-intro . +)
                (inlambda . c-lineup-inexpr-block)
                (inline-close . 0)
                (inline-open . +)
                (inmodule . +)
                (knr-argdecl . 0)
                (knr-argdecl-intro . +)
                (label . 2)
                (lambda-intro-cont . +)
                (member-init-cont . c-lineup-multi-inher)
                (module-close . 0)
                (module-open . 0)
                (namespace-open . 0)
                (objc-method-args-cont . c-lineup-ObjC-method-args)
                (objc-method-call-cont c-lineup-ObjC-method-call-colons c-lineup-ObjC-method-call +)
                (objc-method-intro .
                                   [0])
                (statement-case-intro . +)
                (statement-case-open . 0)
                (statement-cont . +)
                (stream-op . c-lineup-streamop)
                (string . -1000)
                (substatement . +)
                (substatement-label . 2)
                (substatement-open . +)
                (template-args-cont c-lineup-template-args +))))

;; Autoload octave mode on .m files
(setq auto-mode-alist
      (cons '("\\.m$" . octave-mode) auto-mode-alist))

(require 'org-tempo)  ;; make <s TAB insert code block
;;(add-hook 'org-mode-hook #'toggle-word-wrap) ;; word wrap in org mode
;; turned this off because it was cutting words in half

(defadvice sh--maybe-here-document (around be-smart-about-it activate)
  "Do normal here doc auto insert, but if you type another chevron, revert and leave just <<<."
  (if (and (= (current-column) 1)
           (looking-back "^<")
           (looking-at "\nEOF")
           (save-excursion
             (forward-line -1)
             (end-of-line 1)
             (looking-back "<<EOF")))
      (progn (delete-region (search-backward "EOF") (search-forward "EOF" nil t 2))
             (insert "<"))
    ad-do-it))

(add-hook 'after-init-hook #'global-flycheck-mode)

(require 'lsp-mode)
;;(add-hook 'sh-mode-hook #'lsp)
(add-hook 'python-mode-hook #'lsp)

(add-hook 'c++-mode-hook 'irony-mode)
(add-hook 'c-mode-hook 'irony-mode)
(add-hook 'objc-mode-hook 'irony-mode)

(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)

(eval-after-load 'company
  '(add-to-list 'company-backends 'company-irony))

;; (fset 'c-indent-region 'clang-format-region)

(global-set-key (kbd "C-M-\\") 'clang-format-region)
(global-set-key (kbd "C-M-|")  'clang-format-buffer)

(defun my/python-mode-hook ()
  (add-to-list 'company-backends 'company-jedi))

(add-hook 'python-mode-hook 'my/python-mode-hook)

(require 'doxymacs)

(add-hook 'c-mode-common-hook 'doxymacs-mode)

(defun my-doxymacs-font-lock-hook ()
(if (or (eq major-mode 'c-mode) (eq major-mode 'c++-mode))
(doxymacs-font-lock)))
(add-hook 'font-lock-mode-hook 'my-doxymacs-font-lock-hook)

(setq make-backup-files nil)

(setq tramp-shell-prompt-pattern "^[^$>\n]*[#$%>] *\\(\[[0-9;]*[a-zA-Z] *\\)*")

(setq visible-bell 1)

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
