import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/popular/movie_popular_cubit.dart';
import '../../utils/image_url_extension.dart';
import '../../utils/string_helper.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  late final TextEditingController _searchController;
  late final ValueNotifier<String> _searchText;

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
    _searchText = ValueNotifier('');
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Search Movie')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                controller: _searchController,
                decoration: const InputDecoration(
                  hintText: 'Search movie',
                ),
                onChanged: (value) {
                  _searchText.value = value;
                },
              ),
              const SizedBox(height: 12.0),
              const Text('* only search by first char'),
              const SizedBox(height: 24.0),
              Expanded(
                child: BlocBuilder<MoviePopularCubit, MoviePopularState>(
                  builder: (context, state) => state.maybeWhen(
                    orElse: () => const SizedBox.shrink(),
                    success: (data) {
                      return ValueListenableBuilder(
                        valueListenable: _searchText,
                        builder: (_, value, __) {
                          final searchR = data
                              .where((e) => e.originalTitle
                                  .startsWith(value.toTitleCase()))
                              .toList();

                          return SingleChildScrollView(
                            child: Column(
                              children: searchR
                                  .map(
                                    (e) => Padding(
                                      padding: const EdgeInsets.only(
                                        bottom: 6.0,
                                      ),
                                      child: Row(
                                        children: [
                                          CachedNetworkImage(
                                            imageUrl:
                                                e.backdropPath.generateUrl,
                                            width: 52,
                                            height: 52,
                                            fit: BoxFit.cover,
                                          ),
                                          const SizedBox(width: 12),
                                          Text(e.originalTitle),
                                        ],
                                      ),
                                    ),
                                  )
                                  .toList(),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
