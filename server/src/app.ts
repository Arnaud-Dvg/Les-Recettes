import "dotenv/config";
import express from "express";
import cors from "cors";
import fs from "node:fs";
import path from "node:path";
import type { ErrorRequestHandler } from "express";
import "./app.css";


const app = express();



/* ================================
   Configuration CORS
   ================================ */

// Autorise les requêtes provenant du client (en développement)
// L’URL du client est définie dans la variable d’environnement CLIENT_URL
if (process.env.CLIENT_URL != null) {
  app.use(cors({
    origin: [process.env.CLIENT_URL, 'http://localhost:5173'] 
  }));
}

/* ================================
   Parsing des requêtes HTTP
   ================================ */

// Permet de lire le corps des requêtes envoyées par le client
app.use(express.json()); // Données JSON
app.use(express.urlencoded({ extended: true })); // Données de formulaires
app.use(express.text()); // Texte brut
app.use(express.raw()); // Données binaires

/* ================================
   Routes API
   ================================ */

// Import du routeur principal de l’API
import router from "./router";

// Toutes les routes API passent par ce routeur
app.use(router);

/* ================================
   Servir le front en production
   ================================ */

// Dossier public côté serveur
const publicFolderPath = path.join(__dirname, "../../server/public");

if (fs.existsSync(publicFolderPath)) {
  app.use(express.static(publicFolderPath));
}

// Dossier de build du client (React)
const clientBuildPath = path.join(__dirname, "../../client/dist");

if (fs.existsSync(clientBuildPath)) {
  app.use(express.static(clientBuildPath));

  // Redirige toutes les routes non gérées vers l’application front
  app.get("*", (_, res) => {
    res.sendFile("index.html", { root: clientBuildPath });
  });
}

/* ================================
   Gestion des erreurs
   ================================ */

// Middleware global pour afficher les erreurs dans la console
const logErrors: ErrorRequestHandler = (err, req, res, next) => {
  console.error(err);
  console.error("Requête en erreur :", req.method, req.path);
  next(err);
};

app.use(logErrors);

export default app;
