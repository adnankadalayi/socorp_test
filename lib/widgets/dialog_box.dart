import 'package:flutter/material.dart';
import 'package:socorp_test/constants.dart';

class DialogBox extends StatelessWidget {
  const DialogBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Scaffold(
        backgroundColor: Colors.lightBlue[50],
        appBar: AppBar(
          backgroundColor: Colors.lightBlue[50],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: Container(
                  color: Colors.grey,
                  child: const Center(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'LIC New Endowment (914)',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 20),
                child: Table(
                  border: TableBorder.all(),
                  children: const [
                    TableRow(children: [
                      Text(
                        textAlign: TextAlign.center,
                        'Basic Sum Assured',
                        style: kTableText,
                      ),
                      Text(
                        textAlign: TextAlign.center,
                        '20000',
                        style: kTableText,
                      )
                    ]),
                    TableRow(children: [
                      Text(
                        textAlign: TextAlign.center,
                        'Age',
                        style: kTableText,
                      ),
                      Text(
                        textAlign: TextAlign.center,
                        '20',
                        style: kTableText,
                      )
                    ]),
                    TableRow(children: [
                      Text(
                        textAlign: TextAlign.center,
                        'Policy Term',
                        style: kTableText,
                      ),
                      Text(
                        textAlign: TextAlign.center,
                        '20000',
                        style: kTableText,
                      )
                    ]),
                    TableRow(children: [
                      Text(
                        textAlign: TextAlign.center,
                        'Death Sum Assured',
                        style: kTableText,
                      ),
                      Text(
                        textAlign: TextAlign.center,
                        '20000',
                        style: kTableText,
                      )
                    ]),
                    TableRow(children: [
                      Text(
                        textAlign: TextAlign.center,
                        'Accidental Rider Sum Assured',
                        style: kTableText,
                      ),
                      Text(
                        textAlign: TextAlign.center,
                        '20000',
                        style: kTableText,
                      )
                    ]),
                    TableRow(children: [
                      Text(
                        textAlign: TextAlign.center,
                        'Term Rider Sum Assured',
                        style: kTableText,
                      ),
                      Text(
                        textAlign: TextAlign.center,
                        '20000',
                        style: kTableText,
                      )
                    ]),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: Container(
                  color: Colors.grey,
                  child: const Center(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'First Year Premium',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 20),
                child: Table(
                  border: TableBorder.all(),
                  children: const [
                    TableRow(children: [
                      Text(
                        textAlign: TextAlign.center,
                        'Mode',
                        style: kTableText,
                      ),
                      Text(
                        textAlign: TextAlign.center,
                        'Premium',
                        style: kTableText,
                      ),
                      Text(
                        textAlign: TextAlign.center,
                        'GST (@4.5% )',
                        style: kTableText,
                      ),
                      Text(
                        textAlign: TextAlign.center,
                        'Total Premium',
                        style: kTableText,
                      ),
                    ]),
                    TableRow(children: [
                      Text(
                        textAlign: TextAlign.center,
                        'Yearly',
                        style: kTableText,
                      ),
                      Text(
                        textAlign: TextAlign.center,
                        '20',
                        style: kTableText,
                      ),
                      Text(
                        textAlign: TextAlign.center,
                        'Yearly',
                        style: kTableText,
                      ),
                      Text(
                        textAlign: TextAlign.center,
                        'Yearly',
                        style: kTableText,
                      ),
                    ]),
                    TableRow(children: [
                      Text(
                        textAlign: TextAlign.center,
                        'Half Yearly',
                        style: kTableText,
                      ),
                      Text(
                        textAlign: TextAlign.center,
                        'Yearly',
                        style: kTableText,
                      ),
                      Text(
                        textAlign: TextAlign.center,
                        'Policy Term',
                        style: kTableText,
                      ),
                      Text(
                        textAlign: TextAlign.center,
                        '20000',
                        style: kTableText,
                      )
                    ]),
                    TableRow(children: [
                      Text(
                        textAlign: TextAlign.center,
                        'Quarterly',
                        style: kTableText,
                      ),
                      Text(
                        textAlign: TextAlign.center,
                        'Death Sum Assured',
                        style: kTableText,
                      ),
                      Text(
                        textAlign: TextAlign.center,
                        'Death Sum Assured',
                        style: kTableText,
                      ),
                      Text(
                        textAlign: TextAlign.center,
                        '20000',
                        style: kTableText,
                      )
                    ]),
                    TableRow(children: [
                      Text(
                        textAlign: TextAlign.center,
                        'Monthly',
                        style: kTableText,
                      ),
                      Text(
                        textAlign: TextAlign.center,
                        'Accidental Rider Sum Assured',
                        style: kTableText,
                      ),
                      Text(
                        textAlign: TextAlign.center,
                        'Accidental Rider Sum Assured',
                        style: kTableText,
                      ),
                      Text(
                        textAlign: TextAlign.center,
                        '20000',
                        style: kTableText,
                      )
                    ]),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: Container(
                  color: Colors.grey,
                  child: const Center(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Second Year Onward Premium',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 20),
                child: Table(
                  border: TableBorder.all(),
                  children: const [
                    TableRow(children: [
                      Text(
                        textAlign: TextAlign.center,
                        'Mode',
                        style: kTableText,
                      ),
                      Text(
                        textAlign: TextAlign.center,
                        'Premium',
                        style: kTableText,
                      ),
                      Text(
                        textAlign: TextAlign.center,
                        'GST (@4.5% )',
                        style: kTableText,
                      ),
                      Text(
                        textAlign: TextAlign.center,
                        'Total Premium',
                        style: kTableText,
                      ),
                    ]),
                    TableRow(children: [
                      Text(
                        textAlign: TextAlign.center,
                        'Yearly',
                        style: kTableText,
                      ),
                      Text(
                        textAlign: TextAlign.center,
                        '20',
                        style: kTableText,
                      ),
                      Text(
                        textAlign: TextAlign.center,
                        'Yearly',
                        style: kTableText,
                      ),
                      Text(
                        textAlign: TextAlign.center,
                        'Yearly',
                        style: kTableText,
                      ),
                    ]),
                    TableRow(children: [
                      Text(
                        textAlign: TextAlign.center,
                        'Half Yearly',
                        style: kTableText,
                      ),
                      Text(
                        textAlign: TextAlign.center,
                        'Yearly',
                        style: kTableText,
                      ),
                      Text(
                        textAlign: TextAlign.center,
                        'Policy Term',
                        style: kTableText,
                      ),
                      Text(
                        textAlign: TextAlign.center,
                        '20000',
                        style: kTableText,
                      )
                    ]),
                    TableRow(children: [
                      Text(
                        textAlign: TextAlign.center,
                        'Quarterly',
                        style: kTableText,
                      ),
                      Text(
                        textAlign: TextAlign.center,
                        'Death Sum Assured',
                        style: kTableText,
                      ),
                      Text(
                        textAlign: TextAlign.center,
                        'Death Sum Assured',
                        style: kTableText,
                      ),
                      Text(
                        textAlign: TextAlign.center,
                        '20000',
                        style: kTableText,
                      )
                    ]),
                    TableRow(children: [
                      Text(
                        textAlign: TextAlign.center,
                        'Monthly',
                        style: kTableText,
                      ),
                      Text(
                        textAlign: TextAlign.center,
                        'Accidental Rider Sum Assured',
                        style: kTableText,
                      ),
                      Text(
                        textAlign: TextAlign.center,
                        'Accidental Rider Sum Assured',
                        style: kTableText,
                      ),
                      Text(
                        textAlign: TextAlign.center,
                        '20000',
                        style: kTableText,
                      )
                    ]),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: Container(
                  color: Colors.grey,
                  child: const Center(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Maturity Benefits',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 20),
                child: Table(
                  border: TableBorder.all(),
                  children: const [
                    TableRow(children: [
                      Text(
                        textAlign: TextAlign.center,
                        'Sum Assured (A)',
                        style: kTableText,
                      ),
                      Text(
                        textAlign: TextAlign.center,
                        '20000',
                        style: kTableText,
                      )
                    ]),
                    TableRow(children: [
                      Text(
                        textAlign: TextAlign.center,
                        'Total Premium Paid (Approx)',
                        style: kTableText,
                      ),
                      Text(
                        textAlign: TextAlign.center,
                        '20',
                        style: kTableText,
                      )
                    ]),
                    TableRow(children: [
                      Text(
                        textAlign: TextAlign.center,
                        'Accumulated Bonus (Approx) (B)',
                        style: kTableText,
                      ),
                      Text(
                        textAlign: TextAlign.center,
                        '20000',
                        style: kTableText,
                      )
                    ]),
                    TableRow(children: [
                      Text(
                        textAlign: TextAlign.center,
                        'Final Addition Bonus (FAB) (Approx) (C)',
                        style: kTableText,
                      ),
                      Text(
                        textAlign: TextAlign.center,
                        '20000',
                        style: kTableText,
                      )
                    ]),
                    TableRow(children: [
                      Text(
                        textAlign: TextAlign.center,
                        'Maturity (Approx) (A+B+C)',
                        style: kTableText,
                      ),
                      Text(
                        textAlign: TextAlign.center,
                        '20000',
                        style: kTableText,
                      )
                    ]),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
