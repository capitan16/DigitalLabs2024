# Laboratorio 2: Medidor de carga

## Solución planteada

El problema se resolvió usando módulos interconectados en tres niveles:

### Módulo de detección de descarga individual

Se implementó de forma estructural con la definición de función booleana que indica la descarga total de una batería, mediante la señal visual de un led. Se usa uno por cada batería del banco.

### Módulo monitor de banco

se realizó mediante un sumador de 4 bits donde cada entrada representa el nivel de carga del sensor de cada batería.

implementado de forma estructural mediante la reutilización de 1 sumador de 1 bit conectado de forma encadenada con una respuesta de 5 bits que represnta el nivel del banco de baterías.

### Módulo de comparación

Determina 5 estados sobre la carga del banco de baterías:

- crítico :   menor al 10%
- bajo    : del 10% al 30%
- medio   : del 30% al 60%
- alto    : del 60  al 99%
- completo: 100%

Por cada estado coloca una señal visual mediante un led.

fue implementado de forma comportamental usando múltiples ramas implementadas mediante declaraciones _if else if_, y operadores de comparación (_<, >, ==_) y lógicos (_&&_) y concatenación de bits.

## Módulos

### Detector de descarga

### Sumador de 4 bits

### Comparación

se implementó una declaración _always_ dentro de la cual se colocaron declaraciones _if-else if_ con operadores de comparación y lógicos ver: [modulo comparador](./comparator.v)

Se realizaron pruebas unitarias colocando un nivel para cada una de las regiones definidas y se verificó la respuesta de las señales de salida como se muestra en la siguiente gráfica ![prueba unitaria del comparador](./comparator_tb.png)
