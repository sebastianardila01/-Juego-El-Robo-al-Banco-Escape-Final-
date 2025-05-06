Algoritmo EscapeFinal
	// Dimensiones del mapa
	Dimension mapa[10,10]
	Definir i, j, fila, col, detectado, maxDetectado, activo Como Entero
	Definir tecla Como Caracter

	fila <- 0
	col <- 0
	detectado <- 0
	maxDetectado <- 2
	activo <- 1

	// Inicializar mapa vacío
	Para i <- 0 Hasta 9
		Para j <- 0 Hasta 9
			mapa[i,j] <- " "
		FinPara
	FinPara

	// Colocar paredes (opcional)
	mapa[3,3] <- "X"
	mapa[4,4] <- "X"
	mapa[5,5] <- "X"
	mapa[1,7] <- "X"
	mapa[7,2] <- "X"

	// Colocar cámaras (C)
	mapa[2,2] <- "C"
	mapa[6,6] <- "C"
	mapa[1,5] <- "C"
	mapa[8,3] <- "C"

	// Colocar trampas (T)
	mapa[3,1] <- "T"
	mapa[5,2] <- "T"
	mapa[4,7] <- "T"
	mapa[7,7] <- "T"

	// Punto de escape (E)
	mapa[9,9] <- "E"

	// Colocar al ladrón
	mapa[fila,col] <- "L"

	Mientras activo = 1
		Limpiar Pantalla

		// Mostrar mapa
		Para i <- 0 Hasta 9
			Para j <- 0 Hasta 9
				Escribir Sin Saltar "[" + mapa[i,j] + "]"
			FinPara
			Escribir ""
		FinPara

		Escribir "Movimientos (W/A/S/D): "
		Leer tecla
		mapa[fila,col] <- " "

		// Movimiento
		Segun tecla
			Caso "W":
				Si fila > 0 Y mapa[fila-1,col] <> "X" Entonces
					fila <- fila - 1
				FinSi
			Caso "S":
				Si fila < 9 Y mapa[fila+1,col] <> "X" Entonces
					fila <- fila + 1
				FinSi
			Caso "A":
				Si col > 0 Y mapa[fila,col-1] <> "X" Entonces
					col <- col - 1
				FinSi
			Caso "D":
				Si col < 9 Y mapa[fila,col+1] <> "X" Entonces
					col <- col + 1
				FinSi
		FinSegun

		// Verificar cámaras cerca (alrededor)
		Si fila > 0 Y mapa[fila-1,col] = "C" Entonces
			detectado <- detectado + 1
			Escribir "¡Te vio una cámara! 🔴"
		FinSi
		Si fila < 9 Y mapa[fila+1,col] = "C" Entonces
			detectado <- detectado + 1
			Escribir "¡Te vio una cámara! 🔴"
		FinSi
		Si col > 0 Y mapa[fila,col-1] = "C" Entonces
			detectado <- detectado + 1
			Escribir "¡Te vio una cámara! 🔴"
		FinSi
		Si col < 9 Y mapa[fila,col+1] = "C" Entonces
			detectado <- detectado + 1
			Escribir "¡Te vio una cámara! 🔴"
		FinSi

		// Verificar si piso trampa
		Si mapa[fila,col] = "T" Entonces
			// 50% de activarse
			Si Aleatorio(1,2) = 1 Entonces
				detectado <- detectado + 1
				Escribir "¡PISASTE UNA TRAMPA! 🚨"
			FinSi
		FinSi

		// Verificar condiciones de derrota
		Si detectado >= maxDetectado Entonces
			Limpiar Pantalla
			Escribir "🚓 Te atrapó la policía. Game Over."
			activo <- 0
		FinSi

		// Verificar victoria
		Si mapa[fila,col] = "E" Entonces
			Limpiar Pantalla
			Escribir "💰 ¡Lograste escapar del banco! Victoria total."
			activo <- 0
		FinSi

		// Actualizar posición
		mapa[fila,col] <- "L"

		Esperar 0.5
	FinMientras
FinAlgoritmo

