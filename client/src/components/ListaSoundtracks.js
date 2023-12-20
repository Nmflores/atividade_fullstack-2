import React,{useState,useEffect} from 'react';
import CardSoundtracks from './CardSoundtracks'

export default function ListaSoundtracks(){
    const [soundtracks,setSoundtracks] = useState([{}]);

    useEffect(() =>{
        fetch('/api/soundtracks').then(
            response => response.json()
        ).then(
            data => {
                setSoundtracks(data)
            }
        )
    

    },[])

   

    return(
      
       soundtracks.map((tracks) =>
            <CardSoundtracks key = {tracks.id}  tracks = {tracks} ></CardSoundtracks>,
        
    )
    
)
}