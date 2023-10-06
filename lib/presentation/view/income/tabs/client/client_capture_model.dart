import 'package:ledgerdot/domain/model/address.dart';
import 'package:ledgerdot/domain/model/client.dart';
import 'package:ledgerdot/domain/model/contact.dart';
import 'package:ledgerdot/infrastructure/setup/router/app.locator.dart';
import 'package:ledgerdot/infrastructure/setup/router/app.router.dart';
import 'package:ledgerdot/presentation/view/income/tabs/client/client_capture_view.form.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class ClientCaptureModel extends FormViewModel {
  //final log = getLogger('PaymentCaptureViewModel');
  final _routerService = locator<RouterService>();

  //this is the initial, it should be empty
  var _client = Client(
    id: 2,
    name: 'Cronos Europa NV',
    alias: 'Cronos',
    vatNo: '806319824',
    isVatPayer: true,
    address: Address(
        id: 23425,
        street: "Avenue des Arts, 46",
        city: "Brusells",
        country: "Belgium",
        county: 'Brussels'),
    contact: Contact(
        id: 4235252, name: "Emily Aganaye", email: "emily.aganye@gmail.com", phoneNo: "7423455523"),
  );

  var _emptyClient = Client.empty();

  Client get client => _client;

  void saveClient(Client client) {
    _client = client;
    notifyListeners();
  }

  void initializeForm() {
    clientNameValue = client.name;
    aliasValue = client.alias;
  }

  Future<void> onAccept() async {
    //log.i('Payment submited!');

    if (!isFormValid) {
      setValidationMessage("Data not valid");
      rebuildUi();
      return;
    }

    // clients
    await _routerService.navigateTo(
      HomeViewRoute(viewIndex: 1, tabIndex: 3),
    );
  }
}
