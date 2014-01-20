namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXJZ_17_A06_DZBHDXX_metadata))]
    public partial class EDU_ZXJZ_17_A06_DZBHDXX
    {
        public EDU_ZXJZ_17_A06_DZBHDXX()
        {
            HDMC = "";
            HDNR = "";
            SCSJ = DateTime.Now;
            HDSJ = DateTime.Now;
        }
        public class EDU_ZXJZ_17_A06_DZBHDXX_metadata
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
            [Display(Name = "��֧��")]
            public Int32 DZBID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�����")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String HDMC { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�����")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String HDNR { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ϴ���ʦ")]
            public Int32 SCJSID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ϴ�ʱ��")]
            public DateTime SCSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ʱ��")]
            public DateTime HDSJ { get; set; }


        }
    }
}
