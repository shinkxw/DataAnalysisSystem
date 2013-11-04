namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZXS_10_A12_XSHJXJ_metadata))]
    public partial class EDU_ZZXS_10_A12_XSHJXJ
    {
        public EDU_ZZXS_10_A12_XSHJXJ()
        {
            HJSJ = new DateTime(1900, 1, 1);
            BZ = "";
            SQYY = "";
            SQSJ = new DateTime(1900, 1, 1);
            SHSJ = new DateTime(1900, 1, 1);
        }
        public class EDU_ZZXS_10_A12_XSHJXJ_metadata
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
            [Display(Name = "ѧ��")]
            public Int32 XSXXID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ѧ��")]
            public Int32 JXJID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ý��")]
            [Range(typeof(decimal), "0", "99999999")]
            public decimal HDJE { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ʱ��")]
            public DateTime HJSJ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ע")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����ԭ��")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SQYY { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����ʱ��")]
            public DateTime SQSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���״̬")]
            public Int32 SHZT { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���ʱ��")]
            public DateTime SHSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��˽�ʦ")]
            public Int32 SHJSID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ӽ�ʦ")]
            public Int32 TJJSID { get; set; }


        }
    }
}
