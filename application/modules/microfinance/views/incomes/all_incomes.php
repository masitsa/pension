<?php
		
		$result = '<a href="'.site_url().'microfinance/add-income" class="btn btn-sm btn-success pull-right">Add income</a>';
		
		//if users exist display them
		if ($incomes->num_rows() > 0)
		{
			$count = $page;
			
			$result .= 
			'
				<table class="table table-hover table-bordered ">
				  <thead>
					<tr>
					  <th>#</th>
					  <th><a href="'.site_url().'microfinance/all-incomes/income.income_type_name/'.$order_method.'/'.$page.'">Type</a></th>
					  <th><a href="'.site_url().'microfinance/all-incomes/income.income_amount/'.$order_method.'/'.$page.'">Amount invested</a></th>
					  <th><a href="'.site_url().'microfinance/all-incomes/income.income_date/'.$order_method.'/'.$page.'">Investment date</a></th>
					  <th><a href="'.site_url().'microfinance/all-incomes/income.income_payment_amount/'.$order_method.'/'.$page.'">Amount paid</a></th>
					  <th><a href="'.site_url().'microfinance/all-incomes/income.income_payment_date/'.$order_method.'/'.$page.'">Payment date</a></th>
					  <th>Profit/ Loss</th>
					  <th colspan="5">Actions</th>
					</tr>
				  </thead>
				  <tbody>
			';
			
			foreach ($incomes->result() as $row)
			{
				$income_id = $row->income_id;
				$income_type_name = $row->income_type_name;
				$income_amount = $row->income_amount;
				$income_date = $row->income_date;
				$income_payment_date = $row->income_payment_date;
				$income_payment_amount = $row->income_payment_amount;
				$created = $row->created;
				$modified = $row->modified;
				$income_status = $row->income_status;
				$profit = $income_payment_amount - $income_amount;
				
				//create deactivated status display
				if($income_status == 0)
				{
					$status = '<span class="label label-important">Deactivated</span>';
					$button = '<a class="btn btn-sm btn-info" href="'.site_url().'microfinance/activate-income/'.$income_id.'/'.$income_id.'" onclick="return confirm(\'Do you want to activate '.$income_type_name.'?\');">Activate</a>';
				}
				//create activated status display
				else if($income_status == 1)
				{
					$status = '<span class="label label-success">Active</span>';
					$button = '<a class="btn btn-sm btn-default" href="'.site_url().'microfinance/deactivate-income/'.$income_id.'/'.$income_id.'" onclick="return confirm(\'Do you want to deactivate '.$income_type_name.'?\');">Deactivate</a>';
				}
				
				$count++;
				$result .= 
				'
					<tr>
						<td>'.$count.'</td>
						<td>'.$income_type_name.'</td>
						<td>'.number_format($income_amount, 2).'</td>
						<td>'.date('jS M Y',strtotime($income_date)).'</td>
						<td>'.number_format($income_payment_amount, 2).'</td>
						<td>'.date('jS M Y',strtotime($income_payment_date)).'</td>
						<td>'.number_format($profit, 2).'</td>
						<td>'.$button.'</td>
						<td>
							<!-- Button to trigger modal -->
							<a href="#user'.$income_id.'" class="btn btn-sm btn-primary" data-toggle="modal">View</a>
							
							<!-- Modal -->
							<div id="user'.$income_id.'" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
											<h4 class="modal-title">'.$income_type_name.'</h4>
										</div>
										
										<div class="modal-body">
											'.date('jS M Y',strtotime($income_date)).'
										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-default" data-dismiss="modal" aria-hidden="true">Close</button>
											<a href="'.site_url().'microfinance/edit-income/'.$income_id.'/'.$income_id.'" class="btn btn-sm btn-success">Edit</a>
										</div>
									</div>
								</div>
							</div>
						</td>
						<td><a href="'.site_url().'microfinance/edit-income/'.$income_id.'/'.$income_id.'" class="btn btn-sm btn-success">Edit</a></td>
						<td><a href="'.site_url().'microfinance/delete-income/'.$income_id.'/'.$income_id.'" class="btn btn-sm btn-danger" onclick="return confirm(\'Do you really want to delete '.$income_type_name.'?\');">Delete</a></td>
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
			$result .= "There are no incomes";
		}
?>  <section class="panel">
        <header class="panel-heading">
            <h2 class="panel-title">All incomes</h2>
        </header>
        <div class="panel-body">
        	<div class="row">
            	<div class="col-md-4 col-lg-4 col-xl-6">
                    <section class="panel panel-featured-left panel-featured-secondary">
                        <div class="panel-body">
                            <div class="widget-summary">
                                <div class="widget-summary-col widget-summary-col-icon">
                                    <div class="summary-icon bg-secondary">
                                        <i class="fa fa-money"></i>
                                    </div>
                                </div>
                                <div class="widget-summary-col">
                                    <div class="summary">
                                        <h4 class="title">Total Investments</h4>
                                        <div class="info">
                                            <strong class="amount">Kes <?php echo number_format($total_investments, 2);?></strong>
                                        </div>
                                    </div>
                                    <div class="summary-footer">
                                        <!--<a class="text-muted text-uppercase">(withdraw)</a>-->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                </div>
                
            	<div class="col-md-4 col-lg-4 col-xl-6">
                    <section class="panel panel-featured-left panel-featured-tertiary">
                        <div class="panel-body">
                            <div class="widget-summary">
                                <div class="widget-summary-col widget-summary-col-icon">
                                    <div class="summary-icon bg-tertiary">
                                        <i class="fa fa-money"></i>
                                    </div>
                                </div>
                                <div class="widget-summary-col">
                                    <div class="summary">
                                        <h4 class="title">Total Payments</h4>
                                        <div class="info">
                                            <strong class="amount">Kes <?php echo number_format($total_payments, 2);?></strong>
                                        </div>
                                    </div>
                                    <div class="summary-footer">
                                        <!--<a class="text-muted text-uppercase">(statement)</a>-->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                </div>
                
            	<div class="col-md-4 col-lg-4 col-xl-6">
                    <section class="panel panel-featured-left panel-featured-primary">
                        <div class="panel-body">
                            <div class="widget-summary">
                                <div class="widget-summary-col widget-summary-col-icon">
                                    <div class="summary-icon bg-primary">
                                        <i class="fa fa-money"></i>
                                    </div>
                                </div>
                                <div class="widget-summary-col">
                                    <div class="summary">
                                        <h4 class="title">Total Profit</h4>
                                        <div class="info">
                                            <strong class="amount">Kes <?php echo number_format(($total_payments - $total_investments), 2);?></strong>
                                        </div>
                                    </div>
                                    <div class="summary-footer">
                                        <!--<a class="text-muted text-uppercase">(statement)</a>-->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                </div>
            </div>
        	<?php echo $result;?>
        </div>
    </section>