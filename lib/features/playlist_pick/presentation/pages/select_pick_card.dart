import 'package:boxy/boxy.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trebel/features/playlist_pick/domain/entities/playlist_pick.dart';
import 'package:trebel/features/playlist_pick/presentation/bloc/playlist_pick_bloc/playlist_pick_bloc.dart';
import 'package:trebel/features/playlist_pick/presentation/widgets/grid_boxy_delegate.dart';
import 'package:trebel/features/playlist_pick/presentation/widgets/playlist_pick_app_bar.dart';
import 'package:trebel/features/playlist_pick/presentation/widgets/playlist_pick_item.dart';

class SelectPickCard extends StatefulWidget {
  const SelectPickCard({Key? key}) : super(key: key);

  @override
  State<SelectPickCard> createState() => _SelectPickCardState();
}

class _SelectPickCardState extends State<SelectPickCard> {
  final Set<String> selectedIds = {};

  @override
  void initState() {
    super.initState();
    context.read<PlaylistPickBloc>().add(const GetPlaylistPickRequested());
  }

  void toggleSelection(String id) {
    setState(() {
      if (selectedIds.contains(id)) {
        selectedIds.remove(id);
      } else {
        selectedIds.add(id);
      }
    });
  }

  void onSave() {
    // Implement logic for saving selected playlists
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF222831),
      appBar: SelectPickAppBar(onSave: onSave),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
        child: BlocBuilder<PlaylistPickBloc, PlaylistPickState>(
          builder: (context, state) {
            if (state is PlaylistPickLoading) {
              return const Center(child: CircularProgressIndicator());
            }

            if (state is PlaylistPickFailure) {
              return Center(
                child: Text(
                  state.message,
                  style: const TextStyle(color: Colors.white),
                ),
              );
            }

            if (state is PlaylistPickLoaded || state is PlaylistPickSearched) {
              final List<PlaylistPick> data = state is PlaylistPickLoaded
                  ? state.data
                  : (state as PlaylistPickSearched).result;

              return SingleChildScrollView(
                child: CustomBoxy(
                  delegate: GridBoxyDelegate(
                    crossAxisCount: 2,
                    spacing: 16.w,
                    runSpacing: 16.h,
                  ),
                  children: data.map((playlist) {
                    final isSelected = selectedIds.contains(playlist.id);
                    return SizedBox(
                      key: ValueKey(playlist.id),
                      child: SelectPickItemCard(
                        playlist: playlist,
                        isSelected: isSelected,
                        onTap: () =>
                            toggleSelection(playlist.id?.toString() ?? ''),
                      ),
                    );
                  }).toList(),
                ),
              );
            }

            return const SizedBox();
          },
        ),
      ),
    );
  }
}
