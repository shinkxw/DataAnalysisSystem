namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_05_02_JSJXGZLTJ_metadata))]
    public partial class EDU_ZZJX_05_02_JSJXGZLTJ
    {
        public EDU_ZZJX_05_02_JSJXGZLTJ()
        {
            XQMC = "";
            JSXM = "";
        }
        public class EDU_ZZJX_05_02_JSJXGZLTJ_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ʦ")]
            public Int32 JSID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ��")]
            public Int32 XQID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ѧ������")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XQMC { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ʦ����")]
            [StringLength(36)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JSXM { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ν̿γ�����")]
            [Range(typeof(decimal), "0", "9999")]
            public decimal RJKCMS { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "������ѧʱ")]
            [Range(typeof(decimal), "0", "9999")]
            public decimal LLZXS { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ʵ����ѧʱ")]
            [Range(typeof(decimal), "0", "9999")]
            public decimal SJZXS { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "������ѧʱ")]
            [Range(typeof(decimal), "0", "9999")]
            public decimal QTZXS { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ������")]
            [Range(typeof(decimal), "0", "9999")]
            public decimal XSZS { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ѧ����")]
            [Range(typeof(decimal), "0", "99999")]
            public decimal ZXFS { get; set; }


        }
    }
}
