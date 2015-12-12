outer = 1
changeNumbers = ->
    # Local variables inner and outer
    # These do not mutate the module-level inner and outer variables.
    inner = -1
    outer = 10
    console.log '(Function) Inner:', inner, 'Outer:', outer
    # Last statement of a function is its return value
    outer

inner = changeNumbers()

console.log '(Module) Inner:', inner, 'Outer:', outer
