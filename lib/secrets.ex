defmodule Secrets do
  def secret_add(secret) do
    adder = fn num -> num + secret end
    adder
  end

  def secret_subtract(secret) do
    subtractor = fn num -> num - secret end
    subtractor
  end

  def secret_multiply(secret) do
    multiplier = fn num -> num * secret end
    multiplier
  end

  def secret_divide(secret) do
    divider = fn num -> div(num, secret) end
    divider
  end

  def secret_and(secret) do
    ander = fn num -> Bitwise.band(num, secret) end
    ander 
  end

  def secret_xor(secret) do
    xorer = fn num -> Bitwise.bxor(num, secret) end
    xorer
  end

  def secret_combine(secret_function1, secret_function2) do
    combiner = fn num -> num |> secret_function1.() |> secret_function2.()  end
    combiner
  end
end
