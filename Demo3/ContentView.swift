//
//  ContentView.swift
//  Demo3
//
//  Created by User11 on 2020/9/23.
//

import SwiftUI

struct ball: Shape{
    func path(in rect: CGRect) -> Path {
        Path{(path)in
            path.move(to: CGPoint(x:rect.width/2, y:rect.width))
            path.addQuadCurve(to: CGPoint(x: rect.width, y: rect.width/2), control: CGPoint(x: rect.width, y: rect.width))
            path.addQuadCurve(to: CGPoint(x: rect.width/2, y: 0), control: CGPoint(x: rect.width, y: 0))
            path.addQuadCurve(to: CGPoint(x: 0, y: rect.width/2), control: CGPoint(x: 0, y: 0))
            path.addQuadCurve(to: CGPoint(x: rect.width/2, y: rect.width), control: CGPoint(x: 0, y: rect.width))
            path.closeSubpath()
        }
    }
}


struct ContentView: View {
    var body: some View {
        
        
        ZStack{
            //backgrounp
            Image("background")
                .resizable()
                .scaledToFill()
                .frame(minWidth: 0, maxWidth: .infinity)
                .edgesIgnoringSafeArea(.all)
            //Bart Simpson
            ZStack{
                
                //head
                Group{
                    //teeth
                    Path{(path)in
                        path.move(to: CGPoint(x:525*0.4, y:560*0.4))
                        path.addLine(to: CGPoint(x:535*0.4, y:528*0.4))
                        path.addLine(to: CGPoint(x:436*0.4, y:512*0.4))
                        path.addLine(to: CGPoint(x:436*0.4, y:560*0.4))
                        path.closeSubpath()
                    }
                    .fill(Color(red: 1, green: 1, blue: 1))
                    
                    Path{(path)in
                        //head
                        path.move(to: CGPoint(x:415*0.4, y:473*0.4))
                        path.addLine(to: CGPoint(x:334*0.4, y:236*0.4))
                        //hair
                        path.addLine(to: CGPoint(x:359*0.4, y:245*0.4))
                        path.addLine(to: CGPoint(x:361*0.4, y:216*0.4))
                        path.addLine(to: CGPoint(x:381*0.4, y:230*0.4))
                        path.addLine(to: CGPoint(x:386*0.4, y:203*0.4))
                        path.addLine(to: CGPoint(x:406*0.4, y:215*0.4))
                        path.addLine(to: CGPoint(x:414*0.4, y:191*0.4))
                        path.addLine(to: CGPoint(x:438*0.4, y:206*0.4))
                        path.addLine(to: CGPoint(x:445*0.4, y:178*0.4))
                        path.addLine(to: CGPoint(x:468*0.4, y:200*0.4))
                        path.addLine(to: CGPoint(x:477*0.4, y:172*0.4))
                        path.addLine(to: CGPoint(x:498*0.4, y:190*0.4))
                        path.addLine(to: CGPoint(x:509*0.4, y:168*0.4))
                        path.addLine(to: CGPoint(x:525*0.4, y:190*0.4))
                        path.addLine(to: CGPoint(x:538*0.4, y:168*0.4))
                        path.addLine(to: CGPoint(x:549*0.4, y:191*0.4))
                        path.addLine(to: CGPoint(x:568*0.4, y:170*0.4))
                        //forehead
                        path.addLine(to: CGPoint(x:599*0.4, y:307*0.4))
                        path.addQuadCurve(to: CGPoint(x: 612*0.4, y: 336*0.4), control: CGPoint(x: 620*0.4, y: 317*0.4))
                        //mouth
                        path.addLine(to: CGPoint(x:623*0.4, y:421*0.4))
                        path.addLine(to: CGPoint(x:640*0.4, y:466*0.4))
                        path.addQuadCurve(to: CGPoint(x: 452*0.4, y: 519*0.4), control: CGPoint(x: 690*0.4, y: 550*0.4))
                        path.addQuadCurve(to: CGPoint(x: 525*0.4, y: 560*0.4), control: CGPoint(x: 420*0.4, y: 540*0.4))
                        //neck
                        path.addLine(to: CGPoint(x:528*0.4, y:553*0.4))
                        path.addCurve(to: CGPoint(x: 518*0.4, y: 576*0.4), control1: CGPoint(x: 540*0.4, y: 555*0.4), control2: CGPoint(x: 540*0.4, y: 575*0.4))
                        path.addQuadCurve(to: CGPoint(x: 525*0.4, y: 575*0.4), control: CGPoint(x: 524*0.4, y: 575*0.4))
                        path.addLine(to: CGPoint(x:523*0.4, y:592*0.4))
                        path.addQuadCurve(to: CGPoint(x: 420*0.4, y: 577*0.4), control: CGPoint(x: 470*0.4, y: 610*0.4))
                        path.addLine(to: CGPoint(x:422*0.4, y:518*0.4))
                        path.closeSubpath()
                    }
                    .fill(Color(red: 255/255, green: 217/255, blue: 14/255))
                    
                    //right eye
                    Path{(path)in
                        path.move(to: CGPoint(x:495*0.4, y:348*0.4))
                        path.addQuadCurve(to: CGPoint(x: 444*0.4, y: 410*0.4), control: CGPoint(x: 440*0.4, y: 360*0.4))
                        path.addQuadCurve(to: CGPoint(x: 500*0.4, y: 453*0.4), control: CGPoint(x: 454*0.4, y: 451*0.4))
                        path.addQuadCurve(to: CGPoint(x: 560*0.4, y: 389*0.4), control: CGPoint(x: 570*0.4, y: 450*0.4))
                        path.addQuadCurve(to: CGPoint(x: 495*0.4, y: 348*0.4), control: CGPoint(x: 540*0.4, y: 340*0.4))
                    }
                    .fill(Color(red: 1, green: 1, blue: 1))
                    Path(ellipseIn: CGRect(x: 480*0.4, y: 395*0.4, width: 8, height: 8))
                    
                    //left eye
                    Path{(path)in
                        path.move(to: CGPoint(x:616*0.4, y:425*0.4))
                        path.addQuadCurve(to: CGPoint(x: 640*0.4, y: 372*0.4), control: CGPoint(x: 645*0.4, y: 410*0.4))
                        path.addQuadCurve(to: CGPoint(x: 590*0.4, y: 334*0.4), control: CGPoint(x: 630*0.4, y: 330*0.4))
                        path.addQuadCurve(to: CGPoint(x: 542*0.4, y: 365*0.4), control: CGPoint(x: 555*0.4, y: 335*0.4))
                        path.addQuadCurve(to: CGPoint(x: 616*0.4, y: 425*0.4), control: CGPoint(x: 535*0.4, y: 435*0.4))
                    }
                    .fill(Color(red: 1, green: 1, blue: 1))
                    Path(ellipseIn: CGRect(x: 590*0.4, y: 373*0.4, width: 7.5, height: 7.5))
                    
                    //nose
                    Path{(path)in
                        path.move(to: CGPoint(x:556*0.4, y:417*0.4))
                        path.addQuadCurve(to: CGPoint(x: 594*0.4, y: 411*0.4), control: CGPoint(x: 563*0.4, y: 422*0.4))
                        path.addCurve(to: CGPoint(x: 615*0.4, y: 445*0.4), control1: CGPoint(x: 620*0.4, y: 408*0.4), control2: CGPoint(x: 620*0.4, y: 438*0.4))
                        path.addQuadCurve(to: CGPoint(x: 583*0.4, y: 460*0.4), control: CGPoint(x: 610*0.4, y: 455*0.4))
                    }
                    .fill(Color(red: 255/255, green: 217/255, blue: 14/255))
                    
                    //ear
                    Path{(path)in
                        path.move(to: CGPoint(x:435*0.4, y:477*0.4))
                        path.addCurve(to: CGPoint(x: 436*0.4, y: 512*0.4), control1: CGPoint(x: 380*0.4, y: 450*0.4), control2: CGPoint(x: 400*0.4, y: 540*0.4))
                        path.move(to: CGPoint(x:412*0.4, y:490*0.4))
                        path.addQuadCurve(to: CGPoint(x: 430*0.4, y: 501*0.4), control: CGPoint(x: 428*0.4, y: 485*0.4))
                        path.move(to: CGPoint(x:416*0.4, y:501*0.4))
                        path.addQuadCurve(to: CGPoint(x: 424*0.4, y: 490*0.4), control: CGPoint(x: 415*0.4, y: 490*0.4))
                    }
                    .fill(Color(red: 255/255, green: 217/255, blue: 14/255))
                }
                //body
                ZStack{
                    //legs
                    Group{
                        //left
                        Path{(path)in
                            path.move(to: CGPoint(x:400*0.4, y:870*0.4))
                            path.addQuadCurve(to: CGPoint(x: 395*0.4, y: 970*0.4), control: CGPoint(x: 396*0.4, y: 912*0.4))
                            path.addLine(to: CGPoint(x:447*0.4, y:968*0.4))
                            path.addQuadCurve(to: CGPoint(x: 447*0.4, y: 873*0.4), control: CGPoint(x: 454*0.4, y: 911*0.4))
                            path.closeSubpath()
                        }
                        .fill(Color(red: 255/255, green: 217/255, blue: 14/255))
                        Path{(path)in
                            path.move(to: CGPoint(x:400*0.4, y:870*0.4))
                            path.addQuadCurve(to: CGPoint(x: 395*0.4, y: 970*0.4), control: CGPoint(x: 396*0.4, y: 912*0.4))
                            path.addLine(to: CGPoint(x:447*0.4, y:968*0.4))
                            path.addQuadCurve(to: CGPoint(x: 447*0.4, y: 873*0.4), control: CGPoint(x: 454*0.4, y: 911*0.4))
                            path.closeSubpath()
                        }
                        .stroke(lineWidth: 2)
                        //right
                        Path{(path)in
                            path.move(to: CGPoint(x:482*0.4, y:858*0.4))
                            path.addQuadCurve(to: CGPoint(x: 484*0.4, y: 944*0.4), control: CGPoint(x: 482*0.4, y: 903*0.4))
                            path.addLine(to: CGPoint(x:533*0.4, y:951*0.4))
                            path.addQuadCurve(to: CGPoint(x: 533*0.4, y: 858*0.4), control: CGPoint(x: 538*0.4, y: 896*0.4))
                            path.closeSubpath()
                        }
                        .fill(Color(red: 255/255, green: 217/255, blue: 14/255))
                        Path{(path)in
                            path.move(to: CGPoint(x:482*0.4, y:858*0.4))
                            path.addQuadCurve(to: CGPoint(x: 484*0.4, y: 944*0.4), control: CGPoint(x: 482*0.4, y: 903*0.4))
                            path.addLine(to: CGPoint(x:533*0.4, y:951*0.4))
                            path.addQuadCurve(to: CGPoint(x: 533*0.4, y: 858*0.4), control: CGPoint(x: 538*0.4, y: 896*0.4))
                            path.closeSubpath()
                        }
                        .stroke(lineWidth: 2)
                    }
                    //shoe-right
                    Group{
                        //1-right
                        Path{(path)in
                            path.move(to: CGPoint(x:476*0.4, y:948*0.4))
                            path.addQuadCurve(to: CGPoint(x: 460*0.4, y: 1023*0.4), control: CGPoint(x: 456*0.4, y: 986*0.4))
                            path.addQuadCurve(to: CGPoint(x: 595*0.4, y: 1017*0.4), control: CGPoint(x: 518*0.4, y: 1030*0.4))
                            path.addCurve(to: CGPoint(x: 532*0.4, y: 943*0.4), control1: CGPoint(x: 594*0.4, y: 975*0.4), control2: CGPoint(x: 574*0.4, y: 960*0.4))
                            path.closeSubpath()
                        }
                        .fill(Color(red: 64/255, green: 195/255, blue: 254/255))
                        Path{(path)in
                            path.move(to: CGPoint(x:476*0.4, y:948*0.4))
                            path.addQuadCurve(to: CGPoint(x: 460*0.4, y: 1023*0.4), control: CGPoint(x: 456*0.4, y: 986*0.4))
                            path.addQuadCurve(to: CGPoint(x: 595*0.4, y: 1017*0.4), control: CGPoint(x: 518*0.4, y: 1030*0.4))
                            path.addCurve(to: CGPoint(x: 532*0.4, y: 943*0.4), control1: CGPoint(x: 594*0.4, y: 975*0.4), control2: CGPoint(x: 574*0.4, y: 960*0.4))
                            path.closeSubpath()
                        }
                        .stroke(lineWidth: 2)
                        //2-right
                        Path{(path)in
                            path.move(to: CGPoint(x:460*0.4, y:1023*0.4))
                            path.addQuadCurve(to: CGPoint(x: 595*0.4, y: 1017*0.4), control: CGPoint(x: 518*0.4, y: 1030*0.4))
                            path.addQuadCurve(to: CGPoint(x: 590*0.4, y: 999*0.4), control: CGPoint(x: 595*0.4, y: 1001*0.4))
                            path.addQuadCurve(to: CGPoint(x: 466*0.4, y: 1007*0.4), control: CGPoint(x: 518*0.4, y: 1015*0.4))
                            path.closeSubpath()
                        }
                        .fill(Color(red: 255/255, green: 255/255, blue: 255/255))
                        Path{(path)in
                            path.move(to: CGPoint(x:460*0.4, y:1023*0.4))
                            path.addQuadCurve(to: CGPoint(x: 595*0.4, y: 1017*0.4), control: CGPoint(x: 518*0.4, y: 1030*0.4))
                            path.addQuadCurve(to: CGPoint(x: 590*0.4, y: 999*0.4), control: CGPoint(x: 595*0.4, y: 1001*0.4))
                            path.addQuadCurve(to: CGPoint(x: 466*0.4, y: 1007*0.4), control: CGPoint(x: 518*0.4, y: 1015*0.4))
                            path.closeSubpath()
                        }
                        .stroke(lineWidth: 2)
                        Path(ellipseIn: CGRect(x: 492*0.4, y: 970*0.4, width: 8, height: 8))
                            .fill(Color(red: 255/255, green: 255/255, blue: 255/255))
                        Path(ellipseIn: CGRect(x: 492*0.4, y: 970*0.4, width: 8, height: 8))
                            .stroke(lineWidth: 2)
                        //3-right
                        Path{(path)in
                            path.move(to: CGPoint(x:481*0.4, y:931*0.4))
                            path.addQuadCurve(to: CGPoint(x: 482*0.4, y: 953*0.4), control: CGPoint(x: 456*0.4, y: 936*0.4))
                            path.addQuadCurve(to: CGPoint(x: 538*0.4, y: 952*0.4), control: CGPoint(x: 505*0.4, y: 965*0.4))
                            path.addQuadCurve(to: CGPoint(x: 536*0.4, y: 931*0.4), control: CGPoint(x: 558*0.4, y: 938*0.4))
                            path.addQuadCurve(to: CGPoint(x: 512*0.4, y: 942*0.4), control: CGPoint(x: 538*0.4, y: 939*0.4))
                            path.addQuadCurve(to: CGPoint(x: 481*0.4, y: 931*0.4), control: CGPoint(x: 477*0.4, y: 936*0.4))
                            path.closeSubpath()
                        }
                        .fill(Color(red: 255/255, green: 255/255, blue: 255/255))
                        Path{(path)in
                            path.move(to: CGPoint(x:481*0.4, y:931*0.4))
                            path.addQuadCurve(to: CGPoint(x: 482*0.4, y: 953*0.4), control: CGPoint(x: 456*0.4, y: 936*0.4))
                            path.addQuadCurve(to: CGPoint(x: 538*0.4, y: 952*0.4), control: CGPoint(x: 505*0.4, y: 965*0.4))
                            path.addQuadCurve(to: CGPoint(x: 536*0.4, y: 931*0.4), control: CGPoint(x: 558*0.4, y: 938*0.4))
                            path.addQuadCurve(to: CGPoint(x: 512*0.4, y: 942*0.4), control: CGPoint(x: 538*0.4, y: 939*0.4))
                            path.addQuadCurve(to: CGPoint(x: 481*0.4, y: 931*0.4), control: CGPoint(x: 477*0.4, y: 936*0.4))
                            path.closeSubpath()
                        }
                        .stroke(lineWidth: 2)
                    }
                    //shoe-left
                    Group{
                        //1-left
                        Path{(path)in
                            path.move(to: CGPoint(x:388*0.4, y:964*0.4))
                            path.addQuadCurve(to: CGPoint(x: 378*0.4, y: 1026*0.4), control: CGPoint(x: 370*0.4, y: 995*0.4))
                            path.addQuadCurve(to: CGPoint(x: 508*0.4, y: 1032*0.4), control: CGPoint(x: 432*0.4, y: 1048*0.4))
                            path.addCurve(to: CGPoint(x: 457*0.4, y: 960*0.4), control1: CGPoint(x: 507*0.4, y: 987*0.4), control2: CGPoint(x: 486*0.4, y: 970*0.4))
                            path.closeSubpath()
                        }
                        .fill(Color(red: 64/255, green: 195/255, blue: 254/255))
                        Path{(path)in
                            path.move(to: CGPoint(x:388*0.4, y:964*0.4))
                            path.addQuadCurve(to: CGPoint(x: 378*0.4, y: 1026*0.4), control: CGPoint(x: 370*0.4, y: 995*0.4))
                            path.addQuadCurve(to: CGPoint(x: 508*0.4, y: 1032*0.4), control: CGPoint(x: 432*0.4, y: 1048*0.4))
                            path.addCurve(to: CGPoint(x: 457*0.4, y: 960*0.4), control1: CGPoint(x: 507*0.4, y: 987*0.4), control2: CGPoint(x: 486*0.4, y: 970*0.4))
                            path.closeSubpath()
                        }
                        .stroke(lineWidth: 2)
                        //2-left
                        Path{(path)in
                            path.move(to: CGPoint(x:378*0.4, y:1026*0.4))
                            path.addQuadCurve(to: CGPoint(x: 507*0.4, y: 1032*0.4), control: CGPoint(x: 432*0.4, y: 1048*0.4))
                            path.addQuadCurve(to: CGPoint(x: 505*0.4, y: 1013*0.4), control: CGPoint(x: 506*0.4, y: 1026*0.4))
                            path.addQuadCurve(to: CGPoint(x: 375*0.4, y: 1005*0.4), control: CGPoint(x: 432*0.4, y: 1033*0.4))
                            path.addQuadCurve(to: CGPoint(x: 378*0.4, y: 1026*0.4), control: CGPoint(x: 372*0.4, y: 1014*0.4))
                            path.closeSubpath()
                        }
                        .fill(Color(red: 255/255, green: 255/255, blue: 255/255))
                        Path{(path)in
                            path.move(to: CGPoint(x:378*0.4, y:1026*0.4))
                            path.addQuadCurve(to: CGPoint(x: 507*0.4, y: 1032*0.4), control: CGPoint(x: 432*0.4, y: 1048*0.4))
                            path.addQuadCurve(to: CGPoint(x: 505*0.4, y: 1013*0.4), control: CGPoint(x: 506*0.4, y: 1026*0.4))
                            path.addQuadCurve(to: CGPoint(x: 375*0.4, y: 1005*0.4), control: CGPoint(x: 432*0.4, y: 1033*0.4))
                            path.addQuadCurve(to: CGPoint(x: 378*0.4, y: 1026*0.4), control: CGPoint(x: 372*0.4, y: 1014*0.4))
                            path.closeSubpath()
                        }
                        .stroke(lineWidth: 2)
                        //3-left
                        Path{(path)in
                            path.move(to: CGPoint(x:392*0.4, y:943*0.4))
                            path.addQuadCurve(to: CGPoint(x: 390*0.4, y: 965*0.4), control: CGPoint(x: 371*0.4, y: 950*0.4))
                            path.addQuadCurve(to: CGPoint(x: 458*0.4, y: 963*0.4), control: CGPoint(x: 421*0.4, y: 976*0.4))
                            path.addQuadCurve(to: CGPoint(x: 451*0.4, y: 944*0.4), control: CGPoint(x: 474*0.4, y: 951*0.4))
                            path.addQuadCurve(to: CGPoint(x: 424*0.4, y: 955*0.4), control: CGPoint(x: 444*0.4, y: 956*0.4))
                            path.addQuadCurve(to: CGPoint(x: 407*0.4, y: 954*0.4), control: CGPoint(x: 424*0.4, y: 956*0.4))
                            path.addQuadCurve(to: CGPoint(x: 392*0.4, y: 943*0.4), control: CGPoint(x: 390*0.4, y: 954*0.4))
                            path.closeSubpath()
                        }
                        .fill(Color(red: 255/255, green: 255/255, blue: 255/255))
                        Path{(path)in
                            path.move(to: CGPoint(x:392*0.4, y:943*0.4))
                            path.addQuadCurve(to: CGPoint(x: 390*0.4, y: 965*0.4), control: CGPoint(x: 371*0.4, y: 950*0.4))
                            path.addQuadCurve(to: CGPoint(x: 458*0.4, y: 963*0.4), control: CGPoint(x: 421*0.4, y: 976*0.4))
                            path.addQuadCurve(to: CGPoint(x: 451*0.4, y: 944*0.4), control: CGPoint(x: 474*0.4, y: 951*0.4))
                            path.addQuadCurve(to: CGPoint(x: 424*0.4, y: 955*0.4), control: CGPoint(x: 444*0.4, y: 956*0.4))
                            path.addQuadCurve(to: CGPoint(x: 407*0.4, y: 954*0.4), control: CGPoint(x: 424*0.4, y: 956*0.4))
                            path.addQuadCurve(to: CGPoint(x: 392*0.4, y: 943*0.4), control: CGPoint(x: 390*0.4, y: 954*0.4))
                            path.closeSubpath()
                        }
                        .stroke(lineWidth: 2)
                    }
                    
                    //pants
                    Group{
                        //right
                        Path{(path)in
                            path.move(to: CGPoint(x:478*0.4, y:789*0.4))
                            path.addQuadCurve(to: CGPoint(x: 470*0.4, y: 863*0.4), control: CGPoint(x: 463*0.4, y: 839*0.4))
                            path.addQuadCurve(to: CGPoint(x: 560*0.4, y: 858*0.4), control: CGPoint(x: 515*0.4, y: 872*0.4))
                            path.addQuadCurve(to: CGPoint(x: 552*0.4, y: 767*0.4), control: CGPoint(x: 565*0.4, y: 819*0.4))
                            path.closeSubpath()
                        }
                        .fill(Color(red: 64/255, green: 195/255, blue: 254/255))
                        Path{(path)in
                            path.move(to: CGPoint(x:478*0.4, y:789*0.4))
                            path.addQuadCurve(to: CGPoint(x: 470*0.4, y: 863*0.4), control: CGPoint(x: 463*0.4, y: 839*0.4))
                            path.addQuadCurve(to: CGPoint(x: 560*0.4, y: 858*0.4), control: CGPoint(x: 515*0.4, y: 872*0.4))
                            path.addQuadCurve(to: CGPoint(x: 552*0.4, y: 767*0.4), control: CGPoint(x: 565*0.4, y: 819*0.4))
                            path.closeSubpath()
                            path.move(to: CGPoint(x:480*0.4, y:844*0.4))
                            path.addQuadCurve(to: CGPoint(x: 560*0.4, y: 811*0.4), control: CGPoint(x: 520*0.4, y: 850*0.4))
                        }
                        .stroke(lineWidth: 2)
                        
                        //left
                        Path{(path)in
                            path.move(to: CGPoint(x:370*0.4, y:833*0.4))
                            path.addQuadCurve(to: CGPoint(x: 363*0.4, y: 875*0.4), control: CGPoint(x: 363*0.4, y: 839*0.4))
                            path.addQuadCurve(to: CGPoint(x: 489*0.4, y: 874*0.4), control: CGPoint(x: 422*0.4, y: 889*0.4))
                            path.addQuadCurve(to: CGPoint(x: 486*0.4, y: 800*0.4), control: CGPoint(x: 493*0.4, y: 839*0.4))
                            path.closeSubpath()
                        }
                        .fill(Color(red: 64/255, green: 195/255, blue: 254/255))
                        Path{(path)in
                            path.move(to: CGPoint(x:370*0.4, y:833*0.4))
                            path.addQuadCurve(to: CGPoint(x: 363*0.4, y: 875*0.4), control: CGPoint(x: 363*0.4, y: 839*0.4))
                            path.addQuadCurve(to: CGPoint(x: 489*0.4, y: 874*0.4), control: CGPoint(x: 422*0.4, y: 889*0.4))
                            path.addQuadCurve(to: CGPoint(x: 486*0.4, y: 800*0.4), control: CGPoint(x: 493*0.4, y: 839*0.4))
                            path.closeSubpath()
                        }
                        .stroke(lineWidth: 2)
                    }
                }
                
                //shirt1
                Path{(path)in
                    path.move(to: CGPoint(x:534*0.4, y:615*0.4))
                    path.addQuadCurve(to: CGPoint(x: 523*0.4, y: 592*0.4), control: CGPoint(x: 534*0.4, y: 605*0.4))
                    path.addQuadCurve(to: CGPoint(x: 420*0.4, y: 577*0.4), control: CGPoint(x: 470*0.4, y: 610*0.4))
                    path.addQuadCurve(to: CGPoint(x: 402*0.4, y: 608*0.4), control: CGPoint(x: 405*0.4, y: 593*0.4))
                    path.addLine(to: CGPoint(x:393*0.4, y:689*0.4))
                    path.addLine(to: CGPoint(x:539*0.4, y:655*0.4))
                    path.closeSubpath()
                }
                .fill(Color(red: 254/255, green: 55/255, blue: 27/255))
                
                //broad
                ZStack{
                    Group{
                        //board1
                        Path{(path)in
                            path.move(to: CGPoint(x:227*0.4, y:800*0.4))
                            path.addQuadCurve(to: CGPoint(x: 234*0.4, y: 754*0.4), control: CGPoint(x: 220*0.4, y: 762*0.4))
                            path.addQuadCurve(to: CGPoint(x: 595*0.4, y: 640*0.4), control: CGPoint(x: 310*0.4, y: 705*0.4))
                            path.addCurve(to: CGPoint(x: 686*0.4, y: 679*0.4), control1: CGPoint(x: 660*0.4, y: 630*0.4), control2: CGPoint(x: 670*0.4, y: 650*0.4))
                            path.addCurve(to: CGPoint(x: 680*0.4, y: 768*0.4), control1: CGPoint(x: 720*0.4, y: 750*0.4), control2: CGPoint(x: 690*0.4, y: 760*0.4))
                            path.addCurve(to: CGPoint(x: 580*0.4, y: 810*0.4), control1: CGPoint(x: 630*0.4, y: 800*0.4), control2: CGPoint(x: 589*0.4, y: 806*0.4))
                            path.addCurve(to: CGPoint(x: 360*0.4, y: 866*0.4), control1: CGPoint(x: 455*0.4, y: 838*0.4), control2: CGPoint(x: 427*0.4, y: 848*0.4))
                            path.addCurve(to: CGPoint(x: 283*0.4, y: 907*0.4), control1: CGPoint(x: 290*0.4, y: 886*0.4), control2: CGPoint(x: 306*0.4, y: 889*0.4))
                            path.addCurve(to: CGPoint(x: 253*0.4, y: 890*0.4), control1: CGPoint(x: 268*0.4, y: 910*0.4), control2: CGPoint(x: 265*0.4, y: 908*0.4))
                            path.addCurve(to: CGPoint(x: 227*0.4, y: 800*0.4), control1: CGPoint(x: 245*0.4, y: 865*0.4), control2: CGPoint(x: 235*0.4, y: 835*0.4))
                            path.closeSubpath()
                        }
                        .fill(Color(red: 121/255, green: 255/255, blue: 41/255))
                        //board1 line
                        Path{(path)in
                            path.move(to: CGPoint(x:227*0.4, y:800*0.4))
                            path.addQuadCurve(to: CGPoint(x: 234*0.4, y: 754*0.4), control: CGPoint(x: 220*0.4, y: 762*0.4))
                            path.addQuadCurve(to: CGPoint(x: 595*0.4, y: 640*0.4), control: CGPoint(x: 310*0.4, y: 705*0.4))
                            path.addCurve(to: CGPoint(x: 686*0.4, y: 679*0.4), control1: CGPoint(x: 660*0.4, y: 630*0.4), control2: CGPoint(x: 670*0.4, y: 650*0.4))
                            path.addCurve(to: CGPoint(x: 680*0.4, y: 768*0.4), control1: CGPoint(x: 720*0.4, y: 750*0.4), control2: CGPoint(x: 690*0.4, y: 760*0.4))
                            path.addCurve(to: CGPoint(x: 580*0.4, y: 810*0.4), control1: CGPoint(x: 630*0.4, y: 800*0.4), control2: CGPoint(x: 589*0.4, y: 806*0.4))
                            path.addCurve(to: CGPoint(x: 360*0.4, y: 866*0.4), control1: CGPoint(x: 455*0.4, y: 838*0.4), control2: CGPoint(x: 427*0.4, y: 848*0.4))
                            path.addCurve(to: CGPoint(x: 283*0.4, y: 907*0.4), control1: CGPoint(x: 290*0.4, y: 886*0.4), control2: CGPoint(x: 306*0.4, y: 889*0.4))
                            path.addCurve(to: CGPoint(x: 253*0.4, y: 890*0.4), control1: CGPoint(x: 268*0.4, y: 910*0.4), control2: CGPoint(x: 265*0.4, y: 908*0.4))
                            path.addCurve(to: CGPoint(x: 227*0.4, y: 800*0.4), control1: CGPoint(x: 245*0.4, y: 865*0.4), control2: CGPoint(x: 235*0.4, y: 835*0.4))
                            path.closeSubpath()
                            path.move(to: CGPoint(x:262*0.4, y:903*0.4))
                            path.addCurve(to: CGPoint(x: 295*0.4, y: 880*0.4), control1: CGPoint(x: 280*0.4, y: 902*0.4), control2: CGPoint(x: 284*0.4, y: 887*0.4))
                            path.move(to: CGPoint(x:299*0.4, y:877*0.4))
                            path.addCurve(to: CGPoint(x: 368*0.4, y: 853*0.4), control1: CGPoint(x: 328*0.4, y: 860*0.4), control2: CGPoint(x: 340*0.4, y: 862*0.4))
                            path.move(to: CGPoint(x:373*0.4, y:852*0.4))
                            path.addCurve(to: CGPoint(x: 498*0.4, y: 819*0.4), control1: CGPoint(x: 420*0.4, y: 840*0.4), control2: CGPoint(x: 430*0.4, y: 840*0.4))
                            path.move(to: CGPoint(x:503*0.4, y:818*0.4))
                            path.addCurve(to: CGPoint(x: 702*0.4, y: 738*0.4), control1: CGPoint(x: 585*0.4, y: 799*0.4), control2: CGPoint(x: 667*0.4, y: 780*0.4))
                        }
                        .stroke(lineWidth: 2)
                        
                        //broad2-right
                        Path{(path)in
                            path.move(to: CGPoint(x:534*0.4, y:685*0.4))
                            path.addQuadCurve(to: CGPoint(x: 544*0.4, y: 721*0.4), control: CGPoint(x: 538*0.4, y: 703*0.4))
                            path.addQuadCurve(to: CGPoint(x: 578*0.4, y: 709*0.4), control: CGPoint(x: 565*0.4, y: 716*0.4))
                            path.addCurve(to: CGPoint(x: 599*0.4, y: 690*0.4), control1: CGPoint(x: 581*0.4, y: 703*0.4), control2: CGPoint(x: 601*0.4, y: 702*0.4))
                            path.addCurve(to: CGPoint(x: 571*0.4, y: 670*0.4), control1: CGPoint(x: 587*0.4, y: 672*0.4), control2: CGPoint(x: 575*0.4, y: 678*0.4))
                            path.addQuadCurve(to: CGPoint(x: 534*0.4, y: 685*0.4), control: CGPoint(x: 551*0.4, y: 677*0.4))
                            path.closeSubpath()
                        }
                        .fill(Color(red: 168/255, green: 180/255, blue: 179/255))
                        Path{(path)in
                            path.move(to: CGPoint(x:534*0.4, y:685*0.4))
                            path.addQuadCurve(to: CGPoint(x: 544*0.4, y: 721*0.4), control: CGPoint(x: 538*0.4, y: 703*0.4))
                            path.addQuadCurve(to: CGPoint(x: 578*0.4, y: 709*0.4), control: CGPoint(x: 565*0.4, y: 716*0.4))
                            path.addCurve(to: CGPoint(x: 599*0.4, y: 690*0.4), control1: CGPoint(x: 581*0.4, y: 703*0.4), control2: CGPoint(x: 601*0.4, y: 702*0.4))
                            path.addCurve(to: CGPoint(x: 571*0.4, y: 670*0.4), control1: CGPoint(x: 587*0.4, y: 672*0.4), control2: CGPoint(x: 575*0.4, y: 678*0.4))
                            path.addQuadCurve(to: CGPoint(x: 534*0.4, y: 685*0.4), control: CGPoint(x: 551*0.4, y: 677*0.4))
                            path.closeSubpath()
                        }
                        .stroke(lineWidth: 1.5)
                        
                        Group{
                            //borad2-left
                            Path{(path)in
                                path.move(to: CGPoint(x:291*0.4, y:751*0.4))
                                path.addQuadCurve(to: CGPoint(x: 330*0.4, y: 738*0.4), control: CGPoint(x: 309*0.4, y: 743*0.4))
                                path.addQuadCurve(to: CGPoint(x: 343*0.4, y: 780*0.4), control: CGPoint(x: 369*0.4, y: 751*0.4))
                                path.addQuadCurve(to: CGPoint(x: 300*0.4, y: 788*0.4), control: CGPoint(x: 329*0.4, y: 790*0.4))
                                path.addQuadCurve(to: CGPoint(x: 291*0.4, y: 751*0.4), control: CGPoint(x: 290*0.4, y: 773*0.4))
                                path.closeSubpath()
                                }
                                .fill(Color(red: 168/255, green: 180/255, blue: 179/255))
                            Path{(path)in
                                path.move(to: CGPoint(x:291*0.4, y:751*0.4))
                                path.addQuadCurve(to: CGPoint(x: 330*0.4, y: 738*0.4), control: CGPoint(x: 309*0.4, y: 743*0.4))
                                path.addQuadCurve(to: CGPoint(x: 343*0.4, y: 780*0.4), control: CGPoint(x: 369*0.4, y: 751*0.4))
                                path.addQuadCurve(to: CGPoint(x: 300*0.4, y: 788*0.4), control: CGPoint(x: 329*0.4, y: 790*0.4))
                                path.addQuadCurve(to: CGPoint(x: 291*0.4, y: 751*0.4), control: CGPoint(x: 290*0.4, y: 773*0.4))
                                path.closeSubpath()
                                }
                                .stroke(lineWidth: 1.5)
                            //wheel left-up
                            Path{(path)in
                                path.move(to: CGPoint(x:284*0.4, y:694*0.4))
                                path.addQuadCurve(to: CGPoint(x: 334*0.4, y: 682*0.4), control: CGPoint(x: 296*0.4, y: 667*0.4))
                                path.addQuadCurve(to: CGPoint(x: 344*0.4, y: 714*0.4), control: CGPoint(x: 346*0.4, y: 691*0.4))
                                path.addQuadCurve(to: CGPoint(x: 291*0.4, y: 724*0.4), control: CGPoint(x: 314*0.4, y: 694*0.4))
                                path.addQuadCurve(to: CGPoint(x: 284*0.4, y: 694*0.4), control: CGPoint(x: 282*0.4, y: 709*0.4))
                                path.closeSubpath()
                                }
                                .fill(Color(red: 46/255, green: 57/255, blue: 59/255))
                            Path{(path)in
                                path.move(to: CGPoint(x:295*0.4, y:686*0.4))
                                path.addQuadCurve(to: CGPoint(x: 334*0.4, y: 682*0.4), control: CGPoint(x: 296*0.4, y: 667*0.4))
                                path.addQuadCurve(to: CGPoint(x: 336*0.4, y: 687*0.4), control: CGPoint(x: 346*0.4, y: 691*0.4))
                                path.addQuadCurve(to: CGPoint(x: 295*0.4, y: 686*0.4), control: CGPoint(x: 346*0.4, y: 691*0.4))
                                
                                path.closeSubpath()
                                }
                                .fill(Color(red: 103/255, green: 111/255, blue: 110/255))

                            Path{(path)in
                                path.move(to: CGPoint(x:284*0.4, y:694*0.4))
                                path.addQuadCurve(to: CGPoint(x: 334*0.4, y: 682*0.4), control: CGPoint(x: 296*0.4, y: 667*0.4))
                                path.addQuadCurve(to: CGPoint(x: 344*0.4, y: 714*0.4), control: CGPoint(x: 346*0.4, y: 691*0.4))
                                path.addQuadCurve(to: CGPoint(x: 291*0.4, y: 724*0.4), control: CGPoint(x: 314*0.4, y: 694*0.4))
                                path.addQuadCurve(to: CGPoint(x: 284*0.4, y: 694*0.4), control: CGPoint(x: 282*0.4, y: 709*0.4))
                                path.closeSubpath()
                                }
                                .stroke(lineWidth: 1.5)
                            Path{(path)in
                                path.move(to: CGPoint(x:344*0.4, y:714*0.4))
                                path.addQuadCurve(to: CGPoint(x: 291*0.4, y: 724*0.4), control: CGPoint(x: 314*0.4, y: 694*0.4))
                                path.addQuadCurve(to: CGPoint(x: 344*0.4, y: 714*0.4), control: CGPoint(x: 325*0.4, y: 741*0.4))
                                path.closeSubpath()
                                }
                                .fill(Color(red: 20/255, green: 24/255, blue: 20/255))
                            Path{(path)in
                                path.move(to: CGPoint(x:344*0.4, y:714*0.4))
                                path.addQuadCurve(to: CGPoint(x: 291*0.4, y: 724*0.4), control: CGPoint(x: 314*0.4, y: 694*0.4))
                                path.addQuadCurve(to: CGPoint(x: 344*0.4, y: 714*0.4), control: CGPoint(x: 325*0.4, y: 741*0.4))
                                path.closeSubpath()
                                }
                                .stroke(lineWidth: 1.5)
                            Path{(path)in
                                path.move(to: CGPoint(x:300*0.4, y:788*0.4))
                                path.addQuadCurve(to: CGPoint(x: 291*0.4, y: 751*0.4), control: CGPoint(x: 290*0.4, y: 773*0.4))
                                path.addQuadCurve(to: CGPoint(x: 313*0.4, y: 721*0.4), control: CGPoint(x: 327*0.4, y: 770*0.4))
                                path.addQuadCurve(to: CGPoint(x: 326*0.4, y: 717*0.4), control: CGPoint(x: 318*0.4, y: 713*0.4))
                                path.addLine(to: CGPoint(x:346*0.4, y:790*0.4))
                                path.addLine(to: CGPoint(x:336*0.4, y:806*0.4))
                                path.addQuadCurve(to: CGPoint(x: 300*0.4, y: 788*0.4), control: CGPoint(x: 323*0.4, y: 743*0.4))
                                path.closeSubpath()
                                }
                                .fill(Color(red: 168/255, green: 180/255, blue: 179/255))
                            Path{(path)in
                                path.move(to: CGPoint(x:300*0.4, y:788*0.4))
                                path.addQuadCurve(to: CGPoint(x: 291*0.4, y: 751*0.4), control: CGPoint(x: 290*0.4, y: 773*0.4))
                                path.addQuadCurve(to: CGPoint(x: 313*0.4, y: 721*0.4), control: CGPoint(x: 327*0.4, y: 770*0.4))
                                path.addQuadCurve(to: CGPoint(x: 326*0.4, y: 717*0.4), control: CGPoint(x: 318*0.4, y: 713*0.4))
                                path.addLine(to: CGPoint(x:346*0.4, y:790*0.4))
                                path.addLine(to: CGPoint(x:336*0.4, y:806*0.4))
                                path.addQuadCurve(to: CGPoint(x: 300*0.4, y: 788*0.4), control: CGPoint(x: 323*0.4, y: 743*0.4))
                                path.closeSubpath()
                                }
                                .stroke(lineWidth: 1.5)
                        }
                        
                        //wheel right-up
                        Group{
                            Path{(path)in
                                path.move(to: CGPoint(x:527*0.4, y:620*0.4))
                                path.addQuadCurve(to: CGPoint(x: 576*0.4, y: 610*0.4), control: CGPoint(x: 544*0.4, y: 602*0.4))
                                path.addQuadCurve(to: CGPoint(x: 585*0.4, y: 645*0.4), control: CGPoint(x: 581*0.4, y: 625*0.4))
                                path.addQuadCurve(to: CGPoint(x: 534*0.4, y: 648*0.4), control: CGPoint(x: 551*0.4, y: 625*0.4))
                                path.addQuadCurve(to: CGPoint(x: 527*0.4, y: 625*0.4), control: CGPoint(x: 527*0.4, y: 645*0.4))
                                path.closeSubpath()
                            }
                            .fill(Color(red:46/255, green:57/255, blue:59/255))
                            Path{(path)in
                                path.move(to: CGPoint(x:527*0.4, y:620*0.4))
                                path.addQuadCurve(to: CGPoint(x: 576*0.4, y: 610*0.4), control: CGPoint(x: 544*0.4, y: 602*0.4))
                                path.addQuadCurve(to: CGPoint(x: 585*0.4, y: 645*0.4), control: CGPoint(x: 581*0.4, y: 625*0.4))
                                path.addQuadCurve(to: CGPoint(x: 534*0.4, y: 648*0.4), control: CGPoint(x: 551*0.4, y: 625*0.4))
                                path.addQuadCurve(to: CGPoint(x: 527*0.4, y: 625*0.4), control: CGPoint(x: 527*0.4, y: 645*0.4))
                                path.closeSubpath()
                            }
                            .stroke(lineWidth: 1.5)
                            Path{(path)in
                                path.move(to: CGPoint(x:585*0.4, y:645*0.4))
                                path.addQuadCurve(to: CGPoint(x: 534*0.4, y: 648*0.4), control: CGPoint(x: 551*0.4, y: 630*0.4))
                                path.addCurve(to: CGPoint(x: 585*0.4, y: 645*0.4), control1: CGPoint(x: 540*0.4, y: 668*0.4), control2: CGPoint(x: 585*0.4, y: 665*0.4))
                                path.closeSubpath()
                            }
                            .fill(Color(red:20/255, green:24/255, blue:20/255))
                            Path{(path)in
                                path.move(to: CGPoint(x:585*0.4, y:645*0.4))
                                path.addQuadCurve(to: CGPoint(x: 534*0.4, y: 648*0.4), control: CGPoint(x: 551*0.4, y: 630*0.4))
                                path.addCurve(to: CGPoint(x: 585*0.4, y: 645*0.4), control1: CGPoint(x: 540*0.4, y: 668*0.4), control2: CGPoint(x: 585*0.4, y: 665*0.4))
                                path.closeSubpath()
                            }
                            .stroke(lineWidth: 1.5)
                            Path{(path)in
                                path.move(to: CGPoint(x:538*0.4, y:615*0.4))
                                path.addQuadCurve(to: CGPoint(x: 574*0.4, y: 612*0.4), control: CGPoint(x: 544*0.4, y: 608*0.4))
                                path.addLine(to: CGPoint(x: 577*0.4, y: 623*0.4))
                                path.addCurve(to: CGPoint(x: 538*0.4, y: 615*0.4), control1: CGPoint(x: 562*0.4, y: 610*0.4), control2: CGPoint(x: 549*0.4, y: 618*0.4))
                                path.closeSubpath()
                            }
                            .fill(Color(red:103/255, green:111/255, blue:110/255))
                        }
                        
                        Path{(path)in
                            path.move(to: CGPoint(x:534*0.4, y:685*0.4))
                            path.addQuadCurve(to: CGPoint(x: 544*0.4, y: 721*0.4), control: CGPoint(x: 538*0.4, y: 703*0.4))
                            path.addQuadCurve(to: CGPoint(x: 578*0.4, y: 740*0.4), control: CGPoint(x: 565*0.4, y: 681*0.4))
                            path.addLine(to: CGPoint(x:591*0.4, y:730*0.4))
                            path.addQuadCurve(to: CGPoint(x: 563*0.4, y: 644*0.4), control: CGPoint(x: 579*0.4, y: 687*0.4))
                            path.addLine(to: CGPoint(x:554*0.4, y:648*0.4))
                            path.addQuadCurve(to: CGPoint(x: 534*0.4, y: 685*0.4), control: CGPoint(x: 571*0.4, y: 706*0.4))
                        }
                        .fill(Color(red: 168/255, green: 180/255, blue: 179/255))
                        Path{(path)in
                            path.move(to: CGPoint(x:534*0.4, y:685*0.4))
                            path.addQuadCurve(to: CGPoint(x: 544*0.4, y: 721*0.4), control: CGPoint(x: 538*0.4, y: 703*0.4))
                            path.addQuadCurve(to: CGPoint(x: 578*0.4, y: 740*0.4), control: CGPoint(x: 565*0.4, y: 681*0.4))
                            path.addLine(to: CGPoint(x:591*0.4, y:730*0.4))
                            path.addQuadCurve(to: CGPoint(x: 563*0.4, y: 644*0.4), control: CGPoint(x: 579*0.4, y: 687*0.4))
                            path.addLine(to: CGPoint(x:554*0.4, y:648*0.4))
                            path.addQuadCurve(to: CGPoint(x: 534*0.4, y: 685*0.4), control: CGPoint(x: 571*0.4, y: 710*0.4))
                        }
                        .stroke(lineWidth: 1.5)
                        //
                        Group{
                            //wheel right-down
                            Group{
                                Path{(path)in
                                    path.move(to: CGPoint(x:556*0.4, y:735*0.4))
                                    path.addQuadCurve(to: CGPoint(x: 607*0.4, y: 725*0.4), control: CGPoint(x: 576*0.4, y: 709*0.4))
                                    path.addQuadCurve(to: CGPoint(x: 619*0.4, y: 755*0.4), control: CGPoint(x: 614*0.4, y: 739*0.4))
                                    path.addQuadCurve(to: CGPoint(x: 563*0.4, y: 768*0.4), control: CGPoint(x: 584*0.4, y: 734*0.4))
                                    path.addQuadCurve(to: CGPoint(x: 556*0.4, y: 735*0.4), control: CGPoint(x: 558*0.4, y: 757*0.4))
                                    path.closeSubpath()
                                }
                                .fill(Color(red: 46/255, green: 57/255, blue: 59/255))
                                Path{(path)in
                                    path.move(to: CGPoint(x:556*0.4, y:735*0.4))
                                    path.addQuadCurve(to: CGPoint(x: 607*0.4, y: 725*0.4), control: CGPoint(x: 576*0.4, y: 709*0.4))
                                    path.addQuadCurve(to: CGPoint(x: 619*0.4, y: 755*0.4), control: CGPoint(x: 614*0.4, y: 739*0.4))
                                    path.addQuadCurve(to: CGPoint(x: 563*0.4, y: 768*0.4), control: CGPoint(x: 584*0.4, y: 734*0.4))
                                    path.addQuadCurve(to: CGPoint(x: 556*0.4, y: 735*0.4), control: CGPoint(x: 558*0.4, y: 757*0.4))
                                    path.closeSubpath()
                                }
                                .stroke(lineWidth: 1.5)
                                Path{(path)in
                                    path.move(to: CGPoint(x:619*0.4, y:755*0.4))
                                    path.addQuadCurve(to: CGPoint(x: 563*0.4, y: 768*0.4), control: CGPoint(x: 584*0.4, y: 734*0.4))
                                    path.addCurve(to: CGPoint(x: 619*0.4, y: 755*0.4), control1: CGPoint(x: 579*0.4, y: 786*0.4), control2: CGPoint(x: 608*0.4, y: 777*0.4))
                                    path.closeSubpath()
                                }
                                .fill(Color(red: 1/255, green: 1/255, blue: 0/255))
                                Path{(path)in
                                    path.move(to: CGPoint(x:619*0.4, y:755*0.4))
                                    path.addQuadCurve(to: CGPoint(x: 563*0.4, y: 768*0.4), control: CGPoint(x: 584*0.4, y: 734*0.4))
                                    path.addCurve(to: CGPoint(x: 619*0.4, y: 755*0.4), control1: CGPoint(x: 579*0.4, y: 786*0.4), control2: CGPoint(x: 608*0.4, y: 777*0.4))
                                    path.closeSubpath()
                                }
                                .stroke(lineWidth: 1.5)
                                Path{(path)in
                                    path.move(to: CGPoint(x:560*0.4, y:733*0.4))
                                    path.addQuadCurve(to: CGPoint(x: 604*0.4, y: 724*0.4), control: CGPoint(x: 576*0.4, y: 715*0.4))
                                    path.addQuadCurve(to: CGPoint(x: 610*0.4, y: 737*0.4), control: CGPoint(x: 606*0.4, y: 727*0.4))
                                    path.addCurve(to: CGPoint(x: 560*0.4, y: 733*0.4), control1: CGPoint(x: 595*0.4, y: 725*0.4), control2: CGPoint(x: 579*0.4, y: 727*0.4))
                                    path.closeSubpath()
                                }
                                .fill(Color(red:103/255, green:111/255, blue:110/255))
                            }
                            //wheel left-down
                            Group{
                                Path{(path)in
                                    path.move(to: CGPoint(x:311*0.4, y:803*0.4))
                                    path.addQuadCurve(to: CGPoint(x: 366*0.4, y: 791*0.4), control: CGPoint(x: 333*0.4, y: 780*0.4))
                                    path.addQuadCurve(to: CGPoint(x: 376*0.4, y: 830*0.4), control: CGPoint(x: 379*0.4, y: 805*0.4))
                                    path.addQuadCurve(to: CGPoint(x: 323*0.4, y: 839*0.4), control: CGPoint(x: 339*0.4, y: 810*0.4))
                                    path.addQuadCurve(to: CGPoint(x: 311*0.4, y: 803*0.4), control: CGPoint(x: 308*0.4, y: 828*0.4))
                                    path.closeSubpath()
                                    }
                                    .fill(Color(red: 46/255, green: 57/255, blue: 59/255))
                                Path{(path)in
                                    path.move(to: CGPoint(x:320*0.4, y:796*0.4))
                                    path.addQuadCurve(to: CGPoint(x: 359*0.4, y: 793*0.4), control: CGPoint(x: 333*0.4, y: 790*0.4))
                                    path.addQuadCurve(to: CGPoint(x: 324*0.4, y: 800*0.4), control: CGPoint(x: 334*0.4, y: 794*0.4))
                                    path.addQuadCurve(to: CGPoint(x: 320*0.4, y: 796*0.4), control: CGPoint(x: 319*0.4, y: 800*0.4))
                                    path.closeSubpath()
                                    }
                                    .fill(Color(red: 103/255, green: 111/255, blue: 110/255))
                                
                                Path{(path)in
                                    path.move(to: CGPoint(x:311*0.4, y:803*0.4))
                                    path.addQuadCurve(to: CGPoint(x: 366*0.4, y: 791*0.4), control: CGPoint(x: 333*0.4, y: 780*0.4))
                                    path.addQuadCurve(to: CGPoint(x: 376*0.4, y: 830*0.4), control: CGPoint(x: 379*0.4, y: 805*0.4))
                                    path.addQuadCurve(to: CGPoint(x: 323*0.4, y: 839*0.4), control: CGPoint(x: 339*0.4, y: 810*0.4))
                                    path.addQuadCurve(to: CGPoint(x: 311*0.4, y: 803*0.4), control: CGPoint(x: 308*0.4, y: 828*0.4))
                                    path.closeSubpath()
                                    }
                                    .stroke(lineWidth: 1.5)
                                
                                Path{(path)in
                                    path.move(to: CGPoint(x:376*0.4, y:830*0.4))
                                    path.addQuadCurve(to: CGPoint(x: 323*0.4, y: 839*0.4), control: CGPoint(x: 339*0.4, y: 810*0.4))
                                    path.addQuadCurve(to: CGPoint(x: 376*0.4, y: 830*0.4), control: CGPoint(x: 356*0.4, y: 861*0.4))
                                    path.closeSubpath()
                                    }
                                    .fill(Color(red: 20/255, green: 24/255, blue: 20/255))
                                Path{(path)in
                                    path.move(to: CGPoint(x:376*0.4, y:830*0.4))
                                    path.addQuadCurve(to: CGPoint(x: 323*0.4, y: 839*0.4), control: CGPoint(x: 339*0.4, y: 810*0.4))
                                    path.addQuadCurve(to: CGPoint(x: 376*0.4, y: 830*0.4), control: CGPoint(x: 356*0.4, y: 861*0.4))
                                    path.closeSubpath()
                                    }
                                    .stroke(lineWidth: 1.5)
                            }
                        }
                    }
                    //hand
                    Group{
                        //shirt2
                        Path{(path)in
                            path.move(to: CGPoint(x:349*0.4, y:685*0.4))
                            path.addQuadCurve(to: CGPoint(x: 439*0.4, y: 696*0.4), control: CGPoint(x: 394*0.4, y: 655*0.4))
                            path.addQuadCurve(to: CGPoint(x: 349*0.4, y: 685*0.4), control: CGPoint(x: 388*0.4, y: 705*0.4))
                        }
                        .fill(Color(red: 254/255, green: 55/255, blue: 27/255))
                        //sleeve black line
                        Path{(path)in
                            path.move(to: CGPoint(x:440*0.4, y:698*0.4))
                            path.addQuadCurve(to: CGPoint(x: 348*0.4, y: 687*0.4), control: CGPoint(x: 388*0.4, y: 705*0.4))
                        }
                        .stroke(lineWidth: 2)
                        
                        //right hand
                        Path{(path)in
                            path.move(to: CGPoint(x:365*0.4, y:668*0.4))
                            path.addQuadCurve(to: CGPoint(x: 394*0.4, y: 817*0.4), control: CGPoint(x: 359*0.4, y: 753*0.4))
                            path.addQuadCurve(to: CGPoint(x: 440*0.4, y: 858*0.4), control: CGPoint(x: 420*0.4, y: 870*0.4))
                            path.addQuadCurve(to: CGPoint(x: 460*0.4, y: 853*0.4), control: CGPoint(x: 450*0.4, y: 863*0.4))
                            path.addQuadCurve(to: CGPoint(x: 490*0.4, y: 830*0.4), control: CGPoint(x: 488*0.4, y: 855*0.4))
                            path.addLine(to: CGPoint(x:478*0.4, y:834*0.4))
                            path.addQuadCurve(to: CGPoint(x: 468*0.4, y: 825*0.4), control: CGPoint(x: 470*0.4, y: 836*0.4))
                            path.addQuadCurve(to: CGPoint(x: 486*0.4, y: 805*0.4), control: CGPoint(x: 485*0.4, y: 815*0.4))
                            path.addQuadCurve(to: CGPoint(x: 446*0.4, y: 810*0.4), control: CGPoint(x: 480*0.4, y: 795*0.4))
                            path.addQuadCurve(to: CGPoint(x: 426*0.4, y: 678*0.4), control: CGPoint(x: 410*0.4, y: 730*0.4))
                            path.addQuadCurve(to: CGPoint(x: 365*0.4, y: 668*0.4), control: CGPoint(x: 400*0.4, y: 630*0.4))
                        }
                        .fill(Color(red: 255/255, green: 217/255, blue: 14/255))
                        
                        //shirt3
                        Path{(path)in
                            path.move(to: CGPoint(x:349*0.4, y:685*0.4))
                            path.addCurve(to: CGPoint(x: 413*0.4, y: 608*0.4), control1: CGPoint(x: 360*0.4, y: 630*0.4), control2: CGPoint(x: 389*0.4, y: 600*0.4))
                            path.addCurve(to: CGPoint(x: 439*0.4, y: 696*0.4), control1: CGPoint(x: 440*0.4, y: 620*0.4), control2: CGPoint(x: 444*0.4, y: 646*0.4))
                            path.addQuadCurve(to: CGPoint(x: 349*0.4, y: 685*0.4), control: CGPoint(x: 394*0.4, y: 655*0.4))
                            path.closeSubpath()
                            
                        }
                        .fill(Color(red: 254/255, green: 55/255, blue: 27/255))
                    }
                }
                
                //black line
                Group{
                    Path{(path)in
                        //head
                        path.move(to: CGPoint(x:415*0.4, y:473*0.4))
                        path.addLine(to: CGPoint(x:334*0.4, y:236*0.4))
                        
                        //hair
                        path.addLine(to: CGPoint(x:359*0.4, y:245*0.4))
                        path.addLine(to: CGPoint(x:361*0.4, y:216*0.4))
                        path.addLine(to: CGPoint(x:381*0.4, y:230*0.4))
                        path.addLine(to: CGPoint(x:386*0.4, y:203*0.4))
                        path.addLine(to: CGPoint(x:406*0.4, y:215*0.4))
                        path.addLine(to: CGPoint(x:414*0.4, y:191*0.4))
                        path.addLine(to: CGPoint(x:438*0.4, y:206*0.4))
                        path.addLine(to: CGPoint(x:445*0.4, y:178*0.4))
                        path.addLine(to: CGPoint(x:468*0.4, y:200*0.4))
                        path.addLine(to: CGPoint(x:477*0.4, y:172*0.4))
                        path.addLine(to: CGPoint(x:498*0.4, y:190*0.4))
                        path.addLine(to: CGPoint(x:509*0.4, y:168*0.4))
                        path.addLine(to: CGPoint(x:525*0.4, y:190*0.4))
                        path.addLine(to: CGPoint(x:538*0.4, y:168*0.4))
                        path.addLine(to: CGPoint(x:549*0.4, y:191*0.4))
                        path.addLine(to: CGPoint(x:568*0.4, y:170*0.4))
                        //forehead
                        path.addLine(to: CGPoint(x:599*0.4, y:307*0.4))
                        path.addQuadCurve(to: CGPoint(x: 612*0.4, y: 336*0.4), control: CGPoint(x: 620*0.4, y: 317*0.4))
                        //mouth
                        path.move(to: CGPoint(x: 623*0.4, y: 421*0.4))
                        path.addLine(to: CGPoint(x:640*0.4, y:466*0.4))
                        path.addQuadCurve(to: CGPoint(x: 452*0.4, y: 519*0.4), control: CGPoint(x: 690*0.4, y: 550*0.4))
                        path.addQuadCurve(to: CGPoint(x: 525*0.4, y: 560*0.4), control: CGPoint(x: 420*0.4, y: 540*0.4))
                        //neck
                        path.addLine(to: CGPoint(x:528*0.4, y:553*0.4))
                        path.addCurve(to: CGPoint(x: 518*0.4, y: 576*0.4), control1: CGPoint(x: 540*0.4, y: 555*0.4), control2: CGPoint(x: 540*0.4, y: 575*0.4))
                        path.addQuadCurve(to: CGPoint(x: 525*0.4, y: 575*0.4), control: CGPoint(x: 524*0.4, y: 575*0.4))
                        path.addLine(to: CGPoint(x:523*0.4, y:592*0.4))
                        path.addQuadCurve(to: CGPoint(x: 420*0.4, y: 577*0.4), control: CGPoint(x: 470*0.4, y: 610*0.4))
                        path.addLine(to: CGPoint(x:422*0.4, y:515*0.4))
                        //teeth
                        path.move(to: CGPoint(x:525*0.4, y:560*0.4))
                        path.addLine(to: CGPoint(x:535*0.4, y:528*0.4))
                        path.move(to: CGPoint(x:510*0.4, y:557*0.4))
                        path.addLine(to: CGPoint(x:515*0.4, y:527*0.4))
                        path.move(to: CGPoint(x:485*0.4, y:550*0.4))
                        path.addLine(to: CGPoint(x:488*0.4, y:522*0.4))
                        path.move(to: CGPoint(x:460*0.4, y:543*0.4))
                        path.addLine(to: CGPoint(x:462*0.4, y:520*0.4))
                        //ear
                        path.move(to: CGPoint(x:435*0.4, y:477*0.4))
                        path.addCurve(to: CGPoint(x: 436*0.4, y: 512*0.4), control1: CGPoint(x: 380*0.4, y: 450*0.4), control2: CGPoint(x: 400*0.4, y: 540*0.4))
                        path.move(to: CGPoint(x:412*0.4, y:490*0.4))
                        path.addQuadCurve(to: CGPoint(x: 430*0.4, y: 501*0.4), control: CGPoint(x: 428*0.4, y: 485*0.4))
                        path.move(to: CGPoint(x:416*0.4, y:501*0.4))
                        path.addQuadCurve(to: CGPoint(x: 424*0.4, y: 490*0.4), control: CGPoint(x: 415*0.4, y: 490*0.4))
                        //left eye
                        path.move(to: CGPoint(x:616*0.4, y:425*0.4))
                        path.addQuadCurve(to: CGPoint(x: 640*0.4, y: 372*0.4), control: CGPoint(x: 645*0.4, y: 410*0.4))
                        path.addQuadCurve(to: CGPoint(x: 590*0.4, y: 334*0.4), control: CGPoint(x: 630*0.4, y: 330*0.4))
                        path.addQuadCurve(to: CGPoint(x: 545*0.4, y: 365*0.4), control: CGPoint(x: 555*0.4, y: 335*0.4))
                        //right eye
                        path.move(to: CGPoint(x:495*0.4, y:348*0.4))
                        path.addQuadCurve(to: CGPoint(x: 444*0.4, y: 410*0.4), control: CGPoint(x: 440*0.4, y: 360*0.4))
                        path.addQuadCurve(to: CGPoint(x: 500*0.4, y: 453*0.4), control: CGPoint(x: 454*0.4, y: 451*0.4))
                        path.addQuadCurve(to: CGPoint(x: 560*0.4, y: 389*0.4), control: CGPoint(x: 570*0.4, y: 450*0.4))
                        path.addQuadCurve(to: CGPoint(x: 495*0.4, y: 348*0.4), control: CGPoint(x: 540*0.4, y: 340*0.4))
                        //nose
                        path.move(to: CGPoint(x:561*0.4, y:417*0.4))
                        path.addQuadCurve(to: CGPoint(x: 594*0.4, y: 411*0.4), control: CGPoint(x: 563*0.4, y: 422*0.4))
                        path.addCurve(to: CGPoint(x: 615*0.4, y: 445*0.4), control1: CGPoint(x: 620*0.4, y: 408*0.4), control2: CGPoint(x: 620*0.4, y: 438*0.4))
                        path.addQuadCurve(to: CGPoint(x: 583*0.4, y: 460*0.4), control: CGPoint(x: 610*0.4, y: 455*0.4))
                        //shirt
                        path.move(to: CGPoint(x:534*0.4, y:615*0.4))
                        path.addQuadCurve(to: CGPoint(x: 523*0.4, y: 592*0.4), control: CGPoint(x: 534*0.4, y: 605*0.4))
                        path.addQuadCurve(to: CGPoint(x: 420*0.4, y: 577*0.4), control: CGPoint(x: 470*0.4, y: 610*0.4))
                        path.addQuadCurve(to: CGPoint(x: 402*0.4, y: 608*0.4), control: CGPoint(x: 405*0.4, y: 593*0.4))
                        path.move(to: CGPoint(x:349*0.4, y:685*0.4))
                        path.addCurve(to: CGPoint(x: 413*0.4, y: 608*0.4), control1: CGPoint(x: 360*0.4, y: 630*0.4), control2: CGPoint(x: 389*0.4, y: 600*0.4))
                        path.addCurve(to: CGPoint(x: 439*0.4, y: 696*0.4), control1: CGPoint(x: 440*0.4, y: 620*0.4), control2: CGPoint(x: 444*0.4, y: 646*0.4))
                        path.addQuadCurve(to: CGPoint(x: 349*0.4, y: 685*0.4), control: CGPoint(x: 394*0.4, y: 655*0.4))
                        path.closeSubpath()
                        //right hand
                        path.move(to: CGPoint(x:365*0.4, y:675*0.4))
                        path.addQuadCurve(to: CGPoint(x: 394*0.4, y: 817*0.4), control: CGPoint(x: 359*0.4, y: 753*0.4))
                        path.addQuadCurve(to: CGPoint(x: 440*0.4, y: 858*0.4), control: CGPoint(x: 420*0.4, y: 870*0.4))
                        path.addQuadCurve(to: CGPoint(x: 460*0.4, y: 853*0.4), control: CGPoint(x: 450*0.4, y: 863*0.4))
                        path.addQuadCurve(to: CGPoint(x: 490*0.4, y: 830*0.4), control: CGPoint(x: 488*0.4, y: 855*0.4))
                        path.addLine(to: CGPoint(x:478*0.4, y:834*0.4))
                        path.addQuadCurve(to: CGPoint(x: 468*0.4, y: 825*0.4), control: CGPoint(x: 470*0.4, y: 836*0.4))
                        path.addQuadCurve(to: CGPoint(x: 486*0.4, y: 805*0.4), control: CGPoint(x: 485*0.4, y: 815*0.4))
                        path.addQuadCurve(to: CGPoint(x: 446*0.4, y: 810*0.4), control: CGPoint(x: 480*0.4, y: 795*0.4))
                        path.addQuadCurve(to: CGPoint(x: 426*0.4, y: 685*0.4), control: CGPoint(x: 410*0.4, y: 730*0.4))
                    }
                    .stroke(lineWidth: 2)
                }
            }
            .offset(x:0*0.4, y:580*0.4)
            //text
            Text("Bart Simpson!!Bart Simpson!!Bart Simpson!!")
                .foregroundColor(Color.white)
                .offset(x: 0, y: 308)
            //decoration
            Group{
                ball()
                    .fill(Color.purple)
                    .frame(width: 40, height: 40)
                    .offset(x:-190, y:370)
                ball()
                    .fill(Color.red)
                    .frame(width: 30, height: 30)
                    .offset(x:-150, y:350)
                ball()
                    .fill(Color.orange)
                    .frame(width: 40, height: 40)
                    .offset(x:-110, y:370)
                ball()
                    .fill(Color.yellow)
                    .frame(width: 30, height: 30)
                    .offset(x:-70, y:350)
                ball()
                    .fill(Color.green)
                    .frame(width: 40, height: 40)
                    .offset(x:-30, y:370)
                ball()
                    .fill(Color.blue)
                    .frame(width: 30, height: 30)
                    .offset(x:10, y:350)
                ball()
                    .fill(Color.purple)
                    .frame(width: 40, height: 40)
                    .offset(x:50, y:370)
                ball()
                    .fill(Color.red)
                    .frame(width: 30, height: 30)
                    .offset(x:90, y:350)
                ball()
                    .fill(Color.orange)
                    .frame(width: 40, height: 40)
                    .offset(x:130, y:370)
                ball()
                    .fill(Color.yellow)
                    .frame(width: 30, height: 30)
                    .offset(x:170, y:350)
            }
        }
    }
}

struct ContentView_LibraryContent: LibraryContentProvider {
    static var views: [LibraryItem] {
        [LibraryItem(ContentView(), title: "Bart Simpson <3", category: .control)]
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
        }
    }
}
