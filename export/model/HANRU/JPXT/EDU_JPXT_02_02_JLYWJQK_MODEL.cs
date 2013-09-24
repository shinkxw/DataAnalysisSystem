namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_JPXT_02_02_JLYWJQK_metadata))]
    public partial class EDU_JPXT_02_02_JLYWJQK
    {
        public EDU_JPXT_02_02_JLYWJQK()
        {
            TSR = "";
            TSSJ = new DateTime(1900, 1, 1);
            LXDH = "";
            TSNR = "";
            CLJG = "";
            BZ = "";
        }
        public class EDU_JPXT_02_02_JLYWJQK_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����Ա")]
            public Int32 JLYID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "Ͷ����")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String TSR { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "Ͷ��ʱ��")]
            public DateTime TSSJ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ϵ�绰")]
            [StringLength(30)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String LXDH { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "Ͷ������")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String TSNR { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "������")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String CLJG { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ע")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZ { get; set; }


        }
    }
}
