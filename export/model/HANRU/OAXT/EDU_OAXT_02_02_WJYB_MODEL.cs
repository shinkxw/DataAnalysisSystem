namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_02_02_WJYB_metadata))]
    public partial class EDU_OAXT_02_02_WJYB
    {
        public EDU_OAXT_02_02_WJYB()
        {
            YBRID = "";
            YBYJ = "";
        }
        public class EDU_OAXT_02_02_WJYB_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ��")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ļ�")]
            public Int32 WJID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�İ���")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String YBRID { get; set; }


            [Display(Name = "�İ������")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String YBLBM { get; set; }


            [Display(Name = "�İ켶��")]
            [StringLength(30)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String YBJB { get; set; }


            [Display(Name = "�İ쵥λ")]
            [StringLength(60)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String YBDW { get; set; }


            [Display(Name = "�İ쵥λ���")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String YBDWBH { get; set; }


            [Display(Name = "�İ��˹���")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String YBRGH { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�İ����")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String YBYJ { get; set; }


            [Display(Name = "�İ�����")]
            [StringLength(8)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String YBRQ { get; set; }


        }
    }
}
