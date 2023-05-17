const conexion = require('../database/db');


//GUARDAR DATOS EN LA TABLA
exports.save = (req, res)=>{
    const user = req.body.user;
    const rol = req.body.rol;
    const apellido = req.body.apellido;
    const correo = req.body.correo;
    const direccion = req.body.direccion;
    const rut = req.body.rut;
    const dv_verificador = req.body.dv_verificador;
    const fono = req.body.fono;

    conexion.query('INSERT INTO usuario SET ?',{nombre_usuario:user, rol:rol, apellido_usuario:apellido, 
        correo_usuario:correo, direccion_usuario:direccion, rut_usuario:rut, dv_usuario:dv_verificador,
        telefono_usuario:fono}, (error, results)=>{
            
        if(error){
            console.log(error);
        }else{
            res.redirect('/');
        }
    })
};

//ACTUALIZAR DATOS EN LA TABLA
exports.update = (req, res)=>{
    const id = req.body.id;
    const user = req.body.user;
    const rol = req.body.rol;
    const apellido = req.body.apellido;
    const correo = req.body.correo;
    const direccion = req.body.direccion;
    const rut = req.body.rut;
    const dv_verificador = req.body.dv_verificador;
    const fono = req.body.fono;
    
    conexion.query('UPDATE usuario SET ? WHERE id_usuario = ?', [{nombre_usuario:user, rol:rol, apellido_usuario:apellido, 
        correo_usuario:correo, direccion_usuario:direccion, rut_usuario:rut, dv_usuario:dv_verificador,
        telefono_usuario:fono},id], (error, results)=>{
            
            if(error){
                console.log(error);                         
            }else{
                res.redirect('/');
            }
        })
    
};