# Akinator Disney - Prolog

Sistema experto que adivina personajes Disney haciendo preguntas de sí/no.
Implementado en SWI-Prolog con base de conocimiento generada desde CSV.

---

## Estructura del proyecto

```
.
├── personajes.csv       # ★ Fuente de verdad. Ingresar datos de personajes aquí, nunca en .pl
├── generate.py          # Valida el CSV y genera personajes.pl
├── personajes.pl        # AUTO-GENERADO. NO EDITAR MANUALMENTE.
├── categorias.pl        # Valores válidos por atributo (ENUMS).
├── motor.pl             # Lógica de preguntas y adivinación
└── main.pl              # Terminal de acceso
```

---

## Flujo de trabajo

```
Editar personajes.csv
        ↓
python generate.py        ← valida campos, tipos, duplicados
        ↓
  personajes.pl           ← generado automáticamente
        ↓
swipl main.pl             ← jugar / probar
        ↓
git commit                ← historial = bitácora
```
---

## Cómo añadir un personaje

1. Abrir `personajes.csv`
2. Agregar una fila con **todos los campos** llenos
3. Correr `python generate.py`
4. Si hay errores, el script los imprime y **no genera el archivo**
5. Probar con `swipl main.pl`
6. Hacer commit

---

## Cómo añadir un atributo nuevo

*ANTES VALIDAR con el resto del equipo que se va a agregar el atributo.*

2. Agregar la columna en `personajes.csv` (con valor para cada personaje, sino, no se genera el archivo)
3. Agregar los valores válidos en `categorias.pl`
4. Agregar la validación en `VALID` dentro de `generate.py`
5. Correr `python generate.py`

---

## Atributos actuales

| Atributo          | Valores posibles                                      |
|-------------------|-------------------------------------------------------|
| especie           | humano, animal, objeto                                |
| es_villano        | si, no                                                |
| es_protagonista   | si, no                                                |
| color_pelo        | negro, rubio, rojo, cafe, blanco, ninguno             |
| pelo_largo        | si, no                                                |
| es_magico         | si, no                                                |
| color_vestimenta  | rojo, azul, verde, amarillo, negro, blanco, morado, naranja, rosa, cafe, gris, na |
| vive_en           | castillo, bosque, mar, ciudad, desierto, otro         |
| genero            | masculino, femenino, na                               |

`na` = no aplica (ej. un animal u objeto)

---

## Requisitos

- Python 3.x
- SWI-Prolog

---

## Correr el juego

```bash
python generate.py       # solo si editaste el CSV
swipl main.pl
?- jugar.
```

---

## Convenciones

- Nombres de personajes en `snake_case`, sin acentos, sin espacios
- Todos los valores en minúsculas
- Si un atributo no aplica → `na`
- No dejar campos vacíos - el validador los rechaza
