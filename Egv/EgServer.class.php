<?php

namespace Egv;

class EgServer {

    public $hpapi;
    public $userUUID;

    public function __construct (\Hpapi\Hpapi $hpapi) {
        $this->hpapi                        = $hpapi;
        $this->userUUID                     = $this->hpapi->userUUID;
    }

    public function __destruct ( ) {
    }

    public function getUserDetail () {
        $o                                  = new \stdClass ();
        $o->expires                         = strtotime ('today midnight');
        $o->expireDateTime                  = date ('r');
        $o->dayStart                        = $this->hpapi->datetime->format('Y-m-d').'T00:00:00+00:00';
        $w                                  = clone $this->hpapi->datetime;
        $w->modify ('last '.EGV_WEEK_START);
        $o->weekStart                       = $w->format('Y-m-d').'T00:00:00+00:00';
        // User details
        try {
            $result                         = $this->hpapi->dbCall (
                'egvUserDetail'
               ,$this->userUUID
            );
            $o->user                        = $this->hpapi->parse2D ($result)[0];
        }
        catch (\Exception $e) {
            $this->hpapi->object->response->notice = $e->getMessage ();
            throw new \Exception (EGV_STR_DB_USER_DETAIL);
            return false;
        }
        return $o;
    }

}

?>
