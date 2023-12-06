import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../models/movie_model.dart';
import '../../utils/build_context_extension.dart';
import '../../utils/image_url_extension.dart';

class DetailPage extends StatelessWidget {
  final MovieModel movie;

  const DetailPage({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Movie Detail')),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CachedNetworkImage(
                imageUrl: movie.backdropPath.generateUrl,
                width: double.infinity,
                height: context.screenHeight * .2,
                fit: BoxFit.fitWidth,
              ),
              _Description(movie),
            ],
          ),
        ),
      ),
    );
  }
}

class _Description extends StatelessWidget {
  final MovieModel movie;

  const _Description(this.movie);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 12.0),
          Text(
            movie.originalTitle,
            style: const TextStyle(fontSize: 24),
          ),
          const SizedBox(height: 12.0),
          Text(movie.overview),
        ],
      ),
    );
  }
}
