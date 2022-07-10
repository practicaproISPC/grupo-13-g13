import React from 'react';

import Etiqueta from './etiqueta';
import Titulo from './titulo';
import Boton from './boton';

import '../estilos/el-estilo.css'
// import Contenedor from './contenedor';
import Entrada from './entrada';

// import '../estilos/login.css'
import '../estilos/login-container.css'

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
                    <Boton texto='Acceder'/>
                    {/* </Contenedor> */}
                </form>
            
        </div>

    )
};

export default Login;