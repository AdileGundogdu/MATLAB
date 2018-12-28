function result = lorenz(a)
     result= [prandtl*(a(2)-a(1)) ; a(1)*(rayleigh-a(3))-a(2) ; a(1)*a(2)-rayleigh*a(3)]
end

