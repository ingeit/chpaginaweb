<?php

namespace App\Mail;

use App\FormularioContacto;
use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Contracts\Queue\ShouldQueue;

class FormularioContactoMail extends Mailable
{
    use Queueable, SerializesModels;
    public $formularioContacto; 

    public function __construct(FormularioContacto $f)
    {
        $this->formularioContacto = $f;
    }

    public function build()
    {
        return $this->from('relq@clubhonorarios.com')
                    ->subject('Un usuario consulto algo')
                    ->view('emails.contacto');
    }
}
