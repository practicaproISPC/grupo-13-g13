import React from 'react';
import Axios from 'axios'; //falta instalar axios?

import Etiqueta from './etiqueta';
import Titulo from './titulo';
import Boton from './boton';

import '../estilos/el-estilo.css'
// import Contenedor from './contenedor';
import Entrada from './entrada';

// import '../estilos/login.css'
import '../estilos/login-container.css'

const manejadorClick = async (e) =>{
    e.preventDefault();
    Axios.post('http.../user', {
        usuario: 'Fred',//debe ser dinámico... estados??
        password: 'Flintstone'//debe ser dinámico... estados??
      })
      .then(response=> console.log(response)//devuelve un token??un booleano??
      )
      .catch(error=> console.log(error)
      );
}
// const manejadorClick = (e)=>{
//     console.log('click');
// }

const Login = ({texto}) => {
    return (
        <div className='login-container'>

                <form>
                    <Titulo texto={texto} />
                    {/* <Contenedor> */}
                    <Etiqueta texto='Usuario: '/>
                    <Entrada placeh='Nombre de Usuario' tipo="text"/>
                    <Etiqueta texto='Contraseña: '/>
                    <Entrada placeh='Contraseña' tipo="password"/>
                    <Boton texto='Acceder' onClick={manejadorClick}/>
                    {/* </Contenedor> */}
                </form>
            
        </div>

    )
};

export default Login;