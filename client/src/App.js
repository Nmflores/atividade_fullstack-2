import { BrowserRouter, Routes, Route } from "react-router-dom";
import Layout from './components/Layout';
import ListaFilmes from './pages/ListaFilmes';
import Home from './pages/Home';
import FormFilmes from './pages/FormFilmes';
import ListaSoundtracks from './pages/ListaSoundtracks';

function App() {
  return (
    <BrowserRouter>
      <Routes>
        <Route path="/" element={<Layout/>}>
          <Route index element={<Home />} />
          <Route path="lista" element={<ListaFilmes/>} />
          <Route path ="formulario"   element ={<FormFilmes/>} />
          <Route path = "listaSoundtrack" element={<ListaSoundtracks />}/>
        </Route>
      </Routes>
  </BrowserRouter>
);
  
}

export default App;
