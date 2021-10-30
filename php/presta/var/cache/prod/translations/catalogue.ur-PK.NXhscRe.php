<?php

use Symfony\Component\Translation\MessageCatalogue;

$catalogue = new MessageCatalogue('ur-PK', array (
));

$catalogueUr = new MessageCatalogue('ur', array (
));
$catalogue->addFallbackCatalogue($catalogueUr);

return $catalogue;
