model lab5

parameter Real a = 0.69; //коэффициент естественной смертности хищников
parameter Real b = 0.68; //коэффициент естественного прироста жертв
parameter Real c = 0.067; //коэффициент увеличения числа хищников
parameter Real d = 0.066; //коэффициент смертности жертв

//parameter Real x0 = 4.0; //начальная популяция хищников
//parameter Real y0 = 11.0; //начальная популяция жертв

parameter Real x0 = 0.68/0.066; //стационарное состояние хищников (b/d)
parameter Real y0 = 0.69/0.067; //стационраное состояние жертв (a/c)

Real x(start=x0);//популяция хищников
Real y(start=y0);//популяция жертв

equation

der(x) = -a*x + c*x*y;
der(y) = b*y - d*x*y;

end lab5;
