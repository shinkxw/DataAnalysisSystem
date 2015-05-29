namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_50_A53_DFTJSJ_metadata))]
    public partial class EDU_OAXT_50_A53_DFTJSJ
    {
        public EDU_OAXT_50_A53_DFTJSJ()
        {
            BDFDXBM = "";
            BDFDXMC = "";
            CKSJ = DateTime.Now;
            TJSJ = DateTime.Now;
        }
        public class EDU_OAXT_50_A53_DFTJSJ_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��Ŀ")]
            public Int32 XMID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���ݼ�")]
            public Int32 SJJID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ֶ�")]
            public Int32 ZDID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���α��")]
            public Int32 PCBH { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�Ƿ��ֶ��޸�")]
            public Int32 SFSDXG { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����ֶ������")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BDFDXBM { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����ֶ�������")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BDFDXMC { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ��")]
            public Int32 XQID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ο�ʱ��")]
            public DateTime CKSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ֵ")]
            [Range(typeof(decimal), "0", "9999999999")]
            public decimal FZ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���ʱ��")]
            public DateTime TJSJ { get; set; }


        }
    }
}
