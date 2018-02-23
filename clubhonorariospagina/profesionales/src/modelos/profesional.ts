export default class ProfesionalModelo {
   id: number;
   dni: number;
   nombre: string;
   apellido: string;
   profesion: string;
   especialidad: string;
   mail: string;
   telefono: string;

   constructor(id, dni, nombre, apellido, profesion, especialidad, mail, telefono) {
      this.id = id;
      this.dni = dni;
      this.nombre = nombre;
      this.apellido = apellido;
      this.profesion = profesion;
      this.especialidad = especialidad;
      this.mail = mail;
      this.telefono = telefono;
   }
}
