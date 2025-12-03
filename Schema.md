# Database Università


## Tabella

- dipartimenti
- corsi di laurea
- corsi
- insegnanti
- studenti
- appelli_esami
- appelli_studenti



### dipartimenti
id - INT PK AI
nome - VARCHAR(100)


### corsi_di_laurea
id - INT PK AI
id_dipartimento - INT FK
nome - VARCHAR(100)
qualifica - VARCHAR(50)


### corsi
id - INT PK AI
id_corso_di_laurea - INT FK
nome - VARCHAR(50)
descrizione - TEXT
ore_lezioni - SMALLINT


### insegnanti
id - INT PK AI
id_corso - INT FK
nome - VARCHAR(100)
cognome - VARCHAR(100)
email - VARCHAR(100)


### studenti
id - INT PK AI
id_corso_di_laurea - INT FK
nome - VARCHAR(100)
cognome - VARCHAR(100)
data_di_nascita - DATE
email - VARCHAR(100)


### appelli_esami
id - INT PK AI
id_corso - INT FK
data - DATE
ora - TIME


### appelli_studenti
id - INT PK AI
id_appello - INT FK 
id_studente INT FK
esito - TINYINT