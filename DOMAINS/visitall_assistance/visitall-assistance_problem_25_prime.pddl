(define (problem visitall-assistance_problem_25_prime)
  (:domain visitall-assistance_prime)
  (:objects
    node1 node2 node3 node4 node5 node6  - place)
    

  (:init
    (connected node1 node2)
    (connected node2 node3)
    (connected node4 node5)
    (connected node5 node6)

    (at-prime node4)
    (visited node4)

    (= (total-cost) 0)
  )


  (:goal (and 
    (visited node1)
    (visited node2)
    (visited node3)
    (visited node5)
    (visited node6)
  ))
  (:metric minimize (total-cost))

)