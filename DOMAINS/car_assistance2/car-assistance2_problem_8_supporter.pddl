(define (problem car-assistance2_problem_8_supporter)
  (:domain car-assistance2_supporter)
  (:objects
    pos0-0 pos0-3 pos0-4 pos0-5 pos0-7 pos0-8 pos0-9 pos0-10 pos0-11 pos1-0 pos1-2 pos1-4 pos1-5 pos1-7 pos1-8 pos1-9 pos1-10 pos1-11 pos2-0 pos2-1 pos2-2 pos2-3 pos2-5 pos2-6 pos2-7 pos2-8 pos2-9 pos2-10 pos2-11 pos3-3 pos3-4 pos3-5 pos3-6 pos3-7 pos3-9 pos3-10 pos3-11 pos4-0 pos4-4 pos4-5 pos4-7 pos4-8 pos4-9 pos4-11 pos5-0 pos5-1 pos5-2 pos5-3 pos5-4 pos5-5 pos5-6 pos5-7 pos5-8 pos5-9 pos5-10 pos5-11  - place
    car0  - car)


  (:init
    (adj-walk pos0-0 pos1-0 )
    (adj-walk pos1-0 pos0-0 )
    (adj-car pos0-0 pos1-0 )
    (adj-car pos1-0 pos0-0 )
    (adj-car pos0-0 pos2-0 )
    (adj-car pos2-0 pos0-0 )
    (adj-walk pos0-3 pos0-4 )
    (adj-walk pos0-4 pos0-3 )
    (adj-car pos0-3 pos0-4 )
    (adj-car pos0-4 pos0-3 )
    (adj-car pos0-3 pos0-5 )
    (adj-car pos0-5 pos0-3 )
    (adj-walk pos0-4 pos0-5 )
    (adj-walk pos0-5 pos0-4 )
    (adj-walk pos0-4 pos1-4 )
    (adj-walk pos1-4 pos0-4 )
    (adj-car pos0-4 pos0-5 )
    (adj-car pos0-5 pos0-4 )
    (adj-car pos0-4 pos1-4 )
    (adj-car pos1-4 pos0-4 )
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
    (adj-car pos0-7 pos2-7 )
    (adj-car pos2-7 pos0-7 )
    (adj-car pos0-7 pos3-7 )
    (adj-car pos3-7 pos0-7 )
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
    (adj-car pos0-8 pos2-8 )
    (adj-car pos2-8 pos0-8 )
    (adj-walk pos0-9 pos0-10 )
    (adj-walk pos0-10 pos0-9 )
    (adj-walk pos0-9 pos1-9 )
    (adj-walk pos1-9 pos0-9 )
    (adj-car pos0-9 pos0-10 )
    (adj-car pos0-10 pos0-9 )
    (adj-car pos0-9 pos0-11 )
    (adj-car pos0-11 pos0-9 )
    (adj-car pos0-9 pos1-9 )
    (adj-car pos1-9 pos0-9 )
    (adj-car pos0-9 pos2-9 )
    (adj-car pos2-9 pos0-9 )
    (adj-car pos0-9 pos3-9 )
    (adj-car pos3-9 pos0-9 )
    (adj-walk pos0-10 pos0-11 )
    (adj-walk pos0-11 pos0-10 )
    (adj-walk pos0-10 pos1-10 )
    (adj-walk pos1-10 pos0-10 )
    (adj-car pos0-10 pos0-11 )
    (adj-car pos0-11 pos0-10 )
    (adj-car pos0-10 pos1-10 )
    (adj-car pos1-10 pos0-10 )
    (adj-car pos0-10 pos2-10 )
    (adj-car pos2-10 pos0-10 )
    (adj-car pos0-10 pos3-10 )
    (adj-car pos3-10 pos0-10 )
    (adj-walk pos0-11 pos1-11 )
    (adj-walk pos1-11 pos0-11 )
    (adj-car pos0-11 pos1-11 )
    (adj-car pos1-11 pos0-11 )
    (adj-car pos0-11 pos2-11 )
    (adj-car pos2-11 pos0-11 )
    (adj-car pos0-11 pos3-11 )
    (adj-car pos3-11 pos0-11 )
    (adj-walk pos1-0 pos2-0 )
    (adj-walk pos2-0 pos1-0 )
    (adj-car pos1-0 pos2-0 )
    (adj-car pos2-0 pos1-0 )
    (adj-walk pos1-2 pos2-2 )
    (adj-walk pos2-2 pos1-2 )
    (adj-car pos1-2 pos2-2 )
    (adj-car pos2-2 pos1-2 )
    (adj-walk pos1-4 pos1-5 )
    (adj-walk pos1-5 pos1-4 )
    (adj-car pos1-4 pos1-5 )
    (adj-car pos1-5 pos1-4 )
    (adj-walk pos1-5 pos2-5 )
    (adj-walk pos2-5 pos1-5 )
    (adj-car pos1-5 pos2-5 )
    (adj-car pos2-5 pos1-5 )
    (adj-car pos1-5 pos3-5 )
    (adj-car pos3-5 pos1-5 )
    (adj-car pos1-5 pos4-5 )
    (adj-car pos4-5 pos1-5 )
    (adj-walk pos1-7 pos1-8 )
    (adj-walk pos1-8 pos1-7 )
    (adj-walk pos1-7 pos2-7 )
    (adj-walk pos2-7 pos1-7 )
    (adj-car pos1-7 pos1-8 )
    (adj-car pos1-8 pos1-7 )
    (adj-car pos1-7 pos1-9 )
    (adj-car pos1-9 pos1-7 )
    (adj-car pos1-7 pos1-10 )
    (adj-car pos1-10 pos1-7 )
    (adj-car pos1-7 pos2-7 )
    (adj-car pos2-7 pos1-7 )
    (adj-car pos1-7 pos3-7 )
    (adj-car pos3-7 pos1-7 )
    (adj-car pos1-7 pos4-7 )
    (adj-car pos4-7 pos1-7 )
    (adj-walk pos1-8 pos1-9 )
    (adj-walk pos1-9 pos1-8 )
    (adj-walk pos1-8 pos2-8 )
    (adj-walk pos2-8 pos1-8 )
    (adj-car pos1-8 pos1-9 )
    (adj-car pos1-9 pos1-8 )
    (adj-car pos1-8 pos1-10 )
    (adj-car pos1-10 pos1-8 )
    (adj-car pos1-8 pos1-11 )
    (adj-car pos1-11 pos1-8 )
    (adj-car pos1-8 pos2-8 )
    (adj-car pos2-8 pos1-8 )
    (adj-walk pos1-9 pos1-10 )
    (adj-walk pos1-10 pos1-9 )
    (adj-walk pos1-9 pos2-9 )
    (adj-walk pos2-9 pos1-9 )
    (adj-car pos1-9 pos1-10 )
    (adj-car pos1-10 pos1-9 )
    (adj-car pos1-9 pos1-11 )
    (adj-car pos1-11 pos1-9 )
    (adj-car pos1-9 pos2-9 )
    (adj-car pos2-9 pos1-9 )
    (adj-car pos1-9 pos3-9 )
    (adj-car pos3-9 pos1-9 )
    (adj-car pos1-9 pos4-9 )
    (adj-car pos4-9 pos1-9 )
    (adj-walk pos1-10 pos1-11 )
    (adj-walk pos1-11 pos1-10 )
    (adj-walk pos1-10 pos2-10 )
    (adj-walk pos2-10 pos1-10 )
    (adj-car pos1-10 pos1-11 )
    (adj-car pos1-11 pos1-10 )
    (adj-car pos1-10 pos2-10 )
    (adj-car pos2-10 pos1-10 )
    (adj-car pos1-10 pos3-10 )
    (adj-car pos3-10 pos1-10 )
    (adj-walk pos1-11 pos2-11 )
    (adj-walk pos2-11 pos1-11 )
    (adj-car pos1-11 pos2-11 )
    (adj-car pos2-11 pos1-11 )
    (adj-car pos1-11 pos3-11 )
    (adj-car pos3-11 pos1-11 )
    (adj-car pos1-11 pos4-11 )
    (adj-car pos4-11 pos1-11 )
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
    (adj-walk pos2-2 pos2-3 )
    (adj-walk pos2-3 pos2-2 )
    (adj-car pos2-2 pos2-3 )
    (adj-car pos2-3 pos2-2 )
    (adj-walk pos2-3 pos3-3 )
    (adj-walk pos3-3 pos2-3 )
    (adj-car pos2-3 pos3-3 )
    (adj-car pos3-3 pos2-3 )
    (adj-walk pos2-5 pos2-6 )
    (adj-walk pos2-6 pos2-5 )
    (adj-walk pos2-5 pos3-5 )
    (adj-walk pos3-5 pos2-5 )
    (adj-car pos2-5 pos2-6 )
    (adj-car pos2-6 pos2-5 )
    (adj-car pos2-5 pos2-7 )
    (adj-car pos2-7 pos2-5 )
    (adj-car pos2-5 pos2-8 )
    (adj-car pos2-8 pos2-5 )
    (adj-car pos2-5 pos3-5 )
    (adj-car pos3-5 pos2-5 )
    (adj-car pos2-5 pos4-5 )
    (adj-car pos4-5 pos2-5 )
    (adj-car pos2-5 pos5-5 )
    (adj-car pos5-5 pos2-5 )
    (adj-walk pos2-6 pos2-7 )
    (adj-walk pos2-7 pos2-6 )
    (adj-walk pos2-6 pos3-6 )
    (adj-walk pos3-6 pos2-6 )
    (adj-car pos2-6 pos2-7 )
    (adj-car pos2-7 pos2-6 )
    (adj-car pos2-6 pos2-8 )
    (adj-car pos2-8 pos2-6 )
    (adj-car pos2-6 pos2-9 )
    (adj-car pos2-9 pos2-6 )
    (adj-car pos2-6 pos3-6 )
    (adj-car pos3-6 pos2-6 )
    (adj-walk pos2-7 pos2-8 )
    (adj-walk pos2-8 pos2-7 )
    (adj-walk pos2-7 pos3-7 )
    (adj-walk pos3-7 pos2-7 )
    (adj-car pos2-7 pos2-8 )
    (adj-car pos2-8 pos2-7 )
    (adj-car pos2-7 pos2-9 )
    (adj-car pos2-9 pos2-7 )
    (adj-car pos2-7 pos2-10 )
    (adj-car pos2-10 pos2-7 )
    (adj-car pos2-7 pos3-7 )
    (adj-car pos3-7 pos2-7 )
    (adj-car pos2-7 pos4-7 )
    (adj-car pos4-7 pos2-7 )
    (adj-car pos2-7 pos5-7 )
    (adj-car pos5-7 pos2-7 )
    (adj-walk pos2-8 pos2-9 )
    (adj-walk pos2-9 pos2-8 )
    (adj-car pos2-8 pos2-9 )
    (adj-car pos2-9 pos2-8 )
    (adj-car pos2-8 pos2-10 )
    (adj-car pos2-10 pos2-8 )
    (adj-car pos2-8 pos2-11 )
    (adj-car pos2-11 pos2-8 )
    (adj-walk pos2-9 pos2-10 )
    (adj-walk pos2-10 pos2-9 )
    (adj-walk pos2-9 pos3-9 )
    (adj-walk pos3-9 pos2-9 )
    (adj-car pos2-9 pos2-10 )
    (adj-car pos2-10 pos2-9 )
    (adj-car pos2-9 pos2-11 )
    (adj-car pos2-11 pos2-9 )
    (adj-car pos2-9 pos3-9 )
    (adj-car pos3-9 pos2-9 )
    (adj-car pos2-9 pos4-9 )
    (adj-car pos4-9 pos2-9 )
    (adj-car pos2-9 pos5-9 )
    (adj-car pos5-9 pos2-9 )
    (adj-walk pos2-10 pos2-11 )
    (adj-walk pos2-11 pos2-10 )
    (adj-walk pos2-10 pos3-10 )
    (adj-walk pos3-10 pos2-10 )
    (adj-car pos2-10 pos2-11 )
    (adj-car pos2-11 pos2-10 )
    (adj-car pos2-10 pos3-10 )
    (adj-car pos3-10 pos2-10 )
    (adj-walk pos2-11 pos3-11 )
    (adj-walk pos3-11 pos2-11 )
    (adj-car pos2-11 pos3-11 )
    (adj-car pos3-11 pos2-11 )
    (adj-car pos2-11 pos4-11 )
    (adj-car pos4-11 pos2-11 )
    (adj-car pos2-11 pos5-11 )
    (adj-car pos5-11 pos2-11 )
    (adj-walk pos3-3 pos3-4 )
    (adj-walk pos3-4 pos3-3 )
    (adj-car pos3-3 pos3-4 )
    (adj-car pos3-4 pos3-3 )
    (adj-car pos3-3 pos3-5 )
    (adj-car pos3-5 pos3-3 )
    (adj-car pos3-3 pos3-6 )
    (adj-car pos3-6 pos3-3 )
    (adj-walk pos3-4 pos3-5 )
    (adj-walk pos3-5 pos3-4 )
    (adj-walk pos3-4 pos4-4 )
    (adj-walk pos4-4 pos3-4 )
    (adj-car pos3-4 pos3-5 )
    (adj-car pos3-5 pos3-4 )
    (adj-car pos3-4 pos3-6 )
    (adj-car pos3-6 pos3-4 )
    (adj-car pos3-4 pos3-7 )
    (adj-car pos3-7 pos3-4 )
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
    (adj-car pos3-5 pos3-7 )
    (adj-car pos3-7 pos3-5 )
    (adj-car pos3-5 pos4-5 )
    (adj-car pos4-5 pos3-5 )
    (adj-car pos3-5 pos5-5 )
    (adj-car pos5-5 pos3-5 )
    (adj-walk pos3-6 pos3-7 )
    (adj-walk pos3-7 pos3-6 )
    (adj-car pos3-6 pos3-7 )
    (adj-car pos3-7 pos3-6 )
    (adj-walk pos3-7 pos4-7 )
    (adj-walk pos4-7 pos3-7 )
    (adj-car pos3-7 pos4-7 )
    (adj-car pos4-7 pos3-7 )
    (adj-car pos3-7 pos5-7 )
    (adj-car pos5-7 pos3-7 )
    (adj-walk pos3-9 pos3-10 )
    (adj-walk pos3-10 pos3-9 )
    (adj-walk pos3-9 pos4-9 )
    (adj-walk pos4-9 pos3-9 )
    (adj-car pos3-9 pos3-10 )
    (adj-car pos3-10 pos3-9 )
    (adj-car pos3-9 pos3-11 )
    (adj-car pos3-11 pos3-9 )
    (adj-car pos3-9 pos4-9 )
    (adj-car pos4-9 pos3-9 )
    (adj-car pos3-9 pos5-9 )
    (adj-car pos5-9 pos3-9 )
    (adj-walk pos3-10 pos3-11 )
    (adj-walk pos3-11 pos3-10 )
    (adj-car pos3-10 pos3-11 )
    (adj-car pos3-11 pos3-10 )
    (adj-walk pos3-11 pos4-11 )
    (adj-walk pos4-11 pos3-11 )
    (adj-car pos3-11 pos4-11 )
    (adj-car pos4-11 pos3-11 )
    (adj-car pos3-11 pos5-11 )
    (adj-car pos5-11 pos3-11 )
    (adj-walk pos4-0 pos5-0 )
    (adj-walk pos5-0 pos4-0 )
    (adj-car pos4-0 pos5-0 )
    (adj-car pos5-0 pos4-0 )
    (adj-walk pos4-4 pos4-5 )
    (adj-walk pos4-5 pos4-4 )
    (adj-walk pos4-4 pos5-4 )
    (adj-walk pos5-4 pos4-4 )
    (adj-car pos4-4 pos4-5 )
    (adj-car pos4-5 pos4-4 )
    (adj-car pos4-4 pos5-4 )
    (adj-car pos5-4 pos4-4 )
    (adj-walk pos4-5 pos5-5 )
    (adj-walk pos5-5 pos4-5 )
    (adj-car pos4-5 pos5-5 )
    (adj-car pos5-5 pos4-5 )
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
    (adj-car pos5-2 pos5-5 )
    (adj-car pos5-5 pos5-2 )
    (adj-walk pos5-3 pos5-4 )
    (adj-walk pos5-4 pos5-3 )
    (adj-car pos5-3 pos5-4 )
    (adj-car pos5-4 pos5-3 )
    (adj-car pos5-3 pos5-5 )
    (adj-car pos5-5 pos5-3 )
    (adj-car pos5-3 pos5-6 )
    (adj-car pos5-6 pos5-3 )
    (adj-walk pos5-4 pos5-5 )
    (adj-walk pos5-5 pos5-4 )
    (adj-car pos5-4 pos5-5 )
    (adj-car pos5-5 pos5-4 )
    (adj-car pos5-4 pos5-6 )
    (adj-car pos5-6 pos5-4 )
    (adj-car pos5-4 pos5-7 )
    (adj-car pos5-7 pos5-4 )
    (adj-walk pos5-5 pos5-6 )
    (adj-walk pos5-6 pos5-5 )
    (adj-car pos5-5 pos5-6 )
    (adj-car pos5-6 pos5-5 )
    (adj-car pos5-5 pos5-7 )
    (adj-car pos5-7 pos5-5 )
    (adj-car pos5-5 pos5-8 )
    (adj-car pos5-8 pos5-5 )
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
    (adj-walk pos5-10 pos5-11 )
    (adj-walk pos5-11 pos5-10 )
    (adj-car pos5-10 pos5-11 )
    (adj-car pos5-11 pos5-10 )

    (at-car car0 pos1-10)
    (free car0)

    (at-supporter pos2-11)
    (= (total-cost) 0)
  )


)