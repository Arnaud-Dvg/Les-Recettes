import express from "express";

const router = express.Router();

import recetteAction from "./modules/recetteAction";
router.get("/api/recette", recetteAction.browse);
router.get("/api/recette_with_ingredient", recetteAction.read)

export default router;