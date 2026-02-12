// Charge les variables d’environnement depuis le fichier .env
import "dotenv/config";

// Vérifie la connexion à la base de données
// Optionnel : peut être supprimé si la connexion à la BDD
// n’est pas nécessaire au démarrage de l’application
import "../database/checkConnection";

// Importe l’application Express configurée
import app from "./app";

app.get('/', (req, res) => {
    res.status(200).send('Serveur opérationnel');
});

// Récupère le port d’écoute depuis les variables d’environnement
const port = process.env.PORT || process.env.APP_PORT || 3310;

// Démarre le serveur et écoute sur le port défini
app
  .listen(port, () => {
    console.info(`Le serveur écoute sur le port ${port}`);
  })
  .on("error", (err: Error) => {
    console.error("Erreur serveur :", err.message);
  });
