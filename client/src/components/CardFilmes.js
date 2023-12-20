import { Outlet, Link } from "react-router-dom";
import '../w3.css'

export default function CardFilmes ({filme}){
    
    return (
        <div className="w3-card">
            <div > 
                <div className="w3-container w3-margin w3-padding">
                    <Link to="/listaSoundtrack">{filme.nome_filmes}</Link>
                    <h5>Diretor:{filme.diretor}</h5>
                </div>
            </div>
            <Outlet />
        </div>

    )
}