import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dio/dio.dart' as _dio;
import 'package:mealapp/models/hotel.dart';
import 'package:url_launcher/url_launcher.dart';

final restaurantProvider = FutureProvider<List<Restaurant>>(
  (ref) async {
    final dio = _dio.Dio();
    final response = await dio.get(
      'https://restaurants-near-me-usa.p.rapidapi.com/restaurants/location/state/MI/city/West%20Bloomfield/0',
      options: _dio.Options(
        headers: {
          'X-RapidAPI-Key':
              'bce535f3b6mshdd6af969695dc68p1b4738jsn0071841ad2e9',
          'X-RapidAPI-Host': 'restaurants-near-me-usa.p.rapidapi.com',
        },
      ),
    );

    if (response.statusCode == 200) {
      final List<dynamic> data =
          json.decode(response.toString())['restaurants'];
      return data.map((json) => Restaurant.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load restaurants');
    }
  },
);

class HotelScreen extends ConsumerWidget {
  const HotelScreen({Key? key}) : super(key: key);

  Future<void> openWebsite(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $uri';
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hotels'),
        // centerTitle: true,
        elevation: 0,
      ),
      body: ref.watch(restaurantProvider).when(
            data: (restaurants) {
              return ListView.builder(
                itemCount: restaurants.length,
                itemBuilder: (context, index) {
                  final restaurant = restaurants[index];
                  return ListTile(
                    title: Text(restaurant.restaurantName),
                    subtitle: Text(restaurant.address),
                    onTap: () {
                      openWebsite(restaurant.website);
                    },
                    trailing: const Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 16,
                    ),
                  );
                },
              );
            },
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (error, stack) => Center(child: Text('Error: $error')),
          ),
    );
  }
}
