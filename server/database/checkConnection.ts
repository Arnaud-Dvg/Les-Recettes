import client from "./client";

// Tente d’établir une connexion à la base de données
client
  .getConnection()
  .then((connection) => {
    console.info(`Base de données utilisée : ${process.env.DB_NAME}`);

    // Libère la connexion pour qu’elle puisse être réutilisée par le pool
    connection.release();
  })
  .catch((error: Error) => {
    console.warn(
      "Attention :",
      "Impossible d’établir une connexion à la base de données.",
      "Vérifie les identifiants dans le fichier .env si l’accès à la base est nécessaire.",
    );
    console.warn(error.message);
  });
