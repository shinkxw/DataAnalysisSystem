namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZXS_06_02_XSCJLX_metadata))]
    public partial class EDU_ZZXS_06_02_XSCJLX
    {
        public EDU_ZZXS_06_02_XSCJLX()
        {
            LXMC = "";
        }
        public class EDU_ZZXS_06_02_XSCJLX_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��������")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String LXMC { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "Ȩ��")]
            public Int32 QZ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�γ��嵥")]
            public Int32 KCQDID { get; set; }


        }
    }
}
