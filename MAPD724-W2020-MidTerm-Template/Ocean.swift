import SpriteKit
import GameplayKit

class Ocean : GameObject
{
    //constructor
    init()
    {
        super.init(imageString: "ocean", initialScale: 1.172)
        Start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //GameObject Life Cycle Functions
    override func CheckBounds()
    {
           
        // check top boundary
        if(self.position.x <= -1505) // note maybe reset earlier
        {
            Reset()
        }
    }
    
    override func Reset()
    {
        self.position.x = 1864.67
    }
    
    override func Start()
    {
        self.zPosition = 0
        //self.Reset()
        self.dx = 5.0
    }
    
    override func Update() {
        Move()
        CheckBounds()
    }
    
    func Move()
    {
        self.position.x -= self.dx!
    }

}
