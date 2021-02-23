; Observe that our model of evaluation allows for combinations whose operators are
; compound expressions. Use this observation to describe the behavior of the
; following procedure:
;
; (define (a-plus-abs-b a b)
;   ((if (> b 0) + -) a b))
;
;
; --
; The interesting thing about this procedure is that the result of the
; "if" predicte is a primitave procedure, which is then applied to "a"
; and "b". This procedure will apply and evaluate either "+" or "-"
; to "a" and "b".


(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

(= (a-plus-abs-b 4 -6) 10)
