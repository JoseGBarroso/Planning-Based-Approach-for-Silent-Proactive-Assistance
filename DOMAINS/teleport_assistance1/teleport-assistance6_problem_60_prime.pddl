(define (problem teleport-assistance6_problem_60_prime)
  (:domain teleport-assistance6_prime)
  (:objects
    pos0-0 pos0-2 pos0-7 pos0-8 pos0-9 pos1-3 pos1-4 pos1-6 pos1-8 pos2-2 pos2-3 pos2-4 pos2-5 pos2-6 pos2-7 pos2-8 pos3-1 pos3-2 pos3-3 pos3-5 pos3-8 pos4-0 pos4-1 pos4-2 pos4-4 pos4-5 pos4-6 pos4-7 pos4-8 pos5-0 pos5-2 pos5-3 pos5-4 pos5-8 pos5-9 pos6-1 pos6-2 pos6-3 pos6-5 pos6-7 pos6-8 pos6-9  - place)

  (:init
    (adj-walk pos0-7 pos0-8 )
    (adj-walk pos0-8 pos0-7 )
    (adj-walk pos0-8 pos0-9 )
    (adj-walk pos0-9 pos0-8 )
    (adj-walk pos0-8 pos1-8 )
    (adj-walk pos1-8 pos0-8 )
    (adj-walk pos1-3 pos1-4 )
    (adj-walk pos1-4 pos1-3 )
    (adj-walk pos1-3 pos2-3 )
    (adj-walk pos2-3 pos1-3 )
    (adj-walk pos1-4 pos2-4 )
    (adj-walk pos2-4 pos1-4 )
    (adj-walk pos1-6 pos2-6 )
    (adj-walk pos2-6 pos1-6 )
    (adj-walk pos1-8 pos2-8 )
    (adj-walk pos2-8 pos1-8 )
    (adj-walk pos2-2 pos2-3 )
    (adj-walk pos2-3 pos2-2 )
    (adj-walk pos2-2 pos3-2 )
    (adj-walk pos3-2 pos2-2 )
    (adj-walk pos2-3 pos2-4 )
    (adj-walk pos2-4 pos2-3 )
    (adj-walk pos2-3 pos3-3 )
    (adj-walk pos3-3 pos2-3 )
    (adj-walk pos2-4 pos2-5 )
    (adj-walk pos2-5 pos2-4 )
    (adj-walk pos2-5 pos2-6 )
    (adj-walk pos2-6 pos2-5 )
    (adj-walk pos2-5 pos3-5 )
    (adj-walk pos3-5 pos2-5 )
    (adj-walk pos2-6 pos2-7 )
    (adj-walk pos2-7 pos2-6 )
    (adj-walk pos2-7 pos2-8 )
    (adj-walk pos2-8 pos2-7 )
    (adj-walk pos2-8 pos3-8 )
    (adj-walk pos3-8 pos2-8 )
    (adj-walk pos3-1 pos3-2 )
    (adj-walk pos3-2 pos3-1 )
    (adj-walk pos3-1 pos4-1 )
    (adj-walk pos4-1 pos3-1 )
    (adj-walk pos3-2 pos3-3 )
    (adj-walk pos3-3 pos3-2 )
    (adj-walk pos3-2 pos4-2 )
    (adj-walk pos4-2 pos3-2 )
    (adj-walk pos3-5 pos4-5 )
    (adj-walk pos4-5 pos3-5 )
    (adj-walk pos3-8 pos4-8 )
    (adj-walk pos4-8 pos3-8 )
    (adj-walk pos4-0 pos4-1 )
    (adj-walk pos4-1 pos4-0 )
    (adj-walk pos4-0 pos5-0 )
    (adj-walk pos5-0 pos4-0 )
    (adj-walk pos4-1 pos4-2 )
    (adj-walk pos4-2 pos4-1 )
    (adj-walk pos4-2 pos5-2 )
    (adj-walk pos5-2 pos4-2 )
    (adj-walk pos4-4 pos4-5 )
    (adj-walk pos4-5 pos4-4 )
    (adj-walk pos4-4 pos5-4 )
    (adj-walk pos5-4 pos4-4 )
    (adj-walk pos4-5 pos4-6 )
    (adj-walk pos4-6 pos4-5 )
    (adj-walk pos4-6 pos4-7 )
    (adj-walk pos4-7 pos4-6 )
    (adj-walk pos4-7 pos4-8 )
    (adj-walk pos4-8 pos4-7 )
    (adj-walk pos4-8 pos5-8 )
    (adj-walk pos5-8 pos4-8 )
    (adj-walk pos5-2 pos5-3 )
    (adj-walk pos5-3 pos5-2 )
    (adj-walk pos5-2 pos6-2 )
    (adj-walk pos6-2 pos5-2 )
    (adj-walk pos5-3 pos5-4 )
    (adj-walk pos5-4 pos5-3 )
    (adj-walk pos5-3 pos6-3 )
    (adj-walk pos6-3 pos5-3 )
    (adj-walk pos5-8 pos5-9 )
    (adj-walk pos5-9 pos5-8 )
    (adj-walk pos5-8 pos6-8 )
    (adj-walk pos6-8 pos5-8 )
    (adj-walk pos5-9 pos6-9 )
    (adj-walk pos6-9 pos5-9 )
    (adj-walk pos6-1 pos6-2 )
    (adj-walk pos6-2 pos6-1 )
    (adj-walk pos6-2 pos6-3 )
    (adj-walk pos6-3 pos6-2 )
    (adj-walk pos6-7 pos6-8 )
    (adj-walk pos6-8 pos6-7 )
    (adj-walk pos6-8 pos6-9 )
    (adj-walk pos6-9 pos6-8 )

    (at-prime pos4-2)
    (= (total-cost) 0)
  )


  (:goal (and (at-prime pos2-8)))
  (:metric minimize (total-cost))

)