
import 'package:flutter/material.dart';
import 'package:google_geocoding_api/google_geocoding_api.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_places_flutter/google_places_flutter.dart';
import 'package:google_places_flutter/model/prediction.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';

import '../shared/ButtonWhite.dart';
import '../shared/button.dart';
import '../shared/generalToolbar.dart';

class UbicacionPage extends StatefulWidget {

  @override
  State<UbicacionPage> createState() => MapSampleState();

}



class MapSampleState extends State<UbicacionPage> {

  bool showMapa = false;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1024;


  GoogleMapController? mapController;

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  static const CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  late GoogleGeocodingApi geocoding;

  Marker? selectedMarker;

  Widget getTitle(BuildContext context){
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 40,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(36),
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 24,
                  height: 24,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(),
                  child: SizedBox(),
                ),
              ],
            ),
          ),
          Expanded(
            child: SizedBox(
              height: double.infinity,
              child: Text(
                'Ubica tu dirección',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF212529),
                  fontSize: 18,
                  fontFamily: 'Lexend',
                  fontWeight: FontWeight.w600,
                  height: 1.67,
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(36),
              ),
            ),
            child:
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 24,
                    height: 24,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(),
                    child: Icon(Icons.close),
                  ),
                ],
              ),
            )
            ,
          ),
        ],
      ),
    );

  }

  Widget getBottones(BuildContext context){
    return Column(children: [
      SizedBox(height: 10,),
      Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ButtonWidget(texto: "Buscar dirección", onPressed: (){
              setState(() {
                showMapa = !showMapa;
              });
            }),
            const SizedBox(height: 16),
            ButtonWhiteWidget(texto: "Usar mi ubicación actual", onPressed: (){

            }),
          ],
        ),
      )
    ]);
  }


  void _searchPlace(String place) async {
    try {
      final response = await geocoding.placeGeocoding(place);
      if (response.results.isNotEmpty) {
        final location = response.results.first.geometry?.location;

        if (location != null) {
          LatLng newPosition = LatLng(location.lat, location.lng);
          mapController?.animateCamera(CameraUpdate.newLatLngZoom(newPosition, 14));
          setState(() {
            selectedMarker = Marker(
              markerId: MarkerId("selected_place"),
              position: newPosition,
              infoWindow: InfoWindow(title: place),
            );
          });

        }


      }
    } catch (e) {
      print("Error buscando dirección: $e");
    }
  }

  void _showCustomBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) {
        return
          Container(
            constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height, // Máximo 70% de la pantalla
        ), child: Padding(
              padding: EdgeInsets.all(16),
              child:
              showMapa ?
              Column(children: [getTitle(context),
                SizedBox(
                    width: MediaQuery.of(context).size.width, // O un tamaño específico
                    height: 450,
                    child:
                    getBottones(context))],)
                  :
                  Column(children: [
                    getTitle(context),
                    SizedBox(
                        width: MediaQuery.of(context).size.width, // O un tamaño específico
                        height: 450,
                        child:
                        Column(
                            children:[
                              SizedBox(height: 10,),
                              GooglePlaceAutoCompleteTextField(
                                textEditingController: TextEditingController(),
                                googleAPIKey: "AIzaSyA1H__DLXSnVNduJqVm4nPpxQgxZqzrBcQ",
                                inputDecoration: InputDecoration(
                                  hintText: "Busca tu dirección en el mapa...",
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 14,
                                    fontFamily: 'Lexend',
                                    fontWeight: FontWeight.w400,
                                    height: 1.50,
                                  ),
                                  border: OutlineInputBorder(borderRadius:BorderRadius.all(Radius.circular(10.0)),
                                      borderSide: BorderSide(color: Colors.grey, width: 1.0)
                                  ),
                                  suffixIcon: Icon(Icons.search),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                    borderSide: BorderSide(color: Colors.grey, width: 1.0), // Borde cuando está inactivo
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                    borderSide: BorderSide(color: Colors.grey, width: 1.0), // Borde cuando está enfocado
                                  ),
                                ),
                                debounceTime: 600,
                                isLatLngRequired: true,
                                itemClick: (Prediction prediction) {
                                  _searchPlace(prediction.description!);
                                },

                              ),
                              SizedBox(height: 10,),
                              Expanded(
                                  child:
                                  GoogleMap(
                                    mapType: MapType.normal,
                                    initialCameraPosition: _kGooglePlex,
                                    onMapCreated: (GoogleMapController controller) {
                                      mapController = controller;
                                    },
                                  )
                              ),
                              SizedBox(
                                width: 328,
                                child: SizedBox(
                                  width: 328,
                                  child: Text(
                                    'Arrastra el mapa para fijar tu ubicación',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF212529),
                                      fontSize: 16,
                                      fontFamily: 'Lexend',
                                      fontWeight: FontWeight.w400,
                                      height: 1.50,
                                    ),
                                  ),
                                ),
                              ),
                              getBottones(context)
                            ]
                        )
                    )],)
          ))

          ;
      },
    );
  }




  @override
  Widget build(BuildContext context) {
    return (
        Scaffold(
          appBar: Generaltoolbar(title: 'Ubicacion',),
          body:
          SafeArea(child:
          SingleChildScrollView(
              child:
              Padding(padding: EdgeInsets.all(16),
                  child:
                  Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 80,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width,
                              child: Text(
                                'Ingresa los datos de tu domicilio',
                                style: TextStyle(
                                  color: Color(0xFF212529),
                                  fontSize: 28,
                                  fontFamily: 'Lexend',
                                  fontWeight: FontWeight.w600,
                                  height: 1.43,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 8),
                      Container(width: MediaQuery.of(context).size.width,height: 30,
                          child: Row(
                        children: [
                          Expanded(
                            flex: 7, // 80% del espacio
                            child: Container(
                              padding: EdgeInsets.all(4),
                              color: Colors.white,
                              child: LinearProgressBar(
                                minHeight: 4,
                                maxSteps: 6,
                                progressType: LinearProgressBar.progressTypeLinear, // Use Linear progress
                                currentStep: 1,
                                progressColor: Color(0xFF008392),
                                backgroundColor: Color(0xFFDEE3E3),
                                borderRadius: BorderRadius.circular(10), //  NEW
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 3, // 20% del espacio
                            child: Container(
                              child: SizedBox(
                                width: 80,
                                height: 21,
                                child: Text(
                                  'Paso 2 de 6',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF6C757D),
                                    fontSize: 14,
                                    fontFamily: 'Lexend',
                                    fontWeight: FontWeight.w400,
                                    height: 1.50,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )),
                      SizedBox(height: 24,),
                      GestureDetector(
                        onTap: () {

                          _showCustomBottomSheet(context);
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 80,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width,
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: SizedBox(
                                        child: Text(
                                          'Ubica tu domicilio',
                                          style: TextStyle(
                                            color: Color(0xFF495057),
                                            fontSize: 16,
                                            fontFamily: 'Lexend',
                                            fontWeight: FontWeight.w400,
                                            height: 1.50,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 4,),
                              Container(
                                width: double.infinity,
                                height: 48,
                                padding: const EdgeInsets.symmetric(horizontal: 16),
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(width: 1, color: Colors.grey),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: SizedBox(
                                        child: Text(
                                          'Marca la ubicación en el mapa',
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 16,
                                            fontFamily: 'Lexend',
                                            fontWeight: FontWeight.w400,
                                            height: 1.50,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    Container(
                                      width: 16,
                                      height: 16,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(),
                                      child: Icon(Icons.location_searching,size: 16,),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      )

                    ],
                  )
              )
          )
          ),
          bottomNavigationBar:
          SafeArea(child:
          Padding(
            padding: EdgeInsets.all(16),
            child: ButtonWidget(texto: 'Continuar', onPressed: () {
              Navigator.pushNamed(context, '/Mapa');
            },),
          )
          ),
        )

    );
  }
}