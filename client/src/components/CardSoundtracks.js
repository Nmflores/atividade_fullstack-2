

export default function CardSoundtracks ({tracks}){
    
    return (
        <div>
            <div> 
                <div>
                    <h2 className="w3-margin">{tracks.nome_musicas}</h2>
                    <h5 className=" w3-margin">Artista:{tracks.artista}</h5>
                </div>
            </div>
       
        </div>

    )
}