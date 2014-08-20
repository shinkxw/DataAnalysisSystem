namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_39_A03_GWLZ_metadata))]
    public partial class EDU_OAXT_39_A03_GWLZ
    {
        public EDU_OAXT_39_A03_GWLZ()
        {
            XFRID = "";
            JSRID = "";
            XFSJ = DateTime.Now;
            QSSJ = DateTime.Now;
            CLJG = "";
            FJ = "";
        }
        public class EDU_OAXT_39_A03_GWLZ_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���ı�")]
            public Int32 SWBID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�·���")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XFRID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "������")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JSRID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�·��ĵ�����")]
            public Int32 XFWDLX { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�·�ʱ��")]
            public DateTime XFSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ǩ��״̬")]
            public Int32 QSZT { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ǩ��ʱ��")]
            public DateTime QSSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����֪ͨ״̬")]
            public Int32 DXTZZT { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����״̬")]
            public Int32 CLZT { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "������")]
            [StringLength(500)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String CLJG { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ɾ��״̬")]
            public Int32 SCZT { get; set; }


        }
    }
}
