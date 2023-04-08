import 'package:flutter/widgets.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

/// Use to get the translation
var l10n = (BuildContext ctx) => AppLocalizations.of(ctx)!;

/// Use to set a fake translation, while real translation is not ready
var ft = (BuildContext ctx) => (String s) => AppLocalizations.of(ctx)!.fake(s);
