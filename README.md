# Fundamentos de las Matemáticas I y II

Repositorio de materiales docentes en LaTeX para las asignaturas
**Fundamentos de las Matemáticas I** y **Fundamentos de las Matemáticas II** del
grado en Ingeniería Matemática.

El material está organizado en un manual unificado y en transparencias de clase.
La idea metodológica central del curso es que todo símbolo relevante debe estar
definido antes de utilizarse.

## Estructura

- `Manual/`: manual unificado de la asignatura, en formato `book`.
- `FMI/`: transparencias de Fundamentos de las Matemáticas I.
- `FMII/`: transparencias de Fundamentos de las Matemáticas II.

Los capítulos de `Manual/` se incluyen desde el archivo principal:

```text
Manual/manual_fundamentos_matematicas_esqueleto.tex
```

Las transparencias de `FMI/` y `FMII/` son documentos Beamer independientes.

## Compilación

El repositorio incluye un `Makefile` para compilar todos los documentos completos
y limpiar los archivos auxiliares de LaTeX.

```bash
make all
```

Este comando genera:

- el PDF del manual;
- los PDFs de las 15 clases de `FMI/`;
- los PDFs de las 15 clases de `FMII/`.

Al terminar, se eliminan los archivos auxiliares (`.aux`, `.log`, `.toc`, `.nav`,
etc.) y quedan únicamente los `.pdf` generados junto a los `.tex`.

Otros comandos útiles:

```bash
make list       # Muestra los documentos que se compilan
make clean      # Elimina auxiliares de LaTeX
make clean-pdfs # Elimina los PDF generados
make rebuild    # Elimina los PDF y recompila todo
```

## Requisitos

Para compilar el material se necesita una distribución LaTeX con LuaLaTeX y los
paquetes habituales para documentos matemáticos y Beamer, entre ellos:

- `fontspec`
- `babel`
- `amsmath`, `amssymb`, `mathtools`
- `beamer`
- `booktabs`
- `csquotes`
- `hyperref`
- `cleveref`
- `thmtools`
- `mdframed`

El motor usado por defecto es `lualatex`.

## Organización del contenido

### Fundamentos de las Matemáticas I

Las transparencias de `FMI/` cubren lenguaje matemático, lógica, cuantificadores,
métodos de demostración, conjuntos, aplicaciones, relaciones binarias,
estructuras algebraicas elementales y números naturales.

### Fundamentos de las Matemáticas II

Las transparencias de `FMII/` cubren números enteros, divisibilidad, algoritmo de
Euclides, ecuaciones diofánticas, factorización, aritmética modular, números
racionales, reales y complejos.

### Manual

El manual desarrolla de forma más extensa los contenidos de ambas asignaturas y
sirve como referencia escrita para las clases y seminarios.

## Convenciones de trabajo

- Los archivos fuente son `.tex`.
- Los PDFs se generan localmente y no están pensados como fuente primaria del
  repositorio.
- Los archivos auxiliares de LaTeX no deben versionarse.
- Las modificaciones deben mantener la notación coherente con el manual.
- Antes de introducir un símbolo nuevo, debe quedar claro qué objeto representa y
  en qué contexto se utiliza.

## Contribución

Si encuentras un error o quieres proponer una mejora:

1. Haz un fork del repositorio.
2. Crea una rama para tus cambios.
3. Comprueba que el material compila con `make all`.
4. Abre un pull request describiendo la modificación.

## Licencia

Este material se proporciona para uso educativo personal.
