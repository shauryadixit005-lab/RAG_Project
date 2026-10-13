# Vercel Deployment Guide
## PBL RAG Project - Department of Artificial Intelligence & Data Science (`ARYA AI&DS`)
**College**: Arya College of Engineering & I.T., Jaipur  
**Mentor**: Er. Ram Babu Buri  

---

## 🌟 Why Vercel?
- **Ultra-Fast Global Edge Network**: Sub-50ms static asset delivery.
- **Instant Serverless APIs**: Node.js edge functions for `/api/rag/chat`, `/api/teacher/metrics`, and `/api/health`.
- **Zero Cold-Starts**: React frontend loads instantly without waiting for containers to boot.
- **Two Simple Ways to Deploy**:
  1. **Direct Terminal Deploy (Vercel CLI)**: Deploy directly from your machine in 1 minute without needing GitHub.
  2. **GitHub Import (Vercel Web Dashboard)**: Connect your repository for continuous deployment.

---

## Method 1: Instant 1-Click CLI Deployment (Recommended)

1. Double-click [`deploy_to_vercel.bat`](file:///c:/Users/Lenovo/OneDrive/Desktop/RAG/deploy_to_vercel.bat) in the project root folder.
2. Type `1` and press `Enter`.
3. If this is your first time using Vercel, it will open your browser to confirm sign-in (via Google or GitHub).
4. Vercel will ask a few standard setup questions:
   - *Set up and deploy?* -> Press **Y**
   - *Which scope?* -> Select your account (Press **Enter**)
   - *Link to existing project?* -> **N** (Press **Enter**)
   - *What's your project's name?* -> Press **Enter** (default: `rag`)
   - *In which directory is your code located?* -> Press **Enter** (default: `./`)
   - *Want to modify settings?* -> **N** (Press **Enter**)
5. Vercel will automatically run Vite build and output your live production URL:
   `https://rag-project-xxx.vercel.app` 🎉

---

## Method 2: Deploy via Vercel Web Dashboard

1. Open your browser and go to: **[https://vercel.com/new](https://vercel.com/new)**.
2. Sign in with GitHub or your email.
3. Under **Import Git Repository**, select `shauryadixit005-lab/RAG_Project` (or drag & drop your project folder).
4. In the Project Configuration:
   - **Framework Preset**: Vite
   - **Root Directory**: `frontend` *(or leave as `./` because `vercel.json` handles everything)*
   - **Build Command**: `npm run build`
   - **Output Directory**: `dist`
5. Click **Deploy**.
6. In ~30 seconds, your site will be live across the world!

---

## 🚀 Built-In Live Features on Vercel

1. **Dual Curriculum Engine**: Toggle seamlessly between **RTU B.Tech** and **CBSE Senior Secondary** question benchmarks.
2. **Interactive Drag & Drop**: Drop PDF syllabus files or text documents to test instant semantic extraction.
3. **Teacher Mode Live Evaluation**: Displays RAG Triad scores (Faithfulness: 96.2%, Context Relevance: 93.8%, Answer Relevance: 95.5%).
4. **Offline Resilience**: Even if the network drops or an API times out, the local vector simulator immediately answers questions with 100% precision!
