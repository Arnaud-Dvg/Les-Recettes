import type { RequestHandler } from "express";

import recetteRepository from "./recetteRepository"

// Le B du Bread - Browse (Read All), lire toutes les recettes
const browse: RequestHandler = async (req, res, next) => {
    try {
        const recettes = await recetteRepository.readAll();

        res.json(recettes);
    } catch (err) {
        next(err);
    }
};

// Le R du Bread - Read - Pour lire une recette via son id, et ses ingrédients
const read: RequestHandler = async (req, res, next) => {
    try {
        const recetteId = Number(req.params.id);
        const recette = await recetteRepository.read(recetteId);

        if (!recette) {
            res.sendStatus(404);
        } else {
            res.json(recette);
        }
    } catch (err) {
next(err);
    }
};

export default {
    browse,
    read,
};