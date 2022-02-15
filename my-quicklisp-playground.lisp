(load "~/quicklisp/setup.lisp")

(ql:quickload :vecto)

(use-package :vecto)

(defun radiant-lambda (file)
  (with-canvas (:width 90 :height 90)
    (let ((font (get-font "times.ttf")) ; font does not render, OS issue?
          (step (/ pi 7)))
      (set-font font 40)
      (translate 45 45)
      (draw-centered-string 0 -10 #(#x3BB))
      (set-rgb-stroke 1 0 0)
      (centered-circle-path 0 0 35)
      (stroke)
      (set-rgba-stroke 0 0 1.0 0.5)
      (set-line-width 4)
      (dotimes (i 14)
        (with-graphics-state
          (rotate (* i step))
          (move-to 30 0)
          (line-to 40 0)
          (stroke)))
      (save-png file))))

(defun feedlike-icon (file)
  (with-canvas (:width 100 :height 100)
    (set-rgb-fill 1.0 0.65 0.3)
    (rounded-rectangle 0 0 100 100 10 10)
    (fill-path)
    (set-rgb-fill 1.0 1.0 1.0)
    (centered-circle-path 20 20 10)
    (fill-path)
    (flet ((quarter-circle (x y radius)
             (move-to (+ x radius) y)
             (arc x y radius 0 (/ pi 2))))
      (set-rgb-stroke 1.0 1.0 1.0)
      (set-line-width 15)
      (quarter-circle 20 20 30)
      (stroke)
      (quarter-circle 20 20 60)
      (stroke))
    (rounded-rectangle 5 5 90 90 7 7)
    (set-gradient-fill 50 90
                       1.0 1.0 1.0 0.7
                       50 20
                       1.0 1.0 1.0 0.0)
    (set-line-width 2)
    (set-rgba-stroke 1.0 1.0 1.0 0.1)
    (fill-and-stroke)
    (save-png file)))

; executable entry point
(defun main ()
    (radiant-lambda "radiant-lambda.png")
    (feedlike-icon "feedlike-icon.png")
    (read-char))

; will run as script or executable
; (radiant-lambda "radiant-lambda.png")
; (feedlike-icon "feedlike-icon.png")