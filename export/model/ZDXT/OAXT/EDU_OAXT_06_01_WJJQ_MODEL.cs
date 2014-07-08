namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_06_01_WJJQ_metadata))]
    public partial class EDU_OAXT_06_01_WJJQ
    {
        public EDU_OAXT_06_01_WJJQ()
        {
            JYSPRID = "";
            JYJBRID = "";
            JYR = "";
            JYRQ = "";
            JYSPRGH = "";
            JYJBRGH = "";
        }
        public class EDU_OAXT_06_01_WJJQ_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ��")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ļ�")]
            public Int32 WJID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����������")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JYSPRID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "���ľ�����")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JYJBRID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "������")]
            [StringLength(36)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JYR { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��������")]
            [StringLength(8)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JYRQ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "���������˹���")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JYSPRGH { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "���ľ����˹���")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JYJBRGH { get; set; }


            [Display(Name = "����ԭ��")]
            [StringLength(80)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JYYY { get; set; }


        }
    }
}
