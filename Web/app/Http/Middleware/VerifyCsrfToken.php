<?php

namespace App\Http\Middleware;

use Illuminate\Foundation\Http\Middleware\VerifyCsrfToken as BaseVerifier;

class VerifyCsrfToken extends BaseVerifier
{
    /**
     * The URIs that should be excluded from CSRF verification.
     *
     * @var array
     */
    protected $except = [
        'v1/summoner/verify',
        'v1/patch/addPatch',
        'v1/patch/addNote',
        'v1/build/addBuild',
        'v1/build/addTopPlayer',
        'v1/build/editBuild',
        'v1/build/removeBuild',
        'v1/build/addRate'
    ];
}
