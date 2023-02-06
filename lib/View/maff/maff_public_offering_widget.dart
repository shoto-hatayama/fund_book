import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:fund_book/model/public_offering_list_model.dart';

class MaffPublicOfferingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<PublicOfferingListModel>(
      create: (_) => PublicOfferingListModel()..getPublicOffering(),
      child: Scaffold(
        body: Consumer<PublicOfferingListModel>(
          builder: (context, model, child) {
            final public_offering = model.public_Offering;
            final list_public_offering = public_offering
                .map((public_offering) => Card(
                    child: ListTile(
                        title: Text(public_offering.name),
                        subtitle: Text(public_offering.getFormatedBeginDate() +
                            "〜" +
                            public_offering.getFormatedEndDate()),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(100)),
                        ))))
                .toList();
            return ListView(
              children: list_public_offering,
            );
          },
        ),
      ),
    );
    //
  }
}
