; Define a procedure that takes three numbers as arguments and returns the sum
; of the squares of the two larger numbers

; c > b   c
; b > a   b

(define (biggest x y)
  (if (> x y) x y))

(define (square x)
  (* x x))

(define (sumsquares a b c)
  (+
    (square (biggest
      (cond ((= a (biggest a b)) b)
            (else a))
      c))
    (square (biggest a b))))

(= (sumsquares 1 2 3) 13)
(= (sumsquares 3 2 1) 13)
(= (sumsquares 2 3 1) 13)
(= (sumsquares 1 3 2) 13)
(= (sumsquares 3 1 2) 13)
(= (sumsquares 2 1 3) 13)
