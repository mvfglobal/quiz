<?php

require __DIR__.'/../vendor/autoload.php';

use \Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;

use Monolog\Logger;
use Monolog\Handler\StreamHandler;

$config['displayErrorDetails'] = true;
$config['addContentLengthHeader'] = false;

$app = new \Slim\App(['settings' => $config]);

$app->get('/', function (Request $request, Response $response) {
    $log = new Logger('tek-on-quiz');
    $log->pushHandler(new StreamHandler(__DIR__ . '/../storage/request.log', Logger::WARNING));
    $log->warning(
        json_encode([
            'uri' => $request->getUri(),
            'requestTarget' => $request->getRequestTarget(),
            'headers' => $request->getHeaders(),
            'parameters' => $request->getQueryParams(),
        ])
    );

});

$app->run();

