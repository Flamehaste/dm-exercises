
%% Leer el archivo csv
filename='breastCancerWisconsinCorrected.csv';
Casos = csvread(filename);

%% Declarar mapas
% MapB: Casos de cancer beningnos
MapB = Casos(Casos(:,11)==2,:);
% Seleccionar solo las columnas de la 2 a la 10 (1 y 11 son innecesarias)
MapB = MapB(:,2:10);
% MapM: Casos de cancer malignos
MapM = Casos(Casos(:,11)==4,:);
% Seleccionar solo las columnas de la 2 a la 10 (1 y 11 son innecesarias)
MapM = MapM(:,2:10);

%% Graficar Columna 2: Grosor
figure('Name', 'Grosor del tumor')
subplot(2,1,1)
plot(MapB(:,1),'+')
grid on
title('Casos benignos')
subplot(2,1,2)
plot(MapM(:,1),'+')
title('Casos malignos')
grid on
%% Graficar Columna 3: Uniformidad del tamaño de las celulas
figure('Name', 'Uniformidad del tamaño de celulas')
subplot(2,1,1)
plot(MapB(:,2),'+')
grid on
title('Casos benignos')
subplot(2,1,2)
plot(MapM(:,2),'+')
grid on
title('Casos malignos')
%% Graficar Columna 4: Uniformidad de la forma de las celulas
figure('Name', 'Uniformidad del tamaño de celulas')
subplot(2,1,1)
plot(MapB(:,3),'+')
grid on
title('Casos benignos')
subplot(2,1,2)
plot(MapM(:,3),'+')
grid on
title('Casos malignos')
%% Graficar Columna 5: Adhesión Marginal
figure('Name', 'Adhesión Marginal')
subplot(2,1,1)
plot(MapB(:,4),'+')
grid on
title('Casos benignos')
subplot(2,1,2)
plot(MapM(:,4),'+')
grid on
title('Casos malignos')
%% Graficar Columna 6: Tamaño de las celulas epiteliales únicas
figure('Name', 'Tamaño de las celulas epiteliales únicas')
subplot(2,1,1)
plot(MapB(:,5),'+')
grid on
title('Casos benignos')
subplot(2,1,2)
plot(MapM(:,5),'+')
grid on
title('Casos malignos')
%% Graficar Columna 7: Nucleo Descubierto
figure('Name', 'Nucleo Descubierto')
subplot(2,1,1)
plot(MapB(:,6),'+')
grid on
title('Casos benignos')
subplot(2,1,2)
plot(MapM(:,6),'+')
grid on
title('Casos malignos')
%% Graficar Columna 8: Cromatina suave
figure('Name', 'Cromatina suave')
subplot(2,1,1)
plot(MapB(:,7),'+')
grid on
title('Casos benignos')
subplot(2,1,2)
plot(MapM(:,7),'+')
grid on
title('Casos malignos')
%% Graficar Columna 9: Nucleolos normales
figure('Name', 'Nucleolos normales')
subplot(2,1,1)
plot(MapB(:,8),'+')
grid on
title('Casos benignos')
subplot(2,1,2)
plot(MapM(:,8),'+')
grid on
title('Casos malignos')
%% Graficar Columna 10: Mitosis
figure('Name', 'Mitosis')
subplot(2,1,1)
plot(MapB(:,9),'+')
grid on
title('Casos benignos')
subplot(2,1,2)
plot(MapM(:,9),'+')
grid on
title('Casos malignos')