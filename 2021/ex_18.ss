; Use this formula to implement a cube-root procedure
; analogous to the square root procedure.
;
;  ((x/y)^2 + 2y) / 3


; (define (average x y)
;   (/ (+ x y) 2))
;
; (define (improve guess x)
;   (average guess (/ x guess)))

(define (div x y)
  (/ x y))

(define (improve guess x)
  (/ (+ (* (div x guess) (div x guess)) (* 2 guess)) 3))

(define (good-enough? guess x)
  (< (abs (- (* guess guess) x)) 0.001))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(sqrt 25)


; note - this gets stuck in an endless loop
; see http://community.schemewiki.org/?sicp-ex-1.8
; for a better example
