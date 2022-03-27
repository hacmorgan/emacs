;;; Compiled snippets and support files for `python-mode'
;;; contents of the .yas-setup.el support file:
;;;
;;; python-mode/.yas-setup.el --- yasnippet setup for python-mode.
;;
;;; Commentary:
;;
;; Setup code for Python based yasnippets.
;;
;;; Code:


(defun yasnippet-radical-snippets--python-split-args (arg-string)
  "Split the python ARG-STRING into ((name, default)..) tuples."
  (mapcar (lambda (x)
             (split-string x "[[:blank:]]*=[[:blank:]]*" t))
          (split-string arg-string "[[:blank:]]*,[[:blank:]]*" t)))


(defun yasnippet-radical-snippets--python-args-to-reST-docstring (text &optional make-fields)
  "Return a reST docstring format for the python arguments in TEXT.

Optional argument MAKE-FIELDS will create yasnippet compatible
field that the can be jumped to upon further expansion."
  (let* ((indent (concat "\n" (make-string (current-column) 32)))
         (args (yasnippet-radical-snippets--python-split-args text))
	 (nr 0)
         (formatted-args
	  (mapconcat
	   (lambda (x)
	     (concat ":param " (nth 0 x) ":"
		     (if make-fields (format " ${%d:arg%d}" (cl-incf nr) nr))
		     (if (nth 1 x) (concat " \(default " (nth 1 x) "\)"))))
	   args
	   indent)))
    (unless (string= formatted-args "")
      (concat
       indent
       (mapconcat 'identity
		  (list ".. Keyword Arguments:" formatted-args)
		  indent)
       indent))))


(defun yasnippet-radical-snippets--python-types-to-reST-docstring (text &optional make-fields)
  "Return a ReST docstring format for the Python arguments in TEXT.

Optional argument MAKE-FIELDS will create yasnippet compatible
field that the can be jumped to upon further expansion."
  (let* ((indent (concat "\n" (make-string (current-column) 32)))
         (args (yasnippet-radical-snippets--python-split-args text))
	 (i 0)
	 (nr (length args))
	 (formatted-types
	  (mapconcat (lambda (x)
		       (concat ":type " (nth 0 x) ":"
			       (if make-fields
				   (format " ${%d:type%d}"
					   (cl-incf nr) (cl-incf i)))))
		     args indent)))
    (unless (string= formatted-types "")
      (concat
       (mapconcat 'identity (list  ".. Types:" formatted-types) indent)
       indent))))


(defun yasnippet-radical-snippets--python-args-to-google-docstring (text &optional make-fields)
  "Return a Google docstring for the Python arguments in TEXT.

Optional argument MAKE-FIELDS will create yasnippet compatible
field that the can be jumped to upon further expansion."
  (let* ((indent (concat "\n" (make-string (current-column) 32)))
         (args (yasnippet-radical-snippets--python-split-args text))
    	 (nr 0)
         (formatted-args
    	  (mapconcat
    	   (lambda (x)
    	     (concat "   " (nth 0 x)
    		     (if make-fields (format " ${%d:arg%d}" (cl-incf nr) nr))
    		     (if (nth 1 x) (concat " \(default " (nth 1 x) "\)"))))
    	   args
    	   indent)))
    (unless (string= formatted-args "")
      (concat
       (mapconcat 'identity
    		  (list "" "Args:" formatted-args)
    		  indent)
       "\n"))))


(provide 'python-mode/.yas-setup.el)

;;; .yas-setup.el ends here
;;; Snippet definitions:
;;;
(yas-define-snippets 'python-mode
                     '(("dsr"
                        (progn
                          (let*
                              ((bound
                                (save-excursion
                                  (search-backward-regexp
                                   (concat "^[ 	]*" "def[ 	]+[[:alnum:]_]+" "(\\(\\(?:.\\|\n\\)*?\\)):")
                                   nil t)))
                               (indent
                                (concat "\n"
                                        (make-string
                                         (current-column)
                                         32)))
                               (string
                                (replace-regexp-in-string "[\n 	]+" " "
                                                          (match-string-no-properties 1)))
                               (in-docstring
                                (save-excursion
                                  (search-backward "\"\"\"" bound t))))
                            (when bound
                              (with-output-to-string
                                (insert
                                 (concat
                                  (when
                                      (not in-docstring)
                                    (concat "\"\"\"" indent))
                                  (yasnippet-radical-snippets--python-args-to-reST-docstring string nil)
                                  indent
                                  (yasnippet-radical-snippets--python-types-to-reST-docstring string nil)
                                  (when
                                      (not
                                       (string= "" string))
                                    indent)
                                  ".. Returns:" indent ":return:" indent ":rtype:" indent indent
                                  (when
                                      (not in-docstring)
                                    "\"\"\"")))
                                (delete-trailing-whitespace)))))
                        "Python reST Docstring solo" 'force-in-comment
                        ("radical")
                        nil "/home/hamish/.emacs.d/elpa/yasnippet-radical-snippets-20210915.1309/snippets/python-mode/update_rest_docstring" nil nil)
                       ("defr" "def ${1:name}($2):\n    \\\"\\\"\\\"$3\n    ${2:$(yasnippet-radical-snippets--python-args-to-reST-docstring yas-text t)}\n    ${4:${2:$(yasnippet-radical-snippets--python-types-to-reST-docstring yas-text t)}\n    }${5:.. Returns:\n    :returns: $6\n    ${7::rtype: $8\n}\n    }\\\"\\\"\\\"\n    ${0:$$(let ((beg yas-snippet-beg)\n	        (end yas-snippet-end))\n	    (yas-expand-snippet\n	      (buffer-substring-no-properties beg end) beg end\n              (quote ((yas-indent-line nil) (yas-wrap-around-region nil))))\n            (delete-trailing-whitespace beg (- end 1)))}" "Python reST function docstring" nil
                        ("radical")
                        nil "/home/hamish/.emacs.d/elpa/yasnippet-radical-snippets-20210915.1309/snippets/python-mode/fn_rest_docstring" nil nil)
                       ("defg" "def ${1:name}($2):\n    \\\"\\\"\\\"$3\n    ${2:$(yasnippet-radical-snippets--python-args-to-google-docstring yas-text t)}\n    ${5:Returns:\n        $6\n}\n    \\\"\\\"\\\"\n    ${0:$$(let ((beg yas-snippet-beg)\n	        (end yas-snippet-end))\n	    (yas-expand-snippet\n	      (buffer-substring-no-properties beg end) beg end\n              (quote ((yas-indent-line nil) (yas-wrap-around-region nil))))\n            (delete-trailing-whitespace beg (- end 1)))}" "Python Google style Docstring" nil
                        ("radical")
                        nil "/home/hamish/.emacs.d/elpa/yasnippet-radical-snippets-20210915.1309/snippets/python-mode/fn_google_docstring" nil nil)
                       ("clsr" "\\\"\\\"\\\"$1\n\n${2:.. Class Variables:\n:cvar\n\n}${3:.. Instance Variables:\n:ivar\n\n}${4:.. Types:\n:vartype\n\n}\\\"\\\"\\\"${0:$$(let ((beg yas-snippet-beg)\n            (end yas-snippet-end))\n	    (delete-trailing-whitespace beg (- end 1)))}" "Python reST class docstring" nil
                        ("radical")
                        nil "/home/hamish/.emacs.d/elpa/yasnippet-radical-snippets-20210915.1309/snippets/python-mode/class_rest_docstring" nil nil)))


;;; Do not edit! File generated at Sun Mar 27 18:52:14 2022
