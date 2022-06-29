(define (problem visitall-assistance_problem_27_prime)
  (:domain visitall-assistance_prime)
  (:objects
    node1 node2 node3 node4 node5 node6 node7 node8  - place)
    

  (:init
    (connected node1 node2)
    (connected node1 node6)
    (connected node2 node3)
    (connected node2 node6)
    (connected node3 node1)
    (connected node3 node4)
    (connected node4 node1)
    (connected node4 node5)
    (connected node4 node6)
    (connected node5 node3)
    (connected node5 node6)
    (connected node6 node1)
    (connected node6 node2)
    (connected node6 node3)
    (connected node7 node8)

    (at-prime node5)
    (visited node5)

    (= (total-cost) 0)
  )


  (:goal (and 
    (visited node1)
    (visited node2)
    (visited node3)
    (visited node4)
    (visited node6)
    (visited node7)
    (visited node8)
  ))
  (:metric minimize (total-cost))

)