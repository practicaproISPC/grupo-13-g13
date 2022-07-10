import React from 'react';
import '../estilos/boton.css';

const Boton = ({texto}) => {
    return (
            <button className='boton'>
                {texto}
            </button>

    )
};

export default Boton;