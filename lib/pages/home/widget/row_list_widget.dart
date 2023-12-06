import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../models/movie_model.dart';
import '../../../utils/build_context_extension.dart';
import '../../../utils/image_url_extension.dart';
import '../../detail/detail_page.dart';

class RowListWidget extends StatelessWidget {
  final List<MovieModel> movies;
  final String title;

  const RowListWidget({
    super.key,
    required this.movies,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
            ),
          ),
          const SizedBox(height: 6.0),
          SizedBox(
            height: context.screenHeight * .22,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: movies.length,
              itemBuilder: (_, index) {
                final movie = movies[index];

                return GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => DetailPage(movie: movie)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: index == 0 ? 0 : 12.0),
                    child: SizedBox(
                      width: context.screenWidth * .3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(6.0),
                            child: CachedNetworkImage(
                              imageUrl: movie.backdropPath.generateUrl,
                              height: context.screenHeight * .15,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(height: 6.0),
                          Text(
                            movie.originalTitle,
                            style: const TextStyle(
                              color: Colors.black,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
