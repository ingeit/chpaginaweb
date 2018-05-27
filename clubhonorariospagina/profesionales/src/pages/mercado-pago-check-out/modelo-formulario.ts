import ProfesionalModelo from '../../modelos/profesional';
import ClienteModelo from '../../modelos/cliente';

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
   cliente: ClienteModelo = null;
   importes = {
      cantCuotas: null,
      venta: null,
      cobrar: null,
      cuota: null,
      carga: null,
   };
   tarjeta = {
      nombre: null,
      numero: null,
      nombreImpreso: null,
   };
   //campos extras para MP
   payment_method_id;
   issuer_id;
   sdkResponse = {
      id : null
   };

   constructor(){
      this.profesional = new ProfesionalModelo();
      this.cliente = new ClienteModelo();
   }
}
