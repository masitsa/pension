<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
| 	example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|	http://codeigniter.com/user_guide/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There are two reserved routes:
|
|	$route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|	$route['scaffolding_trigger'] = 'scaffolding';
|
| This route lets you set a "secret" word that will trigger the
| scaffolding feature for added security. Note: Scaffolding must be
| enabled in the controller in which you intend to use it.   The reserved 
| routes must come before any wildcard or regular expression routes.
|
*/

$route['default_controller'] = "auth";
$route['404_override'] = '';

/*
*	Auth Routes
*/
$route['login'] = 'auth/login_user';
$route['logout-admin'] = 'auth/logout';

/*
*	Admin Routes
*/
$route['dashboard'] = 'admin/dashboard';
$route['change-password'] = 'admin/users/change_password';

/*
*	administration Routes
*/
$route['administration/configuration'] = 'admin/configuration';
$route['administration/edit-configuration/(:num)'] = 'admin/edit_configuration/$1';
$route['administration/sections'] = 'admin/sections/index';
$route['administration/sections/(:any)/(:any)/(:num)'] = 'admin/sections/index/$1/$2/$3';
$route['administration/add-section'] = 'admin/sections/add_section';
$route['administration/edit-section/(:num)'] = 'admin/sections/edit_section/$1';

$route['administration/edit-section/(:num)/(:num)'] = 'admin/sections/edit_section/$1/$2';
$route['administration/delete-section/(:num)'] = 'admin/sections/delete_section/$1';
$route['administration/delete-section/(:num)/(:num)'] = 'admin/sections/delete_section/$1/$2';
$route['administration/activate-section/(:num)'] = 'admin/sections/activate_section/$1';
$route['administration/activate-section/(:num)/(:num)'] = 'admin/sections/activate_section/$1/$2';
$route['administration/deactivate-section/(:num)'] = 'admin/sections/deactivate_section/$1';
$route['administration/deactivate-section/(:num)/(:num)'] = 'admin/sections/deactivate_section/$1/$2';

#$route['administration/company-profile'] = 'admin/contacts/show_contacts';
$route['administration/branches'] = 'admin/branches/index';
$route['administration/branches/(:any)/(:any)/(:num)'] = 'admin/branches/index/$1/$2/$3';
$route['administration/branches/(:any)/(:any)'] = 'admin/branches/index/$1/$2';
$route['administration/add-branch'] = 'admin/branches/add_branch';
$route['administration/edit-branch/(:num)'] = 'admin/branches/edit_branch/$1';
$route['administration/edit-branch/(:num)/(:num)'] = 'admin/branches/edit_branch/$1/$2';
$route['administration/delete-branch/(:num)'] = 'admin/branches/delete_branch/$1';
$route['administration/delete-branch/(:num)/(:num)'] = 'admin/branches/delete_branch/$1/$2';
$route['administration/activate-branch/(:num)'] = 'admin/branches/activate_branch/$1';
$route['administration/activate-branch/(:num)/(:num)'] = 'admin/branches/activate_branch/$1/$2';
$route['administration/deactivate-branch/(:num)'] = 'admin/branches/deactivate_branch/$1';
$route['administration/deactivate-branch/(:num)/(:num)'] = 'admin/branches/deactivate_branch/$1/$2';

/*
*	HR Routes
*/
$route['human-resource/my-account'] = 'admin/dashboard';
$route['human-resource/my-account/edit-about/(:num)'] = 'hr/personnel/my_account/update_personnel_about_details/$1';
$route['human-resource/edit-personnel-account/(:num)'] = 'hr/personnel/update_personnel_account_details/$1';
$route['human-resource/configuration'] = 'hr/configuration';
$route['human-resource/add-job-title'] = 'hr/add_job_title';
$route['human-resource/edit-job-title/(:num)'] = 'hr/edit_job_title/$1';
$route['human-resource/delete-job-title/(:num)'] = 'hr/delete_job_title/$1';
$route['human-resource/personnel'] = 'hr/personnel/index';
$route['human-resource/personnel/(:any)/(:any)/(:num)'] = 'hr/personnel/index/$1/$2/$3';
$route['human-resource/add-personnel'] = 'hr/personnel/add_personnel';
$route['human-resource/edit-personnel/(:num)'] = 'hr/personnel/edit_personnel/$1';
$route['human-resource/edit-personnel-about/(:num)'] = 'hr/personnel/update_personnel_about_details/$1';
$route['human-resource/edit-personnel-account/(:num)'] = 'hr/personnel/update_personnel_account_details/$1';
$route['human-resource/edit-personnel/(:num)/(:num)'] = 'hr/personnel/edit_personnel/$1/$2';
$route['human-resource/delete-personnel/(:num)'] = 'hr/personnel/delete_personnel/$1';
$route['human-resource/delete-personnel/(:num)/(:num)'] = 'hr/personnel/delete_personnel/$1/$2';
$route['human-resource/activate-personnel/(:num)'] = 'hr/personnel/activate_personnel/$1';
$route['human-resource/activate-personnel/(:num)/(:num)'] = 'hr/personnel/activate_personnel/$1/$2';
$route['human-resource/deactivate-personnel/(:num)'] = 'hr/personnel/deactivate_personnel/$1';
$route['human-resource/deactivate-personnel/(:num)/(:num)'] = 'hr/personnel/deactivate_personnel/$1/$2';
$route['human-resource/reset-password/(:num)'] = 'hr/personnel/reset_password/$1';
$route['human-resource/update-personnel-roles/(:num)'] = 'hr/personnel/update_personnel_roles/$1';
$route['human-resource/add-emergency-contact/(:num)'] = 'hr/personnel/add_emergency_contact/$1';
$route['human-resource/activate-emergency-contact/(:num)/(:num)'] = 'hr/personnel/activate_emergency_contact/$1/$2';
$route['human-resource/deactivate-emergency-contact/(:num)/(:num)'] = 'hr/personnel/deactivate_emergency_contact/$1/$2';
$route['human-resource/delete-emergency-contact/(:num)/(:num)'] = 'hr/personnel/delete_emergency_contact/$1/$2';

$route['human-resource/add-dependant-contact/(:num)'] = 'hr/personnel/add_dependant_contact/$1';
$route['human-resource/activate-dependant-contact/(:num)/(:num)'] = 'hr/personnel/activate_dependant_contact/$1/$2';
$route['human-resource/deactivate-dependant-contact/(:num)/(:num)'] = 'hr/personnel/deactivate_dependant_contact/$1/$2';
$route['human-resource/delete-dependant-contact/(:num)/(:num)'] = 'hr/personnel/delete_dependant_contact/$1/$2';

$route['human-resource/add-personnel-job/(:num)'] = 'hr/personnel/add_personnel_job/$1';
$route['human-resource/activate-personnel-job/(:num)/(:num)'] = 'hr/personnel/activate_personnel_job/$1/$2';
$route['human-resource/deactivate-personnel-job/(:num)/(:num)'] = 'hr/personnel/deactivate_personnel_job/$1/$2';
$route['human-resource/delete-personnel-job/(:num)/(:num)'] = 'hr/personnel/delete_personnel_job/$1/$2';

$route['human-resource/leave'] = 'hr/leave/calender';
$route['human-resource/leave/(:any)/(:any)'] = 'hr/leave/calender/$1/$2';
$route['human-resource/view-leave/(:any)'] = 'hr/leave/view_leave/$1';
$route['human-resource/add-personnel-leave/(:num)'] = 'hr/personnel/add_personnel_leave/$1';
$route['human-resource/add-leave/(:any)'] = 'hr/leave/add_leave/$1';
$route['human-resource/add-calender-leave'] = 'hr/leave/add_calender_leave';
$route['human-resource/activate-leave/(:num)/(:any)'] = 'hr/leave/activate_leave/$1/$2';
$route['human-resource/deactivate-leave/(:num)/(:any)'] = 'hr/leave/deactivate_leave/$1/$2';
$route['human-resource/delete-leave/(:num)/(:any)'] = 'hr/leave/delete_leave/$1/$2';
$route['human-resource/activate-personnel-leave/(:num)/(:num)'] = 'hr/personnel/activate_personnel_leave/$1/$2';
$route['human-resource/deactivate-personnel-leave/(:num)/(:num)'] = 'hr/personnel/deactivate_personnel_leave/$1/$2';
$route['human-resource/delete-personnel-leave/(:num)/(:num)'] = 'hr/personnel/delete_personnel_leave/$1/$2';

$route['human-resource/delete-personnel-role/(:num)/(:num)'] = 'hr/personnel/delete_personnel_role/$1/$2';

/*
*	Accounts Routes
*/
$route['accounts/petty-cash'] = 'accounts/petty_cash/index';
$route['accounts/petty-cash/(:any)/(:any)'] = 'accounts/petty_cash/index/$1/$2';
$route['accounts/petty-cash/(:any)'] = 'accounts/petty_cash/index/$1';
$route['accounts/closed-visits'] = 'accounts/payroll/accounts_closed_visits';
$route['accounts/un-closed-visits'] = 'accounts/payroll/accounts_unclosed_queue';
$route['accounts/change-branch'] = 'accounts/payroll/change_branch';
$route['accounts/print-payroll/(:num)'] = 'accounts/payroll/print_payroll/$1';
$route['accounts/export-payroll/(:num)'] = 'accounts/payroll/export_payroll/$1';
$route['accounts/print-payroll-pdf/(:num)'] = 'accounts/payroll/print_payroll_pdf/$1';
$route['accounts/payroll/print-payslip/(:num)/(:num)'] = 'accounts/payroll/print_payslip/$1/$2';
$route['accounts/payroll/download-payslip/(:num)/(:num)'] = 'accounts/payroll/download_payslip/$1/$2';
$route['accounts/payroll-payslips/(:num)'] = 'accounts/payroll/payroll_payslips/$1';
$route['accounts/salary-data'] = 'accounts/payroll/salaries';
$route['accounts/search-payroll'] = 'accounts/payroll/search_payroll';
$route['accounts/close-payroll-search'] = 'accounts/payroll/close_payroll_search';
$route['accounts/create-payroll'] = 'accounts/payroll/create_payroll';
$route['accounts/deactivate-payroll/(:num)'] = 'accounts/payroll/deactivate_payroll/$1';
$route['accounts/print-payslips'] = 'accounts/payroll/print_payslips';
$route['accounts/payroll/edit_allowance/(:num)'] = 'accounts/payroll/edit_allowance/$1';
$route['accounts/payroll/delete_allowance/(:num)'] = 'accounts/payroll/delete_allowance/$1';
$route['accounts/payroll/edit_deduction/(:num)'] = 'accounts/payroll/edit_deduction/$1';
$route['accounts/payroll/delete_deduction/(:num)'] = 'accounts/payroll/delete_deduction/$1';
$route['accounts/payroll/edit_saving/(:num)'] = 'accounts/payroll/edit_saving/$1';
$route['accounts/payroll/delete_saving/(:num)'] = 'accounts/payroll/delete_saving/$1';
$route['accounts/payroll/edit_loan_scheme/(:num)'] = 'accounts/payroll/edit_loan_scheme/$1';
$route['accounts/payroll/delete_loan_scheme/(:num)'] = 'accounts/payroll/delete_loan_scheme/$1';
$route['accounts/payroll'] = 'accounts/payroll/payrolls';
$route['accounts/payment-details/(:num)'] = 'accounts/payroll/payment_details/$1';
$route['accounts/save-payment-details/(:num)'] = 'accounts/payroll/save_payment_details/$1';
$route['accounts/update-savings/(:num)'] = 'accounts/payroll/update_savings/$1';
$route['accounts/update-loan-schemes/(:num)'] = 'accounts/payroll/update_loan_schemes/$1';
$route['payroll/configuration'] = 'accounts/payroll/payroll_configuration';
$route['accounts/payroll-configuration'] = 'accounts/payroll/payroll_configuration';
$route['accounts/payroll/edit-nssf/(:num)'] = 'accounts/payroll/edit_nssf/$1';
$route['accounts/payroll/edit-nhif/(:num)'] = 'accounts/payroll/edit_nhif/$1';
$route['accounts/payroll/delete-nhif/(:num)'] = 'accounts/payroll/delete_nhif/$1';
$route['accounts/payroll/edit-paye/(:num)'] = 'accounts/payroll/edit_paye/$1';
$route['accounts/payroll/delete-paye/(:num)'] = 'accounts/payroll/delete_paye/$1';
$route['accounts/payroll/edit-payment/(:num)'] = 'accounts/payroll/edit_payment/$1';
$route['accounts/payroll/delete-payment/(:num)'] = 'accounts/payroll/delete_payment/$1';
$route['accounts/payroll/edit-benefit/(:num)'] = 'accounts/payroll/edit_benefit/$1';
$route['accounts/payroll/delete-benefit/(:num)'] = 'accounts/payroll/delete_benefit/$1';
$route['accounts/payroll/edit-allowance/(:num)'] = 'accounts/payroll/edit_allowance/$1';
$route['accounts/payroll/delete-allowance/(:num)'] = 'accounts/payroll/delete_allowance/$1';
$route['accounts/payroll/edit-deduction/(:num)'] = 'accounts/payroll/edit_deduction/$1';
$route['accounts/payroll/edit-relief/(:num)'] = 'accounts/payroll/edit_relief/$1';
$route['accounts/payroll/delete-deduction/(:num)'] = 'accounts/payroll/delete_deduction/$1';
$route['accounts/payroll/edit-other-deduction/(:num)'] = 'accounts/payroll/edit_other_deduction/$1';
$route['accounts/payroll/delete-other-deduction/(:num)'] = 'accounts/payroll/delete_other_deduction/$1';
$route['accounts/payroll/edit-loan-scheme/(:num)'] = 'accounts/payroll/edit_loan_scheme/$1';
$route['accounts/payroll/delete-loan-scheme/(:num)'] = 'accounts/payroll/delete_loan_scheme/$1';
$route['accounts/payroll/edit-saving/(:num)'] = 'accounts/payroll/edit_saving/$1';
$route['accounts/payroll/delete-saving/(:num)'] = 'accounts/payroll/delete_saving/$1';
$route['accounts/payroll/edit-personnel-payments/(:num)'] = 'accounts/payroll/edit_personnel_payments/$1';
$route['accounts/payroll/edit-personnel-allowances/(:num)'] = 'accounts/payroll/edit_personnel_allowances/$1';
$route['accounts/payroll/edit-personnel-benefits/(:num)'] = 'accounts/payroll/edit_personnel_benefits/$1';
$route['accounts/payroll/edit-personnel-deductions/(:num)'] = 'accounts/payroll/edit_personnel_deductions/$1';
$route['accounts/payroll/edit-personnel-other-deductions/(:num)'] = 'accounts/payroll/edit_personnel_other_deductions/$1';
$route['accounts/payroll/edit-personnel-savings/(:num)'] = 'accounts/payroll/edit_personnel_savings/$1';
$route['accounts/payroll/edit-personnel-loan-schemes/(:num)'] = 'accounts/payroll/edit_personnel_loan_schemes/$1';
$route['accounts/payroll/edit-personnel-relief/(:num)'] = 'accounts/payroll/edit_personnel_relief/$1';
$route['accounts/payroll/view-payslip/(:num)'] = 'accounts/payroll/view_payslip/$1';

//Always comes last
$route['accounts/payroll/(:any)/(:any)'] = 'accounts/payroll/payrolls/$1/$2';
$route['accounts/payroll/(:any)/(:any)/(:num)'] = 'accounts/payroll/payrolls/$1/$2/$3';
$route['accounts/salary-data/(:any)/(:any)'] = 'accounts/payroll/salaries/$1/$2';
$route['accounts/salary-data/(:any)/(:any)/(:num)'] = 'accounts/payroll/salaries/$1/$2/$3';


/*
*	Inventory Routes
*/
$route['inventory/units-of-measurement'] = 'inventory/unit/index';
$route['inventory/units-of-measurement/(:any)/(:any)/(:num)'] = 'inventory/unit/index/$1/$2/$3';
$route['inventory/add-personnel'] = 'inventory/personnel/add_personnel';
$route['inventory/edit-personnel/(:num)'] = 'inventory/personnel/edit_personnel/$1';
$route['inventory/edit-personnel/(:num)/(:num)'] = 'inventory/personnel/edit_personnel/$1/$2';
$route['inventory/delete-personnel/(:num)'] = 'inventory/personnel/delete_personnel/$1';
$route['inventory/delete-personnel/(:num)/(:num)'] = 'inventory/personnel/delete_personnel/$1/$2';
$route['inventory/activate-personnel/(:num)'] = 'inventory/personnel/activate_personnel/$1';
$route['inventory/activate-personnel/(:num)/(:num)'] = 'inventory/personnel/activate_personnel/$1/$2';
$route['inventory/deactivate-personnel/(:num)'] = 'inventory/personnel/deactivate_personnel/$1';
$route['inventory/deactivate-personnel/(:num)/(:num)'] = 'inventory/personnel/deactivate_personnel/$1/$2';

/*
*	Microfinance Routes
*/
$route['microfinance/individual'] = 'microfinance/individual/index';
$route['microfinance/individual/(:any)/(:any)/(:num)'] = 'microfinance/individual/index/$1/$2/$3';
$route['microfinance/add-individual'] = 'microfinance/individual/add_individual';
$route['microfinance/edit-individual/(:num)'] = 'microfinance/individual/edit_individual/$1';
$route['microfinance/update-individual/(:num)'] = 'microfinance/individual/edit_about/$1';
$route['microfinance/update-individual-document/(:num)'] = 'microfinance/individual/upload_indivudual_documents/$1';
$route['microfinance/update-individual-other-document/(:num)'] = 'microfinance/individual/upload_indivudual_other_documents/$1';
$route['microfinance/update-emergency/(:num)'] = 'microfinance/individual/edit_emergency/$1';
$route['microfinance/add-position/(:num)'] = 'microfinance/individual/add_position/$1';
$route['microfinance/add-nok/(:num)'] = 'microfinance/individual/add_emergency/$1';
$route['microfinance/delete-individual/(:num)'] = 'microfinance/individual/delete_individual/$1';
$route['microfinance/delete-individual/(:num)/(:num)'] = 'microfinance/individual/delete_individual/$1/$2';
$route['microfinance/activate-individual/(:num)'] = 'microfinance/individual/activate_individual/$1';
$route['microfinance/activate-individual/(:num)/(:num)'] = 'microfinance/individual/activate_individual/$1/$2';
$route['microfinance/deactivate-individual/(:num)'] = 'microfinance/individual/deactivate_individual/$1';
$route['microfinance/deactivate-individual/(:num)/(:num)'] = 'microfinance/individual/deactivate_individual/$1/$2';
$route['microfinance/activate-position/(:num)/(:num)'] = 'microfinance/individual/activate_position/$1/$2';
$route['microfinance/deactivate-position/(:num)/(:num)'] = 'microfinance/individual/deactivate_position/$1/$2';
$route['microfinance/delete-emergency/(:num)/(:num)'] = 'microfinance/individual/delete_emergency/$1/$2';

/*
*	Microfinance Routes
*/
$route['microfinance/groups'] = 'microfinance/group/index';
$route['microfinance/group/(:any)/(:any)/(:num)'] = 'microfinance/group/index/$1/$2/$3';
$route['microfinance/add-group'] = 'microfinance/group/add_group';
$route['microfinance/edit-group/(:num)'] = 'microfinance/group/edit_group/$1';
$route['microfinance/edit-about/(:num)'] = 'microfinance/group/edit_about/$1';
$route['microfinance/add-member/(:num)'] = 'microfinance/group/add_member/$1';
$route['microfinance/edit-group/(:num)/(:num)'] = 'microfinance/group/edit_group/$1/$2';
$route['microfinance/delete-group/(:num)'] = 'microfinance/group/delete_group/$1';
$route['microfinance/delete-group/(:num)/(:num)'] = 'microfinance/group/delete_group/$1/$2';
$route['microfinance/activate-group/(:num)'] = 'microfinance/group/activate_group/$1';
$route['microfinance/activate-group/(:num)/(:num)'] = 'microfinance/group/activate_group/$1/$2';
$route['microfinance/deactivate-group/(:num)'] = 'microfinance/group/deactivate_group/$1';
$route['microfinance/deactivate-group/(:num)/(:num)'] = 'microfinance/group/deactivate_group/$1/$2';

$route['microfinance/savings-plan'] = 'microfinance/savings_plan/index';
$route['microfinance/savings-plan/(:any)/(:any)/(:num)'] = 'microfinance/savings_plan/index/$1/$2/$3';
$route['microfinance/add-savings-plan'] = 'microfinance/savings_plan/add_savings_plan';
$route['microfinance/edit-savings-plan/(:num)'] = 'microfinance/savings_plan/edit_savings_plan/$1';
$route['microfinance/edit-savings-plan/(:num)/(:num)'] = 'microfinance/savings_plan/edit_savings_plan/$1/$2';
$route['microfinance/delete-savings-plan/(:num)'] = 'microfinance/savings_plan/delete_savings_plan/$1';
$route['microfinance/delete-savings-plan/(:num)/(:num)'] = 'microfinance/savings_plan/delete_savings_plan/$1/$2';
$route['microfinance/activate-savings-plan/(:num)'] = 'microfinance/savings_plan/activate_savings_plan/$1';
$route['microfinance/activate-savings-plan/(:num)/(:num)'] = 'microfinance/savings_plan/activate_savings_plan/$1/$2';
$route['microfinance/deactivate-savings-plan/(:num)'] = 'microfinance/savings_plan/deactivate_savings_plan/$1';
$route['microfinance/deactivate-savings-plan/(:num)/(:num)'] = 'microfinance/savings_plan/deactivate_savings_plan/$1/$2';

$route['microfinance/add-individual-plan/(:num)'] = 'microfinance/individual/add_individual_plan/$1';
$route['microfinance/activate-individual-plan/(:num)/(:num)'] = 'microfinance/individual/activate_individual_plan/$1/$2';
$route['microfinance/deactivate-individual-plan/(:num)/(:num)'] = 'microfinance/individual/deactivate_individual_plan/$1/$2';

/**
 * Loans Plan
 */
$route['microfinance/loans'] = 'microfinance/loans_plan/index';
$route['microfinance/add-loans-plan'] = 'microfinance/loans_plan/add_loans_plan';
$route['microfinance/edit-loans-plan/(:num)'] = 'microfinance/loans_plan/edit_loans_plan/$1';
$route['microfinance/activate-loans-plan/(:num)'] = 'microfinance/loans_plan/activate_loans_plan/$1';
$route['microfinance/activate-loans-plan/(:num)/(:num)'] = 'microfinance/loans_plan/activate_loans_plan/$1/$2';
$route['microfinance/deactivate-loans-plan/(:num)'] = 'microfinance/loans_plan/deactivate_loans_plan/$1';
$route['microfinance/deactivate-loans-plan/(:num)/(:num)'] = 'microfinance/loans_plan/deactivate_loans_plan/$1/$2';
$route['microfinance/loan-application/(:num)'] = 'microfinance/individual/loan_application/$1';
$route['microfinance/add-guarantors/(:num)/(:num)'] = 'microfinance/individual/add_guarantors/$1/$2';
$route['microfinance/delete-guarantor/(:num)/(:num)/(:num)'] = 'microfinance/individual/delete_loan_guarantor/$1/$2/$3';
$route['microfinance/get-guarantors/(:num)/(:num)'] = 'microfinance/individual/get_guarantors/$1/$2';
$route['microfinance/add-loan-payment/(:num)/(:num)'] = 'microfinance/individual/add_loan_payment/$1/$2';
$route['microfinance/delete-loan-payment/(:num)/(:num)/(:num)'] = 'microfinance/individual/delete_loan_payment/$1/$2/$3';
$route['microfinance/get-loan-payments/(:num)/(:num)'] = 'microfinance/individual/get_loan_payments/$1/$2';

/**
 * Individual Payments
 */
$route['microfinance/individual-payments'] = 'microfinance/payments/list_individuals';
$route['microfinance/show-individual-payment'] = 'microfinance/payments/show_individual_payment';
$route['microfinance/show-individual-payment/(:num)'] = 'microfinance/payments/show_individual_payment/$1';
$route['microfinance/add-individual-payment/(:num)'] = 'microfinance/payments/add_individual_payment/$1';
$route['microfinance/edit-individual-payment/(:num)/(:num)'] = 'microfinance/payments/edit_individual_payment/$1/$2';
$route['microfinance/delete-individual-payment/(:num)/(:num)'] = 'microfinance/payments/delete_individual_payment/$1/$2';

/**
 * Individual withdrawals
 */
$route['microfinance/individual-withdrawals'] = 'microfinance/withdrawals/list_individuals';
$route['microfinance/show-individual-withdrawal'] = 'microfinance/withdrawals/show_individual_withdrawal';
$route['microfinance/show-individual-withdrawal/(:num)'] = 'microfinance/withdrawals/show_individual_withdrawal/$1';
$route['microfinance/add-individual-withdrawal/(:num)'] = 'microfinance/withdrawals/add_individual_withdrawal/$1';
$route['microfinance/edit-individual-withdrawal/(:num)/(:num)'] = 'microfinance/withdrawals/edit_individual_withdrawal/$1/$2';
$route['microfinance/delete-individual-withdrawal/(:num)/(:num)'] = 'microfinance/withdrawals/delete_individual_withdrawal/$1/$2';

/**
 * Group Payments
 */
$route['microfinance/group-payments'] = 'microfinance/payments/list_group';
$route['microfinance/add-group-payment'] = 'microfinance/payments/add_group_payment';
$route['microfinance/show-group-payment'] = 'microfinance/payments/show_group_payment';
$route['microfinance/show-group-payment/(:num)'] = 'microfinance/payments/show_group_payment/$1';
$route['microfinance/edit-group-payment/'] = 'microfinance/payments/edit_group_payment';
$route['microfinance/edit-group-payment/(:num)'] = 'microfinance/payments/edit_group_payment/$1';
$route['microfinance/list-group-payments'] = 'microfinance/payments/list_group';
// $route['microfinance/edit-group-payment/(:num)'] = 'microfinance/payments/edit_payment/$1';
$route['microfinance/delete-group-payment/(:num)'] = 'microfinance/payments/delete_group_payment/$1';

/* End of file routes.php */
/* Location: ./system/application/config/routes.php */

/*
*	Cloud Routes
*/
$route['cloud/sync-tables'] = 'cloud/sync_tables/index';
$route['cloud/sync-tables/(:any)/(:any)/(:num)'] = 'cloud/sync_tables/index/$1/$2/$3';
$route['cloud/sync-tables/(:any)/(:any)'] = 'cloud/sync_tables/index/$1/$2';
$route['cloud/add-sync-table'] = 'cloud/sync_tables/add_sync_table';
$route['cloud/edit-sync-table/(:num)'] = 'cloud/sync_tables/edit_sync_table/$1';
$route['cloud/delete-sync-table/(:num)'] = 'cloud/sync_tables/delete_sync_table/$1';
$route['cloud/activate-sync-table/(:num)'] = 'cloud/sync_tables/activate_sync_table/$1';
$route['cloud/deactivate-sync-table/(:num)'] = 'cloud/sync_tables/deactivate_sync_table/$1';

$route['pharmacy/validate-import'] = 'pharmacy/do_drugs_import';
$route['pharmacy/import-template'] = 'pharmacy/import_template';
$route['pharmacy/import-drugs'] = 'pharmacy/import_drugs';

/*
*	Individual import Routes
*/
$route['import/individuals'] = 'microfinance/import/import_individuals';
$route['import/individuals-template'] = 'microfinance/import/import_individuals_template';
$route['import/import-individuals'] = 'microfinance/import/do_individuals_import';

/*
*	Savings import Routes
*/
$route['import/savings'] = 'microfinance/import/import_savings';
$route['import/savings-template'] = 'microfinance/import/import_savings_template';
$route['import/import-savings'] = 'microfinance/import/do_savings_import';

/*
*	Loans import Routes
*/
$route['import/loans'] = 'microfinance/import/import_loans';
$route['import/loans-template'] = 'microfinance/import/import_loans_template';
$route['import/import-loans'] = 'microfinance/import/do_loans_import';

/*
*	Loans import Routes
*/
$route['import/loan-payments'] = 'microfinance/import/import_loan_payments';
$route['import/loan-payments-template'] = 'microfinance/import/import_loan_payments_template';
$route['import/import-loan-payments'] = 'microfinance/import/do_loan_payments_import';

/*
*	MFI Income Routes
*/
$route['microfinance/incomes'] = 'microfinance/incomes/index';
$route['microfinance/incomes/(:num)'] = 'microfinance/incomes/index/created/DESC/$3';
$route['microfinance/incomes/(:any)/(:any)/(:num)'] = 'microfinance/incomes/index/$1/$2/$3';
$route['microfinance/incomes/(:any)/(:any)'] = 'microfinance/incomes/index/$1/$2';
$route['microfinance/add-income'] = 'microfinance/incomes/add_income';
$route['microfinance/edit-income/(:num)'] = 'microfinance/incomes/edit_income/$1';
$route['microfinance/edit-income/(:num)/(:num)'] = 'microfinance/incomes/edit_income/$1/$2';
$route['microfinance/delete-income/(:num)'] = 'microfinance/incomes/delete_income/$1';
$route['microfinance/delete-income/(:num)/(:num)'] = 'microfinance/incomes/delete_income/$1/$2';
$route['microfinance/activate-income/(:num)'] = 'microfinance/incomes/activate_income/$1';
$route['microfinance/activate-income/(:num)/(:num)'] = 'microfinance/incomes/activate_income/$1/$2';
$route['microfinance/deactivate-income/(:num)'] = 'microfinance/incomes/deactivate_income/$1';
$route['microfinance/deactivate-income/(:num)/(:num)'] = 'microfinance/incomes/deactivate_income/$1/$2';
