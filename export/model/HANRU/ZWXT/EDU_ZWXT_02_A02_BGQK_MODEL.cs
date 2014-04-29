namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZWXT_02_A02_BGQK_metadata))]
    public partial class EDU_ZWXT_02_A02_BGQK
    {
        public EDU_ZWXT_02_A02_BGQK()
        {
            KDGSMC = "";
            KDDH = "";
            SJRID = "";
            DJRID = "";
            DJSJ = DateTime.Now;
            QSSJ = DateTime.Now;
        }
        public class EDU_ZWXT_02_A02_BGQK_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ݹ�˾����")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KDGSMC { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ݵ���")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KDDH { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�ռ���")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SJRID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�Ǽ���")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DJRID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�Ǽ�ʱ��")]
            public DateTime DJSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ǩ��״̬")]
            public Int32 QSZT { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ǩ��ʱ��")]
            public DateTime QSSJ { get; set; }


        }
    }
}
