(define (problem car-assistance1_problem_4_prime)
  (:domain car-assistance1_prime)
  (:objects
    pos0-2 pos0-3 pos0-5 pos0-7 pos0-8 pos0-9 pos0-10 pos1-0 pos1-3 pos1-5 pos1-6 pos1-7 pos1-8 pos1-9 pos1-11 pos1-12 pos1-13 pos2-1 pos2-2 pos2-3 pos2-4 pos2-5 pos2-12 pos2-13 pos3-0 pos3-2 pos3-4 pos3-5 pos3-6 pos3-8 pos3-9 pos3-10 pos3-12 pos4-0 pos4-1 pos4-2 pos4-4 pos4-5 pos4-6 pos4-7 pos4-8 pos4-9 pos4-11 pos4-13 pos5-0 pos5-1 pos5-2 pos5-3 pos5-4 pos5-6 pos5-7 pos5-8 pos5-9 pos5-10 pos5-11 pos5-12  - place
    car0  - car)


  (:init
    (adj-walk pos0-2 pos0-3 )
    (adj-walk pos0-3 pos0-2 )
    (adj-car pos0-2 pos0-3 )
    (adj-car pos0-3 pos0-2 )
    (adj-walk pos0-3 pos1-3 )
    (adj-walk pos1-3 pos0-3 )
    (adj-car pos0-3 pos1-3 )
    (adj-car pos1-3 pos0-3 )
    (adj-car pos0-3 pos2-3 )
    (adj-car pos2-3 pos0-3 )
    (adj-walk pos0-5 pos1-5 )
    (adj-walk pos1-5 pos0-5 )
    (adj-car pos0-5 pos1-5 )
    (adj-car pos1-5 pos0-5 )
    (adj-car pos0-5 pos2-5 )
    (adj-car pos2-5 pos0-5 )
    (adj-car pos0-5 pos3-5 )
    (adj-car pos3-5 pos0-5 )
    (adj-walk pos0-7 pos0-8 )
    (adj-walk pos0-8 pos0-7 )
    (adj-walk pos0-7 pos1-7 )
    (adj-walk pos1-7 pos0-7 )
    (adj-car pos0-7 pos0-8 )
    (adj-car pos0-8 pos0-7 )
    (adj-car pos0-7 pos0-9 )
    (adj-car pos0-9 pos0-7 )
    (adj-car pos0-7 pos0-10 )
    (adj-car pos0-10 pos0-7 )
    (adj-car pos0-7 pos1-7 )
    (adj-car pos1-7 pos0-7 )
    (adj-walk pos0-8 pos0-9 )
    (adj-walk pos0-9 pos0-8 )
    (adj-walk pos0-8 pos1-8 )
    (adj-walk pos1-8 pos0-8 )
    (adj-car pos0-8 pos0-9 )
    (adj-car pos0-9 pos0-8 )
    (adj-car pos0-8 pos0-10 )
    (adj-car pos0-10 pos0-8 )
    (adj-car pos0-8 pos1-8 )
    (adj-car pos1-8 pos0-8 )
    (adj-walk pos0-9 pos0-10 )
    (adj-walk pos0-10 pos0-9 )
    (adj-walk pos0-9 pos1-9 )
    (adj-walk pos1-9 pos0-9 )
    (adj-car pos0-9 pos0-10 )
    (adj-car pos0-10 pos0-9 )
    (adj-car pos0-9 pos1-9 )
    (adj-car pos1-9 pos0-9 )
    (adj-walk pos1-3 pos2-3 )
    (adj-walk pos2-3 pos1-3 )
    (adj-car pos1-3 pos2-3 )
    (adj-car pos2-3 pos1-3 )
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
    (adj-car pos1-5 pos3-5 )
    (adj-car pos3-5 pos1-5 )
    (adj-car pos1-5 pos4-5 )
    (adj-car pos4-5 pos1-5 )
    (adj-walk pos1-6 pos1-7 )
    (adj-walk pos1-7 pos1-6 )
    (adj-car pos1-6 pos1-7 )
    (adj-car pos1-7 pos1-6 )
    (adj-car pos1-6 pos1-8 )
    (adj-car pos1-8 pos1-6 )
    (adj-car pos1-6 pos1-9 )
    (adj-car pos1-9 pos1-6 )
    (adj-walk pos1-7 pos1-8 )
    (adj-walk pos1-8 pos1-7 )
    (adj-car pos1-7 pos1-8 )
    (adj-car pos1-8 pos1-7 )
    (adj-car pos1-7 pos1-9 )
    (adj-car pos1-9 pos1-7 )
    (adj-walk pos1-8 pos1-9 )
    (adj-walk pos1-9 pos1-8 )
    (adj-car pos1-8 pos1-9 )
    (adj-car pos1-9 pos1-8 )
    (adj-walk pos1-11 pos1-12 )
    (adj-walk pos1-12 pos1-11 )
    (adj-car pos1-11 pos1-12 )
    (adj-car pos1-12 pos1-11 )
    (adj-car pos1-11 pos1-13 )
    (adj-car pos1-13 pos1-11 )
    (adj-walk pos1-12 pos1-13 )
    (adj-walk pos1-13 pos1-12 )
    (adj-walk pos1-12 pos2-12 )
    (adj-walk pos2-12 pos1-12 )
    (adj-car pos1-12 pos1-13 )
    (adj-car pos1-13 pos1-12 )
    (adj-car pos1-12 pos2-12 )
    (adj-car pos2-12 pos1-12 )
    (adj-car pos1-12 pos3-12 )
    (adj-car pos3-12 pos1-12 )
    (adj-walk pos1-13 pos2-13 )
    (adj-walk pos2-13 pos1-13 )
    (adj-car pos1-13 pos2-13 )
    (adj-car pos2-13 pos1-13 )
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
    (adj-walk pos2-2 pos3-2 )
    (adj-walk pos3-2 pos2-2 )
    (adj-car pos2-2 pos2-3 )
    (adj-car pos2-3 pos2-2 )
    (adj-car pos2-2 pos2-4 )
    (adj-car pos2-4 pos2-2 )
    (adj-car pos2-2 pos2-5 )
    (adj-car pos2-5 pos2-2 )
    (adj-car pos2-2 pos3-2 )
    (adj-car pos3-2 pos2-2 )
    (adj-car pos2-2 pos4-2 )
    (adj-car pos4-2 pos2-2 )
    (adj-car pos2-2 pos5-2 )
    (adj-car pos5-2 pos2-2 )
    (adj-walk pos2-3 pos2-4 )
    (adj-walk pos2-4 pos2-3 )
    (adj-car pos2-3 pos2-4 )
    (adj-car pos2-4 pos2-3 )
    (adj-car pos2-3 pos2-5 )
    (adj-car pos2-5 pos2-3 )
    (adj-walk pos2-4 pos2-5 )
    (adj-walk pos2-5 pos2-4 )
    (adj-walk pos2-4 pos3-4 )
    (adj-walk pos3-4 pos2-4 )
    (adj-car pos2-4 pos2-5 )
    (adj-car pos2-5 pos2-4 )
    (adj-car pos2-4 pos3-4 )
    (adj-car pos3-4 pos2-4 )
    (adj-car pos2-4 pos4-4 )
    (adj-car pos4-4 pos2-4 )
    (adj-car pos2-4 pos5-4 )
    (adj-car pos5-4 pos2-4 )
    (adj-walk pos2-5 pos3-5 )
    (adj-walk pos3-5 pos2-5 )
    (adj-car pos2-5 pos3-5 )
    (adj-car pos3-5 pos2-5 )
    (adj-car pos2-5 pos4-5 )
    (adj-car pos4-5 pos2-5 )
    (adj-walk pos2-12 pos2-13 )
    (adj-walk pos2-13 pos2-12 )
    (adj-walk pos2-12 pos3-12 )
    (adj-walk pos3-12 pos2-12 )
    (adj-car pos2-12 pos2-13 )
    (adj-car pos2-13 pos2-12 )
    (adj-car pos2-12 pos3-12 )
    (adj-car pos3-12 pos2-12 )
    (adj-walk pos3-0 pos4-0 )
    (adj-walk pos4-0 pos3-0 )
    (adj-car pos3-0 pos4-0 )
    (adj-car pos4-0 pos3-0 )
    (adj-car pos3-0 pos5-0 )
    (adj-car pos5-0 pos3-0 )
    (adj-walk pos3-2 pos4-2 )
    (adj-walk pos4-2 pos3-2 )
    (adj-car pos3-2 pos4-2 )
    (adj-car pos4-2 pos3-2 )
    (adj-car pos3-2 pos5-2 )
    (adj-car pos5-2 pos3-2 )
    (adj-walk pos3-4 pos3-5 )
    (adj-walk pos3-5 pos3-4 )
    (adj-walk pos3-4 pos4-4 )
    (adj-walk pos4-4 pos3-4 )
    (adj-car pos3-4 pos3-5 )
    (adj-car pos3-5 pos3-4 )
    (adj-car pos3-4 pos3-6 )
    (adj-car pos3-6 pos3-4 )
    (adj-car pos3-4 pos4-4 )
    (adj-car pos4-4 pos3-4 )
    (adj-car pos3-4 pos5-4 )
    (adj-car pos5-4 pos3-4 )
    (adj-walk pos3-5 pos3-6 )
    (adj-walk pos3-6 pos3-5 )
    (adj-walk pos3-5 pos4-5 )
    (adj-walk pos4-5 pos3-5 )
    (adj-car pos3-5 pos3-6 )
    (adj-car pos3-6 pos3-5 )
    (adj-car pos3-5 pos4-5 )
    (adj-car pos4-5 pos3-5 )
    (adj-walk pos3-6 pos4-6 )
    (adj-walk pos4-6 pos3-6 )
    (adj-car pos3-6 pos4-6 )
    (adj-car pos4-6 pos3-6 )
    (adj-car pos3-6 pos5-6 )
    (adj-car pos5-6 pos3-6 )
    (adj-walk pos3-8 pos3-9 )
    (adj-walk pos3-9 pos3-8 )
    (adj-walk pos3-8 pos4-8 )
    (adj-walk pos4-8 pos3-8 )
    (adj-car pos3-8 pos3-9 )
    (adj-car pos3-9 pos3-8 )
    (adj-car pos3-8 pos3-10 )
    (adj-car pos3-10 pos3-8 )
    (adj-car pos3-8 pos4-8 )
    (adj-car pos4-8 pos3-8 )
    (adj-car pos3-8 pos5-8 )
    (adj-car pos5-8 pos3-8 )
    (adj-walk pos3-9 pos3-10 )
    (adj-walk pos3-10 pos3-9 )
    (adj-walk pos3-9 pos4-9 )
    (adj-walk pos4-9 pos3-9 )
    (adj-car pos3-9 pos3-10 )
    (adj-car pos3-10 pos3-9 )
    (adj-car pos3-9 pos4-9 )
    (adj-car pos4-9 pos3-9 )
    (adj-car pos3-9 pos5-9 )
    (adj-car pos5-9 pos3-9 )
    (adj-walk pos4-0 pos4-1 )
    (adj-walk pos4-1 pos4-0 )
    (adj-walk pos4-0 pos5-0 )
    (adj-walk pos5-0 pos4-0 )
    (adj-car pos4-0 pos4-1 )
    (adj-car pos4-1 pos4-0 )
    (adj-car pos4-0 pos4-2 )
    (adj-car pos4-2 pos4-0 )
    (adj-car pos4-0 pos5-0 )
    (adj-car pos5-0 pos4-0 )
    (adj-walk pos4-1 pos4-2 )
    (adj-walk pos4-2 pos4-1 )
    (adj-walk pos4-1 pos5-1 )
    (adj-walk pos5-1 pos4-1 )
    (adj-car pos4-1 pos4-2 )
    (adj-car pos4-2 pos4-1 )
    (adj-car pos4-1 pos5-1 )
    (adj-car pos5-1 pos4-1 )
    (adj-walk pos4-2 pos5-2 )
    (adj-walk pos5-2 pos4-2 )
    (adj-car pos4-2 pos5-2 )
    (adj-car pos5-2 pos4-2 )
    (adj-walk pos4-4 pos4-5 )
    (adj-walk pos4-5 pos4-4 )
    (adj-walk pos4-4 pos5-4 )
    (adj-walk pos5-4 pos4-4 )
    (adj-car pos4-4 pos4-5 )
    (adj-car pos4-5 pos4-4 )
    (adj-car pos4-4 pos4-6 )
    (adj-car pos4-6 pos4-4 )
    (adj-car pos4-4 pos4-7 )
    (adj-car pos4-7 pos4-4 )
    (adj-car pos4-4 pos5-4 )
    (adj-car pos5-4 pos4-4 )
    (adj-walk pos4-5 pos4-6 )
    (adj-walk pos4-6 pos4-5 )
    (adj-car pos4-5 pos4-6 )
    (adj-car pos4-6 pos4-5 )
    (adj-car pos4-5 pos4-7 )
    (adj-car pos4-7 pos4-5 )
    (adj-car pos4-5 pos4-8 )
    (adj-car pos4-8 pos4-5 )
    (adj-walk pos4-6 pos4-7 )
    (adj-walk pos4-7 pos4-6 )
    (adj-walk pos4-6 pos5-6 )
    (adj-walk pos5-6 pos4-6 )
    (adj-car pos4-6 pos4-7 )
    (adj-car pos4-7 pos4-6 )
    (adj-car pos4-6 pos4-8 )
    (adj-car pos4-8 pos4-6 )
    (adj-car pos4-6 pos4-9 )
    (adj-car pos4-9 pos4-6 )
    (adj-car pos4-6 pos5-6 )
    (adj-car pos5-6 pos4-6 )
    (adj-walk pos4-7 pos4-8 )
    (adj-walk pos4-8 pos4-7 )
    (adj-walk pos4-7 pos5-7 )
    (adj-walk pos5-7 pos4-7 )
    (adj-car pos4-7 pos4-8 )
    (adj-car pos4-8 pos4-7 )
    (adj-car pos4-7 pos4-9 )
    (adj-car pos4-9 pos4-7 )
    (adj-car pos4-7 pos5-7 )
    (adj-car pos5-7 pos4-7 )
    (adj-walk pos4-8 pos4-9 )
    (adj-walk pos4-9 pos4-8 )
    (adj-walk pos4-8 pos5-8 )
    (adj-walk pos5-8 pos4-8 )
    (adj-car pos4-8 pos4-9 )
    (adj-car pos4-9 pos4-8 )
    (adj-car pos4-8 pos5-8 )
    (adj-car pos5-8 pos4-8 )
    (adj-walk pos4-9 pos5-9 )
    (adj-walk pos5-9 pos4-9 )
    (adj-car pos4-9 pos5-9 )
    (adj-car pos5-9 pos4-9 )
    (adj-walk pos4-11 pos5-11 )
    (adj-walk pos5-11 pos4-11 )
    (adj-car pos4-11 pos5-11 )
    (adj-car pos5-11 pos4-11 )
    (adj-walk pos5-0 pos5-1 )
    (adj-walk pos5-1 pos5-0 )
    (adj-car pos5-0 pos5-1 )
    (adj-car pos5-1 pos5-0 )
    (adj-car pos5-0 pos5-2 )
    (adj-car pos5-2 pos5-0 )
    (adj-car pos5-0 pos5-3 )
    (adj-car pos5-3 pos5-0 )
    (adj-walk pos5-1 pos5-2 )
    (adj-walk pos5-2 pos5-1 )
    (adj-car pos5-1 pos5-2 )
    (adj-car pos5-2 pos5-1 )
    (adj-car pos5-1 pos5-3 )
    (adj-car pos5-3 pos5-1 )
    (adj-car pos5-1 pos5-4 )
    (adj-car pos5-4 pos5-1 )
    (adj-walk pos5-2 pos5-3 )
    (adj-walk pos5-3 pos5-2 )
    (adj-car pos5-2 pos5-3 )
    (adj-car pos5-3 pos5-2 )
    (adj-car pos5-2 pos5-4 )
    (adj-car pos5-4 pos5-2 )
    (adj-walk pos5-3 pos5-4 )
    (adj-walk pos5-4 pos5-3 )
    (adj-car pos5-3 pos5-4 )
    (adj-car pos5-4 pos5-3 )
    (adj-walk pos5-6 pos5-7 )
    (adj-walk pos5-7 pos5-6 )
    (adj-car pos5-6 pos5-7 )
    (adj-car pos5-7 pos5-6 )
    (adj-car pos5-6 pos5-8 )
    (adj-car pos5-8 pos5-6 )
    (adj-car pos5-6 pos5-9 )
    (adj-car pos5-9 pos5-6 )
    (adj-walk pos5-7 pos5-8 )
    (adj-walk pos5-8 pos5-7 )
    (adj-car pos5-7 pos5-8 )
    (adj-car pos5-8 pos5-7 )
    (adj-car pos5-7 pos5-9 )
    (adj-car pos5-9 pos5-7 )
    (adj-car pos5-7 pos5-10 )
    (adj-car pos5-10 pos5-7 )
    (adj-walk pos5-8 pos5-9 )
    (adj-walk pos5-9 pos5-8 )
    (adj-car pos5-8 pos5-9 )
    (adj-car pos5-9 pos5-8 )
    (adj-car pos5-8 pos5-10 )
    (adj-car pos5-10 pos5-8 )
    (adj-car pos5-8 pos5-11 )
    (adj-car pos5-11 pos5-8 )
    (adj-walk pos5-9 pos5-10 )
    (adj-walk pos5-10 pos5-9 )
    (adj-car pos5-9 pos5-10 )
    (adj-car pos5-10 pos5-9 )
    (adj-car pos5-9 pos5-11 )
    (adj-car pos5-11 pos5-9 )
    (adj-car pos5-9 pos5-12 )
    (adj-car pos5-12 pos5-9 )
    (adj-walk pos5-10 pos5-11 )
    (adj-walk pos5-11 pos5-10 )
    (adj-car pos5-10 pos5-11 )
    (adj-car pos5-11 pos5-10 )
    (adj-car pos5-10 pos5-12 )
    (adj-car pos5-12 pos5-10 )
    (adj-walk pos5-11 pos5-12 )
    (adj-walk pos5-12 pos5-11 )
    (adj-car pos5-11 pos5-12 )
    (adj-car pos5-12 pos5-11 )

    (at-car car0 pos3-6)
    (free car0)

    (at-prime pos4-11)
    (= (total-cost) 0)
  )


  (:goal (and (at-prime pos1-7)))
  (:metric minimize (total-cost))

)