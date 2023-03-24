<?php

namespace MoneticoDemoWebKit;

use MoneticoDemoWebKit\Examples\IPaymentRequestExample;
use MoneticoDemoWebKit\Examples\BasicPaymentExample;
use MoneticoDemoWebKit\Examples\Bypass3DSecureChallengePaymentExample;
use MoneticoDemoWebKit\Examples\SplitPaymentExample;
use MoneticoDemoWebKit\Examples\ExpressPaymentOptionExample;
use MoneticoDemoWebKit\Examples\FullOrderContextExample;
use MoneticoDemoWebKit\Examples\Cofidis1EuroDirectRedirectionExample;
use MoneticoDemoWebKit\Examples\CofidisPreFillPaymentExample;

/**
 *  This is the page showing payment requests examples.
 *  See the code of the different example classes to understand how to initialize a new payment request.
 *  You can also look at the class file associated with this page to see how to build the form to call the
 *  Monetico payment page.
 */
class PaymentRequestDemo
{
    /**
     * @var string
     */
    private $moneticoPayementPageUrl = PAYMENT_PAGE_URL;

    /**
     * @var array
     */
    private $orderContext;

    /**
     * @return string
     */
    public function getMoneticoPayementPageUrl()
    {
        return $this->moneticoPayementPageUrl;
    }

    /**
     * @param string $moneticoPayementPageUrl
     */
    public function setMoneticoPayementPageUrl($moneticoPayementPageUrl)
    {
        $this->moneticoPayementPageUrl = $moneticoPayementPageUrl;
    }


    /**
     * @return array
     */
    public function getOrderContext()
    {
        return $this->orderContext;
    }

    /**
     * @param array $examples
     */
    public function setOrderContext($orderContext)
    {
        $this->orderContext = $orderContext;
    }

    function __construct($user, $abonnement)
    {
        $this->setOrderContext(new FullOrderContextExample($user, $abonnement));
    }
}