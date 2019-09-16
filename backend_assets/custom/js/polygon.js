var latitude =  22.719568;
var longitude =  75.857727;
var drawingManager;
var all_overlays = [];
var selectedShape;
var colors = ['#1E90FF', '#FF1493', '#32CD32', '#FF8C00', '#4B0082', '#C0262C', '#7FFF00','#FF0000','#820041','#EB6001','#872B4C','#AC0000','#ECB400','#000000'];
var selectedColor;
var colorButtons = {};
function clearSelection() {
  if (selectedShape) {
    selectedShape.setEditable(false);
    selectedShape = null;
  }
}
function setSelection(shape) {
  clearSelection();
  selectedShape = shape;
  shape.setEditable(true);
  selectColor(shape.get('fillColor') || shape.get('strokeColor'));
}
function deleteSelectedShape() {
  document.getElementById('boundary').innerHTML =""; 
    if (selectedShape) {
      selectedShape.setMap(null);
    }
    drawingManager.setOptions({
      drawingControl: true
    });
}
function deleteAllShape() {
  document.getElementById('boundary').innerHTML =""; 
  for (var i=0; i < all_overlays.length; i++)
  {
    all_overlays[i].overlay.setMap(null);
  }
  all_overlays = [];
   drawingManager.setOptions({
      drawingControl: true
    });
}
function selectColor(color) {
  selectedColor = color;
  for (var i = 0; i < colors.length; ++i) {
    var currColor = colors[i];
    colorButtons[currColor].style.border = currColor == color ? '2px solid #789' : '2px solid #fff';
  }
  // Retrieves the current options from the drawing manager and replaces the
  // stroke or fill color as appropriate.
  var polygonOptions = drawingManager.get('polygonOptions');
  polygonOptions.fillColor = color;
  drawingManager.set('polygonOptions', polygonOptions);
}
function setSelectedShapeColor(color) {
	$("#polygonColor").val(color);
  if (selectedShape) {
    if (selectedShape.type == google.maps.drawing.OverlayType.POLYLINE) {
      selectedShape.set('strokeColor', color);
    } else {
      selectedShape.set('fillColor', color);
    }
  }
}
function makeColorButton(color) {
  var button = document.createElement('span');
  button.className = 'color-button';
  button.style.backgroundColor = color;
  google.maps.event.addDomListener(button, 'click', function() {
    selectColor(color);
    setSelectedShapeColor(color);
  });

  return button;
}
function buildColorPalette() {
  var colorPalette = document.getElementById('color-palette');
  for (var i = 0; i < colors.length; ++i) {
     var currColor = colors[i];
     var colorButton = makeColorButton(currColor);
     colorPalette.appendChild(colorButton);
     colorButtons[currColor] = colorButton;
  }
  selectColor(colors[0]);
}


function initialize() {
  //var latlng = new google.maps.LatLng(39.305, -76.617);
    var map = new google.maps.Map(document.getElementById('map'), {
      center: new google.maps.LatLng(latitude,longitude),
      zoom: 10,
      mapTypeId: google.maps.MapTypeId.ROADMAP,
      //   disableDefaultUI: true,
      draggable: false, 
      zoomControl: false,
      scrollwheel: false, 
      disableDoubleClickZoom: true
    });
 /* var marker = new google.maps.Marker({
    position: {lat: latitude, lng: longitude },
    map: map,
    title: 'Hello World!'
  });*/
  var polyOptions = {
    strokeWeight: 0,
    fillOpacity: 0.45,
    editable: true,
    draggable: true,
     
  };
      
  drawingManager = new google.maps.drawing.DrawingManager({
    drawingMode: google.maps.drawing.OverlayType.POLYGON,
    markerOptions: {
      draggable: true
    },
    drawingControlOptions: {
      position: google.maps.ControlPosition.TOP_CENTER,
      drawingModes: ['polygon']
    },
    polylineOptions: {
      editable: true,
    draggable: true, zoomControl: true, scrollwheel: true, disableDoubleClickZoom: true

    },
      rectangleOptions: polyOptions,
      circleOptions: polyOptions,
      polygonOptions: polyOptions,
      map: map
  });

  google.maps.event.addListener(drawingManager, 'overlaycomplete', function(e) {
      all_overlays.push(e);

      if (e.type != google.maps.drawing.OverlayType.MARKER) {
        // Switch back to non-drawing mode after drawing a shape.
        drawingManager.setDrawingMode(null);
        // Add an event listener that selects the newly-drawn shape when the user
        // mouses down on it.
        var newShape = e.overlay;
        newShape.type = e.type;
        google.maps.event.addListener(newShape, 'click', function() {
            setSelection(newShape);
            document.getElementById('boundary').innerHTML ="";
            for (var i = 0; i < newShape.getPath().getLength(); i++) {
              document.getElementById('boundary').innerHTML += newShape.getPath().getAt(i).toUrlValue(6)+"|";
            }
  //  inside();
          });
          google.maps.event.addListener(newShape, 'dragend', function() {
            setSelection(newShape);
            document.getElementById('boundary').innerHTML ="";
              for (var i = 0; i < newShape.getPath().getLength(); i++) {
                document.getElementById('boundary').innerHTML += newShape.getPath().getAt(i).toUrlValue(6)+"|";
              }
             // inside();
            });
            setSelection(newShape);
    				for (var i = 0; i < newShape.getPath().getLength(); i++) {
    				document.getElementById('boundary').innerHTML += newShape.getPath().getAt(i).toUrlValue(6)+"|";
    				}
    			// inside();	
            console.log(newShape);
      }
  		drawingManager.setOptions({
  			drawingControl: false
  		});
  });
  google.maps.event.addListener(drawingManager, "drawingmode_changed", function() {

      if (drawingManager.getDrawingMode() != null) {
       map.setOptions({draggable: false, zoomControl: false, scrollwheel: false, disableDoubleClickZoom: true});
      }else{
          map.setOptions({draggable: true, zoomControl: true, scrollwheel: true, disableDoubleClickZoom: true});
      }
  });
        // Clear the current selection when the drawing mode is changed, or when the
  // map is clicked.
  google.maps.event.addListener(drawingManager, 'drawingmode_changed', clearSelection);
  google.maps.event.addListener(map, 'click', clearSelection);
  google.maps.event.addDomListener(document.getElementById('delete-button'), 'click', deleteSelectedShape);
  google.maps.event.addDomListener(document.getElementById('delete-all-button'), 'click', deleteAllShape);
  buildColorPalette();

  /*addres autofill*/
/*
        var autocomplete = new google.maps.places.Autocomplete('#autocomplete10');

        google.maps.event.addListener(autocomplete, 'place_changed', function () {
           var place   = this.getPlace();
          var aId      = 'autocomplete10';
           if (!place.geometry) {
             
              window.alert("No details available for input: '" + place.name + "'");
              return;
            }
            var latitude  = place.geometry.location.lat();
            var longitude = place.geometry.location.lng();
            $('.latitude'+aId).val(latitude);
            $('.longitude'+aId).val(longitude);
           console.log(place);


        // Get each component of the address from the place details
        // and fill the corresponding field on the form.
        for (var j = 0; j < place.address_components.length; j++) {
          var addressType = place.address_components[j].types[0];
          if (componentForm[addressType]) {
            var val = place.address_components[j][componentForm[addressType]];
                 $('.'+addressType+aId).val(val);
          }
        }

            


     
        });*/
  /*addres autofill*/
}
function saveMapToDataUrl() {

    var element = $("#map");

    html2canvas(element, {
        useCORS: true,
        onrendered: function(canvas) {
            var dataUrl= canvas.toDataURL("image/png");

            // DO SOMETHING WITH THE DATAURL
            // Eg. write it to the page
            document.write('<img src="' + dataUrl + '"/>');
        }
    });
}
google.maps.event.addDomListener(window, 'load', initialize);
      
      
      
      
$(document).ready(function(){
    $('input[type="radio"]').click(function(){
        var inputValue = $(this).attr("value");
        if(inputValue==1){
           $(".boxshow").show();
            $('#delete-all-button').trigger('click');
            
        }else{
          $(".boxshow").hide();
          $('#delete-all-button').trigger('click');
         
        }
        $('#delete-button').trigger('click');
       
    });
});