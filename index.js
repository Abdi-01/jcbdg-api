const express = require('express')
const app = express()
const cors = require('cors')
const PORT = process.env.PORT || 2000

app.use(cors())

app.get('/', (req, res) => {
    res.status(200).send("<h2>JC-Bandung 0506 API Jenkins</h2>")
})

app.listen(PORT, () => console.log('JCBDG API Running ✅', PORT))