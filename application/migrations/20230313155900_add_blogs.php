<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Migration_Add_blogs extends CI_Migration {

        public function up()
        {
                $this->dbforge->add_field(array(
                        'blogs_id' => array(
                                'type' => 'INT',
                                'unsigned' => TRUE,
                                'auto_increment' => TRUE
                        ),
                        'blogs_presentation' => array(
                                'type' => 'TEXT',
                        ),
                        'blogs_lien' => array(
                                'type' => 'TEXT',
                        ),
                        'blogs_image' => array(
                                'type' => 'TEXT',
                        ),
                        'blogs_createdAt' => array(
                                'type' => 'date',
                        ),
                ));
                $this->dbforge->add_key('blogs_id', TRUE);
                $this->dbforge->create_table('blogs');
        }

        public function down()
        {
                $this->dbforge->drop_table('blogs');
        }
}