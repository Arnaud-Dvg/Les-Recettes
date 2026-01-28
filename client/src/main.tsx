import { StrictMode } from 'react'
import { createRoot } from 'react-dom/client'
import { RouterProvider, createBrowserRouter } from "react-router";

import App from './App.tsx'
import Accueil from './pages/Accueil.tsx'
import Recette from './pages/Recette.tsx'
import Page404 from './pages/Page404.tsx';


const router = createBrowserRouter([
  {
    element: <App />,
    children: [
      {
        // Liste des recettes
        path: "/",
        element: <Accueil />,
      },

      {
        // Détail d'une recette
        path: "/recette/:id",
        element: <Recette />,
      },

      {
        // Erreur
        path: "*",
        element: <Page404 />
      }
    ]
  }
])

// 1. On cherche l'élément HTML qui servira de conteneur à toute l'application (généralement dans index.html)
const rootElement = document.getElementById("root");

// 2. Sécurité : Si l'élément "root" n'existe pas, on arrête tout et on affiche une erreur claire
if (rootElement == null) {
  throw new Error(`Votre document HTML doit contenir une balise <div id="root"></div>`);
}

// 3. On initialise React sur cet élément et on lance le rendu
createRoot(rootElement).render(
  // StrictMode aide à détecter les bugs potentiels pendant le développement
  <StrictMode>
    {/* RouterProvider injecte la configuration de navigation (routes) dans l'app */}
    <RouterProvider router={router} />
  </StrictMode>,
);