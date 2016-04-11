<?php

class Incomes_model extends CI_Model 
{
	
	/*
	*	Retrieve all incomes
	*	@param string $table
	* 	@param string $where
	*
	*/
	public function get_all_incomes($table, $where, $per_page, $page, $order, $order_method)
	{
		//retrieve all incomes
		$this->db->from($table);
		$this->db->select('*');
		$this->db->where($where);
		$this->db->order_by($order, $order_method);
		$query = $this->db->get('', $per_page, $page);
		
		return $query;
	}
	
	/*
	*	Add a new income to the database
	*
	*/
	public function add_income()
	{
		$data = array(
				'income_type_id'=>$this->input->post('income_type_id'),
				'income_date'=>$this->input->post('income_date'),
				'income_amount'=>$this->input->post('income_amount'),
				'income_payment_date'=>$this->input->post('income_payment_date'),
				'income_payment_amount'=>$this->input->post('income_payment_amount'),
				'created'=>date('Y-m-d H:i:s'),
				'created_by'=>$this->session->userdata('personnel_id'),
				'modified_by'=>$this->session->userdata('personnel_id')
			);
			
		if($this->db->insert('income', $data))
		{
			return TRUE;
		}
		else{
			return FALSE;
		}
	}
	
	/*
	*	Edit an existing income
	*	@param int $income_id
	*
	*/
	public function edit_income($income_id)
	{
		$data = array(
				'income_type_id'=>$this->input->post('income_type_id'),
				'income_date'=>$this->input->post('income_date'),
				'income_amount'=>$this->input->post('income_amount'),
				'income_payment_date'=>$this->input->post('income_payment_date'),
				'income_payment_amount'=>$this->input->post('income_payment_amount'),
				'modified_by'=>$this->session->userdata('personnel_id')
			);
		
		$this->db->where('income_id', $income_id);
		
		if($this->db->update('income', $data))
		{
			return TRUE;
		}
		else{
			return FALSE;
		}
	}
	
	/*
	*	Retrieve a single income
	*	@param int $income_id
	*
	*/
	public function get_income($income_id)
	{
		//retrieve all incomes
		$this->db->from('income');
		$this->db->select('*');
		$this->db->where('income_id = '.$income_id);
		$query = $this->db->get();
		
		return $query;
	}
	
	/*
	*	Delete an existing income
	*	@param int $income_id
	*
	*/
	public function delete_income($income_id)
	{
		if($this->db->delete('income', array('income_id' => $income_id)))
		{
			return TRUE;
		}
		else{
			return FALSE;
		}
	}
	
	/*
	*	Activate a deactivated income
	*	@param int $income_id
	*
	*/
	public function activate_income($income_id)
	{
		$data = array(
				'income_status' => 1
			);
		$this->db->where('income_id', $income_id);
		
		if($this->db->update('income', $data))
		{
			return TRUE;
		}
		else{
			return FALSE;
		}
	}
	
	/*
	*	Deactivate an activated income
	*	@param int $income_id
	*
	*/
	public function deactivate_income($income_id)
	{
		$data = array(
				'income_status' => 0
			);
		$this->db->where('income_id', $income_id);
		
		if($this->db->update('income', $data))
		{
			return TRUE;
		}
		else{
			return FALSE;
		}
	}
	
	/*
	*	Retrieve a single income
	*	@param int $income_id
	*
	*/
	public function get_income_types()
	{
		//retrieve all incomes
		$this->db->from('income_type');
		$this->db->order_by('income_type_name');
		$query = $this->db->get();
		
		return $query;
	}

	public function get_total_investments()
	{
		//select the user by email from the database
		$this->db->select('SUM(income_amount) AS total_amount');
		//$this->db->where('MONTH(payment_date) = \''.$month.'\' AND YEAR(payment_date) = \''.$year.'\'');
		$this->db->from('income');
		$query = $this->db->get();
		
		$result = $query->row();
		
		return $result->total_amount;
	}

	public function get_total_payments()
	{
		//select the user by email from the database
		$this->db->select('SUM(income_payment_amount) AS total_amount');
		//$this->db->where('MONTH(payment_date) = \''.$month.'\' AND YEAR(payment_date) = \''.$year.'\'');
		$this->db->from('income');
		$query = $this->db->get();
		
		$result = $query->row();
		
		return $result->total_amount;
	}
}
?>