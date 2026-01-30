import { Link } from "react-router-dom";


function Header() {

    return (
        <>
            <Link
                to="/"
            >
                <h1 className="text-2xl p-2 text-center">Les recettes d'Arnaud</h1>
            </Link>
        </>
    )
}

export default Header;
