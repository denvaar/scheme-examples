; What happens when a new, non-special form version of "if" is used?
;
; (define (new-if predicate then-clause else-clause)
;   (cond (predicate then-clause)
;         (else else-clause)))
;
; (new-if (= 0 0) 1 3)
;
; (define (square-iter guess x)
;   (new-if (good-enough? guess x)
;           guess
;           (square-iter (improve guess x)
;                        x)))
;
; --
;
; The procedure would work fine for simple comparisons of numbers,
; but it would not work well when other procedures are used.
; That's because the procedures will both be evaluated (applicative-order evaluation)
; and so in the case of the square-iter procedure, it will recursively call
; itself before the predicate can even be checked.
