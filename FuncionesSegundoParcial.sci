//funcion tp 3 trapecio
/*function [y]=f(x)
y=x^3-2*x^2;
endfunction */

/*function [z]=trapecio(h,x)
    i=2;
    s=0;
    n=length(x);
    while i<n
        aux=f(x(i));
        s=s+aux;
        i=i+1;
    end
    z=(h/2)*(f(x(n))+f(x(1))+2*s);
    
    printf("valor buscado con regla del trapecio: %f [s]\n\n",z);
    
endfunction*/


/*function [z]=simpson(h,y)
    i=2;
    n=length(y);
    sp=0;
    si=0;
    while i<n 
        if (modulo(i,2)==0)
            si=si+y(i);
        else   
            sp=sp+y(i);
        end
            i=i+1;
    end
    
    z= (h/3)*(y(1)+4*si+2*sp+y(n));
     
     printf ("el resultado de simpson es: %f",z);
    
endfunction  */
/*
function z=trapecio(h,y)
    i=2;
    n=length(y);
    s=0;
    while i<n
        s=s+y(i);  
        i=i+1;
    end
    z=(h/2)*(y(1)+2*s+y(n));
endfunction
*/

/*function [a]=richardson(h1,y)
    i=1;
    j=1
    n=length(y);
    f1=trapecio(h1,y);
        
        while i<=n
            if(modulo(i,2)==1)
                g(j)=y(i);
                j=j+1;
             end
                i=i+1;     
        end      
    f2=trapecio(h1*2,g);
      a=4*f1/3-f2/3;
     printf ("el valor es :%f",a);
endfunction*/
//EULER 
function [z]=f(x,y)
    z=2*x*y;
endfunction

function yi=euler(x0,y0,h,n)
    xi=x0;
    yi=y0;
    
    while xi<n
        ysgte=yi+f(xi,yi)*h;
        xi=xi+h;
        yi=ysgte;
    end
       
    printf ("el valor es : %f",yi); 
    
endfunction 
/*
function z=f(x,y)
    z=x+y;
endfunction

function ysgte=trapecioedo(x0,y0,h,n)
    xi=x0;
    yi=y0;
    i=0
    while i<10
        k1=f(xi,yi);
        k2=f(xi+h,yi+k1*h);
        ysgte=yi+(h/2)*(k1+k2);
        xi=xi+h;
        i=i+1;
        printf ("el valor es: %f \n",ysgte);
    end
    
    
endfunction*/




