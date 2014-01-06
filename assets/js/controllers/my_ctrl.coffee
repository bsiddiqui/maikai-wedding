angular.module('myApp').controller 'AppCtrl', ['$scope',
  ($scope) ->
    # Set of Photos
    $scope.photos = [
      src: "img/photo1"
      desc: "Image 01"
    ,
      src: "img/photo2"
      desc: "Image 02"
    ,
      src: "img/photo3"
      desc: "Image 03"
    ,
      src: "img/photo4"
      desc: "Image 04"
    ]

    # initial image index
    $scope._Index = 0

    # if a current image is the same as requested image
    $scope.isActive = (index) ->
      $scope._Index is index

    # show prev image
    $scope.showPrev = ->
      $scope._Index = (if ($scope._Index > 0) then --$scope._Index else $scope.photos.length - 1)

    # show next image
    $scope.showNext = ->
      $scope._Index = (if ($scope._Index < $scope.photos.length - 1) then ++$scope._Index else 0)

    # show a certain image
    $scope.showPhoto = (index) ->
      $scope._Index = index
]
