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
canvas.drawAxes(withScale: true, by: 50, color: .black)

/*:
 ## Add your code
 
 Beginning on line 61, you can add your own code.
  
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */
// draw black background
canvas.fillColor = .black
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)

// draw green rectangle
canvas.fillColor = .green
canvas.drawRectangle(at: Point(x: 0, y: 400), width: 400, height: 200)


//draw grid of circles
for verticalPosition in stride (from: 0, through: 400, by: 40) {

    for horizontalPosition in stride (from: 0, through: 400, by: 40) {
   
        // decide on colour
        if horizontalPosition == 0 ||
            horizontalPosition == 400 ||
        verticalPosition == 0 ||
            verticalPosition == 400 ||
            verticalPosition + horizontalPosition == 440 ||
            verticalPosition + horizontalPosition == 480 ||
            verticalPosition + horizontalPosition == 520 ||
            verticalPosition + horizontalPosition == 560 ||
            verticalPosition + horizontalPosition == 600 ||
            verticalPosition + horizontalPosition == 640 ||
            verticalPosition + horizontalPosition == 680 ||
            verticalPosition + horizontalPosition == 720
        {
            
            canvas.fillColor = .green
        } else {
            canvas.fillColor = .white
        }
        //"pixies"
        canvas.textColor = .black
        canvas.drawText(message: "Pixies", at:Point(x: 20, y: 400), size: 60)
        
       // "with throwing muses big dipper"
        canvas.textColor = .white
         canvas.drawText(message: "with", at:Point(x: 260, y: 450), size: 13)
         canvas.drawText(message: "throwing", at:Point(x: 260, y: 430), size: 13)
         canvas.drawText(message: "muses big dipper", at:Point(x: 260, y: 410), size: 13)
        
        // saturday december 13 1986 9 pm over 21
        canvas.textColor = .black
        canvas.drawText(message: "Saturday", at:Point(x: 20, y: 570), size: 12)
        canvas.drawText(message: "December 13 1986", at:Point(x: 20, y: 550), size: 12)
        canvas.drawText(message: "9 Pm over 21", at:Point(x: 20, y: 530), size: 12)
        
        //at the rat    528 commonwealth    boston, mass.
        
        canvas.drawText(message: "At the rat", at:Point(x: 260, y: 570), size: 12)
        
        canvas.drawText(message: "528 Commonwealth", at:Point(x: 260, y: 550), size: 12)
        
        canvas.drawText(message: "Boston, mass.", at:Point(x: 260, y: 530), size: 12)
        
        
        
        
        
        
        
        
        
        
        
        // actually draw circle
       
        canvas.drawEllipse(at: Point(x: horizontalPosition, y: verticalPosition), width: 37, height: 37)
    }
   
}

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
