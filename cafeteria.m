function cafeteria
%% validación rol
clc
disp('--- FACTURACIÓN CAFETERÍA CENTRAL ---')
while 1
    opcion = 'Rol de cliente: ';
    rol = input(opcion,'s');
    if strcmp(rol,'estudiante') | strcmp(rol,'profesor')
        break
    else
        disp('DEBE INGRESAR "estudiante" o "profesor"')
    end
end
%% validacion cedula
while 1
    opcion = 'Número de cédula: ';
    ced = input(opcion,'s');
    if sum(isletter(ced))==0 %verifica que se ingrese un valor numerico
        if length(ced)==10 %verifica que cantidad de digitos para cedula
            ced = str2double(ced); %convierte la variable tipo string a numerico
            break
        else
            disp('--- NO HA INGRESADO UN VALOR VÁLIDO, CÉDULA DEBE CONTENER 10 DÍGITOS ---')
        end
    else
        disp('--- INGRESE UN VALOR NUMÉRICO ---')
    end
end
%%  codigo
opcion = 'Ingrese el código de producto: ';
cod = input(opcion,'s');

%% valido cantidad
while 1
    opcion = 'Cantidad a llevar: ';
    cant = input(opcion,'s');
    if sum(isletter(cant))==0 %verifica que se ingrese un valor numerico
        cant = str2double(cant); %convierte la variable tipo string a numerico
        break
    else
        disp('INGRESE UN VALOR NUMÉRICO')
    end
end
%% valido precio
while 1
    opcion = 'Precio unitario: ';
    prec = input(opcion,'s');
    if sum(isletter(prec))==0 %verifica que se ingrese un valor numerico
        prec = str2double(prec); %convierte la variable tipo string a numerico
        break
    else
        disp('INGRESE UN VALOR NUMÉRICO')
    end
end

%% verificacion de descuento
if strcmp(rol,'estudiante')
    precio = prec*0.5*cant;
    
elseif strcmp(rol,'profesor')
    precio = prec*0.8*cant;
end
fprintf('El %s con cedula %d, debe pagar $%d por el producto %s\n',rol,ced,precio,cod);
end       
