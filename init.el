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
 '(company-backends
   '(company-irony company-bbdb company-eclim company-semantic company-clang company-xcode company-capf company-files
                   (company-dabbrev-code company-gtags company-etags company-keywords)
                   company-oddmuse company-dabbrev))
 '(company-idle-delay 0.05)
 '(company-insertion-on-trigger ''company-explicit-action-p)
 '(company-insertion-triggers nil)
 '(company-minimum-prefix-length 1)
 '(company-tooltip-idle-delay 0)
 '(custom-enabled-themes '(cyberpunk))
 '(custom-safe-themes
   '("b66970f42d765a40fdb2b6b86dd2ab6289bed518cf4d8973919e5f24f0ca537b" "5adf7ad078568675387aac96e142c1300006531721bca35b941e4ed3e3b59000" "1a232652b04b68380b1cff7ceeb62787b4eb43df826a97c67831c50b0c0d1451" default))
 '(display-fill-column-indicator-column 88)
 '(display-line-numbers 'relative)
 '(ein:output-area-inlined-images nil)
 '(ein:worksheet-enable-undo t)
 '(electric-pair-inhibit-predicate 'electric-pair-conservative-inhibit)
 '(electric-pair-mode nil)
 '(electric-pair-open-newline-between-pairs t)
 '(electric-pair-preserve-balance t)
 '(evil-move-beyond-eol t)
 '(evil-move-cursor-back nil)
 '(fira-code-mode-disabled-ligatures '("<<" ">>" "**" "::"))
 '(flycheck-flake8rc ".flake8")
 '(flycheck-global-modes '(sh-mode haskell-mode python-mode))
 '(gc-cons-threshold 100000000)
 '(global-auto-revert-mode t)
 '(global-company-mode t)
 '(global-undo-tree-mode t)
 '(iedit-case-sensitive-default nil)
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(js-indent-level 2)
 '(line-number-mode nil)
 '(lsp-eldoc-render-all t)
 '(lsp-idle-delay 0.5)
 '(lsp-ui-doc-delay 0.05)
 '(lsp-ui-doc-enable nil)
 '(lsp-ui-sideline-enable nil)
 '(mailcap-user-mime-data '(("feh -d. %s" "image/*" nil)))
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
   '(chatgpt-shell shell-maker copilot-chat json-rpc-server json-rpc editorconfig tree-sitter-langs tree-sitter iedit treemacs xref yasnippet-classic-snippets yasnippet-radical-snippets yasnippet-snippets yasnippet sphinx-doc dockerfile-mode docker lsp-jedi company-jedi company-irony irony fira-code-mode yaml-mode clang-format cmake-ide cmake-mode systemd rainbow-mode arduino-mode rust-mode lsp-ui flycheck lsp-mode tidal powerline cyberpunk-theme evil csv-mode magit haskell-mode ein markdown-mode company))
 '(pixel-scroll-mode nil)
 '(powerline-default-separator 'utf-8)
 '(powerline-gui-use-vcs-glyph t)
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
 '(tooltip-delay 0.1)
 '(vc-follow-symlinks t)
 '(warning-suppress-types '((comp)))
 '(xterm-mouse-mode t)
 '(yaml-indent-offset 4)
 '(yas-snippet-dirs
   '("/home/hamish/.emacs.d/snippets" yasnippet-snippets-dir yasnippet-classic-snippets-dir "/home/hamish/.emacs.d/elpa/yasnippet-radical-snippets-20210915.1309/snippets")))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :extend nil :stipple nil :background "#000000" :foreground "#d3d3d3" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 170 :width normal :foundry "PfEd" :family "Fantasque Sans Mono"))))
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
