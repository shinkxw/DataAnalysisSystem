namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_22_A06_SXRZ_metadata))]
    public partial class EDU_ZZJX_22_A06_SXRZ
    {
        public EDU_ZZJX_22_A06_SXRZ()
        {
            TJSJ = DateTime.Now;
            RZBT = "";
            RZNR = "";
        }
        public class EDU_ZZJX_22_A06_SXRZ_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ʵϰ��")]
            public Int32 SXSID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���ʱ��")]
            public DateTime TJSJ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��־����")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String RZBT { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��־����")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String RZNR { get; set; }


        }
    }
}
