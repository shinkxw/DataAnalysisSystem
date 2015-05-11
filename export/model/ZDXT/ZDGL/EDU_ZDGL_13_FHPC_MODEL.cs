namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZDGL_13_FHPC_metadata))]
    public partial class EDU_ZDGL_13_FHPC
    {
        public EDU_ZDGL_13_FHPC()
        {
            FHPCH = "";
            FHR = "";
            FHSJ = DateTime.Now;
        }
        public class EDU_ZDGL_13_FHPC_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�������κ�")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FHPCH { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "������")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FHR { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "������˾")]
            public Int32 WLGSID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "������")]
            public Int32 ZXS { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����ʱ��")]
            public DateTime FHSJ { get; set; }


        }
    }
}
