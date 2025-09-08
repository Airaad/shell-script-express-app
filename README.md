# Express + TypeScript Project Setup Script

This repository contains a **shell script** that automates the creation of a **basic Express.js application using TypeScript**. It is designed to help developers quickly create a TypeScript-based Express project with minimal manual setup.

---

## Features

- **Automated Project Setup:**  
  Generates a fully working Express project with TypeScript support in a single step.

- **TypeScript Configuration:**  
  - Updates `tsconfig.json` automatically.  
  - Sets `"rootDir": "./src"` for source files.  
  - Sets `"outDir": "./dist"` for compiled JavaScript.

- **Project Structure:**  
  - `src/` folder for TypeScript source files.  
  - `dist/` folder for compiled JavaScript output.  
  - `index.ts` with a basic Express server that listens on port 3000.

- **npm Scripts Setup:**  
  The script updates `package.json` to include the following commands:  
  - `"dev"` → runs the project in development mode using `ts-node`.  
  - `"build"` → compiles TypeScript files into JavaScript in the `dist` folder.  
  - `"start"` → runs the compiled JavaScript project using Node.js.

- **.gitignore File:**  
  Automatically creates a `.gitignore` configured for Node.js projects to ignore `node_modules`, `dist`, and other common files.

- **Ease of Use:**  
  Users only need to run the `.sh` script — no manual configuration required.

---

## Prerequisites

- Node.js installed  
- npm or yarn installed  
- Git Bash (or any Unix-like shell if on Windows)  
- Bash execution permissions for the script

---

## How to Use

1. **Clone the repository:**
```bash
git clone https://github.com/Airaad/shell-script-express-app.git
cd shell-script-express-app
```

2. **Give execute permission to the script:**
```bash
chmod +x express-node.sh
```

3. **Run the script:**
```bash
./express-node.sh
or 
sh express-node.sh
```

3. **Use npm scripts:**
```bash
# Run in development mode
npm run dev

# Compile TypeScript to JavaScript
npm run build

# Run the compiled project
npm run start

```

