namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZYFZ_01_A05_KHQX_metadata))]
    public partial class EDU_ZYFZ_01_A05_KHQX
    {
        public EDU_ZYFZ_01_A05_KHQX()
        {
            FZMC = "";
            KHRID = "";
            BKHRIDLB = "";
            BKHRMCLB = "";
        }
        public class EDU_ZYFZ_01_A05_KHQX_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��������")]
            [StringLength(80)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FZMC { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "������")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KHRID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��������ID�б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BKHRIDLB { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�������������б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BKHRMCLB { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���˵ȼ�")]
            public Int32 KHDJ { get; set; }


        }
    }
}
