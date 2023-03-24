<?php

namespace MoneticoDemoWebKit\Examples;

use MoneticoDemoWebKit\Monetico\Collections\Currency;
use MoneticoDemoWebKit\Monetico\Collections\Language;
use MoneticoDemoWebKit\Monetico\Request\OrderContext;
use MoneticoDemoWebKit\Monetico\Request\OrderContextBilling;
use MoneticoDemoWebKit\Monetico\Request\OrderContextClient;
use MoneticoDemoWebKit\Monetico\Request\OrderContextShipping;
use MoneticoDemoWebKit\Monetico\Request\OrderContextShoppingCart;
use MoneticoDemoWebKit\Monetico\Request\OrderContextShoppingCartItem;
use MoneticoDemoWebKit\Monetico\Request\PaymentRequest;

/**
 *  Example of a payment request with a complete order context
 */
class FullOrderContextExample implements IPaymentRequestExample
{

    /**
     * @var PaymentRequest
     */
    private $paymentRequest;

    public function __construct($user, $abonnement)
    {
        // Do NOT generate reference like this in production
        // since different clients could have the same reference if they try to pay at the same second
        // $generatedReference = "REF" . str_pad($abonnement->abonnements_id, 6, "0", STR_PAD_LEFT);

        $generatedReference = uniqid("ref");

        $billing = new OrderContextBilling(
            $abonnement->etablissements_adresse, 
            $abonnement->etablissements_pays, 
            $abonnement->etablissements_codepostal, "FR");

        // $billing->setPhone($abonnement->etablissements_telephone); // see technical documentation for correct formatting
        $billing->setCivility("M");
        $billing->setFirstName($user->users_nom);
        $billing->setLastName($user->users_prenoms);
        $billing->setName($user->users_nom . " " . $user->users_prenoms);
        $billing->setAddress($abonnement->etablissements_adresse);
        // $billing->setCountrySubdivision("FR-75");
        $billing->setEmail($user->users_email);

        $client = new OrderContextClient();
        $client->setCivility("M");
        $client->setFirstName($user->users_nom);
        $client->setLastName($user->users_prenoms);
        $client->setName($user->users_nom . " " . $user->users_prenoms);
        $client->setAddress($abonnement->etablissements_adresse);
        // $client->setAddressLine1("18 rue de l'adresse");
        $client->setCity($abonnement->etablissements_ville);
        $client->setPostalCode($abonnement->etablissements_codepostal);
        $client->setCountry("FR");
        // $client->setCountrySubdivision("FR-75");
        $client->setEmail($user->users_email);
        // $client->setPhone("+33-123456789"); // see technical documentation for correct formatting
        // $client->setAccountAge(new \DateTime('2015-11-28'));
        // $client->setAddCardNbLast24Hours(0);
        $client->setAuthenticationMethod("own_credentials");
        // $client->setBirthCity("Paris");
        // $client->setBirthCountry("FR");
        // $client->setBirthCountrySubdivision("FR-75");
        // $client->setBirthdate(new \DateTime('1978-03-27'));
        // $client->setBirthPostalCode("75000");
        $client->setLast24HoursTransactions(1);
        // $client->setLast6MonthsPurchase(3);
        // $client->setLastPasswordChange(new \DateTime('2020-01-18'));
        // $client->setLastYearTransactions(8);
        // $client->setNationalIDNumber("123456789012345");
        // $client->setPaymentMeanAge(new \DateTime('2018-01-01'));
        // $client->setPriorAuthenticationMethod("challenge");
        // $client->setPriorAuthenticationTimestamp(new \DateTime('-25 minutes'));
        // $client->setSuspiciousAccountActivity(false);
        // $client->setLastAccountModification(new \DateTime('2020-09-02'));
        // $client->setAuthenticationTimestamp((new \DateTime('-5 minutes')));

        $shipping = new OrderContextShipping();
        $shipping->setCivility("M");
        $shipping->setFirstName($user->users_nom);
        $shipping->setLastName($user->users_prenoms);
        $shipping->setName($user->users_nom . " " . $user->users_prenoms);
        $shipping->setAddress($abonnement->etablissements_adresse);
        // $shipping->setAddressLine1("18 rue de l'adresse");
        $shipping->setCity($abonnement->etablissements_ville);
        $shipping->setPostalCode($abonnement->etablissements_codepostal);
        $shipping->setCountry("FR");
        // $shipping->setCountrySubdivision("FR-75");
        $shipping->setEmail($user->users_email);
        // $shipping->setPhone("+33-123456789"); // see technical documentation for correct formatting
        // $shipping->setDeliveryTimeframe("three_day");
        // $shipping->setFirstUseDate(new \DateTime('2017-02-23'));
        // $shipping->setMatchBillingAddress(true);
        // $shipping->setShipIndicator("billing_address");

        $shoppingCartItem = new OrderContextShoppingCartItem();
        $shoppingCartItem->setName($abonnement->etablissements_nom);
        $shoppingCartItem->setDescription($abonnement->etablissements_presentation);
        $shoppingCartItem->setProductCode("subscription");
        // $shoppingCartItem->setProductCode($abonnement->etablissements_nom);

        // $shoppingCartItem->setProductRisk("normal");
        $shoppingCartItem->setQuantity(1);
        $shoppingCartItem->setUnitPrice($abonnement->abonnements_montant * 100); // en centime
        // $shoppingCartItem->setProductSKU("REF-FRIT-267");
        // $shoppingCartItem->setImageURL("http://www.siteweb.ext/image-friteuse.png");

        $shoppingCart = new OrderContextShoppingCart();
        // $shoppingCart->setGiftCardAmount(1000);
        // $shoppingCart->setGiftCardCount(1);
        $shoppingCart->setGiftCardCurrency("EUR");
        // $shoppingCart->setPreOrderDate(new \DateTime("-30 days"));
        $shoppingCart->setPreorderIndicator(true);
        $shoppingCart->setReorderIndicator(false);
        $shoppingCart->setShoppingCartItems([$shoppingCartItem]);

        $context = new OrderContext($billing);
        $context->setOrderContextClient($client);
        $context->setOrderContextShipping($shipping);
        $context->setOrderContextShoppingCart($shoppingCart);

        $paymentRequest = new PaymentRequest($generatedReference, (float)$abonnement->abonnements_montant, Currency::EUR, Language::FR, $context);
        $paymentRequest->setTexteLibre('Do not forget to HTML-encode every field value otherwise characters like " or \' might cause issues');
        /**
         * To set the url_retour_ok and url_retour_err manually, please use these functions
         * $paymentRequest->setUrlRetourOk("https://www.mywebsite.com");
         * $paymentRequest->setUrlRetourErreur();
         */
        $paymentRequest->setUrlRetourOk(base_url("pro/abonnement"));
        $paymentRequest->setUrlRetourErreur(base_url("pro/abonnement"));

        $this->setPaymentRequest($paymentRequest);
    }

    public function getDescription()
    {
        return "This example shows an example of payment request with the order context completely filled.";
    }

    public function getName()
    {
        return "Complete order context example";
    }

    /**
     * @return \MoneticoDemoWebKit\Monetico\Request\PaymentRequest
     */
    public function getPaymentRequest(): \MoneticoDemoWebKit\Monetico\Request\PaymentRequest
    {
        return $this->paymentRequest;
    }

    /**
     * @param \MoneticoDemoWebKit\Monetico\Request\PaymentRequest $paymentRequest
     */
    public function setPaymentRequest(\MoneticoDemoWebKit\Monetico\Request\PaymentRequest $paymentRequest): void
    {
        $this->paymentRequest = $paymentRequest;
    }
}