%% YUKI Alogrithm by BRAHIM BENAISSA
%% REFERENCE PAPER:YUKI Algorithm and POD-RBF for Elastostatic and dynamic crack identification
%% DOWNOALD PAPER: https://brahimbenaissa.com/assets/files/Projects/YUKI%20ALGORITHM%201.0/YA-JCS-paper.pdf
%% Great Thanks to Mazhar Ansari Ardeh and Jason Long for http://benchmarkfcns.xyz/fcns
%%

function [lowerboundary,upperboundary,fobj,Dimensions] = Benchmarking(F)

switch F
 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% BORDERS %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%    
        
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%        
%%%%%%%%%%%%%%%%%%%%%%%%%% FIXED DIMENTIONS %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% UNIIMODAL %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


    case 'F21' %% Leon fcn
        fobj = @F21;
        lowerboundary=-2;
        upperboundary=2;
        Dimensions=2;


    case 'F22' %% Drop wave fcn
        fobj = @F22;
        lowerboundary=-5;
        upperboundary=5;
        Dimensions=2;


    case 'F23' %% Three-Hump Camel Function fcn
        fobj = @F23;
        lowerboundary=-2;
        upperboundary=2;
        Dimensions=2;


    case 'F24' %% Booth fcn
        fobj = @F24;
        lowerboundary=-10;
        upperboundary=10;
        Dimensions=2;


    case 'F25' %% Matyas  fcn
        fobj = @F25;
        lowerboundary=-10;
        upperboundary=10;
        Dimensions=2;

        
   case 'F26' %% Brent  fcn
        fobj = @F26;
        lowerboundary=-20;
        upperboundary=0;
        Dimensions=2;
        
                
   case 'F27' %%   schaffern1 fcn
        fobj = @F27;
        lowerboundary=-50;
        upperboundary=50;
        Dimensions=2;      
        
        

   case 'F28' %%  ackleyn2fcn fcn
        fobj = @F28;
        lowerboundary=-30;
        upperboundary=30;
        Dimensions=2;   
        

  case 'F29' %%  Bohachevskyn N. 1 fcn
        fobj = @F29;
        lowerboundary=-100;
        upperboundary=100;
        Dimensions=2;        

    
  case 'F30' %%  Schaffer N. 4 fcn
        fobj = @F30;
        lowerboundary=-100;
        upperboundary=100;
        Dimensions=2;  
        
        
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%        
%%%%%%%%%%%%%%%%%%%%%%%%%% FIXED DIMENTIONS %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% MULTIMODAL %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


    case 'F31' %%  keane fcn
        fobj = @F31;
        lowerboundary=-10;
        upperboundary=10;
        Dimensions=2;


    case 'F32' %%  Levi N. 13 Function 
        fobj = @F32;
        lowerboundary=-10;
        upperboundary=10;
        Dimensions=2;


    case 'F33' %%  Bukin N. 6 fcn 
        fobj = @F33;
        lowerboundary=-15;% -15 -3 FIX THESE BOUNDARIES
        upperboundary=5; % -5 3
        Dimensions=2;
        
    case 'F34' %% Holder-Table Function
        fobj = @F34;
        lowerboundary=-10;
        upperboundary=10; 
        Dimensions=2;
        
    case 'F35' %%  Cross-in-Tray Function 
        fobj = @F35;
        lowerboundary=-10;
        upperboundary=10; 
        Dimensions=2;      
        
        
     case 'F36' %%  wolfe Function 
        fobj = @F36;
        lowerboundary=0;
        upperboundary=2; 
        Dimensions=3;      
            
     
    case 'F37' %%  eggcrate fcn 
        fobj = @F37;
        lowerboundary=-20;
        upperboundary=20; 
        Dimensions=2;      
       
        
   case 'F38' %%  McCormick  fcn 
        fobj = @F38;
        lowerboundary=-1.5;
        upperboundary=4; 
        Dimensions=2;            
        
   case 'F39' %%  deckkersaarts  fcn 
        fobj = @F39;
        lowerboundary=-20;
        upperboundary=20; 
        Dimensions=2;  

    
    case 'F40' %%  Bartels Conn  fcn 
        fobj = @F40;
        lowerboundary=-500;
        upperboundary=500; 
        Dimensions=2;  
    
end

end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%% FIXED DIMENTIONS %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% UNIMODAL %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% F21 threehumpcamelfcn

function f = F21(x)
    
    X = x(1);
    Y = x(2);
    
    f = (2 * X .^ 2) - (1.05 * (X .^ 4)) + ((X .^ 6) / 6) + X .* Y + Y .^2;
end

% F22 dropwave fcn

function f = F22(x)

    X = x(1);
    Y = x(2);
    
    numeratorcomp = 1 + cos(12 * sqrt(X .^ 2 + Y .^ 2));
    denumeratorcom = (0.5 * (X .^ 2 + Y .^ 2)) + 2;
    f = - numeratorcomp ./ denumeratorcom;
end


% F23 leon fcn

function f = F23(x)
    X = x(1);
    Y = x(2);
    
    f = 100 * ((Y - X.^3) .^2) + ((1 - X) .^2);
end



% F24 booth fcn
function  f = F24(x)
    
    X = x(1);
    Y = x(2);
    
    f = (X + (2 * Y) - 7).^2 + ( (2 * X) + Y - 5).^2;
end


% F25 matyas fcn

function f = F25(x)

    X = x(1);
    Y = x(2);
    
    f = 0.26 * (X .^ 2 + Y.^2) - 0.48 * X .* Y;
end



% F26 brent fcn

function f = F26(x)

    X = x(1);
    Y = x(2);
    
    f = (X + 10).^2 + (Y + 10).^2 + exp(-X.^2 - Y.^2);
end


% F27 schaffern1 fcn

function f = F27(x)

    X = x(1);
    Y = x(2);
    
    numeratorcomp = (sin((X .^ 2 + Y .^ 2) .^ 2) .^ 2) - 0.5; 
    denominatorcomp = (1 + 0.001 * (X .^2 + Y .^2)) .^2 ;
    f = 0.5 + numeratorcomp ./ denominatorcomp;
end


% F28 ackleyn2fcn fcn

function f = F28(x)
    

    X = x(1);
    Y = x(2);
    
    f = -200 * exp(-0.02 * sqrt((X .^ 2) + (Y .^ 2)));
end

% F29 Bohachevskyn N. 1 fcn

function f = F29(x)

    X = x(1);
    Y = x(2);
    
    f = (X .^ 2) + (2 * Y .^ 2) - (0.3 * cos(3 * pi * X)) - (0.4 * cos(4 * pi * Y)) + 0.7;
end

% F30 schaffern4 fcn

function f = F30(x)

    X = x(1);
    Y = x(2);
    
    numeratorcomp = (cos(sin(abs(X .^ 2 - Y .^ 2))) .^ 2) - 0.5; 
    denominatorcomp = (1 + 0.001 * (X .^2 + Y .^2)) .^2 ;
    f = 0.5 + numeratorcomp ./ denominatorcomp;
end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%% FIXED DIMENTIONS %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% MULTIMODAL %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% F31 keane fcn

function f = F31(x)
    X = x(1);
    Y = x(2);
    
    numeratorcomp = (sin(X - Y) .^ 2) .* (sin(X + Y) .^ 2); 
    denominatorcomp = sqrt(X .^2 + Y .^2);
    f = - numeratorcomp ./ denominatorcomp;
end


% F32 Levi N. 13 fcn 

function f = F32(x)
    X = x(1);
    Y = x(2);
    f = sin(3 * pi * X) .^ 2 +((X - 1).^2) .* (1 + sin(3 * pi * Y) .^ 2) +((Y - 1).^2) .* (1 + sin(2 * pi * Y) .^ 2);
end


% F33 Bukin N. 6 fcn 

function f = F33(x)
  
    X = x(1);
    X2 = X .^ 2;
    Y = x(2);
    
    f = 100 * sqrt(abs(Y - 0.01 * X2)) + 0.01 * abs(X  + 10);
end


% F34 Holder-Table Function

function f = F34(x)
    
    X = x(1);
    Y = x(2);
    
    expcomponent = exp( abs(1 - (sqrt(X .^2 + Y .^ 2) / pi)) );
    
    f = -abs(sin(X) .* cos(Y) .* expcomponent);
end



% F35 Cross-in-Tray Function

function f = F35(x)
    
    X = x(1);
    Y = x(2);

    expcomponent = abs(100 - (sqrt(X .^2 + Y .^2) / pi));
    
    f = -0.0001 * ((abs(sin(X) .* sin(Y) .* exp(expcomponent)) + 1) .^ 0.1);
end


% F36 Wolfe fcn


function f = F36(x)
    X = x(1);
    Y = x(2);
    Z = x(3);
    
    f = (4/3)*(((X .^ 2 + Y .^ 2) - (X .* Y)).^(0.75)) + Z;
end 

% F37 eggcrate fcn

function f = F37(x)
    X = x(1);
    Y = x(2);
    
    f = X.^2 + Y.^2 + (25 * (sin(X).^2 + sin(Y).^2));
end 


% F38 mccormick fcn

function f = F38(x)
    
    X = x(1);
    Y = x(2);
    
    f = sin(X + Y) + ((X - Y) .^2 ) - 1.5 * X + 2.5 * Y + 1;
end


% F39 deckkersaarts  fcn

function f = F39(x)
    X = x(1);
    Y = x(2);
    f = (100000 * X.^2) + Y.^2 + - (X.^2 + Y.^2).^2 + (10^-5) * (X.^2 + Y.^2 ) .^4;
end 

% F40 bartelsconn fcn 

function f = F40(x)
    
    X = x(1);
    Y = x(2);
    f = abs((X .^ 2) + (Y .^ 2) + (X .* Y)) + abs(sin(X)) + abs(cos(Y));
end