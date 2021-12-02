//: [Previous](@previous) / [Next](@next)
/*:
## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 7 and 8.
 */
let preferredWidth = 600
let preferredHeight = 600
/*:
 ## Required code
 
 Lines 16 to 30 are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport
import CanvasGraphics

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

// Create a turtle that can draw upon the canvas
let turtle = Tortoise(drawingUpon: canvas)

// Create a pen that can draw upon the canvas
let p = Pen(drawingUpon: canvas)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas

/*:
 ## Optional code
 
 Below are two generally helpful configurations.
 
 If you do not wish to work in all four quadrants of the Cartesian plane, comment out the code on line 44.
 
 If you do not wish to see a grid, comment out the code on line 48.
 
 */

// Move the origin from the bottom-left corner of the canvas to it's centre point

// Show a grid
canvas.drawAxes(withScale: true, by: 20, color: .black)

/*:
 ## Add your code
 
 Beginning on line 61, you can add your own code.
  
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */
canvas.highPerformance = true
canvas.defaultLineWidth = 4
for value in stride(from: 0,
                    through: 100,
                    by:1) {
    
    let currentcolour = Color(hue: 90,
                              saturation: 80,
                              brightness: value,
                              alpha: 100)
    
    canvas.lineColor = currentcolour
    
    canvas.drawLine(from: Point(x: 0, y: value * 3), to: Point(x: 600, y: value * 3))
}
for value in stride(from: 101,
                    through: 201,
                    by:1) {
    
    let currentcolour = Color(hue: 200,
                              saturation: 80,
                              brightness: value,
                              alpha: 100)
    
    
    canvas.lineColor = currentcolour
    
    
    canvas.drawLine(from: Point(x: 0, y: value * 3 ), to: Point(x: 600, y: value * 3 ))
}




p.goto(dx: 300, dy: 300)
canvas.fillColor = .white
canvas.borderColor = .black
canvas.drawShapesWithBorders = true
canvas.drawEllipse(at: Point(x: 0, y: 0 ), width: 150, height: 190, borderWidth: 6)



p.goto(dx: -33, dy: 120)

canvas.fillColor = .black
canvas.drawEllipse(at: Point(x: 0, y: 0), width: 45, height: 45)
p.goto(dx: 60, dy: 0)
canvas.drawEllipse(at: Point(x: 0, y: 0), width: 45, height: 45)


p.goto(dx: -30, dy: -30)


// Change the pen color
canvas.drawEllipse(at: Point(x: 0, y: 0), width: 25, height: 25)
canvas.fillColor = Color(hue: 0, saturation: 1, brightness: 100, alpha: 100)
canvas.drawEllipse(at: Point(x: 0, y: 0), width: 100, height: 100)
p.goto(dx: 0, dy: 50)
canvas.lineColor = .black
p.addArc(radius: 50, angle: -45)
p.addArc(radius: 50, angle: -45)
p.addArc(radius: 50, angle: -45)
p.addArc(radius: 50, angle: -45)
p.addArc(radius: 50, angle: -45)
p.addArc(radius: 50, angle: -45)
p.addArc(radius: 50, angle: -45)
p.addArc(radius: 50, angle: -45)

p.goto(dx: -15, dy: -32)
canvas.fillColor = .black

canvas.drawEllipse(at: Point(x: 0, y: 0), width: 23, height: 30)
canvas.fillColor = .white
canvas.drawEllipse(at: Point(x: 0, y: -2), width: 10, height: 10)

canvas.highPerformance = false
p.goto(dx: 30, dy: 0)
canvas.fillColor = .black
canvas.drawEllipse(at: Point(x: 0, y: 0), width: 23, height: 30)
canvas.fillColor = .white

canvas.drawEllipse(at: Point(x: 0, y: -2), width: 10, height: 10)
//nose
p.goto(dx: -15, dy: -25)
canvas.fillColor = .black
canvas.drawEllipse(at: Point(x: 0, y: 0), width: 25, height: 15)
//mouth
p.goto(dx: -2, dy: 0)
p.turn(degrees: -80)
p.addArc(radius: 50, angle: -25)
p.goto(dx: 5, dy: 21)
p.turn(degrees: 10)
p.addArc(radius: 50, angle: 25)
/*:
 ## Show the Live View
 Don't see any results?
 
 Remember to show the Live View (1 then 2):
 
 ![timeline](timeline.png "Timeline")

 ## Use source control
 To keep your work organized, receive feedback, and earn a high grade in this course, regular use of source control is a must.
 
 Please commit and push your work often.
 
 ![source_control](source-control.png "Source Control")
 */
