# 🚀 Express TypeScript Boilerplate

> A modern, production-ready Express.js and TypeScript starter template with hot reloading, ES modules, and zero configuration setup.

[![Node.js](https://img.shields.io/badge/Node.js-18%2B-green.svg)](https://nodejs.org/)
[![TypeScript](https://img.shields.io/badge/TypeScript-5.0%2B-blue.svg)](https://www.typescriptlang.org/)
[![Express](https://img.shields.io/badge/Express-5.0%2B-lightgrey.svg)](https://expressjs.com/)
[![License](https://img.shields.io/badge/License-ISC-yellow.svg)](LICENSE)

Get your Express TypeScript API up and running in **under 30 seconds**! ⚡

## 🎯 Why This Template?

- ⚡ **Zero Configuration** - Works out of the box, no complex setup
- 🔧 **Full TypeScript** - Complete type safety with modern ES features
- 🔥 **Hot Reload** - Instant restart on code changes with Nodemon
- 🌍 **Environment Ready** - Pre-configured for all environments
- 📦 **ES Modules** - Modern JavaScript module system
- 🎨 **Beautiful Welcome Page** - Professional Bootstrap UI included
- 🚀 **Production Ready** - Build scripts and deployment ready
- 📊 **Health Monitoring** - Built-in health check endpoints
- 🧩 **Extensible** - Clean architecture for easy feature addition

## ⚡ Quick Start (30 seconds)

### Option 1: Use This Template (Recommended for GitHub)

1. **Click "Use this template" button** ☝️ or [click here](../../generate)
2. **Clone your new repository:**
   ```bash
   git clone https://github.com/yourusername/your-new-repo.git
   cd your-new-repo
   ```
3. **Install and run:**
   ```bash
   npm install
   npm run dev
   ```
4. **Open your browser:** http://localhost:4000 🎉

### Option 2: Create Multiple Projects with Setup Script

**Perfect for creating multiple APIs from this template:**

```bash
# Clone this template once
git clone https://github.com/yourusername/express-typescript-boilerplate.git
cd express-typescript-boilerplate

# Create new projects instantly
bash setup-new-project.sh my-awesome-api
cd my-awesome-api
npm run dev
```

### Option 3: Global Installation (Power Users)

**Install once, use everywhere:**

```bash
# Install globally
bash install-global.sh          # Linux/Mac/WSL
# OR
install-global.bat              # Windows

# Create projects from anywhere
create-express-ts my-new-api
cd my-new-api
npm run dev
```

## 📸 What You Get

After running `npm run dev`, visit http://localhost:4000 to see:

![Welcome Page](https://via.placeholder.com/600x400/667eea/ffffff?text=🚀+Express+TypeScript+Boilerplate+Running!)

**Built-in API endpoints:**

- `GET /` - Beautiful welcome page with project info
- `GET /health` - Health check endpoint for monitoring
- `GET /api` - API status and available endpoints

## 🌟 Why Choose This Template?

**Compared to other Express TypeScript templates:**

| Feature                        | This Template | Others |
| ------------------------------ | :-----------: | :----: |
| 🚀 Zero config setup           |      ✅       |   ❌   |
| 🔥 Hot reload ready            |      ✅       |   ⚠️   |
| 📦 ES Modules support          |      ✅       |   ❌   |
| 🎨 Beautiful welcome page      |      ✅       |   ❌   |
| 📊 Health check endpoints      |      ✅       |   ❌   |
| 🛠️ Setup automation scripts    |      ✅       |   ❌   |
| 🌍 Environment ready           |      ✅       |   ⚠️   |
| 📋 Production deployment guide |      ✅       |   ❌   |

## 📦 What's Included

```
📂 your-new-project/
├── 📂 src/
│   ├── 📄 app.ts              # Main application entry point
│   ├── 📂 routes/             # API route handlers
│   │   └── 📄 example.ts      # Example route template
│   ├── 📂 middleware/         # Custom middleware
│   │   └── 📄 index.ts        # Auth, logging, validation examples
│   ├── 📂 utils/              # Utility functions
│   │   └── 📄 index.ts        # Helper functions and formatters
│   └── 📂 types/              # TypeScript definitions
│       └── 📄 index.ts        # Custom types and interfaces
├── 📄 .env                    # Environment variables
├── 📄 .gitignore              # Git ignore rules
├── 📄 package.json            # Dependencies and scripts
├── 📄 tsconfig.json           # TypeScript configuration
├── 📄 nodemon.json            # Hot reload configuration
└── 📄 README.md               # Project documentation
```

## 🛠️ Available Commands

| Command         | Description                          |
| --------------- | ------------------------------------ |
| `npm run dev`   | 🔥 Start development with hot reload |
| `npm run build` | 📦 Build for production              |
| `npm start`     | 🚀 Start production server           |
| `npm test`      | 🧪 Run tests (ready for your tests!) |

## ⚙️ Configuration

### Environment Variables (.env)

```env
PORT=4000                    # Server port
NODE_ENV=development         # Environment mode
# Add your variables here...
```

### Pre-configured Features

✅ **TypeScript** - ES2022 target, ESNext modules, strict mode  
✅ **Hot Reload** - Watches `src/` for `.ts` and `.json` changes  
✅ **ES Modules** - Modern import/export syntax  
✅ **Environment Variables** - dotenv configuration  
✅ **Error Handling** - Comprehensive error middleware  
✅ **CORS Ready** - Commented middleware for easy enabling  
✅ **Health Checks** - Built-in monitoring endpoints  
✅ **Clean Architecture** - Organized folder structure for scalability

### Nodemon Configuration

Hot reloading is configured to:

- Watch `src` directory
- Monitor `.ts` and `.json` files
- Ignore test files
- Use ts-node/esm loader
- Suppress Node.js warnings

## 🌐 API Endpoints

| Endpoint  | Method | Response | Description               |
| --------- | ------ | -------- | ------------------------- |
| `/`       | GET    | HTML     | 🎨 Beautiful welcome page |
| `/health` | GET    | JSON     | 📊 Health check + uptime  |
| `/api`    | GET    | JSON     | 📋 API info + endpoints   |

**Example health check response:**

```json
{
  "status": "OK",
  "timestamp": "2025-06-01T12:00:00.000Z",
  "uptime": 123.456,
  "environment": "development"
}
```

## 🚀 Production Deployment

### Build for Production

```bash
npm run build
```

### Start Production Server

```bash
npm start
```

### Docker (Optional)

Create `Dockerfile`:

```dockerfile
FROM node:18-alpine
WORKDIR /app
COPY package*.json ./
RUN npm ci --only=production
COPY dist ./dist
EXPOSE 4000
CMD ["npm", "start"]
```

## 🔄 Creating New Projects

This boilerplate includes a setup script that creates new projects with all configurations:

```bash
# Create a new project called "my-api"
bash setup-new-project.sh my-api

# The script will:
# 1. Create new directory
# 2. Initialize npm
# 3. Install dependencies
# 4. Copy all configuration files
# 5. Create project structure
# 6. Generate README and .gitignore
```

## 📝 Adding New Features

### Add Routes

Create `src/routes/users.ts`:

```typescript
import { Router, Request, Response } from "express";
const router = Router();

router.get("/users", (req: Request, res: Response) => {
  res.json({ message: "Users endpoint" });
});

export default router;
```

Import in `app.ts`:

```typescript
import userRoutes from "./routes/users";
app.use("/api", userRoutes);
```

### Add Middleware

Create `src/middleware/auth.ts`:

```typescript
import { Request, Response, NextFunction } from "express";

export const authMiddleware = (
  req: Request,
  res: Response,
  next: NextFunction
) => {
  // Your auth logic here
  next();
};
```

### Add Types

Create `src/types/index.ts`:

```typescript
export interface User {
  id: string;
  name: string;
  email: string;
}
```

## 🤝 Contributing

1. Fork the project
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## ⭐ Show Your Support

Give a ⭐️ if this project helped you! It helps others discover this template.

## 📄 License

This project is licensed under the ISC License - see the [LICENSE](LICENSE) file for details.

## 🆘 Troubleshooting

### Port Already in Use

```bash
# Kill process using port 4000
npx kill-port 4000
```

### TypeScript Errors

```bash
# Clean build
rm -rf dist
npm run build
```

### Module Resolution Issues

Make sure your `package.json` includes:

```json
{
  "type": "module"
}
```

## 📞 Support

If you have questions or need help, please:

- Check the troubleshooting section
- Review the TypeScript and Express.js documentation
- Open an issue on the repository

---

**Happy coding! 🚀**
