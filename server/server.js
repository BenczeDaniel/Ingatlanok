import express, { response } from 'express'
import cors from 'cors'
import mysql from 'mysql'
import {configDb} from './configDb.js'

const db=mysql.createConnection(configDb);
const app=express();

app.use(express.json())
app.use(cors())

//1.az ingatlanokat megjelenítő API - get kérés

app.get('/',(request,response) => {
    db.query("select realestates.id,realestates.createAt,realestates.imageUrl,categories.name from realestates, categories WHERE realestates.categoryId=categories.id", 
    (err,results) => {
        if(err)
            console.log(err)
        else
            response.send(results)
    })
})

//2.a kiválasztott ingatlan eladójának adatait megjelenítő API - get kérés

app.get('/:id',(request,response) => {
    const {id} = request.params
    db.query("SELECT realestates.imageUrl,realestates.area,realestates.rooms,sellers.name,sellers.phone FROM realestates,sellers WHERE realestates.sellerId=sellers.id and realestates.id=?", 
   [id], (err,results) => {
        if(err)
            console.log(err)
        else
            response.send(results)
    })
})

app.listen(5000,() => console.log('server listening on port 5000...'))