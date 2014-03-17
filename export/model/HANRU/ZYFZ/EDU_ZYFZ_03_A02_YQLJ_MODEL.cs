namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZYFZ_03_A02_YQLJ_metadata))]
    public partial class EDU_ZYFZ_03_A02_YQLJ
    {
        public EDU_ZYFZ_03_A02_YQLJ()
        {
            LJMC = "";
            LJTP = "";
            LJDZ = "";
        }
        public class EDU_ZYFZ_03_A02_YQLJ_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��������")]
            public Int32 LJLXID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��������")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String LJMC { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����ͼƬ")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String LJTP { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "���ӵ�ַ")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String LJDZ { get; set; }


        }
    }
}
