angular.module('myApp').controller 'AppCtrl', ['$scope',
  ($scope) ->
    # Set of Photos
    $scope.photos = [
      src: "photo1.jpg"
      desc: "Image 01"
    ,
      src: "photo2.jpg"
      desc: "Image 02"
    ,
      src: "photo5.jpg"
      desc: "Image 03"
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
