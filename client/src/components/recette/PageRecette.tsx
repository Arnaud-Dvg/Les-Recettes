import { useState, useEffect, } from "react";
import { useParams } from "react-router-dom";
import Page404 from "../../pages/Page404";

type Recette = {
    id: number;
    name: string;
    image: string;
    description: string;
    recette: string;
    unite: string;
    quantite: number;
    ingredients: Ingredient[];
}

type Ingredient = {
    id: number;
    unite: string;
    quantite: number;
    ingredients: string;
    name: string;
}

function PageRecette() {
    const { id } = useParams();
    const [recette, setRecette] = useState<Recette | null>(null);
    // État "verrou" : vrai tant que l'API n'a pas répondu
    const [loading, setLoading] = useState(true);

    const affichageRecette = async () => {
        try {

            console.log("DETAIL URL =", `${import.meta.env.VITE_API_URL}/api/recette_with_ingredient/${id}`);
            console.log("ID =", id);

            const res = await fetch(`${import.meta.env.VITE_API_URL}/api/recette_with_ingredient/${id}`);
            // Force le passage en "catch" si le serveur répond 404 ou 500
            if (!res.ok) throw new Error("Recette introuvable");
            const data = await res.json();
            setRecette(data);
        } catch (err) {
            console.error("Erreur fetch:", err);
            setRecette(null);
        } finally {
            // S'exécute TOUJOURS : le chargement est terminé, peu importe le résultat
            setLoading(false);
        }
    };

    useEffect(() => {
        affichageRecette();
    }, [id]);

    // ÉTAPE 1 : Si le verrou est actif, on affiche uniquement le chargement
    if (loading) return <p>Chargement...</p>
    // ÉTAPE 2 : Si le chargement est fini mais que recette est null -> 404
    if (!recette) return <Page404 />;

    return (
        <div className="p-6">
            <h2 className="text-2xl font-bold mb-4 text-center">{recette.name}</h2>
            <p className="black">{recette.description}</p>
            <ul className="mt-5 border-2 rounded-2xl ">
                {recette.ingredients?.map((ingredient) => (
                    <li key={ingredient.id} className="flex justify-between pr-1 pl-1">
                        <span>
                            {ingredient.name}
                        </span>
                        <span>
                            {+ingredient.quantite} {ingredient.unite}
                        </span>
                    </li>
                ))}
            </ul>
            <div className="mt-6 flex flex-col gap-6">
                {recette.recette.split(/(?=\d+-)/).filter(e => e.trim()).map((etape, index) => (
                    <p key={index} className="text-gray-800 leading-relaxed">
                        {etape.trim()}
                    </p>
                ))}
            </div>
        </div>
    );
}

export default PageRecette;
