(define (problem car-assistance2_problem_17_supporter)
  (:domain car-assistance2_supporter)
  (:objects
    pos0-0 pos0-1 pos0-2 pos0-3 pos0-5 pos0-7 pos0-8 pos0-9 pos0-10 pos0-11 pos1-1 pos1-2 pos1-3 pos1-4 pos1-5 pos1-6 pos1-7 pos1-8 pos1-10 pos1-11  - place
    car0  - car)


  (:init
    (adj-walk pos0-0 pos0-1 )
    (adj-walk pos0-1 pos0-0 )
    (adj-car pos0-0 pos0-1 )
    (adj-car pos0-1 pos0-0 )
    (adj-car pos0-0 pos0-2 )
    (adj-car pos0-2 pos0-0 )
    (adj-car pos0-0 pos0-3 )
    (adj-car pos0-3 pos0-0 )
    (adj-walk pos0-1 pos0-2 )
    (adj-walk pos0-2 pos0-1 )
    (adj-walk pos0-1 pos1-1 )
    (adj-walk pos1-1 pos0-1 )
    (adj-car pos0-1 pos0-2 )
    (adj-car pos0-2 pos0-1 )
    (adj-car pos0-1 pos0-3 )
    (adj-car pos0-3 pos0-1 )
    (adj-car pos0-1 pos1-1 )
    (adj-car pos1-1 pos0-1 )
    (adj-walk pos0-2 pos0-3 )
    (adj-walk pos0-3 pos0-2 )
    (adj-walk pos0-2 pos1-2 )
    (adj-walk pos1-2 pos0-2 )
    (adj-car pos0-2 pos0-3 )
    (adj-car pos0-3 pos0-2 )
    (adj-car pos0-2 pos1-2 )
    (adj-car pos1-2 pos0-2 )
    (adj-walk pos0-3 pos1-3 )
    (adj-walk pos1-3 pos0-3 )
    (adj-car pos0-3 pos1-3 )
    (adj-car pos1-3 pos0-3 )
    (adj-walk pos0-5 pos1-5 )
    (adj-walk pos1-5 pos0-5 )
    (adj-car pos0-5 pos1-5 )
    (adj-car pos1-5 pos0-5 )
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
    (adj-car pos0-8 pos0-11 )
    (adj-car pos0-11 pos0-8 )
    (adj-car pos0-8 pos1-8 )
    (adj-car pos1-8 pos0-8 )
    (adj-walk pos0-9 pos0-10 )
    (adj-walk pos0-10 pos0-9 )
    (adj-car pos0-9 pos0-10 )
    (adj-car pos0-10 pos0-9 )
    (adj-car pos0-9 pos0-11 )
    (adj-car pos0-11 pos0-9 )
    (adj-walk pos0-10 pos0-11 )
    (adj-walk pos0-11 pos0-10 )
    (adj-walk pos0-10 pos1-10 )
    (adj-walk pos1-10 pos0-10 )
    (adj-car pos0-10 pos0-11 )
    (adj-car pos0-11 pos0-10 )
    (adj-car pos0-10 pos1-10 )
    (adj-car pos1-10 pos0-10 )
    (adj-walk pos0-11 pos1-11 )
    (adj-walk pos1-11 pos0-11 )
    (adj-car pos0-11 pos1-11 )
    (adj-car pos1-11 pos0-11 )
    (adj-walk pos1-1 pos1-2 )
    (adj-walk pos1-2 pos1-1 )
    (adj-car pos1-1 pos1-2 )
    (adj-car pos1-2 pos1-1 )
    (adj-car pos1-1 pos1-3 )
    (adj-car pos1-3 pos1-1 )
    (adj-car pos1-1 pos1-4 )
    (adj-car pos1-4 pos1-1 )
    (adj-walk pos1-2 pos1-3 )
    (adj-walk pos1-3 pos1-2 )
    (adj-car pos1-2 pos1-3 )
    (adj-car pos1-3 pos1-2 )
    (adj-car pos1-2 pos1-4 )
    (adj-car pos1-4 pos1-2 )
    (adj-car pos1-2 pos1-5 )
    (adj-car pos1-5 pos1-2 )
    (adj-walk pos1-3 pos1-4 )
    (adj-walk pos1-4 pos1-3 )
    (adj-car pos1-3 pos1-4 )
    (adj-car pos1-4 pos1-3 )
    (adj-car pos1-3 pos1-5 )
    (adj-car pos1-5 pos1-3 )
    (adj-car pos1-3 pos1-6 )
    (adj-car pos1-6 pos1-3 )
    (adj-walk pos1-4 pos1-5 )
    (adj-walk pos1-5 pos1-4 )
    (adj-car pos1-4 pos1-5 )
    (adj-car pos1-5 pos1-4 )
    (adj-car pos1-4 pos1-6 )
    (adj-car pos1-6 pos1-4 )
    (adj-car pos1-4 pos1-7 )
    (adj-car pos1-7 pos1-4 )
    (adj-walk pos1-5 pos1-6 )
    (adj-walk pos1-6 pos1-5 )
    (adj-car pos1-5 pos1-6 )
    (adj-car pos1-6 pos1-5 )
    (adj-car pos1-5 pos1-7 )
    (adj-car pos1-7 pos1-5 )
    (adj-car pos1-5 pos1-8 )
    (adj-car pos1-8 pos1-5 )
    (adj-walk pos1-6 pos1-7 )
    (adj-walk pos1-7 pos1-6 )
    (adj-car pos1-6 pos1-7 )
    (adj-car pos1-7 pos1-6 )
    (adj-car pos1-6 pos1-8 )
    (adj-car pos1-8 pos1-6 )
    (adj-walk pos1-7 pos1-8 )
    (adj-walk pos1-8 pos1-7 )
    (adj-car pos1-7 pos1-8 )
    (adj-car pos1-8 pos1-7 )
    (adj-walk pos1-10 pos1-11 )
    (adj-walk pos1-11 pos1-10 )
    (adj-car pos1-10 pos1-11 )
    (adj-car pos1-11 pos1-10 )

    (at-car car0 pos1-5)
    (free car0)

    (at-supporter pos1-4)
    (= (total-cost) 0)
  )


)