namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_32_A04_DCWJJL_metadata))]
    public partial class EDU_OAXT_32_A04_DCWJJL
    {
        public EDU_OAXT_32_A04_DCWJJL()
        {
            YHID = "";
        }
        public class EDU_OAXT_32_A04_DCWJJL_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�û�")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String YHID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�����ʾ�")]
            public Int32 WJID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "������Ŀ")]
            public Int32 TMID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѡ��")]
            public Int32 XXID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѡ���ֵ")]
            public Int32 XXFZ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ύ״̬")]
            public Int32 TJZT { get; set; }


        }
    }
}
