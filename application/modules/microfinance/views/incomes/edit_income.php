
  <section class="panel">
        <header class="panel-heading">
            <h2 class="panel-title">Add income</h2>
        </header>
        <div class="panel-body">
            <?php
				$error2 = validation_errors(); 
				if(!empty($error2)){?>
					<div class="row">
						<div class="col-md-6 col-md-offset-2">
							<div class="alert alert-danger">
								<strong>Error!</strong> <?php echo validation_errors(); ?>
							</div>
						</div>
					</div>
				<?php }
				
				$attributes = array('role' => 'form', 'class' => 'form-horizontal');
		
				echo form_open($this->uri->uri_string(), $attributes);
				
				?>
                <div class="row">
                	<div class="col-md-6">
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="income_title">Income type</label>
                            <div class="col-md-8">
                            	<select class="form-control" name="income_type_id">
                                	<option value="">--Select income type--</option>
                                    <?php
                                    if($income_types->num_rows() > 0)
									{
										foreach($income_types->result() as $res)
										{
											$income_type_id = $res->income_type_id;
											$income_type_name = $res->income_type_name;
											
											if($row->income_type_id == $income_type_id)
											{
												?>
												<option value="<?php echo $income_type_id?>" selected="selected"><?php echo $income_type_name?></option>
												<?php
											}
											
											else
											{
												?>
												<option value="<?php echo $income_type_id?>"><?php echo $income_type_name?></option>
												<?php
											}
										}
									}
									?>
                                </select>
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="income_date">Investment date</label>
                            <div class="col-md-8">
                            	<div class="input-group">
                                    <span class="input-group-addon">
                                        <i class="fa fa-calendar"></i>
                                    </span>
                                    <input data-format="yyyy-MM-dd" type="text" data-plugin-datepicker class="form-control" name="income_date" placeholder="Investment date" value="<?php echo $row->income_date;?>">
                                </div>
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="income_amount">Investment amount</label>
                            <div class="col-md-8">
                            	<input type="text" class="form-control" name="income_amount" placeholder="Investment amount" value="<?php echo $row->income_amount;?>">
                            </div>
                        </div>
					</div>
                	<div class="col-md-6">
                        
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="income_payment_date">Payment date</label>
                            <div class="col-md-8">
                            	<div class="input-group">
                                    <span class="input-group-addon">
                                        <i class="fa fa-calendar"></i>
                                    </span>
                                    <input data-format="yyyy-MM-dd" type="text" data-plugin-datepicker class="form-control" name="income_payment_date" placeholder="Payment date" value="<?php echo $row->income_payment_date;?>">
                                </div>
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="income_payment_amount">Payment amount</label>
                            <div class="col-md-8">
                            	<input type="text" class="form-control" name="income_payment_amount" placeholder="Payment amount" value="<?php echo $row->income_payment_amount;?>">
                        </div>
                	</div>
				
                    <div class="form-group center-align">
                        <input type="submit" value="Edit income" class="btn btn-success">
                    </div>
                </div>
				<?php
					form_close();
				?>
        </div>
    </section>