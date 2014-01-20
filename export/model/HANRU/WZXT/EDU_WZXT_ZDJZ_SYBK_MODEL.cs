namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_WZXT_ZDJZ_SYBK_metadata))]
    public partial class EDU_WZXT_ZDJZ_SYBK
    {
        public EDU_WZXT_ZDJZ_SYBK()
        {
            BKMC = "";
            XSFS = "";
        }
        public class EDU_WZXT_ZDJZ_SYBK_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��վ")]
            public Int32 WEBID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�������")]
            [StringLength(300)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BKMC { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ʾ��ʽ")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XSFS { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "������Դ��")]
            public Int32 XWLYK { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����Ŀ¼")]
            public Int32 XWMLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "������ʾ����")]
            public Int32 XWXSSL { get; set; }


        }
    }
}
