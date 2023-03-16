<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Migration_Add_reseauxsociaux extends CI_Migration {

        public function up()
        {
                $this->dbforge->add_field(array(
                        'rs_id' => array(
                                'type' => 'INT',
                                'unsigned' => TRUE,
                                'auto_increment' => TRUE
                        ),
                        'rs_name' => array(
                                'type' => 'VARCHAR',
                                'null' => false,
                                'constraint' => '50'
                        ),
                        'rs_icon' => array(
                                'type' => 'TEXT',
                        ),
                        'rs_lien' => array(
                                'type' => 'TEXT',
                        ),
                ));
                $this->dbforge->add_key('rs_id', TRUE);
                $this->dbforge->create_table('reseauxsociaux');
        }

        public function down()
        {
                $this->dbforge->drop_table('reseauxsociaux');
        }
}