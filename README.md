#🧠 Concepto: Eres un ladrón que acaba de robar un banco. Tienes que escapar del edificio (matriz) antes de que llegue la policía. Cada turno eliges un movimiento (WASD), pero hay sensores, cámaras y trampas aleatorias. Si te detectan, se activa la alarma. ¿Lograrás llegar al punto de escape sin ser atrapado?

#🏦 El Robo al Banco: Escape Final
Un juego original hecho en PSeInt donde eres un ladrón que intenta huir sin ser atrapado.

#🎮 Descripción
Escape Final es un juego estilo consola en el que controlas a un ladrón dentro de un banco. El objetivo es llegar al punto de escape sin que las cámaras o trampas activen la alarma. ¡Cada movimiento puede ser el último!

#🔍 Objetivo
Escapar del banco sin ser atrapado por la policía. ¡Pero cuidado! Las cámaras detectan movimiento y las trampas pueden delatar tu posición.

#🔁 Mecánica
Movimiento con W, A, S, D.
La matriz es 10x10.
Si pasas cerca de una cámara (C) → suena la alarma.
Si caes en una trampa (T) → tienes 50% de chances de ser detectado.
Si te detectan 2 veces → pierdes.
Si llegas a E sin detección → ganas.

#🎮 Controles
Tecla	Acción
W	Mover arriba
A	Mover izquierda
S	Mover abajo
D	Mover derecha

#🧱 Elementos en el mapa
Símbolo	Significado
L	Tú (el ladrón)
C	Cámara de seguridad
T	Trampa oculta
X	Pared (bloqueo)
E	Escape (meta)

#🧠 Lógica
El mapa se genera al inicio con cámaras y trampas aleatorias.
Cada turno el jugador se mueve.
Si pasa cerca de una cámara (una casilla al lado), se activa la alarma.
Si pisa una trampa, hay 50% de posibilidad de ser detectado.
Si te detectan dos veces → llega la policía y pierdes.
Si llegas al escape sin ser detectado → victoria.

#📁 Estructura del Proyecto
#🛠 Requisitos
PSeInt instalado
Valor para robar un banco ficticio y escaparte con flow

#⚠️ Advertencia
Este juego es solo con fines educativos y de entretenimiento. No promueve el crimen 😅

#📜 Licencia
#✨ Autor
Sebastián David Ardila Cuastumal
#💻 Proyecto 100% hecho en PSeInt, con creatividad y sabor colombiano

#🌟 ¿Te gustó?
¡Dale una estrella ⭐ al repo y sígueme para más proyectos únicos!
