

trivia1 = TriviaGame.create(
    {
        title: '¿Cuál fue el primer uso que tuvo el ferrocarril a principios del siglo XIX?',
        punishment: 'Pierde un turno'
    }
)

TriviaGameQuestion.create({question: 'Extracción del carbón de las minas', right: false, trivia_game: trivia1})
TriviaGameQuestion.create({question: 'Militar', right: false, trivia_game: trivia1})
TriviaGameQuestion.create({question: 'Recreativo', right: false, trivia_game: trivia1})
TriviaGameQuestion.create({question: 'Transporte de mercancías', right: true, trivia_game: trivia1})

trivia2 = TriviaGame.create(
    {
        title: '¿A qué período pertenece Rafael Alberti?',
        punishment: 'Retrocede 4 casilleros'
    }
)

TriviaGameQuestion.create({question: 'Siglo de Oro', right: false, trivia_game: trivia2})
TriviaGameQuestion.create({question: 'Generación del 27', right: true, trivia_game: trivia2})
TriviaGameQuestion.create({question: 'Siglo de las Luces', right: false, trivia_game: trivia2})
TriviaGameQuestion.create({question: 'Generación del 98', right: false, trivia_game: trivia2})

trivia3 = TriviaGame.create(
    {
        title: '¿Qué acontecimiento marca el inicio de la Edad Moderna?',
        punishment: 'Retrocede 2 casilleros'
    }
)

TriviaGameQuestion.create({question: 'La caída del Imperio Romano', right: false, trivia_game: trivia3})
TriviaGameQuestion.create({question: 'La máquina de vapor', right: false, trivia_game: trivia3})
TriviaGameQuestion.create({question: 'El Descubrimiento de América', right: true, trivia_game: trivia3})
TriviaGameQuestion.create({question: 'La Revolución Industrial', right: false, trivia_game: trivia3})

trivia4 = TriviaGame.create(
    {
        title: 'La capital de Polonia es',
        punishment: 'Retrocede 6 casilleros'
    }
)

TriviaGameQuestion.create({question: 'Varsovia', right: false, trivia_game: trivia4})
TriviaGameQuestion.create({question: 'Dublín', right: false, trivia_game: trivia4})
TriviaGameQuestion.create({question: 'Oslo', right: false, trivia_game: trivia4})
TriviaGameQuestion.create({question: 'Budapest', right: true, trivia_game: trivia4})

Punishment.create({name: 'El juegador pierde 2 turnos', trivia: true, dices: false})
Punishment.create({name: 'El juegador pierde 1 turnos', trivia: true, dices: false})
Punishment.create({name: 'El jugador retrocede 6 casilleros', trivia: true, dices: false})
Punishment.create({name: 'El jugador retrocede 5 casilleros', trivia: true, dices: false})
Punishment.create({name: 'El jugador retrocede 4 casilleros', trivia: true, dices: true})
Punishment.create({name: 'El jugador retrocede 3 casilleros', trivia: true, dices: true})
Punishment.create({name: 'El jugador retrocede 2 casilleros', trivia: false, dices: true})