import ProfesionalModelo from './profesional';
import ClienteModelo from './cliente';

export default class ModeloFormulario{
   fechas = {
      transaccion: null,
      pago: null
   };
   usuario = {
      nombre: null,
      apellido: null,
      idUsuario: null,
      idUsuarioMD5: null,
   };
   profesional: ProfesionalModelo = null;
   cliente: ClienteModelo;
   importes = {
      cantCuotas: null,
      venta: null,
      cobrar: null,
      cuota: null,
      carga: null,
   };
   tarjeta = {
      id: null,
      nombre: null,
      nombreCorto: null,
   };
}
