// Example route file
// Copy this template to create new routes

import { Router, Request, Response } from "express";

const router = Router();

// GET /api/example
router.get("/example", (req: Request, res: Response) => {
  res.json({
    message: "This is an example route",
    timestamp: new Date().toISOString(),
  });
});

// POST /api/example
router.post("/example", (req: Request, res: Response) => {
  res.json({
    message: "Example POST route",
    data: req.body,
  });
});

export default router;
