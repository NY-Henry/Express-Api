// TypeScript type definitions
// Define your custom types here

export interface ApiResponse<T = any> {
  success: boolean;
  message?: string;
  data?: T;
  error?: {
    message: string;
    code: string;
    timestamp: string;
  };
  timestamp: string;
}

export interface User {
  id: string;
  name: string;
  email: string;
  createdAt: string;
  updatedAt: string;
}

export interface CreateUserRequest {
  name: string;
  email: string;
}

export interface UpdateUserRequest {
  name?: string;
  email?: string;
}

export interface HealthCheckResponse {
  status: string;
  timestamp: string;
  uptime: number;
  environment: string;
}

export interface ErrorResponse {
  error: string;
  message: string;
  timestamp?: string;
}

// Extend Express Request interface for custom properties
declare global {
  namespace Express {
    interface Request {
      user?: User;
      requestId?: string;
    }
  }
}
