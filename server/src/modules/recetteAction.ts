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

const read: RequestHandler = async (req, res, next) => {
    try {
        const recetteId = Number(req.params.id);
        const recette = await recetteRepository.read(recetteId);

        if (recette == null) {
            res.sendStatus(404);
        } else {
            res.json(recette);
        }
    } catch (err) {
next(err);
    }
 };