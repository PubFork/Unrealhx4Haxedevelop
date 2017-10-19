package unreal;
import unreal.inputcore.FKey;

extern class UInputComponent_Extra {

  /**
   * Binds a key event to a delegate function. 
   * Returned reference is only guaranteed to be valid until another input key is bound.
   */
  public function BindKey(actionName:Const<FKey>, keyEvent:EInputEvent, object:UObject, func:MethodPointer<UObject,Void->Void>) : PRef<FInputKeyBinding>;

  /**
   * Binds a delegate function to an Action defined in the project settings.
   * Returned reference is only guaranteed to be valid until another action is bound.
   */
  public function BindAction(actionName:Const<FName>, keyEvent:EInputEvent, object:UObject, func:MethodPointer<UObject,Void->Void>) : PRef<FInputActionBinding>;


  /**
   * Binds a delegate function an Axis defined in the project settings.
   * Returned reference is only guaranteed to be valid until another axis is bound.
   */
  public function BindAxis(axisName:Const<FName>, object:UObject, func:MethodPointer<UObject,Float32->Void>) : PRef<FInputAxisBinding>;

  /**
  * Removes all action bindings.
  */
  public function ClearActionBindings() : Void;

  public function GetActionBinding(BindingIndex:Int) : PRef<FInputActionBinding>;

  public function GetNumActionBindings() : Int32;
}
