import "dotenv/config"
import express from "express"
import pool from "./db.js"

const app = express()
const port = process.env.PORT || 3000

app.use(express.json())

app.get("/api/jatekok", async (req, res) => {
    try {
        const [jatekLista] = await pool.query("SELECT * FROM jatekok WHERE raktaron = TRUE ORDER BY ar ASC")
        res.status(200).json(jatekLista)
    } catch (error) {
        console.error(error)
        res.status(500).json({ error: "Hiba történt a játékok lekérdezésekor." })
    }
})

app.get("/api/jatekok/szures", async (req, res) => {
    const { mufaj } = req.query

    if (!mufaj) {
        return res.status(400).json({ error: "A műfaj megadása kötelező!" })
    }
    try {
        const [jatekLista] = await pool.query("SELECT * FROM jatekok WHERE mufaj = ? ORDER BY ertekeles DESC", [mufaj])
        res.status(200).json(jatekLista)
    } catch (error) {
        console.error(error)
        res.status(500).json({ error: "Hiba történt a játékok szűrésekor." })
    }
})

app.get("/api/jatekok/kereses", async (req, res) => {
    const cim = req.query.cim ?? ""
    const maxAr = req.query.maxAr ?? 999999

    try {
        const [jatekLista] = await pool.query("SELECT * FROM jatekok WHERE cim LIKE ? AND ar <= ?", [`%${cim}%`, maxAr])
        res.status(200).json(jatekLista)
    } catch (error) {
        console.error(error)
        res.status(500).json({ error: "Hiba történt a játékok keresésekor." })
    }
})

app.get("/api/jatekok/:id", async (req, res) => {
    try {
        const [jatekLista] = await pool.query("SELECT * FROM jatekok WHERE id = ?", [req.params.id])

        if (jatekLista.length === 0) {
            return res.status(404).json({ error: "A keresett játék nem található." })
        }

        res.status(200).json(jatekLista[0])
    } catch (error) {
        console.error(error)
        res.status(500).json({ error: "Hiba történt a játék lekérdezésekor." })
    }
})

app.get("/api/statisztika", async (req, res) => {
    try {
        const [statisztika] = await pool.query("SELECT mufaj, COUNT(*) AS darabszam, ROUND(AVG(ar), 0) AS atlag_ar FROM jatekok GROUP BY mufaj ORDER BY darabszam DESC")
        res.status(200).json(statisztika)
    } catch (error) {
        console.error(error)
        res.status(500).json({ error: "Hiba történt a statisztika lekérdezésekor." })
    }
})

app.listen(port, () => {
    console.log(`A szerver a ${port} porton fut.`)
})