% Reto 2 - Modelado del balance híbrido
% Sistema Inteligente de Gestión Energética (SIGE)

% Limpiar las variables almacenadas
clear

% Limpiar la ventana de comandos
clc

% Cerrar las figuras abiertas
close all

% Vector que representa las 24 horas del día
horas = 1:24;

% Generación solar en kW durante las 24 horas
solar = [0 0 0 0 0 5 8 12 16 20 23 25 23 20 16 12 8 5 0 0 0 0 0 0];

% Generación eólica en kW durante las 24 horas
eolica = [8 10 7 12 9 11 6 13 10 8 14 12 9 15 11 7 13 10 8 12 9 14 10 7];

% Cálculo de la generación híbrida total
generacion_total = solar + eolica;

% Demanda energética de la comunidad en kW
demanda = [3 3 2 4 3 6 7 8 8 9 10 9 8 9 10 9 8 15 15 15 15 4 3 2];

% Cálculo del balance energético
balance = generacion_total - demanda;

% Crear una nueva figura para representar los resultados
figure

% Graficar la generación híbrida total
plot(horas, generacion_total, '-o')

% Mantener la figura para agregar la segunda curva
hold on

% Graficar la demanda energética de la comunidad
plot(horas, demanda, '-s')

% Agregar el título de la gráfica
title('Balance energético de la micro-red')

% Etiquetar el eje horizontal
xlabel('Tiempo en horas')

% Etiquetar el eje vertical
ylabel('Potencia en Kilovatios')

% Agregar la leyenda de las dos curvas
legend('Generación Total', 'Demanda de la Comunidad')

% Activar la cuadrícula
grid on