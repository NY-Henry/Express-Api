// Example utility functions
// Add your helper functions here

/**
 * Generate a random ID
 */
export const generateId = (): string => {
  return Math.random().toString(36).substr(2, 9);
};

/**
 * Format date to ISO string
 */
export const formatDate = (date: Date = new Date()): string => {
  return date.toISOString();
};

/**
 * Validate email format
 */
export const isValidEmail = (email: string): boolean => {
  const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
  return emailRegex.test(email);
};

/**
 * Sanitize string input
 */
export const sanitizeString = (input: string): string => {
  return input.trim().replace(/[<>]/g, "");
};

/**
 * Create success response format
 */
export const createSuccessResponse = (data: any, message = "Success") => {
  return {
    success: true,
    message,
    data,
    timestamp: formatDate(),
  };
};

/**
 * Create error response format
 */
export const createErrorResponse = (
  message: string,
  code = "INTERNAL_ERROR"
) => {
  return {
    success: false,
    error: {
      message,
      code,
      timestamp: formatDate(),
    },
  };
};
