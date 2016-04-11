
<?php 
    echo form_open("reception/register_other_patient", array("class" => "form-horizontal"));
    form_hidden('visit_type_id', 3);
    if(isset($dependant_parent))
    {
        form_hidden('dependant_id', $dependant_parent);
    }
    
    else
    {
        form_hidden('dependant_id', 0);
    }
?>
 <section class="panel">
    <header class="panel-heading">
            <h4 class="pull-left"><i class="icon-reorder"></i>Add Patient</h4>
          <div class="widget-icons pull-right">
            <a href="#" class="wminimize"><i class="icon-chevron-up"></i></a> 
            <a href="#" class="wclose"><i class="icon-remove"></i></a>
          </div>
          <div class="clearfix"></div>
    </header>
      <div class="panel-body">
        <div class="padd">
            <div class="col-md-6">
                <div class="form-group">
                    <label class="col-lg-4 control-label">Title: </label>
                    
                    <div class="col-lg-8">
                        <select class="form-control" name="title_id">
                            <?php
                                if($titles->num_rows() > 0)
                                {
                                    $title = $titles->result();
                                    
                                    foreach($title as $res)
                                    {
                                        $title_id = $res->title_id;
                                        $title_name = $res->title_name;
                                        
                                        if($title_id == set_value("title_id"))
                                        {
                                            echo '<option value="'.$title_id.'" selected>'.$title_name.'</option>';
                                        }
                                        
                                        else
                                        {
                                            echo '<option value="'.$title_id.'">'.$title_name.'</option>';
                                        }
                                    }
                                }
                            ?>
                        </select>
                    </div>
                </div>
                
                <div class="form-group">
                    <label class="col-lg-4 control-label">Surname: </label>
                    
                    <div class="col-lg-8">
                        <input type="text" class="form-control" name="patient_surname" placeholder="Surname" value="<?php echo set_value('patient_surname');?>">
                    </div>
                </div>
                
                <div class="form-group">
                    <label class="col-lg-4 control-label">Other Names: </label>
                    
                    <div class="col-lg-8">
                        <input type="text" class="form-control" name="patient_othernames" placeholder="Other Names">
                    </div>
                </div>
                
                <div class="form-group">
                    <label class="col-lg-4 control-label">Date of Birth : </label>
                    
                    <div class="col-lg-8">
                        <div id="datetimepicker_other_patient" class="input-append">
                            <input data-format="yyyy-MM-dd" class="form-control" type="text" name="patient_dob" placeholder="Date of Birth">
                            <span class="add-on">
                                &nbsp;<i data-time-icon="icon-time" data-date-icon="icon-calendar" style="cursor:pointer;">
                                </i>
                            </span>

                        </div>
                    </div>
                </div>
                
                <div class="form-group">
                    <label class="col-lg-4 control-label">Gender: </label>
                    
                    <div class="col-lg-8">
                        <select class="form-control" name="gender_id">
                            <?php
                                if($genders->num_rows() > 0)
                                {
                                    $gender = $genders->result();
                                    
                                    foreach($gender as $res)
                                    {
                                        $gender_id = $res->gender_id;
                                        $gender_name = $res->gender_name;
                                        
                                        if($gender_id == set_value("gender_id"))
                                        {
                                            echo '<option value="'.$gender_id.'" selected>'.$gender_name.'</option>';
                                        }
                                        
                                        else
                                        {
                                            echo '<option value="'.$gender_id.'">'.$gender_name.'</option>';
                                        }
                                    }
                                }
                            ?>
                        </select>
                    </div>
                </div>
             
                
               
                <div class="form-group">
                    <label class="col-lg-4 control-label">Email Address: </label>
                    
                    <div class="col-lg-8">
                        <input type="text" class="form-control" name="patient_email" placeholder="Email Address">
                    </div>
                </div>
                
                <div class="form-group">
                    <label class="col-lg-4 control-label">National ID: </label>
                    
                    <div class="col-lg-8">
                        <input type="text" class="form-control" name="patient_national_id" placeholder="National ID">
                    </div>
                </div>
                
            </div>
            
            <div class="col-md-6">
                
                
                
                <div class="form-group">
                    <label class="col-lg-4 control-label">Primary Phone: </label>
                    
                    <div class="col-lg-8">
                        <input type="text" class="form-control" name="patient_phone1" placeholder="Primary Phone">
                    </div>
                </div>
                
                <div class="form-group">
                    <label class="col-lg-4 control-label">Other Phone: </label>
                    
                    <div class="col-lg-8">
                        <input type="text" class="form-control" name="patient_phone2" placeholder="Other Phone">
                    </div>
                </div>
                
                <div class="form-group">
                    <label class="col-lg-4 control-label">Next of Kin Surname: </label>
                    
                    <div class="col-lg-8">
                        <input type="text" class="form-control" name="patient_kin_sname" placeholder="Kin Surname">
                    </div>
                </div>
                
                <div class="form-group">
                    <label class="col-lg-4 control-label">Next of Kin Other Names: </label>
                    
                    <div class="col-lg-8">
                        <input type="text" class="form-control" name="patient_kin_othernames" placeholder="Kin Other Names">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-lg-4 control-label">Next of Kin Contact: </label>
                    
                    <div class="col-lg-8">
                        <input type="text" class="form-control" name="next_of_kin_contact" placeholder="">
                    </div>
                </div>
                
                <div class="form-group">
                    <label class="col-lg-4 control-label">Relationship To Kin: </label>
                    
                    <div class="col-lg-8">
                        <select class="form-control" name="relationship_id">
                            <?php
                                if($relationships->num_rows() > 0)
                                {
                                    $relationship = $relationships->result();
                                    
                                    foreach($relationship as $res)
                                    {
                                        $relationship_id = $res->relationship_id;
                                        $relationship_name = $res->relationship_name;
                                        
                                        if($relationship_id == set_value("relationship_id"))
                                        {
                                            echo '<option value="'.$relationship_id.'" selected>'.$relationship_name.'</option>';
                                        }
                                        
                                        else
                                        {
                                            echo '<option value="'.$relationship_id.'">'.$relationship_name.'</option>';
                                        }
                                    }
                                }
                            ?>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-lg-4 control-label">Insurance : </label>
                    
                    <div class="col-lg-8">
                        <select class="form-control" name="insurance_company_id">
                            <option value="0">Select an insurance Company</option>
                            <?php
                                if($insurance->num_rows() > 0)
                                {
                                    $insurance = $insurance->result();
                                    
                                    foreach($insurance as $res)
                                    {
                                        $insurance_company_id1 = $res->insurance_company_id;
                                        $insurance_company_name = $res->insurance_company_name;
                                        
                                        if($insurance_company_id1 ==  set_value("relationship_id"))
                                        {
                                            echo '<option value="'.$insurance_company_id.'" selected>'.$insurance_company_name.'</option>';
                                        }
                                        
                                        else
                                        {
                                            echo '<option value="'.$insurance_company_id.'">'.$insurance_company_name.'</option>';
                                        }
                                    }
                                }
                            ?>
                        </select>
                    </div>
                </div>
                
            </div>
        </div>

        <div class="center-align">
            <button class="btn btn-info btn-lg" type="submit">Add Patient</button>
        </div>
    </div>
</section>
<?php echo form_close();?>