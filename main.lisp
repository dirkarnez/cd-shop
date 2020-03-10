(defvar *db* nil)

(defun create-cd (title artist)
  (list :title title :artist artist))

(defun add-cd (cd)
  (push cd *db*))

(add-cd (create-cd "Inception OST" "Hans Zimmer"))

(defun dump-db ()
  (dolist (cd *db*)
    (format t "~{~a:~10t~a~%~}~%" cd)))

(defun main ()
  (dump-db))
