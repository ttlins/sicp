(define (div-interval x y)
  (if (= (upper-bound y) (lower-bound y))
      (error "Invalid division by 0 span interval - DIV" y)
      (mul-interval x
                    (make-interval (/ 1.0 (upper-bound y))
                                   (/ 1.0 (lower-bound y))))))
