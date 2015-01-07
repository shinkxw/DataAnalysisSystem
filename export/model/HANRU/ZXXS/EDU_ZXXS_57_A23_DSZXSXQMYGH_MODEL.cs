namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXXS_57_A23_DSZXSXQMYGH_metadata))]
    public partial class EDU_ZXXS_57_A23_DSZXSXQMYGH
    {
        public EDU_ZXXS_57_A23_DSZXSXQMYGH()
        {
            BYMB = "";
            BYXXSH = "";
            XYHDSH = "";
            ZLNXYYYDS = "";
            DLNXS = "";
            GDDS = "";
            TJSJ = DateTime.Now;
        }
        public class EDU_ZXXS_57_A23_DSZXSXQMYGH_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ��")]
            public Int32 XQID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�·�")]
            public Int32 YF { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ��")]
            public Int32 XSID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����Ŀ��")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BYMB { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����ѧϰ�ջ�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BYXXSH { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "У԰��ջ�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XYHDSH { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "������Щ���������")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZLNXYYYDS { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "������Щ��")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DLNXS { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�ж�����")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String GDDS { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���ʱ��")]
            public DateTime TJSJ { get; set; }


        }
    }
}
