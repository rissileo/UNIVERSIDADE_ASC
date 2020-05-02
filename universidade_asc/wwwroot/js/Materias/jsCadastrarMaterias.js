
var app = angular.module('appCadastrarMaterias', []);
app.controller('CadastrarMateriasController', function ($scope, $http, $timeout) {

    $scope.enableSuccessDialog = false;
    $scope.enableErrorDialog = false;
    $scope.sMessage = "";

    $scope.baseUrl = window.location.href;

    $scope.inParameter = {
        idMateria: 0,
        dcMateria: null,
        pesoAV1: 0,
        pesoAV2: 0,
        pesoAV3: 0
    };

    $scope.gridMateriaData = {};

    $scope.ListaMaterias = function () {
        $http.post($scope.baseUrl + "/ListaMaterias").then(function (response) {
            $scope.gridMateriaData = response.data;
        }, function (response) {
        });
    }

    $scope.CadastraMateria = function () {

        console.log($scope.inParameter);

        $http.post($scope.baseUrl + "/CadastrarMaterias", $scope.inParameter).then(function (response) {

            // This function handles success

            //console.log(response)

            switch (parseInt(response.data.retorno)) {
                case 100:
                    $scope.enableSuccessDialog = true;
                    $scope.enableErrorDialog = false;
                    $scope.sMessage = "Matéria Cadastrada com Sucesso!";
    
                    $scope.ListaMaterias();
                    break;
                default:
                    $scope.enableSuccessDialog = false;
                    $scope.enableErrorDialog = true;
                    $scope.sMessage = response.data.retornO_MESSAGE;
            }

            $timeout(function () {
                $scope.enableSuccessDialog = false;
                $scope.enableErrorDialog = false;
                $scope.sMessage = "";
            }, 10000);
        }, function (response) {

            // this function handles error

        });
    }

    $scope.Init = function () {
        $scope.ListaMaterias();
    }
    $scope.Init();

});

