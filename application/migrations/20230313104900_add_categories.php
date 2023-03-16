<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Migration_Add_categories extends CI_Migration {

        public function up()
        {
                $this->dbforge->add_field(array(
                        'categories_id' => array(
                                'type' => 'INT',
                                'unsigned' => TRUE,
                                'auto_increment' => TRUE
                        ),
                        'categories_nom' => array(
                                'type' => 'VARCHAR',
                                'constraint' => '200',
                        ),
                        'categories_informations' => array(
                                'type' => 'json',
                        ),
                ));
                $this->dbforge->add_key('categories_id', TRUE);
                $this->dbforge->create_table('categories');
        }

        public function down()
        {
                $this->dbforge->drop_table('categories');
        }
}