import React,{useState,useEffect} from 'react';
import CardFilmes from './CardFilmes';

export default function ListaFilmes(){
    const [filmes,setFilmes] = useState([{}]);

    useEffect(() =>{
        fetch('/api/filmes').then(
            response => response.json()
        ).then(
            data => {
                setFilmes(data)
            }
        )
    

    },[])

   

    return(
      
       filmes.map((filme) =>
            <CardFilmes key = {filme.id}  filme = {filme} ></CardFilmes>,
        
    )
    
)
}