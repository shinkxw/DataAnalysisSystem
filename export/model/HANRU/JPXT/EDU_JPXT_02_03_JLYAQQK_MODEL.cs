namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_JPXT_02_03_JLYAQQK_metadata))]
    public partial class EDU_JPXT_02_03_JLYAQQK
    {
        public EDU_JPXT_02_03_JLYAQQK()
        {
            LRSJ = DateTime.Now;
            AQQK = "";
            BZ = "";
        }
        public class EDU_JPXT_02_03_JLYAQQK_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����Ա")]
            public Int32 JLYID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "¼��ʱ��")]
            public DateTime LRSJ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ȫ���")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String AQQK { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ע")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZ { get; set; }


        }
    }
}
