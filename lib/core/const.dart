import 'package:flutter/material.dart';
import 'package:netflix/core/model/models.dart';
 

const kwidth = SizedBox(width: 10);

const kHeight = SizedBox(height: 10);

const kHeight20 = SizedBox(height: 20);

const kHeight50 = SizedBox(height: 50);

const apiKey = "296b72446cc2e9a48d1c4f91e6e30231";

const imagePath = 'https://image.tmdb.org/t/p/w500';

final BorderRadius kRadius10 = BorderRadius.circular(10);
final BorderRadius kRadius30 = BorderRadius.circular(30);

const kMainImage =
    "https://image.tmdb.org/t/p/w600_and_h900_bestv2/wPLysNDLffQLOVebZQCbXJEv6E6.jpg";
    
TextStyle kHomeTitletext = TextStyle(fontSize: 14, fontWeight: FontWeight.bold);

const newAndHotImage =
    "https://images.unsplash.com/photo-1624294891103-a95df76754be?q=80&w=870&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D";

ValueNotifier<List<Movie>> trendingNowListNotifeir = ValueNotifier([]);
ValueNotifier<List<Movie>> topRatedListNotifier = ValueNotifier([]);
ValueNotifier<List<Movie>> top10TvShowsInIndiaTodayListNotifier =
    ValueNotifier([]);
ValueNotifier<List<Movie>> upcomingListNotifier = ValueNotifier([]);
ValueNotifier<List<Movie>> searchResultListNotifier = ValueNotifier([]);
