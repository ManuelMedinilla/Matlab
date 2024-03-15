function [x, iter, table_data] = punto_fijo(g, x0, tol, max_iter)
    % Punto fijo: Encuentra el punto fijo de una función utilizando el método iterativo
    % g: función de punto fijo
    % x0: valor inicial
    % tol: tolerancia
    % max_iter: número máximo de iteraciones
    
    iter = 0;           % Inicializar el contador de iteraciones
    x = x0;             % Inicializar el valor de x con el valor inicial
    table_data = [];    % Inicializar la matriz para almacenar los datos de la tabla
    
    
    while true
        x_prev = x;      % Almacenar el valor previo de x
        x = g(x);        % Calcular el próximo valor de x utilizando la función de punto fijo
        iter = iter + 1; % Incrementar el contador de iteraciones
        
        % Calcular el error absoluto
        error = abs(x - x_prev);
        
        % Almacenar los valores de x, iteración y error en la matriz de datos de la tabla
        table_data(iter, :) = [iter, x_prev, x, error];
        
        % Verificar criterios de convergencia
        if error < tol || iter >= max_iter
            break; % Salir del bucle si se cumple la tolerancia o se alcanza el número máximo de iteraciones
        end
    end
end