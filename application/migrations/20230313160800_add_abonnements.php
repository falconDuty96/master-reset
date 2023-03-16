<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Migration_Add_abonnements extends CI_Migration {

        public function up()
        {
                $this->dbforge->add_field(array(
                        'abonnements_id' => array(
                                'type' => 'INT',
                                'unsigned' => TRUE,
                                'auto_increment' => TRUE
                        ),
                        'abonnements_duree' => array(
                                'type' => 'VARCHAR',
                                'null' => false,
                                'constraint' => '50'
                        ),
                        'etablissements_id' => array(
                                'type' => 'INT',
                                'null' => false,
                        ),
                        'abonnements_datedebut' => array(
                                'type' => 'date',
                        ),
                        'abonnements_datefin' => array(
                                'type' => 'date',
                        ),
                        'abonnements_createdAt' => array(
                                'type' => 'date',
                        ),
                        'abonnements_etat' => array(
                                'type' => 'VARCHAR',
                                'constraint' => '10',
                        ),
                        'abonnements_montant' => array(
                                'type' => 'VARCHAR',
                                'constraint' => '100'
                        ),
                ));
                $this->dbforge->add_key('abonnements_id', TRUE);
                $this->dbforge->create_table('abonnements');
        }

        public function down()
        {
                $this->dbforge->drop_table('abonnements');
        }
}