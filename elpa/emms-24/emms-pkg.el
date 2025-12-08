;; -*- no-byte-compile: t; lexical-binding: nil -*-
(define-package "emms" "24"
  "The Emacs Multimedia System."
  '((cl-lib  "0.5")
    (nadvice "0.3")
    (seq     "0"))
  :url "https://www.gnu.org/software/emms/"
  :commit "99ebaae9f180dd6b2e5be363e709efa1da0014d6"
  :revdesc "24-0-g99ebaae9f180"
  :keywords '("emms" "mp3" "ogg" "flac" "music" "mpeg" "video" "multimedia")
  :authors '(("Jorgen Schäfer" . "forcer@forcix.cx"))
  :maintainers '(("Yoni Rabkin" . "yrk@gnu.org")))
