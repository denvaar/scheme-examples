; How many moves does it take to solve the "Towers of Hanoi" problem
; given n disks?

(define (how-many-moves? n)
  (if (= n 1)
    1
    (+ (* (how-many-moves? (- n 1)) 2) 1)))

(= 3 (how-many-moves? 2))
(= 7 (how-many-moves? 3))
(= 15 (how-many-moves? 4))

; Print the instructions that someone could use to solve the
; "Towers of Hanoi" problem for n disks.

(define (print-instruction tower-a tower-b)
  (display tower-a)
  (display " moves to ")
  (display tower-b)
  (newline))

(define (hanoi-instructions n source target aux)
  (if (= n 1)
    (print-instruction source target)
    (begin
      (newline)
      (hanoi-instructions (- n 1) source aux target)
      (print-instruction source target)
      (hanoi-instructions (- n 1) aux target source))))

(hanoi-instructions 2 'a 'b 'c)
(hanoi-instructions 3 'a 'b 'c)
