namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_07_A10_SXJD_metadata))]
    public partial class EDU_ZZJX_07_A10_SXJD
    {
        public EDU_ZZJX_07_A10_SXJD()
        {
            JDNR = "";
            SXDWYJ = "";
            BJYJ = "";
            XXYJ = "";
        }
        public class EDU_ZZJX_07_A10_SXJD_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "ʵϰ������Ϣ")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ʵϰ�ƻ�")]
            public Int32 SXJHID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ����Ϣ")]
            public Int32 XSXXID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��������")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JDNR { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ʵϰ��λ���")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SXDWYJ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�༶���")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BJYJ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ѧУ���")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XXYJ { get; set; }


        }
    }
}
