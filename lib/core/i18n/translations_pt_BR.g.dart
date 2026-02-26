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
class TranslationsPtBr extends Translations with BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsPtBr({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.ptBr,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <pt-BR>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final TranslationsPtBr _root = this; // ignore: unused_field

	@override 
	TranslationsPtBr $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsPtBr(meta: meta ?? this.$meta);

	// Translations
	@override late final _TranslationsAppPtBr app = _TranslationsAppPtBr._(_root);
	@override late final _TranslationsNavPtBr nav = _TranslationsNavPtBr._(_root);
	@override late final _TranslationsServerPtBr server = _TranslationsServerPtBr._(_root);
	@override late final _TranslationsContainerPtBr container = _TranslationsContainerPtBr._(_root);
	@override late final _TranslationsDashboardPtBr dashboard = _TranslationsDashboardPtBr._(_root);
	@override late final _TranslationsDialogPtBr dialog = _TranslationsDialogPtBr._(_root);
	@override late final _TranslationsErrorPtBr error = _TranslationsErrorPtBr._(_root);
}

// Path: app
class _TranslationsAppPtBr extends TranslationsAppEn {
	_TranslationsAppPtBr._(TranslationsPtBr root) : this._root = root, super.internal(root);

	final TranslationsPtBr _root; // ignore: unused_field

	// Translations
	@override String get name => 'Hashpod';
	@override String get tagline => 'Sua frota, de relance.';
}

// Path: nav
class _TranslationsNavPtBr extends TranslationsNavEn {
	_TranslationsNavPtBr._(TranslationsPtBr root) : this._root = root, super.internal(root);

	final TranslationsPtBr _root; // ignore: unused_field

	// Translations
	@override String get fleet => 'Frota';
	@override String get settings => 'Configurações';
}

// Path: server
class _TranslationsServerPtBr extends TranslationsServerEn {
	_TranslationsServerPtBr._(TranslationsPtBr root) : this._root = root, super.internal(root);

	final TranslationsPtBr _root; // ignore: unused_field

	// Translations
	@override String get add => 'Adicionar Servidor';
	@override String get edit => 'Editar Servidor';
	@override String get remove => 'Remover Servidor';
	@override String get displayName => 'Nome de Exibição';
	@override String get host => 'Host / IP';
	@override String get port => 'Porta';
	@override String get user => 'Usuário SSH';
	@override String get privateKeyPath => 'Caminho da Chave Privada';
	@override String get manager => 'Gerenciador de Containers';
	@override String get connectionType => 'Tipo de Conexão';
	@override String get connectionTypeLocal => 'Local (socket)';
	@override String get connectionTypeRemote => 'Remota (SSH)';
	@override String get noServers => 'Nenhum servidor ainda.\nClique em + para adicionar o primeiro.';
	@override String get statusOnline => 'Online';
	@override String get statusOffline => 'Offline';
	@override String get statusConnecting => 'Conectando...';
}

// Path: container
class _TranslationsContainerPtBr extends TranslationsContainerEn {
	_TranslationsContainerPtBr._(TranslationsPtBr root) : this._root = root, super.internal(root);

	final TranslationsPtBr _root; // ignore: unused_field

	// Translations
	@override String get running => 'Rodando';
	@override String get stopped => 'Parado';
	@override String get paused => 'Pausado';
	@override String get all => 'Todos';
	@override String get search => 'Buscar containers...';
	@override String get name => 'Nome';
	@override String get image => 'Imagem';
	@override String get ports => 'Portas';
	@override String get status => 'Status';
	@override String get cpu => 'CPU';
	@override String get memory => 'Memória';
	@override late final _TranslationsContainerActionsPtBr actions = _TranslationsContainerActionsPtBr._(_root);
}

// Path: dashboard
class _TranslationsDashboardPtBr extends TranslationsDashboardEn {
	_TranslationsDashboardPtBr._(TranslationsPtBr root) : this._root = root, super.internal(root);

	final TranslationsPtBr _root; // ignore: unused_field

	// Translations
	@override String get totalCpu => 'CPU Total';
	@override String get totalRam => 'RAM Total';
	@override String get containersRunning => 'Rodando';
	@override String get containersStopped => 'Parados';
}

// Path: dialog
class _TranslationsDialogPtBr extends TranslationsDialogEn {
	_TranslationsDialogPtBr._(TranslationsPtBr root) : this._root = root, super.internal(root);

	final TranslationsPtBr _root; // ignore: unused_field

	// Translations
	@override String get cancel => 'Cancelar';
	@override String get save => 'Salvar';
	@override String get confirm => 'Confirmar';
	@override String get delete => 'Excluir';
	@override String get confirmRemoveServer => 'Remover este servidor da sua frota?';
	@override String get confirmRemoveContainer => 'Isso vai remover o container permanentemente. Continuar?';
}

// Path: error
class _TranslationsErrorPtBr extends TranslationsErrorEn {
	_TranslationsErrorPtBr._(TranslationsPtBr root) : this._root = root, super.internal(root);

	final TranslationsPtBr _root; // ignore: unused_field

	// Translations
	@override String get connectionFailed => 'Falha na conexão';
	@override String get timeout => 'Conexão expirou';
	@override String get unknown => 'Ocorreu um erro inesperado';
}

// Path: container.actions
class _TranslationsContainerActionsPtBr extends TranslationsContainerActionsEn {
	_TranslationsContainerActionsPtBr._(TranslationsPtBr root) : this._root = root, super.internal(root);

	final TranslationsPtBr _root; // ignore: unused_field

	// Translations
	@override String get start => 'Iniciar';
	@override String get stop => 'Parar';
	@override String get restart => 'Reiniciar';
	@override String get remove => 'Remover';
	@override String get logs => 'Ver Logs';
}

/// The flat map containing all translations for locale <pt-BR>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsPtBr {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'app.name' => 'Hashpod',
			'app.tagline' => 'Sua frota, de relance.',
			'nav.fleet' => 'Frota',
			'nav.settings' => 'Configurações',
			'server.add' => 'Adicionar Servidor',
			'server.edit' => 'Editar Servidor',
			'server.remove' => 'Remover Servidor',
			'server.displayName' => 'Nome de Exibição',
			'server.host' => 'Host / IP',
			'server.port' => 'Porta',
			'server.user' => 'Usuário SSH',
			'server.privateKeyPath' => 'Caminho da Chave Privada',
			'server.manager' => 'Gerenciador de Containers',
			'server.connectionType' => 'Tipo de Conexão',
			'server.connectionTypeLocal' => 'Local (socket)',
			'server.connectionTypeRemote' => 'Remota (SSH)',
			'server.noServers' => 'Nenhum servidor ainda.\nClique em + para adicionar o primeiro.',
			'server.statusOnline' => 'Online',
			'server.statusOffline' => 'Offline',
			'server.statusConnecting' => 'Conectando...',
			'container.running' => 'Rodando',
			'container.stopped' => 'Parado',
			'container.paused' => 'Pausado',
			'container.all' => 'Todos',
			'container.search' => 'Buscar containers...',
			'container.name' => 'Nome',
			'container.image' => 'Imagem',
			'container.ports' => 'Portas',
			'container.status' => 'Status',
			'container.cpu' => 'CPU',
			'container.memory' => 'Memória',
			'container.actions.start' => 'Iniciar',
			'container.actions.stop' => 'Parar',
			'container.actions.restart' => 'Reiniciar',
			'container.actions.remove' => 'Remover',
			'container.actions.logs' => 'Ver Logs',
			'dashboard.totalCpu' => 'CPU Total',
			'dashboard.totalRam' => 'RAM Total',
			'dashboard.containersRunning' => 'Rodando',
			'dashboard.containersStopped' => 'Parados',
			'dialog.cancel' => 'Cancelar',
			'dialog.save' => 'Salvar',
			'dialog.confirm' => 'Confirmar',
			'dialog.delete' => 'Excluir',
			'dialog.confirmRemoveServer' => 'Remover este servidor da sua frota?',
			'dialog.confirmRemoveContainer' => 'Isso vai remover o container permanentemente. Continuar?',
			'error.connectionFailed' => 'Falha na conexão',
			'error.timeout' => 'Conexão expirou',
			'error.unknown' => 'Ocorreu um erro inesperado',
			_ => null,
		};
	}
}
