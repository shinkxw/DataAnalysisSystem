namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_JPXT_03_03_XYHFXX_metadata))]
    public partial class EDU_JPXT_03_03_XYHFXX
    {
        public EDU_JPXT_03_03_XYHFXX()
        {
            HFSJ = DateTime.Now;
            HFJG = "";
            BZ = "";
        }
        public class EDU_JPXT_03_03_XYHFXX_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧԱ")]
            public Int32 XYID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ط�ʱ��")]
            public DateTime HFSJ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�طý��")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String HFJG { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ע")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZ { get; set; }


        }
    }
}
