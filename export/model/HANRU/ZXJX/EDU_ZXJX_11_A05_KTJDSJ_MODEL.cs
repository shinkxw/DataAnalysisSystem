namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXJX_11_A05_KTJDSJ_metadata))]
    public partial class EDU_ZXJX_11_A05_KTJDSJ
    {
        public EDU_ZXJX_11_A05_KTJDSJ()
        {
            JDMC = "";
            JDGZNR = "";
            SCSJ = DateTime.Now;
        }
        public class EDU_ZXJX_11_A05_KTJDSJ_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����")]
            public Int32 KTID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�׶�����")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JDMC { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�׶ι�������")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JDGZNR { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ϴ�ʱ��")]
            public DateTime SCSJ { get; set; }


        }
    }
}