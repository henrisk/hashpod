///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

part of 'translations.g.dart';

// Path: <root>
typedef TranslationsEn = Translations; // ignore: unused_element
class Translations with BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final t = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	Translations $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => Translations(meta: meta ?? this.$meta);

	// Translations
	late final TranslationsAppEn app = TranslationsAppEn.internal(_root);
	late final TranslationsNavEn nav = TranslationsNavEn.internal(_root);
	late final TranslationsServerEn server = TranslationsServerEn.internal(_root);
	late final TranslationsContainerEn container = TranslationsContainerEn.internal(_root);
	late final TranslationsDashboardEn dashboard = TranslationsDashboardEn.internal(_root);
	late final TranslationsDialogEn dialog = TranslationsDialogEn.internal(_root);
	late final TranslationsErrorEn error = TranslationsErrorEn.internal(_root);
}

// Path: app
class TranslationsAppEn {
	TranslationsAppEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Hashpod'
	String get name => 'Hashpod';

	/// en: 'Your fleet, at a glance.'
	String get tagline => 'Your fleet, at a glance.';
}

// Path: nav
class TranslationsNavEn {
	TranslationsNavEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Fleet'
	String get fleet => 'Fleet';

	/// en: 'Settings'
	String get settings => 'Settings';
}

// Path: server
class TranslationsServerEn {
	TranslationsServerEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Add Server'
	String get add => 'Add Server';

	/// en: 'Edit Server'
	String get edit => 'Edit Server';

	/// en: 'Remove Server'
	String get remove => 'Remove Server';

	/// en: 'Display Name'
	String get displayName => 'Display Name';

	/// en: 'Host / IP'
	String get host => 'Host / IP';

	/// en: 'Port'
	String get port => 'Port';

	/// en: 'SSH User'
	String get user => 'SSH User';

	/// en: 'Private Key Path'
	String get privateKeyPath => 'Private Key Path';

	/// en: 'Container Manager'
	String get manager => 'Container Manager';

	/// en: 'Connection Type'
	String get connectionType => 'Connection Type';

	/// en: 'Local (socket)'
	String get connectionTypeLocal => 'Local (socket)';

	/// en: 'Remote (SSH)'
	String get connectionTypeRemote => 'Remote (SSH)';

	/// en: 'No servers yet. Click + to add your first server.'
	String get noServers => 'No servers yet.\nClick + to add your first server.';

	/// en: 'Online'
	String get statusOnline => 'Online';

	/// en: 'Offline'
	String get statusOffline => 'Offline';

	/// en: 'Connecting...'
	String get statusConnecting => 'Connecting...';
}

// Path: container
class TranslationsContainerEn {
	TranslationsContainerEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Running'
	String get running => 'Running';

	/// en: 'Stopped'
	String get stopped => 'Stopped';

	/// en: 'Paused'
	String get paused => 'Paused';

	/// en: 'All'
	String get all => 'All';

	/// en: 'Search containers...'
	String get search => 'Search containers...';

	/// en: 'Name'
	String get name => 'Name';

	/// en: 'Image'
	String get image => 'Image';

	/// en: 'Ports'
	String get ports => 'Ports';

	/// en: 'Status'
	String get status => 'Status';

	/// en: 'CPU'
	String get cpu => 'CPU';

	/// en: 'Memory'
	String get memory => 'Memory';

	late final TranslationsContainerActionsEn actions = TranslationsContainerActionsEn.internal(_root);
}

// Path: dashboard
class TranslationsDashboardEn {
	TranslationsDashboardEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Total CPU'
	String get totalCpu => 'Total CPU';

	/// en: 'Total RAM'
	String get totalRam => 'Total RAM';

	/// en: 'Running'
	String get containersRunning => 'Running';

	/// en: 'Stopped'
	String get containersStopped => 'Stopped';
}

// Path: dialog
class TranslationsDialogEn {
	TranslationsDialogEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Cancel'
	String get cancel => 'Cancel';

	/// en: 'Save'
	String get save => 'Save';

	/// en: 'Confirm'
	String get confirm => 'Confirm';

	/// en: 'Delete'
	String get delete => 'Delete';

	/// en: 'Remove this server from your fleet?'
	String get confirmRemoveServer => 'Remove this server from your fleet?';

	/// en: 'This will permanently remove the container. Continue?'
	String get confirmRemoveContainer => 'This will permanently remove the container. Continue?';
}

// Path: error
class TranslationsErrorEn {
	TranslationsErrorEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Connection failed'
	String get connectionFailed => 'Connection failed';

	/// en: 'Connection timed out'
	String get timeout => 'Connection timed out';

	/// en: 'An unexpected error occurred'
	String get unknown => 'An unexpected error occurred';
}

// Path: container.actions
class TranslationsContainerActionsEn {
	TranslationsContainerActionsEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Start'
	String get start => 'Start';

	/// en: 'Stop'
	String get stop => 'Stop';

	/// en: 'Restart'
	String get restart => 'Restart';

	/// en: 'Remove'
	String get remove => 'Remove';

	/// en: 'View Logs'
	String get logs => 'View Logs';
}

/// The flat map containing all translations for locale <en>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on Translations {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'app.name' => 'Hashpod',
			'app.tagline' => 'Your fleet, at a glance.',
			'nav.fleet' => 'Fleet',
			'nav.settings' => 'Settings',
			'server.add' => 'Add Server',
			'server.edit' => 'Edit Server',
			'server.remove' => 'Remove Server',
			'server.displayName' => 'Display Name',
			'server.host' => 'Host / IP',
			'server.port' => 'Port',
			'server.user' => 'SSH User',
			'server.privateKeyPath' => 'Private Key Path',
			'server.manager' => 'Container Manager',
			'server.connectionType' => 'Connection Type',
			'server.connectionTypeLocal' => 'Local (socket)',
			'server.connectionTypeRemote' => 'Remote (SSH)',
			'server.noServers' => 'No servers yet.\nClick + to add your first server.',
			'server.statusOnline' => 'Online',
			'server.statusOffline' => 'Offline',
			'server.statusConnecting' => 'Connecting...',
			'container.running' => 'Running',
			'container.stopped' => 'Stopped',
			'container.paused' => 'Paused',
			'container.all' => 'All',
			'container.search' => 'Search containers...',
			'container.name' => 'Name',
			'container.image' => 'Image',
			'container.ports' => 'Ports',
			'container.status' => 'Status',
			'container.cpu' => 'CPU',
			'container.memory' => 'Memory',
			'container.actions.start' => 'Start',
			'container.actions.stop' => 'Stop',
			'container.actions.restart' => 'Restart',
			'container.actions.remove' => 'Remove',
			'container.actions.logs' => 'View Logs',
			'dashboard.totalCpu' => 'Total CPU',
			'dashboard.totalRam' => 'Total RAM',
			'dashboard.containersRunning' => 'Running',
			'dashboard.containersStopped' => 'Stopped',
			'dialog.cancel' => 'Cancel',
			'dialog.save' => 'Save',
			'dialog.confirm' => 'Confirm',
			'dialog.delete' => 'Delete',
			'dialog.confirmRemoveServer' => 'Remove this server from your fleet?',
			'dialog.confirmRemoveContainer' => 'This will permanently remove the container. Continue?',
			'error.connectionFailed' => 'Connection failed',
			'error.timeout' => 'Connection timed out',
			'error.unknown' => 'An unexpected error occurred',
			_ => null,
		};
	}
}
