<?php
class Print_con extends CI_Model{
         public function __construct(){
                     parent::__construct();
         }
         public function puserList($data){
        $query =   $this->db->select('*')->from('store_user_list')

                  ->group_start()
                        ->where('Date>=',$data['fdate'])
                        ->where('Date<=',$data['tdate'])

                  ->group_end()
        ->get(); 
        return $query->result() ; 
        
             
         }

}