// Récupère les variables du fichier .env pour la connexion à la base de données
const { DB_HOST, DB_PORT, DB_USER, DB_PASSWORD, DB_NAME } = process.env;

// Création d’un pool de connexions MySQL
import mysql from "mysql2/promise";

// AJOUT : n'activer SSL que sur TiDB (sinon ça casse MySQL local)
const isTiDB = process.env.DB_PORT === "4000" || (process.env.DB_HOST ?? "").includes("tidbcloud.com");

console.log("[APP DB]", DB_HOST, DB_PORT, DB_NAME); 
// TEST

const client = mysql.createPool({
  host: DB_HOST,
  port: Number.parseInt(DB_PORT as string),
  user: DB_USER,
  password: DB_PASSWORD,
  database: DB_NAME,
  
    // AJOUT : SSL uniquement sur TiDB
  ...(isTiDB
    ? {
        ssl: {
          minVersion: "TLSv1.2",
          rejectUnauthorized: true,
        },
      }
    : {}),
});

// Export du client MySQL
export default client;

// Exports des types utilisés pour typer les requêtes et résultats
import type { Pool, ResultSetHeader, RowDataPacket } from "mysql2/promise";

type DatabaseClient = Pool;
type Result = ResultSetHeader;
type Rows = RowDataPacket[];

export type { DatabaseClient, Result, Rows };
