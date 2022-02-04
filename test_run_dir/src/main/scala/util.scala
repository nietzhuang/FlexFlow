package flexflow.util

import chisel3._
import chisel3.util._


object ceil {
  def apply(num: UInt, den: UInt): UInt = {
    val result = num / den
    if (den * result  == num) 
      result 
    else 
      result + 1.U
  }
}
