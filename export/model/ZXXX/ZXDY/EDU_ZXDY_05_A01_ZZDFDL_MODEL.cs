namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXDY_05_A01_ZZDFDL_metadata))]
    public partial class EDU_ZXDY_05_A01_ZZDFDL
    {
        public EDU_ZXDY_05_A01_ZZDFDL()
        {
            DLMC = "";
        }
        public class EDU_ZXDY_05_A01_ZZDFDL_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "ֵ�ܴ�ִ����")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ��")]
            public Int32 XQID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��������")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DLMC { get; set; }


        }
    }
}
