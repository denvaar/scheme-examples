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

(sumsquares 5 2 3)
(sumsquares 1 2 3)
(sumsquares 3 2 1)
(sumsquares 3 10 1)
(sumsquares 10 5 1)
