<?php declare(strict_types=1);

use Shopware\Core\TestBootstrapper;

$loader = (new TestBootstrapper())
    ->addCallingPlugin()
    ->addActivePlugins('HelloWorld')
    ->bootstrap()
    ->getClassLoader();

$loader->addPsr4('HelloWorld\\Tests\\', __DIR__);