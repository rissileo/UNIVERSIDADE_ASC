
var app = angular.module('appGerarTurmasAlunos', []);
app.controller('GerarTurmasAlunosController', function ($scope, $http, $timeout) {

    $scope.enableSuccessDialog = false;
    $scope.enableErrorDialog = false;
    $scope.sMessage = "";

    $scope.baseUrl = window.location.href;

    $scope.inParameter = {
        iQtdAlunosPorTurma: 0,
        iQtdTurmas: 0
    };



    $scope.ProcessaGeracao = function () {

        console.log($scope.inParameter);

        $http.post($scope.baseUrl + "/ExecutaCriacaoTurmasAlunos", $scope.inParameter).then(function (response) {

            // This function handles success

            //console.log(response)

            switch (parseInt(response.data.retorno)) {
                case 100:
                    $scope.enableSuccessDialog = true;
                    $scope.enableErrorDialog = false;
                    $scope.sMessage = "Turmas e Alunos Gerados com Sucesso!";
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

    }
    $scope.Init();

});

