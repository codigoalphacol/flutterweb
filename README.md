# flutterweb

![Codigo Alpha Flutter]

![alt text](https://github.com/codigoalphacol/flutterweb/blob/main/inicio.png)

In file navigation_device.dart

change

 double width = MediaQuery.of(context).size.width;

    setState(() {
     print(width);    
    });


    if (width > 1050) {
      return menuScreenDesktop(context);      
    } else if (width > 600 && width < 1050) {
      return menuScreenTablet(context);
    } else if (width < 600) {
      return menuScreenPhone(context);
    } else {
      return menuScreenDesktop(context);
    }
