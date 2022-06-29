(define (problem car-assistance2_problem_2_prime)
  (:domain car-assistance2_prime)
  (:objects
    pos0-1 pos0-2 pos0-4 pos0-5 pos0-6 pos0-9 pos0-10 pos0-11 pos0-12 pos0-13 pos1-0 pos1-1 pos1-3 pos1-4 pos1-5 pos1-6 pos1-7 pos1-8 pos1-10 pos1-11 pos1-13 pos2-0 pos2-1 pos2-2 pos2-3 pos2-4 pos2-5 pos2-6 pos2-7 pos2-8 pos2-9 pos2-10 pos2-12 pos2-13  - place
    car0  - car)


  (:init
    (adj-walk pos0-1 pos0-2 )
    (adj-walk pos0-2 pos0-1 )
    (adj-walk pos0-1 pos1-1 )
    (adj-walk pos1-1 pos0-1 )
    (adj-car pos0-1 pos0-2 )
    (adj-car pos0-2 pos0-1 )
    (adj-car pos0-1 pos1-1 )
    (adj-car pos1-1 pos0-1 )
    (adj-car pos0-1 pos2-1 )
    (adj-car pos2-1 pos0-1 )
    (adj-walk pos0-4 pos0-5 )
    (adj-walk pos0-5 pos0-4 )
    (adj-walk pos0-4 pos1-4 )
    (adj-walk pos1-4 pos0-4 )
    (adj-car pos0-4 pos0-5 )
    (adj-car pos0-5 pos0-4 )
    (adj-car pos0-4 pos0-6 )
    (adj-car pos0-6 pos0-4 )
    (adj-car pos0-4 pos1-4 )
    (adj-car pos1-4 pos0-4 )
    (adj-car pos0-4 pos2-4 )
    (adj-car pos2-4 pos0-4 )
    (adj-walk pos0-5 pos0-6 )
    (adj-walk pos0-6 pos0-5 )
    (adj-walk pos0-5 pos1-5 )
    (adj-walk pos1-5 pos0-5 )
    (adj-car pos0-5 pos0-6 )
    (adj-car pos0-6 pos0-5 )
    (adj-car pos0-5 pos1-5 )
    (adj-car pos1-5 pos0-5 )
    (adj-car pos0-5 pos2-5 )
    (adj-car pos2-5 pos0-5 )
    (adj-walk pos0-6 pos1-6 )
    (adj-walk pos1-6 pos0-6 )
    (adj-car pos0-6 pos1-6 )
    (adj-car pos1-6 pos0-6 )
    (adj-car pos0-6 pos2-6 )
    (adj-car pos2-6 pos0-6 )
    (adj-walk pos0-9 pos0-10 )
    (adj-walk pos0-10 pos0-9 )
    (adj-car pos0-9 pos0-10 )
    (adj-car pos0-10 pos0-9 )
    (adj-car pos0-9 pos0-11 )
    (adj-car pos0-11 pos0-9 )
    (adj-car pos0-9 pos0-12 )
    (adj-car pos0-12 pos0-9 )
    (adj-walk pos0-10 pos0-11 )
    (adj-walk pos0-11 pos0-10 )
    (adj-walk pos0-10 pos1-10 )
    (adj-walk pos1-10 pos0-10 )
    (adj-car pos0-10 pos0-11 )
    (adj-car pos0-11 pos0-10 )
    (adj-car pos0-10 pos0-12 )
    (adj-car pos0-12 pos0-10 )
    (adj-car pos0-10 pos0-13 )
    (adj-car pos0-13 pos0-10 )
    (adj-car pos0-10 pos1-10 )
    (adj-car pos1-10 pos0-10 )
    (adj-car pos0-10 pos2-10 )
    (adj-car pos2-10 pos0-10 )
    (adj-walk pos0-11 pos0-12 )
    (adj-walk pos0-12 pos0-11 )
    (adj-walk pos0-11 pos1-11 )
    (adj-walk pos1-11 pos0-11 )
    (adj-car pos0-11 pos0-12 )
    (adj-car pos0-12 pos0-11 )
    (adj-car pos0-11 pos0-13 )
    (adj-car pos0-13 pos0-11 )
    (adj-car pos0-11 pos1-11 )
    (adj-car pos1-11 pos0-11 )
    (adj-walk pos0-12 pos0-13 )
    (adj-walk pos0-13 pos0-12 )
    (adj-car pos0-12 pos0-13 )
    (adj-car pos0-13 pos0-12 )
    (adj-walk pos0-13 pos1-13 )
    (adj-walk pos1-13 pos0-13 )
    (adj-car pos0-13 pos1-13 )
    (adj-car pos1-13 pos0-13 )
    (adj-car pos0-13 pos2-13 )
    (adj-car pos2-13 pos0-13 )
    (adj-walk pos1-0 pos1-1 )
    (adj-walk pos1-1 pos1-0 )
    (adj-walk pos1-0 pos2-0 )
    (adj-walk pos2-0 pos1-0 )
    (adj-car pos1-0 pos1-1 )
    (adj-car pos1-1 pos1-0 )
    (adj-car pos1-0 pos2-0 )
    (adj-car pos2-0 pos1-0 )
    (adj-walk pos1-1 pos2-1 )
    (adj-walk pos2-1 pos1-1 )
    (adj-car pos1-1 pos2-1 )
    (adj-car pos2-1 pos1-1 )
    (adj-walk pos1-3 pos1-4 )
    (adj-walk pos1-4 pos1-3 )
    (adj-walk pos1-3 pos2-3 )
    (adj-walk pos2-3 pos1-3 )
    (adj-car pos1-3 pos1-4 )
    (adj-car pos1-4 pos1-3 )
    (adj-car pos1-3 pos1-5 )
    (adj-car pos1-5 pos1-3 )
    (adj-car pos1-3 pos1-6 )
    (adj-car pos1-6 pos1-3 )
    (adj-car pos1-3 pos2-3 )
    (adj-car pos2-3 pos1-3 )
    (adj-walk pos1-4 pos1-5 )
    (adj-walk pos1-5 pos1-4 )
    (adj-walk pos1-4 pos2-4 )
    (adj-walk pos2-4 pos1-4 )
    (adj-car pos1-4 pos1-5 )
    (adj-car pos1-5 pos1-4 )
    (adj-car pos1-4 pos1-6 )
    (adj-car pos1-6 pos1-4 )
    (adj-car pos1-4 pos1-7 )
    (adj-car pos1-7 pos1-4 )
    (adj-car pos1-4 pos2-4 )
    (adj-car pos2-4 pos1-4 )
    (adj-walk pos1-5 pos1-6 )
    (adj-walk pos1-6 pos1-5 )
    (adj-walk pos1-5 pos2-5 )
    (adj-walk pos2-5 pos1-5 )
    (adj-car pos1-5 pos1-6 )
    (adj-car pos1-6 pos1-5 )
    (adj-car pos1-5 pos1-7 )
    (adj-car pos1-7 pos1-5 )
    (adj-car pos1-5 pos1-8 )
    (adj-car pos1-8 pos1-5 )
    (adj-car pos1-5 pos2-5 )
    (adj-car pos2-5 pos1-5 )
    (adj-walk pos1-6 pos1-7 )
    (adj-walk pos1-7 pos1-6 )
    (adj-walk pos1-6 pos2-6 )
    (adj-walk pos2-6 pos1-6 )
    (adj-car pos1-6 pos1-7 )
    (adj-car pos1-7 pos1-6 )
    (adj-car pos1-6 pos1-8 )
    (adj-car pos1-8 pos1-6 )
    (adj-car pos1-6 pos2-6 )
    (adj-car pos2-6 pos1-6 )
    (adj-walk pos1-7 pos1-8 )
    (adj-walk pos1-8 pos1-7 )
    (adj-walk pos1-7 pos2-7 )
    (adj-walk pos2-7 pos1-7 )
    (adj-car pos1-7 pos1-8 )
    (adj-car pos1-8 pos1-7 )
    (adj-car pos1-7 pos2-7 )
    (adj-car pos2-7 pos1-7 )
    (adj-walk pos1-8 pos2-8 )
    (adj-walk pos2-8 pos1-8 )
    (adj-car pos1-8 pos2-8 )
    (adj-car pos2-8 pos1-8 )
    (adj-walk pos1-10 pos1-11 )
    (adj-walk pos1-11 pos1-10 )
    (adj-walk pos1-10 pos2-10 )
    (adj-walk pos2-10 pos1-10 )
    (adj-car pos1-10 pos1-11 )
    (adj-car pos1-11 pos1-10 )
    (adj-car pos1-10 pos2-10 )
    (adj-car pos2-10 pos1-10 )
    (adj-walk pos1-13 pos2-13 )
    (adj-walk pos2-13 pos1-13 )
    (adj-car pos1-13 pos2-13 )
    (adj-car pos2-13 pos1-13 )
    (adj-walk pos2-0 pos2-1 )
    (adj-walk pos2-1 pos2-0 )
    (adj-car pos2-0 pos2-1 )
    (adj-car pos2-1 pos2-0 )
    (adj-car pos2-0 pos2-2 )
    (adj-car pos2-2 pos2-0 )
    (adj-car pos2-0 pos2-3 )
    (adj-car pos2-3 pos2-0 )
    (adj-walk pos2-1 pos2-2 )
    (adj-walk pos2-2 pos2-1 )
    (adj-car pos2-1 pos2-2 )
    (adj-car pos2-2 pos2-1 )
    (adj-car pos2-1 pos2-3 )
    (adj-car pos2-3 pos2-1 )
    (adj-car pos2-1 pos2-4 )
    (adj-car pos2-4 pos2-1 )
    (adj-walk pos2-2 pos2-3 )
    (adj-walk pos2-3 pos2-2 )
    (adj-car pos2-2 pos2-3 )
    (adj-car pos2-3 pos2-2 )
    (adj-car pos2-2 pos2-4 )
    (adj-car pos2-4 pos2-2 )
    (adj-car pos2-2 pos2-5 )
    (adj-car pos2-5 pos2-2 )
    (adj-walk pos2-3 pos2-4 )
    (adj-walk pos2-4 pos2-3 )
    (adj-car pos2-3 pos2-4 )
    (adj-car pos2-4 pos2-3 )
    (adj-car pos2-3 pos2-5 )
    (adj-car pos2-5 pos2-3 )
    (adj-car pos2-3 pos2-6 )
    (adj-car pos2-6 pos2-3 )
    (adj-walk pos2-4 pos2-5 )
    (adj-walk pos2-5 pos2-4 )
    (adj-car pos2-4 pos2-5 )
    (adj-car pos2-5 pos2-4 )
    (adj-car pos2-4 pos2-6 )
    (adj-car pos2-6 pos2-4 )
    (adj-car pos2-4 pos2-7 )
    (adj-car pos2-7 pos2-4 )
    (adj-walk pos2-5 pos2-6 )
    (adj-walk pos2-6 pos2-5 )
    (adj-car pos2-5 pos2-6 )
    (adj-car pos2-6 pos2-5 )
    (adj-car pos2-5 pos2-7 )
    (adj-car pos2-7 pos2-5 )
    (adj-car pos2-5 pos2-8 )
    (adj-car pos2-8 pos2-5 )
    (adj-walk pos2-6 pos2-7 )
    (adj-walk pos2-7 pos2-6 )
    (adj-car pos2-6 pos2-7 )
    (adj-car pos2-7 pos2-6 )
    (adj-car pos2-6 pos2-8 )
    (adj-car pos2-8 pos2-6 )
    (adj-car pos2-6 pos2-9 )
    (adj-car pos2-9 pos2-6 )
    (adj-walk pos2-7 pos2-8 )
    (adj-walk pos2-8 pos2-7 )
    (adj-car pos2-7 pos2-8 )
    (adj-car pos2-8 pos2-7 )
    (adj-car pos2-7 pos2-9 )
    (adj-car pos2-9 pos2-7 )
    (adj-car pos2-7 pos2-10 )
    (adj-car pos2-10 pos2-7 )
    (adj-walk pos2-8 pos2-9 )
    (adj-walk pos2-9 pos2-8 )
    (adj-car pos2-8 pos2-9 )
    (adj-car pos2-9 pos2-8 )
    (adj-car pos2-8 pos2-10 )
    (adj-car pos2-10 pos2-8 )
    (adj-walk pos2-9 pos2-10 )
    (adj-walk pos2-10 pos2-9 )
    (adj-car pos2-9 pos2-10 )
    (adj-car pos2-10 pos2-9 )
    (adj-walk pos2-12 pos2-13 )
    (adj-walk pos2-13 pos2-12 )
    (adj-car pos2-12 pos2-13 )
    (adj-car pos2-13 pos2-12 )

    (at-car car0 pos2-1)
    (free car0)

    (at-prime pos2-12)
    (= (total-cost) 0)
  )


  (:goal (and (at-prime pos2-1)))
  (:metric minimize (total-cost))

)