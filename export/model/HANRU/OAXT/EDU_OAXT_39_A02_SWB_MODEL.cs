namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_39_A02_SWB_metadata))]
    public partial class EDU_OAXT_39_A02_SWB
    {
        public EDU_OAXT_39_A02_SWB()
        {
            LWDW = "";
            LWRQ = DateTime.Now;
            LWWH = "";
            WJBT = "";
            WJNR = "";
            PSYJ = "";
            SFSH = "";
        }
        public class EDU_OAXT_39_A02_SWB_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 LBID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "���ĵ�λ")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String LWDW { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��������")]
            public DateTime LWRQ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�����ĺ�")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String LWWH { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�ļ�����")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String WJBT { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�ļ�����")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String WJNR { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ʾ���")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String PSYJ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�Ƿ��ջ�")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SFSH { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�·��ĵ�����")]
            public Int32 XFWDLX { get; set; }


        }
    }
}
