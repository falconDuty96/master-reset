<?php
defined('BASEPATH') or exit('No direct script access allowed');
class Mails extends CI_Controller
{
    public function index()
    {
        $this->load->library('email');

        $es['protocol'] = 'sendmail';
        $es['mailpath'] = 'F:\sendmail\sendmail';
        $es['charset'] = 'iso-8859-1';
        $es['wordwrap'] = TRUE;

        $this->email->initialize($es);

        $this->email->from('falcon.duty@gmail.com', 'FalconDuty96');
        $this->email->to('rakoto.jenny1996@.com');
        // $this->email->cc('another@another-example.com');
        // $this->email->bcc('them@their-example.com');

        $this->email->subject('Email Test');
        $this->email->message('Testing the email class.');

        $this->email->send();
    }
}
