<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Migration_Add_etablissements extends CI_Migration {

        public function up()
        {
                $this->dbforge->add_field(array(
                        'etablissements_id' => array(
                                'type' => 'INT',
                                'unsigned' => TRUE,
                                'auto_increment' => TRUE
                        ),
                        'etablissements_nom' => array(
                                'type' => 'VARCHAR',
                                'constraint' => '200',
                        ),
                        'etablissements_presentation' => array(
                                'type' => 'VARCHAR',
                                'constraint' => '255',
                        ),
                        'etablissements_adresse' => array(
                                'type' => 'VARCHAR',
                                'constraint' => '255',
                        ),
                        'etablissements_motcle' => array(
                                'type' => 'VARCHAR',
                                'constraint' => '255',
                        ),
                        'etablissements_longitude' => array(
                                'type' => 'VARCHAR',
                                'constraint' => '255',
                        ),
                        'etablissements_latitude' => array(
                                'type' => 'VARCHAR',
                                'constraint' => '255',
                        ),
                        'etablissements_codepostal' => array(
                                'type' => 'VARCHAR',
                                'constraint' => '255',
                        ),
                        'etablissements_departement' => array(
                                'type' => 'VARCHAR',
                                'constraint' => '255',
                        ),
                        'etablissements_region' => array(
                                'type' => 'VARCHAR',
                                'constraint' => '255',
                        ),
                        'etablissements_pays' => array(
                                'type' => 'VARCHAR',
                                'constraint' => '255',
                        ),
                        'etablissements_telephone' => array(
                                'type' => 'VARCHAR',
                                'constraint' => '255',
                        ),
                        'etablissements_email' => array(
                                'type' => 'VARCHAR',
                                'constraint' => '255',
                        ),
                        'etablissements_website' => array(
                                'type' => 'VARCHAR',
                                'constraint' => '255',
                        ),
                        'etablissements_socialsnetworks' => array(
                                'type' => 'VARCHAR',
                                'constraint' => '255',
                        ),
                        'etablissements_photo' => array(
                                'type' => 'TEXT',
                        ),
                        'etablissements_informations' => array(
                                'type' => 'JSON',
                        ),
                        'users_id' => array(
                                'type' => 'INT',
                                'null' => false ,
                        ),
                        'categories_id' => array(
                                'type' => 'INT',
                                'null' => false ,
                        ),
                        'etablissements_createdAt' => array(
                                'type' => 'date',
                        ),
                ));
                $this->dbforge->add_key('etablissements_id', TRUE);
                $this->dbforge->create_table('etablissements');
        }

        public function down()
        {
                $this->dbforge->drop_table('etablissements');
        }
}