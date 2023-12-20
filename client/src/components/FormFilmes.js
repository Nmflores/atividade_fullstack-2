import { useState } from "react";

export default function FormFilmes() {
    const [nome,setNome] = useState("");
    const [diretor,setDiretor] = useState("");

    const cadastrarFilmes = event => {
        event.preventDefault();

        fetch('/api/filmes', {
                method: 'POST',
                headers: {
                    'Accept': 'application/json, text/plain, */*',
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify({
                    nome:nome,
                    diretor:diretor
                })
        }).then(res => res.json())
        .then(setNome(""),setDiretor(""));
       

    }

    return(
        <form onSubmit={cadastrarFilmes}>
            <label htmlFor="nome" className=" w3-margin">Nome:</label>
            <input type="text" className="w3-input w3-border w3-margin-bottom" name="nome"
            value={nome}
            onChange={(ev) => setNome(ev.target.value)}>                
            </input>
            <br />
            <label htmlFor="diretor" className=" w3-margin">Diretor:</label>
            <input type="text"className="w3-input w3-border w3-margin-bottom" name="diretor"
            value={diretor}
            onChange={(ev) => setDiretor(ev.target.value)}>                
            </input>
            <br />
            <input type="submit"></input>
        </form>
    )
}