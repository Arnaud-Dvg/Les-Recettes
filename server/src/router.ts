import express from "express";

const router = express.Router();

// endpoint de test
router.get("/api/health", (req, res) => {
  res.json({ ok: true });
});

export default router;