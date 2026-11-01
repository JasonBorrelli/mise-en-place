import "dotenv/config";
import express from "express";
import pool from "./config/db.js";

const app = express();
const port = process.env.PORT || 3000;

app.use(express.static("public"));
app.use(express.json());

app.get("/", (req, res) => {
  res.send("Server di Mise en place");
});

// Rotta temporanea per verificare la connessione al DB (da togliere dopo)
app.get("/db-test", async (req, res) => {
  try {
    const [rows] = await pool.query("SELECT COUNT(*) AS stores FROM stores");
    res.json(rows[0]);
  } catch (error) {
    console.error(error);
    res.status(500).json({ error: "Connessione al database fallita" });
  }
});

app.listen(port, () => {
  console.log(`Server in ascolto su http://localhost:${port}`);
});