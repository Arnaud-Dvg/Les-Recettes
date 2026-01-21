import databaseClient from "../../database/client";

import type { Result, Rows } from "../../database/client";

type Recette = {
    id: number;
    name: string;
    description: string;
    recette: string;
    image: string;
    plat_id: number;
    ingredient_id: number;
    quantite: number;
    unite: string;
};

type RecetteComplete = {
    id: number;
    name: string;
    description: string;
    recette: string;
    image: string;
    ingredients: Ingredient[];
};

type Ingredient = {
    id: number;
    name: string;
    quantite: number;
    unite: string;
};

class recetteRepository {
    // Le R du CRUD - ReadAll - Pour lire toutes les recettes
    async readAll() {
        const [rows] = await databaseClient.query<Rows>(
            "SELECT * FROM recette"
        );
        return rows as Recette[];
    }

    // Le R du CRUD - Read - Pour lire une recette via son id avec les ingrédients
    async read(plat_id: number): Promise<RecetteComplete | null> {
    const [rows] = await databaseClient.query<Rows>(
    `SELECT 
    p.id, p.name AS plat_name, p.description, p.recette, p.image,
    i.id AS ingredient_id, i.name AS ingredient_name, ip.quantite, ip.unite
    FROM plat AS p
    JOIN ingredient_plat AS ip ON ip.plat_id = p.id
    JOIN ingredient AS i ON i.id = ip.ingredient_id
    WHERE p.id = ?`,
    [plat_id]
    );

    if (rows.length === 0) return null;

  // On crée l'objet final avec les infos du plat de la 1ère ligne
    const recette: RecetteComplete = {
    id: rows[0].id,
    name: rows[0].plat_name,
    description: rows[0].description,
    recette: rows[0].recette,
    image: rows[0].image,
    ingredients: []
    };

  // On ajoute chaque ligne comme un ingrédient
    for (const row of rows) {
    recette.ingredients.push({
    id: row.ingredient_id,
    name: row.ingredient_name,
    quantite: row.quantite,
    unite: row.unite
    });
    }

return recette;
}
}

export default new recetteRepository;