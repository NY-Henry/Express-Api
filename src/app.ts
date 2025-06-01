import express, { Application, NextFunction, Request, Response } from "express";
import dotenv from "dotenv";

// Configure environment variables
dotenv.config();

// App configuration
const PORT = process.env.PORT || 3001;
const app: Application = express();

// Middleware
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

// CORS middleware (uncomment if needed)
// app.use((req: Request, res: Response, next: NextFunction) => {
//   res.header('Access-Control-Allow-Origin', '*');
//   res.header('Access-Control-Allow-Methods', 'GET,PUT,POST,DELETE,OPTIONS');
//   res.header('Access-Control-Allow-Headers', 'Content-Type, Authorization, Content-Length, X-Requested-With');
//   next();
// });

// Routes
app.get("/", (req: Request, res: Response) => {
  res.send(`
    <!DOCTYPE html>
    <html lang="en">
      <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Express TypeScript App</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <style>
          body { background: linear-gradient(135deg, #667eea 0%, #764ba2 100%); min-height: 100vh; }
          .card { box-shadow: 0 10px 30px rgba(0,0,0,0.1); border: none; }
          .badge-success { background: linear-gradient(45deg, #56ab2f, #a8e6cf); }
        </style>
      </head>
      <body>
        <div class="container d-flex justify-content-center align-items-center min-vh-100">
          <div class="card" style="max-width: 600px;">
            <div class="card-body text-center p-5">
              <h1 class="card-title mb-3">🚀 Express TypeScript Boilerplate</h1>
              <p class="card-text lead mb-4">Your Express TypeScript application is running successfully!</p>
              <div class="row text-center">
                <div class="col-md-4 mb-3">
                  <h5>⚡ Fast</h5>
                  <p class="small text-muted">Hot reload with Nodemon</p>
                </div>
                <div class="col-md-4 mb-3">
                  <h5>🔧 TypeScript</h5>
                  <p class="small text-muted">Full type safety</p>
                </div>
                <div class="col-md-4 mb-3">
                  <h5>📦 Ready</h5>
                  <p class="small text-muted">Production ready</p>
                </div>
              </div>
              <span class="badge badge-success p-2">Server running on port ${PORT}</span>
            </div>
          </div>
        </div>
      </body>
    </html>
  `);
});

// Health check endpoint
app.get("/health", (req: Request, res: Response) => {
  res.status(200).json({
    status: "OK",
    timestamp: new Date().toISOString(),
    uptime: process.uptime(),
    environment: process.env.NODE_ENV || "development",
  });
});

// API routes placeholder
app.get("/api", (req: Request, res: Response) => {
  res.json({
    message: "API is working!",
    version: "1.0.0",
    endpoints: {
      health: "/health",
      api: "/api",
    },
  });
});

// 404 handler
app.use((req: Request, res: Response) => {
  res.status(404).json({
    error: "Route not found",
    message: `Cannot ${req.method} ${req.originalUrl}`,
  });
});

// Error handling middleware
app.use((err: Error, req: Request, res: Response, next: NextFunction) => {
  console.error("Error:", err.stack);
  res.status(500).json({
    error: "Internal Server Error",
    message:
      process.env.NODE_ENV === "development"
        ? err.message
        : "Something went wrong",
  });
});

// Start server
app.listen(PORT, () => {
  console.log(`🚀 Server is running on port ${PORT}`);
  console.log(`🌐 Local: http://localhost:${PORT}`);
  console.log(`🔧 Environment: ${process.env.NODE_ENV || "development"}`);
});
