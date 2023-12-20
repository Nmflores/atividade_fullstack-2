import { Outlet, Link } from "react-router-dom";

export default function Layout(){

    return(
        <>
            <nav>
                <ul className="w3-ul w3-padding-32 w3-border w3-teal w3-margin-bottom">
                    <li key = {1}>
                    <Link to="/">Inicio</Link>
                    </li>
                    <li key = {2}>
                    <Link to="/lista">Lista de filmes</Link>
                    </li>
                    <li key = {3}>
                    <Link to="/formulario">Formulario</Link>
                    </li>
                </ul>
            </nav>
    
            <Outlet />
      </>
    )

}