// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:smartgazalbee/models/blocs/board/board_choice_bloc.dart';
// import 'package:smartgazalbee/models/blocs/board/board_choice_state.dart';
//
// class CustomBoardTabs extends StatelessWidget {
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         home: BlocProvider(
//           create: (context) => BoardChoiceBloc(),
//           child: BoardTabs(),
//         ),
//     );
//   }
// }
//
// class BoardTabs extends StatelessWidget {
//   final List<Widget> _tabs = [
//     Text("1"),
//     Text("2"),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: BlocBuilder<BoardChoiceBloc, BoardChoiceState>(
//         builder: (context, state){
//           if(state is BoardChoiceLoaded){
//             return _tabs[state.currentIndex];
//           }
//           return Center(child: CircularProgressIndicator());
//         },
//       ),
//     );
//   }
// }
