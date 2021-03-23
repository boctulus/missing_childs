<?php 

namespace simplerest\libs;

use PHPMailer\PHPMailer\PHPMailer;
use simplerest\libs\Factory;

class Utils {
	static function sendMail(string $to_email, string $to_name, $subject, $body, $alt_body = null){
		$config = Factory::config();

		$mail = new PHPMailer();
        $mail->isSMTP();
        
        foreach ($config['email']['mailer']['object'] as $k => $prop){
			$mail->{$k} = $prop;
        }	
    
        $mail->setFrom($config['email']['mailer']['from'][0], $config['email']['mailer']['from'][1]);    
        $mail->addAddress($to_email, $to_name);
       
        $mail->subject = $subject;
		$mail->msgHTML($body); 
		
		if (!is_null($alt_body))
			$mail->AltBody = $alt_body;
		
		//$mail->addAttachment('images/phpmailer_mini.png');       
        

        if (!$mail->send())
        {	
            return $mail->ErrorInfo;
        }else
            return true;
	}
}