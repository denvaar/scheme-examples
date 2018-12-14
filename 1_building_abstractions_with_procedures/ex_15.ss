; Normal order evaluation vs applicative order evaluation

(define (p) (p))

(define (test x y)
  (if (= x 0) 0 y))

(test 0 (p))

; Applicative-order evaluation means that the
; arguments to a proceedure are evaluated right
; before the proceedure is applied.

; Scheme uses applicative-order evaluation. The result
; of running the code above is an infinite loop.
; First, the subexpressions for "test" are evaluated.
; 0 is a literal value, but "(p)" is a procedure call.
; The interpreter begins to evaluate "(p)", but it
; is defined recursively. So, the interpreter cannot
; go past this point.

; If Scheme were to use normal-order evaluation, the
; result would be different. Normal-order evaluation
; means that the arguments/subexpressions are only
; evaluated when they are needed (lazily.)

; In other words, the arguments to "test" would be
; replaced with "0" and "(p)". However, only "0" would
; be evaluated because it is needed in "(= x 0)".
; Since this evaluates to true, "y" AKA "(p)" is never
; evaluated.
