fof(injective, axiom,
    ! [X,Y,Z] : ( (inj(X,Y) & inj(Z,Y)) => X = Z )
).

fof(difunctional, conjecture,
    ! [X,Y] :
      ( inj(X,Y)
        <=> ? [U,V] : ( inj(X,U) & inj(V,U) & inj(V,Y) )
      )
).