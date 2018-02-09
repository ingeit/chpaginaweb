export default class ClienteModelo {
   dni: number;
   nombre: string;
   apellido: string;
   mail: string;
   celular: string;

   constructor(dni, nombre, apellido, mail, celular) {
      this.dni = dni;
      this.nombre = nombre;
      this.apellido = apellido;
      this.mail = mail;
      this.celular = celular;
   }
}
