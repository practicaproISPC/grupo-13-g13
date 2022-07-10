import React from 'react';
import '../estilos/entrada.css';

const Entrada = ({tipo,placeh}) => {
    return (
        <div className='Entrada'>
            <input 
            type={tipo}
            placeholder={placeh}
            required />
            
        </div>

    )
};

export default Entrada;