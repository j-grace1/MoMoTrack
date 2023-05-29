import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:vizier/config/router/app_router.dart';
import 'package:vizier/l10n/app_loc.dart';
import 'package:vizier/ui/pages/transactions/transactions_page.dart';

enum BottomNavigationItem { offers, Future, Home, Finances, transactions }

extension BottomNavigationItemExtension on BottomNavigationItem {
  String title(BuildContext context) {
    switch (this) {
      case BottomNavigationItem.Home:
        return AppLoc.of(context).bottomBarItemHomeTitle;
      case BottomNavigationItem.Finances:
        return AppLoc.of(context).bottomBarItemFinancesTitle;
      case BottomNavigationItem.Future:
        return AppLoc.of(context).bottomBarItemPortfolioTitle;
      case BottomNavigationItem.offers:
        return AppLoc.of(context).bottomBarItemOffersTitle;

      case BottomNavigationItem.transactions:
        return 'Transactions';
    }
  }

  IconData get icon {
    //TODO (MT): Change icons
    switch (this) {
      case BottomNavigationItem.Home:
        return Icons.home;
      case BottomNavigationItem.Finances:
        return Icons.pie_chart_outline;
      case BottomNavigationItem.Future:
        return Icons.next_plan_rounded;
      case BottomNavigationItem.offers:
        return Icons.category;
      case BottomNavigationItem.transactions:
        return Icons.message_rounded;
    }
  }

  PageRouteInfo get route {
    switch (this) {
      case BottomNavigationItem.Home:
        return const HomePageRoute();
      case BottomNavigationItem.Finances:
        return const FinancesPageRoute();
      case BottomNavigationItem.Future:
        return const PortfolioPageRoute();
      case BottomNavigationItem.offers:
        return const OffersPageRoute();
      case BottomNavigationItem.transactions:
        return const TransactionsPageRoute();
    }
  }
}
