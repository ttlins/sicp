(define (same-parity x . z)
  (define (parity x)
    (modulo x 2))
  (define (iter p l a)
    (cond ((null? l) a)
          ((= p (parity (car l))) (iter p (cdr l) (cons (car l) a)))
          (else (iter p (cdr l) a))))
  (iter (parity x) z '()))

(define (same-parity x . z)
  (define (x-parity? y)
    (= (modulo x 2) (modulo y 2)))
  (filter x-parity? z))

(define (filter p? l)
  (cond ((null? l) '())
        ((p? (car l)) (cons (car l) (filter p? (cdr l))))
        (else (filter p? (cdr l)))))