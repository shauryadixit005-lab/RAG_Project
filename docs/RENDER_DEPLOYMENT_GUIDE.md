# Render Cloud Deployment Guide
## PBL RAG Project - Department of Artificial Intelligence & Data Science (`ARYA AI&DS`)
**Repository**: `https://github.com/shauryadixit005-lab/RAG_Project`

---

## 🌟 Overview: Deployment Architecture on Render

Your project is configured with a **production-grade Render Blueprint (`render.yaml`)** and multi-stage containerization (`Dockerfile`).

You have two simple ways to deploy:
1. **Method 1 (Recommended - 1 Click Blueprint)**: Deploys the complete unified application (React Frontend + Spring Boot RAG API) on a single URL (e.g. `https://docuquery-rag-app.onrender.com`).
2. **Method 2 (Render Dashboard Web Service)**: Manually select your GitHub repository and deploy as a Docker Web Service.
3. **Method 3 (Static Site Only)**: If you only want the lightning-fast frontend hosted on Render's global CDN (100% free forever).

---

## Method 1: Deploy with Render Blueprint (1-Click Automated)

1. Open your browser and go to [https://dashboard.render.com/blueprints](https://dashboard.render.com/blueprints).
2. Click **New Blueprint Instance**.
3. Select your repository: `shauryadixit005-lab/RAG_Project`.
4. Render will automatically detect [`render.yaml`](file:///c:/Users/Lenovo/OneDrive/Desktop/RAG/render.yaml) and configure:
   - **Service Name**: `docuquery-rag-app`
   - **Runtime**: Docker (Multi-Stage Node 20 + Java 21)
   - **Plan**: Free
   - **Branch**: `main`
5. Click **Apply**.
6. Render will build the React bundle, package the Spring Boot JAR, and launch your live container in ~3 to 5 minutes!

---

## Method 2: Deploy as a Web Service (Manual Dashboard Setup)

If you prefer setting up via the Render Dashboard manually:

1. Go to [https://dashboard.render.com](https://dashboard.render.com) and click **New +** -> **Web Service**.
2. Connect your GitHub repository: `shauryadixit005-lab/RAG_Project`.
3. Fill in the following settings:
   - **Name**: `docuquery-rag`
   - **Region**: Choose closest to you (e.g., `Singapore`, `Frankfurt`, or `Ohio`)
   - **Branch**: `main`
   - **Root Directory**: *(leave blank to use project root)*
   - **Runtime**: **Docker**
   - **Dockerfile Path**: `./Dockerfile`
   - **Instance Type**: **Free**
4. Under **Advanced / Environment Variables**, add:
   - `SPRING_PROFILES_ACTIVE` = `prod`
   - `PORT` = `8080` *(Render sets this automatically)*
   - `NEON_HOST` = `ep-bold-glade-a5p6yv7l.us-east-2.aws.neon.tech`
   - `NEON_DB` = `docuquery_db`
   - `NEON_USER` = `neondb_owner`
5. Click **Create Web Service**.

---

## Method 3: Deploy Frontend as Free Static Site

If you want the React frontend hosted independently on Render Static Sites:
1. Go to [https://dashboard.render.com](https://dashboard.render.com) and click **New +** -> **Static Site**.
2. Connect `shauryadixit005-lab/RAG_Project`.
3. Set:
   - **Name**: `docuquery-web`
   - **Branch**: `main`
   - **Root Directory**: `frontend`
   - **Build Command**: `npm install && npm run build`
   - **Publish Directory**: `dist`
4. Under **Redirects/Rewrites**:
   - Source: `/*`
   - Destination: `/index.html`
   - Action: `Rewrite`
5. Click **Create Static Site**.

---

## ⚡ Live Features Available on Render

- **ARYA AI&DS Curated Header**: Full institutional branding with mentor Er. Ram Babu Buri.
- **CBSE & RTU Board Selection**: Instant toggling between B.Tech Engineering and Senior Secondary curricula.
- **Drag & Drop Ingestion**: Interactive document dropzone with client-side OCR and parsing.
- **Teacher Mode Walkthrough**: Live evaluation rubrics, RAG Triad scores, and hallucination guardrails.
- **Built-in Fallback**: If the backend is waking up from free-tier sleep mode, the frontend automatically utilizes the local high-accuracy semantic vector simulator, ensuring 100% uptime during viva presentations!
