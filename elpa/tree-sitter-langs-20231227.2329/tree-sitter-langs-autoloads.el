;;; tree-sitter-langs-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "tree-sitter-langs" "tree-sitter-langs.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from tree-sitter-langs.el

(autoload 'tree-sitter-langs--init-load-path "tree-sitter-langs" "\
Add the directory containing compiled grammars to `tree-sitter-load-path'.

\(fn &rest ARGS)" nil nil)

(advice-add 'tree-sitter-load :before #'tree-sitter-langs--init-load-path)

(autoload 'tree-sitter-langs--init-major-mode-alist "tree-sitter-langs" "\
Link known major modes to languages provided by the bundle.

\(fn &rest ARGS)" nil nil)

(advice-add 'tree-sitter--setup :before #'tree-sitter-langs--init-major-mode-alist)

(autoload 'tree-sitter-langs--set-hl-default-patterns "tree-sitter-langs" "\
Use syntax highlighting patterns provided by `tree-sitter-langs'.

\(fn &rest ARGS)" nil nil)

(advice-add 'tree-sitter-hl--setup :before #'tree-sitter-langs--set-hl-default-patterns)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "tree-sitter-langs" '("tree-sitter-langs-")))

;;;***

;;;### (autoloads nil "tree-sitter-langs-build" "tree-sitter-langs-build.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from tree-sitter-langs-build.el

(autoload 'tree-sitter-langs-install-grammars "tree-sitter-langs-build" "\
Download and install the specified VERSION of the language grammar bundle.
If VERSION or OS is not specified, use the default of
`tree-sitter-langs--bundle-version' and `tree-sitter-langs--os'.

This installs the grammar bundle even if the same version was already installed,
unless SKIP-IF-INSTALLED is non-nil.

The download bundle file is deleted after installation, unless KEEP-BUNDLE is
non-nil.

\(fn &optional SKIP-IF-INSTALLED VERSION OS KEEP-BUNDLE)" t nil)

(autoload 'tree-sitter-langs-install-latest-grammar "tree-sitter-langs-build" "\
Install the latest version of the tree-sitter-langs grammar bundle.
Automatically retrieves the latest version tag from GitHub.
If SKIP-IF-INSTALLED is non-nil, skips if the latest version is already installed.
OS specifies the operating system.
If KEEP-BUNDLE is non-nil, the downloaded bundle file is not deleted after installation.

\(fn &optional SKIP-IF-INSTALLED OS KEEP-BUNDLE)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "tree-sitter-langs-build" '("tree-sitter-langs-")))

;;;***

;;;### (autoloads nil nil ("tree-sitter-langs-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; tree-sitter-langs-autoloads.el ends here
