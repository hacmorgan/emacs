;;; Compiled snippets and support files for `c-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'c-mode
                     '(("printf" "printf (\"${1:%s}\\\\n\"${1:$(if (string-match \"%\" text) \",\" \"\\);\")\n}$2${1:$(if (string-match \"%\" text) \"\\);\" \"\")}" "printf" nil nil nil "/home/hamish/.emacs.d/elpa/yasnippet-classic-snippets-1.0.2/snippets/c-mode/printf" nil nil)
                       ("fopen" "FILE *${fp} = fopen(${\"file\"}, \"${r}\");" "FILE *fp = fopen(..., ...);" nil nil nil "/home/hamish/.emacs.d/elpa/yasnippet-classic-snippets-1.0.2/snippets/c-mode/fopen" nil nil)))


;;; Do not edit! File generated at Sun Mar 27 18:52:14 2022
