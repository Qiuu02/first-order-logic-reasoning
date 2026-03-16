% pets.p  (Exercise 3 - Task A)

tff(r1_type, type, r1: $i).
tff(r2_type, type, r2: $i).
tff(r3_type, type, r3: $i).
tff(r4_type, type, r4: $i).
tff(r5_type, type, r5: $i).
tff(r6_type, type, r6: $i).

tff(next_type, type, next: ($i * $i) > $o).
tff(cat_type, type, cat: $i > $o).
tff(dog_type, type, dog: $i > $o).
tff(hamster_type, type, hamster: $i > $o).
tff(lit_type, type, lit: $i > $o).

% The 6 ground-floor rooms are distinct.
tff(rooms_distinct, axiom, $distinct(r1,r2,r3,r4,r5,r6)).

% next(X,Y) means "Y is the room after X"
tff(next_facts, axiom,
  next(r1,r2) & next(r2,r3) & next(r3,r4) & next(r4,r5) & next(r5,r6)
).

% No other next-pairs hold.
tff(next_complete, axiom,
  ![X:$i,Y:$i]:
    ( next(X,Y) <=>
      ( (X=r1 & Y=r2)
      | (X=r2 & Y=r3)
      | (X=r3 & Y=r4)
      | (X=r4 & Y=r5)
      | (X=r5 & Y=r6) ) )
).

% Exactly one animal per room.
tff(exactly_one_animal, axiom,
  ![X:$i]:
    ( (cat(X) | dog(X) | hamster(X))
    & ~(cat(X) & dog(X))
    & ~(cat(X) & hamster(X))
    & ~(dog(X) & hamster(X)) )
).

% Room r6 is a hamster; rooms r1..r5 are not hamsters.
tff(r6_is_hamster, axiom, hamster(r6)).
tff(others_not_hamster, axiom,
  ~hamster(r1) & ~hamster(r2) & ~hamster(r3) & ~hamster(r4) & ~hamster(r5)
).

% Dog nervous <=> dogs in both adjacent rooms.
% (Endpoints automatically become not lit because the RHS is false.)
tff(dog_lit_iff, axiom,
  ![X:$i]:
    ( dog(X) =>
      ( lit(X) <=>
        ( ?[Y:$i,Z:$i]:
            ( next(Y,X) & next(X,Z) & dog(Y) & dog(Z) ) ) ) )
).

% Cat nervous <=> at least one adjacent cat.
tff(cat_lit_iff, axiom,
  ![X:$i]:
    ( cat(X) =>
      ( lit(X) <=>
        ( ?[Y:$i]:
            ( (next(Y,X) | next(X,Y)) & cat(Y) ) ) ) )
).

% Hamster never nervous -> never lit.
tff(hamster_not_lit, axiom,
  ![X:$i]: (hamster(X) => ~lit(X))
).

% Observation: exactly one room remains lit.
tff(exists_lit, axiom, ?[X:$i]: lit(X)).
tff(unique_lit, axiom, ![X:$i,Y:$i]: ((lit(X) & lit(Y)) => X=Y)).