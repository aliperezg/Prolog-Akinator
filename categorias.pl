% categorias.pl - Valores válidos por atributo (ENUMs)
% SST

valor_valido(especie,humano).
valor_valido(especie,animal).
valor_valido(especie,objeto).
valor_valido(especie,insecto).
valor_valido(especie,ser_magico).

valor_valido(es_villano,si).
valor_valido(es_villano,no).

valor_valido(es_protagonista, si).
valor_valido(es_protagonista, no).

valor_valido(color_pelo,negro).
valor_valido(color_pelo,rubio).
valor_valido(color_pelo,rojo).
valor_valido(color_pelo,morado).
valor_valido(color_pelo,naranja).
valor_valido(color_pelo,cafe).
valor_valido(color_pelo,blanco).
valor_valido(color_pelo,gris).
valor_valido(color_pelo,ninguno).

valor_valido(pelo,largo).
valor_valido(pelo,corto).
valor_valido(pelo,sin_pelo).

valor_valido(es_magico, si).
valor_valido(es_magico, no).

valor_valido(color_vestimenta, rojo).
valor_valido(color_vestimenta, azul).
valor_valido(color_vestimenta, verde).
valor_valido(color_vestimenta, amarillo).
valor_valido(color_vestimenta, negro).
valor_valido(color_vestimenta, blanco).
valor_valido(color_vestimenta, morado).
valor_valido(color_vestimenta, naranja).
valor_valido(color_vestimenta, rosa).
valor_valido(color_vestimenta, cafe).
valor_valido(color_vestimenta, gris).
valor_valido(color_vestimenta, na).

valor_valido(vive_en,castillo).
valor_valido(vive_en,bosque).
valor_valido(vive_en,mar).
valor_valido(vive_en,ciudad).
valor_valido(vive_en,desierto).
valor_valido(vive_en,pantano).
valor_valido(vive_en,otro).

valor_valido(genero,masculino).
valor_valido(genero,femenino).
valor_valido(genero,na).

% Lista de atributos en orden de pregunta
atributo(especie).
atributo(es_villano).
atributo(es_protagonista).
atributo(color_pelo).
atributo(pelo).
atributo(es_magico).
atributo(color_vestimenta).
atributo(vive_en).
atributo(genero).
