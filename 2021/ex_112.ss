;; This pattern is called Pascal's triangle.
;;
;;            1
;;           1 1
;;          1 2 1
;;         1 3 3 1
;;        1 4 6 4 1
;;           ...
;;
;; The edges are all 1. Each number inside the triangle
;; is the sum of the two numbers above it. Write a procedure
;; that computes elements of Pascal's triangle by means
;; of a recursive process.

(define (pascal row col)
  (if (or (< row 2) (= col 0) (= col row))
      1
      (+ (pascal (- row 1) (- col 1))
         (pascal (- row 1) col))))

(= (pascal 0 0) 1)
(= (pascal 1 0) 1)
(= (pascal 1 1) 1)
(= (pascal 3 0) 1)
(= (pascal 3 1) 3)
(= (pascal 3 2) 3)
(= (pascal 3 3) 1)
(= (pascal 4 2) 6)
(= (pascal 7 3) 35)
