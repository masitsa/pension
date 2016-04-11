<?php
		
		$result = '';
		
		//if users exist display them
		if ($query->num_rows() > 0)
		{
			$count = $page;
			
			$result .= 
			'
			<table class="table table-bordered table-striped table-condensed">
				<thead>
					<tr>
						<th>#</th>
						<th><a href="'.site_url().'microfinance/individual/individual_number/'.$order_method.'/'.$page.'">Member number</a></th>
						<th><a href="'.site_url().'microfinance/individual/individual_lname/'.$order_method.'/'.$page.'">Last name</a></th>
						<th><a href="'.site_url().'microfinance/individual/individual_fname/'.$order_method.'/'.$page.'">First name</a></th>
						<th><a href="'.site_url().'microfinance/individual/individual_mname/'.$order_method.'/'.$page.'">Middle name</a></th>
						<th><a href="'.site_url().'microfinance/individual/individual_phone/'.$order_method.'/'.$page.'">Phone</a></th>
						<th><a href="'.site_url().'microfinance/individual/individual_status/'.$order_method.'/'.$page.'">Status</a></th>
						<th colspan="3">Actions</th>
					</tr>
				</thead>
				  <tbody>
				  
			';
			
			//get all administrators
			$administrators = $this->users_model->get_active_users();
			if ($administrators->num_rows() > 0)
			{
				$admins = $administrators->result();
			}
			
			else
			{
				$admins = NULL;
			}
			
			foreach ($query->result() as $row)
			{
				$individual_id = $row->individual_id;
				$individual_fname = $row->individual_fname;
				$individual_mname = $row->individual_mname;
				$individual_lname = $row->individual_lname;
				$individual_username = $row->individual_username;
				$individual_phone = $row->individual_phone;
				$individual_email = $row->individual_email;
				$individual_status = $row->individual_status;
				$individual_number = $row->individual_number;
				$individual_name = $individual_fname.' '.$individual_lname;
				
				//status
				if($individual_status == 1)
				{
					$status = 'Active';
				}
				else
				{
					$status = 'Disabled';
				}
				
				//create deactivated status display
				if($individual_status == 0)
				{
					$status = '<span class="label label-default">Deactivated</span>';
					$button = '<a class="btn btn-info" href="'.site_url().'microfinance/activate-individual/'.$individual_id.'" onclick="return confirm(\'Do you want to activate '.$individual_name.'?\');" title="Activate '.$individual_name.'"><i class="fa fa-thumbs-up"></i></a>';
				}
				//create activated status display
				else if($individual_status == 1)
				{
					$status = '<span class="label label-success">Active</span>';
					$button = '<a class="btn btn-default" href="'.site_url().'microfinance/deactivate-individual/'.$individual_id.'" onclick="return confirm(\'Do you want to deactivate '.$individual_name.'?\');" title="Deactivate '.$individual_name.'"><i class="fa fa-thumbs-down"></i></a>';
				}
				
				$count++;
				$result .= 
				'
					<tr>
						<td>'.$count.'</td>
						<td>'.$individual_number.'</td>
						<td>'.$individual_lname.'</td>
						<td>'.$individual_fname.'</td>
						<td>'.$individual_mname.'</td>
						<td>'.$individual_phone.'</td>
						<td>'.$status.'</td>
						<td><a href="'.site_url().'microfinance/edit-individual/'.$individual_id.'" class="btn btn-sm btn-success" title="Edit '.$individual_name.'"><i class="fa fa-pencil"></i></a></td>
						<td>'.$button.'</td>
						<td><a href="'.site_url().'microfinance/delete-individual/'.$individual_id.'" class="btn btn-sm btn-danger" onclick="return confirm(\'Do you really want to delete '.$individual_name.'?\');" title="Delete '.$individual_name.'"><i class="fa fa-trash"></i></a></td>
					</tr> 
				';
			}
			
			$result .= 
			'
						  </tbody>
						</table>
			';
		}
		
		else
		{
			$result .= "There are no individuals";
		}
?>

						<individual class="panel">
							<header class="panel-heading">						
								<h2 class="panel-title"><?php echo $title;?></h2>
							</header>
							<div class="panel-body">
                            	<?php
                                $success = $this->session->userdata('success_message');
		
								if(!empty($success))
								{
									echo '<div class="alert alert-success"> <strong>Success!</strong> '.$success.' </div>';
									$this->session->unset_userdata('success_message');
								}
								
								$error = $this->session->userdata('error_message');
								
								if(!empty($error))
								{
									echo '<div class="alert alert-danger"> <strong>Oh snap!</strong> '.$error.' </div>';
									$this->session->unset_userdata('error_message');
								}
								?>
                            	<div class="row" style="margin-bottom:20px;">
                                    <div class="col-lg-2 col-lg-offset-8">
                                        <a href="<?php echo site_url();?>microfinance/export-individual" class="btn btn-sm btn-success pull-right">Export</a>
                                    </div>
                                    <div class="col-lg-2">
                                    	<a href="<?php echo site_url();?>microfinance/add-individual" class="btn btn-sm btn-info pull-right">Add Individual</a>
                                    </div>
                                </div>
								<div class="table-responsive">
                                	
									<?php echo $result;?>
							
                                </div>
							</div>
                            <div class="panel-footer">
                            	<?php if(isset($links)){echo $links;}?>
                            </div>
						</individual>