(define (problem teleport-assistance6_problem_96_prime)
  (:domain teleport-assistance6_prime)
  (:objects
    pos0-1 pos0-2 pos0-3 pos0-4 pos1-1 pos1-2 pos1-3 pos2-0 pos2-1 pos2-2 pos2-3 pos3-0 pos3-2 pos3-3 pos3-4 pos4-0 pos4-2 pos4-3 pos4-4 pos5-0 pos5-2 pos5-3 pos6-0 pos6-1 pos6-4  - place)

  (:init
    (adj-walk pos0-1 pos0-2 )
    (adj-walk pos0-2 pos0-1 )
    (adj-walk pos0-1 pos1-1 )
    (adj-walk pos1-1 pos0-1 )
    (adj-walk pos0-2 pos0-3 )
    (adj-walk pos0-3 pos0-2 )
    (adj-walk pos0-2 pos1-2 )
    (adj-walk pos1-2 pos0-2 )
    (adj-walk pos0-3 pos0-4 )
    (adj-walk pos0-4 pos0-3 )
    (adj-walk pos0-3 pos1-3 )
    (adj-walk pos1-3 pos0-3 )
    (adj-walk pos1-1 pos1-2 )
    (adj-walk pos1-2 pos1-1 )
    (adj-walk pos1-1 pos2-1 )
    (adj-walk pos2-1 pos1-1 )
    (adj-walk pos1-2 pos1-3 )
    (adj-walk pos1-3 pos1-2 )
    (adj-walk pos1-2 pos2-2 )
    (adj-walk pos2-2 pos1-2 )
    (adj-walk pos1-3 pos2-3 )
    (adj-walk pos2-3 pos1-3 )
    (adj-walk pos2-0 pos2-1 )
    (adj-walk pos2-1 pos2-0 )
    (adj-walk pos2-0 pos3-0 )
    (adj-walk pos3-0 pos2-0 )
    (adj-walk pos2-1 pos2-2 )
    (adj-walk pos2-2 pos2-1 )
    (adj-walk pos2-2 pos2-3 )
    (adj-walk pos2-3 pos2-2 )
    (adj-walk pos2-2 pos3-2 )
    (adj-walk pos3-2 pos2-2 )
    (adj-walk pos2-3 pos3-3 )
    (adj-walk pos3-3 pos2-3 )
    (adj-walk pos3-0 pos4-0 )
    (adj-walk pos4-0 pos3-0 )
    (adj-walk pos3-2 pos3-3 )
    (adj-walk pos3-3 pos3-2 )
    (adj-walk pos3-2 pos4-2 )
    (adj-walk pos4-2 pos3-2 )
    (adj-walk pos3-3 pos3-4 )
    (adj-walk pos3-4 pos3-3 )
    (adj-walk pos3-3 pos4-3 )
    (adj-walk pos4-3 pos3-3 )
    (adj-walk pos3-4 pos4-4 )
    (adj-walk pos4-4 pos3-4 )
    (adj-walk pos4-0 pos5-0 )
    (adj-walk pos5-0 pos4-0 )
    (adj-walk pos4-2 pos4-3 )
    (adj-walk pos4-3 pos4-2 )
    (adj-walk pos4-2 pos5-2 )
    (adj-walk pos5-2 pos4-2 )
    (adj-walk pos4-3 pos4-4 )
    (adj-walk pos4-4 pos4-3 )
    (adj-walk pos4-3 pos5-3 )
    (adj-walk pos5-3 pos4-3 )
    (adj-walk pos5-0 pos6-0 )
    (adj-walk pos6-0 pos5-0 )
    (adj-walk pos5-2 pos5-3 )
    (adj-walk pos5-3 pos5-2 )
    (adj-walk pos6-0 pos6-1 )
    (adj-walk pos6-1 pos6-0 )

    (at-prime pos0-3)
    (= (total-cost) 0)
  )


  (:goal (and (at-prime pos4-0)))
  (:metric minimize (total-cost))

)