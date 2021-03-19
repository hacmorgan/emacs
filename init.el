;; load the org-mode config file
 (when (file-readable-p "~/.emacs.d/config.org")
  (org-babel-load-file (expand-file-name "~/.emacs.d/config.org")))   

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(blink-cursor-mode nil)
 '(blink-matching-paren nil)
 '(c-basic-offset 4)
 '(company-auto-complete ''company-explicit-action-p)
 '(company-auto-complete-chars '(41))
 '(company-backends
   '(company-irony company-bbdb company-eclim company-semantic company-clang company-xcode company-capf company-files
                   (company-dabbrev-code company-gtags company-etags company-keywords)
                   company-oddmuse company-dabbrev))
 '(custom-enabled-themes '(cyberpunk))
 '(custom-safe-themes
   '("5adf7ad078568675387aac96e142c1300006531721bca35b941e4ed3e3b59000" "1a232652b04b68380b1cff7ceeb62787b4eb43df826a97c67831c50b0c0d1451" default))
 '(display-line-numbers 'relative)
 '(electric-pair-inhibit-predicate 'electric-pair-conservative-inhibit)
 '(electric-pair-mode nil)
 '(electric-pair-open-newline-between-pairs t)
 '(electric-pair-preserve-balance t)
 '(evil-move-beyond-eol t)
 '(evil-move-cursor-back nil)
 '(fira-code-mode-disabled-ligatures '("<<" ">>" "**" "::"))
 '(flycheck-global-modes '(haskell-mode python-mode))
 '(global-auto-revert-mode t)
 '(global-company-mode t)
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(line-number-mode nil)
 '(menu-bar-mode nil nil nil "Enables the menu bar")
 '(mouse-wheel-scroll-amount '(2 ((shift) . 1) ((meta)) ((control) . text-scale)))
 '(org-hide-emphasis-markers t)
 '(org-hide-leading-stars t)
 '(org-startup-indented t)
 '(org-structure-template-alist
   '(("a" . "export ascii")
     ("c" . "center")
     ("C" . "comment")
     ("e" . "example")
     ("E" . "export")
     ("h" . "export html")
     ("l" . "export latex")
     ("q" . "quote")
     ("s" . "src")
     ("v" . "verse")))
 '(package-selected-packages
   '(jedi company-irony irony fira-code-mode yaml-mode clang-format cmake-ide cmake-mode systemd rainbow-mode arduino-mode rust-mode lsp-ui flycheck lsp-mode tidal powerline cyberpunk-theme org evil csv-mode magit haskell-mode ein markdown-mode company))
 '(pixel-scroll-mode nil)
 '(powerline-default-separator 'utf-8)
 '(powerline-height 20)
 '(python-indent-guess-indent-offset nil)
 '(scroll-bar-mode nil)
 '(scroll-conservatively 101)
 '(scroll-margin 1)
 '(scroll-preserve-screen-position 1)
 '(scroll-step 1)
 '(shell-command-prompt-show-cwd t)
 '(show-paren-mode t)
 '(tool-bar-mode nil)
 '(vc-follow-symlinks t)
 '(xterm-mouse-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :extend nil :stipple nil :background "#000000" :foreground "#d3d3d3" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 150 :width normal :foundry "PfEd" :family "Fantasque Sans Mono"))))
 '(cursor ((t (:background "violet"))))
 '(font-lock-type-face ((t (:foreground "pale green"))))
 '(line-number-current-line ((t (:inherit line-number :foreground "magenta"))))
 '(mode-line ((t (:background "#333333" :foreground "DeepSkyBlue1" :box nil))))
 '(mode-line-inactive ((t (:background "#1A1A1A" :foreground "#4D4D4D" :box nil))))
 '(powerline-active1 ((t (:inherit mode-line :background "SlateBlue3" :foreground "white"))))
 '(powerline-active2 ((t (:inherit mode-line :background "DodgerBlue1" :foreground "white"))))
 '(show-paren-mismatch ((t (:background "#000000" :foreground "orange red")))))


(put 'scroll-left 'disabled nil)

;; fix Error running timer ‘org-indent-initialize-agent’ bug 
(org-reload)
