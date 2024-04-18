import 'package:flutter/material.dart';
import 'package:flutter_sixvalley_ecommerce/localization/language_constrants.dart';
import 'package:flutter_sixvalley_ecommerce/provider/order_provider.dart';
import 'package:flutter_sixvalley_ecommerce/provider/profile_provider.dart';
import 'package:flutter_sixvalley_ecommerce/utill/color_resources.dart';
import 'package:flutter_sixvalley_ecommerce/utill/dimensions.dart';
import 'package:flutter_sixvalley_ecommerce/utill/images.dart';
import 'package:flutter_sixvalley_ecommerce/view/basewidget/custom_app_bar.dart';
import 'package:flutter_sixvalley_ecommerce/view/basewidget/no_internet_screen.dart';
import 'package:flutter_sixvalley_ecommerce/view/screen/address/widget/address_list_screen.dart';
import 'package:provider/provider.dart';

import '../../../data/model/response/address_model.dart';
import '../../../provider/location_provider.dart';
import 'add_new_address_screen.dart';
class SavedAddressListScreen extends StatefulWidget {
  final bool fromGuest;
  final bool isRider;
  const SavedAddressListScreen({super.key,  this.fromGuest = false, this.isRider = false});

  @override
  State<SavedAddressListScreen> createState() => _SavedAddressListScreenState();
}

class _SavedAddressListScreenState extends State<SavedAddressListScreen> {

  initState(){
    Provider.of<LocationProvider>(context, listen: false).getRestrictedDeliveryZipList(context);

    print("object");

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) =>  AddNewAddressScreen(isBilling: false, isRider: widget.isRider))),
        backgroundColor: ColorResources.getPrimary(context),
        child: Icon(Icons.add, color: Theme.of(context).highlightColor),
      ),
      appBar: CustomAppBar(title: widget.fromGuest? getTranslated('ADDRESS_LIST', context) : getTranslated('SHIPPING_ADDRESS_LIST', context)),
      body: SafeArea(child: Consumer<ProfileProvider>(
        builder: (context, profile, child) {
          return SingleChildScrollView(
            child: Consumer<LocationProvider>(
                builder: (context, locationProvider, child) {
                  print("widget.isRider === ${widget.isRider}");
                  List<AddressModel> _riderAddress = [];
                  List<AddressModel> _regularAddress = [];
                  List zipCode = [];

                  for(var i in locationProvider.restrictedZipList){
                    print("rider zip code === ${i.zipcode}");
                    zipCode.add(i.zipcode.toString());
                  }

                  //get the al zip code
                  if(widget.isRider){
                    for(var i in profile.addressList) {
                      if (zipCode.contains(i.zip.toString())) {
                        print("_riderAddress === ${i.zip}");
                        _riderAddress.add(i);
                      }
                    }
                  }else{
                    _riderAddress.clear();
                  }



                return Column(
                  children: [
                    profile.addressList.isNotEmpty ?  SizedBox(
                      child: widget.isRider
                          ? _riderAddress.isNotEmpty
                          ? ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: _riderAddress.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return  InkWell(
                            onTap: () {
                              Provider.of<OrderProvider>(context, listen: false).setAddressIndex(index);
                              Navigator.pop(context, index);
                            },
                            child: Padding(padding: const EdgeInsets.symmetric(horizontal: Dimensions.paddingSizeDefault),
                              child: Container(
                                margin: const EdgeInsets.only(top: Dimensions.paddingSizeSmall),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: ColorResources.getIconBg(context),
                                  border: index == Provider.of<OrderProvider>(context).addressIndex ? Border.all(width: 2, color: Theme.of(context).primaryColor) : null,
                                ),
                                child:  AddressListPage(
                                    address:  _riderAddress[index]
                                ),
                              ),
                            ),
                          );
                        },
                      )
                          : Padding(
                              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height/3),
                                child: Center(
                                  child: Container(
                                    alignment: Alignment.center,
                                    margin: const EdgeInsets.only(bottom: Dimensions.paddingSizeLarge),
                                    child: const NoInternetOrDataScreen(isNoInternet: false,
                                    message: 'no_address_found',
                                    icon: Images.noAddress,)
                                  ),
                                ),
                              )
                          : ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: profile.addressList.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {


                          return  InkWell(
                            onTap: () {Provider.of<OrderProvider>(context, listen: false).setAddressIndex(index);
                              Navigator.pop(context, index);
                            },
                            child: Padding(padding: const EdgeInsets.symmetric(horizontal: Dimensions.paddingSizeDefault),
                              child: Container(
                                margin: const EdgeInsets.only(top: Dimensions.paddingSizeSmall),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: ColorResources.getIconBg(context),
                                  border: index == Provider.of<OrderProvider>(context).addressIndex ? Border.all(width: 2, color: Theme.of(context).primaryColor) : null,
                                ),
                                child:  AddressListPage(
                                    address:  profile.addressList[index]
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    )  : Padding(
                       padding: EdgeInsets.only(top: MediaQuery.of(context).size.height/3),
                      child: Center(
                        child: Container(
                          alignment: Alignment.center,
                          margin: const EdgeInsets.only(bottom: Dimensions.paddingSizeLarge),
                          child: const NoInternetOrDataScreen(isNoInternet: false,
                            message: 'no_address_found',
                            icon: Images.noAddress,)
                        ),
                      ),
                    ),
                  ],
                );
              }
            ),
          );
        },
      )),
    );
  }
}
