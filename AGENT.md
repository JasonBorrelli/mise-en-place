# AGENTS.md

## Progetto

Mise en place: gestionale web multi-negozio per la ristorazione.
Gestisce negozi, dipendenti, turni, ingredienti, ricette e food cost.

## Stack

- Frontend: React (Vite), React Router (modalità declarative), Context API, Tailwind CSS
- Backend: Node.js + Express 5, mysql2
- Database: MySQL 8.4
- Package manager: pnpm (mai npm o yarn)

## Struttura

- /frontend: app React
- /backend: server Express (app.js, routers/, middlewares/, config/)
- /docs: schema del database (immagine drawSQL), file .sql con le query

## Regole di lavoro

- Prima di scrivere codice, proponi un piano e aspetta la mia conferma.
- Lavora a piccoli passi: una funzionalità per volta, un commit per step.
- Non modificare file che non c'entrano con il task richiesto.
- Spiega in modo breve cosa hai fatto: sono uno studente e voglio capire il codice.

## Convenzioni di codice

- Nomi di variabili, funzioni e componenti in inglese, testi dell'interfaccia in italiano.
- Componenti React in PascalCase, un componente per file, funzioni e variabili in camelCase.
- Usare arrow functions e array methods (map, filter, reduce) al posto dei cicli classici dove ha senso.
- Tabelle e colonne SQL in snake_case, nomi delle tabelle al plurale (stores, employees...).

## Backend

- API REST con router separati in /backend/routers (un file per entità).
- Rotte CRUD: index, show, store, update, destroy, con gli status HTTP corretti (200, 201, 204, 404, 500).
- Query SQL sempre parametrizzate (placeholder ?), mai concatenare input dell'utente.
- Middleware di gestione errori (500) e di rotta non trovata (404).

## Frontend

- Chiamate API con fetch dentro useEffect, con stato di loading e gestione errori (try/catch).
- Stato globale solo con Context API (provider e custom hook in file dedicato).
- Design mobile-first, da verificare a 512px, 768px e 992px.

## Sicurezza

- Segreti e password solo in file .env, mai nel codice e mai committati.
- Mantenere aggiornato .env.example con i nomi delle variabili (senza valori reali).
