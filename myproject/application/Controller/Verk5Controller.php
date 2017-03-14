<?php
namespace Mini\Controller;

class Verk5Controller
{
    public function index()
    {
        // load views
        require APP . 'view/verk5/index.php';
    }

    public function nanar($paramItem)
    {
    	require APP . 'veiw/verk5/nanar.php';
    }
}
