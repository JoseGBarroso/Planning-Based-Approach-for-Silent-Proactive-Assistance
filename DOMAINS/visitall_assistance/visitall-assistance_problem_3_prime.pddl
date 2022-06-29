(define (problem visitall-assistance_problem_3_prime)
  (:domain visitall-assistance_prime)
  (:objects
    node1 node2 node3 node4 node5 node6 node7 node8  - place)
    

  (:init
    (connected node1 node2)
    (connected node1 node5)
    (connected node2 node3)
    (connected node2 node4)
    (connected node3 node2)
    (connected node3 node4)
    (connected node4 node5)
    (connected node5 node6)
    (connected node6 node4)
    (connected node6 node7)
    (connected node7 node2)
    (connected node7 node4)
    (connected node7 node8)
    (connected node8 node3)

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
    (visited node7)
    (visited node8)
  ))
  (:metric minimize (total-cost))

)