%% YUKI Alogrithm by BRAHIM BENAISSA
%% REFERENCE PAPER:YUKI Algorithm and POD-RBF for Elastostatic and dynamic crack identification
%% DOWNOALD PAPER: https://brahimbenaissa.com/assets/files/Projects/YUKI%20ALGORITHM%201.0/YA-JCS-paper.pdf

%% Great Thanks to Mazhar Ansari Ardeh and Jason Long for http://benchmarkfcns.xyz/fcns
%% also to Hamza YAPICI for the engineering problems https://www.mathworks.com/matlabcentral/fileexchange/73986-pso_eagle-for-design-problem?s_tid=srchtitle
%%

function [lowerboundary,upperboundary,fobj,Dimensions] = Benchmarking(F)

switch F
 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Boundaries %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%    
    
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%    
%%%%%%%%%%%%%%%%%%%%%%%%%% MULTI DIMENTIONS %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% UNIMODAL %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    case 'F1'   %% F1 Sphere fcn
        fobj = @F1;
        lowerboundary=-5.12; 
        upperboundary=5.12;
        Dimensions=30;        
   
    
    case 'F2' %%  F2 Powellsum fcn 
        fobj = @F2;
        lowerboundary=-1;
        upperboundary=1;
        Dimensions=30;
        
    case 'F3' %% F3 Ridge fcn
        fobj = @F3;
        lowerboundary=-5;
        upperboundary=5;
        Dimensions=30;
        
    case 'F4' %% Brown fcn
        fobj = @F4;
        lowerboundary=-4;
        upperboundary=4;
        Dimensions=30;
        
    case 'F5'  %% Exponential fcn
        fobj = @F5;
        lowerboundary=-2;
        upperboundary=2;
        Dimensions=30;
        
    case 'F6' %% Xin-She Yang N. 3 Function
        fobj = @F6;
        lowerboundary=-10;
        upperboundary=10;
        Dimensions=30;
        
    case 'F7' %% zakharovfcn
        fobj = @F7;
        lowerboundary=-10;
        upperboundary=10;
        Dimensions=30;
        
    case 'F8'  %% Schwefel 2.20 Function  
        fobj = @F8;
        lowerboundary=-100;
        upperboundary=100;
        Dimensions=30;
 
        
    case 'F9'  %% Schwefel 2.21 Function  
        fobj = @F9;
        lowerboundary=-100;
        upperboundary=100;
        Dimensions=30;

       
    case 'F10'  %%  Schwefel 2.22 fcn  
        fobj = @F10;
        lowerboundary=-10;
        upperboundary=10;
        Dimensions=30;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%        
%%%%%%%%%%%%%%%%%%%%%%%%%% MULTI DIMENTIONS %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% MULTIMODAL %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    case 'F11' %% rosenbrock fcn
        fobj = @F11;
        lowerboundary=-30;
        upperboundary=30;
        Dimensions=30;


    case 'F12' %% schwefel fcn
        fobj = @F12;
        lowerboundary=-500;
        upperboundary=500;
        Dimensions=30;

    case 'F13' %% F13 Rastrigin fcn
        fobj = @F13;
        lowerboundary=-5.12;
        upperboundary=5.12;
        Dimensions=30;

    case 'F14' %% F14 xinsheyangn 2 fcn 
        fobj = @F14;
        lowerboundary=-6.28;
        upperboundary=6.28;
        Dimensions=30;

        
    case 'F15' %% F15 xinsheyangn 4 fcn 
        fobj = @F15;
        lowerboundary=-10;
        upperboundary=10;
        Dimensions=30;


    case 'F16' % F16 Happy Cat fcn 
        fobj = @F16;
        lowerboundary=-2;
        upperboundary=2;
        Dimensions=30;        
        
        
    case 'F17' % F17 periodicfcn
        fobj = @F17;
        lowerboundary=-10;
        upperboundary=10;
        Dimensions=30;             
        

        
    case 'F18' % F18 Quartic fcn
        fobj = @F18;
        lowerboundary=-1.28;
        upperboundary=1.28;
        Dimensions=30;    
        
  
  
    case 'F19' % F19 shubert3fcn
        fobj = @F19;
        lowerboundary=-10;
        upperboundary=10;
        Dimensions=30;      
  
        
     case 'F20' % F20 shubert3fcn
        fobj = @F20;
        lowerboundary=-4;
        upperboundary=4;
        Dimensions=30;    
        
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
        lowerboundary=-15;
        upperboundary=5; 
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

        

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%% COMPOSITE FUNCTIONS %%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    case 'F41' 
        fobj = @F41; 
        lowerboundary=-5;
        upperboundary=5;
        Dimensions=2;  
        
        
    case 'F42' 
        fobj = @F42; 
        lowerboundary=-5;
        upperboundary=5;
        Dimensions=2; 
        
    case 'F43' 
        fobj = @F43; 
        lowerboundary=-5;
        upperboundary=5;
        Dimensions=2; 
        
        
   case 'F44' 
        fobj = @F44;
        lowerboundary=-5; 
        upperboundary=5;
        Dimensions=2;  
        
   case 'F45'
        fobj = @F45; 
        lowerboundary=-5;
        upperboundary=5; 
        Dimensions=2;    
        
   case 'F46'
        fobj = @F46;  
        lowerboundary=-5; 
        upperboundary=5;
        Dimensions=2;          

    case 'F47'
        fobj = @F47;  
        lowerboundary=-5; 
        upperboundary=5;
        Dimensions=2;        
        
    case 'F48' 
        fobj = @F48; 
        lowerboundary=-5;
        upperboundary=5;
        Dimensions=2; 

    case 'F49' 
        fobj = @F49; 
        lowerboundary=-5;
        upperboundary=5;
        Dimensions=2; 
        
        
    case 'F50' 
        fobj = @F50; 
        lowerboundary=[-5;-5];
        upperboundary=[5;5];
        Dimensions=2;    
        
        
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%% ENGINEERING PROBLEMS %%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    case 'F51' % % Welded Beam Design
        fobj = @F51; 
        lowerboundary=[0.1;0.1;0.1;0.1];
        upperboundary=[2;10;10;2];
        Dimensions=4;   
    
    
    case 'F52' % Tension/Compression Spring Design
        fobj = @F52; 
        lowerboundary=[.05; .25; 2];
        upperboundary=[2; 1.3; 15];
        Dimensions=3;        
   
        
       case 'F53' % pressure vessel design problem
        fobj = @F53; 
        lowerboundary=[0; 0; 10; 10];
        upperboundary=[99; 99; 200; 200];
        Dimensions=4; 
   
        
    case 'F54' % cantilever beam design problem
        fobj = @F54; 
        lowerboundary=[0; 0; 0; 0; 0];
        upperboundary=[100; 100; 100; 100; 100];
        Dimensions=5; 

end

end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% FUNCTIONS %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%% MULTI DIMENTIONS %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% UNIMODAL %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



% F1 sphere fcn 

function f = F1(x)
    f = sum(x .^ 2);
end

% F2 powellsum fcn 

function f = F2(x)
    n = size(x, 1);
    f = 0;
    for i = 1:n
        f = f + (abs(x(i)) .^ (i + 1));
    end
end


% F3 ridge fcn

function f = F3(x, d, alpha)

    if nargin < 3 
        alpha = 0.5;
    end
    if nargin < 2
        d = 1;
    end
        
    x1 = x(1);
    f = x1 + d * (sum(x(2:end).^2) .^ alpha);
end


% F4 brownfcn
function f = F4(x)
    
    n = size(x);  
    f = 0;
    
    x = x .^ 2;
    for i = 1:(n-1)
        f = f + x(i) .^ (x(i+1) + 1) + x(i+1).^(x(i) + 1);
    end
end


% F5 exponential fcn

function f = F5(x)
   x2 = x .^2;
   
   f = -exp(-0.5 * sum(x2));
end


% F6 Xin-She Yang N. 3 Function
function f = F6(x, beta, m)
   if nargin < 2
       beta = 15;
   end
   if nargin < 3
       m = 5;
   end
   
   f = exp(-sum((x / beta).^(2*m))) - (2 * exp(-sum(x .^ 2)) .* prod(cos(x) .^ 2));
end 


% F7 zakharov fcn
function f = F7(x)

    n = size(x);
    comp1 = 0;
    comp2 = 0;
    
    for i = 1:n
        comp1 = comp1 + (x(i) .^ 2);
        comp2 = comp2 + (0.5 * i * x(i));
    end
     
    f = comp1 + (comp2 .^ 2) + (comp2 .^ 4);
end


% F8 schwefel 220 fcn

function f =  F8(x)
    f = sum(abs(x));
end



% F9 Schwefel 2.21 fcn


function f = F9(x)
    f = max(abs(x));
end


% F10 Schwefel 2.22 fcn


function f = F10(x)

    absx = abs(x);
    f = sum(absx) + prod(absx);
end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%% MULTI DIMENTIONS %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% MULTIMODAL %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% F11 rosenbrock fcn

function f = F11(x)
    n = size(x,1);
    f=sum(100*(x(2:n,:)-(x(1:n-1,:).^2)).^2+(x(1:n-1,:)-1).^2,1);
end


% F12 schwefel fcn

function f = F12(x)
    f = sum(-x.*sin(sqrt(abs(x))));
end

% F13 Rastrigin fcn

function f = F13(x)
n = size(x,1);
f=sum(x.^2-10*cos(2*pi.*x))+10*n;
end


% F14 xinsheyangn 2 fcn 


function f = F14(x)  
    f = sum(abs(x)) .* exp(-sum(sin(x .^2)));
end 

% F15 xinsheyangn 4 fcn  

function f = F15(x)
     f = (sum(sin(x) .^2) - exp(-sum(x .^ 2))) .* exp(-sum(sin(sqrt(abs(x))).^2));
end

% F16 Happy Cat fcn 

function f = F16(x, alpha)

    if nargin < 2 
        alpha = 0.5;
    end
    
    n = size(x, 1);
    x2 = sum(x .* x);
    f = ((x2 - n).^2).^(alpha) + (0.5*x2 + sum(x))/n + 0.5;
end

% F17 periodicfcn

function f = F17(x)

    sin2x = sin(x) .^ 2;
    sumx2 = sum(x .^2);
    f = 1 + sum(sin2x) -0.1 * exp(-sumx2);
    
end


% F18 Quartic fcn

function f = F18(x)

    n = size(x, 1);
    
    f = 0;
    for i = 1:n
        f = f + i *(x(i) .^ 4);
    end
    f = f + rand;
end

% F19 shubert3fcn

function f = F19(x)
    n = size(x, 1);
    
    f = 0;
    for i = 1:n
        for j = 1:5
            f = f + j * sin(((j + 1) * x(i)) + j);
        end
    end
end

% F20 salomonfcn

function f = F20(x)
    x2 = x .^ 2;
    sumx2 = sum(x2);
    sqrtsx2 = sqrt(sumx2);
    
    f = 1 - cos(2 .* pi .* sqrtsx2) + (0.1 * sqrtsx2);
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




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%% COMPOSITE FUNCTIONS %%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%% F41 Composition Function 1,  3 Functions

function f = F41(x)  
global initial_flag
persistent func_num func o sigma lambda bias M
x=x';
[ps,D] = size(x);
func_num = 3;
initial_flag=0;
lb = -5; ub = 5;
if initial_flag==0
	load data/optima.mat % saved the predefined optima
	if length( o(1,:) ) >= D
		o = o(:,1:D);
	else
		o = lb + (ub - lb) * rand(func_num,D);
	end
	initial_flag=1;
	func.f1 = str2func('FSphere');
	func.f2 = str2func('FGriewank');
	func.f3 = str2func('FGriewank');
	bias = [100; 100; 200];
	sigma = [10; 20; 10];
	lambda = [0.2; 1; 0.1];
	lambda = repmat(lambda,1,D);
	for i = 1:func_num
		eval(['M.M' int2str(i) '= diag(ones(1,D));']);
	end
end
f = 1e-3*hybrid_composition_func(x, func_num, func, o, sigma, lambda, bias, M);
end



%%% F42 Composition Function 2,  3 Functions

function f = F42(x)  
global initial_flag
persistent func_num func o sigma lambda bias M
x=x';
[ps,D] = size(x);
func_num = 3;
initial_flag=0;
lb = -5; ub = 5;
if initial_flag==0
	load data/optima.mat % saved the predefined optima
	if length( o(1,:) ) >= D
		o = o(:,1:D);
	else
		o = lb + (ub - lb) * rand(func_num,D);
	end
	initial_flag=1;
	func.f1 = str2func('FAckley');
	func.f2 = str2func('FWeierstrass');
	func.f3 = str2func('FEF8F2');
	bias = [0; 100; 200];
	sigma = [10; 30; 10];
	lambda = [1; 10; 20];
	lambda = repmat(lambda,1,D);
	for i = 1:func_num
		eval(['M.M' int2str(i) '= diag(ones(1,D));']);
	end
end
f = 1e-3*hybrid_composition_func(x, func_num, func, o, sigma, lambda, bias, M);
end


%%% F43 Composition Function 3,  4 Functions

function f = F43(x)  
global initial_flag
persistent func_num func o sigma lambda bias M
x=x';
[ps,D] = size(x);
func_num = 4;
initial_flag=0;
lb = -5; ub = 5;
if initial_flag==0
	load data/optima.mat % saved the predefined optima
	if length( o(1,:) ) >= D
		o = o(:,1:D);
	else
		o = lb + (ub - lb) * rand(func_num,D);
	end
	initial_flag=1;
	func.f1 = str2func('FSphere');
	func.f2 = str2func('FGriewank');
	func.f3 = str2func('FGriewank');
	func.f4 = str2func('FAckley');
	bias = [100; 200; 200; 100];
	sigma = [10; 10; 10; 10];
	lambda = [0.5; 1; 0.2; 0.5];
	lambda = repmat(lambda,1,D);
	for i = 1:func_num
		eval(['M.M' int2str(i) '= diag(ones(1,D));']);
	end
end
f = 1e-3*hybrid_composition_func(x, func_num, func, o, sigma, lambda, bias, M);
end


%%% F44 Composition Function 4,  4 Functions

function f = F44(x)  
global initial_flag
persistent func_num func o sigma lambda bias M
x=x';
[ps,D] = size(x);
func_num = 4;
initial_flag=0;
lb = -5; ub = 5;
if initial_flag==0
	load data/optima.mat % saved the predefined optima
	if length( o(1,:) ) >= D
		o = o(:,1:D);
	else
		o = lb + (ub - lb) * rand(func_num,D);
	end
	initial_flag=1;
	func.f1 = str2func('FEF8F2');
	func.f2 = str2func('FEF8F2');
	func.f3 = str2func('FWeierstrass');
	func.f4 = str2func('FWeierstrass');
	bias = [100; 100; 200; 100];
	sigma = [10; 20; 40; 20];
	lambda = [0.1; 10; 20; 10];
	lambda = repmat(lambda,1,D);
	for i = 1:func_num
		eval(['M.M' int2str(i) '= diag(ones(1,D));']);
	end
end
f =1e-4* hybrid_composition_func(x, func_num, func, o, sigma, lambda, bias, M);
end



%%% F45 Composition Function 5,  6 Functions

function f = F45(x)  
global initial_flag
persistent func_num func o sigma lambda bias M
x=x';
[ps,D] = size(x);
func_num = 6;
initial_flag=0;
lb = -5; ub = 5;
if initial_flag==0
	load data/optima.mat % saved the predefined optima
	if length( o(1,:) ) >= D
		o = o(:,1:D);
	else
		o = lb + (ub - lb) * rand(func_num,D);
	end
	initial_flag=1;
	func.f1 = str2func('FGriewank');
	func.f2 = str2func('FGriewank');
	func.f3 = str2func('FWeierstrass');
	func.f4 = str2func('FWeierstrass');
	func.f5 = str2func('FSphere');
	func.f6 = str2func('FSphere');
	bias = [0; 100; 200; 300; 200; 300];
	sigma = [40; 20; 30; 40; 10; 10];
	lambda = [1; 0.5; 2; 2; 0.1; 0.1];
	lambda = repmat(lambda,1,D);
	for i = 1:func_num
		eval(['M.M' int2str(i) '= diag(ones(1,D));']);
	end
end
f =1e-3* hybrid_composition_func(x, func_num, func, o, sigma, lambda, bias, M);
end


%%% F46 Composition Function 6, 6 Functions 

function f = F46(x) 
global initial_flag
persistent func_num func o sigma lambda bias M
x=x';
initial_flag=0;
[ps,D] = size(x);
func_num = 6;
lb = -5; ub = 5;
if initial_flag==0
	initial_flag=1;
	load data/optima.mat % saved the predefined optima, a 10*100 matrix;
	if length( o(1,:) ) >= D
		o = o(:,1:D);
	else
		o = lb + (ub - lb) * rand(func_num,D);
	end
	func.f1 = str2func('FEF8F2');
	func.f2 = str2func('FEF8F2');
	func.f3 = str2func('FWeierstrass');
	func.f4 = str2func('FWeierstrass');
	func.f5 = str2func('FGriewank');
	func.f6 = str2func('FGriewank');
	bias = [0; 100; 200; 300; 200; 300];
	sigma = [1,1,2,10,10,20];
	lambda = [0.25; 0.1; 2; 1; 2; 5];
	lambda = repmat(lambda,1,D);
	c = ones(1,func_num);
	if 	D==2,	load data/CF3_M_D2.mat,
	elseif 	D==3,	load data/CF3_M_D3.mat,
	elseif 	D==5,	load data/CF3_M_D5.mat,
	elseif 	D==10,	load data/CF3_M_D10.mat,
	elseif 	D==20,	load data/CF3_M_D20.mat,
	else 
		for i = 1:func_num
			%A = normrnd(0,1,D,D);
			%eval(['M.M' int2str(i) '= LocalGramSchmidt( A );']);
			eval(['M.M' int2str(i) '= RotMatrixCondition( D,c(i) );']);
		end
	end
end
f = 1e-3*hybrid_composition_func(x,func_num,func,o,sigma,lambda,bias,M);


end



%%% F47 Composition Function 7, 8 Functions 

function f = F47(x) 
global initial_flag
persistent func_num func o sigma lambda bias M
x=x';
initial_flag=0;
[ps,D] = size(x);
func_num = 8;
lb = -5; ub = 5;
if initial_flag==0
	initial_flag=1;
	load data/optima.mat % saved the predefined optima
	if length( o(1,:) ) >= D
		o = o(:,1:D);
	else
		o = lb + (ub - lb) * rand(func_num,D);
	end
	func.f1 = str2func('FRastrigin');
	func.f2 = str2func('FRastrigin');
	func.f3 = str2func('FGriewank');
	func.f4 = str2func('FGriewank');
	func.f5 = str2func('FSphere');
	func.f6 = str2func('FSphere');
	func.f7 = str2func('FWeierstrass');
	func.f8 = str2func('FWeierstrass');
	bias = [0; 100; 200; 300; 200; 300; 200; 100];
	sigma = [20,20,10,10,10,10,20,20];
	lambda = [ 0.2; 0.9; 0.2; 0.9; 0.2; 0.2; 0.9; 0.9];
	lambda = repmat(lambda,1,D);
	for i = 1:func_num
		eval(['M.M' int2str(i) '= diag(ones(1,D));']);
	end
end
f = 1e-3*hybrid_composition_func(x, func_num, func, o, sigma, lambda, bias, M);

end



%%% F48 Composition Function 8, 8 Functions 

function f = F48(x) 

global initial_flag
persistent func_num func o sigma lambda bias M
x=x';
initial_flag=0;
[ps,D] = size(x);
func_num = 8;
lb = -5; ub = 5;
if initial_flag==0
	initial_flag=1;
	load data/optima.mat % saved the predefined optima, a 10*100 matrix;
	if length( o(1,:) ) >= D
		o = o(:,1:D);
	else
		o = lb + (ub - lb) * rand(func_num,D);
	end
	func.f1 = str2func('FRastrigin');
	func.f2 = str2func('FRastrigin');
	func.f3 = str2func('FEF8F2');
	func.f4 = str2func('FEF8F2');
	func.f5 = str2func('FWeierstrass');
	func.f6 = str2func('FWeierstrass');
	func.f7 = str2func('FGriewank');
	func.f8 = str2func('FGriewank');
	bias = [100; 100; 200; 200; 200; 500; 500; 100];
	sigma = [20,20,10,10,10,10,20,20];
	lambda = [ 0.9; 0.9; 0.5; 0.5; 0.5; 0.5; 0.9; 0.9];
	lambda = repmat(lambda,1,D);
	c = ones(1,func_num);
	if 	D==2,	load data/CF4_M_D2.mat,
	elseif 	D==3,	load data/CF4_M_D3.mat,
	elseif 	D==5,	load data/CF4_M_D5.mat,
	elseif 	D==10,	load data/CF4_M_D10.mat,
	elseif 	D==20,	load data/CF4_M_D20.mat,
	else 
		for i = 1:func_num
			%A = normrnd(0,1,D,D);
			%eval(['M.M' int2str(i) '= LocalGramSchmidt( A );']);
			eval(['M.M' int2str(i) '= RotMatrixCondition( D,c(i) );']);
		end
	end
end
f = 1e-3*hybrid_composition_func(x, func_num, func, o, sigma, lambda, bias, M);
end




% F 49 Composition Function 9, 10 Functions
function f = F49(x) 
global initial_flag
persistent  fun_num func O sigma lamda bias M
x=x';
initial_flag=0;
if initial_flag==0
    [ps,D]=size(x);
    initial_flag=1;
    fun_num=10;
    load data/hybrid_func1_data.mat % saved the predefined optima
    if length(O)>=D
         O=O(:,1:D);
    else
         O=-5+10*rand(fun_num,D);
    end
    func.f1=str2func('FRastrigin');
    func.f2=str2func('FRastrigin');
    func.f3=str2func('FWeierstrass');
    func.f4=str2func('FWeierstrass');
    func.f5=str2func('FGriewank');
    func.f6=str2func('FGriewank');
    func.f7=str2func('FAckley');
    func.f8=str2func('FAckley');
    func.f9=str2func('FSphere');
    func.f10=str2func('FSphere');
	bias = [0; 100; 200; 300; 200; 300; 300; 400; 400; 500];
	sigma = [1,1,1,10,10,2,20,20,10,2];
    lamda=[1; 1; 10; 10; 0.2; 0.2; 0.5; 0.5; 0.1; 0.1];
    lamda=repmat(lamda,1,D);
    for i=1:fun_num
        eval(['M.M' int2str(i) '=diag(ones(1,D));']);
    end
end
f=1e-3*hybrid_composition_func(x,fun_num,func,O,sigma,lamda,bias,M);
end


% F 50 Composition Function 10,  10 Functions

function f = F50(x) 
global initial_flag
persistent  fun_num func O sigma lamda bias M
x=x';
initial_flag=0;
if initial_flag==0
    [ps,D]=size(x);
    initial_flag=1;
    fun_num=10;
    load data/hybrid_func1_data.mat % saved the predefined optima
    if length(O)>=D
         O=O(:,1:D);
    else
         O=-5+10*rand(fun_num,D);
    end
    func.f1=str2func('FEF8F2');
    func.f2=str2func('FEF8F2');
    func.f3=str2func('FSphere');
    func.f4=str2func('FSphere');
    func.f5=str2func('FGriewank');
    func.f6=str2func('FGriewank');
    func.f7=str2func('FAckley');
    func.f8=str2func('FAckley');
    func.f9=str2func('FWeierstrass');
    func.f10=str2func('FWeierstrass');
	bias = [0; 100; 200; 300; 200; 300; 300; 100; 100; 100];
	sigma = [1,1,1,2,2,2,1,2,2,1];
    lamda=[0.2; 0.5; 0.1; 0.5; 0.5; 0.1; 0.5; 0.5; 0.2; 0.2];
    lamda=repmat(lamda,1,D);
    for i=1:fun_num
        eval(['M.M' int2str(i) '=diag(ones(1,D));']);
    end
end
f=1e-18*hybrid_composition_func(x,fun_num,func,O,sigma,lamda,bias,M);
end



%%%%%%%%%%%%%%%%%% HYBRID COMPOSITION GENERAL FRAMEWORK %%%%%%%%%%%%%%%%%%% 


function res = hybrid_composition_func(x, func_num, func, o, sigma, lambda, bias, M)

[ps,D] = size(x);
for i = 1:func_num
	oo = repmat( o(i,:), ps, 1 );
	weight(:,i) = exp( -sum( (x-oo).^2, 2 )./2./( D * sigma(i)^2 ) );
end

[tmp,tmpid] = sort(weight,2);
for i = 1:ps
	weight(i,:) = (weight(i,:)==tmp(i,func_num)) .* weight(i,:) + (weight(i,:)~=tmp(i,func_num)) .* (weight(i,:).*(1-tmp(i,func_num).^10));
end
if sum(weight,2) == 0
	weight = weight + 1;
end
weight = weight ./ repmat( sum(weight,2), 1, func_num );
it = 0;
res = 0;
for i = 1:func_num
	oo = repmat(o(i,:),ps,1);
	eval(['f = feval(func.f' int2str(i) ',((x-oo)./repmat(lambda(i,:),ps,1))*M.M' int2str(i) ');']);
	x1 = 5*ones(1,D);
	eval(['f1 = feval(func.f' int2str(i) ',(x1./lambda(i,:))*M.M' int2str(i) ');']);
	fit1 = 2000 .* f ./ f1;
	res = res + weight(:,i) .* ( fit1 + bias(i) );
end
res = -res;
end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%% ROTATION MATRIX %%%%%%%%%%%%%%%%%%%%%%%%%%%%% 

% Generates a D-dimensional rotation matrix with predifined Condition Number (c)

function M = RotMatrixCondition(D,c)

% A random normal matrix
A = normrnd(0,1,D,D);

% P Orthogonal matrix
P = LocalGramSchmidt(A);

% A random normal matrix
A = normrnd(0,1,D,D);

% Q Orthogonal matrix
Q = LocalGramSchmidt(A);

% Make a Diagonal matrix D with prespecified Condition Number
u = rand(1,D);
D = c .^ ( (u-min(u))./(max(u)-min(u)) );
D = diag(D);

% M rotation matrix with Condition Number c
M = P * D * Q;
end


%%%%%%%%%%%%%%%%%%%%%%%%% CLASSICAL GRAM SCHMID %%%%%%%%%%%%%%%%%%%%%%%%%%% 

function [q,r] = LocalGramSchmidt (A)


[n,m] = size(A); 
q = A;    
for j=1:m
    for i=1:j-1 
        r(i,j) = q(:,j)'*q(:,i);
    end
    for i=1:j-1   
      q(:,j) = q(:,j) -  r(i,j)*q(:,i);
    end
    t =  norm(q(:,j),2 ) ;
    q(:,j) = q(:,j) / t ;
    r(j,j) = t  ;
end 
end


%%%%%%%%%%%%%%%%%%%%%%%%% BASIC FUNCTIONS FOR HYBRID %%%%%%%%%%%%%%%%%%%%%% 

% Sphere Function

function f = FSphere(x)
%There is no use to rotate a sphere function, with rotation
%here just for a similar structure as other functions and easy programming
[ps,D] = size(x);
f = sum( x.^2, 2);
end


% Griewank's Function

function f = FGriewank(x)
[ps,D] = size(x);
f = 1;
for i = 1:D
	f = f.*cos( x(:,i)./sqrt(i) );
end
f = sum( x.^2, 2)./4000 - f + 1;
end

% Rastrigin's Function

function f = FRastrigin(x)
[ps,D] = size(x);
f = sum( x.^2-10.*cos( 2.*pi.*x )+10, 2 );
end

% Weierstrass Function

function f = FWeierstrass(x)
[ps,D] = size(x);
x = x+0.5;
a = 0.5;
b = 3;
kmax = 20;
c1(1:kmax+1) = a.^(0:kmax);
c2(1:kmax+1) = 2*pi*b.^(0:kmax);
f = 0;
c = -w(0.5,c1,c2);
for i = 1:D
	f = f + w( x(:,i)', c1, c2 );
end
f = f + c*D;
end

function y = w(x,c1,c2)
y = zeros(length(x),1);
for k = 1:length(x)
	y(k) = sum( c1.*cos( c2.*x(:,k) ) );
end
end

% FEF8F2 Function

function f = FEF8F2(x)
[ps,D] = size(x);
f = 0;
for i = 1:(D-1)
	f = f + F8F2( x(:,[i,i+1])+1 );     % (1,...,1) is minimum
end
f = f + F8F2( x(:,[D,1]) +1 );           % (1,...,1) is minimum
end

% F8F2 Function

function f = F8F2(x) 
f2 = 100.*(x(:,1).^2-x(:,2)).^2+(1-x(:,1)).^2; 
f = 1+f2.^2./4000-cos(f2); 
end

% FAckley Function

function f=FAckley(x)
[ps,D]=size(x);
f=sum(x.^2,2);
f=20-20.*exp(-0.2.*sqrt(f./D))-exp(sum(cos(2.*pi.*x),2)./D)+exp(1);
end




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%% ENGINEERING PROBLEMS %%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



%%% F51 Welded Beam Design

function f = F51(x)  
f = [0];
% 
 f(1)=1.10471*x(1)^2*x(2)+0.04811*x(3)*x(4)*(14.0+x(2));
%  o(2)=65856000/(30*10^6*x(4)*x(3)^3);
f=f+getnonlinear(x);
end
function Z=getnonlinear(x)
Z=0;
% Penalty constant
lam=10^15;
Q=6000*(14+x(2)/2);
D=sqrt(x(2)^2/4+(x(1)+x(3))^2/4);
J=2*(x(1)*x(2)*sqrt(2)*(x(2)^2/12+(x(1)+x(3))^2/4));
alpha=6000/(sqrt(2)*x(1)*x(2));
beta=Q*D/J;
tau=sqrt(alpha^2+2*alpha*beta*x(2)/(2*D)+beta^2);
sigma=504000/(x(4)*x(3)^2);
tmpf=4.013*(30*10^6)/196;
P=tmpf*sqrt(x(3)^2*x(4)^6/36)*(1-x(3)*sqrt(30/48)/28);
g(1)=tau-13600;
g(2)=sigma-30000;
g(3)=x(1)-x(4);
g(4)=6000-P;
% No equality constraint in this problem, so empty;
geq=[];
% Apply inequality constraints
for k=1:length(g)
    Z=Z+ lam*g(k)^2*getH(g(k));
end
% Apply equality constraints
for k=1:length(geq)
   Z=Z+lam*geq(k)^2*getHeq(geq(k));
end
% Test if inequalities hold
% Index function H(g) for inequalities
end
function H=getH(g)
if g<=0
    H=0;
else
    H=1;
end
end
% Index function for equalities
function H=getHeq(geq)
if geq==0
   H=0;
else
   H=1;
end
end


% F52 Tension/Compression Spring Design

function f = F52(x) 
f = [0];
% 
 f(1)=(x(3) + 2)*(x(1)^2)*x(2);
%  o(2)=65856000/(30*10^6*x(4)*x(3)^3);
f=f+getnonlinearTC(x);
end

function Z=getnonlinearTC(x)
Z=0;
% Penalty constant
lam=10^10;
g(1)=1-(x(2)^3*x(3))/(71785*(x(1)^4));
g(2)=((4*x(2)^2 - (x(1)*x(2)))/(12566*(x(2)*x(1)^3 - x(1)^4))) + (1/(5108*x(1)^2))-1;
g(3)=1 - ((140.45*x(1))/(x(2)^2*x(3)));
g(4)=((x(2) + x(1))/1.5) - 1;
% [1-((x(2)^3*x(3))/(71785*x(1)^4));
%     (4*x(2)^2-x(1)*x(2))/(12566*(x(2)*x(1)^3-x(1)^4))+(1/(5108*x(1)^2))-1;
%     1-((140.45*x(1))/(x(2)^2*x(3)));
%     ((x(1)+x(2))/1.5)-1];
% No equality constraint in this problem, so empty;
geq=[];
% Apply inequality constraints
for k=1:length(g)
    Z=Z+ lam*g(k)^2*getHTC(g(k));
end
% Apply equality constraints
for k=1:length(geq)
   Z=Z+lam*geq(k)^2*getHeqTC(geq(k));
end
% Test if inequalities hold
% Index function H(g) for inequalities
end
function H=getHTC(g)
if g<=0
    H=0;
else
    H=1;
end
% Index function for equalities
end
function H=getHeqTC(geq)
if geq==0
   H=0;
else
   H=1;
end

end



%  F53(x)  Pressure vessel design problem

function f = F53(x) 
f = [0];
% 
 f(1)=0.6224*x(1)*x(3)*x(4)+1.7781*x(2)*x(3)^2+3.1661*x(1)^2*x(4)+19.84*x(1)^2*x(3);
%  o(2)=65856000/(30*10^6*x(4)*x(3)^3);
f=f+getnonlinearPV(x);
end
function Z=getnonlinearPV(x)
Z=0;
% Penalty constant
lam=10^10;
g(1)=-x(1)+0.0193*x(3);
g(2)=-x(2)+0.00954*x(3);
g(3)=-pi*x(3)^2*x(4)-(4/3)*pi*x(3)^3+1296000;
g(4)=x(4)-240;
% No equality constraint in this problem, so empty;
geq=[];
% Apply inequality constraints
for k=1:length(g)
    Z=Z+ lam*g(k)^2*getHPV(g(k));
end
% Apply equality constraints
for k=1:length(geq)
   Z=Z+lam*geq(k)^2*getHeqPV(geq(k));
end
% Test if inequalities hold
% Index function H(g) for inequalities
end
function H=getHPV(g)
if g<=0
    H=0;
else
    H=1;
end
end
% Index function for equalities
function H=getHeqPV(geq)
if geq==0
   H=0;
else
   H=1;
end
end



% F54(x)  Cantilever beam design problem

function f = F54(x) % cantilever beam design problem
f = [0];
% 
 f(1)=0.0624*(x(1) + x(2) + x(3) + x(4) + x(5));
%  o(2)=65856000/(30*10^6*x(4)*x(3)^3);
f=f+getnonlinearCB(x);
end
function Z=getnonlinearCB(x)
Z=0;
% Penalty constant
lam=10^10;
g(1)=(61/(x(1)^3)) + (37/(x(2)^3)) + (19/(x(3)^3)) + (7/(x(4)^3)) + (1/(x(5)^3)) - 1;
% No equality constraint in this problem, so empty;
geq=[];
% Apply inequality constraints
for k=1:length(g)
    Z=Z+ lam*g(k)^2*getHCB(g(k));
end
% Apply equality constraints
for k=1:length(geq)
   Z=Z+lam*geq(k)^2*getHeqCB(geq(k));
end
% Test if inequalities hold
% Index function H(g) for inequalities
end
function H=getHCB(g)
if g<=0
    H=0;
else
    H=1;
end
% Index function for equalities
end
function H=getHeqCB(geq)
if geq==0
   H=0;
else
   H=1;
end
end
