<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Migration_Add_mentions extends CI_Migration {

        public function up()
        {
                $this->dbforge->add_field(array(
                        'mentions_id' => array(
                                'type' => 'INT',
                                'unsigned' => TRUE,
                                'auto_increment' => TRUE
                        ),
                        'mentions_cgu' => array(
                                'type' => 'VARCHAR',
                                'null' => false,
                                'constraint' => '50'
                        ),
                        'mentions_cgv' => array(
                                'type' => 'TEXT',
                        ),
                        'mentions_legale' => array(
                                'type' => 'TEXT',
                        ),
                        'mentions_confidentialites' => array(
                                'type' => 'VARCHAR',
                                'null' => false,
                                'constraint' => '50'
                        ),
                        'mentions_faq' => array(
                                'type' => 'TEXT',
                        ),
                        'mentions_disclosure' => array(
                                'type' => 'TEXT',
                        ),
                ));
                $this->dbforge->add_key('mentions_id', TRUE);
                $this->dbforge->create_table('mentions');
        }

        public function down()
        {
                $this->dbforge->drop_table('mentions');
        }
}