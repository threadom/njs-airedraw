import { Router } from 'express';

const router = Router();

// Ajoutez vos routes ici
router.get('/', (req, res) => {
  res.render('index');
});

export default router;
