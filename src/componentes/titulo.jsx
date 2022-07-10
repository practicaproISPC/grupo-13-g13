import React from 'react';
import '../estilos/titulo.css'

const Titulo = ({texto}) => {
    return (
            <div className='titulo'>
               <h1> {texto} </h1>
            </div>
    )
};

export default Titulo;