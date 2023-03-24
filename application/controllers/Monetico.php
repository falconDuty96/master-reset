<?php


    class Monetico extends CI_Controller {

        public function __construct()
        {
            parent::__construct();
            $this->load->library('checkout');
            $this->load->model("AbonnementsModel", "m_abonnement");
        }
        public function handle()
        {
            $data = $_POST;
            if(strtolower($data["code-retour"]) === "annulation" )
            {
                exit();
            }
            if(!array_key_exists("MAC", $data))
            {
                exit();
            }

            $hmac = new MoneticoDemoWebKit\Monetico\HmacComputer();
            $receivedSeal = $data['MAC'];
            unset($data['MAC']); // removes the MAC field itself
            $isSealValidated = $hmac->validateSeal($data, CLE_MAC, $receivedSeal);

            if(!$isSealValidated)
            {
                exit();
            }

            /**
             * TO DO
             * Traitement à faire lorsque le paiement est effectué avec succès
             * 
             */
            $reference = $data["reference"]; // Reference de la transaction

            $abonnement = $this->m_abonnement->findOneBy(["abonnements_reference" => $reference]);
            $debut = date("Y-m-d");
            $fin = date("Y-m-d", strtotime("+{$abonnement->abonnements_duree} year"));

            $this->m_abonnement->update(["abonnements_datedebut","abonnements_datefin","abonnements_etat"], [
                $debut, $fin, "paye", $abonnement->abonnements_id
            ]);

        }

    }
