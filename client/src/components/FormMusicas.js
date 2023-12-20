import { useState } from "react";

export default function FormMusicas() {
    const [nome,setNome] = useState("");
    const [artista,setArtista] = useState("");

    const cadastrarMusicas = event => {
        event.preventDefault();

        fetch('/api/musicas', {
                method: 'POST',
                headers: {
                    'Accept': 'application/json, text/plain, */*',
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify({
                    nome:nome,
                    artista:artista
                })
        }).then(res => res.json())
        .then(setNome(""),setArtista(""));
       

    }

    return(
        <form onSubmit={cadastrarMusicas}>
            <label htmlFor="nome" className=" w3-margin">Nome:</label>
            <input type="text" className="w3-input w3-border w3-margin-bottom" name="nome"
            value={nome}
            onChange={(ev) => setNome(ev.target.value)}>                
            </input>
            <br />
            <label htmlFor="artista" className=" w3-margin">Artista:</label>
            <input type="text"className="w3-input w3-border w3-margin-bottom" name="artista"
            value={artista}
            onChange={(ev) => setArtista(ev.target.value)}>                
            </input>
            <br />
            <input type="submit"></input>
        </form>
    )
}