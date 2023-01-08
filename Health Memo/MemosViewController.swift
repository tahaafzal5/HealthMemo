//
//  MemosViewController.swift
//  Health Memo
//
//  Created by Pawan on 10/25/20.
//

import UIKit
import Parse
import AlamofireImage
import googleapis

class MemosViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var tableView: UITableView!
    
    var memos = [PFObject] ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let query = PFQuery(className: "NewMemo")
        query.includeKey("owner")
        query.limit = 20
        query.findObjectsInBackground { (memos, error) in
            if memos != nil
            {
                self.memos = memos!
                self.tableView.reloadData()
            }
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return memos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MemoCell") as! MemoCell
        let memoCount = memos[indexPath.row]
        let rating = memoCount["dayRating"] as! String
        
        cell.dayRating.image = UIImage(named: "regular_" + rating)
        cell.questionLabel.text = "How are you feeling today?"
        cell.answerLabel.text = memoCount["SecondAnswer"] as! String
        cell.dateLabel.text = memoCount["date"] as! String
        return cell
    }
    
    @IBAction func onLogOut(_ sender: Any) {
        UserDefaults.standard.set(false, forKey: "userLoggedIn")
        dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
	
	enum ParsingError: Error {
	  case topLevelSchemaUnknownType(schemaName: String, type: String)
	  case topLevelSchemaArrayDoesNotContainObjects(schemaName: String)
	  case arrayDidNotIncludeItems(schemaName: String?)
	  case arrayHadUnknownItems(schemaName: String)
	  case schemaDidNotIncludeTypeOrRef(schemaName: String)
	  case arrayContainedArray(schemaName: String)
	  case unknown
	}
	
	let driveScope = "https://www.googleapis.com/auth/drive.readonly"
	
}
