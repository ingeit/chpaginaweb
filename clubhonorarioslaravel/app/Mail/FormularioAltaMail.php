<?php

namespace App\Mail;

use App\FormularioAlta;
use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Contracts\Queue\ShouldQueue;

class FormularioAltaMail extends Mailable
{
    use Queueable, SerializesModels;
    public $formularioAlta;

    public function __construct(FormularioAlta $f)
    {
        $this->formularioAlta = $f;
    }

    public function build()
    {
        return $this->from('relq@clubhonorarios.com')
                    ->subject('Nuevo Formulario de Alta')
                    ->view('emails.formularioAlta');
    }
}
