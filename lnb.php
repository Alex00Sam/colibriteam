<?php
require 'vendor/autoload.php';

$app = new \atk4\ui\App('National library of Latvia');
$app->initLayout('Centered');

echo "National library of Latvia";

echo "The National Library was founded on 29 August 1919, one year after independence, as the State Library (Valsts Bibliotēka).[1] Its first chief librarian and bibliographer was Jānis Misiņš (1862-1944) who made his immense private collection the basis of the new library.[2] Within a year, until 1920, the stocks had grown to 250,000 volumes.[3] Starting in the same year, all publishers were obliged to hand in a deposit copy of their works. Since 1927, the Library has published the National Bibliography of Latvia.

There were significant additions in 1939 and 1940, when the State Library took over many of the libraries and collections of the Baltic Germans, most of whom resettled to the Reich. Among these was a large part of the collection of the Society for History and Archaeology of Russia's Baltic Provinces, est. 1834, the primary historical society of the Baltic Germans.[1] In 1940, holdings encompassed 1.7 million volumes,[3] so that they had to be stored in two different locations in the Old Town (Jēkaba iela 6/8 and Anglikāņu iela 5).";

$filepath= ‘/desktop/lnb.jpg’;
echo ‘<img src=“’.$filepath.‘”>”
