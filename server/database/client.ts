// Récupère les variables du fichier .env pour la connexion à la base de données
const { DB_HOST, DB_PORT, DB_USER, DB_PASSWORD, DB_NAME } = process.env;

// Création d’un pool de connexions MySQL
import mysql from "mysql2/promise";


const client = mysql.createPool({
  host: DB_HOST,
  port: Number.parseInt(DB_PORT as string),
  user: DB_USER,
  password: DB_PASSWORD,
  database: DB_NAME,
  ssl: {
    minVersion: 'TLSv1.2',
    rejectUnauthorized: true, // TiDB recommande d'utiliser le certificat CA pour plus de sécurité
  }
});

// Export du client MySQL
export default client;

// Exports des types utilisés pour typer les requêtes et résultats
import type { Pool, ResultSetHeader, RowDataPacket } from "mysql2/promise";

type DatabaseClient = Pool;
type Result = ResultSetHeader;
type Rows = RowDataPacket[];

export type { DatabaseClient, Result, Rows };
