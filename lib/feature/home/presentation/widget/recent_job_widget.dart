import 'package:flutter/material.dart';
import 'package:flutter_job_seeking/core/route/app_route_name.dart';
import 'package:flutter_job_seeking/feature/home/model/job.dart';

class RecentJobWidget extends StatelessWidget {
  const RecentJobWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: recentJobs.length,
      separatorBuilder: (context, index) {
        return const Divider();
      },
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            Navigator.pushNamed(
              context,
              AppRouteName.detailJob,
              arguments: recentJobs[index],
            );
          },
          child: Container(
            height: 86,
            padding: const EdgeInsets.all(8),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  child: Image(
                    image: AssetImage(
                      recentJobs[index].companyImage,
                    ),
                    width: 48,
                    height: 48,
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        recentJobs[index].jobTitle,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.place_outlined,
                            size: 20,
                          ),
                          const SizedBox(width: 4),
                          Text(
                            recentJobs[index].locationShort,
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          const SizedBox(width: 16),
                          const Icon(
                            Icons.card_travel_rounded,
                            size: 20,
                          ),
                          const SizedBox(width: 4),
                          Text(
                            recentJobs[index].jobType,
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(width: 8),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(Icons.bookmark_border_rounded),
                    Text(
                      recentJobs[index].timeStamp,
                      style: Theme.of(context).textTheme.bodyMedium,
                    )
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
