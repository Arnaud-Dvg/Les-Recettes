import { Link } from "react-router-dom";
import PopupConnexion from "./accueil/popupConnexion";

function Header() {

    return (
        <div className="relative flex justify-center items-center w-full p-4">
            {/* Le titre reste au centre grâce au flex parent */}
            <Link to="/">
                <h1 className="text-2xl font-bold text-center">
                    Les recettes d'Arnaud
                </h1>
            </Link>

            {/* La popup est positionnée de façon absolue à droite */}
            <div className="absolute right-4 md:right-10">
                <PopupConnexion />
            </div>
        </div>
    )
}

export default Header;
