import React from 'react';

const Etiqueta = ({texto}) => {
    return (
            <label className='etiqueta'>
                {texto}
            </label>
    )
};

export default Etiqueta;