namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_33_A04_SW_metadata))]
    public partial class EDU_OAXT_33_A04_SW
    {
        public EDU_OAXT_33_A04_SW()
        {
            XFRID = "";
            JSRID = "";
            XFSJ = DateTime.Now;
            HFXX = "";
            HFFJ = "";
        }
        public class EDU_OAXT_33_A04_SW_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����")]
            public Int32 GWID { get; set; }


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
            [Display(Name = "�·�ʱ��")]
            public DateTime XFSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ǩ��״̬")]
            public Int32 QSZT { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����֪ͨ״̬")]
            public Int32 DXTZZT { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ظ�״̬")]
            public Int32 HFZT { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�ظ���Ϣ")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String HFXX { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�ظ�����")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String HFFJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����״̬")]
            public Int32 CLZT { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ɾ��״̬")]
            public Int32 SCZT { get; set; }


        }
    }
}
