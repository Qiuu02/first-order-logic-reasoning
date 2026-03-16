include('SET001-0.ax').

fof(dirimg_def, definition,
  ![A,Y]:
    ( member(Y,dirimg(A))
      <=>
      ( ?[X]:
          ( member(X,A)
            & role(X,Y)
          )
      )
    )
).

fof(valres_def, definition,
  ![B,X]:
    ( member(X,valres(B))
      <=>
      ( ![Y]:
          ( role(X,Y)
            => member(Y,B)
          )
      )
    )
).

fof(main_conj, conjecture,
  ![A,B]:
    ( subset(dirimg(A),B)
      <=>
      subset(A,valres(B))
    )
).