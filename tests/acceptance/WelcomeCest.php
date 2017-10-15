<?php


class WelcomeCest
{
    public function _before(AcceptanceTester $I)
    {
    }

    public function _after(AcceptanceTester $I)
    {
    }

    // tests
    public function iAmWarmlyWelcomed(AcceptanceTester $I)
    {
        $I->amOnPage('/');
    }
}
