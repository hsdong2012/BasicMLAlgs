
function [y] = ssign(w, x)

if(w*x' >0)
    y=1;
else
    y=-1;
end;



