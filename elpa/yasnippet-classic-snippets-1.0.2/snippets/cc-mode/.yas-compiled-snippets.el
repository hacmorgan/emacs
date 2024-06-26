;;; Compiled snippets and support files for `cc-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'cc-mode
                     '(("struct" "struct ${1:name}\n{\n    $0\n};" "struct ... { ... }" nil nil nil "/home/hamish/.emacs.d/elpa/yasnippet-classic-snippets-1.0.2/snippets/cc-mode/struct" nil nil)
                       ("once" "#ifndef ${1:_`(upcase (file-name-nondirectory (file-name-sans-extension (buffer-file-name))))`_H_}\n#define $1\n\n$0\n\n#endif /* $1 */" "#ifndef XXX; #define XXX; #endif" nil nil nil "/home/hamish/.emacs.d/elpa/yasnippet-classic-snippets-1.0.2/snippets/cc-mode/once" nil nil)
                       ("main" "int main(int argc, char *argv[])\n{\n    $0\n    return 0;\n}" "int main(argc, argv) { ... }" nil nil nil "/home/hamish/.emacs.d/elpa/yasnippet-classic-snippets-1.0.2/snippets/cc-mode/main" nil nil)
                       ("inc" "#include <$1>" "#include <...>" nil nil nil "/home/hamish/.emacs.d/elpa/yasnippet-classic-snippets-1.0.2/snippets/cc-mode/inc.1" nil nil)
                       ("inc" "#include \"$1\"" "#include \"...\"" nil nil nil "/home/hamish/.emacs.d/elpa/yasnippet-classic-snippets-1.0.2/snippets/cc-mode/inc" nil nil)
                       ("if" "if (${1:condition})\n{\n    $0\n}" "if (...) { ... }" nil nil nil "/home/hamish/.emacs.d/elpa/yasnippet-classic-snippets-1.0.2/snippets/cc-mode/if" nil nil)
                       ("for" "for (${1:int i = 0}; ${2:i < N}; ${3:++i})\n{\n    $0\n}" "for (...; ...; ...) { ... }" nil nil nil "/home/hamish/.emacs.d/elpa/yasnippet-classic-snippets-1.0.2/snippets/cc-mode/for" nil nil)
                       ("do" "do\n{\n    $0\n} while (${1:condition});" "do { ... } while (...)" nil nil nil "/home/hamish/.emacs.d/elpa/yasnippet-classic-snippets-1.0.2/snippets/cc-mode/do" nil nil)))


;;; Do not edit! File generated at Sun Mar 27 18:52:14 2022
