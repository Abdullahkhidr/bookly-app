import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'custom_search_text_field.dart';
import 'search_result_list.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
            child: Padding(
          padding: EdgeInsets.all(22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomSearchTextField(),
              SizedBox(height: 20),
              Text(
                'Search Result',
                style: TextStyles.style16.copyWith(fontWeight: FontWeight.bold),
              )
            ],
          ),
        )),
        Expanded(child: SearchResultList())
      ],
    );
  }
}
