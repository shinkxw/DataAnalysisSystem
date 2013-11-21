namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZYZX_02_A04_SJ_metadata))]
    public partial class EDU_ZYZX_02_A04_SJ
    {
        public EDU_ZYZX_02_A04_SJ()
        {
            KCH = "";
            SYFF = "";
            SJMC = "";
            NR = "";
            SCRID = "";
            SCSJ = new DateTime(1900, 1, 1);
            SHRID = "";
            SHSJ = new DateTime(1900, 1, 1);
            FJ = "";
        }
        public class EDU_ZYZX_02_A04_SJ_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�γ�")]
            [StringLength(6)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KCH { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "���÷�Χ")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SYFF { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�Ծ�����")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SJMC { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�Ѷ�ϵ��")]
            [Range(typeof(decimal), "0", "999999")]
            public decimal NDXS { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ֵ")]
            [Range(typeof(decimal), "0", "99999")]
            public decimal FZ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String NR { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���״̬")]
            public Int32 SHZT { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�ϴ���")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SCRID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ϴ�ʱ��")]
            public DateTime SCSJ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�����")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SHRID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���ʱ��")]
            public DateTime SHSJ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FJ { get; set; }


        }
    }
}
