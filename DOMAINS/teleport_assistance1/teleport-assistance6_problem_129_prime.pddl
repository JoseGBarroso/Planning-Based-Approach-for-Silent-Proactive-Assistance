(define (problem teleport-assistance6_problem_129_prime)
  (:domain teleport-assistance6_prime)
  (:objects
    pos0-0 pos0-1 pos0-2 pos0-3 pos1-0 pos1-3 pos1-4 pos2-2 pos2-4 pos3-1 pos3-3 pos3-4 pos4-1 pos4-2 pos4-4 pos5-1 pos5-3 pos6-1 pos6-2 pos6-3 pos6-4  - place)

  (:init
    (adj-walk pos0-0 pos0-1 )
    (adj-walk pos0-1 pos0-0 )
    (adj-walk pos0-0 pos1-0 )
    (adj-walk pos1-0 pos0-0 )
    (adj-walk pos0-1 pos0-2 )
    (adj-walk pos0-2 pos0-1 )
    (adj-walk pos0-2 pos0-3 )
    (adj-walk pos0-3 pos0-2 )
    (adj-walk pos0-3 pos1-3 )
    (adj-walk pos1-3 pos0-3 )
    (adj-walk pos1-3 pos1-4 )
    (adj-walk pos1-4 pos1-3 )
    (adj-walk pos1-4 pos2-4 )
    (adj-walk pos2-4 pos1-4 )
    (adj-walk pos2-4 pos3-4 )
    (adj-walk pos3-4 pos2-4 )
    (adj-walk pos3-1 pos4-1 )
    (adj-walk pos4-1 pos3-1 )
    (adj-walk pos3-3 pos3-4 )
    (adj-walk pos3-4 pos3-3 )
    (adj-walk pos3-4 pos4-4 )
    (adj-walk pos4-4 pos3-4 )
    (adj-walk pos4-1 pos4-2 )
    (adj-walk pos4-2 pos4-1 )
    (adj-walk pos4-1 pos5-1 )
    (adj-walk pos5-1 pos4-1 )
    (adj-walk pos5-1 pos6-1 )
    (adj-walk pos6-1 pos5-1 )
    (adj-walk pos5-3 pos6-3 )
    (adj-walk pos6-3 pos5-3 )
    (adj-walk pos6-1 pos6-2 )
    (adj-walk pos6-2 pos6-1 )
    (adj-walk pos6-2 pos6-3 )
    (adj-walk pos6-3 pos6-2 )
    (adj-walk pos6-3 pos6-4 )
    (adj-walk pos6-4 pos6-3 )

    (at-prime pos2-4)
    (= (total-cost) 0)
  )


  (:goal (and (at-prime pos0-0)))
  (:metric minimize (total-cost))

)