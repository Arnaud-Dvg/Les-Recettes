import { useState, useEffect } from "react";
import { Link } from "react-router-dom";

type Recette = {
    id: number;
    name: string;
    image: string;
}

function ListeRecette() {

    const [search, setSearch] = useState<string>("");
    const [liste, setListe] = useState<Recette[]>([]);

    // Fetch pour affcher toutes les recettes
    const listeRecette = async () => {
        fetch(`${import.meta.env.VITE_API_URL}/api/recette`)
            .then((res) => res.json())
            .then((data) => {
                setListe(data);
            })
    }

    useEffect(() => {
        listeRecette();
    }, []);

    // Filtre pour la barre de recherche
    const filteredListe = liste.filter((recette) =>
        recette.name.toLowerCase().includes(search.toLowerCase())
    );

    return (
        <div className="flex flex-col min-h-screen px-4">

            {/* Barre de recherche */}
            <div className="flex items-center mx-auto w-full max-w-sm h-12 rounded-full bg-primary mt-6 px-5 shadow-md">
                <input
                    className="bg-transparent outline-none w-full text-black placeholder:text-gray-600"
                    type="search"
                    value={search}
                    onChange={(e) => setSearch(e.target.value)}
                    placeholder="Rechercher une recette..."
                />
            </div>

            {/* Liste des recettes sous forme de carte */}
            <section className="grow">
                <div className="flex flex-col items-center gap-10 pt-10">
                    {filteredListe.length > 0 ? (
                        filteredListe.map((recette) => (
                            <Link
                                to={`/recette/${recette.id}`}
                                key={recette.id}
                                className="w-full max-w-70 flex justify-center"
                            >
                                <div className="bg-primary w-full rounded-3xl shadow-xl overflow-hidden">
                                    <h1 className="text-lg font-bold text-center px-4 py-4 leading-tight">
                                        {recette.name}
                                    </h1>
                                    <img
                                        className="w-full h-52 object-cover border-t border-black/5"
                                        src={recette.image}
                                        alt={recette.name}
                                    />
                                </div>
                            </Link>
                        ))
                    ) : (
                        // Message si aucune recette
                        <div>
                            <p>Mince ! Aucune recette correspond à "<span className="italic">{search}</span>", ou peut-être en Russie ! Ou bien au fin fond du Kazakhstan !</p>
                            <button onClick={() => setSearch("")} className="pt-8"><p>Voir toutes les recettes 🍳</p></button>
                        </div>
                    )}
                </div>

                {/* Compteur */}
                <div className="text-center text-gray-500 text-sm py-10">
                    <p>{filteredListe.length} recettes affichées</p>
                </div>
            </section>
        </div>
    );
}

export default ListeRecette;
