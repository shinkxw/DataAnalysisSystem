namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZXS_10_A13_XSHZXJ_metadata))]
    public partial class EDU_ZZXS_10_A13_XSHZXJ
    {
        public EDU_ZZXS_10_A13_XSHZXJ()
        {
            YHKH = "";
            SFSJ = DateTime.Now;
            TFSJ = DateTime.Now;
            TFYY = "";
            BZ = "";
            SQYY = "";
            SQSJ = DateTime.Now;
            SHSJ = DateTime.Now;
        }
        public class EDU_ZZXS_10_A13_XSHZXJ_metadata
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
            public Int32 ZXJID { get; set; }


            [Display(Name = "�п�������")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZKBMH { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "���п���")]
            [StringLength(30)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String YHKH { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ý��")]
            [Range(typeof(decimal), "0", "999999")]
            public decimal HDJE { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ʼ��ʱ��")]
            public DateTime SFSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ͣ��ʱ��")]
            public DateTime TFSJ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ͣ��ԭ��")]
            [StringLength(80)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String TFYY { get; set; }


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
