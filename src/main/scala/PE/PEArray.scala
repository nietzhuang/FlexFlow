//!!  Under development

package flexflow.pe

import chisel3._
import chisel3.util._

class PEArray(
  bitwidth: Int, 
  numPECol: Int, 
  numPERow: Int,
  numBank: Int,
  bankdepth: Int, 
  bufdepth: Int  
) extends Module {
  val io = IO(new Bundle {
    val Enable    = Input(Bool())
    val Mode      = Input(UInt(3.W))
    val Schedule  = Input(UInt(24.W))
    


  })




  }
