class Counter{
 late  int _iCounter;

 Counter({required int counter}){
   this._iCounter = counter;

 }
 int getCounter(){
   return _iCounter;
 }

 void resetCounter(){
   _iCounter =0;
 }
  void increment(){
   _iCounter++;
  }
}