(define (problem teleport-assistance6_problem_160_prime)
  (:domain teleport-assistance6_prime)
  (:objects
    pos0-4 pos0-6 pos1-1 pos1-4 pos1-5 pos2-4 pos2-6 pos3-0 pos3-1 pos3-5 pos3-6 pos4-1 pos4-3 pos4-5 pos5-0 pos5-1 pos5-2 pos5-6 pos6-2 pos6-3 pos6-4 pos7-4 pos7-5 pos8-5 pos9-0  - place)

  (:init
    (adj-walk pos0-4 pos1-4 )
    (adj-walk pos1-4 pos0-4 )
    (adj-walk pos1-4 pos1-5 )
    (adj-walk pos1-5 pos1-4 )
    (adj-walk pos1-4 pos2-4 )
    (adj-walk pos2-4 pos1-4 )
    (adj-walk pos2-6 pos3-6 )
    (adj-walk pos3-6 pos2-6 )
    (adj-walk pos3-0 pos3-1 )
    (adj-walk pos3-1 pos3-0 )
    (adj-walk pos3-1 pos4-1 )
    (adj-walk pos4-1 pos3-1 )
    (adj-walk pos3-5 pos3-6 )
    (adj-walk pos3-6 pos3-5 )
    (adj-walk pos3-5 pos4-5 )
    (adj-walk pos4-5 pos3-5 )
    (adj-walk pos4-1 pos5-1 )
    (adj-walk pos5-1 pos4-1 )
    (adj-walk pos5-0 pos5-1 )
    (adj-walk pos5-1 pos5-0 )
    (adj-walk pos5-1 pos5-2 )
    (adj-walk pos5-2 pos5-1 )
    (adj-walk pos5-2 pos6-2 )
    (adj-walk pos6-2 pos5-2 )
    (adj-walk pos6-2 pos6-3 )
    (adj-walk pos6-3 pos6-2 )
    (adj-walk pos6-3 pos6-4 )
    (adj-walk pos6-4 pos6-3 )
    (adj-walk pos6-4 pos7-4 )
    (adj-walk pos7-4 pos6-4 )
    (adj-walk pos7-4 pos7-5 )
    (adj-walk pos7-5 pos7-4 )
    (adj-walk pos7-5 pos8-5 )
    (adj-walk pos8-5 pos7-5 )

    (at-prime pos3-0)
    (= (total-cost) 0)
  )


  (:goal (and (at-prime pos6-2)))
  (:metric minimize (total-cost))

)