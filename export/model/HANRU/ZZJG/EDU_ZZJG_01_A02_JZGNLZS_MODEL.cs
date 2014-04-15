namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJG_01_A02_JZGNLZS_metadata))]
    public partial class EDU_ZZJG_01_A02_JZGNLZS
    {
        public EDU_ZZJG_01_A02_JZGNLZS()
        {
        }
        public class EDU_ZZJG_01_A02_JZGNLZS_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "�̹�������Ϣ")]
            public Int32 JZGJBSJID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Display(Name = "��ҵ֤��")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BYZS { get; set; }


            [Display(Name = "ѧλ֤��")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XWZS { get; set; }


            [Display(Name = "ְ��֤��")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZCZS { get; set; }


            [Display(Name = "��ͨ��֤��")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String PTHZS { get; set; }


            [Display(Name = "��ʦ�ʸ�֤")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JSZGZ { get; set; }


            [Display(Name = "������ϸ�֤")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JSJHGZ { get; set; }


            [Display(Name = "����֤��")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JNZS { get; set; }


            [Display(Name = "���ѧ��")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZGXL { get; set; }


        }
    }
}
