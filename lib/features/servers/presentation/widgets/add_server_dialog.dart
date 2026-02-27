import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hashpod/core/theme/app_theme.dart';
import 'package:hashpod/features/servers/domain/server.dart';
import 'package:hashpod/features/servers/presentation/providers/servers_provider.dart';

// ---------------------------------------------------------------------------
// Add Server Dialog
// ---------------------------------------------------------------------------

class AddServerDialog extends ConsumerStatefulWidget {
  const AddServerDialog({super.key});

  @override
  ConsumerState<AddServerDialog> createState() => _AddServerDialogState();
}

class _AddServerDialogState extends ConsumerState<AddServerDialog> {
  final _formKey = GlobalKey<FormState>();
  final _nameCtrl = TextEditingController();
  final _hostCtrl = TextEditingController();
  final _portCtrl = TextEditingController(text: '22');
  final _userCtrl = TextEditingController();
  final _keyPathCtrl = TextEditingController();
  final _socketCtrl = TextEditingController(text: '/var/run/docker.sock');

  ContainerManager _manager = ContainerManager.docker;
  ConnectionType _connType = ConnectionType.remote;

  @override
  void dispose() {
    _nameCtrl.dispose();
    _hostCtrl.dispose();
    _portCtrl.dispose();
    _userCtrl.dispose();
    _keyPathCtrl.dispose();
    _socketCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: HashpodColors.surfaceCard,
      shape: RoundedRectangleBorder(
        borderRadius: HashpodRadius.lgBorderRadius,
        side: const BorderSide(color: HashpodColors.surfaceBorder),
      ),
      child: SizedBox(
        width: 480,
        child: Padding(
          padding: const EdgeInsets.all(HashpodSpacing.xl),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: HashpodColors.accent.withValues(alpha: 0.12),
                        borderRadius: HashpodRadius.smBorderRadius,
                      ),
                      child: const Icon(
                        Icons.dns_outlined,
                        size: 18,
                        color: HashpodColors.accent,
                      ),
                    ),
                    const SizedBox(width: HashpodSpacing.md),
                    Text(
                      'Add Server',
                      style: GoogleFonts.inter(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: HashpodColors.textPrimary,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () => Navigator.of(context).pop(),
                      icon: const Icon(Icons.close, size: 18),
                      color: HashpodColors.textMuted,
                      style: IconButton.styleFrom(
                        padding: EdgeInsets.zero,
                        minimumSize: const Size(28, 28),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: HashpodSpacing.xl),

                // Display name
                _Label('Display Name'),
                const SizedBox(height: HashpodSpacing.xs),
                _Field(
                  controller: _nameCtrl,
                  hint: 'e.g. My Homelab',
                  validator: (v) =>
                      v == null || v.isEmpty ? 'Required' : null,
                ),
                const SizedBox(height: HashpodSpacing.md),

                // Manager + Connection type (side by side)
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _Label('Manager'),
                          const SizedBox(height: HashpodSpacing.xs),
                          _DropdownField<ContainerManager>(
                            value: _manager,
                            items: ContainerManager.values,
                            labelOf: (m) => switch (m) {
                              ContainerManager.docker => 'Docker',
                              ContainerManager.podman => 'Podman',
                              ContainerManager.lxc => 'LXC',
                            },
                            onChanged: (v) =>
                                setState(() => _manager = v!),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: HashpodSpacing.md),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _Label('Connection'),
                          const SizedBox(height: HashpodSpacing.xs),
                          _DropdownField<ConnectionType>(
                            value: _connType,
                            items: ConnectionType.values,
                            labelOf: (t) => switch (t) {
                              ConnectionType.local => 'Local (socket)',
                              ConnectionType.remote => 'Remote (SSH)',
                            },
                            onChanged: (v) =>
                                setState(() => _connType = v!),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: HashpodSpacing.md),

                // SSH fields (Remote) or socket (Local)
                if (_connType == ConnectionType.remote) ...[
                  Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _Label('Host / IP'),
                            const SizedBox(height: HashpodSpacing.xs),
                            _Field(
                              controller: _hostCtrl,
                              hint: '192.168.1.100',
                              validator: (v) =>
                                  v == null || v.isEmpty ? 'Required' : null,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: HashpodSpacing.md),
                      SizedBox(
                        width: 80,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _Label('Port'),
                            const SizedBox(height: HashpodSpacing.xs),
                            _Field(
                              controller: _portCtrl,
                              hint: '22',
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: HashpodSpacing.md),
                  _Label('SSH User'),
                  const SizedBox(height: HashpodSpacing.xs),
                  _Field(
                    controller: _userCtrl,
                    hint: 'ubuntu',
                    validator: (v) =>
                        v == null || v.isEmpty ? 'Required' : null,
                  ),
                  const SizedBox(height: HashpodSpacing.md),
                  _Label('Private Key Path'),
                  const SizedBox(height: HashpodSpacing.xs),
                  _Field(
                    controller: _keyPathCtrl,
                    hint: '~/.ssh/id_rsa',
                    prefix: const Icon(
                      Icons.key_outlined,
                      size: 14,
                      color: HashpodColors.textMuted,
                    ),
                  ),
                ] else ...[
                  _Label('Socket Path'),
                  const SizedBox(height: HashpodSpacing.xs),
                  _Field(
                    controller: _socketCtrl,
                    hint: '/var/run/docker.sock',
                  ),
                ],

                const SizedBox(height: HashpodSpacing.xl),

                // Actions
                Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () => Navigator.of(context).pop(),
                        style: OutlinedButton.styleFrom(
                          foregroundColor: HashpodColors.textSecondary,
                          side: const BorderSide(
                              color: HashpodColors.surfaceBorder),
                          padding: const EdgeInsets.symmetric(
                              vertical: HashpodSpacing.md),
                          shape: const RoundedRectangleBorder(
                            borderRadius: HashpodRadius.mdBorderRadius,
                          ),
                        ),
                        child: Text('Cancel',
                            style: GoogleFonts.inter(fontSize: 13)),
                      ),
                    ),
                    const SizedBox(width: HashpodSpacing.md),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: _submit,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: HashpodColors.accent,
                          foregroundColor: const Color(0xFF0D1117),
                          padding: const EdgeInsets.symmetric(
                              vertical: HashpodSpacing.md),
                          shape: const RoundedRectangleBorder(
                            borderRadius: HashpodRadius.mdBorderRadius,
                          ),
                          elevation: 0,
                        ),
                        child: Text(
                          'Save Server',
                          style: GoogleFonts.inter(
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _submit() {
    if (!_formKey.currentState!.validate()) return;
    final server = Server(
      id: 'srv-${DateTime.now().millisecondsSinceEpoch}',
      displayName: _nameCtrl.text.trim(),
      manager: _manager,
      connectionType: _connType,
      host: _hostCtrl.text.trim(),
      port: int.tryParse(_portCtrl.text) ?? 22,
      sshUser: _userCtrl.text.trim(),
      privateKeyPath: _keyPathCtrl.text.trim(),
      socketPath: _socketCtrl.text.trim(),
    );
    ref.read(serversProvider.notifier).addServer(server);
    Navigator.of(context).pop();
  }
}

// ---------------------------------------------------------------------------
// Helpers
// ---------------------------------------------------------------------------

class _Label extends StatelessWidget {
  const _Label(this.text);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.inter(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: HashpodColors.textSecondary,
      ),
    );
  }
}

class _Field extends StatelessWidget {
  const _Field({
    required this.controller,
    this.hint,
    this.validator,
    this.keyboardType,
    this.inputFormatters,
    this.prefix,
  });

  final TextEditingController controller;
  final String? hint;
  final FormFieldValidator<String>? validator;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final Widget? prefix;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      keyboardType: keyboardType,
      inputFormatters: inputFormatters,
      style: GoogleFonts.inter(
        fontSize: 13,
        color: HashpodColors.textPrimary,
      ),
      decoration: InputDecoration(
        hintText: hint,
        prefixIcon: prefix != null
            ? Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: prefix,
              )
            : null,
        prefixIconConstraints:
            const BoxConstraints(minWidth: 36, minHeight: 36),
      ),
    );
  }
}

class _DropdownField<T> extends StatelessWidget {
  const _DropdownField({
    required this.value,
    required this.items,
    required this.labelOf,
    required this.onChanged,
  });

  final T value;
  final List<T> items;
  final String Function(T) labelOf;
  final ValueChanged<T?> onChanged;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<T>(
      value: value,
      onChanged: onChanged,
      dropdownColor: HashpodColors.surfaceCard,
      style: GoogleFonts.inter(
        fontSize: 13,
        color: HashpodColors.textPrimary,
      ),
      icon: const Icon(
        Icons.keyboard_arrow_down_rounded,
        color: HashpodColors.textMuted,
        size: 18,
      ),
      decoration: const InputDecoration(),
      items: items
          .map(
            (item) => DropdownMenuItem<T>(
              value: item,
              child: Text(labelOf(item)),
            ),
          )
          .toList(),
    );
  }
}
