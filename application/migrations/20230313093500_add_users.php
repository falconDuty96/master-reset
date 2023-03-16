<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Migration_Add_users extends CI_Migration {

        public function up()
        {
                $this->dbforge->add_field(array(
                        'users_id' => array(
                                'type' => 'INT',
                                'unsigned' => TRUE,
                                'auto_increment' => TRUE
                        ),
                        'users_nom' => array(
                                'type' => 'VARCHAR',
                                'constraint' => '200',
                        ),
                        'users_prenoms' => array(
                                'type' => 'VARCHAR',
                                'constraint' => '200',
                        ),
                        'users_email' => array(
                                'type' => 'VARCHAR',
                                'constraint' => '200',
                        ),
                        'users_telephone' => array(
                                'type' => 'VARCHAR',
                                'constraint' => '200',
                        ),
                        'users_motdepasse' => array(
                                'type' => 'VARCHAR',
                                'constraint' => '200',
                        ),
                        'users_type' => array(
                                'type' => 'VARCHAR',
                                'constraint' => '200',
                        ),
                        'users_photo' => array(
                                'type' => 'TEXT',
                        ),
                        'users_joinedAt' => array(
                                'type' => 'date',
                        ),
                ));
                $this->dbforge->add_key('users_id', TRUE);
                $this->dbforge->create_table('users');
        }

        public function down()
        {
                $this->dbforge->drop_table('users');
        }
}