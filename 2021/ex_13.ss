; Define a procedure that takes three numbers as arguments
; and returns the sum of the squares of the two larger numbers.

(define (square n)
  (* n n))

(define (square-sum a b)
  (+ (square a) (square b)))

(define (sum-largest-squares a b c)
  (cond ((and (> a c) (> b c)) (square-sum a b))
        ((and (> a b) (> c b)) (square-sum a c))
        ((and (> b a) (> c a)) (square-sum b c))))

(= (sum-largest-squares 1 2 3) 13)
(= (sum-largest-squares 1 3 2) 13)
(= (sum-largest-squares 2 1 3) 13)
(= (sum-largest-squares 2 3 1) 13)
(= (sum-largest-squares 3 1 2) 13)
(= (sum-largest-squares 3 2 1) 13)
