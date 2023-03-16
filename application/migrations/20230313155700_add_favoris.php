<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Migration_Add_favoris extends CI_Migration {

        public function up()
        {
                $this->dbforge->add_field(array(
                        'favoris_id' => array(
                                'type' => 'INT',
                                'unsigned' => TRUE,
                                'auto_increment' => TRUE
                        ),
                        'etablissements_id' => array(
                                'type' => 'INT',
                                'null' => false,
                        ),
                        'users_id' => array(
                                'type' => 'INT',
                                'null' => false,
                        ),
                        'favoris_createdAt' => array(
                                'type' => 'date',
                        ),
                ));
                $this->dbforge->add_key('favoris_id', TRUE);
                $this->dbforge->create_table('favoris');
        }

        public function down()
        {
                $this->dbforge->drop_table('favoris');
        }
}