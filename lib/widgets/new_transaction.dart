import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addTx);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              controller: titleController,
              decoration: InputDecoration(
                label: Text(
                  'Title',
                  style: GoogleFonts.aBeeZee(),
                ),
              ),
            ),
            TextField(
              keyboardType: TextInputType.number,
              controller: amountController,
              decoration: InputDecoration(
                label: Text(
                  'Amount',
                  style: GoogleFonts.aBeeZee(),
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                addTx(
                  titleController.text,
                  double.parse(amountController.text),
                );
              },
              child: Text(
                'Add Transaction',
                style: GoogleFonts.aBeeZee(
                  color: Colors.purple,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
