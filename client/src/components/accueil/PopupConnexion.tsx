import { useState } from "react";

function PopupConnexion() {
    const [modal, setModal] = useState<"login" | "register" | null>(null);

    return (
        <>
            {/* Bouton ouverture */}
            <button onClick={() => setModal("login")}>
                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24">
                    <path fill="#000" d="M12 21v-2h7V5h-7V3h7q.825 0 1.413.588T21 5v14q0 .825-.587 1.413T19 21zm-2-4l-1.375-1.45l2.55-2.55H3v-2h8.175l-2.55-2.55L10 7l5 5z" />
                </svg>
            </button>

            {/* MODAL */}
            {modal && (
                <div className="fixed inset-0 z-50 flex items-center justify-center bg-black/50 backdrop-blur-sm">
                    <div className="bg-white p-8 rounded-2xl shadow-xl w-full max-w-md relative">

                        {/* Fermer */}
                        <button
                            onClick={() => setModal(null)}
                            className="absolute top-4 right-4 text-gray-500 hover:text-black"
                        >
                            ✕
                        </button>

                        {/* LOGIN */}
                        {modal === "login" && (
                            <>
                                <h2 className="text-2xl font-bold mb-6 text-center">Connexion</h2>

                                <form className="flex flex-col gap-4">
                                    <input type="email" placeholder="Email" className="border p-3 rounded-lg" />
                                    <input type="password" placeholder="Mot de passe" className="border p-3 rounded-lg" />

                                    {/* SWITCH */}
                                    <button
                                        type="button"
                                        onClick={() => setModal("register")}
                                        className="text-sm text-blue-600"
                                    >
                                        Créer un compte
                                    </button>

                                    <button className="bg-primary text-white p-3 rounded-lg font-bold mt-2">
                                        Entrer
                                    </button>
                                </form>
                            </>
                        )}

                        {/* REGISTER */}
                        {modal === "register" && (
                            <>
                                <h2 className="text-2xl font-bold mb-6 text-center">Créer un compte</h2>

                                <form className="flex flex-col gap-4">
                                    <input type="email" placeholder="Email" className="border p-3 rounded-lg" />
                                    <input type="password" placeholder="Mot de passe" className="border p-3 rounded-lg" />

                                    {/* SWITCH */}
                                    <button
                                        type="button"
                                        onClick={() => setModal("login")}
                                        className="text-sm text-blue-600"
                                    >
                                        Déjà un compte ? Se connecter
                                    </button>

                                    <button className="bg-primary text-white p-3 rounded-lg font-bold mt-2">
                                        Créer
                                    </button>
                                </form>
                            </>
                        )}

                    </div>
                </div>
            )}
        </>
    );
}

export default PopupConnexion;