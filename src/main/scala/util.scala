package flexflow

import chisel3._


object Ceil {
  def apply(num: UInt, den: UInt): UInt = {
    val result = num / den
    if (den * result  == num) 
      result 
    else 
      result + 1.U
  }
}
