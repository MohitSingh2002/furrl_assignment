import 'package:flutter/material.dart';
import 'package:furrl_assignment/models/Author.dart';
import 'package:furrl_assignment/services/ApiService.dart';
import 'package:furrl_assignment/utils/AppStyle.dart';
import 'package:furrl_assignment/utils/Utils.dart';
import 'package:furrl_assignment/widgets/AuthorCard.dart';
import 'package:furrl_assignment/widgets/BgImageWidget.dart';

class AuthorsListScreen extends StatefulWidget {
  const AuthorsListScreen({Key? key}) : super(key: key);

  @override
  State<AuthorsListScreen> createState() => _AuthorsListScreenState();
}

class _AuthorsListScreenState extends State<AuthorsListScreen> {

  bool isLoading = false;
  List<Author> authorsList = [], finalAuthorsList = [];
  late ScrollController controller;

  void showLoading() {
    setState(() {
      isLoading = true;
    });
  }

  void hideLoading() {
    setState(() {
      isLoading = false;
    });
  }

  void getAuthorsList() {
    showLoading();
    ApiService().getAuthorsList().then((value) {
      setState(() {
        authorsList = value;
        finalAuthorsList = value;
      });
      hideLoading();
    }).catchError((onError) {
      Utils.showToast(message: '${onError.toString()}');
    });
  }

  void loadMore() {
    if (controller.position.maxScrollExtent == controller.offset) {
      addDataToAuthorsList();
    }
  }

  Future addDataToAuthorsList() async {
    setState(() {
      authorsList.addAll(Utils.list(finalAuthorsList));
    });
  }

  @override
  void initState() {
    super.initState();
    getAuthorsList();
    setState(() {
      controller = ScrollController()..addListener(loadMore);
    });
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BgImageWidget(
          child: isLoading ? Center(
            child: CircularProgressIndicator(
              color: AppStyle.blue,
            ),
          ) : ListView.builder(
            controller: controller,
            itemCount: authorsList.length,
            itemBuilder: (_, index) {
              Author author = authorsList.elementAt(index);
              return AuthorCard(author: author.author, downloadUrl: author.downloadUrl);
            },
          ),
        ),
      ),
    );
  }
}
