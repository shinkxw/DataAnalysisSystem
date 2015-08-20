namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_55_A11_CJHZ_metadata))]
    public partial class EDU_ZZJX_55_A11_CJHZ
    {
        public EDU_ZZJX_55_A11_CJHZ()
        {
            NJID = "";
            DJRID = "";
            DJSJ = DateTime.Now;
        }
        public class EDU_ZZJX_55_A11_CJHZ_metadata
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
            [Display(Name = "�꼶")]
            [StringLength(4)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String NJID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "רҵ�γ̿�")]
            public Int32 ZYKCKID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ��")]
            public Int32 XSID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ɼ�����")]
            public Int32 CJLX { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ۺϷ�")]
            public Int32 PFXMID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ��")]
            [Range(typeof(decimal), "0", "999")]
            public decimal XF { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����")]
            [Range(typeof(decimal), "0", "999")]
            public decimal JD { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�Ǽ���")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DJRID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�Ǽ�ʱ��")]
            public DateTime DJSJ { get; set; }


        }
    }
}
