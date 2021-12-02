//: [Previous](@previous) / [Next](@next)
/*:
 ## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 7 and 8.
 */
let preferredWidth = 400
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


/*:
 ## Add your code
 
 Beginning on line 61, you can add your own code.
 
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.
 
 */
canvas.defaultLineWidth = 1

let currentcolour = Color(hue: 14,
                          saturation: 94,
                          brightness: 95,
                          alpha: 100)

let yellow = Color(hue: 47,
                  saturation: 71,
                  brightness: 94,
                  alpha: 100)

let grey = Color(hue: 71,
                  saturation: 5,
                  brightness: 86,
                  alpha: 100)

canvas.fillColor = currentcolour

canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)

canvas.drawAxes(withScale: true, by: 50, color: .white)

canvas.fillColor = .white

var triangleVertices: [Point] = []
triangleVertices.append(Point(x: 0, y: 200))
triangleVertices.append(Point(x: 45, y: 200))
triangleVertices.append(Point(x: 45, y: 245))

canvas.drawCustomShape(with: triangleVertices)


for horizontalPosition in stride(from: 0, through: 400, by: 45)
{
    
    
    
    for verticalPosition in stride(from: 200, through: 600, by: 45) {
        
        
        
        //decide on colour
        if verticalPosition - horizontalPosition <= 200 {
            
            canvas.fillColor = yellow
        } else {
            canvas.fillColor = grey
            
        }
        var triangleVertices: [Point] = []
        //left point
        triangleVertices.append(Point(x: horizontalPosition + 0 , y: verticalPosition + 0))
        //right point
        triangleVertices.append(Point(x: horizontalPosition + 45 , y: verticalPosition + 0))
        //top point
        triangleVertices.append(Point(x: horizontalPosition + 45 , y: verticalPosition + 45))
        
        canvas.drawCustomShape(with: triangleVertices)
       
        canvas.textColor = grey
        canvas.drawText(message: "talking heads", at:Point(x: 20, y: 140 ), size: 40)
        
        canvas.drawText(message: "friday, saturday, sunday", at:Point(x: 20, y: 40 ), size: 10, kerning: 0)
        
        canvas.drawText(message: "september 12, 13, 14, 1975 ", at:Point(x: 20, y: 20 ), size: 10, kerning: 0)
        
        
        
        
        
        
//
//        // Print statement that shows the difference of the y and x position
//        canvas.drawText(message: "\(Int(verticalPosition - horizontalPosition))",
//                        at: Point(x: Int(horizontalPosition) - 20,
//                                          y: Int(verticalPosition)),
//                                size: 11)
        
    }
    
   
}



canvas.drawAxes(withScale: true, by: 50, color: .white)




