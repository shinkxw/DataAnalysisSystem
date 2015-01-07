namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXXS_57_A02_DSZJS_metadata))]
    public partial class EDU_ZXXS_57_A02_DSZJS
    {
        public EDU_ZXXS_57_A02_DSZJS()
        {
            JSMC = "";
            GNIDLB = "";
            GNMCLB = "";
        }
        public class EDU_ZXXS_57_A02_DSZJS_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ��")]
            public Int32 XQID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ɫ����")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JSMC { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����ID�б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String GNIDLB { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "���������б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String GNMCLB { get; set; }


        }
    }
}
