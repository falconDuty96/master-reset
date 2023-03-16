<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Migration_Add_ccm extends CI_Migration {

        public function up()
        {
                $this->dbforge->add_field(array(
                        'ccm_id' => array(
                                'type' => 'INT',
                                'unsigned' => TRUE,
                                'auto_increment' => TRUE
                        ),
                        'ccm_entete' => array(
                                'type' => 'VARCHAR',
                                'constraint' => '200',
                        ),
                        'ccm_texte' => array(
                                'type' => 'VARCHAR',
                                'constraint' => '200',
                        ),
                        'ccm_image' => array(
                                'type' => 'TEXT',
                        ),
                        'ccm_createdAt' => array(
                                'type' => 'date',
                        ),
                ));
                $this->dbforge->add_key('ccm_id', TRUE);
                $this->dbforge->create_table('ccm');
        }

        public function down()
        {
                $this->dbforge->drop_table('ccm');
        }
}