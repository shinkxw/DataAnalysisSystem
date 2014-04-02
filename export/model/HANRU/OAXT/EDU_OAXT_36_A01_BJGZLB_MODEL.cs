namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_36_A01_BJGZLB_metadata))]
    public partial class EDU_OAXT_36_A01_BJGZLB
    {
        public EDU_OAXT_36_A01_BJGZLB()
        {
            GZLBMC = "";
            DJRYIDLB = "";
            DJRYXMLB = "";
        }
        public class EDU_OAXT_36_A01_BJGZLB_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�����������")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String GZLBMC { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�Ǽ���ԱID�б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DJRYIDLB { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�Ǽ���Ա�����б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DJRYXMLB { get; set; }


        }
    }
}
