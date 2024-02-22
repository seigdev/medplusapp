import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget drawerlist(context) => Drawer(
      width: 200,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, top: 120),
        child: ListView(
          children: [
            InkWell(
              onTap: () {
                // pop(context);
                // pushTo(context, const AllNote());
              },
              child: Row(
                children: [
                  const Icon(CupertinoIcons.archivebox, size: 16),
                  const SizedBox(width: 10),
                  Text('All Notes'),
                ],
              ),
            ),
            const SizedBox(height: 40),
            Row(
              children: [
                const Icon(CupertinoIcons.book, size: 16),
                const SizedBox(width: 10),
                Text('Notebook'),
              ],
            ),
            const SizedBox(height: 40),
            Row(
              children: [
                const Icon(CupertinoIcons.heart, size: 16),
                const SizedBox(width: 10),
                Text('Favourite'),
              ],
            ),
            const SizedBox(height: 40),
            Row(
              children: [
                const Icon(CupertinoIcons.trash, size: 16),
                const SizedBox(width: 10),
                Text('Deleted'),
              ],
            ),
            const SizedBox(height: 40),
            Row(
              children: [
                const Icon(CupertinoIcons.settings, size: 16),
                const SizedBox(width: 10),
                Text('Settings'),
              ],
            ),
          ],
        ),
      ),
    );
