<?php
    require 'checkout/MoneticoConfig.php';
    require 'checkout/PaymentRequestDemo.class.php';
    require 'checkout/PaymentResponseDemo.class.php';
    require 'checkout/ResponseInterface.class.php';

    require 'checkout/Examples/Response/PaymentResponseExample.php';
    require 'checkout/Examples/Response/BasicPaymentResponseExample.php';
    require 'checkout/Examples/Response/SplitPaymentFirstInstalmentResponseExample.php';

    require 'checkout/Examples/IPaymentRequestExample.php';
    require 'checkout/Examples/BasicPaymentExample.php';
    require 'checkout/Examples/Bypass3DSecureChallengePaymentExample.php';
    require 'checkout/Examples/SplitPaymentExample.php';
    require 'checkout/Examples/ExpressPaymentOptionExample.php';
    require 'checkout/Examples/FullOrderContextExample.php';
    require 'checkout/Examples/Cofidis1EuroDirectRedirectionExample.php';
    require 'checkout/Examples/CofidisPreFillPaymentExample.php';

    require 'checkout/Monetico/HmacComputer.php';

    require 'checkout/Monetico/Collections/Currency.php';
    require 'checkout/Monetico/Collections/Language.php';
    require 'checkout/Monetico/Collections/PaymentProtocol.php';
    require 'checkout/Monetico/Collections/ThreeDSecureChallengeValue.php';

    require 'checkout/Monetico/Request/OrderContext.php';
    require 'checkout/Monetico/Request/OrderContextBilling.php';
    require 'checkout/Monetico/Request/OrderContextClient.php';
    require 'checkout/Monetico/Request/OrderContextShipping.php';
    require 'checkout/Monetico/Request/OrderContextShoppingCart.php';
    require 'checkout/Monetico/Request/OrderContextShoppingCartItem.php';
    require 'checkout/Monetico/Request/PaymentRequest.php';
    require 'checkout/Monetico/Request/SplitPaymentRequest.php';
    require 'checkout/Monetico/Request/CofidisPaymentInformations.php';
    require 'checkout/Monetico/Request/PreAuthorizedPayment.php';

    class Checkout {

    }