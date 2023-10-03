import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Checkout extends StatefulWidget {
  const Checkout({super.key});

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  bool checkoutIn = true;
  int _value = 1;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(top: 20.r, left: 8.r, right: 8.r, bottom: 8.r),
        color: Colors.teal.shade50,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 17.r, horizontal: 16.r),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                color: Colors.white,
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Keep social distancing',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            letterSpacing: 0.6,
                          ),
                        ),
                        SizedBox(height: 6.h),
                        const Text(
                          'Leave your order on the doorstep',
                          style: TextStyle(fontSize: 18, color: Colors.black54),
                        )
                      ],
                    ),
                    Transform.scale(
                      scale: 1.5,
                      child: Switch(
                        activeTrackColor: Colors.teal.shade50,
                        value: checkoutIn,
                        activeColor: Colors.teal,
                        onChanged: (bool value) {
                          setState(() {
                            checkoutIn = value;
                          });
                        },
                      ),
                    )
                  ]),
            ),
            SizedBox(height: 16.h),
            Container(
              padding: EdgeInsets.symmetric(vertical: 17.r, horizontal: 16.r),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Deliver to',
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 18,
                              letterSpacing: 0.8,
                            ),
                          ),
                          SizedBox(
                            height: 9.h,
                          ),
                          const Text(
                            'Jl. Jayakatwang no 301',
                            style: TextStyle(
                              letterSpacing: 0.8,
                              fontSize: 18,
                            ),
                          )
                        ],
                      ),
                      Transform.scale(
                        scale: 2,
                        child: Radio(
                          value: 0,
                          groupValue: _value,
                          onChanged: ((value) {
                            setState(() {
                              _value = value!;
                            });
                          }),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 14.h),
                  Container(
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(31, 194, 204, 228)),
                    padding: const EdgeInsets.all(8),
                    child: const TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.list_alt,
                          color: Colors.black26,
                        ),
                        hintText: 'Add a note of delivery address',
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 16.h),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'My Bucket',
                        style: TextStyle(
                            fontSize: 22,
                            letterSpacing: 0.8,
                            color: Colors.black),
                      ),
                      TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.add),
                        label: const Text(
                          'Add Items',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 10.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 82.h,
                            width: 72.h,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/food1.png'),
                              ),
                            ),
                          ),
                          SizedBox(width: 12.w),
                          Column(
                            children: [
                              const Text(
                                'Fruit salad mix',
                                style: TextStyle(
                                  fontSize: 18,
                                  letterSpacing: 0.8,
                                ),
                              ),
                              SizedBox(height: 10.h),
                              Row(
                                children: [
                                  const Text(
                                    '18.500',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black54,
                                    ),
                                  ),
                                  SizedBox(width: 10.w),
                                  const Text(
                                    '22.500',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black38,
                                        decoration: TextDecoration.lineThrough),
                                  )
                                ],
                              ),
                              SizedBox(height: 10.h),
                              Row(
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    height: 18.w,
                                    width: 18.w,
                                    decoration: BoxDecoration(
                                      color: Colors.teal,
                                      borderRadius:
                                          BorderRadius.circular(18.r / 2),
                                    ),
                                    child: const Text(
                                      '%',
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10.w),
                                  const Text(
                                    'Free delivery',
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.black54),
                                  )
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                      Container(
                        height: 28.h,
                        width: 28.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(28.r / 2),
                          color: Colors.black12,
                        ),
                        child: const Icon(
                          Icons.delete_outline_outlined,
                          color: Colors.teal,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 36.h,
                        width: 36.w,
                        decoration: BoxDecoration(
                          color: Colors.teal.shade50,
                          borderRadius: BorderRadius.circular(4.r),
                        ),
                        child: const Icon(
                          Icons.edit_outlined,
                          size: 30,
                          color: Colors.teal,
                        ),
                      ),
                      SizedBox(width: 10.w),
                      Container(
                        height: 36.h,
                        width: 108.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.r),
                          color: const Color.fromARGB(31, 183, 177, 177),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 36.h,
                              width: 36.w,
                              decoration: BoxDecoration(
                                color: Colors.black12,
                                borderRadius: BorderRadius.circular(4.r),
                              ),
                              child: const Icon(
                                Icons.remove,
                                size: 30,
                                color: Colors.white,
                              ),
                            ),
                            Text('1'),
                            Container(
                              height: 36.h,
                              width: 36.w,
                              decoration: BoxDecoration(
                                color: Colors.teal,
                                borderRadius: BorderRadius.circular(4.r),
                              ),
                              child: const Icon(
                                Icons.add,
                                size: 30,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 16.h),
            Container(
              padding: const EdgeInsets.symmetric(
                vertical: 17,
                horizontal: 16,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Payment',
                    style: TextStyle(
                      fontSize: 22,
                      letterSpacing: 0.8,
                    ),
                  ),
                  SizedBox(height: 20.h),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Item total',
                        style: TextStyle(
                          fontSize: 16,
                          letterSpacing: 0.8,
                        ),
                      ),
                      Text(
                        'Rp 18.500',
                        style: TextStyle(
                          fontSize: 16,
                          letterSpacing: 0.8,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16.h),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Delivery fee',
                        style: TextStyle(
                          fontSize: 16,
                          letterSpacing: 0.8,
                        ),
                      ),
                      Text(
                        'Rp 0',
                        style: TextStyle(
                          fontSize: 16,
                          letterSpacing: 0.8,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 10.h),
            ElevatedButton(
              onPressed: () {},
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 2),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Place order',
                      style: TextStyle(fontSize: 16, letterSpacing: 0.8),
                    ),
                    Text(
                      'Rp 18.500',
                      style: TextStyle(fontSize: 16, letterSpacing: 0.8),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
