;recursive
(define (fast-recur a b)
    (define (even? x)
            (= (remainder x 2) 0))
    (define (double x)
            (+ x x))
    (define (halve x)
            (/ x 2))
    (cond ((= b 0) 0)
          ((even? b) (double (fast-recur a (halve b))))
          (else (+ a (fast-recur a (- b 1)))))) 
(fast-recur 1.7 3)