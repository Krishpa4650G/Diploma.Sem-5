import 'package:flutter/material.dart';

class p2 extends StatelessWidget {
  p2({super.key});
  final List<Map<String, String>> movies = [
    {
      'name': 'Batman',
      'image':
      'https://cdn.prod.website-files.com/6009ec8cda7f305645c9d91b/66a4263d01a185d5ea22eeec_6408f6e7b5811271dc883aa8_batman-min.png'
    },
    {
      'name': 'Thor: Love and Thunder',
      'image':
      'https://m.media-amazon.com/images/M/MV5BNjRhNGZjZjEtYTQzYS00OWUxLThjNGEtMTIwMTE2ZDFlZTZkXkEyXkFqcGc@.V1.jpg'
    },
    {
      'name': 'Oppenheimer',
      'image':
      'https://c8.alamy.com/comp/2T2GNYE/oppenheimer-cillian-murphy-poster-2T2GNYE.jpg'
    },
    {
      'name': 'Black Panther',
      'image':
      'https://m.media-amazon.com/images/M/MV5BMTg1MTY2MjYzNV5BMl5BanBnXkFtZTgwMTc4NTMwNDI@.V1.jpg'
    },
    {
      'name': 'Interstellar',
      'image':
      'https://m.media-amazon.com/images/M/MV5BYzdjMDAxZGItMjI2My00ODA1LTlkNzItOWFjMDU5ZDJlYWY3XkEyXkFqcGc@.V1_FMjpg_UX1000.jpg'
    },
    {
      'name': 'Spider-Man: No Way Home',
      'image':
      'https://m.media-amazon.com/images/M/MV5BMmFiZGZjMmEtMTA0Ni00MzA2LTljMTYtZGI2MGJmZWYzZTQ2XkEyXkFqcGc@.V1.jpg'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Movie Poster UI"),),
      body:GridView.builder(
          itemCount: movies.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,
              crossAxisSpacing: 8,
              mainAxisSpacing: 7,
              childAspectRatio: 0.6
          ),

          itemBuilder:(context,index)
          {
            var movie=movies[index];
            return InkWell(
              onTap: (){
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("the photo is clicked ${ index+1}")));
              },
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius:BorderRadiusGeometry.circular(10)

                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadiusGeometry.circular(10),
                      child: Image.network(
                        movie['image']!,
                        fit: BoxFit.fill,
                        width:double.infinity,
                      ),
                    ),
                    Padding(padding: const EdgeInsets.all(8.0),
                      child: Text(movie['name']!),
                    )
                  ],
                ),

              ),
            );
          }),

    );
  }
}
