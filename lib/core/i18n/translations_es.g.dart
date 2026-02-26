///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'translations.g.dart';

// Path: <root>
class TranslationsEs extends Translations with BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsEs({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.es,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <es>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final TranslationsEs _root = this; // ignore: unused_field

	@override 
	TranslationsEs $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsEs(meta: meta ?? this.$meta);

	// Translations
	@override late final _TranslationsAppEs app = _TranslationsAppEs._(_root);
	@override late final _TranslationsNavEs nav = _TranslationsNavEs._(_root);
	@override late final _TranslationsServerEs server = _TranslationsServerEs._(_root);
	@override late final _TranslationsContainerEs container = _TranslationsContainerEs._(_root);
	@override late final _TranslationsDashboardEs dashboard = _TranslationsDashboardEs._(_root);
	@override late final _TranslationsDialogEs dialog = _TranslationsDialogEs._(_root);
	@override late final _TranslationsErrorEs error = _TranslationsErrorEs._(_root);
}

// Path: app
class _TranslationsAppEs extends TranslationsAppEn {
	_TranslationsAppEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Hashpod';
	@override String get tagline => 'Tu flota, de un vistazo.';
}

// Path: nav
class _TranslationsNavEs extends TranslationsNavEn {
	_TranslationsNavEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get fleet => 'Flota';
	@override String get settings => 'Configuración';
}

// Path: server
class _TranslationsServerEs extends TranslationsServerEn {
	_TranslationsServerEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get add => 'Agregar Servidor';
	@override String get edit => 'Editar Servidor';
	@override String get remove => 'Eliminar Servidor';
	@override String get displayName => 'Nombre de Pantalla';
	@override String get host => 'Host / IP';
	@override String get port => 'Puerto';
	@override String get user => 'Usuario SSH';
	@override String get privateKeyPath => 'Ruta de la Clave Privada';
	@override String get manager => 'Gestor de Contenedores';
	@override String get connectionType => 'Tipo de Conexión';
	@override String get connectionTypeLocal => 'Local (socket)';
	@override String get connectionTypeRemote => 'Remota (SSH)';
	@override String get noServers => 'Sin servidores aún.\nHaz clic en + para agregar el primero.';
	@override String get statusOnline => 'En línea';
	@override String get statusOffline => 'Sin conexión';
	@override String get statusConnecting => 'Conectando...';
}

// Path: container
class _TranslationsContainerEs extends TranslationsContainerEn {
	_TranslationsContainerEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get running => 'Corriendo';
	@override String get stopped => 'Detenido';
	@override String get paused => 'Pausado';
	@override String get all => 'Todos';
	@override String get search => 'Buscar contenedores...';
	@override String get name => 'Nombre';
	@override String get image => 'Imagen';
	@override String get ports => 'Puertos';
	@override String get status => 'Estado';
	@override String get cpu => 'CPU';
	@override String get memory => 'Memoria';
	@override late final _TranslationsContainerActionsEs actions = _TranslationsContainerActionsEs._(_root);
}

// Path: dashboard
class _TranslationsDashboardEs extends TranslationsDashboardEn {
	_TranslationsDashboardEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get totalCpu => 'CPU Total';
	@override String get totalRam => 'RAM Total';
	@override String get containersRunning => 'Corriendo';
	@override String get containersStopped => 'Detenidos';
}

// Path: dialog
class _TranslationsDialogEs extends TranslationsDialogEn {
	_TranslationsDialogEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get cancel => 'Cancelar';
	@override String get save => 'Guardar';
	@override String get confirm => 'Confirmar';
	@override String get delete => 'Eliminar';
	@override String get confirmRemoveServer => '¿Eliminar este servidor de tu flota?';
	@override String get confirmRemoveContainer => 'Esto eliminará el contenedor permanentemente. ¿Continuar?';
}

// Path: error
class _TranslationsErrorEs extends TranslationsErrorEn {
	_TranslationsErrorEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get connectionFailed => 'Error de conexión';
	@override String get timeout => 'Se agotó el tiempo de conexión';
	@override String get unknown => 'Ocurrió un error inesperado';
}

// Path: container.actions
class _TranslationsContainerActionsEs extends TranslationsContainerActionsEn {
	_TranslationsContainerActionsEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get start => 'Iniciar';
	@override String get stop => 'Detener';
	@override String get restart => 'Reiniciar';
	@override String get remove => 'Eliminar';
	@override String get logs => 'Ver Logs';
}

/// The flat map containing all translations for locale <es>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsEs {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'app.name' => 'Hashpod',
			'app.tagline' => 'Tu flota, de un vistazo.',
			'nav.fleet' => 'Flota',
			'nav.settings' => 'Configuración',
			'server.add' => 'Agregar Servidor',
			'server.edit' => 'Editar Servidor',
			'server.remove' => 'Eliminar Servidor',
			'server.displayName' => 'Nombre de Pantalla',
			'server.host' => 'Host / IP',
			'server.port' => 'Puerto',
			'server.user' => 'Usuario SSH',
			'server.privateKeyPath' => 'Ruta de la Clave Privada',
			'server.manager' => 'Gestor de Contenedores',
			'server.connectionType' => 'Tipo de Conexión',
			'server.connectionTypeLocal' => 'Local (socket)',
			'server.connectionTypeRemote' => 'Remota (SSH)',
			'server.noServers' => 'Sin servidores aún.\nHaz clic en + para agregar el primero.',
			'server.statusOnline' => 'En línea',
			'server.statusOffline' => 'Sin conexión',
			'server.statusConnecting' => 'Conectando...',
			'container.running' => 'Corriendo',
			'container.stopped' => 'Detenido',
			'container.paused' => 'Pausado',
			'container.all' => 'Todos',
			'container.search' => 'Buscar contenedores...',
			'container.name' => 'Nombre',
			'container.image' => 'Imagen',
			'container.ports' => 'Puertos',
			'container.status' => 'Estado',
			'container.cpu' => 'CPU',
			'container.memory' => 'Memoria',
			'container.actions.start' => 'Iniciar',
			'container.actions.stop' => 'Detener',
			'container.actions.restart' => 'Reiniciar',
			'container.actions.remove' => 'Eliminar',
			'container.actions.logs' => 'Ver Logs',
			'dashboard.totalCpu' => 'CPU Total',
			'dashboard.totalRam' => 'RAM Total',
			'dashboard.containersRunning' => 'Corriendo',
			'dashboard.containersStopped' => 'Detenidos',
			'dialog.cancel' => 'Cancelar',
			'dialog.save' => 'Guardar',
			'dialog.confirm' => 'Confirmar',
			'dialog.delete' => 'Eliminar',
			'dialog.confirmRemoveServer' => '¿Eliminar este servidor de tu flota?',
			'dialog.confirmRemoveContainer' => 'Esto eliminará el contenedor permanentemente. ¿Continuar?',
			'error.connectionFailed' => 'Error de conexión',
			'error.timeout' => 'Se agotó el tiempo de conexión',
			'error.unknown' => 'Ocurrió un error inesperado',
			_ => null,
		};
	}
}
