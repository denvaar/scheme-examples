; Ben Bitdiddle has invented a test to determine whether the interpreter he is faced
; with is using applicative-order evaluation or normal-order evaluation.
; He defines the following two procedures:
;
; (define (p) (p))
;
; (define (test x y)
;   (if (= x 0)
;       0
;       y))
;
; Then he evaluates the expression
;
; (test 0 (p))
;
; 1. What behavior will Ben observe with an interpreter that uses applicative-order evaluation?
; 2. ... and with normal-order evaluation?
;
; --
;
;
; Applicative-order evaluation means, "evaluate the arguments then apply the procedure", so
; Ben would observe that the test never completes because of the procedure p, which is
; evaluated before the predicate happens, and recursively calls itself over and over.
;
; Normal-order evaluation means, "apply the procedure to the arguments, then evaluate the arguments",
; so the call to the p procedure would never happen. The procedure would result in 0. The false
; branch of the predicate would never be evaluated.
;
; Scheme uses applicative-order evaluation.
