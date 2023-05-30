import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vizier/config/injector/di.dart';
import 'package:vizier/config/router/app_router.dart';
import 'package:vizier/config/styles/colors/app_colors.dart';
import 'package:vizier/config/styles/decorations/app_decorations.dart';
import 'package:vizier/config/styles/dimensions/app_dimensions.dart';
import 'package:vizier/config/styles/text_styles/app_text_styles.dart';
import 'package:vizier/cubits/offers/list/offer_list_cubit.dart';
import 'package:vizier/data/models/offer/offer_model.dart';
import 'package:vizier/l10n/app_loc.dart';
import 'package:vizier/ui/pages/MoMoTransactions/MTN/mtnTransactions.dart';
import 'package:vizier/ui/widgets/adaptive/adaptive_app_bar.dart';
import 'package:vizier/ui/widgets/adaptive/adaptive_button.dart';
import 'package:auto_route/auto_route.dart';

import '../chatbot/floatingActionBar.dart';

class TransactionsPage extends StatelessWidget implements AutoRouteWrapper {
  static const String route = 'offers-page';

  const TransactionsPage({
    super.key,
  });

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => DI.resolve<OfferListCubit>()..fetchData(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AdaptiveAppBar(
        context,
        title: Text(
          'My Transactions',
          style: AppTextStyles.h5(),
        ),
        actions: [
          _buildNotificationsButton(
            onPressed: () {
              // TODO: Implement notifications button onPressed
            },
          ),
          _buildMoreButton(
            onPressed: () {
              // TODO: Implement more button onPressed
            },
          ),
        ],
      ),
      body: PerformTransactionSection(),
      floatingActionButton: Row(
        children: [
          SizedBox(
            width: 29,
          ),
          Expanded(
            child: FloatingActionButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) => CustomBottomSheet(),
                );
              },
              child: Text(
                'Filter',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 15,
          ),
          CustomFloatingActionButton(),
        ],
      ),
    );
  }

  Widget _buildNotificationsButton({
    required VoidCallback onPressed,
  }) {
    return IconButton(
      icon: Icon(
        Icons.notifications,
        color: AppColors.black,
      ),
      onPressed: onPressed,
    );
  }

  Widget _buildMoreButton({
    required VoidCallback onPressed,
  }) {
    return IconButton(
      icon: Icon(
        Icons.more_vert,
        color: AppColors.black,
      ),
      onPressed: onPressed,
    );
  }

  Widget _buildOffers(
    BuildContext context, {
    required List<OfferModel> offers,
  }) {
    return ListView();
  }
}

class CustomBottomSheet extends StatefulWidget {
  @override
  _CustomBottomSheetState createState() => _CustomBottomSheetState();
}

class _CustomBottomSheetState extends State<CustomBottomSheet> {
  String selectedFilterBy = '';
  String selectedSortBy = '';
  bool isCategorySelected = false;

  void toggleSelection(String category) {
    setState(() {
      if (selectedFilterBy == category) {
        selectedFilterBy = '';
      } else {
        selectedFilterBy = category;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.7,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Filter Transactions',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Reset button logic
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.grey.shade200,
                  ),
                  child: Text(
                    'Reset',
                    style: TextStyle(color: Colors.purple),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Filter By',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => toggleSelection('Income'),
                  style: ElevatedButton.styleFrom(
                    primary: selectedFilterBy == 'Income'
                        ? Colors.grey.shade400
                        : Colors.white,
                    onPrimary: selectedFilterBy == 'Income'
                        ? Colors.purple
                        : Colors.black,
                  ),
                  child: Text('Income'),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () => toggleSelection('Expense'),
                  style: ElevatedButton.styleFrom(
                    primary: selectedFilterBy == 'Expense'
                        ? Colors.grey.shade400
                        : Colors.white,
                    onPrimary: selectedFilterBy == 'Expense'
                        ? Colors.purple
                        : Colors.black,
                  ),
                  child: Text('Expense'),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Sort By',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        selectedSortBy = 'Highest';
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      primary: selectedSortBy == 'Highest'
                          ? Colors.grey.shade400
                          : Colors.white,
                      onPrimary: selectedSortBy == 'Highest'
                          ? Colors.purple
                          : Colors.black,
                    ),
                    child: Text('Highest'),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        selectedSortBy = 'Lowest';
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      primary: selectedSortBy == 'Lowest'
                          ? Colors.grey.shade400
                          : Colors.white,
                      onPrimary: selectedSortBy == 'Lowest'
                          ? Colors.purple
                          : Colors.black,
                    ),
                    child: Text('Lowest'),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        selectedSortBy = 'Newest';
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      primary: selectedSortBy == 'Newest'
                          ? Colors.grey.shade400
                          : Colors.white,
                      onPrimary: selectedSortBy == 'Newest'
                          ? Colors.purple
                          : Colors.black,
                    ),
                    child: Text('Newest'),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        selectedSortBy = 'Oldest';
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      primary: selectedSortBy == 'Oldest'
                          ? Colors.grey.shade400
                          : Colors.white,
                      onPrimary: selectedSortBy == 'Oldest'
                          ? Colors.purple
                          : Colors.black,
                    ),
                    child: Text('Oldest'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Category',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Choose Category'),
                        Row(
                          children: [
                            Text(
                              isCategorySelected ? '1 Selected' : '0 Selected',
                              style: TextStyle(color: Colors.purple),
                            ),
                            Icon(Icons.arrow_forward_ios, size: 16),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                onPressed: () {
                  // Apply button logic
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.purple,
                  minimumSize: Size(double.infinity, 60),
                ),
                child: Text(
                  'Apply',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
