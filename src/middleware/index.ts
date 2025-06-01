// Example middleware
// Copy this template to create custom middleware

import { Request, Response, NextFunction } from "express";

// Example logging middleware
export const requestLogger = (
  req: Request,
  res: Response,
  next: NextFunction
) => {
  const timestamp = new Date().toISOString();
  console.log(`[${timestamp}] ${req.method} ${req.path}`);
  next();
};

// Example auth middleware (placeholder)
export const authMiddleware = (
  req: Request,
  res: Response,
  next: NextFunction
) => {
  // Add your authentication logic here
  const token = req.headers.authorization;

  if (!token) {
    return res.status(401).json({ error: "Authorization token required" });
  }

  // Validate token logic would go here
  // For now, just continue
  next();
};

// Example validation middleware
export const validateBody = (requiredFields: string[]) => {
  return (req: Request, res: Response, next: NextFunction) => {
    const missingFields = requiredFields.filter((field) => !req.body[field]);

    if (missingFields.length > 0) {
      return res.status(400).json({
        error: "Missing required fields",
        fields: missingFields,
      });
    }

    next();
  };
};
