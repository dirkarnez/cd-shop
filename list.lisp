; var db = null
(defvar *db* nil)

; void createCD(auto title, auto artist) {
;   return ["title": title, "artist": artist]
; }
(defun create-cd (title artist)
  (list :title title :artist artist))

; void addCD(auto cd) {
;   db.push(cd)
; }
(defun add-cd (cd)
  (push cd *db*))

; addCD(createCD("Inception OST", "Hans Zimmer"))
(add-cd (create-cd "Inception OST" "Hans Zimmer"))

; void dumpDB() {
;   LOOP_LIST_MACRO(db, void (cd) {
;      format(std::output, "~{~a:~10t~a~%~}~%", cd)
;   })
; }
(defun dump-db ()
  (dolist (cd *db*)
    (format *standard-output* "~{~a:~10t~a~%~}~%" cd)))

; void main() {
;   dumpDB()
;   getchar()
; }
(defun main ()
  (dump-db)
  (read-char))
