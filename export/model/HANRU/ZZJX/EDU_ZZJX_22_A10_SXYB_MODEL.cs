namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_22_A10_SXYB_metadata))]
    public partial class EDU_ZZJX_22_A10_SXYB
    {
        public EDU_ZZJX_22_A10_SXYB()
        {
            GZXJ = "";
            TJSJ = DateTime.Now;
            ZDSFXM = "";
            ZDSFPY = "";
            SFDH = "";
            ZDSFPDSJ = DateTime.Now;
        }
        public class EDU_ZZJX_22_A10_SXYB_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ʵϰ��")]
            public Int32 SXSID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��λ��Ϣ")]
            public Int32 GWXXID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����С��")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String GZXJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���ʱ��")]
            public DateTime TJSJ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ָ��ʦ������")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZDSFXM { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ָ��ʦ������")]
            [StringLength(500)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZDSFPY { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ʦ���绰")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SFDH { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ʦ������")]
            public Int32 SFPD { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ָ��ʦ������ʱ��")]
            public DateTime ZDSFPDSJ { get; set; }


        }
    }
}
