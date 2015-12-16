angular.module "receita"
  .controller 'Home::IndexCtrl', [
    '$scope', '$routeParams', '$location'
    ($scope, $routeParams, $location)->


      $scope.search = (keywords)->
        $location.path("/").search('keywords',keywords)

      if $routeParams.keywords
        keywords = $routeParams.keywords.toLowerCase()
        $scope.recipes = $scope.recipes.filter (recipe)->
          recipe.name.toLowerCase().indexOf(keywords) != -1
      else
        $scope.recipes = []
  ]
