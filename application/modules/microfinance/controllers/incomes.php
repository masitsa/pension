<?php   if ( ! defined('BASEPATH')) exit('No direct script access allowed');

require_once "./application/modules/microfinance/controllers/microfinance.php";

class Incomes extends microfinance 
{
	function __construct()
	{
		parent:: __construct();
		$this->load->model('users_model');
		$this->load->model('incomes_model');
	}
    
	/*
	*
	*	Default action is to show all the incomes
	*
	*/
	public function index($order = 'created', $order_method = 'DESC') 
	{
		$where = 'income_type.income_type_id = income.income_type_id';
		$table = 'income, income_type';
		//pagination
		$this->load->library('pagination');
		$segment = 5;
		$config['base_url'] = base_url().'microfinance/incomes/'.$order.'/'.$order_method;
		$config['total_rows'] = $this->users_model->count_items($table, $where);
		$config['uri_segment'] = $segment;
		$config['per_page'] = 20;
		$config['num_links'] = 5;
		
		$config['full_tag_open'] = '<ul class="pagination pull-right">';
		$config['full_tag_close'] = '</ul>';
		
		$config['first_tag_open'] = '<li>';
		$config['first_tag_close'] = '</li>';
		
		$config['last_tag_open'] = '<li>';
		$config['last_tag_close'] = '</li>';
		
		$config['next_tag_open'] = '<li>';
		$config['next_link'] = 'Next';
		$config['next_tag_close'] = '</span>';
		
		$config['prev_tag_open'] = '<li>';
		$config['prev_link'] = 'Prev';
		$config['prev_tag_close'] = '</li>';
		
		$config['cur_tag_open'] = '<li class="active">';
		$config['cur_tag_close'] = '</li>';
		
		$config['num_tag_open'] = '<li>';
		$config['num_tag_close'] = '</li>';
		$this->pagination->initialize($config);
		
		$page = ($this->uri->segment($segment)) ? $this->uri->segment($segment) : 0;
        $data["links"] = $this->pagination->create_links();
		$query = $this->incomes_model->get_all_incomes($table, $where, $config["per_page"], $page, $order, $order_method);
		
		//change of order method 
		if($order_method == 'DESC')
		{
			$order_method = 'ASC';
		}
		
		else
		{
			$order_method = 'DESC';
		}
		
		$v_data['order'] = $order;
		$v_data['total_investments'] = $this->incomes_model->get_total_investments();
		$v_data['total_payments'] = $this->incomes_model->get_total_payments();
		$v_data['order_method'] = $order_method;
		$v_data['incomes'] = $query;
		$v_data['page'] = $page;
		$data['content'] = $this->load->view('incomes/all_incomes', $v_data, true);
		
		$data['title'] = 'All incomes';
		
		$this->load->view('admin/templates/general_page', $data);
	}
    
	/*
	*
	*	Add a new income page
	*
	*/
	public function add_income() 
	{
		//form validation rules
		$this->form_validation->set_rules('income_type_id', 'Income type', 'required|xss_clean');
		$this->form_validation->set_rules('income_date', 'Income date', 'required|xss_clean');
		$this->form_validation->set_rules('income_amount', 'Investment amount', 'required|xss_clean');
		$this->form_validation->set_rules('income_payment_date', 'Payment date', 'required|xss_clean');
		$this->form_validation->set_rules('income_payment_amount', 'Payment amount', 'required|xss_clean');
		
		//if form has been submitted
		if ($this->form_validation->run())
		{
			//check if income has valid login credentials
			if($this->incomes_model->add_income())
			{
				$this->session->set_userdata('success_message', 'Income added successfully');
				redirect('microfinance/incomes');
			}
			
			else
			{
				$this->session->set_userdata('error_message', 'Unable to add income. Please try again');
			}
		}
		
		//open the add new income page
		$data['title'] = 'Add income';
		$v_data['income_types'] = $this->incomes_model->get_income_types();
		$data['content'] = $this->load->view('incomes/add_income', $v_data, TRUE);
		$this->load->view('admin/templates/general_page', $data);
	}
    
	/*
	*
	*	Edit an existing income page
	*	@param int $income_id
	*
	*/
	public function edit_income($income_id, $page) 
	{
		//form validation rules
		$this->form_validation->set_rules('income_type_id', 'Income type', 'required|xss_clean');
		$this->form_validation->set_rules('income_date', 'Income date', 'required|xss_clean');
		$this->form_validation->set_rules('income_amount', 'Investment amount', 'required|xss_clean');
		$this->form_validation->set_rules('income_payment_date', 'Payment date', 'required|xss_clean');
		$this->form_validation->set_rules('income_payment_amount', 'Payment amount', 'required|xss_clean');
		
		//if form has been submitted
		if ($this->form_validation->run())
		{
			//check if income has valid login credentials
			if($this->incomes_model->edit_income($income_id))
			{
				$this->session->set_userdata('success_message', 'Income edited successfully');
				redirect('microfinance/incomes/'.$page);
			}
			
			else
			{
				$data['error'] = 'Unable to add income. Please try again';
			}
		}
		
		//open the add new income page
		$data['title'] = 'Edit income';
		
		//select the income from the database
		$query = $this->incomes_model->get_income($income_id);
		if ($query->num_rows() > 0)
		{
			$v_data['row'] = $query->row();
			$v_data['income_types'] = $this->incomes_model->get_income_types();
			$data['content'] = $this->load->view('incomes/edit_income', $v_data, TRUE);
		}
		
		else
		{
			$data['content'] = 'income does not exist';
		}
		
		$this->load->view('admin/templates/general_page', $data);
	}
    
	/*
	*
	*	Delete an existing income page
	*	@param int $income_id
	*
	*/
	public function delete_income($income_id, $page) 
	{
		if($this->incomes_model->delete_income($income_id))
		{
			$this->session->set_userdata('success_message', 'Administrator has been deleted');
		}
		
		else
		{
			$this->session->set_userdata('error_message', 'Administrator could not be deleted');
		}
		
		redirect('microfinance/incomes/'.$page);
	}
    
	/*
	*
	*	Activate an existing income page
	*	@param int $income_id
	*
	*/
	public function activate_income($income_id, $page) 
	{
		if($this->incomes_model->activate_income($income_id))
		{
			$this->session->set_userdata('success_message', 'Administrator has been activated');
		}
		
		else
		{
			$this->session->set_userdata('error_message', 'Administrator could not be activated');
		}
		
		redirect('microfinance/incomes/'.$page);
	}
    
	/*
	*
	*	Deactivate an existing income page
	*	@param int $income_id
	*
	*/
	public function deactivate_income($income_id, $page) 
	{
		if($this->incomes_model->deactivate_income($income_id))
		{
			$this->session->set_userdata('success_message', 'Administrator has been disabled');
		}
		
		else
		{
			$this->session->set_userdata('error_message', 'Administrator could not be disabled');
		}
		
		redirect('microfinance/incomes/'.$page);
	}
}
?>