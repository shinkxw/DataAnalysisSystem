namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_JPXT_01_06_JLCCLXH_metadata))]
    public partial class EDU_JPXT_01_06_JLCCLXH
    {
        public EDU_JPXT_01_06_JLCCLXH()
        {
            LRSJ = new DateTime(1900, 1, 1);
            BZ = "";
        }
        public class EDU_JPXT_01_06_JLCCLXH_metadata
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


            [Required(ErrorMessage = "����")]
            [Display(Name = "����Ա")]
            public Int32 JLYID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "¼��ʱ��")]
            public DateTime LRSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���Ľ��")]
            [Range(typeof(decimal), "0", "99999999")]
            public decimal XHQK { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ע")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZ { get; set; }


        }
    }
}
