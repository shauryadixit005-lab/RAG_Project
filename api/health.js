/**
 * Vercel Serverless Function: Health Check Endpoint
 * GET /api/health
 */
export default function handler(req, res) {
  res.status(200).json({
    status: 'UP',
    service: 'DocuQuery AI - Enterprise RAG Engine',
    institution: 'Arya College of Engineering & I.T., Jaipur',
    department: 'Department of Artificial Intelligence & Data Science (ARYA AI&DS)',
    mentor: 'Er. Ram Babu Buri',
    version: '1.0.0',
    curricula: ['CBSE Class 10/12', 'RTU Kota B.Tech (AI&DS, CS)'],
    timestamp: new Date().toISOString()
  });
}
