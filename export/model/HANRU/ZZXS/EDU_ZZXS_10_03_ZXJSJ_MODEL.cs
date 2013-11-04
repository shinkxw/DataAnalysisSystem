namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZXS_10_03_ZXJSJ_metadata))]
    public partial class EDU_ZZXS_10_03_ZXJSJ
    {
        public EDU_ZZXS_10_03_ZXJSJ()
        {
            YHKH = "";
            SFSJ = new DateTime(1900, 1, 1);
            TFSJ = new DateTime(1900, 1, 1);
            TFYY = "";
            ZXJMC = "";
            ZXJLX = "";
            SFSH = "";
        }
        public class EDU_ZZXS_10_03_ZXJSJ_metadata
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
            [Display(Name = "��ѧ���")]
            [Range(typeof(decimal), "0", "99999999")]
            public decimal ZXJE { get; set; }


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
            [Display(Name = "��ѧ������")]
            [StringLength(60)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZXJMC { get; set; }


            [Display(Name = "������λ�����")]
            [StringLength(60)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZZDWHGR { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ѧ������")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZXJLX { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�Ƿ����")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SFSH { get; set; }


        }
    }
}
