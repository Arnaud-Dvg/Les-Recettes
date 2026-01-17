// Charge les variables d’environnement depuis le fichier .env
import "dotenv/config";

import fs from "node:fs";
import path from "node:path";

// Construit le chemin vers le fichier schema.sql
const schema = path.join(__dirname, "../../server/database/schema.sql");

// Récupère les informations de connexion à la base depuis le .env
const { DB_HOST, DB_PORT, DB_USER, DB_PASSWORD, DB_NAME } = process.env;

// Client MySQL (version promesse)
import mysql from "mysql2/promise";

const migrate = async () => {
  try {
    // Lecture du fichier SQL contenant la structure (tables, contraintes, données)
    const sql = fs.readFileSync(schema, "utf8");

    // Création d’une connexion MySQL dédiée (sans base sélectionnée au départ)
    const database = await mysql.createConnection({
      host: DB_HOST,
      port: DB_PORT as number | undefined,
      user: DB_USER,
      password: DB_PASSWORD,
      multipleStatements: true, // Autorise l’exécution de plusieurs requêtes SQL d’un coup
    });

    // Supprime la base si elle existe déjà
    await database.query(`drop database if exists ${DB_NAME}`);

    // Crée une nouvelle base de données
    await database.query(`create database ${DB_NAME}`);

    // Sélectionne la base fraîchement créée
    await database.query(`use ${DB_NAME}`);

    // Exécute le contenu du fichier schema.sql
    await database.query(sql);

    // Ferme la connexion à la base
    database.end();

    console.info(`${DB_NAME} mise à jour depuis '${path.normalize(schema)}' 🆙`);
  } catch (err) {
    const { message, stack } = err as Error;
    console.error(
      "Erreur lors de la mise à jour de la base de données :",
      message,
      stack,
    );
  }
};

// Lance la migration
migrate();
