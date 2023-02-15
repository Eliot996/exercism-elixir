defmodule Secrets do
  def secret_add(secret) do
    # Please implement the secret_add/1 function
    adder = fn num -> num + secret end
    adder
  end

  def secret_subtract(secret) do
    # Please implement the secret_subtract/1 function
    subtractor = fn num -> num - secret end
    subtractor
  end

  def secret_multiply(secret) do
    # Please implement the secret_multiply/1 function
    multiplier = fn num -> num * secret end
    multiplier
  end

  def secret_divide(secret) do
    # Please implement the secret_divide/1 function
    divider = fn num -> div(num, secret) end
    divider
  end

  def secret_and(secret) do
    # Please implement the secret_and/1 function
    ander = fn num -> Bitwise.band(num, secret) end
    ander 
  end

  def secret_xor(secret) do
    # Please implement the secret_xor/1 function
    xorer = fn num -> Bitwise.bxor(num, secret) end
    xorer
  end

  def secret_combine(secret_function1, secret_function2) do
    # Please implement the secret_combine/2 function
    combiner = fn num -> num |> secret_function1.() |> secret_function2.()  end
    combiner
  end
end
