<?php
defined('BASEPATH') OR exit('No direct script access allowed');
include APPPATH.'third_party/mpdf/vendor/autoload.php';
include APPPATH.'third_party/phpspreadsheet/vendor/autoload.php';
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

class Welcome extends CI_Controller {

	public function __construct() {
		parent::__construct();
		
		
	}


	public function index()
	{	
			
		$data12=array_fill(0,1,"0");
		$this->load->view('Home',['data12'=>$data12]);
	
	
	}
	public function udata()
	{	
		$data = $this->input->post(array('fdate','tdate',TRUE));
		$data = array('fdate'=>$data['fdate'],'tdate'=>$data['tdate']);
		$this->session->set_userdata($data);
		 
		$data12 = $this->print_con->puserList($data);
		
		$this->load->view('home',['data12'=>$data12]); 
		
		
		
	}
	
	public function pdf()
	{	
		 $data = array('fdate'=>$_SESSION['fdate'],'tdate'=>$_SESSION['tdate']);
		$data12 = $this->print_con->puserList($data);
		
		
		$mpdf = new \Mpdf\Mpdf();
		$mpdf->setHeader("Store User List");
$mpdf->setFooter('{PAGENO}/{nbpg}');
		
		$html ="";
		$html .= "
		<!DOCTYPE html>
		<html lang='en'>
			<head>
			<meta charset='UTF-8'>
            <meta name='viewport' content='width=device-width, initial-scale=1.0'>
            <meta http-equiv='X-UA-Compatible' content='ie=edge'>
            <title>Store User List</title>
            <link rel='stylesheet' href='http://localhost/pdfcode/css/style.css'>
			</head>
		<body>
		
		
		<table>
		<thead>
		<tr>
			<th>Name</th>
			<th>Company</th>
			<th>Date</th>
			<th>Sample</th>
			<th>Quantity</th>
		</tr>
		</thead>
		<tbody>";
		foreach($data12 as $row):
		$html .="<tr>
			<td>".$row->Name."</td>
			<td>".$row->Company."</td>
			<td>".$row->Date."</td>
			<td>".$row->Sample."</td>
			<td>".$row->Quantity."</td>
			</tr>
			<tbody>";
		endforeach; 

	$html .="	</table>
		</body>
		</html>
		";
		$mpdf->WriteHTML($html);
		
		$mpdf->Output('Store report.pdf',\Mpdf\Output\Destination::DOWNLOAD);
	}




	

	public function excel()
	{
		
		$data = array('fdate'=>$_SESSION['fdate'],'tdate'=>$_SESSION['tdate']);
		$data12 = $this->print_con->puserList($data);


 $spreadsheet = new Spreadsheet();

$sheet = $spreadsheet->getActiveSheet();
$sheet->getPageSetup()->setFitToWidth(1);
$sheet->getPageSetup()->setFitToHeight(0);
$styleArrayFirstRow = [
	'font' => [
	    'bold' => true,
	]
        ];
        
        
        $highestColumn = $sheet->getHighestRow();
        
        
        $sheet->getStyle('' . $highestColumn . '' )->applyFromArray($styleArrayFirstRow);
$sheet->getColumnDimension('A')->setWidth(50);
$sheet->getColumnDimension('B')->setWidth(50);
$sheet->getColumnDimension('C')->setWidth(16);
$sheet->getColumnDimension('D')->setWidth(40);
$sheet->getColumnDimension('E')->setWidth(16);
$sheet->setCellValue('A1', 'Name');
$sheet->setCellValue('B1', 'Company');
$sheet->setCellValue('C1', 'Date');
$sheet->setCellValue('D1', 'Sample');
$sheet->setCellValue('E1', 'Quantity');
 $row = 2;
foreach($data12 as $key =>$value){
$sheet->setCellValue('A'.$row,$value->Name);
$sheet->setCellValue('B'.$row,$value->Company);
$sheet->setCellValue('C'.$row,$value->Date);
$sheet->setCellValue('D'.$row,$value->Sample);
$sheet->setCellValue('E'.$row,$value->Quantity);
$row++;
}  
header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
header('Content-Disposition: attachment;filename="Store_List.xlsx"');
header('Cache-Control: max-age=0');

$writer = new Xlsx($spreadsheet);
$writer->save('php://output'); 

	}
}