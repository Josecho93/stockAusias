/*
 * Copyright (c) 2015 by Rafael Angel Aznar Aparici (rafaaznar at gmail dot com)
 * 
 * openAUSIAS: The stunning micro-library that helps you to develop easily 
 *             AJAX web applications by using Java and jQuery
 * openAUSIAS is distributed under the MIT License (MIT)
 * Sources at https://github.com/rafaelaznar/openAUSIAS
 * 
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 * 
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 * 
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */

'use strict';

//var appName = 'AjaxStockNg';

var openAusias = angular.module('myApp', [
    'ngRoute',
    'Filters',
    'Services',
    'Directives',
    'systemControllers',
    'documentoControllers',

    'articuloControllers',
    'categoriaControllers',
    'usuarioControllers',    

    'tipodocumentoControllers',
    'tipousuarioControllers',
    'estadoControllers',
    'ui.bootstrap',
    'ngSanitize'
]);

openAusias.config(['$routeProvider', function ($routeProvider) {

        $routeProvider.when('/', {templateUrl: 'js/system/home.html', controller: 'HomeController'});
        //------------
        $routeProvider.when('/home', {templateUrl: 'js/system/home.html', controller: 'HomeController'});
        $routeProvider.when('/license', {templateUrl: 'js/system/license.html', controller: 'LicenseController'});
        //------------

//        $routeProvider.when('/documento/view/:id', {templateUrl: 'js/documento/view.html', controller: 'DocumentoViewController'});
//        $routeProvider.when('/documento/new', {templateUrl: 'js/documento/new.html', controller: 'DocumentoNewController'});
//        $routeProvider.when('/documento/edit/:id', {templateUrl: 'js/documento/edit.html', controller: 'DocumentoEditController'});
//        $routeProvider.when('/documento/remove/:id', {templateUrl: 'js/documento/remove.html', controller: 'DocumentoRemoveController'});
//        $routeProvider.when('/documento/plist/:page?/:rpp?', {templateUrl: 'js/documento/plist.html', controller: 'DocumentoPListController'});
//
//        //------------

        $routeProvider.when('/documento/view/:id', {templateUrl: 'js/documento/view.html', controller: 'DocumentoViewController'});
        $routeProvider.when('/documento/new', {templateUrl: 'js/documento/newedit.html', controller: 'DocumentoNewController'});
        $routeProvider.when('/documento/edit/:id', {templateUrl: 'js/documento/newedit.html', controller: 'DocumentoEditController'});
        $routeProvider.when('/documento/remove/:id', {templateUrl: 'js/documento/remove.html', controller: 'DocumentoRemoveController'});
        $routeProvider.when('/documento/plist/:page?/:rpp?', {templateUrl: 'js/documento/plist.html', controller: 'DocumentoPListController'});
        //------------

        $routeProvider.when('/usuario/view/:id', {templateUrl: 'js/usuario/view.html', controller: 'UsuarioViewController'});
        $routeProvider.when('/usuario/new/:id?', {templateUrl: 'js/usuario/newedit.html', controller: 'UsuarioNewController'});
        $routeProvider.when('/usuario/edit/:id', {templateUrl: 'js/usuario/newedit.html', controller: 'UsuarioEditController'});
        $routeProvider.when('/usuario/remove/:id', {templateUrl: 'js/usuario/remove.html', controller: 'UsuarioRemoveController'});
        $routeProvider.when('/usuario/plist/:page?/:rpp?', {templateUrl: 'js/usuario/plist.html', controller: 'UsuarioPListController'});
        $routeProvider.when('/usuario/selection/:page?/:rpp?', {templateUrl: 'js/tipousuario/selection.html', controller: 'UsuarioSelectionController'});
        //------------

        //
//        $routeProvider.when('/tipodocumento/view/:id', {templateUrl: 'js/tipodocumento/view.html', controller: 'TipodocumentoViewController'});
//        $routeProvider.when('/tipodocumento/selection/:page/:rpp', {templateUrl: 'js/tipodocumento/selection.html', controller: 'TipodocumentoSelectionController'});
//        
        
    
        $routeProvider.when('/articulo/view/:id', {templateUrl: 'js/articulo/view.html', controller: 'ArticuloViewController'});
        $routeProvider.when('/articulo/new', {templateUrl: 'js/articulo/new.html', controller: 'ArticuloNewController'});
        $routeProvider.when('/articulo/edit/:id', {templateUrl: 'js/articulo/edit.html', controller: 'ArticuloEditController'});
        $routeProvider.when('/articulo/remove/:id', {templateUrl: 'js/articulo/remove.html', controller: 'ArticuloRemoveController'});
        $routeProvider.when('/articulo/plist/:page?/:rpp?', {templateUrl: 'js/articulo/plist.html', controller: 'ArticuloPListController'});

        
        $routeProvider.when('/categoria/view/:id', {templateUrl: 'js/categoria/view.html', controller: 'CategoriaViewController'});
        $routeProvider.when('/categoria/new', {templateUrl: 'js/categoria/new.html', controller: 'CategoriaNewController'});
        $routeProvider.when('/categoria/edit/:id', {templateUrl: 'js/categoria/edit.html', controller: 'CategoriaEditController'});
        $routeProvider.when('/categoria/remove/:id', {templateUrl: 'js/categoria/remove.html', controller: 'CategoriaRemoveController'});
        $routeProvider.when('/categoria/plist/:page?/:rpp?', {templateUrl: 'js/categoria/plist.html', controller: 'CategoriaPListController'});
 
        
//                    
//        $routeProvider.when('/tipousuario/selection/:page/:rpp', {templateUrl: 'js/tipousuario/selection.html', controller: 'TipousuarioSelectionController'});        
//        //------------
//        $routeProvider.otherwise({redirectTo: '/'});

        $routeProvider.when('/tipodocumento/view/:id', {templateUrl: 'js/tipodocumento/view.html', controller: 'TipodocumentoViewController'});
        $routeProvider.when('/tipodocumento/selection/:page?/:rpp?', {templateUrl: 'js/tipodocumento/selection.html', controller: 'TipodocumentoSelectionController'});
        //------------
        $routeProvider.when('/tipousuario/selection/:page?/:rpp?', {templateUrl: 'js/tipousuario/selection.html', controller: 'TipousuarioSelectionController'});
        $routeProvider.when('/tipousuario/view/:id', {templateUrl: 'js/tipousuario/view.html', controller: 'TipousuarioViewController'});
        //------------
        $routeProvider.when('/estado/selection/:page?/:rpp?', {templateUrl: 'js/estado/selection.html', controller: 'EstadoSelectionController'});        
        //------------
        $routeProvider.otherwise({redirectTo: '/'});



    }]);

var moduloSistema = angular.module('systemControllers', []);
var moduloUsuario = angular.module('usuarioControllers', []);
var moduloDocumento = angular.module('documentoControllers', []);
var moduloCategoria = angular.module('categoriaControllers', []);
var moduloTipodocumento = angular.module('tipodocumentoControllers', []);
var moduloTipousuario = angular.module('tipousuarioControllers', []);

var moduloArticulo = angular.module('articuloControllers', []);


var moduloEstado = angular.module('estadoControllers', []);


