namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXDY_04_A05_TBZZJS_metadata))]
    public partial class EDU_ZXDY_04_A05_TBZZJS
    {
        public EDU_ZXDY_04_A05_TBZZJS()
        {
            JSLX = "";
            JSID = "";
        }
        public class EDU_ZXDY_04_A05_TBZZJS_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "�ر�ֵ�ܽ�ʦ��")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ��")]
            public Int32 XQID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ʦ����")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JSLX { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ʦ")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JSID { get; set; }


            [Display(Name = "��Ч����")]
            public DateTime YXRQ { get; set; }


        }
    }
}
