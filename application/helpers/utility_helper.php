<?php

function dateformat(?string $date)
{
    if($date === null) 
    {
        return null;
    }
    $dt = new DateTime($date);

    return $dt->format("d/m/Y");
}