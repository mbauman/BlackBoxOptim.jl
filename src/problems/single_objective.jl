# Sphere function as stated in table II of the JADE paper:
#  http://150.214.190.154/EAMHCO/pdf/JADE.pdf
# Initial range: [-100, 100]^d
function sphere(x)
  sum(x.^2)
end

examples["Sphere"] = any_dimensional_problem("Sphere",
                      [sphere],
                      (-100.0, 100.0))

# Schwefel 2.22 function as stated in table II of the JADE paper:
#  http://150.214.190.154/EAMHCO/pdf/JADE.pdf
function schwefel2_22(x)
  ax = abs(x)
  sum(ax) + prod(ax)
end

examples["Schwefel2.22"] = any_dimensional_problem("Schwefel2.22",
                            [schwefel2_22],
                            (-10.0, 10.0))

# Schwefel 1.2 function as stated in table II of the JADE paper:
#  http://150.214.190.154/EAMHCO/pdf/JADE.pdf
function schwefel1_2(x)
  s = 0
  for i in 1:length(x)
    partsum = sum(x[1:i])
    s+= (partsum^2)
  end
  s
end

examples["Schwefel1.2"] = any_dimensional_problem("Schwefel1.2",
                            [schwefel1_2],
                            (-100.0, 100.0))

# Schwefel 2.21 function as stated in table II of the JADE paper:
#  http://150.214.190.154/EAMHCO/pdf/JADE.pdf
# Initial range: [-100, 100]^d
function schwefel2_21(x)
  indmax(abs(x))
end

examples["Schwefel2.21"] = any_dimensional_problem("Schwefel2.21",
                            [schwefel2_21],
                            (-100.0, 100.0))

# Rosenbrock function as stated in table II of the JADE paper:
#  http://150.214.190.154/EAMHCO/pdf/JADE.pdf
function rosenbrock(x)
  n = length(x)
  return( sum( 100*( x[2:n] - x[1:(n-1)].^2 ).^2 + ( x[1:(n-1)] - 1 ).^2 ) )
end

examples["Rosenbrock"] = any_dimensional_problem("Rosenbrock",
                            [rosenbrock],
                            (-30.0, 30.0))