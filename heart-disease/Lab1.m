% Agregar directorio de busqueda
addpath '\Users\gava9\mineria\heart-disease'

%Leer el archivo heart-disease.csv
filename='heart-disease.csv';
Casos=csvread(filename)

% Eliminar la 1ra columna, que contiene un id para los registros
Casos(:,1)=[];
unique(Casos(:,58))

% Mapear casos donde no se tenga enfermedades
Map=Casos(:,58)==0;
Casos_NoHD=Casos(Map,:);

% Mapear casos que si tienen enfermedades
Map=Casos(:,58) > 0;
Casos_HD=Casos(Map,:);

% Graficar num de cigarros que fuman los que no tienen enfermedades
% cardiacas
% plot(Casos_NoHD(:,14),'*')

figure
bar(Casos_NoHD(:,14))

% Num de cigarros que fuman los que si tienen enfermedades cardiacas
figure
bar(Casos_HD(:,14))