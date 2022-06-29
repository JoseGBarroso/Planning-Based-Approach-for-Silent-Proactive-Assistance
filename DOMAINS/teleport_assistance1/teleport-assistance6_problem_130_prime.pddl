(define (problem teleport-assistance6_problem_130_prime)
  (:domain teleport-assistance6_prime)
  (:objects
    pos0-0 pos0-2 pos0-4 pos0-5 pos1-1 pos1-2 pos1-4 pos1-5 pos2-0 pos2-1 pos2-2 pos2-3 pos2-5 pos3-0 pos3-1 pos3-2 pos3-3 pos3-4 pos3-5 pos4-0 pos4-1 pos4-2 pos4-3 pos4-4 pos5-0 pos5-1 pos5-2 pos5-3 pos5-4 pos5-5 pos6-1 pos6-2 pos6-3 pos6-4 pos7-1 pos7-3 pos7-4 pos7-5  - place)

  (:init
    (adj-walk pos0-2 pos1-2 )
    (adj-walk pos1-2 pos0-2 )
    (adj-walk pos0-4 pos0-5 )
    (adj-walk pos0-5 pos0-4 )
    (adj-walk pos0-4 pos1-4 )
    (adj-walk pos1-4 pos0-4 )
    (adj-walk pos0-5 pos1-5 )
    (adj-walk pos1-5 pos0-5 )
    (adj-walk pos1-1 pos1-2 )
    (adj-walk pos1-2 pos1-1 )
    (adj-walk pos1-1 pos2-1 )
    (adj-walk pos2-1 pos1-1 )
    (adj-walk pos1-2 pos2-2 )
    (adj-walk pos2-2 pos1-2 )
    (adj-walk pos1-4 pos1-5 )
    (adj-walk pos1-5 pos1-4 )
    (adj-walk pos1-5 pos2-5 )
    (adj-walk pos2-5 pos1-5 )
    (adj-walk pos2-0 pos2-1 )
    (adj-walk pos2-1 pos2-0 )
    (adj-walk pos2-0 pos3-0 )
    (adj-walk pos3-0 pos2-0 )
    (adj-walk pos2-1 pos2-2 )
    (adj-walk pos2-2 pos2-1 )
    (adj-walk pos2-1 pos3-1 )
    (adj-walk pos3-1 pos2-1 )
    (adj-walk pos2-2 pos2-3 )
    (adj-walk pos2-3 pos2-2 )
    (adj-walk pos2-2 pos3-2 )
    (adj-walk pos3-2 pos2-2 )
    (adj-walk pos2-3 pos3-3 )
    (adj-walk pos3-3 pos2-3 )
    (adj-walk pos2-5 pos3-5 )
    (adj-walk pos3-5 pos2-5 )
    (adj-walk pos3-0 pos3-1 )
    (adj-walk pos3-1 pos3-0 )
    (adj-walk pos3-0 pos4-0 )
    (adj-walk pos4-0 pos3-0 )
    (adj-walk pos3-1 pos3-2 )
    (adj-walk pos3-2 pos3-1 )
    (adj-walk pos3-1 pos4-1 )
    (adj-walk pos4-1 pos3-1 )
    (adj-walk pos3-2 pos3-3 )
    (adj-walk pos3-3 pos3-2 )
    (adj-walk pos3-2 pos4-2 )
    (adj-walk pos4-2 pos3-2 )
    (adj-walk pos3-3 pos3-4 )
    (adj-walk pos3-4 pos3-3 )
    (adj-walk pos3-3 pos4-3 )
    (adj-walk pos4-3 pos3-3 )
    (adj-walk pos3-4 pos3-5 )
    (adj-walk pos3-5 pos3-4 )
    (adj-walk pos3-4 pos4-4 )
    (adj-walk pos4-4 pos3-4 )
    (adj-walk pos4-0 pos4-1 )
    (adj-walk pos4-1 pos4-0 )
    (adj-walk pos4-0 pos5-0 )
    (adj-walk pos5-0 pos4-0 )
    (adj-walk pos4-1 pos4-2 )
    (adj-walk pos4-2 pos4-1 )
    (adj-walk pos4-1 pos5-1 )
    (adj-walk pos5-1 pos4-1 )
    (adj-walk pos4-2 pos4-3 )
    (adj-walk pos4-3 pos4-2 )
    (adj-walk pos4-2 pos5-2 )
    (adj-walk pos5-2 pos4-2 )
    (adj-walk pos4-3 pos4-4 )
    (adj-walk pos4-4 pos4-3 )
    (adj-walk pos4-3 pos5-3 )
    (adj-walk pos5-3 pos4-3 )
    (adj-walk pos4-4 pos5-4 )
    (adj-walk pos5-4 pos4-4 )
    (adj-walk pos5-0 pos5-1 )
    (adj-walk pos5-1 pos5-0 )
    (adj-walk pos5-1 pos5-2 )
    (adj-walk pos5-2 pos5-1 )
    (adj-walk pos5-1 pos6-1 )
    (adj-walk pos6-1 pos5-1 )
    (adj-walk pos5-2 pos5-3 )
    (adj-walk pos5-3 pos5-2 )
    (adj-walk pos5-2 pos6-2 )
    (adj-walk pos6-2 pos5-2 )
    (adj-walk pos5-3 pos5-4 )
    (adj-walk pos5-4 pos5-3 )
    (adj-walk pos5-3 pos6-3 )
    (adj-walk pos6-3 pos5-3 )
    (adj-walk pos5-4 pos5-5 )
    (adj-walk pos5-5 pos5-4 )
    (adj-walk pos5-4 pos6-4 )
    (adj-walk pos6-4 pos5-4 )
    (adj-walk pos6-1 pos6-2 )
    (adj-walk pos6-2 pos6-1 )
    (adj-walk pos6-1 pos7-1 )
    (adj-walk pos7-1 pos6-1 )
    (adj-walk pos6-2 pos6-3 )
    (adj-walk pos6-3 pos6-2 )
    (adj-walk pos6-3 pos6-4 )
    (adj-walk pos6-4 pos6-3 )
    (adj-walk pos6-3 pos7-3 )
    (adj-walk pos7-3 pos6-3 )
    (adj-walk pos6-4 pos7-4 )
    (adj-walk pos7-4 pos6-4 )
    (adj-walk pos7-3 pos7-4 )
    (adj-walk pos7-4 pos7-3 )
    (adj-walk pos7-4 pos7-5 )
    (adj-walk pos7-5 pos7-4 )

    (at-prime pos0-2)
    (= (total-cost) 0)
  )


  (:goal (and (at-prime pos4-4)))
  (:metric minimize (total-cost))

)