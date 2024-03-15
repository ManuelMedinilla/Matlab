% Definir la función de punto fijo
% Definir la función de punto fijo
g = @(x) (2 * exp(x^2)) / 5;

% Especificar el valor inicial, tolerancia y número máximo de iteraciones
x0 = 0;
tol = 0.001;
max_iter = 10;

% Llamar a la función de punto fijo
[x, iter, table_data] = punto_fijo(g, x0, tol, max_iter);

% Mostrar resultados
fprintf('La aproximación al punto fijo es: %.5f\n', x);
fprintf('Número de iteraciones realizadas: %d\n', iter);

% Mostrar los datos de la tabla
disp('         Tabla de iteraciones:       ');
fprintf('%-5s %-10s %-10s %-10s\n', 'i', '   x0  ', '   x  ', 'Tolerancia');
for i = 1:iter
    fprintf('%-5d %-10.5f %-10.5f %-10.5f%%\n', table_data(i, 1), table_data(i, 2), table_data(i, 3), table_data(i,4));
end