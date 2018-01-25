export interface Tarjeta {
    nombre: string; // required field with minimum 5 characters
    cuotaComision: CuotaComision[]; // user can have one or more addresses
}

export interface CuotaComision {
    numCuota: string;  // required field
    comision: string;
}