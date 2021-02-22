; The special form, "if", can be defined as an
; ordinary procedure in terms of "cond" like this:

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

; It will work for simple use cases, like:

(new-if (= 2 3) 0 5)

(new-if (= 1 1) 0 5)

; but what happens when it's used as part of a
; program like the following (line 27.)

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x)
                     x)))

(sqrt-iter 1 25)


; The program does not complete.
; I think it's because the interpreter still needs
; to apply both the "then-clause" as well as the
; "else-clause" no matter if the predicate is
; true or false. "new-if" behaves differently than
; the primitive "if" for this reason.

; if and cond are special forms. "Special" meaning
; that it is a slight exception to the applicative
; order that the scheme interpreter adhears to when
; evaluating procedures.

; I think the program would complete if the
; body of "new-if" (aka the cond) was used directly
; in "sqrt-iter" instead of "new-if"
