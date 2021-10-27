<?php

namespace App\Classe;

use Mailjet\Client;
use Mailjet\Resources;

class Mail
{
    private $api_key = '6940aa6285746fc5c41f781793903e41';

    private $api_key_secret = '88a5af3b1e0770625639c24035017cbb';


    public function send($to_email, $to_name, $subject, $content)
    {
        $mj = new Client($this->api_key, $this->api_key_secret, true, ['version' => 'v3.1']);
        $body = [
            'Messages' => [
                [
                    'From' => [
                        'Email' => "laboutiquefrancaise@protonmail.com",
                        'Name' => "La Boutique"
                    ],
                    'To' => [
                        [
                            'Email' => $to_email,
                            'Name' => $to_name
                        ]
                    ],
                    'TemplateID' => 3288319,
                    'TemplateLanguage' => true,
                    'Subject' => $subject,
                    'Variables' => [
                        'contentmessage2' => $content,
                    ]
                ]
            ]
        ];
        $response = $mj->post(Resources::$Email, ['body' => $body]);
        $response->success();
    }
}
