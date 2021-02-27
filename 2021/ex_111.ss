; Write a procedure that computes f by means of a recursive process.
; Also by means of an iterative process.
;
; f(n) =   n                                if n < 3
; f(n) =   f(n-1) + 2f(n-2) + 3f(n-3)       if n >= 3

; Recursive version
(define (func-recursive n)
  (if (< n 3)
      n
      (+
        (func-recursive (- n 1))
        (* 2 (func-recursive (- n 2)))
        (* 3 (func-recursive (- n 3))))))


; Iterative version
(define (func-iterative n)
  (define (calc a b c)
    (+ a (* 2 b) (* 3 c)))
  (define (accumulate count a b c)
    (cond ((> count n) n)
          ((= count n) (calc a b c))
          (else (accumulate
                  (+ count 1)
                  (calc a b c)
                  a
                  b))))
  (accumulate 3 2 1 0))

; Verify the results are consistent
(= (func-recursive 0) (func-iterative 0) 0)
(= (func-recursive 1) (func-iterative 1) 1)
(= (func-recursive 2) (func-iterative 2) 2)
(= (func-recursive 3) (func-iterative 3) 4)
(= (func-recursive 4) (func-iterative 4) 11)
(= (func-recursive 5) (func-iterative 5) 25)
(= (func-recursive 6) (func-iterative 6) 59)
(= (func-recursive 7) (func-iterative 7) 142)
(= (func-recursive 8) (func-iterative 8) 335)
(= (func-recursive 9) (func-iterative 9) 796)
(= (func-recursive 10) (func-iterative 10) 1892)
