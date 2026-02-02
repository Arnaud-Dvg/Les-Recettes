import { Link } from "react-router-dom";

function Page404() {
    return (
        <div className="min-h-screen bg-orange-50 flex flex-col items-center pt-20 md:pt-32 p-6 text-center">
            <h1 className="text-9xl font-black text-black animate-bounce">
                404
            </h1>
            <h2 className="text-2xl md:text-3xl font-bold text-gray-800 mt-4">
                Oups ! Le chef a brûlé la page...
            </h2>

            <p className="text-gray-600 mt-2 max-w-md leading-relaxed">
                On a cherché partout, même derrière le frigo, mais cette recette semble avoir disparu des fourneaux.
            </p>
            <div className="text-8xl my-8">
                🔥
            </div>
            <Link
                to="/"
                className="px-8 py-3 bg-secondary text-black font-bold rounded-full shadow-lg hover:bg-orange-600 transition-transform hover:scale-105"
            >
                Retourner en cuisine
            </Link>
        </div>
    );
}

export default Page404;
