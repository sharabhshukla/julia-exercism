import Base: +, -, *, /, abs, exp, isapprox

struct ComplexNumber <: Number
    real::Float64
    imag::Float64
end

function +(a::ComplexNumber, b::ComplexNumber)
    return ComplexNumber(a.real + b.real, a.imag + b.imag)
end

function -(a::ComplexNumber, b::ComplexNumber)
    return ComplexNumber(a.real - b.real, a.imag - b.imag)
end

function *(a::ComplexNumber, b::ComplexNumber)
    return ComplexNumber(a.real * b.real - a.imag * b.imag, a.real * b.imag + a.imag * b.real)
end

function /(a::ComplexNumber, b::ComplexNumber)
    return ComplexNumber((a.real * b.real + a.imag * b.imag) / (b.real^2 + b.imag^2), (a.imag * b.real - a.real * b.imag) / (b.real^2 + b.imag^2))
end

function abs(a::ComplexNumber)
    return sqrt(a.real^2 + a.imag^2)
end

function exp(z::ComplexNumber)
    a, b = z.real, z.imag
    return ComplexNumber(exp(a) * cos(b), exp(a) * sin(b))
end

# define approx equality for ComplexNumber
function isapprox(a::ComplexNumber, b::ComplexNumber; atol=1e-15)
    return isapprox(a.real, b.real, atol=atol) && isapprox(a.imag, b.imag, atol=atol)
end

function conj(a::ComplexNumber)
    return ComplexNumber(a.real, a.imag == 0 ? 0 : -a.imag)
end

function real(a::ComplexNumber)
    return a.real
end

function imag(a::ComplexNumber)
    return a.imag
end

ComplexNumber(1, 0) + ComplexNumber(2, 0)

ComplexNumber(1, 2) / ComplexNumber(3, 4) ≈ ComplexNumber(0.44, 0.08)