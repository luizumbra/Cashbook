;;;; Program to create and calculate my christmas presents.
;; Author Luiz A. M. Ferreira
;; Master Student at University Mackenzie, Brazil-SP

(defvar *l* `((1 2 3) (10 20 30) (100 200 300)))

;; @var, proj A symbolic project name
;; @return the budget of the list of this project
(defun budget-proj (proj)
  (sum-middle-value-tuple-list (find-proj proj)))

(defun find-proj (proj) *l*)

;; @var list-of-tuples, A list with only tuples values
;; @return the sum of the middle element of the tuple of the input list
(defun sum-middle-value-tuple-list (list-of-tuples)
  (if list-of-tuples (+ (cadar list-of-tuples) (sum-middle-value-tuple-list (cdr list-of-tuples))) 0))

;; @var list-of-tuples, A list with only tuples values
;; @return the sum of the final elemento of the tuple of the input list
(defun sum-final-value-tuple-list (list-of-tuples)
  (if list-of-tuples (+ (caddar list-of-tuples) (sum-final-value-tuple-list (cdr list-of-tuples))) 0))

()
