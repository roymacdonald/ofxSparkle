#include "ofApp.h"
#include "ofxSparkle.h"

//--------------------------------------------------------------
void ofApp::setup(){
    ofxSparkle::init();

}

//--------------------------------------------------------------
void ofApp::update(){

}

//--------------------------------------------------------------
void ofApp::draw(){
    string message ="Press any key to check if there is an update";
    static ofBitmapFont bf;
    auto bb = bf.getBoundingBox(message, 0,0);
    ofDrawBitmapStringHighlight(message, (ofGetWidth() - bb.getWidth())/2, ofGetHeight()/2 - bb.getCenter().y);
}

//--------------------------------------------------------------
void ofApp::keyPressed(int key){

}

//--------------------------------------------------------------
void ofApp::keyReleased(int key){
    ofxSparkle::check_update();
}

//--------------------------------------------------------------
void ofApp::mouseMoved(int x, int y){

}

//--------------------------------------------------------------
void ofApp::mouseDragged(int x, int y, int button){

}

//--------------------------------------------------------------
void ofApp::mousePressed(int x, int y, int button){

}

//--------------------------------------------------------------
void ofApp::mouseReleased(int x, int y, int button){

}

//--------------------------------------------------------------
void ofApp::windowResized(int w, int h){

}

//--------------------------------------------------------------
void ofApp::gotMessage(ofMessage msg){

}

//--------------------------------------------------------------
void ofApp::dragEvent(ofDragInfo dragInfo){ 

}
