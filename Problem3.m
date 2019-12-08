function yi = Matlab3(e)

for xi = 1:length(e)-1
    
yi = polyfit(e(:, 1), e(:, 2), xi);
n = polyval(yi, e(:, 1));
yi = norm(e(:, 2) - n);

x = [xi,yi];
    if xi == 1
        y = x;
    end
    
    if y(2) >= x(2)
        z = x(1);
    end
end

    yi = polyfit(e(:, 1), e(:, 2), z);
end
