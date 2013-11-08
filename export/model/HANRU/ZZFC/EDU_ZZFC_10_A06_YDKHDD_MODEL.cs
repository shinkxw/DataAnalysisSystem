namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZFC_10_A06_YDKHDD_metadata))]
    public partial class EDU_ZZFC_10_A06_YDKHDD
    {
        public EDU_ZZFC_10_A06_YDKHDD()
        {
            BJID = "";
            DD = "";
        }
        public class EDU_ZZFC_10_A06_YDKHDD_metadata
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


            [Required(ErrorMessage = "����")]
            [Display(Name = "�·�")]
            public Int32 YF { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�༶")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BJID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�ȵ�")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DD { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���ȷ�ֵ")]
            public Int32 PBFZ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ӽ�ʦ")]
            public Int32 TJJSID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����¥")]
            public Int32 SSLID { get; set; }


        }
    }
}
