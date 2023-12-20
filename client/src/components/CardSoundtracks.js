

export default function CardSoundtracks ({tracks}){
    
    return (
        <div>
            <div> 
                <div>
                    <h3>{tracks.nome_filmes}</h3>
                    <h2 className="w3-margin w3-card w3-green">{tracks.nome_musicas}</h2>
                    <h4 className=" w3-margin">Artista:{tracks.artista}</h4>
                </div>
            </div>
       
        </div>

    )
}