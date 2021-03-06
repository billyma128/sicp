(define (for-each fn terms)
  (if (not (null? terms))
      ((lambda (l)
          (fn (car l))
          (for-each fn (cdr l)))
        terms)))
