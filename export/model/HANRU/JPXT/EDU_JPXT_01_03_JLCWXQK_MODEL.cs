namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_JPXT_01_03_JLCWXQK_metadata))]
    public partial class EDU_JPXT_01_03_JLCWXQK
    {
        public EDU_JPXT_01_03_JLCWXQK()
        {
            GZXX = "";
            WXJG = "";
            BZ = "";
        }
        public class EDU_JPXT_01_03_JLCWXQK_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "������")]
            public Int32 JLCID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��������")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String GZXX { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����ʱ��")]
            public DateTime SXSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���ʱ��")]
            public DateTime WCSJ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ά�޽��")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String WXJG { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ע")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZ { get; set; }


        }
    }
}
